# FPGA Image Processing Accelerator — Pynq-Z2

## Over het project

Dit project bevat een **Vitis HLS applicatie** die beeldverwerkingstechnieken uitvoert op het **Pynq-Z2 FPGA-bord**. De applicatie leest 10 afbeeldingen in vanuit vaste URL's en voert hierop drie bewerkingen uit: **2D Convolutie**, **Max Pooling** en **Min Pooling**. Alle resultaten worden opgeslagen onder een eigen naam.

De drie deeloperaties zijn:

- **2D Convolutie** — past een 3×3 kernel toe op elke afbeelding om randen te detecteren (vergelijkbaar met een Sobel-filter)
- **Max Pooling** — verkleint elke afbeelding door per 2×2 blok de maximale pixelwaarde te bewaren
- **Min Pooling** — verkleint elke afbeelding door per 2×2 blok de minimale pixelwaarde te bewaren

---

## Sequence of operation

1. **Externe Data Ophalen:** Het Python-script maakt verbinding met het internet en streamt achter elkaar **10 specifieke testafbeeldingen vanaf vaste URL-locaties**.

2. **Pre-processing & Formattering:** De binnengehaalde afbeeldingen worden dynamisch geschaald naar het juiste invoerformaat (bijvoorbeeld `256 × 256` pixels). De losse kleurkanalen worden efficiënt ingepakt naar de juiste datastructuren die aansluiten op de FPGA-busbreedte.

3. **Geheugenbeheer (DMA):** Via de PYNQ `allocate`-bibliotheek reserveert het programma fysiek aaneengesloten buffers in het DDR-geheugen. Dit is cruciaal om high-speed AXI-bursttransfers mogelijk te maken.

4. **Hardware Aansturing:** De host schrijft de fysieke geheugenadressen en de gewenste parameters (zoals filtermodes of afmetingen) naar de configuratieregisters van de IP-core en activeert de hardware (`AP_START`).

5. **Status Monitoring & Time-out Beveiliging:** De processor monitort continu de control-registers van de FPGA om te kijken of de verwerking klaar is (`AP_DONE`). Er is een ingebouwde time-outbeveiliging aanwezig die voorkomt dat de applicatie permanent blokkeert bij een bus-deadlock.

6. **Post-processing & Visualisatie:** Zodra de FPGA klaar is, wordt de uitvoerbuffer uitgelezen, worden de pixels weer uitgepakt naar een toonbaar RGB-formaat en worden de originele en de versnelde afbeeldingen live naast elkaar gevisualiseerd. De resultaten worden tevens lokaal opgeslagen.

---

# Materialen en methodes

## Hardware

- Pynq-Z2 (ARM Cortex-A9 + Xilinx Artix-7 FPGA)

## Software

- Vitis HLS (synthesetool voor HLS-kernels)
- Python 3 + PYNQ-bibliotheek (voor aansturing vanuit de ARM-CPU)
- GStreamer (optionele livestream, 3 extra punten)
- OpenCV of Pillow (voor het inlezen en opslaan van afbeeldingen)

## Invoer

- 10 afbeeldingen opgehaald via vaste URL's (fixed); let op de afmetingen

## Methodologie

- De HLS-kernels worden gesynthetiseerd naar FPGA-logica en aangestuurd via de PYNQ DMA-interface.
- Voor de 2D Convolutie wordt een 3×3 kernel `[-1, 0, 1]` (herhaald over 3 rijen) toegepast. Negatieve uitkomsten worden geclipped naar `0`.
- Voor pooling wordt elke afbeelding opgedeeld in `2×2` blokken; Max Pooling neemt de hoogste waarde, Min Pooling de laagste.

---

# Resultaten & Functionele Beschrijving

Het platform ondersteunt drie verschillende types versnellers, elk geoptimaliseerd voor een specifieke beeldverwerkingstaak.

---

## 1. 2D Convolutie (32-bit Kleur)

### Werking

Voert een parallelle `3 × 3` matrix-convolutie uit op volledige RGB-afbeeldingen.

### Hardware-architectuur

Maakt gebruik van on-chip BRAM lijn-buffers (`ARRAY_PARTITION`) om een schuifvenster te realiseren met een Initiatie-Interval (`II = 1`).

### Visueel resultaat

De kernel:

```text
[-1, 0, 1
 -1, 0, 1
 -1, 0, 1]
```

detecteert verticale kleurovergangen. Negatieve convolutie-uitkomsten worden geclipped naar `0` (zwart), wat ertoe leidt dat het outputbeeld gedeeltelijk donker is. Enkel positieve overgangen van links naar rechts blijven zichtbaar.

