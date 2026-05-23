set SynModuleInfo {
  {SRCNAME apply_hardware_pooling_Pipeline_Read_Rij0 MODELNAME apply_hardware_pooling_Pipeline_Read_Rij0 RTLNAME apply_hardware_pooling_apply_hardware_pooling_Pipeline_Read_Rij0
    SUBMODULES {
      {MODELNAME apply_hardware_pooling_flow_control_loop_pipe_sequential_init RTLNAME apply_hardware_pooling_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME apply_hardware_pooling_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME apply_hardware_pooling_Pipeline_Read_Rij1 MODELNAME apply_hardware_pooling_Pipeline_Read_Rij1 RTLNAME apply_hardware_pooling_apply_hardware_pooling_Pipeline_Read_Rij1}
  {SRCNAME apply_hardware_pooling_Pipeline_Pool_X MODELNAME apply_hardware_pooling_Pipeline_Pool_X RTLNAME apply_hardware_pooling_apply_hardware_pooling_Pipeline_Pool_X}
  {SRCNAME apply_hardware_pooling MODELNAME apply_hardware_pooling RTLNAME apply_hardware_pooling IS_TOP 1
    SUBMODULES {
      {MODELNAME apply_hardware_pooling_mul_30ns_32ns_61_2_1 RTLNAME apply_hardware_pooling_mul_30ns_32ns_61_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME apply_hardware_pooling_mul_30ns_32ns_62_2_1 RTLNAME apply_hardware_pooling_mul_30ns_32ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME apply_hardware_pooling_rij_buffer_0_RAM_AUTO_1R1W RTLNAME apply_hardware_pooling_rij_buffer_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME apply_hardware_pooling_gmem_in_m_axi RTLNAME apply_hardware_pooling_gmem_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME apply_hardware_pooling_gmem_out_m_axi RTLNAME apply_hardware_pooling_gmem_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME apply_hardware_pooling_CONTROL_BUS_s_axi RTLNAME apply_hardware_pooling_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME apply_hardware_pooling_control_s_axi RTLNAME apply_hardware_pooling_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
