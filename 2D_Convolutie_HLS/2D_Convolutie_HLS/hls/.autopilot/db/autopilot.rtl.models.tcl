set SynModuleInfo {
  {SRCNAME filter_afbeelding MODELNAME filter_afbeelding RTLNAME filter_afbeelding IS_TOP 1
    SUBMODULES {
      {MODELNAME filter_afbeelding_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME filter_afbeelding_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME filter_afbeelding_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_uitofp_32ns_32_6_no_dsp_1 RTLNAME filter_afbeelding_uitofp_32ns_32_6_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_mul_32ns_32ns_64_2_1 RTLNAME filter_afbeelding_mul_32ns_32ns_64_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_mul_63ns_32ns_64_5_1 RTLNAME filter_afbeelding_mul_63ns_32ns_64_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_mul_63ns_32s_64_5_1 RTLNAME filter_afbeelding_mul_63ns_32s_64_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_mul_63s_32s_64_5_1 RTLNAME filter_afbeelding_mul_63s_32s_64_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_mul_64s_32ns_64_5_1 RTLNAME filter_afbeelding_mul_64s_32ns_64_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME filter_afbeelding_sparsemux_7_2_32_1_1 RTLNAME filter_afbeelding_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME filter_afbeelding_gmem_invoer_m_axi RTLNAME filter_afbeelding_gmem_invoer_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME filter_afbeelding_gmem_uitvoer_m_axi RTLNAME filter_afbeelding_gmem_uitvoer_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME filter_afbeelding_vitis_control_s_axi RTLNAME filter_afbeelding_vitis_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
