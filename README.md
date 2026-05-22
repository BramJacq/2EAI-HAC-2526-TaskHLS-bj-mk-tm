[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/6nIe6xtC)

# Vitis HLS Beeldverwerking op de Pynq-Z2

![Overzicht](./resources/media/Overview.svg)

## Over het project

Dit project bevat een **Vitis HLS applicatie** die beeldverwerkingstechnieken uitvoert op het **Pynq-Z2 FPGA-bord**. De applicatie leest 10 afbeeldingen in vanuit vaste URL's en voert hierop drie bewerkingen uit: **2D Convolutie**, **Max Pooling** en **Min Pooling**. Alle resultaten worden opgeslagen onder een eigen naam.

De drie deeloperaties zijn:

- **2D Convolutie** — past een 3×3 kernel toe op elke afbeelding om randen te detecteren (vergelijkbaar met een Sobel-filter)
- **Max Pooling** — verkleint elke afbeelding door per 2×2 blok de maximale pixelwaarde te bewaren
- **Min Pooling** — verkleint elke afbeelding door per 2×2 blok de minimale pixelwaarde te bewaren

### Sequence of operation

1. Zorg dat het Pynq-Z2 bord verbonden is en dat Vitis HLS beschikbaar is.
2. Compileer en syntheseer het project via Vitis HLS (zie **Aan de slag**).
3. De applicatie haalt automatisch 10 afbeeldingen op via de geconfigureerde URL's.
4. Elke afbeelding wordt verwerkt door de drie kernels (convolutie, max pooling, min pooling).
5. De outputafbeeldingen worden opgeslagen onder een unieke naam in de outputmap.
6. Optioneel: gebruik de livestream via GStreamer voor realtime weergave.

---

## Materialen en methodes

- **Hardware**: Pynq-Z2 (ARM Cortex-A9 + Xilinx Artix-7 FPGA)
- **Software**:
  - Vitis HLS (synthesetool voor HLS-kernels)
  - Python 3 + PYNQ-bibliotheek (voor aansturing vanuit de ARM-CPU)
  - GStreamer (optionele livestream, 3 extra punten)
  - OpenCV of Pillow (voor het inlezen en opslaan van afbeeldingen)
- **Invoer**: 10 afbeeldingen opgehaald via vaste URL's (fixed); let op de afmetingen
- **Methodologie**:
  - De HLS-kernels worden gesynthetiseerd naar FPGA-logica en aangestuurd via de PYNQ DMA-interface.
  - Voor de 2D Convolutie wordt een 3×3 kernel `[-1, 0, 1]` (herhaald over 3 rijen) toegepast. Negatieve uitkomsten worden geclipped naar 0.
  - Voor pooling wordt elke afbeelding opgedeeld in 2×2 blokken; Max Pooling neemt de hoogste waarde, Min Pooling de laagste.

---

## Resultaten

### 2D Convolutie

De kernel `[-1, 0, 1 / -1, 0, 1 / -1, 0, 1]` detecteert verticale kleurovergangen. Negatieve convolutie-uitkomsten worden geclipped naar 0 (zwart), wat ertoe leidt dat het outputbeeld gedeeltelijk donker is. Enkel positieve overgangen van links naar rechts blijven zichtbaar.

Voorbeeld:

| Inputwaarde | Kernel | Outputwaarde |
|-------------|--------|--------------|
| Zie diagram (6×6 matrix) | 3×3 `[-1,0,1]` | Verkleinde outputmatrix met waarden zoals −11, −4, 9, 12 |

### Max Pooling & Min Pooling

Beide pooling-operaties halveren de afmetingen van de afbeelding (bv. 640×480 → 320×240). Per 2×2 blok:

- **Max Pooling**: behoudt de helderste pixel — contrasten blijven scherp.
- **Min Pooling**: behoudt de donkerste pixel — donkere details worden benadrukt.

Voorbeeld:

