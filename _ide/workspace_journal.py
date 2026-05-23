# 2026-05-22T02:24:31.493295700
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm")

comp = client.get_component(name="Edges")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "2D_Convolutie_HLS",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\2EAI-HAC-2526-TaskHLS-bj-mk-tm\2D_Convolutie_HLS\hls_config.cfg")

cfg.set_values(key="syn.file", values=["convolutie_2d.h"])

cfg.set_values(key="syn.file", values=["convolutie_2d.h", "convolutie_2d.cpp"])

cfg.set_values(key="tb.file", values=["convolutie_tb.cpp"])

cfg = client.get_config_file(path="/c:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/2D_Convolutie_HLS/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="filter_afbeelding")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

