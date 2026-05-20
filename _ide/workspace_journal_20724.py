# 2026-05-20T13:45:30.608392800
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm")

comp = client.get_component(name="2D_Convolutie")
comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

vitis.dispose()

