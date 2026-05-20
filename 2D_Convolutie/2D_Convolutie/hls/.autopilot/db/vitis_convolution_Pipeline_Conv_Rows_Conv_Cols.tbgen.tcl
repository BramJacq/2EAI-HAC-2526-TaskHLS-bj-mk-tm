set moduleName vitis_convolution_Pipeline_Conv_Rows_Conv_Cols
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 6
set C_modelName {vitis_convolution_Pipeline_Conv_Rows_Conv_Cols}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2 { MEM_WIDTH 8 MEM_SIZE 1849 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_output { MEM_WIDTH 8 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ kernel_load int 8 regular  }
	{ kernel_load_1 int 8 regular  }
	{ kernel_load_8 int 8 regular  }
	{ kernel_load_7 int 8 regular  }
	{ kernel_load_6 int 8 regular  }
	{ kernel_load_5 int 8 regular  }
	{ kernel_load_4 int 8 regular  }
	{ kernel_load_3 int 8 regular  }
	{ kernel_load_2 int 8 regular  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2 int 8 regular {array 1849 { 1 3 } 1 1 } {global 0}  }
	{ local_output int 8 regular {array 16384 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "kernel_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_load_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_load_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_load_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_load_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_load_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_load_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_load_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_load_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "local_output", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ kernel_load sc_in sc_lv 8 signal 0 } 
	{ kernel_load_1 sc_in sc_lv 8 signal 1 } 
	{ kernel_load_8 sc_in sc_lv 8 signal 2 } 
	{ kernel_load_7 sc_in sc_lv 8 signal 3 } 
	{ kernel_load_6 sc_in sc_lv 8 signal 4 } 
	{ kernel_load_5 sc_in sc_lv 8 signal 5 } 
	{ kernel_load_4 sc_in sc_lv 8 signal 6 } 
	{ kernel_load_3 sc_in sc_lv 8 signal 7 } 
	{ kernel_load_2 sc_in sc_lv 8 signal 8 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_address0 sc_out sc_lv 11 signal 9 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_q0 sc_in sc_lv 8 signal 9 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_address0 sc_out sc_lv 11 signal 10 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_q0 sc_in sc_lv 8 signal 10 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_address0 sc_out sc_lv 11 signal 11 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_q0 sc_in sc_lv 8 signal 11 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_address0 sc_out sc_lv 11 signal 12 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_q0 sc_in sc_lv 8 signal 12 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_address0 sc_out sc_lv 11 signal 13 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_q0 sc_in sc_lv 8 signal 13 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_address0 sc_out sc_lv 11 signal 14 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_q0 sc_in sc_lv 8 signal 14 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_address0 sc_out sc_lv 11 signal 15 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_q0 sc_in sc_lv 8 signal 15 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_address0 sc_out sc_lv 11 signal 16 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_q0 sc_in sc_lv 8 signal 16 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_address0 sc_out sc_lv 11 signal 17 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_q0 sc_in sc_lv 8 signal 17 } 
	{ local_output_address0 sc_out sc_lv 14 signal 18 } 
	{ local_output_ce0 sc_out sc_logic 1 signal 18 } 
	{ local_output_we0 sc_out sc_logic 1 signal 18 } 
	{ local_output_d0 sc_out sc_lv 8 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "kernel_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load", "role": "default" }} , 
 	{ "name": "kernel_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load_1", "role": "default" }} , 
 	{ "name": "kernel_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load_8", "role": "default" }} , 
 	{ "name": "kernel_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load_7", "role": "default" }} , 
 	{ "name": "kernel_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load_6", "role": "default" }} , 
 	{ "name": "kernel_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load_5", "role": "default" }} , 
 	{ "name": "kernel_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load_4", "role": "default" }} , 
 	{ "name": "kernel_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load_3", "role": "default" }} , 
 	{ "name": "kernel_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel_load_2", "role": "default" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0", "role": "q0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1", "role": "q0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2", "role": "q0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0", "role": "q0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1", "role": "q0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2", "role": "q0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0", "role": "q0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1", "role": "q0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2", "role": "address0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2", "role": "ce0" }} , 
 	{ "name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2", "role": "q0" }} , 
 	{ "name": "local_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "local_output", "role": "address0" }} , 
 	{ "name": "local_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_output", "role": "ce0" }} , 
 	{ "name": "local_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_output", "role": "we0" }} , 
 	{ "name": "local_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_output", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	vitis_convolution_Pipeline_Conv_Rows_Conv_Cols {
		kernel_load {Type I LastRead 0 FirstWrite -1}
		kernel_load_1 {Type I LastRead 0 FirstWrite -1}
		kernel_load_8 {Type I LastRead 0 FirstWrite -1}
		kernel_load_7 {Type I LastRead 0 FirstWrite -1}
		kernel_load_6 {Type I LastRead 0 FirstWrite -1}
		kernel_load_5 {Type I LastRead 0 FirstWrite -1}
		kernel_load_4 {Type I LastRead 0 FirstWrite -1}
		kernel_load_3 {Type I LastRead 0 FirstWrite -1}
		kernel_load_2 {Type I LastRead 0 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0 {Type I LastRead 13 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1 {Type I LastRead 13 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2 {Type I LastRead 13 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0 {Type I LastRead 13 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1 {Type I LastRead 13 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2 {Type I LastRead 13 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0 {Type I LastRead 13 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1 {Type I LastRead 13 FirstWrite -1}
		p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2 {Type I LastRead 13 FirstWrite -1}
		local_output {Type O LastRead -1 FirstWrite 19}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15896", "Max" : "15896"}
	, {"Name" : "Interval", "Min" : "15877", "Max" : "15877"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	kernel_load { ap_none {  { kernel_load in_data 0 8 } } }
	kernel_load_1 { ap_none {  { kernel_load_1 in_data 0 8 } } }
	kernel_load_8 { ap_none {  { kernel_load_8 in_data 0 8 } } }
	kernel_load_7 { ap_none {  { kernel_load_7 in_data 0 8 } } }
	kernel_load_6 { ap_none {  { kernel_load_6 in_data 0 8 } } }
	kernel_load_5 { ap_none {  { kernel_load_5 in_data 0 8 } } }
	kernel_load_4 { ap_none {  { kernel_load_4 in_data 0 8 } } }
	kernel_load_3 { ap_none {  { kernel_load_3 in_data 0 8 } } }
	kernel_load_2 { ap_none {  { kernel_load_2 in_data 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_0_q0 mem_dout 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_1_q0 mem_dout 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_0_2_q0 mem_dout 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_0_q0 mem_dout 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_1_q0 mem_dout 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_1_2_q0 mem_dout 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_0_q0 mem_dout 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_1_q0 mem_dout 0 8 } } }
	p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2 { ap_memory {  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_address0 mem_address 1 11 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_ce0 mem_ce 1 1 }  { p_ZZ17vitis_convolutionPVhPVcPA3_cE11local_input_2_2_q0 mem_dout 0 8 } } }
	local_output { ap_memory {  { local_output_address0 mem_address 1 14 }  { local_output_ce0 mem_ce 1 1 }  { local_output_we0 mem_we 1 1 }  { local_output_d0 mem_din 1 8 } } }
}
