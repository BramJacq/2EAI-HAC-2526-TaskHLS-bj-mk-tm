# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vitis_convolution_sparsemux_7_2_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vitis_convolution_sparsemux_7_2_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vitis_convolution_sparsemux_7_2_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


set name vitis_convolution_urem_7ns_3ns_2_11_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 10 ALLOW_PRAGMA 1
}


set name vitis_convolution_mul_7ns_9ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name vitis_convolution_mul_6ns_7ns_11_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name vitis_convolution_mul_8s_8s_8_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vitis_convolution_mac_muladd_8s_8s_8s_8_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 82 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 83 \
    name p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2 \
    op interface \
    ports { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_address0 { O 11 vector } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_ce0 { O 1 bit } p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 84 \
    name local_output \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_output \
    op interface \
    ports { local_output_address0 { O 14 vector } local_output_ce0 { O 1 bit } local_output_we0 { O 1 bit } local_output_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_output'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name kernel_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load \
    op interface \
    ports { kernel_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name kernel_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load_1 \
    op interface \
    ports { kernel_load_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name kernel_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load_8 \
    op interface \
    ports { kernel_load_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name kernel_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load_7 \
    op interface \
    ports { kernel_load_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name kernel_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load_6 \
    op interface \
    ports { kernel_load_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name kernel_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load_5 \
    op interface \
    ports { kernel_load_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name kernel_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load_4 \
    op interface \
    ports { kernel_load_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name kernel_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load_3 \
    op interface \
    ports { kernel_load_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name kernel_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_load_2 \
    op interface \
    ports { kernel_load_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName vitis_convolution_flow_control_loop_pipe_sequential_init_U
set CompName vitis_convolution_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix vitis_convolution_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


