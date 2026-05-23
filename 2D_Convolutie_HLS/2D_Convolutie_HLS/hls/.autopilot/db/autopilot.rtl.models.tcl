set SynModuleInfo {
  {SRCNAME filter_afbeelding_Pipeline_Loop_Rows_Loop_Cols MODELNAME filter_afbeelding_Pipeline_Loop_Rows_Loop_Cols RTLNAME filter_afbeelding_filter_afbeelding_Pipeline_Loop_Rows_Loop_Cols
    SUBMODULES {
      {MODELNAME filter_afbeelding_mul_31ns_32ns_62_2_1 RTLNAME filter_afbeelding_mul_31ns_32ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_filter_afbeelding_Pipeline_Loop_Rows_Loop_Cols_line_buffer_1_RAM_AUTO_1R1W RTLNAME filter_afbeelding_filter_afbeelding_Pipeline_Loop_Rows_Loop_Cols_line_buffer_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_filter_afbeelding_Pipeline_Loop_Rows_Loop_Cols_line_buffer_RAM_AUTO_1R1W RTLNAME filter_afbeelding_filter_afbeelding_Pipeline_Loop_Rows_Loop_Cols_line_buffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_flow_control_loop_pipe_sequential_init RTLNAME filter_afbeelding_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME filter_afbeelding_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME filter_afbeelding MODELNAME filter_afbeelding RTLNAME filter_afbeelding IS_TOP 1
    SUBMODULES {
      {MODELNAME filter_afbeelding_mul_31ns_31ns_62_2_1 RTLNAME filter_afbeelding_mul_31ns_31ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_mul_32ns_32ns_63_2_1 RTLNAME filter_afbeelding_mul_32ns_32ns_63_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_gmem_invoer_m_axi RTLNAME filter_afbeelding_gmem_invoer_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME filter_afbeelding_gmem_uitvoer_m_axi RTLNAME filter_afbeelding_gmem_uitvoer_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME filter_afbeelding_vitis_control_s_axi RTLNAME filter_afbeelding_vitis_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
