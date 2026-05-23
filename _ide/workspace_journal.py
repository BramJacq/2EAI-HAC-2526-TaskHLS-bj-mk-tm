# 2026-05-23T04:01:28.705297500
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm")

comp = client.create_hls_component(name = "Pooling_HLS",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\2EAI-HAC-2526-TaskHLS-bj-mk-tm\Pooling_HLS\hls_config.cfg")

cfg.set_values(key="syn.file", values=["pooling.h"])

cfg.set_values(key="syn.file", values=["pooling.h", "pooling.cpp"])

cfg.set_values(key="tb.file", values=["pooling_tb.cpp"])

comp = client.get_component(name="Pooling_HLS")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/Pooling_HLS/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="apply_hardware_pooling")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