| Inputblok | Max Pooling | Min Pooling |
|-----------|-------------|-------------|
| 12, 20, 30, 0 / 8, 12, 2, 0 | 20, 30 | 8, 0 |
| 34, 70, 37, 4 / 112, 100, 25, 12 | 112, 37 | 34, 4 |

### Vergelijking van de outputs

De drie outputs per afbeelding worden opgeslagen onder aparte bestandsnamen zodat ze eenvoudig vergeleken kunnen worden. Voor afbeeldingen met zachte kleurovergangen zijn Max en Min Pooling visueel dichter bij elkaar dan bij afbeeldingen met harde contrasten.

---

## Aan de slag

### Vereisten

- Pynq-Z2 bord met Vitis HLS en PYNQ-stack geïnstalleerd
- Netwerkverbinding (voor het ophalen van afbeeldingen via URL)
- Python-pakketten: `requests`, `Pillow` of `opencv-python`, `pynq`

### Installatie

```bash
pip install requests Pillow pynq
```

### Project compileren (Vitis HLS)

```bash
# Open Vitis HLS en maak een nieuw project aan
# Voeg de kernelbestanden toe: conv2d.cpp, max_pool.cpp, min_pool.cpp
# Stel de doelklok in op de gewenste frequentie (bv. 100 MHz)
vitis_hls -f run_hls.tcl
```

### Applicatie uitvoeren (op de Pynq-Z2)

```python
# Afbeeldingen ophalen en verwerken
python main.py

# Output bestanden worden opgeslagen als:
# conv_output_0.jpg ... conv_output_9.jpg
# maxpool_output_0.jpg ... maxpool_output_9.jpg
# minpool_output_0.jpg ... minpool_output_9.jpg
```

### Livestream via GStreamer (optioneel, +3 punten)

```bash
# Start GStreamer pipeline op de Pynq-Z2
gst-launch-1.0 v4l2src device=/dev/video0 ! videoconvert ! jpegenc ! \
  multipartmux ! tcpserversink host=0.0.0.0 port=5000
```

Verbind vanuit een browser of mediaspeler met `http://<pynq-ip>:5000`.

---

## HLS Code-optimalisaties

Onderstaande optimalisaties worden toegepast om de throughput en latency te verbeteren:

- `#pragma HLS PIPELINE` op de binnenste lussen voor hogere datadoorvoer
- `#pragma HLS ARRAY_PARTITION` op de kernelbuffer voor parallelle toegang
- Gebruik van AXI4-Stream interfaces voor efficiënte gegevensstroom tussen CPU en FPGA
- Kernel opgeslagen in lokaal geheugen om herhaald DDR-geheugenverkeer te vermijden

---

## Bestandsstructuur

```
project/
├── src/
│   ├── conv2d.cpp          # 2D Convolutie HLS-kernel
│   ├── max_pool.cpp        # Max Pooling HLS-kernel
│   ├── min_pool.cpp        # Min Pooling HLS-kernel
│   └── main.py             # Python-stuurscript voor de Pynq-Z2
├── testbench/
│   └── tb_conv2d.cpp       # Testbench voor convolutie
├── run_hls.tcl             # Vitis HLS build-script
└── README.md
```

---

## Toekomstig werk en problemen

- Min Pooling is momenteel sequentieel geïmplementeerd; parallelisatie via CUDA Streams of HLS-dataflow is een logische uitbreiding.
- De convolutie clipt negatieve waarden naar zwart — een verbetering is absolute waarden gebruiken zodat ook negatieve randen zichtbaar worden.
- Testen met RGB-afbeeldingen (3 kanalen) in plaats van enkel grayscale.
- Automatische beeldgrootte-detectie zodat de kernels schaalbaar zijn voor variabele afmetingen.

---

## Personen

- **Bram Jaques** – _Student_ – [GitHub](https://github.com/JOUWNAAM)
- **Maciej Klobukouski** – _Student_ – [GitHub](https://github.com/JOUWNAAM)
- **Timo Merken** – _Student_ – [GitHub](https://github.com/JOUWNAAM)
- **Dieter Vanrykel** – _Docent_ – [GitHub](https://github.com/Vanrykel)
