// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:filter_afbeelding:1.0
// IP Revision: 2114620769

(* X_CORE_INFO = "filter_afbeelding,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "design_1_filter_afbeelding_0_0,filter_afbeelding,{}" *)
(* CORE_GENERATION_INFO = "design_1_filter_afbeelding_0_0,filter_afbeelding,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=filter_afbeelding,x_ipVersion=1.0,x_ipCoreRevision=2114620769,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_VITIS_CONTROL_ADDR_WIDTH=6,C_S_AXI_VITIS_CONTROL_DATA_WIDTH=32,C_M_AXI_GMEM_INVOER_ID_WIDTH=1,C_M_AXI_GMEM_INVOER_ADDR_WIDTH=64,C_M_AXI_GMEM_INVOER_DATA_WIDTH=32,C_M_AXI_GMEM_INVOER_AWUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_ARUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_WUSER_WIDTH=\
1,C_M_AXI_GMEM_INVOER_RUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_BUSER_WIDTH=1,C_M_AXI_GMEM_INVOER_USER_VALUE=0x00000000,C_M_AXI_GMEM_INVOER_PROT_VALUE=000,C_M_AXI_GMEM_INVOER_CACHE_VALUE=0011,C_M_AXI_GMEM_UITVOER_ID_WIDTH=1,C_M_AXI_GMEM_UITVOER_ADDR_WIDTH=64,C_M_AXI_GMEM_UITVOER_DATA_WIDTH=32,C_M_AXI_GMEM_UITVOER_AWUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_ARUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_WUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_RUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_BUSER_WIDTH=1,C_M_AXI_GMEM_UITVOER_USER_VALUE=0x000\
00000,C_M_AXI_GMEM_UITVOER_PROT_VALUE=000,C_M_AXI_GMEM_UITVOER_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_filter_afbeelding_0_0 (
  s_axi_vitis_control_ARADDR,
  s_axi_vitis_control_ARREADY,
  s_axi_vitis_control_ARVALID,
  s_axi_vitis_control_AWADDR,
  s_axi_vitis_control_AWREADY,
  s_axi_vitis_control_AWVALID,
  s_axi_vitis_control_BREADY,
  s_axi_vitis_control_BRESP,
  s_axi_vitis_control_BVALID,
  s_axi_vitis_control_RDATA,
  s_axi_vitis_control_RREADY,
  s_axi_vitis_control_RRESP,
  s_axi_vitis_control_RVALID,
  s_axi_vitis_control_WDATA,
  s_axi_vitis_control_WREADY,
  s_axi_vitis_control_WSTRB,
  s_axi_vitis_control_WVALID,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_gmem_invoer_ARADDR,
  m_axi_gmem_invoer_ARBURST,
  m_axi_gmem_invoer_ARCACHE,
  m_axi_gmem_invoer_ARID,
  m_axi_gmem_invoer_ARLEN,
  m_axi_gmem_invoer_ARLOCK,
  m_axi_gmem_invoer_ARPROT,
  m_axi_gmem_invoer_ARQOS,
  m_axi_gmem_invoer_ARREADY,
  m_axi_gmem_invoer_ARREGION,
  m_axi_gmem_invoer_ARSIZE,
  m_axi_gmem_invoer_ARVALID,
  m_axi_gmem_invoer_AWADDR,
  m_axi_gmem_invoer_AWBURST,
  m_axi_gmem_invoer_AWCACHE,
  m_axi_gmem_invoer_AWID,
  m_axi_gmem_invoer_AWLEN,
  m_axi_gmem_invoer_AWLOCK,
  m_axi_gmem_invoer_AWPROT,
  m_axi_gmem_invoer_AWQOS,
  m_axi_gmem_invoer_AWREADY,
  m_axi_gmem_invoer_AWREGION,
  m_axi_gmem_invoer_AWSIZE,
  m_axi_gmem_invoer_AWVALID,
  m_axi_gmem_invoer_BID,
  m_axi_gmem_invoer_BREADY,
  m_axi_gmem_invoer_BRESP,
  m_axi_gmem_invoer_BVALID,
  m_axi_gmem_invoer_RDATA,
  m_axi_gmem_invoer_RID,
  m_axi_gmem_invoer_RLAST,
  m_axi_gmem_invoer_RREADY,
  m_axi_gmem_invoer_RRESP,
  m_axi_gmem_invoer_RVALID,
  m_axi_gmem_invoer_WDATA,
  m_axi_gmem_invoer_WID,
  m_axi_gmem_invoer_WLAST,
  m_axi_gmem_invoer_WREADY,
  m_axi_gmem_invoer_WSTRB,
  m_axi_gmem_invoer_WVALID,
  m_axi_gmem_uitvoer_ARADDR,
  m_axi_gmem_uitvoer_ARBURST,
  m_axi_gmem_uitvoer_ARCACHE,
  m_axi_gmem_uitvoer_ARID,
  m_axi_gmem_uitvoer_ARLEN,
  m_axi_gmem_uitvoer_ARLOCK,
  m_axi_gmem_uitvoer_ARPROT,
  m_axi_gmem_uitvoer_ARQOS,
  m_axi_gmem_uitvoer_ARREADY,
  m_axi_gmem_uitvoer_ARREGION,
  m_axi_gmem_uitvoer_ARSIZE,
  m_axi_gmem_uitvoer_ARVALID,
  m_axi_gmem_uitvoer_AWADDR,
  m_axi_gmem_uitvoer_AWBURST,
  m_axi_gmem_uitvoer_AWCACHE,
  m_axi_gmem_uitvoer_AWID,
  m_axi_gmem_uitvoer_AWLEN,
  m_axi_gmem_uitvoer_AWLOCK,
  m_axi_gmem_uitvoer_AWPROT,
  m_axi_gmem_uitvoer_AWQOS,
  m_axi_gmem_uitvoer_AWREADY,
  m_axi_gmem_uitvoer_AWREGION,
  m_axi_gmem_uitvoer_AWSIZE,
  m_axi_gmem_uitvoer_AWVALID,
  m_axi_gmem_uitvoer_BID,
  m_axi_gmem_uitvoer_BREADY,
  m_axi_gmem_uitvoer_BRESP,
  m_axi_gmem_uitvoer_BVALID,
  m_axi_gmem_uitvoer_RDATA,
  m_axi_gmem_uitvoer_RID,
  m_axi_gmem_uitvoer_RLAST,
  m_axi_gmem_uitvoer_RREADY,
  m_axi_gmem_uitvoer_RRESP,
  m_axi_gmem_uitvoer_RVALID,
  m_axi_gmem_uitvoer_WDATA,
  m_axi_gmem_uitvoer_WID,
  m_axi_gmem_uitvoer_WLAST,
  m_axi_gmem_uitvoer_WREADY,
  m_axi_gmem_uitvoer_WSTRB,
  m_axi_gmem_uitvoer_WVALID
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control ARADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_vitis_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_\
READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [5 : 0] s_axi_vitis_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control ARREADY" *)
output wire s_axi_vitis_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control ARVALID" *)
input wire s_axi_vitis_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control AWADDR" *)
input wire [5 : 0] s_axi_vitis_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control AWREADY" *)
output wire s_axi_vitis_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control AWVALID" *)
input wire s_axi_vitis_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control BREADY" *)
input wire s_axi_vitis_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control BRESP" *)
output wire [1 : 0] s_axi_vitis_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control BVALID" *)
output wire s_axi_vitis_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control RDATA" *)
output wire [31 : 0] s_axi_vitis_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control RREADY" *)
input wire s_axi_vitis_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control RRESP" *)
output wire [1 : 0] s_axi_vitis_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control RVALID" *)
output wire s_axi_vitis_control_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control WDATA" *)
input wire [31 : 0] s_axi_vitis_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control WREADY" *)
output wire s_axi_vitis_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control WSTRB" *)
input wire [3 : 0] s_axi_vitis_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_vitis_control WVALID" *)
input wire s_axi_vitis_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_vitis_control:m_axi_gmem_invoer:m_axi_gmem_uitvoer, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_invoer, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOM\
AIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_gmem_invoer_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARBURST" *)
output wire [1 : 0] m_axi_gmem_invoer_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARCACHE" *)
output wire [3 : 0] m_axi_gmem_invoer_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARID" *)
output wire [0 : 0] m_axi_gmem_invoer_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARLEN" *)
output wire [7 : 0] m_axi_gmem_invoer_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARLOCK" *)
output wire [1 : 0] m_axi_gmem_invoer_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARPROT" *)
output wire [2 : 0] m_axi_gmem_invoer_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARQOS" *)
output wire [3 : 0] m_axi_gmem_invoer_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARREADY" *)
input wire m_axi_gmem_invoer_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARREGION" *)
output wire [3 : 0] m_axi_gmem_invoer_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARSIZE" *)
output wire [2 : 0] m_axi_gmem_invoer_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer ARVALID" *)
output wire m_axi_gmem_invoer_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWADDR" *)
output wire [63 : 0] m_axi_gmem_invoer_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWBURST" *)
output wire [1 : 0] m_axi_gmem_invoer_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWCACHE" *)
output wire [3 : 0] m_axi_gmem_invoer_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWID" *)
output wire [0 : 0] m_axi_gmem_invoer_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWLEN" *)
output wire [7 : 0] m_axi_gmem_invoer_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWLOCK" *)
output wire [1 : 0] m_axi_gmem_invoer_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWPROT" *)
output wire [2 : 0] m_axi_gmem_invoer_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWQOS" *)
output wire [3 : 0] m_axi_gmem_invoer_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWREADY" *)
input wire m_axi_gmem_invoer_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWREGION" *)
output wire [3 : 0] m_axi_gmem_invoer_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWSIZE" *)
output wire [2 : 0] m_axi_gmem_invoer_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer AWVALID" *)
output wire m_axi_gmem_invoer_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer BID" *)
input wire [0 : 0] m_axi_gmem_invoer_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer BREADY" *)
output wire m_axi_gmem_invoer_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer BRESP" *)
input wire [1 : 0] m_axi_gmem_invoer_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer BVALID" *)
input wire m_axi_gmem_invoer_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RDATA" *)
input wire [31 : 0] m_axi_gmem_invoer_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RID" *)
input wire [0 : 0] m_axi_gmem_invoer_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RLAST" *)
input wire m_axi_gmem_invoer_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RREADY" *)
output wire m_axi_gmem_invoer_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RRESP" *)
input wire [1 : 0] m_axi_gmem_invoer_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer RVALID" *)
input wire m_axi_gmem_invoer_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WDATA" *)
output wire [31 : 0] m_axi_gmem_invoer_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WID" *)
output wire [0 : 0] m_axi_gmem_invoer_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WLAST" *)
output wire m_axi_gmem_invoer_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WREADY" *)
input wire m_axi_gmem_invoer_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WSTRB" *)
output wire [3 : 0] m_axi_gmem_invoer_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_invoer WVALID" *)
output wire m_axi_gmem_invoer_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_uitvoer, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_D\
OMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_gmem_uitvoer_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARBURST" *)
output wire [1 : 0] m_axi_gmem_uitvoer_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARCACHE" *)
output wire [3 : 0] m_axi_gmem_uitvoer_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARID" *)
output wire [0 : 0] m_axi_gmem_uitvoer_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARLEN" *)
output wire [7 : 0] m_axi_gmem_uitvoer_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARLOCK" *)
output wire [1 : 0] m_axi_gmem_uitvoer_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARPROT" *)
output wire [2 : 0] m_axi_gmem_uitvoer_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARQOS" *)
output wire [3 : 0] m_axi_gmem_uitvoer_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARREADY" *)
input wire m_axi_gmem_uitvoer_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARREGION" *)
output wire [3 : 0] m_axi_gmem_uitvoer_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARSIZE" *)
output wire [2 : 0] m_axi_gmem_uitvoer_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer ARVALID" *)
output wire m_axi_gmem_uitvoer_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWADDR" *)
output wire [63 : 0] m_axi_gmem_uitvoer_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWBURST" *)
output wire [1 : 0] m_axi_gmem_uitvoer_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWCACHE" *)
output wire [3 : 0] m_axi_gmem_uitvoer_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWID" *)
output wire [0 : 0] m_axi_gmem_uitvoer_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWLEN" *)
output wire [7 : 0] m_axi_gmem_uitvoer_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWLOCK" *)
output wire [1 : 0] m_axi_gmem_uitvoer_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWPROT" *)
output wire [2 : 0] m_axi_gmem_uitvoer_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWQOS" *)
output wire [3 : 0] m_axi_gmem_uitvoer_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWREADY" *)
input wire m_axi_gmem_uitvoer_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWREGION" *)
output wire [3 : 0] m_axi_gmem_uitvoer_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWSIZE" *)
output wire [2 : 0] m_axi_gmem_uitvoer_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer AWVALID" *)
output wire m_axi_gmem_uitvoer_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer BID" *)
input wire [0 : 0] m_axi_gmem_uitvoer_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer BREADY" *)
output wire m_axi_gmem_uitvoer_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer BRESP" *)
input wire [1 : 0] m_axi_gmem_uitvoer_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer BVALID" *)
input wire m_axi_gmem_uitvoer_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RDATA" *)
input wire [31 : 0] m_axi_gmem_uitvoer_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RID" *)
input wire [0 : 0] m_axi_gmem_uitvoer_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RLAST" *)
input wire m_axi_gmem_uitvoer_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RREADY" *)
output wire m_axi_gmem_uitvoer_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RRESP" *)
input wire [1 : 0] m_axi_gmem_uitvoer_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer RVALID" *)
input wire m_axi_gmem_uitvoer_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WDATA" *)
output wire [31 : 0] m_axi_gmem_uitvoer_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WID" *)
output wire [0 : 0] m_axi_gmem_uitvoer_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WLAST" *)
output wire m_axi_gmem_uitvoer_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WREADY" *)
input wire m_axi_gmem_uitvoer_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WSTRB" *)
output wire [3 : 0] m_axi_gmem_uitvoer_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_uitvoer WVALID" *)
output wire m_axi_gmem_uitvoer_WVALID;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  filter_afbeelding #(
    .C_S_AXI_VITIS_CONTROL_ADDR_WIDTH(6),
    .C_S_AXI_VITIS_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_GMEM_INVOER_ID_WIDTH(1),
    .C_M_AXI_GMEM_INVOER_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_INVOER_DATA_WIDTH(32),
    .C_M_AXI_GMEM_INVOER_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_INVOER_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_INVOER_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_INVOER_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_INVOER_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_INVOER_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_INVOER_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_INVOER_CACHE_VALUE(4'B0011),
    .C_M_AXI_GMEM_UITVOER_ID_WIDTH(1),
    .C_M_AXI_GMEM_UITVOER_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_UITVOER_DATA_WIDTH(32),
    .C_M_AXI_GMEM_UITVOER_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_UITVOER_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_UITVOER_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_UITVOER_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_UITVOER_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_UITVOER_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_UITVOER_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_UITVOER_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_vitis_control_ARADDR(s_axi_vitis_control_ARADDR),
    .s_axi_vitis_control_ARREADY(s_axi_vitis_control_ARREADY),
    .s_axi_vitis_control_ARVALID(s_axi_vitis_control_ARVALID),
    .s_axi_vitis_control_AWADDR(s_axi_vitis_control_AWADDR),
    .s_axi_vitis_control_AWREADY(s_axi_vitis_control_AWREADY),
    .s_axi_vitis_control_AWVALID(s_axi_vitis_control_AWVALID),
    .s_axi_vitis_control_BREADY(s_axi_vitis_control_BREADY),
    .s_axi_vitis_control_BRESP(s_axi_vitis_control_BRESP),
    .s_axi_vitis_control_BVALID(s_axi_vitis_control_BVALID),
    .s_axi_vitis_control_RDATA(s_axi_vitis_control_RDATA),
    .s_axi_vitis_control_RREADY(s_axi_vitis_control_RREADY),
    .s_axi_vitis_control_RRESP(s_axi_vitis_control_RRESP),
    .s_axi_vitis_control_RVALID(s_axi_vitis_control_RVALID),
    .s_axi_vitis_control_WDATA(s_axi_vitis_control_WDATA),
    .s_axi_vitis_control_WREADY(s_axi_vitis_control_WREADY),
    .s_axi_vitis_control_WSTRB(s_axi_vitis_control_WSTRB),
    .s_axi_vitis_control_WVALID(s_axi_vitis_control_WVALID),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_gmem_invoer_ARADDR(m_axi_gmem_invoer_ARADDR),
    .m_axi_gmem_invoer_ARBURST(m_axi_gmem_invoer_ARBURST),
    .m_axi_gmem_invoer_ARCACHE(m_axi_gmem_invoer_ARCACHE),
    .m_axi_gmem_invoer_ARID(m_axi_gmem_invoer_ARID),
    .m_axi_gmem_invoer_ARLEN(m_axi_gmem_invoer_ARLEN),
    .m_axi_gmem_invoer_ARLOCK(m_axi_gmem_invoer_ARLOCK),
    .m_axi_gmem_invoer_ARPROT(m_axi_gmem_invoer_ARPROT),
    .m_axi_gmem_invoer_ARQOS(m_axi_gmem_invoer_ARQOS),
    .m_axi_gmem_invoer_ARREADY(m_axi_gmem_invoer_ARREADY),
    .m_axi_gmem_invoer_ARREGION(m_axi_gmem_invoer_ARREGION),
    .m_axi_gmem_invoer_ARSIZE(m_axi_gmem_invoer_ARSIZE),
    .m_axi_gmem_invoer_ARUSER(),
    .m_axi_gmem_invoer_ARVALID(m_axi_gmem_invoer_ARVALID),
    .m_axi_gmem_invoer_AWADDR(m_axi_gmem_invoer_AWADDR),
    .m_axi_gmem_invoer_AWBURST(m_axi_gmem_invoer_AWBURST),
    .m_axi_gmem_invoer_AWCACHE(m_axi_gmem_invoer_AWCACHE),
    .m_axi_gmem_invoer_AWID(m_axi_gmem_invoer_AWID),
    .m_axi_gmem_invoer_AWLEN(m_axi_gmem_invoer_AWLEN),
    .m_axi_gmem_invoer_AWLOCK(m_axi_gmem_invoer_AWLOCK),
    .m_axi_gmem_invoer_AWPROT(m_axi_gmem_invoer_AWPROT),
    .m_axi_gmem_invoer_AWQOS(m_axi_gmem_invoer_AWQOS),
    .m_axi_gmem_invoer_AWREADY(m_axi_gmem_invoer_AWREADY),
    .m_axi_gmem_invoer_AWREGION(m_axi_gmem_invoer_AWREGION),
    .m_axi_gmem_invoer_AWSIZE(m_axi_gmem_invoer_AWSIZE),
    .m_axi_gmem_invoer_AWUSER(),
    .m_axi_gmem_invoer_AWVALID(m_axi_gmem_invoer_AWVALID),
    .m_axi_gmem_invoer_BID(m_axi_gmem_invoer_BID),
    .m_axi_gmem_invoer_BREADY(m_axi_gmem_invoer_BREADY),
    .m_axi_gmem_invoer_BRESP(m_axi_gmem_invoer_BRESP),
    .m_axi_gmem_invoer_BUSER(1'B0),
    .m_axi_gmem_invoer_BVALID(m_axi_gmem_invoer_BVALID),
    .m_axi_gmem_invoer_RDATA(m_axi_gmem_invoer_RDATA),
    .m_axi_gmem_invoer_RID(m_axi_gmem_invoer_RID),
    .m_axi_gmem_invoer_RLAST(m_axi_gmem_invoer_RLAST),
    .m_axi_gmem_invoer_RREADY(m_axi_gmem_invoer_RREADY),
    .m_axi_gmem_invoer_RRESP(m_axi_gmem_invoer_RRESP),
    .m_axi_gmem_invoer_RUSER(1'B0),
    .m_axi_gmem_invoer_RVALID(m_axi_gmem_invoer_RVALID),
    .m_axi_gmem_invoer_WDATA(m_axi_gmem_invoer_WDATA),
    .m_axi_gmem_invoer_WID(m_axi_gmem_invoer_WID),
    .m_axi_gmem_invoer_WLAST(m_axi_gmem_invoer_WLAST),
    .m_axi_gmem_invoer_WREADY(m_axi_gmem_invoer_WREADY),
    .m_axi_gmem_invoer_WSTRB(m_axi_gmem_invoer_WSTRB),
    .m_axi_gmem_invoer_WUSER(),
    .m_axi_gmem_invoer_WVALID(m_axi_gmem_invoer_WVALID),
    .m_axi_gmem_uitvoer_ARADDR(m_axi_gmem_uitvoer_ARADDR),
    .m_axi_gmem_uitvoer_ARBURST(m_axi_gmem_uitvoer_ARBURST),
    .m_axi_gmem_uitvoer_ARCACHE(m_axi_gmem_uitvoer_ARCACHE),
    .m_axi_gmem_uitvoer_ARID(m_axi_gmem_uitvoer_ARID),
    .m_axi_gmem_uitvoer_ARLEN(m_axi_gmem_uitvoer_ARLEN),
    .m_axi_gmem_uitvoer_ARLOCK(m_axi_gmem_uitvoer_ARLOCK),
    .m_axi_gmem_uitvoer_ARPROT(m_axi_gmem_uitvoer_ARPROT),
    .m_axi_gmem_uitvoer_ARQOS(m_axi_gmem_uitvoer_ARQOS),
    .m_axi_gmem_uitvoer_ARREADY(m_axi_gmem_uitvoer_ARREADY),
    .m_axi_gmem_uitvoer_ARREGION(m_axi_gmem_uitvoer_ARREGION),
    .m_axi_gmem_uitvoer_ARSIZE(m_axi_gmem_uitvoer_ARSIZE),
    .m_axi_gmem_uitvoer_ARUSER(),
    .m_axi_gmem_uitvoer_ARVALID(m_axi_gmem_uitvoer_ARVALID),
    .m_axi_gmem_uitvoer_AWADDR(m_axi_gmem_uitvoer_AWADDR),
    .m_axi_gmem_uitvoer_AWBURST(m_axi_gmem_uitvoer_AWBURST),
    .m_axi_gmem_uitvoer_AWCACHE(m_axi_gmem_uitvoer_AWCACHE),
    .m_axi_gmem_uitvoer_AWID(m_axi_gmem_uitvoer_AWID),
    .m_axi_gmem_uitvoer_AWLEN(m_axi_gmem_uitvoer_AWLEN),
    .m_axi_gmem_uitvoer_AWLOCK(m_axi_gmem_uitvoer_AWLOCK),
    .m_axi_gmem_uitvoer_AWPROT(m_axi_gmem_uitvoer_AWPROT),
    .m_axi_gmem_uitvoer_AWQOS(m_axi_gmem_uitvoer_AWQOS),
    .m_axi_gmem_uitvoer_AWREADY(m_axi_gmem_uitvoer_AWREADY),
    .m_axi_gmem_uitvoer_AWREGION(m_axi_gmem_uitvoer_AWREGION),
    .m_axi_gmem_uitvoer_AWSIZE(m_axi_gmem_uitvoer_AWSIZE),
    .m_axi_gmem_uitvoer_AWUSER(),
    .m_axi_gmem_uitvoer_AWVALID(m_axi_gmem_uitvoer_AWVALID),
    .m_axi_gmem_uitvoer_BID(m_axi_gmem_uitvoer_BID),
    .m_axi_gmem_uitvoer_BREADY(m_axi_gmem_uitvoer_BREADY),
    .m_axi_gmem_uitvoer_BRESP(m_axi_gmem_uitvoer_BRESP),
    .m_axi_gmem_uitvoer_BUSER(1'B0),
    .m_axi_gmem_uitvoer_BVALID(m_axi_gmem_uitvoer_BVALID),
    .m_axi_gmem_uitvoer_RDATA(m_axi_gmem_uitvoer_RDATA),
    .m_axi_gmem_uitvoer_RID(m_axi_gmem_uitvoer_RID),
    .m_axi_gmem_uitvoer_RLAST(m_axi_gmem_uitvoer_RLAST),
    .m_axi_gmem_uitvoer_RREADY(m_axi_gmem_uitvoer_RREADY),
    .m_axi_gmem_uitvoer_RRESP(m_axi_gmem_uitvoer_RRESP),
    .m_axi_gmem_uitvoer_RUSER(1'B0),
    .m_axi_gmem_uitvoer_RVALID(m_axi_gmem_uitvoer_RVALID),
    .m_axi_gmem_uitvoer_WDATA(m_axi_gmem_uitvoer_WDATA),
    .m_axi_gmem_uitvoer_WID(m_axi_gmem_uitvoer_WID),
    .m_axi_gmem_uitvoer_WLAST(m_axi_gmem_uitvoer_WLAST),
    .m_axi_gmem_uitvoer_WREADY(m_axi_gmem_uitvoer_WREADY),
    .m_axi_gmem_uitvoer_WSTRB(m_axi_gmem_uitvoer_WSTRB),
    .m_axi_gmem_uitvoer_WUSER(),
    .m_axi_gmem_uitvoer_WVALID(m_axi_gmem_uitvoer_WVALID)
  );
endmodule
