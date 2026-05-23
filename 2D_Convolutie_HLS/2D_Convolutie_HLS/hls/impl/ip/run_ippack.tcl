# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
# Tool Version Limit: 2025.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
source -notrace "C:/AMDDesignTools/2025.2/Vitis/common/scripts/ipxhls.tcl"
set ip_out_dir "C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/2D_Convolutie_HLS/2D_Convolutie_HLS/hls/impl/ip"
set data_file "C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/2D_Convolutie_HLS/2D_Convolutie_HLS/hls/hls_data.json"
set src_dir [file dir $data_file]
set ip_types {vitis sysgen}
set ippack_opts_dict {}
if { [catch {::ipx::utils::package_hls_ip $ip_out_dir $data_file $ip_types $src_dir $ippack_opts_dict} res] } {
  puts "Caught error:\n$::errorInfo"
  error $res
}