| Inputwaarde | Kernel | Outputwaarde |
|-------------|--------|--------------|
| Zie diagram (6×6 matrix) | 3×3 `[-1,0,1]` | Verkleinde outputmatrix met waarden zoals `−11`, `−4`, `9`, `12` |

---

## 2. Edge Detection (8-bit Grayscale)

### Werking

Detecteert dynamisch randen in grijswaardenafbeeldingen (zoals Sobel Horizontaal en Verticaal).

### Flexibiliteit

De `3 × 3` kernel-coefficients worden runtime ingeladen via de `s_axilite` control bus. Hierdoor kan de host-architectuur dynamisch van filtermatrix wisselen (bijv. van Sobel naar een Laplace-operator) zonder dat de FPGA opnieuw geprogrammeerd hoeft te worden.

---

## 3. Max Pooling & Min Pooling

### Werking

Voert subsampling (downscaling) uit op `2 × 2` pixelblokken, waarbij de resolutie mathematisch exact wordt gehalveerd:

```text
W_out = W_in / 2
```

### Flexibiliteit

Voorzien van een via software configureerbare `mode`-parameter waarmee runtime geschakeld kan worden tussen:

- **Max Pooling** (`Mode 0`)
- **Average Pooling** (`Mode 1`)
- **Min Pooling** (`Mode 2`)

### Visueel resultaat

Beide pooling-operaties halveren de afmetingen van de afbeelding (`640×480 → 320×240`).

Per `2×2` blok:

- **Max Pooling:** behoudt de helderste pixel — contrasten blijven scherp.
- **Min Pooling:** behoudt de donkerste pixel — donkere details worden benadrukt.

| Inputblok | Max Pooling | Min Pooling |
|-----------|-------------|-------------|
| `12, 20, 30, 0 / 8, 12, 2, 0` | `20, 30` | `8, 0` |
| `34, 70, 37, 4 / 112, 100, 25, 12` | `112, 37` | `34, 4` |

---

# 🔍 Bekende Problemen & Hardware Analyses (Debugging)

Tijdens de testfase op de PYNQ-Z2 zijn er specifieke hardwarematige fouten opgetreden bij de drie verschillende cores. Hieronder staat de diepgaande technische analyse en de verklaring van deze resultaten.

---

## 🛑 Multi-Mode Pooling: IP-Core Hangt / Timeout (`Status 0x00: 0b0`)

Tijdens de executie van de pooling-batch hangt de hardware direct bij de eerste afbeelding en geeft het statusregister direct `0b0` terug na een startpoging.

### De Oorzaak

Wanneer de ARM-processor de start-vlag (`AP_START` via bit `0` van register `0x00`) hoog maakt, springt deze direct terug naar `0`.

Dit is het klassieke gedrag van een **AXI-bus deadlock**.

De IP-core probeert via zijn `m_axi_gmem` interface data aan te vragen uit het DDR-geheugen via de AXI SmartConnect. Als de klokpoorten van de Master AXI-bus (`m_axi_gmem_aclk`) in Vivado niet zijn aangesloten, of als de klokken asynchroon lopen ten opzichte van de HP-poort van de Zynq, bevriest de interne fasedetectie (FSM) van de IP-core bij de allereerste klokslag van de data-aanvraag.

De core crasht nog voordat hij zijn interne status kan bijwerken naar `AP_BUSY`.

### De Oplossing

In het Vivado Block Design moet gecontroleerd worden of de kloklijnen van alle `gmem`-bussen hard verbonden zijn met de `FCLK_CLK0` (`100MHz`) van het Zynq Processing System.

---

## 🏁 Edge Detection: Horizontale / Verticale Zwarte Lijnen door het Beeld

De Edge Detection core functioneert en voert de Sobel-operatie uit, maar het gegenereerde beeld bevat repetitieve horizontale of verticale zwarte lijnen (of een `shredded` patroon).

### De Oorzaak

Dit is een synchronisatiefout in de **Line Buffer / Window** logica binnen Vitis HLS.

Voor een `3 × 3` filteroperatie moeten er continu drie pixelrijen in de on-chip BRAM-buffers worden bijgehouden. Als de lus-pipelining (`#pragma HLS PIPELINE`) niet synchroon loopt met de exacte bitbreedte en de *stride* (sprong naar de volgende rij) van de afbeelding, leest het schuifvenster data in die over de rand van de afbeelding heen hangt.

De hardware probeert pixels te verwerken die nog niet in de buffer zijn geschreven, of mist exact de overgangs-klokslag naar een nieuwe regel, waardoor er "gaten" (`0x00 bytes / zwart`) in de matrix-pijplijn vallen.

### De Oplossing

De HLS-lusgrenzen moeten strikt worden afgestemd op de beeldrandafhandeling (padding). Er moet expliciet een controle-if-statement in de C++ code worden ingebouwd die voorkomt dat de convolution-matrix data buiten het actieve `W × H` venster probeert te pollen.

