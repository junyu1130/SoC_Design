//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Mon Oct 15 19:22:25 2018
//Host        : rhel6x64-001-z009.vlsi.zju.edu.cn running 64-bit CentOS release 6.10 (Final)
//Command     : generate_target CK803S_axi_wrap1.bd
//Design      : CK803S_axi_wrap1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "CK803S_axi_wrap1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CK803S_axi_wrap1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "CK803S_axi_wrap1.hwdef" *) 
module CK803S_axi_wrap1
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    cpu_aclk,
    cpu_aresetn,
    csky_jtag_tck,
    csky_jtag_tdi,
    csky_jtag_tdo,
    csky_jtag_tms,
    csky_jtag_trst);
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input cpu_aclk;
  input cpu_aresetn;
  input csky_jtag_tck;
  input csky_jtag_tdi;
  output csky_jtag_tdo;
  inout csky_jtag_tms;
  input csky_jtag_trst;

  wire [31:0]ahblite_axi_bridge_0_M_AXI_ARADDR;
  wire [1:0]ahblite_axi_bridge_0_M_AXI_ARBURST;
  wire [3:0]ahblite_axi_bridge_0_M_AXI_ARCACHE;
  wire [7:0]ahblite_axi_bridge_0_M_AXI_ARLEN;
  wire ahblite_axi_bridge_0_M_AXI_ARLOCK;
  wire [2:0]ahblite_axi_bridge_0_M_AXI_ARPROT;
  wire ahblite_axi_bridge_0_M_AXI_ARREADY;
  wire [2:0]ahblite_axi_bridge_0_M_AXI_ARSIZE;
  wire ahblite_axi_bridge_0_M_AXI_ARVALID;
  wire [31:0]ahblite_axi_bridge_0_M_AXI_AWADDR;
  wire [1:0]ahblite_axi_bridge_0_M_AXI_AWBURST;
  wire [3:0]ahblite_axi_bridge_0_M_AXI_AWCACHE;
  wire [7:0]ahblite_axi_bridge_0_M_AXI_AWLEN;
  wire ahblite_axi_bridge_0_M_AXI_AWLOCK;
  wire [2:0]ahblite_axi_bridge_0_M_AXI_AWPROT;
  wire ahblite_axi_bridge_0_M_AXI_AWREADY;
  wire [2:0]ahblite_axi_bridge_0_M_AXI_AWSIZE;
  wire ahblite_axi_bridge_0_M_AXI_AWVALID;
  wire ahblite_axi_bridge_0_M_AXI_BREADY;
  wire [1:0]ahblite_axi_bridge_0_M_AXI_BRESP;
  wire ahblite_axi_bridge_0_M_AXI_BVALID;
  wire [31:0]ahblite_axi_bridge_0_M_AXI_RDATA;
  wire ahblite_axi_bridge_0_M_AXI_RLAST;
  wire ahblite_axi_bridge_0_M_AXI_RREADY;
  wire [1:0]ahblite_axi_bridge_0_M_AXI_RRESP;
  wire ahblite_axi_bridge_0_M_AXI_RVALID;
  wire [31:0]ahblite_axi_bridge_0_M_AXI_WDATA;
  wire ahblite_axi_bridge_0_M_AXI_WLAST;
  wire ahblite_axi_bridge_0_M_AXI_WREADY;
  wire [3:0]ahblite_axi_bridge_0_M_AXI_WSTRB;
  wire ahblite_axi_bridge_0_M_AXI_WVALID;
  wire cpu_aclk_1;
  wire cpu_aresetn_1;
  wire csky_jtag_1_TCK;
  wire csky_jtag_1_TDI;
  wire csky_jtag_1_TDO;
  wire csky_jtag_1_TMS;
  wire csky_jtag_1_TRST;

  assign M_AXI_araddr[31:0] = ahblite_axi_bridge_0_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = ahblite_axi_bridge_0_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = ahblite_axi_bridge_0_M_AXI_ARCACHE;
  assign M_AXI_arlen[7:0] = ahblite_axi_bridge_0_M_AXI_ARLEN;
  assign M_AXI_arlock = ahblite_axi_bridge_0_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = ahblite_axi_bridge_0_M_AXI_ARPROT;
  assign M_AXI_arsize[2:0] = ahblite_axi_bridge_0_M_AXI_ARSIZE;
  assign M_AXI_arvalid = ahblite_axi_bridge_0_M_AXI_ARVALID;
  assign M_AXI_awaddr[31:0] = ahblite_axi_bridge_0_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = ahblite_axi_bridge_0_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = ahblite_axi_bridge_0_M_AXI_AWCACHE;
  assign M_AXI_awlen[7:0] = ahblite_axi_bridge_0_M_AXI_AWLEN;
  assign M_AXI_awlock = ahblite_axi_bridge_0_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = ahblite_axi_bridge_0_M_AXI_AWPROT;
  assign M_AXI_awsize[2:0] = ahblite_axi_bridge_0_M_AXI_AWSIZE;
  assign M_AXI_awvalid = ahblite_axi_bridge_0_M_AXI_AWVALID;
  assign M_AXI_bready = ahblite_axi_bridge_0_M_AXI_BREADY;
  assign M_AXI_rready = ahblite_axi_bridge_0_M_AXI_RREADY;
  assign M_AXI_wdata[31:0] = ahblite_axi_bridge_0_M_AXI_WDATA;
  assign M_AXI_wlast = ahblite_axi_bridge_0_M_AXI_WLAST;
  assign M_AXI_wstrb[3:0] = ahblite_axi_bridge_0_M_AXI_WSTRB;
  assign M_AXI_wvalid = ahblite_axi_bridge_0_M_AXI_WVALID;
  assign ahblite_axi_bridge_0_M_AXI_ARREADY = M_AXI_arready;
  assign ahblite_axi_bridge_0_M_AXI_AWREADY = M_AXI_awready;
  assign ahblite_axi_bridge_0_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign ahblite_axi_bridge_0_M_AXI_BVALID = M_AXI_bvalid;
  assign ahblite_axi_bridge_0_M_AXI_RDATA = M_AXI_rdata[31:0];
  assign ahblite_axi_bridge_0_M_AXI_RLAST = M_AXI_rlast;
  assign ahblite_axi_bridge_0_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign ahblite_axi_bridge_0_M_AXI_RVALID = M_AXI_rvalid;
  assign ahblite_axi_bridge_0_M_AXI_WREADY = M_AXI_wready;
  assign cpu_aclk_1 = cpu_aclk;
  assign cpu_aresetn_1 = cpu_aresetn;
  assign csky_jtag_1_TCK = csky_jtag_tck;
  assign csky_jtag_1_TDI = csky_jtag_tdi;
  assign csky_jtag_1_TRST = csky_jtag_trst;
  assign csky_jtag_tdo = csky_jtag_1_TDO;
  CK803S_axi_wrap1_imp_29D2JF CK803S_axi_wrap1
       (.M_AXI_araddr(ahblite_axi_bridge_0_M_AXI_ARADDR),
        .M_AXI_arburst(ahblite_axi_bridge_0_M_AXI_ARBURST),
        .M_AXI_arcache(ahblite_axi_bridge_0_M_AXI_ARCACHE),
        .M_AXI_arlen(ahblite_axi_bridge_0_M_AXI_ARLEN),
        .M_AXI_arlock(ahblite_axi_bridge_0_M_AXI_ARLOCK),
        .M_AXI_arprot(ahblite_axi_bridge_0_M_AXI_ARPROT),
        .M_AXI_arready(ahblite_axi_bridge_0_M_AXI_ARREADY),
        .M_AXI_arsize(ahblite_axi_bridge_0_M_AXI_ARSIZE),
        .M_AXI_arvalid(ahblite_axi_bridge_0_M_AXI_ARVALID),
        .M_AXI_awaddr(ahblite_axi_bridge_0_M_AXI_AWADDR),
        .M_AXI_awburst(ahblite_axi_bridge_0_M_AXI_AWBURST),
        .M_AXI_awcache(ahblite_axi_bridge_0_M_AXI_AWCACHE),
        .M_AXI_awlen(ahblite_axi_bridge_0_M_AXI_AWLEN),
        .M_AXI_awlock(ahblite_axi_bridge_0_M_AXI_AWLOCK),
        .M_AXI_awprot(ahblite_axi_bridge_0_M_AXI_AWPROT),
        .M_AXI_awready(ahblite_axi_bridge_0_M_AXI_AWREADY),
        .M_AXI_awsize(ahblite_axi_bridge_0_M_AXI_AWSIZE),
        .M_AXI_awvalid(ahblite_axi_bridge_0_M_AXI_AWVALID),
        .M_AXI_bready(ahblite_axi_bridge_0_M_AXI_BREADY),
        .M_AXI_bresp(ahblite_axi_bridge_0_M_AXI_BRESP),
        .M_AXI_bvalid(ahblite_axi_bridge_0_M_AXI_BVALID),
        .M_AXI_rdata(ahblite_axi_bridge_0_M_AXI_RDATA),
        .M_AXI_rlast(ahblite_axi_bridge_0_M_AXI_RLAST),
        .M_AXI_rready(ahblite_axi_bridge_0_M_AXI_RREADY),
        .M_AXI_rresp(ahblite_axi_bridge_0_M_AXI_RRESP),
        .M_AXI_rvalid(ahblite_axi_bridge_0_M_AXI_RVALID),
        .M_AXI_wdata(ahblite_axi_bridge_0_M_AXI_WDATA),
        .M_AXI_wlast(ahblite_axi_bridge_0_M_AXI_WLAST),
        .M_AXI_wready(ahblite_axi_bridge_0_M_AXI_WREADY),
        .M_AXI_wstrb(ahblite_axi_bridge_0_M_AXI_WSTRB),
        .M_AXI_wvalid(ahblite_axi_bridge_0_M_AXI_WVALID),
        .csky_jtag_tck(csky_jtag_1_TCK),
        .csky_jtag_tdi(csky_jtag_1_TDI),
        .csky_jtag_tdo(csky_jtag_1_TDO),
        .csky_jtag_tms(csky_jtag_tms),
        .csky_jtag_trst(csky_jtag_1_TRST),
        .s_ahb_hclk(cpu_aclk_1),
        .s_ahb_hresetn(cpu_aresetn_1));
