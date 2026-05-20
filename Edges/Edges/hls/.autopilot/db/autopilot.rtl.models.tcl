set SynModuleInfo {
  {SRCNAME vitis_convolution_Pipeline_Read_Rows_Read_Cols MODELNAME vitis_convolution_Pipeline_Read_Rows_Read_Cols RTLNAME vitis_convolution_vitis_convolution_Pipeline_Read_Rows_Read_Cols
    SUBMODULES {
      {MODELNAME vitis_convolution_mul_8ns_10ns_17_1_1 RTLNAME vitis_convolution_mul_8ns_10ns_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vitis_convolution_urem_8ns_3ns_2_12_1 RTLNAME vitis_convolution_urem_8ns_3ns_2_12_1 BINDTYPE op TYPE urem IMPL auto LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME vitis_convolution_mac_muladd_7ns_6ns_7ns_11_4_1 RTLNAME vitis_convolution_mac_muladd_7ns_6ns_7ns_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME vitis_convolution_flow_control_loop_pipe_sequential_init RTLNAME vitis_convolution_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vitis_convolution_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME vitis_convolution_Pipeline_Conv_Rows_Conv_Cols MODELNAME vitis_convolution_Pipeline_Conv_Rows_Conv_Cols RTLNAME vitis_convolution_vitis_convolution_Pipeline_Conv_Rows_Conv_Cols
    SUBMODULES {
      {MODELNAME vitis_convolution_sparsemux_7_2_8_1_1 RTLNAME vitis_convolution_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME vitis_convolution_urem_7ns_3ns_2_11_1 RTLNAME vitis_convolution_urem_7ns_3ns_2_11_1 BINDTYPE op TYPE urem IMPL auto LATENCY 10 ALLOW_PRAGMA 1}
      {MODELNAME vitis_convolution_mul_7ns_9ns_15_1_1 RTLNAME vitis_convolution_mul_7ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vitis_convolution_mul_6ns_7ns_11_1_1 RTLNAME vitis_convolution_mul_6ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vitis_convolution_mul_8s_8s_8_1_1 RTLNAME vitis_convolution_mul_8s_8s_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vitis_convolution_mac_muladd_8s_8s_8s_8_4_1 RTLNAME vitis_convolution_mac_muladd_8s_8s_8s_8_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME vitis_convolution_Pipeline_Write_Rows_Write_Cols MODELNAME vitis_convolution_Pipeline_Write_Rows_Write_Cols RTLNAME vitis_convolution_vitis_convolution_Pipeline_Write_Rows_Write_Cols}
  {SRCNAME vitis_convolution MODELNAME vitis_convolution RTLNAME vitis_convolution IS_TOP 1
    SUBMODULES {
      {MODELNAME vitis_convolution_p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_RAM_AUTO_1R1W RTLNAME vitis_convolution_p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vitis_convolution_local_output_RAM_AUTO_1R1W RTLNAME vitis_convolution_local_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vitis_convolution_gmem_in_m_axi RTLNAME vitis_convolution_gmem_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vitis_convolution_gmem_out_m_axi RTLNAME vitis_convolution_gmem_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vitis_convolution_control_s_axi RTLNAME vitis_convolution_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME vitis_convolution_control_r_s_axi RTLNAME vitis_convolution_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