---

## 🖤 2D Convolutie: Levert Altijd Volledig Zwarte Afbeeldingen Op (`0x00000000`)

De convolutie-core doorloopt de gehele cyclus zonder timeouts en geeft netjes een `AP_DONE` status terug, maar de uitvoerbuffer bevat uitsluitend nullen (volledig zwart beeld).

### De Oorzaak

Dit is het gevolg van een **Type Casting / Fixed-Point Underflow** in de hardware-rekeneenheid (ALU).

Binnen de Vitis HLS code worden de pixelwaarden (`0-255`) vermenigvuldigd met de filtercoëfficiënten. Als deze filtercoëfficiënten (zoals bij een Gaussisch vervagingsfilter) kleine decimale getallen zijn (`0.1111`), en er is in de C++ code gebruikgemaakt van integer-types (`int` of `ap_uint`) in plaats van fixed-point types (`ap_fixed<16,8>`), treedt er direct bij de vermenigvuldiging een truncation op.

Elk decimaal getal onder de `1` wordt direct afgekapt naar `0`.

De hardware vermenigvuldigt elke pixel met nul, telt deze op, en schrijft een perfecte reeks `0x00000000` datawords terug naar het DDR-geheugen.

### De Oplossing

Definieer de kernel-matrix in Vitis HLS met het juiste Xilinx fixed-point datatype:

```cpp
#include "ap_fixed.h"
ap_fixed<16, 2>
```

Gebruik daarnaast een bit-shift of afronding (`AP_RND`) alvorens de data terug te schrijven naar de 32-bit AXI-bus.

---

# Aan de slag

## Vereisten

- Pynq-Z2 bord met Vitis HLS en PYNQ-stack geïnstalleerd
- Netwerkverbinding (voor het ophalen van afbeeldingen via URL)
- Python-pakketten:
  - `requests`
  - `Pillow` of `opencv-python`
  - `pynq`

---

# Project compileren (Vitis HLS)

1. Open de broncode van de gewenste versneller in Vitis HLS.
2. Draai de C Simulation om de functionele werking van het algoritme te verifiëren.
3. Start de C Synthesis om de C++ code om te zetten in hardwarematige RTL-logica.

---

# Block Design Integratie (Vivado)

1. Voeg de gegenereerde ZIP toe aan de IP-catalogus binnen je Vivado-project.

2. Koppel de `m_axi` poorten (`gmem`) via een AXI SmartConnect of AXI Interconnect aan de High-Performance Slave-poorten (`HP`) van het Zynq Processing System. Dit geeft de IP-core directe toegang tot het DDR-geheugen.

3. Bind alle `s_axilite` control-poorten aan de General Purpose Master-bus (`GP0`) van de Zynq CPU voor de registerbesturing.

4. **Belangrijke Hardware Bugfix:**  
   Verbind de active-low reset (`ap_rst_n`) van de IP-core exclusief met de `peripheral_aresetn` bus van de Processor System Reset module. Laat de AXI Interconnects gekoppeld aan de globale `interconnect_aresetn` om hardnekkige bus-deadlocks en timeouts te vermijden.

5. Genereer de Bitstream (`.bit`) en exporteer het hardware-handshake-bestand (`.hwh`).

---

# Applicatie uitvoeren (op de Pynq-Z2)

Upload het `.bit`-bestand en het `.hwh`-bestand onder exact dezelfde naam naar je Jupyter Notebook-omgeving op de PYNQ-Z2.

Bijvoorbeeld:

```text
pooling.bit
pooling.hwh
```

Start vervolgens het bijbehorende Python-script om de batch-verwerking van de 10 URL-afbeeldingen te starten en de resultaten live te analyseren.


# Output bestanden worden opgeslagen als:
# conv_output_0.jpg ... conv_output_9.jpg
# maxpool_output_0.jpg ... maxpool_output_9.jpg
# minpool_output_0.jpg ... minpool_output_9.jpg
```

---

# HLS Code-optimalisaties

Onderstaande optimalisaties worden toegepast om de throughput en latency te verbeteren:

- `#pragma HLS PIPELINE` op de binnenste lussen voor hogere datadoorvoer
- `#pragma HLS ARRAY_PARTITION` op de kernelbuffer voor parallelle toegang
- Gebruik van AXI4-Stream of high-speed AXI4-Master interfaces voor efficiënte gegevensstroom tussen CPU en FPGA
- Kernel opgeslagen in lokaal geheugen om herhaald DDR-geheugenverkeer te vermijden

---

# Personen

- Bram Jaques — Student — GitHub
- Maciej Klobukouski — Student — GitHub
- Timo Merken — Student — GitHub
