set SynModuleInfo {
  {SRCNAME vitis_convolution_Pipeline_Read_Rows_Read_Cols MODELNAME vitis_convolution_Pipeline_Read_Rows_Read_Cols RTLNAME vitis_convolution_vitis_convolution_Pipeline_Read_Rows_Read_Cols
    SUBMODULES {
      {MODELNAME vitis_convolution_flow_control_loop_pipe_sequential_init RTLNAME vitis_convolution_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vitis_convolution_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME vitis_convolution_Pipeline_Write_Rows_Write_Cols MODELNAME vitis_convolution_Pipeline_Write_Rows_Write_Cols RTLNAME vitis_convolution_vitis_convolution_Pipeline_Write_Rows_Write_Cols}
  {SRCNAME vitis_convolution MODELNAME vitis_convolution RTLNAME vitis_convolution IS_TOP 1
    SUBMODULES {
      {MODELNAME vitis_convolution_gmem_m_axi RTLNAME vitis_convolution_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vitis_convolution_control_s_axi RTLNAME vitis_convolution_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME vitis_convolution_control_r_s_axi RTLNAME vitis_convolution_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