endmodule

module CK803S_axi_wrap1_imp_29D2JF
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    csky_jtag_tck,
    csky_jtag_tdi,
    csky_jtag_tdo,
    csky_jtag_tms,
    csky_jtag_trst,
    s_ahb_hclk,
    s_ahb_hresetn);
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input csky_jtag_tck;
  input csky_jtag_tdi;
  output csky_jtag_tdo;
  inout csky_jtag_tms;
  input csky_jtag_trst;
  input s_ahb_hclk;
  input s_ahb_hresetn;

  wire [31:0]CK803S_ahb_wrap1_0_biu_ahb_HADDR;
  wire [2:0]CK803S_ahb_wrap1_0_biu_ahb_HBURST;
  wire [3:0]CK803S_ahb_wrap1_0_biu_ahb_HPROT;
  wire [31:0]CK803S_ahb_wrap1_0_biu_ahb_HRDATA;
  wire CK803S_ahb_wrap1_0_biu_ahb_HRESP;
  wire [2:0]CK803S_ahb_wrap1_0_biu_ahb_HSIZE;
  wire [1:0]CK803S_ahb_wrap1_0_biu_ahb_HTRANS;
  wire [31:0]CK803S_ahb_wrap1_0_biu_ahb_HWDATA;
  wire CK803S_ahb_wrap1_0_biu_ahb_HWRITE;
  wire Net;
  wire [31:0]ahblite_axi_bridge_0_M_AXI_ARADDR;
  wire [1:0]ahblite_axi_bridge_0_M_AXI_ARBURST;
  wire [3:0]ahblite_axi_bridge_0_M_AXI_ARCACHE;
  wire [7:0]ahblite_axi_bridge_0_M_AXI_ARLEN;
  wire ahblite_axi_bridge_0_M_AXI_ARLOCK;
  wire [2:0]ahblite_axi_bridge_0_M_AXI_ARPROT;
  wire ahblite_axi_bridge_0_M_AXI_ARREADY;
  wire [2:0]ahblite_axi_bridge_0_M_AXI_ARSIZE;
  wire ahblite_axi_bridge_0_M_AXI_ARVALID;
  wire [31:0]ahblite_axi_bridge_0_M_AXI_AWADDR;
  wire [1:0]ahblite_axi_bridge_0_M_AXI_AWBURST;
  wire [3:0]ahblite_axi_bridge_0_M_AXI_AWCACHE;
  wire [7:0]ahblite_axi_bridge_0_M_AXI_AWLEN;
  wire ahblite_axi_bridge_0_M_AXI_AWLOCK;
  wire [2:0]ahblite_axi_bridge_0_M_AXI_AWPROT;
  wire ahblite_axi_bridge_0_M_AXI_AWREADY;
  wire [2:0]ahblite_axi_bridge_0_M_AXI_AWSIZE;
  wire ahblite_axi_bridge_0_M_AXI_AWVALID;
  wire ahblite_axi_bridge_0_M_AXI_BREADY;
  wire [1:0]ahblite_axi_bridge_0_M_AXI_BRESP;
  wire ahblite_axi_bridge_0_M_AXI_BVALID;
  wire [31:0]ahblite_axi_bridge_0_M_AXI_RDATA;
  wire ahblite_axi_bridge_0_M_AXI_RLAST;
  wire ahblite_axi_bridge_0_M_AXI_RREADY;
  wire [1:0]ahblite_axi_bridge_0_M_AXI_RRESP;
  wire ahblite_axi_bridge_0_M_AXI_RVALID;
  wire [31:0]ahblite_axi_bridge_0_M_AXI_WDATA;
  wire ahblite_axi_bridge_0_M_AXI_WLAST;
  wire ahblite_axi_bridge_0_M_AXI_WREADY;
  wire [3:0]ahblite_axi_bridge_0_M_AXI_WSTRB;
  wire ahblite_axi_bridge_0_M_AXI_WVALID;
  wire cpu_aclk_1;
  wire cpu_aresetn_1;
  wire csky_jtag_1_TCK;
  wire csky_jtag_1_TDI;
  wire csky_jtag_1_TDO;
  wire csky_jtag_1_TMS;
  wire csky_jtag_1_TRST;

  assign M_AXI_araddr[31:0] = ahblite_axi_bridge_0_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = ahblite_axi_bridge_0_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = ahblite_axi_bridge_0_M_AXI_ARCACHE;
  assign M_AXI_arlen[7:0] = ahblite_axi_bridge_0_M_AXI_ARLEN;
  assign M_AXI_arlock = ahblite_axi_bridge_0_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = ahblite_axi_bridge_0_M_AXI_ARPROT;
  assign M_AXI_arsize[2:0] = ahblite_axi_bridge_0_M_AXI_ARSIZE;
  assign M_AXI_arvalid = ahblite_axi_bridge_0_M_AXI_ARVALID;
  assign M_AXI_awaddr[31:0] = ahblite_axi_bridge_0_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = ahblite_axi_bridge_0_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = ahblite_axi_bridge_0_M_AXI_AWCACHE;
  assign M_AXI_awlen[7:0] = ahblite_axi_bridge_0_M_AXI_AWLEN;
  assign M_AXI_awlock = ahblite_axi_bridge_0_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = ahblite_axi_bridge_0_M_AXI_AWPROT;
  assign M_AXI_awsize[2:0] = ahblite_axi_bridge_0_M_AXI_AWSIZE;
  assign M_AXI_awvalid = ahblite_axi_bridge_0_M_AXI_AWVALID;
  assign M_AXI_bready = ahblite_axi_bridge_0_M_AXI_BREADY;
  assign M_AXI_rready = ahblite_axi_bridge_0_M_AXI_RREADY;
  assign M_AXI_wdata[31:0] = ahblite_axi_bridge_0_M_AXI_WDATA;
  assign M_AXI_wlast = ahblite_axi_bridge_0_M_AXI_WLAST;
  assign M_AXI_wstrb[3:0] = ahblite_axi_bridge_0_M_AXI_WSTRB;
  assign M_AXI_wvalid = ahblite_axi_bridge_0_M_AXI_WVALID;
  assign ahblite_axi_bridge_0_M_AXI_ARREADY = M_AXI_arready;
  assign ahblite_axi_bridge_0_M_AXI_AWREADY = M_AXI_awready;
  assign ahblite_axi_bridge_0_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign ahblite_axi_bridge_0_M_AXI_BVALID = M_AXI_bvalid;
  assign ahblite_axi_bridge_0_M_AXI_RDATA = M_AXI_rdata[31:0];
  assign ahblite_axi_bridge_0_M_AXI_RLAST = M_AXI_rlast;
  assign ahblite_axi_bridge_0_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign ahblite_axi_bridge_0_M_AXI_RVALID = M_AXI_rvalid;
  assign ahblite_axi_bridge_0_M_AXI_WREADY = M_AXI_wready;
  assign cpu_aclk_1 = s_ahb_hclk;
  assign cpu_aresetn_1 = s_ahb_hresetn;
  assign csky_jtag_1_TCK = csky_jtag_tck;
  assign csky_jtag_1_TDI = csky_jtag_tdi;
  assign csky_jtag_1_TRST = csky_jtag_trst;
  assign csky_jtag_tdo = csky_jtag_1_TDO;
  CK803S_axi_wrap1_CK803S_ahb_wrap1_0_0 CK803S_ahb_wrap1_0
       (.cpu_aclk(cpu_aclk_1),
        .cpu_aresetn(cpu_aresetn_1),
        .had_pad_jtg_tdo(csky_jtag_1_TDO),
        .m2_ahb_haddr(CK803S_ahb_wrap1_0_biu_ahb_HADDR),
        .m2_ahb_hburst(CK803S_ahb_wrap1_0_biu_ahb_HBURST),
        .m2_ahb_hprot(CK803S_ahb_wrap1_0_biu_ahb_HPROT),
        .m2_ahb_hrdata(CK803S_ahb_wrap1_0_biu_ahb_HRDATA),
        .m2_ahb_hready(Net),
        .m2_ahb_hresp(CK803S_ahb_wrap1_0_biu_ahb_HRESP),
        .m2_ahb_hsize(CK803S_ahb_wrap1_0_biu_ahb_HSIZE),
        .m2_ahb_htrans(CK803S_ahb_wrap1_0_biu_ahb_HTRANS),
        .m2_ahb_hwdata(CK803S_ahb_wrap1_0_biu_ahb_HWDATA),
        .m2_ahb_hwrite(CK803S_ahb_wrap1_0_biu_ahb_HWRITE),
        .pad_had_jtg_tck(csky_jtag_1_TCK),
        .pad_had_jtg_tdi(csky_jtag_1_TDI),
        .pad_had_jtg_tms(csky_jtag_tms),
        .pad_had_jtg_trst_b(csky_jtag_1_TRST));
  CK803S_axi_wrap1_ahblite_axi_bridge_0_0 ahblite_axi_bridge_0
       (.m_axi_araddr(ahblite_axi_bridge_0_M_AXI_ARADDR),
        .m_axi_arburst(ahblite_axi_bridge_0_M_AXI_ARBURST),
        .m_axi_arcache(ahblite_axi_bridge_0_M_AXI_ARCACHE),
        .m_axi_arlen(ahblite_axi_bridge_0_M_AXI_ARLEN),
        .m_axi_arlock(ahblite_axi_bridge_0_M_AXI_ARLOCK),
        .m_axi_arprot(ahblite_axi_bridge_0_M_AXI_ARPROT),
        .m_axi_arready(ahblite_axi_bridge_0_M_AXI_ARREADY),
        .m_axi_arsize(ahblite_axi_bridge_0_M_AXI_ARSIZE),
        .m_axi_arvalid(ahblite_axi_bridge_0_M_AXI_ARVALID),
        .m_axi_awaddr(ahblite_axi_bridge_0_M_AXI_AWADDR),
        .m_axi_awburst(ahblite_axi_bridge_0_M_AXI_AWBURST),
        .m_axi_awcache(ahblite_axi_bridge_0_M_AXI_AWCACHE),
        .m_axi_awlen(ahblite_axi_bridge_0_M_AXI_AWLEN),
        .m_axi_awlock(ahblite_axi_bridge_0_M_AXI_AWLOCK),
        .m_axi_awprot(ahblite_axi_bridge_0_M_AXI_AWPROT),
        .m_axi_awready(ahblite_axi_bridge_0_M_AXI_AWREADY),
        .m_axi_awsize(ahblite_axi_bridge_0_M_AXI_AWSIZE),
        .m_axi_awvalid(ahblite_axi_bridge_0_M_AXI_AWVALID),
        .m_axi_bready(ahblite_axi_bridge_0_M_AXI_BREADY),
        .m_axi_bresp(ahblite_axi_bridge_0_M_AXI_BRESP),
        .m_axi_bvalid(ahblite_axi_bridge_0_M_AXI_BVALID),
        .m_axi_rdata(ahblite_axi_bridge_0_M_AXI_RDATA),
        .m_axi_rlast(ahblite_axi_bridge_0_M_AXI_RLAST),
        .m_axi_rready(ahblite_axi_bridge_0_M_AXI_RREADY),
        .m_axi_rresp(ahblite_axi_bridge_0_M_AXI_RRESP),
        .m_axi_rvalid(ahblite_axi_bridge_0_M_AXI_RVALID),
        .m_axi_wdata(ahblite_axi_bridge_0_M_AXI_WDATA),
        .m_axi_wlast(ahblite_axi_bridge_0_M_AXI_WLAST),
        .m_axi_wready(ahblite_axi_bridge_0_M_AXI_WREADY),
        .m_axi_wstrb(ahblite_axi_bridge_0_M_AXI_WSTRB),
        .m_axi_wvalid(ahblite_axi_bridge_0_M_AXI_WVALID),
        .s_ahb_haddr(CK803S_ahb_wrap1_0_biu_ahb_HADDR),
        .s_ahb_hburst(CK803S_ahb_wrap1_0_biu_ahb_HBURST),
        .s_ahb_hclk(cpu_aclk_1),
        .s_ahb_hprot(CK803S_ahb_wrap1_0_biu_ahb_HPROT),
        .s_ahb_hrdata(CK803S_ahb_wrap1_0_biu_ahb_HRDATA),
        .s_ahb_hready_in(Net),
        .s_ahb_hready_out(Net),
        .s_ahb_hresetn(cpu_aresetn_1),
        .s_ahb_hresp(CK803S_ahb_wrap1_0_biu_ahb_HRESP),
        .s_ahb_hsel(cpu_aresetn_1),
        .s_ahb_hsize(CK803S_ahb_wrap1_0_biu_ahb_HSIZE),
        .s_ahb_htrans(CK803S_ahb_wrap1_0_biu_ahb_HTRANS),
        .s_ahb_hwdata(CK803S_ahb_wrap1_0_biu_ahb_HWDATA),
        .s_ahb_hwrite(CK803S_ahb_wrap1_0_biu_ahb_HWRITE));
endmodule
