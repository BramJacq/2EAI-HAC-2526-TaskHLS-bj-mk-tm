// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat May 23 03:43:42 2026
// Host        : ELITE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_filter_afbeelding_0_0_stub.v
// Design      : design_1_filter_afbeelding_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_filter_afbeelding_0_0,filter_afbeelding,{}" *) (* CORE_GENERATION_INFO = "design_1_filter_afbeelding_0_0,filter_afbeelding,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=filter_afbeelding,x_ipVersion=1.0,x_ipCoreRevision=2114620840,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_VITIS_CONTROL_ADDR_WIDTH=6,C_S_AXI_VITIS_CONTROL_DATA_WIDTH=32,C_M_AXI_GMEM_INVOER_ID_WIDTH=1,C_M_AXI_GMEM_INVOER_ADDR_WIDTH=64,C_M_AXI_GMEM_INVOER_DATA_WIDTH=32,C_M_AXI_GMEM_INVOER_AWUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_ARUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_WUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_RUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_BUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_USER_VALUE=0x00000000,C_M_AXI_GMEM_INVOER_PROT_VALUE=000,C_M_AXI_GMEM_INVOER_CACHE_VALUE=0011,C_M_AXI_GMEM_UITVOER_ID_WIDTH=1,C_M_AXI_GMEM_UITVOER_ADDR_WIDTH=64,C_M_AXI_GMEM_UITVOER_DATA_WIDTH=32,C_M_AXI_GMEM_UITVOER_AWUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_ARUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_WUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_RUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_BUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_USER_VALUE=0x00000000,C_M_AXI_GMEM_UITVOER_PROT_VALUE=000,C_M_AXI_GMEM_UITVOER_CACHE_VALUE=0011}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "filter_afbeelding,Vivado 2025.2" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_vitis_control_ARADDR, 
  s_axi_vitis_control_ARREADY, s_axi_vitis_control_ARVALID, s_axi_vitis_control_AWADDR, 
  s_axi_vitis_control_AWREADY, s_axi_vitis_control_AWVALID, s_axi_vitis_control_BREADY, 
  s_axi_vitis_control_BRESP, s_axi_vitis_control_BVALID, s_axi_vitis_control_RDATA, 
  s_axi_vitis_control_RREADY, s_axi_vitis_control_RRESP, s_axi_vitis_control_RVALID, 
  s_axi_vitis_control_WDATA, s_axi_vitis_control_WREADY, s_axi_vitis_control_WSTRB, 
  s_axi_vitis_control_WVALID, ap_clk, ap_rst_n, interrupt, m_axi_gmem_invoer_ARADDR, 
  m_axi_gmem_invoer_ARBURST, m_axi_gmem_invoer_ARCACHE, m_axi_gmem_invoer_ARID, 
  m_axi_gmem_invoer_ARLEN, m_axi_gmem_invoer_ARLOCK, m_axi_gmem_invoer_ARPROT, 
  m_axi_gmem_invoer_ARQOS, m_axi_gmem_invoer_ARREADY, m_axi_gmem_invoer_ARREGION, 
  m_axi_gmem_invoer_ARSIZE, m_axi_gmem_invoer_ARVALID, m_axi_gmem_invoer_AWADDR, 
  m_axi_gmem_invoer_AWBURST, m_axi_gmem_invoer_AWCACHE, m_axi_gmem_invoer_AWID, 
  m_axi_gmem_invoer_AWLEN, m_axi_gmem_invoer_AWLOCK, m_axi_gmem_invoer_AWPROT, 
  m_axi_gmem_invoer_AWQOS, m_axi_gmem_invoer_AWREADY, m_axi_gmem_invoer_AWREGION, 
  m_axi_gmem_invoer_AWSIZE, m_axi_gmem_invoer_AWVALID, m_axi_gmem_invoer_BID, 
  m_axi_gmem_invoer_BREADY, m_axi_gmem_invoer_BRESP, m_axi_gmem_invoer_BVALID, 
  m_axi_gmem_invoer_RDATA, m_axi_gmem_invoer_RID, m_axi_gmem_invoer_RLAST, 
  m_axi_gmem_invoer_RREADY, m_axi_gmem_invoer_RRESP, m_axi_gmem_invoer_RVALID, 
  m_axi_gmem_invoer_WDATA, m_axi_gmem_invoer_WID, m_axi_gmem_invoer_WLAST, 
  m_axi_gmem_invoer_WREADY, m_axi_gmem_invoer_WSTRB, m_axi_gmem_invoer_WVALID, 
  m_axi_gmem_uitvoer_ARADDR, m_axi_gmem_uitvoer_ARBURST, m_axi_gmem_uitvoer_ARCACHE, 
  m_axi_gmem_uitvoer_ARID, m_axi_gmem_uitvoer_ARLEN, m_axi_gmem_uitvoer_ARLOCK, 
  m_axi_gmem_uitvoer_ARPROT, m_axi_gmem_uitvoer_ARQOS, m_axi_gmem_uitvoer_ARREADY, 
  m_axi_gmem_uitvoer_ARREGION, m_axi_gmem_uitvoer_ARSIZE, m_axi_gmem_uitvoer_ARVALID, 
  m_axi_gmem_uitvoer_AWADDR, m_axi_gmem_uitvoer_AWBURST, m_axi_gmem_uitvoer_AWCACHE, 
  m_axi_gmem_uitvoer_AWID, m_axi_gmem_uitvoer_AWLEN, m_axi_gmem_uitvoer_AWLOCK, 
  m_axi_gmem_uitvoer_AWPROT, m_axi_gmem_uitvoer_AWQOS, m_axi_gmem_uitvoer_AWREADY, 
  m_axi_gmem_uitvoer_AWREGION, m_axi_gmem_uitvoer_AWSIZE, m_axi_gmem_uitvoer_AWVALID, 
  m_axi_gmem_uitvoer_BID, m_axi_gmem_uitvoer_BREADY, m_axi_gmem_uitvoer_BRESP, 
  m_axi_gmem_uitvoer_BVALID, m_axi_gmem_uitvoer_RDATA, m_axi_gmem_uitvoer_RID, 
  m_axi_gmem_uitvoer_RLAST, m_axi_gmem_uitvoer_RREADY, m_axi_gmem_uitvoer_RRESP, 
  m_axi_gmem_uitvoer_RVALID, m_axi_gmem_uitvoer_WDATA, m_axi_gmem_uitvoer_WID, 
  m_axi_gmem_uitvoer_WLAST, m_axi_gmem_uitvoer_WREADY, m_axi_gmem_uitvoer_WSTRB, 
  m_axi_gmem_uitvoer_WVALID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_vitis_control_ARADDR[5:0],s_axi_vitis_control_ARREADY,s_axi_vitis_control_ARVALID,s_axi_vitis_control_AWADDR[5:0],s_axi_vitis_control_AWREADY,s_axi_vitis_control_AWVALID,s_axi_vitis_control_BREADY,s_axi_vitis_control_BRESP[1:0],s_axi_vitis_control_BVALID,s_axi_vitis_control_RDATA[31:0],s_axi_vitis_control_RREADY,s_axi_vitis_control_RRESP[1:0],s_axi_vitis_control_RVALID,s_axi_vitis_control_WDATA[31:0],s_axi_vitis_control_WREADY,s_axi_vitis_control_WSTRB[3:0],s_axi_vitis_control_WVALID,ap_rst_n,interrupt,m_axi_gmem_invoer_ARADDR[63:0],m_axi_gmem_invoer_ARBURST[1:0],m_axi_gmem_invoer_ARCACHE[3:0],m_axi_gmem_invoer_ARID[0:0],m_axi_gmem_invoer_ARLEN[7:0],m_axi_gmem_invoer_ARLOCK[1:0],m_axi_gmem_invoer_ARPROT[2:0],m_axi_gmem_invoer_ARQOS[3:0],m_axi_gmem_invoer_ARREADY,m_axi_gmem_invoer_ARREGION[3:0],m_axi_gmem_invoer_ARSIZE[2:0],m_axi_gmem_invoer_ARVALID,m_axi_gmem_invoer_AWADDR[63:0],m_axi_gmem_invoer_AWBURST[1:0],m_axi_gmem_invoer_AWCACHE[3:0],m_axi_gmem_invoer_AWID[0:0],m_axi_gmem_invoer_AWLEN[7:0],m_axi_gmem_invoer_AWLOCK[1:0],m_axi_gmem_invoer_AWPROT[2:0],m_axi_gmem_invoer_AWQOS[3:0],m_axi_gmem_invoer_AWREADY,m_axi_gmem_invoer_AWREGION[3:0],m_axi_gmem_invoer_AWSIZE[2:0],m_axi_gmem_invoer_AWVALID,m_axi_gmem_invoer_BID[0:0],m_axi_gmem_invoer_BREADY,m_axi_gmem_invoer_BRESP[1:0],m_axi_gmem_invoer_BVALID,m_axi_gmem_invoer_RDATA[31:0],m_axi_gmem_invoer_RID[0:0],m_axi_gmem_invoer_RLAST,m_axi_gmem_invoer_RREADY,m_axi_gmem_invoer_RRESP[1:0],m_axi_gmem_invoer_RVALID,m_axi_gmem_invoer_WDATA[31:0],m_axi_gmem_invoer_WID[0:0],m_axi_gmem_invoer_WLAST,m_axi_gmem_invoer_WREADY,m_axi_gmem_invoer_WSTRB[3:0],m_axi_gmem_invoer_WVALID,m_axi_gmem_uitvoer_ARADDR[63:0],m_axi_gmem_uitvoer_ARBURST[1:0],m_axi_gmem_uitvoer_ARCACHE[3:0],m_axi_gmem_uitvoer_ARID[0:0],m_axi_gmem_uitvoer_ARLEN[7:0],m_axi_gmem_uitvoer_ARLOCK[1:0],m_axi_gmem_uitvoer_ARPROT[2:0],m_axi_gmem_uitvoer_ARQOS[3:0],m_axi_gmem_uitvoer_ARREADY,m_axi_gmem_uitvoer_ARREGION[3:0],m_axi_gmem_uitvoer_ARSIZE[2:0],m_axi_gmem_uitvoer_ARVALID,m_axi_gmem_uitvoer_AWADDR[63:0],m_axi_gmem_uitvoer_AWBURST[1:0],m_axi_gmem_uitvoer_AWCACHE[3:0],m_axi_gmem_uitvoer_AWID[0:0],m_axi_gmem_uitvoer_AWLEN[7:0],m_axi_gmem_uitvoer_AWLOCK[1:0],m_axi_gmem_uitvoer_AWPROT[2:0],m_axi_gmem_uitvoer_AWQOS[3:0],m_axi_gmem_uitvoer_AWREADY,m_axi_gmem_uitvoer_AWREGION[3:0],m_axi_gmem_uitvoer_AWSIZE[2:0],m_axi_gmem_uitvoer_AWVALID,m_axi_gmem_uitvoer_BID[0:0],m_axi_gmem_uitvoer_BREADY,m_axi_gmem_uitvoer_BRESP[1:0],m_axi_gmem_uitvoer_BVALID,m_axi_gmem_uitvoer_RDATA[31:0],m_axi_gmem_uitvoer_RID[0:0],m_axi_gmem_uitvoer_RLAST,m_axi_gmem_uitvoer_RREADY,m_axi_gmem_uitvoer_RRESP[1:0],m_axi_gmem_uitvoer_RVALID,m_axi_gmem_uitvoer_WDATA[31:0],m_axi_gmem_uitvoer_WID[0:0],m_axi_gmem_uitvoer_WLAST,m_axi_gmem_uitvoer_WREADY,m_axi_gmem_uitvoer_WSTRB[3:0],m_axi_gmem_uitvoer_WVALID" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_vitis_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_vitis_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control ARREADY" *) output s_axi_vitis_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control ARVALID" *) input s_axi_vitis_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control AWADDR" *) input [5:0]s_axi_vitis_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control AWREADY" *) output s_axi_vitis_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control AWVALID" *) input s_axi_vitis_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control BREADY" *) input s_axi_vitis_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control BRESP" *) output [1:0]s_axi_vitis_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control BVALID" *) output s_axi_vitis_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control RDATA" *) output [31:0]s_axi_vitis_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control RREADY" *) input s_axi_vitis_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control RRESP" *) output [1:0]s_axi_vitis_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control RVALID" *) output s_axi_vitis_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control WDATA" *) input [31:0]s_axi_vitis_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control WREADY" *) output s_axi_vitis_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control WSTRB" *) input [3:0]s_axi_vitis_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control WVALID" *) input s_axi_vitis_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_vitis_control:m_axi_gmem_invoer:m_axi_gmem_uitvoer, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_invoer, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 64, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_gmem_invoer_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARBURST" *) output [1:0]m_axi_gmem_invoer_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARCACHE" *) output [3:0]m_axi_gmem_invoer_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARID" *) output [0:0]m_axi_gmem_invoer_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARLEN" *) output [7:0]m_axi_gmem_invoer_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARLOCK" *) output [1:0]m_axi_gmem_invoer_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARPROT" *) output [2:0]m_axi_gmem_invoer_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARQOS" *) output [3:0]m_axi_gmem_invoer_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARREADY" *) input m_axi_gmem_invoer_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARREGION" *) output [3:0]m_axi_gmem_invoer_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARSIZE" *) output [2:0]m_axi_gmem_invoer_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARVALID" *) output m_axi_gmem_invoer_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWADDR" *) output [63:0]m_axi_gmem_invoer_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWBURST" *) output [1:0]m_axi_gmem_invoer_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWCACHE" *) output [3:0]m_axi_gmem_invoer_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWID" *) output [0:0]m_axi_gmem_invoer_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWLEN" *) output [7:0]m_axi_gmem_invoer_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWLOCK" *) output [1:0]m_axi_gmem_invoer_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWPROT" *) output [2:0]m_axi_gmem_invoer_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWQOS" *) output [3:0]m_axi_gmem_invoer_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWREADY" *) input m_axi_gmem_invoer_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWREGION" *) output [3:0]m_axi_gmem_invoer_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWSIZE" *) output [2:0]m_axi_gmem_invoer_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWVALID" *) output m_axi_gmem_invoer_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer BID" *) input [0:0]m_axi_gmem_invoer_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer BREADY" *) output m_axi_gmem_invoer_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer BRESP" *) input [1:0]m_axi_gmem_invoer_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer BVALID" *) input m_axi_gmem_invoer_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RDATA" *) input [31:0]m_axi_gmem_invoer_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RID" *) input [0:0]m_axi_gmem_invoer_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RLAST" *) input m_axi_gmem_invoer_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RREADY" *) output m_axi_gmem_invoer_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RRESP" *) input [1:0]m_axi_gmem_invoer_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RVALID" *) input m_axi_gmem_invoer_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WDATA" *) output [31:0]m_axi_gmem_invoer_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WID" *) output [0:0]m_axi_gmem_invoer_WID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WLAST" *) output m_axi_gmem_invoer_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WREADY" *) input m_axi_gmem_invoer_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WSTRB" *) output [3:0]m_axi_gmem_invoer_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WVALID" *) output m_axi_gmem_invoer_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_uitvoer, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 64, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_gmem_uitvoer_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARBURST" *) output [1:0]m_axi_gmem_uitvoer_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARCACHE" *) output [3:0]m_axi_gmem_uitvoer_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARID" *) output [0:0]m_axi_gmem_uitvoer_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARLEN" *) output [7:0]m_axi_gmem_uitvoer_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARLOCK" *) output [1:0]m_axi_gmem_uitvoer_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARPROT" *) output [2:0]m_axi_gmem_uitvoer_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARQOS" *) output [3:0]m_axi_gmem_uitvoer_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARREADY" *) input m_axi_gmem_uitvoer_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARREGION" *) output [3:0]m_axi_gmem_uitvoer_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARSIZE" *) output [2:0]m_axi_gmem_uitvoer_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARVALID" *) output m_axi_gmem_uitvoer_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWADDR" *) output [63:0]m_axi_gmem_uitvoer_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWBURST" *) output [1:0]m_axi_gmem_uitvoer_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWCACHE" *) output [3:0]m_axi_gmem_uitvoer_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWID" *) output [0:0]m_axi_gmem_uitvoer_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWLEN" *) output [7:0]m_axi_gmem_uitvoer_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWLOCK" *) output [1:0]m_axi_gmem_uitvoer_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWPROT" *) output [2:0]m_axi_gmem_uitvoer_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWQOS" *) output [3:0]m_axi_gmem_uitvoer_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWREADY" *) input m_axi_gmem_uitvoer_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWREGION" *) output [3:0]m_axi_gmem_uitvoer_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWSIZE" *) output [2:0]m_axi_gmem_uitvoer_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWVALID" *) output m_axi_gmem_uitvoer_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer BID" *) input [0:0]m_axi_gmem_uitvoer_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer BREADY" *) output m_axi_gmem_uitvoer_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer BRESP" *) input [1:0]m_axi_gmem_uitvoer_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer BVALID" *) input m_axi_gmem_uitvoer_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RDATA" *) input [31:0]m_axi_gmem_uitvoer_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RID" *) input [0:0]m_axi_gmem_uitvoer_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RLAST" *) input m_axi_gmem_uitvoer_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RREADY" *) output m_axi_gmem_uitvoer_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RRESP" *) input [1:0]m_axi_gmem_uitvoer_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RVALID" *) input m_axi_gmem_uitvoer_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WDATA" *) output [31:0]m_axi_gmem_uitvoer_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WID" *) output [0:0]m_axi_gmem_uitvoer_WID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WLAST" *) output m_axi_gmem_uitvoer_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WREADY" *) input m_axi_gmem_uitvoer_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WSTRB" *) output [3:0]m_axi_gmem_uitvoer_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WVALID" *) output m_axi_gmem_uitvoer_WVALID;
endmodule
