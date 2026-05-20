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


// IP VLNV: xilinx.com:hls:vitis_convolution:1.0
// IP Revision: 2114617138

(* X_CORE_INFO = "vitis_convolution,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "design_1_vitis_convolution_0_0,vitis_convolution,{}" *)
(* CORE_GENERATION_INFO = "design_1_vitis_convolution_0_0,vitis_convolution,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=vitis_convolution,x_ipVersion=1.0,x_ipCoreRevision=2114617138,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=5,C_S_AXI_CONTROL_DATA_WIDTH=32,C_S_AXI_CONTROL_R_ADDR_WIDTH=6,C_S_AXI_CONTROL_R_DATA_WIDTH=32,C_M_AXI_GMEM_IN_ID_WIDTH=1,C_M_AXI_GMEM_IN_ADDR_WIDTH=64,C_M_AXI_GMEM_IN_DATA_WIDTH=32,C_M_AXI_GMEM_IN_AWUSER_WIDTH=1,C_M_AXI_GMEM_IN_ARUSER_WIDTH=1,C\
_M_AXI_GMEM_IN_WUSER_WIDTH=1,C_M_AXI_GMEM_IN_RUSER_WIDTH=1,C_M_AXI_GMEM_IN_BUSER_WIDTH=1,C_M_AXI_GMEM_IN_USER_VALUE=0x00000000,C_M_AXI_GMEM_IN_PROT_VALUE=000,C_M_AXI_GMEM_IN_CACHE_VALUE=0011,C_M_AXI_GMEM_OUT_ID_WIDTH=1,C_M_AXI_GMEM_OUT_ADDR_WIDTH=64,C_M_AXI_GMEM_OUT_DATA_WIDTH=32,C_M_AXI_GMEM_OUT_AWUSER_WIDTH=1,C_M_AXI_GMEM_OUT_ARUSER_WIDTH=1,C_M_AXI_GMEM_OUT_WUSER_WIDTH=1,C_M_AXI_GMEM_OUT_RUSER_WIDTH=1,C_M_AXI_GMEM_OUT_BUSER_WIDTH=1,C_M_AXI_GMEM_OUT_USER_VALUE=0x00000000,C_M_AXI_GMEM_OUT_PROT_V\
ALUE=000,C_M_AXI_GMEM_OUT_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_vitis_convolution_0_0 (
  s_axi_control_ARADDR,
  s_axi_control_ARREADY,
  s_axi_control_ARVALID,
  s_axi_control_AWADDR,
  s_axi_control_AWREADY,
  s_axi_control_AWVALID,
  s_axi_control_BREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_RDATA,
  s_axi_control_RREADY,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_WDATA,
  s_axi_control_WREADY,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_r_ARADDR,
  s_axi_control_r_ARREADY,
  s_axi_control_r_ARVALID,
  s_axi_control_r_AWADDR,
  s_axi_control_r_AWREADY,
  s_axi_control_r_AWVALID,
  s_axi_control_r_BREADY,
  s_axi_control_r_BRESP,
  s_axi_control_r_BVALID,
  s_axi_control_r_RDATA,
  s_axi_control_r_RREADY,
  s_axi_control_r_RRESP,
  s_axi_control_r_RVALID,
  s_axi_control_r_WDATA,
  s_axi_control_r_WREADY,
  s_axi_control_r_WSTRB,
  s_axi_control_r_WVALID,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_gmem_in_ARADDR,
  m_axi_gmem_in_ARBURST,
  m_axi_gmem_in_ARCACHE,
  m_axi_gmem_in_ARID,
  m_axi_gmem_in_ARLEN,
  m_axi_gmem_in_ARLOCK,
  m_axi_gmem_in_ARPROT,
  m_axi_gmem_in_ARQOS,
  m_axi_gmem_in_ARREADY,
  m_axi_gmem_in_ARREGION,
  m_axi_gmem_in_ARSIZE,
  m_axi_gmem_in_ARVALID,
  m_axi_gmem_in_AWADDR,
  m_axi_gmem_in_AWBURST,
  m_axi_gmem_in_AWCACHE,
  m_axi_gmem_in_AWID,
  m_axi_gmem_in_AWLEN,
  m_axi_gmem_in_AWLOCK,
  m_axi_gmem_in_AWPROT,
  m_axi_gmem_in_AWQOS,
  m_axi_gmem_in_AWREADY,
  m_axi_gmem_in_AWREGION,
  m_axi_gmem_in_AWSIZE,
  m_axi_gmem_in_AWVALID,
  m_axi_gmem_in_BID,
  m_axi_gmem_in_BREADY,
  m_axi_gmem_in_BRESP,
  m_axi_gmem_in_BVALID,
  m_axi_gmem_in_RDATA,
  m_axi_gmem_in_RID,
  m_axi_gmem_in_RLAST,
  m_axi_gmem_in_RREADY,
  m_axi_gmem_in_RRESP,
  m_axi_gmem_in_RVALID,
  m_axi_gmem_in_WDATA,
  m_axi_gmem_in_WID,
  m_axi_gmem_in_WLAST,
  m_axi_gmem_in_WREADY,
  m_axi_gmem_in_WSTRB,
  m_axi_gmem_in_WVALID,
  m_axi_gmem_out_ARADDR,
  m_axi_gmem_out_ARBURST,
  m_axi_gmem_out_ARCACHE,
  m_axi_gmem_out_ARID,
  m_axi_gmem_out_ARLEN,
  m_axi_gmem_out_ARLOCK,
  m_axi_gmem_out_ARPROT,
  m_axi_gmem_out_ARQOS,
  m_axi_gmem_out_ARREADY,
  m_axi_gmem_out_ARREGION,
  m_axi_gmem_out_ARSIZE,
  m_axi_gmem_out_ARVALID,
  m_axi_gmem_out_AWADDR,
  m_axi_gmem_out_AWBURST,
  m_axi_gmem_out_AWCACHE,
  m_axi_gmem_out_AWID,
  m_axi_gmem_out_AWLEN,
  m_axi_gmem_out_AWLOCK,
  m_axi_gmem_out_AWPROT,
  m_axi_gmem_out_AWQOS,
  m_axi_gmem_out_AWREADY,
  m_axi_gmem_out_AWREGION,
  m_axi_gmem_out_AWSIZE,
  m_axi_gmem_out_AWVALID,
  m_axi_gmem_out_BID,
  m_axi_gmem_out_BREADY,
  m_axi_gmem_out_BRESP,
  m_axi_gmem_out_BVALID,
  m_axi_gmem_out_RDATA,
  m_axi_gmem_out_RID,
  m_axi_gmem_out_RLAST,
  m_axi_gmem_out_RREADY,
  m_axi_gmem_out_RRESP,
  m_axi_gmem_out_RVALID,
  m_axi_gmem_out_WDATA,
  m_axi_gmem_out_WID,
  m_axi_gmem_out_WLAST,
  m_axi_gmem_out_WREADY,
  m_axi_gmem_out_WSTRB,
  m_axi_gmem_out_WVALID
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_T\
HREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [4 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [4 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r ARADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control_r, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ\
_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [5 : 0] s_axi_control_r_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r ARREADY" *)
output wire s_axi_control_r_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r ARVALID" *)
input wire s_axi_control_r_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r AWADDR" *)
input wire [5 : 0] s_axi_control_r_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r AWREADY" *)
output wire s_axi_control_r_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r AWVALID" *)
input wire s_axi_control_r_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r BREADY" *)
input wire s_axi_control_r_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r BRESP" *)
output wire [1 : 0] s_axi_control_r_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r BVALID" *)
output wire s_axi_control_r_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r RDATA" *)
output wire [31 : 0] s_axi_control_r_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r RREADY" *)
input wire s_axi_control_r_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r RRESP" *)
output wire [1 : 0] s_axi_control_r_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r RVALID" *)
output wire s_axi_control_r_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r WDATA" *)
input wire [31 : 0] s_axi_control_r_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r WREADY" *)
output wire s_axi_control_r_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r WSTRB" *)
input wire [3 : 0] s_axi_control_r_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r WVALID" *)
input wire s_axi_control_r_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:s_axi_control_r:m_axi_gmem_in:m_axi_gmem_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_in, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN \
design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_gmem_in_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARBURST" *)
output wire [1 : 0] m_axi_gmem_in_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARCACHE" *)
output wire [3 : 0] m_axi_gmem_in_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARID" *)
output wire [0 : 0] m_axi_gmem_in_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARLEN" *)
output wire [7 : 0] m_axi_gmem_in_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARLOCK" *)
output wire [1 : 0] m_axi_gmem_in_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARPROT" *)
output wire [2 : 0] m_axi_gmem_in_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARQOS" *)
output wire [3 : 0] m_axi_gmem_in_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARREADY" *)
input wire m_axi_gmem_in_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARREGION" *)
output wire [3 : 0] m_axi_gmem_in_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARSIZE" *)
output wire [2 : 0] m_axi_gmem_in_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARVALID" *)
output wire m_axi_gmem_in_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWADDR" *)
output wire [63 : 0] m_axi_gmem_in_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWBURST" *)
output wire [1 : 0] m_axi_gmem_in_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWCACHE" *)
output wire [3 : 0] m_axi_gmem_in_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWID" *)
output wire [0 : 0] m_axi_gmem_in_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWLEN" *)
output wire [7 : 0] m_axi_gmem_in_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWLOCK" *)
output wire [1 : 0] m_axi_gmem_in_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWPROT" *)
output wire [2 : 0] m_axi_gmem_in_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWQOS" *)
output wire [3 : 0] m_axi_gmem_in_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWREADY" *)
input wire m_axi_gmem_in_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWREGION" *)
output wire [3 : 0] m_axi_gmem_in_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWSIZE" *)
output wire [2 : 0] m_axi_gmem_in_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWVALID" *)
output wire m_axi_gmem_in_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in BID" *)
input wire [0 : 0] m_axi_gmem_in_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in BREADY" *)
output wire m_axi_gmem_in_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in BRESP" *)
input wire [1 : 0] m_axi_gmem_in_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in BVALID" *)
input wire m_axi_gmem_in_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RDATA" *)
input wire [31 : 0] m_axi_gmem_in_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RID" *)
input wire [0 : 0] m_axi_gmem_in_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RLAST" *)
input wire m_axi_gmem_in_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RREADY" *)
output wire m_axi_gmem_in_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RRESP" *)
input wire [1 : 0] m_axi_gmem_in_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RVALID" *)
input wire m_axi_gmem_in_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WDATA" *)
output wire [31 : 0] m_axi_gmem_in_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WID" *)
output wire [0 : 0] m_axi_gmem_in_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WLAST" *)
output wire m_axi_gmem_in_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WREADY" *)
input wire m_axi_gmem_in_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WSTRB" *)
output wire [3 : 0] m_axi_gmem_in_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WVALID" *)
output wire m_axi_gmem_in_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_out, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, ADDR_WIDTH 64, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAI\
N design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [63 : 0] m_axi_gmem_out_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARBURST" *)
output wire [1 : 0] m_axi_gmem_out_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARCACHE" *)
output wire [3 : 0] m_axi_gmem_out_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARID" *)
output wire [0 : 0] m_axi_gmem_out_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARLEN" *)
output wire [7 : 0] m_axi_gmem_out_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARLOCK" *)
output wire [1 : 0] m_axi_gmem_out_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARPROT" *)
output wire [2 : 0] m_axi_gmem_out_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARQOS" *)
output wire [3 : 0] m_axi_gmem_out_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARREADY" *)
input wire m_axi_gmem_out_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARREGION" *)
output wire [3 : 0] m_axi_gmem_out_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARSIZE" *)
output wire [2 : 0] m_axi_gmem_out_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out ARVALID" *)
output wire m_axi_gmem_out_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWADDR" *)
output wire [63 : 0] m_axi_gmem_out_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWBURST" *)
output wire [1 : 0] m_axi_gmem_out_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWCACHE" *)
output wire [3 : 0] m_axi_gmem_out_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWID" *)
output wire [0 : 0] m_axi_gmem_out_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWLEN" *)
output wire [7 : 0] m_axi_gmem_out_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWLOCK" *)
output wire [1 : 0] m_axi_gmem_out_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWPROT" *)
output wire [2 : 0] m_axi_gmem_out_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWQOS" *)
output wire [3 : 0] m_axi_gmem_out_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWREADY" *)
input wire m_axi_gmem_out_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWREGION" *)
output wire [3 : 0] m_axi_gmem_out_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWSIZE" *)
output wire [2 : 0] m_axi_gmem_out_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out AWVALID" *)
output wire m_axi_gmem_out_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out BID" *)
input wire [0 : 0] m_axi_gmem_out_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out BREADY" *)
output wire m_axi_gmem_out_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out BRESP" *)
input wire [1 : 0] m_axi_gmem_out_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out BVALID" *)
input wire m_axi_gmem_out_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out RDATA" *)
input wire [31 : 0] m_axi_gmem_out_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out RID" *)
input wire [0 : 0] m_axi_gmem_out_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out RLAST" *)
input wire m_axi_gmem_out_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out RREADY" *)
output wire m_axi_gmem_out_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out RRESP" *)
input wire [1 : 0] m_axi_gmem_out_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out RVALID" *)
input wire m_axi_gmem_out_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out WDATA" *)
output wire [31 : 0] m_axi_gmem_out_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out WID" *)
output wire [0 : 0] m_axi_gmem_out_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out WLAST" *)
output wire m_axi_gmem_out_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out WREADY" *)
input wire m_axi_gmem_out_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out WSTRB" *)
output wire [3 : 0] m_axi_gmem_out_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_out WVALID" *)
output wire m_axi_gmem_out_WVALID;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  vitis_convolution #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(5),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_S_AXI_CONTROL_R_ADDR_WIDTH(6),
    .C_S_AXI_CONTROL_R_DATA_WIDTH(32),
    .C_M_AXI_GMEM_IN_ID_WIDTH(1),
    .C_M_AXI_GMEM_IN_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_IN_DATA_WIDTH(32),
    .C_M_AXI_GMEM_IN_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_IN_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_IN_CACHE_VALUE(4'B0011),
    .C_M_AXI_GMEM_OUT_ID_WIDTH(1),
    .C_M_AXI_GMEM_OUT_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_OUT_DATA_WIDTH(32),
    .C_M_AXI_GMEM_OUT_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_OUT_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_OUT_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_OUT_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_OUT_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_OUT_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_OUT_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_OUT_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_r_ARADDR(s_axi_control_r_ARADDR),
    .s_axi_control_r_ARREADY(s_axi_control_r_ARREADY),
    .s_axi_control_r_ARVALID(s_axi_control_r_ARVALID),
    .s_axi_control_r_AWADDR(s_axi_control_r_AWADDR),
    .s_axi_control_r_AWREADY(s_axi_control_r_AWREADY),
    .s_axi_control_r_AWVALID(s_axi_control_r_AWVALID),
    .s_axi_control_r_BREADY(s_axi_control_r_BREADY),
    .s_axi_control_r_BRESP(s_axi_control_r_BRESP),
    .s_axi_control_r_BVALID(s_axi_control_r_BVALID),
    .s_axi_control_r_RDATA(s_axi_control_r_RDATA),
    .s_axi_control_r_RREADY(s_axi_control_r_RREADY),
    .s_axi_control_r_RRESP(s_axi_control_r_RRESP),
    .s_axi_control_r_RVALID(s_axi_control_r_RVALID),
    .s_axi_control_r_WDATA(s_axi_control_r_WDATA),
    .s_axi_control_r_WREADY(s_axi_control_r_WREADY),
    .s_axi_control_r_WSTRB(s_axi_control_r_WSTRB),
    .s_axi_control_r_WVALID(s_axi_control_r_WVALID),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_gmem_in_ARADDR(m_axi_gmem_in_ARADDR),
    .m_axi_gmem_in_ARBURST(m_axi_gmem_in_ARBURST),
    .m_axi_gmem_in_ARCACHE(m_axi_gmem_in_ARCACHE),
    .m_axi_gmem_in_ARID(m_axi_gmem_in_ARID),
    .m_axi_gmem_in_ARLEN(m_axi_gmem_in_ARLEN),
    .m_axi_gmem_in_ARLOCK(m_axi_gmem_in_ARLOCK),
    .m_axi_gmem_in_ARPROT(m_axi_gmem_in_ARPROT),
    .m_axi_gmem_in_ARQOS(m_axi_gmem_in_ARQOS),
    .m_axi_gmem_in_ARREADY(m_axi_gmem_in_ARREADY),
    .m_axi_gmem_in_ARREGION(m_axi_gmem_in_ARREGION),
    .m_axi_gmem_in_ARSIZE(m_axi_gmem_in_ARSIZE),
    .m_axi_gmem_in_ARUSER(),
    .m_axi_gmem_in_ARVALID(m_axi_gmem_in_ARVALID),
    .m_axi_gmem_in_AWADDR(m_axi_gmem_in_AWADDR),
    .m_axi_gmem_in_AWBURST(m_axi_gmem_in_AWBURST),
    .m_axi_gmem_in_AWCACHE(m_axi_gmem_in_AWCACHE),
    .m_axi_gmem_in_AWID(m_axi_gmem_in_AWID),
    .m_axi_gmem_in_AWLEN(m_axi_gmem_in_AWLEN),
    .m_axi_gmem_in_AWLOCK(m_axi_gmem_in_AWLOCK),
    .m_axi_gmem_in_AWPROT(m_axi_gmem_in_AWPROT),
    .m_axi_gmem_in_AWQOS(m_axi_gmem_in_AWQOS),
    .m_axi_gmem_in_AWREADY(m_axi_gmem_in_AWREADY),
    .m_axi_gmem_in_AWREGION(m_axi_gmem_in_AWREGION),
    .m_axi_gmem_in_AWSIZE(m_axi_gmem_in_AWSIZE),
    .m_axi_gmem_in_AWUSER(),
    .m_axi_gmem_in_AWVALID(m_axi_gmem_in_AWVALID),
    .m_axi_gmem_in_BID(m_axi_gmem_in_BID),
    .m_axi_gmem_in_BREADY(m_axi_gmem_in_BREADY),
    .m_axi_gmem_in_BRESP(m_axi_gmem_in_BRESP),
    .m_axi_gmem_in_BUSER(1'B0),
    .m_axi_gmem_in_BVALID(m_axi_gmem_in_BVALID),
    .m_axi_gmem_in_RDATA(m_axi_gmem_in_RDATA),
    .m_axi_gmem_in_RID(m_axi_gmem_in_RID),
    .m_axi_gmem_in_RLAST(m_axi_gmem_in_RLAST),
    .m_axi_gmem_in_RREADY(m_axi_gmem_in_RREADY),
    .m_axi_gmem_in_RRESP(m_axi_gmem_in_RRESP),
    .m_axi_gmem_in_RUSER(1'B0),
    .m_axi_gmem_in_RVALID(m_axi_gmem_in_RVALID),
    .m_axi_gmem_in_WDATA(m_axi_gmem_in_WDATA),
    .m_axi_gmem_in_WID(m_axi_gmem_in_WID),
    .m_axi_gmem_in_WLAST(m_axi_gmem_in_WLAST),
    .m_axi_gmem_in_WREADY(m_axi_gmem_in_WREADY),
    .m_axi_gmem_in_WSTRB(m_axi_gmem_in_WSTRB),
    .m_axi_gmem_in_WUSER(),
    .m_axi_gmem_in_WVALID(m_axi_gmem_in_WVALID),
    .m_axi_gmem_out_ARADDR(m_axi_gmem_out_ARADDR),
    .m_axi_gmem_out_ARBURST(m_axi_gmem_out_ARBURST),
    .m_axi_gmem_out_ARCACHE(m_axi_gmem_out_ARCACHE),
    .m_axi_gmem_out_ARID(m_axi_gmem_out_ARID),
    .m_axi_gmem_out_ARLEN(m_axi_gmem_out_ARLEN),
    .m_axi_gmem_out_ARLOCK(m_axi_gmem_out_ARLOCK),
    .m_axi_gmem_out_ARPROT(m_axi_gmem_out_ARPROT),
    .m_axi_gmem_out_ARQOS(m_axi_gmem_out_ARQOS),
    .m_axi_gmem_out_ARREADY(m_axi_gmem_out_ARREADY),
    .m_axi_gmem_out_ARREGION(m_axi_gmem_out_ARREGION),
    .m_axi_gmem_out_ARSIZE(m_axi_gmem_out_ARSIZE),
    .m_axi_gmem_out_ARUSER(),
    .m_axi_gmem_out_ARVALID(m_axi_gmem_out_ARVALID),
    .m_axi_gmem_out_AWADDR(m_axi_gmem_out_AWADDR),
    .m_axi_gmem_out_AWBURST(m_axi_gmem_out_AWBURST),
    .m_axi_gmem_out_AWCACHE(m_axi_gmem_out_AWCACHE),
    .m_axi_gmem_out_AWID(m_axi_gmem_out_AWID),
    .m_axi_gmem_out_AWLEN(m_axi_gmem_out_AWLEN),
    .m_axi_gmem_out_AWLOCK(m_axi_gmem_out_AWLOCK),
    .m_axi_gmem_out_AWPROT(m_axi_gmem_out_AWPROT),
    .m_axi_gmem_out_AWQOS(m_axi_gmem_out_AWQOS),
    .m_axi_gmem_out_AWREADY(m_axi_gmem_out_AWREADY),
    .m_axi_gmem_out_AWREGION(m_axi_gmem_out_AWREGION),
    .m_axi_gmem_out_AWSIZE(m_axi_gmem_out_AWSIZE),
    .m_axi_gmem_out_AWUSER(),
    .m_axi_gmem_out_AWVALID(m_axi_gmem_out_AWVALID),
    .m_axi_gmem_out_BID(m_axi_gmem_out_BID),
    .m_axi_gmem_out_BREADY(m_axi_gmem_out_BREADY),
    .m_axi_gmem_out_BRESP(m_axi_gmem_out_BRESP),
    .m_axi_gmem_out_BUSER(1'B0),
    .m_axi_gmem_out_BVALID(m_axi_gmem_out_BVALID),
    .m_axi_gmem_out_RDATA(m_axi_gmem_out_RDATA),
    .m_axi_gmem_out_RID(m_axi_gmem_out_RID),
    .m_axi_gmem_out_RLAST(m_axi_gmem_out_RLAST),
    .m_axi_gmem_out_RREADY(m_axi_gmem_out_RREADY),
    .m_axi_gmem_out_RRESP(m_axi_gmem_out_RRESP),
    .m_axi_gmem_out_RUSER(1'B0),
    .m_axi_gmem_out_RVALID(m_axi_gmem_out_RVALID),
    .m_axi_gmem_out_WDATA(m_axi_gmem_out_WDATA),
    .m_axi_gmem_out_WID(m_axi_gmem_out_WID),
    .m_axi_gmem_out_WLAST(m_axi_gmem_out_WLAST),
    .m_axi_gmem_out_WREADY(m_axi_gmem_out_WREADY),
    .m_axi_gmem_out_WSTRB(m_axi_gmem_out_WSTRB),
    .m_axi_gmem_out_WUSER(),
    .m_axi_gmem_out_WVALID(m_axi_gmem_out_WVALID)
  );
endmodule
