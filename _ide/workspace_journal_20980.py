# 2026-05-20T02:45:11.322222300
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm")

comp = client.create_hls_component(name = "2D_Convolutie",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\2EAI-HAC-2526-TaskHLS-bj-mk-tm\2D_Convolutie\hls_config.cfg")

cfg.set_values(key="syn.file", values=["vitis_convolution.h"])

cfg.set_values(key="syn.file", values=["vitis_convolution.h", "vitis_convolution.cpp"])

cfg.set_values(key="tb.file", values=["vitis_convolution_tb.cpp"])

cfg = client.get_config_file(path="/c:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/2D_Convolutie/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="vitis_convolution")

comp = client.get_component(name="2D_Convolutie")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

vitis.dispose()

