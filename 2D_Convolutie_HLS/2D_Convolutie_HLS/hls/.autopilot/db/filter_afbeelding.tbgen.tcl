set moduleName filter_afbeelding
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set cdfgNum 4
set C_modelName {filter_afbeelding}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem_invoer int 32 regular {axi_master 0}  }
	{ gmem_uitvoer int 32 regular {axi_master 1}  }
	{ invoer_pixels int 64 regular {axi_slave 0}  }
	{ uitvoer_pixels int 64 regular {axi_slave 0}  }
	{ breedte int 32 regular {axi_slave 0}  }
	{ hoogte int 32 regular {axi_slave 0}  }
	{ kanalen int 32 unused {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem_invoer", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "invoer_pixels","offset": { "type": "dynamic","port_name": "invoer_pixels","bundle": "vitis_control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_uitvoer", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "uitvoer_pixels","offset": { "type": "dynamic","port_name": "uitvoer_pixels","bundle": "vitis_control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "invoer_pixels", "interface" : "axi_slave", "bundle":"vitis_control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "uitvoer_pixels", "interface" : "axi_slave", "bundle":"vitis_control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "breedte", "interface" : "axi_slave", "bundle":"vitis_control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "hoogte", "interface" : "axi_slave", "bundle":"vitis_control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "kanalen", "interface" : "axi_slave", "bundle":"vitis_control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_invoer_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_invoer_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_invoer_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_invoer_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_invoer_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_invoer_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_invoer_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_invoer_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_invoer_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_invoer_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_invoer_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_invoer_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_invoer_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_invoer_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_invoer_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_invoer_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_invoer_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_invoer_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_invoer_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_invoer_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_invoer_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_invoer_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_invoer_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_invoer_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_invoer_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_invoer_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_uitvoer_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_uitvoer_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_uitvoer_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_uitvoer_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_uitvoer_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_uitvoer_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_uitvoer_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_uitvoer_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_uitvoer_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_uitvoer_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_uitvoer_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_uitvoer_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_uitvoer_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_uitvoer_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_uitvoer_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_uitvoer_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_uitvoer_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_uitvoer_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_uitvoer_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_uitvoer_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_uitvoer_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_uitvoer_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_uitvoer_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_uitvoer_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_uitvoer_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_uitvoer_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_vitis_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_vitis_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_vitis_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_vitis_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_vitis_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_vitis_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_vitis_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_vitis_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_vitis_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vitis_control", "role": "AWADDR" },"address":[{"name":"filter_afbeelding","role":"start","value":"0","valid_bit":"0"},{"name":"filter_afbeelding","role":"continue","value":"0","valid_bit":"4"},{"name":"filter_afbeelding","role":"auto_start","value":"0","valid_bit":"7"},{"name":"invoer_pixels","role":"data","value":"16"},{"name":"uitvoer_pixels","role":"data","value":"28"},{"name":"breedte","role":"data","value":"40"},{"name":"hoogte","role":"data","value":"48"},{"name":"kanalen","role":"data","value":"56"}] },
	{ "name": "s_axi_vitis_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "AWVALID" } },
	{ "name": "s_axi_vitis_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "AWREADY" } },
	{ "name": "s_axi_vitis_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "WVALID" } },
	{ "name": "s_axi_vitis_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "WREADY" } },
	{ "name": "s_axi_vitis_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vitis_control", "role": "WDATA" } },
	{ "name": "s_axi_vitis_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vitis_control", "role": "WSTRB" } },
	{ "name": "s_axi_vitis_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vitis_control", "role": "ARADDR" },"address":[{"name":"filter_afbeelding","role":"start","value":"0","valid_bit":"0"},{"name":"filter_afbeelding","role":"done","value":"0","valid_bit":"1"},{"name":"filter_afbeelding","role":"idle","value":"0","valid_bit":"2"},{"name":"filter_afbeelding","role":"ready","value":"0","valid_bit":"3"},{"name":"filter_afbeelding","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_vitis_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "ARVALID" } },
	{ "name": "s_axi_vitis_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "ARREADY" } },
	{ "name": "s_axi_vitis_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "RVALID" } },
	{ "name": "s_axi_vitis_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "RREADY" } },
	{ "name": "s_axi_vitis_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vitis_control", "role": "RDATA" } },
	{ "name": "s_axi_vitis_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vitis_control", "role": "RRESP" } },
	{ "name": "s_axi_vitis_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "BVALID" } },
	{ "name": "s_axi_vitis_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "BREADY" } },
	{ "name": "s_axi_vitis_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vitis_control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vitis_control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_invoer_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_invoer_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_invoer_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_invoer_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_invoer_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_invoer_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_invoer_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_invoer_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_invoer_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_invoer_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_invoer_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_invoer_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_invoer_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_invoer_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_invoer_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_invoer_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_invoer_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_invoer_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_invoer_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_invoer_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_invoer_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_invoer_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_invoer_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_invoer_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_invoer_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_invoer_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_invoer_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_invoer_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_invoer_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_invoer_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_invoer_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_invoer_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_invoer_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_invoer_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_invoer_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_invoer_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_invoer_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_invoer_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_invoer_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_invoer_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_invoer_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_invoer_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_invoer_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_invoer_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_invoer_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_invoer", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_uitvoer_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_uitvoer_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_uitvoer_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_uitvoer_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_uitvoer_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_uitvoer_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_uitvoer_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_uitvoer_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_uitvoer_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_uitvoer_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_uitvoer_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_uitvoer_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_uitvoer_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_uitvoer_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_uitvoer_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_uitvoer_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_uitvoer", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	filter_afbeelding {
		gmem_invoer {Type I LastRead 4 FirstWrite -1}
		gmem_uitvoer {Type O LastRead 8 FirstWrite 7}
		invoer_pixels {Type I LastRead 0 FirstWrite -1}
		uitvoer_pixels {Type I LastRead 0 FirstWrite -1}
		breedte {Type I LastRead 0 FirstWrite -1}
		hoogte {Type I LastRead 0 FirstWrite -1}
		kanalen {Type I LastRead -1 FirstWrite -1}}
	filter_afbeelding_Pipeline_Loop_Rows_Loop_Cols {
		gmem_uitvoer {Type O LastRead 8 FirstWrite 7}
		breedte {Type I LastRead 0 FirstWrite -1}
		gmem_invoer {Type I LastRead 2 FirstWrite -1}
		mul_ln3 {Type I LastRead 0 FirstWrite -1}
		sext_ln37 {Type I LastRead 0 FirstWrite -1}
		zext_ln37 {Type I LastRead 0 FirstWrite -1}
		sext_ln37_1 {Type I LastRead 0 FirstWrite -1}
		uitvoer_pixels {Type I LastRead 0 FirstWrite -1}
		select_ln37_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_invoer { m_axi {  { m_axi_gmem_invoer_AWVALID VALID 1 1 }  { m_axi_gmem_invoer_AWREADY READY 0 1 }  { m_axi_gmem_invoer_AWADDR ADDR 1 64 }  { m_axi_gmem_invoer_AWID ID 1 1 }  { m_axi_gmem_invoer_AWLEN SIZE 1 8 }  { m_axi_gmem_invoer_AWSIZE BURST 1 3 }  { m_axi_gmem_invoer_AWBURST LOCK 1 2 }  { m_axi_gmem_invoer_AWLOCK CACHE 1 2 }  { m_axi_gmem_invoer_AWCACHE PROT 1 4 }  { m_axi_gmem_invoer_AWPROT QOS 1 3 }  { m_axi_gmem_invoer_AWQOS REGION 1 4 }  { m_axi_gmem_invoer_AWREGION USER 1 4 }  { m_axi_gmem_invoer_AWUSER DATA 1 1 }  { m_axi_gmem_invoer_WVALID VALID 1 1 }  { m_axi_gmem_invoer_WREADY READY 0 1 }  { m_axi_gmem_invoer_WDATA FIFONUM 1 32 }  { m_axi_gmem_invoer_WSTRB STRB 1 4 }  { m_axi_gmem_invoer_WLAST LAST 1 1 }  { m_axi_gmem_invoer_WID ID 1 1 }  { m_axi_gmem_invoer_WUSER DATA 1 1 }  { m_axi_gmem_invoer_ARVALID VALID 1 1 }  { m_axi_gmem_invoer_ARREADY READY 0 1 }  { m_axi_gmem_invoer_ARADDR ADDR 1 64 }  { m_axi_gmem_invoer_ARID ID 1 1 }  { m_axi_gmem_invoer_ARLEN SIZE 1 8 }  { m_axi_gmem_invoer_ARSIZE BURST 1 3 }  { m_axi_gmem_invoer_ARBURST LOCK 1 2 }  { m_axi_gmem_invoer_ARLOCK CACHE 1 2 }  { m_axi_gmem_invoer_ARCACHE PROT 1 4 }  { m_axi_gmem_invoer_ARPROT QOS 1 3 }  { m_axi_gmem_invoer_ARQOS REGION 1 4 }  { m_axi_gmem_invoer_ARREGION USER 1 4 }  { m_axi_gmem_invoer_ARUSER DATA 1 1 }  { m_axi_gmem_invoer_RVALID VALID 0 1 }  { m_axi_gmem_invoer_RREADY READY 1 1 }  { m_axi_gmem_invoer_RDATA FIFONUM 0 32 }  { m_axi_gmem_invoer_RLAST LAST 0 1 }  { m_axi_gmem_invoer_RID ID 0 1 }  { m_axi_gmem_invoer_RUSER DATA 0 1 }  { m_axi_gmem_invoer_RRESP RESP 0 2 }  { m_axi_gmem_invoer_BVALID VALID 0 1 }  { m_axi_gmem_invoer_BREADY READY 1 1 }  { m_axi_gmem_invoer_BRESP RESP 0 2 }  { m_axi_gmem_invoer_BID ID 0 1 }  { m_axi_gmem_invoer_BUSER DATA 0 1 } } }
	gmem_uitvoer { m_axi {  { m_axi_gmem_uitvoer_AWVALID VALID 1 1 }  { m_axi_gmem_uitvoer_AWREADY READY 0 1 }  { m_axi_gmem_uitvoer_AWADDR ADDR 1 64 }  { m_axi_gmem_uitvoer_AWID ID 1 1 }  { m_axi_gmem_uitvoer_AWLEN SIZE 1 8 }  { m_axi_gmem_uitvoer_AWSIZE BURST 1 3 }  { m_axi_gmem_uitvoer_AWBURST LOCK 1 2 }  { m_axi_gmem_uitvoer_AWLOCK CACHE 1 2 }  { m_axi_gmem_uitvoer_AWCACHE PROT 1 4 }  { m_axi_gmem_uitvoer_AWPROT QOS 1 3 }  { m_axi_gmem_uitvoer_AWQOS REGION 1 4 }  { m_axi_gmem_uitvoer_AWREGION USER 1 4 }  { m_axi_gmem_uitvoer_AWUSER DATA 1 1 }  { m_axi_gmem_uitvoer_WVALID VALID 1 1 }  { m_axi_gmem_uitvoer_WREADY READY 0 1 }  { m_axi_gmem_uitvoer_WDATA FIFONUM 1 32 }  { m_axi_gmem_uitvoer_WSTRB STRB 1 4 }  { m_axi_gmem_uitvoer_WLAST LAST 1 1 }  { m_axi_gmem_uitvoer_WID ID 1 1 }  { m_axi_gmem_uitvoer_WUSER DATA 1 1 }  { m_axi_gmem_uitvoer_ARVALID VALID 1 1 }  { m_axi_gmem_uitvoer_ARREADY READY 0 1 }  { m_axi_gmem_uitvoer_ARADDR ADDR 1 64 }  { m_axi_gmem_uitvoer_ARID ID 1 1 }  { m_axi_gmem_uitvoer_ARLEN SIZE 1 8 }  { m_axi_gmem_uitvoer_ARSIZE BURST 1 3 }  { m_axi_gmem_uitvoer_ARBURST LOCK 1 2 }  { m_axi_gmem_uitvoer_ARLOCK CACHE 1 2 }  { m_axi_gmem_uitvoer_ARCACHE PROT 1 4 }  { m_axi_gmem_uitvoer_ARPROT QOS 1 3 }  { m_axi_gmem_uitvoer_ARQOS REGION 1 4 }  { m_axi_gmem_uitvoer_ARREGION USER 1 4 }  { m_axi_gmem_uitvoer_ARUSER DATA 1 1 }  { m_axi_gmem_uitvoer_RVALID VALID 0 1 }  { m_axi_gmem_uitvoer_RREADY READY 1 1 }  { m_axi_gmem_uitvoer_RDATA FIFONUM 0 32 }  { m_axi_gmem_uitvoer_RLAST LAST 0 1 }  { m_axi_gmem_uitvoer_RID ID 0 1 }  { m_axi_gmem_uitvoer_RUSER DATA 0 1 }  { m_axi_gmem_uitvoer_RRESP RESP 0 2 }  { m_axi_gmem_uitvoer_BVALID VALID 0 1 }  { m_axi_gmem_uitvoer_BREADY READY 1 1 }  { m_axi_gmem_uitvoer_BRESP RESP 0 2 }  { m_axi_gmem_uitvoer_BID ID 0 1 }  { m_axi_gmem_uitvoer_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_invoer { CHANNEL_NUM 0 BUNDLE gmem_invoer NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_uitvoer { CHANNEL_NUM 0 BUNDLE gmem_uitvoer NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_invoer 1 }
	{ gmem_uitvoer 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_invoer 1 }
	{ gmem_uitvoer 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
