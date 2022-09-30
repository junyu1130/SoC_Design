//-----------------------------------------------------------------------------------------------------
//
// Important: this document is for use only in course <Embedded System Design> & <System on Chip Laboratory> 
//
// Institute of VLSI Design, Zhejiang University
//
// zhangpy@vlsi.zju.edu.cn
//
// CK803S_20160617_wrap1.
// CPU_CLK:SYS_CLK = 1:1 ; 
// No interrupt.
//
// assign          clk_en = 1'b1 ;
// assign          pad_sysio_bigend_b = 1'b1;
// assign          pad_bmu_dahbl_base = 20'b0000_0000_0000_0000_0000; // 8M i&d
// assign          pad_bmu_dahbl_mask = 20'b0000_1111_1111_1111_1000;
// assign          pad_bmu_iahbl_base = 20'b0000_0000_0000_0000_0000;
// assign          pad_bmu_iahbl_mask = 20'b0000_1111_1111_1111_1000;
//
//-----------------------------------------------------------------------------------------------------

module CK803S_20160617_wrap1
  (
//   biu_pad_hmastlock, //jianqiang delete 
   m2_ahb_hmastlock, //jianqiang add  
//   dahbl_pad_hmastlock, //jianqiang delete 
//   m0_ahb_hmastlock, //jianqiang add   
//   iahbl_pad_hmastlock, //jianqiang delete 
//   m1_ahb_hmastlock, 
//   biu_pad_haddr, //jianqiang delete 
//   biu_pad_hburst, //jianqiang delete 
//   biu_pad_hprot, //jianqiang delete 
//   biu_pad_hsize, //jianqiang delete 
//   biu_pad_htrans, //jianqiang delete 
//   biu_pad_hwdata, //jianqiang delete 
//   biu_pad_hwrite, //jianqiang delete 
   m2_ahb_haddr,
   m2_ahb_hburst,
   m2_ahb_hprot,
   m2_ahb_hsize,
   m2_ahb_htrans,
   m2_ahb_hwdata,
   m2_ahb_hwrite,
// clk_en,
// cp0_pad_psr,
// ctim_pad_int_vld,

//   dahbl_pad_haddr,
//   dahbl_pad_hburst,
//   dahbl_pad_hprot,
//   dahbl_pad_hsize,
//   dahbl_pad_htrans,
//   dahbl_pad_hwdata,
//   dahbl_pad_hwrite,   
//    m0_ahb_haddr,
//    m0_ahb_hburst,
//    m0_ahb_hprot,
//    m0_ahb_hsize,
//    m0_ahb_htrans,
//    m0_ahb_hwdata,
//    m0_ahb_hwrite,
// had_pad_jdb_ack_b,
// had_pad_jdb_pm,
// had_pad_jtg_tap_on,
   had_pad_jtg_tdo,
// had_pad_jtg_tdo_en,
// had_pad_jtg_tms_o,
// had_pad_jtg_tms_oe,

//   iahbl_pad_haddr,
//   iahbl_pad_hburst,
//   iahbl_pad_hprot,
//   iahbl_pad_hsize,
//   iahbl_pad_htrans,
//   iahbl_pad_hwdata,
//   iahbl_pad_hwrite,
//   m1_ahb_haddr,
//   m1_ahb_hburst,
//   m1_ahb_hprot,
//   m1_ahb_hsize,
//   m1_ahb_htrans,
//   m1_ahb_hwdata,
//   m1_ahb_hwrite,
   
   //   pad_biu_hrdata,
   //   pad_biu_hready,
   //   pad_biu_hresp,
   m2_ahb_hrdata,
   m2_ahb_hready,
   m2_ahb_hresp,
// pad_bmu_dahbl_base,
// pad_bmu_dahbl_mask,
// pad_bmu_iahbl_base,
// pad_bmu_iahbl_mask,
   cpu_aresetn,
// pad_ctim_calib,
// pad_ctim_refclk,

//   pad_dahbl_hrdata,
//   pad_dahbl_hready,
//   pad_dahbl_hresp,
//    m0_ahb_hrdata,
//    m0_ahb_hready, 
//    m0_ahb_hresp,
    
// pad_had_jdb_req_b,
// pad_had_jtag2_sel,
// pad_had_jtg_tap_en,
   pad_had_jtg_tck,
   pad_had_jtg_tdi,
   pad_had_jtg_tms,
   pad_had_jtg_trst_b,

//   pad_iahbl_hrdata,
//   pad_iahbl_hready, 
//   pad_iahbl_hresp,  
//   m1_ahb_hrdata,
//   m1_ahb_hready, 
//   m1_ahb_hresp,
   
// pad_sysio_bigend_b,
// pad_sysio_clkratio,
// pad_sysio_dbgrq_b,
// pad_vic_int_cfg,
// pad_vic_int_vld,
// pad_vic_wic_int_awake_en,
// pad_yy_bist_tst_en,
// pad_yy_gate_clk_en_b,
// pad_yy_scan_enable,
// pad_yy_test_mode,
   cpu_aclk
// rtu_pad_gpr_data,
// rtu_pad_gpr_index,
// rtu_pad_gpr_we,
// rtu_pad_inst_retire,
// rtu_pad_inst_split,
// rtu_pad_retire_pc,
// sysio_pad_dbg_b,
// sysio_pad_idly4_b,
// sysio_pad_ipend_b,
// sysio_pad_lpmd_b,
// sysio_pad_wakeup_b,
// vg_top_si_1,
// vg_top_si_2,
// vg_top_si_3,
// vg_top_si_4,
// vg_top_so_1,
// vg_top_so_2,
// vg_top_so_3,
// vg_top_so_4,
// vic_pad_wic_awake_data,
// vic_pad_wic_awake_disable,
// vic_pad_wic_awake_enable

   );

//   output          biu_pad_hmastlock;
   output           m2_ahb_hmastlock;
//   output          dahbl_pad_hmastlock;
   wire            m0_ahb_hmastlock;
//   output          iahbl_pad_hmastlock;
   wire            m1_ahb_hmastlock;

   input           cpu_aclk;            
   input           cpu_aresetn;              
   
//   input [31:0]    pad_dahbl_hrdata; // dbus ahb lite.
//   input           pad_dahbl_hready;               
//   input           pad_dahbl_hresp;  // zpy
//   output [31:0]   dahbl_pad_haddr;            
//   output [2 :0]   dahbl_pad_hburst;           
//   output [3 :0]   dahbl_pad_hprot;            
//   output [2 :0]   dahbl_pad_hsize;            
//   output [1 :0]   dahbl_pad_htrans;           
//   output [31:0]   dahbl_pad_hwdata;        
//   output          dahbl_pad_hwrite;      
   
   wire  [31:0]    m0_ahb_hrdata; // dbus ahb lite.
   wire             m0_ahb_hready;            
   wire             m0_ahb_hresp;  // zpy
   wire   [31:0]    m0_ahb_haddr;            
   wire   [2 :0]    m0_ahb_hburst;           
   wire   [3 :0]    m0_ahb_hprot;            
   wire   [2 :0]    m0_ahb_hsize;            
   wire   [1 :0]    m0_ahb_htrans;           
   wire   [31:0]    m0_ahb_hwdata;        
   wire             m0_ahb_hwrite;           

//   input [31:0]    pad_iahbl_hrdata; // ibus ahb lite.
//   input           pad_iahbl_hready;  
//   input           pad_iahbl_hresp;  // zpy  
//   output [31:0]   iahbl_pad_haddr;            
//   output [2 :0]   iahbl_pad_hburst;           
//   output [3 :0]   iahbl_pad_hprot;            
//   output [2 :0]   iahbl_pad_hsize;            
//   output [1 :0]   iahbl_pad_htrans;           
//   output [31:0]   iahbl_pad_hwdata;          
//   output          iahbl_pad_hwrite;           
   wire  [31:0]    m1_ahb_hrdata; // ibus ahb lite.
   wire            m1_ahb_hready;  
   wire            m1_ahb_hresp;  // zpy  
   wire   [31:0]   m1_ahb_haddr;            
   wire   [2 :0]   m1_ahb_hburst;           
   wire   [3 :0]   m1_ahb_hprot;            
   wire   [2 :0]   m1_ahb_hsize;            
   wire   [1 :0]   m1_ahb_htrans;           
   wire   [31:0]   m1_ahb_hwdata;          
   wire            m1_ahb_hwrite;           

//   input [31:0]    pad_biu_hrdata; // biu ahb lite.
//   input           pad_biu_hready;             
//   input           pad_biu_hresp;  // zpy      
//   output [31:0]   biu_pad_haddr;              
//   output [2 :0]   biu_pad_hburst;             
//   output [3 :0]   biu_pad_hprot;              
//   output [2 :0]   biu_pad_hsize;              
//   output [1 :0]   biu_pad_htrans;             
//   output [31:0]   biu_pad_hwdata;             
//   output          biu_pad_hwrite;
   input [31:0]     m2_ahb_hrdata; // biu ahb lite.
   input            m2_ahb_hready;             
   input            m2_ahb_hresp;  // zpy      
   output [31:0]    m2_ahb_haddr;              
   output [2 :0]    m2_ahb_hburst;             
   output [3 :0]    m2_ahb_hprot;              
   output [2 :0]    m2_ahb_hsize;              
   output [1 :0]    m2_ahb_htrans;             
   output [31:0]    m2_ahb_hwdata;             
   output           m2_ahb_hwrite;             

   input           pad_had_jtg_tck;           
   input           pad_had_jtg_tdi;            
//   input           pad_had_jtg_tms_i;          
   output          had_pad_jtg_tdo; 
   input          pad_had_jtg_trst_b;           

   inout            pad_had_jtg_tms;
   wire            clk_en;                     

   wire  [19:0]    pad_bmu_dahbl_base;         
   wire  [19:0]    pad_bmu_dahbl_mask;         
   wire  [19:0]    pad_bmu_iahbl_base;         
   wire  [19:0]    pad_bmu_iahbl_mask;         

   wire  [25:0]    pad_ctim_calib;             
   wire            pad_ctim_refclk;            

   wire            pad_had_jdb_req_b;          
   wire            pad_had_jtag2_sel;          
   wire            pad_had_jtg_tap_en;         
   wire            pad_had_jtg_trst_b;         
   wire            pad_sysio_bigend_b;         
   wire  [2 :0]    pad_sysio_clkratio;         
   wire            pad_sysio_dbgrq_b;          
   wire  [31:0]    pad_vic_int_cfg;            
   wire  [31:0]    pad_vic_int_vld;            
   wire  [31:0]    pad_vic_wic_int_awake_en;   
   wire            pad_yy_bist_tst_en;         
   wire            pad_yy_gate_clk_en_b;       
   wire            pad_yy_scan_enable;         
   wire            pad_yy_test_mode;           
   wire            vg_top_si_1;                
   wire            vg_top_si_2;                
   wire            vg_top_si_3;                
   wire            vg_top_si_4;                
   wire   [31:0]   cp0_pad_psr;                
   wire            ctim_pad_int_vld;           
   wire            had_pad_jdb_ack_b;          
   wire   [1 :0]   had_pad_jdb_pm;             
   wire            had_pad_jtg_tap_on;         
   wire            had_pad_jtg_tdo_en;         
   wire            had_pad_jtg_tms_o;          
   wire            had_pad_jtg_tms_oe;         
   wire   [31:0]   rtu_pad_gpr_data;           
   wire   [4 :0]   rtu_pad_gpr_index;          
   wire            rtu_pad_gpr_we;             
   wire            rtu_pad_inst_retire;        
   wire            rtu_pad_inst_split;         
   wire   [31:0]   rtu_pad_retire_pc;          
   wire            sysio_pad_dbg_b;            
   wire            sysio_pad_idly4_b;          
   wire            sysio_pad_ipend_b;          
   wire   [1 :0]   sysio_pad_lpmd_b;           
   wire            sysio_pad_wakeup_b;         
   wire            vg_top_so_1;                
   wire            vg_top_so_2;                
   wire            vg_top_so_3;                
   wire            vg_top_so_4;                
   wire   [31:0]   vic_pad_wic_awake_data;     
   wire            vic_pad_wic_awake_disable;  
   wire            vic_pad_wic_awake_enable;  
   
   assign          clk_en = 1'b1; 

   assign          biu_pad_hmastlock = 1'b0;
   assign          dahbl_pad_hmastlock = 1'b0;
   assign          iahbl_pad_hmastlock = 1'b0;

   assign          pad_bmu_dahbl_base = 20'b0000_0000_0000_0000_1000; // addr 0x10000 to 0x17fff
   assign          pad_bmu_dahbl_mask = 20'b1111_1111_1111_1111_1000;
   assign          pad_bmu_iahbl_base = 20'b0000_0000_0000_0000_0000; // addr 0x00000 to 0x7fff
   assign          pad_bmu_iahbl_mask = 20'b1111_1111_1111_1111_1000;

   assign          pad_vic_wic_int_awake_en = 32'b0;
   assign          pad_yy_bist_tst_en = 1'b0;

   assign          pad_ctim_calib = 26'b0;
   assign          pad_ctim_refclk = 1'b0;

   assign          pad_had_jdb_req_b = 1'b1;
   assign          pad_had_jtag2_sel = 1'b1;
   assign          pad_had_jtg_tap_en = 1'b1;
//   assign          pad_had_jtg_trst_b = 1'b1;

   assign          pad_sysio_bigend_b = 1'b1;
   assign          pad_sysio_clkratio = 3'b0; // 1:1 
   assign          pad_sysio_dbgrq_b = 1'b1;
   assign          pad_vic_int_cfg = 32'b0;
   assign          pad_vic_int_vld = 32'b0;

   assign          pad_yy_gate_clk_en_b = 1'b1;
   assign          pad_yy_scan_enable = 1'b0;
   assign          pad_yy_test_mode = 1'b0;

   assign          vg_top_si_1 = 1'b0; // dft scan input.
   assign          vg_top_si_2 = 1'b0;
   assign          vg_top_si_3 = 1'b0;
   assign          vg_top_si_4 = 1'b0;


//   CK803S_20160617_top    x_CK803S_20160617 
//     (
//      .biu_pad_haddr                          (biu_pad_haddr                 ),
//      .biu_pad_hburst                         (biu_pad_hburst                ),
//      .biu_pad_hprot                          (biu_pad_hprot                 ),
//      .biu_pad_hsize                          (biu_pad_hsize                 ),
//      .biu_pad_htrans                         (biu_pad_htrans                ),
//      .biu_pad_hwdata                         (biu_pad_hwdata                ),
//      .biu_pad_hwrite                         (biu_pad_hwrite                ),
//      .clk_en                                 (clk_en                        ),
//      .cp0_pad_psr                            (cp0_pad_psr                   ),
//      .ctim_pad_int_vld                       (ctim_pad_int_vld              ),
//      .dahbl_pad_haddr                        (dahbl_pad_haddr               ),
//      .dahbl_pad_hburst                       (dahbl_pad_hburst              ),
//      .dahbl_pad_hprot                        (dahbl_pad_hprot               ),
//      .dahbl_pad_hsize                        (dahbl_pad_hsize               ),
//      .dahbl_pad_htrans                       (dahbl_pad_htrans              ),
//      .dahbl_pad_hwdata                       (dahbl_pad_hwdata              ),
//      .dahbl_pad_hwrite                       (dahbl_pad_hwrite              ),
//      .had_pad_jdb_ack_b                      (had_pad_jdb_ack_b             ),
//      .had_pad_jdb_pm                         (had_pad_jdb_pm                ),
//      .had_pad_jtg_tap_on                     (had_pad_jtg_tap_on            ),
//      .had_pad_jtg_tdo                        (had_pad_jtg_tdo               ),
//      .had_pad_jtg_tdo_en                     (had_pad_jtg_tdo_en            ),
//      .had_pad_jtg_tms_o                      (had_pad_jtg_tms_o             ),
//      .had_pad_jtg_tms_oe                     (had_pad_jtg_tms_oe            ),
//      .iahbl_pad_haddr                        (iahbl_pad_haddr               ),
//      .iahbl_pad_hburst                       (iahbl_pad_hburst              ),
//      .iahbl_pad_hprot                        (iahbl_pad_hprot               ),
//      .iahbl_pad_hsize                        (iahbl_pad_hsize               ),
//      .iahbl_pad_htrans                       (iahbl_pad_htrans              ),
//      .iahbl_pad_hwdata                       (iahbl_pad_hwdata              ),
//      .iahbl_pad_hwrite                       (iahbl_pad_hwrite              ),
//      .pad_biu_hrdata                         (pad_biu_hrdata                ),
//      .pad_biu_hready                         (pad_biu_hready                ),
//      .pad_biu_hresp                          ({1'b0,pad_biu_hresp}          ),
//      .pad_bmu_dahbl_base                     (pad_bmu_dahbl_base            ),
//      .pad_bmu_dahbl_mask                     (pad_bmu_dahbl_mask            ),
//      .pad_bmu_iahbl_base                     (pad_bmu_iahbl_base            ),
//      .pad_bmu_iahbl_mask                     (pad_bmu_iahbl_mask            ),
//      .pad_cpu_rst_b                          (cpu_aresetn                 ),
//      .pad_ctim_calib                         (pad_ctim_calib                ),
//      .pad_ctim_refclk                        (pad_ctim_refclk               ),
//      .pad_dahbl_hrdata                       (pad_dahbl_hrdata              ),
//      .pad_dahbl_hready                       (pad_dahbl_hready              ),
//      .pad_dahbl_hresp                        ({1'b0,pad_dahbl_hresp}        ),
//      .pad_had_jdb_req_b                      (pad_had_jdb_req_b             ),
//      .pad_had_jtag2_sel                      (pad_had_jtag2_sel             ),
//      .pad_had_jtg_tap_en                     (pad_had_jtg_tap_en            ),
//      .pad_had_jtg_tclk                       (pad_had_jtg_tclk              ),
//      .pad_had_jtg_tdi                        (pad_had_jtg_tdi               ),
//      .pad_had_jtg_tms_i                      (pad_had_jtg_tms_i             ),
//      .pad_had_jtg_trst_b                     (pad_had_jtg_trst_b            ),
//      .pad_iahbl_hrdata                       (pad_iahbl_hrdata              ),
//      .pad_iahbl_hready                       (pad_iahbl_hready              ),
//      .pad_iahbl_hresp                        ({1'b0,pad_iahbl_hresp}        ),
//      .pad_sysio_bigend_b                     (pad_sysio_bigend_b            ),
//      .pad_sysio_clkratio                     (pad_sysio_clkratio            ),
//      .pad_sysio_dbgrq_b                      (pad_sysio_dbgrq_b             ),
//      .pad_vic_int_cfg                        (pad_vic_int_cfg               ),
//      .pad_vic_int_vld                        (pad_vic_int_vld               ),
//      .pad_vic_wic_int_awake_en               (pad_vic_wic_int_awake_en      ),
//      .pad_yy_bist_tst_en                     (pad_yy_bist_tst_en            ),
//      .pad_yy_gate_clk_en_b                   (pad_yy_gate_clk_en_b          ),
//      .pad_yy_scan_enable                     (pad_yy_scan_enable            ),
//      .pad_yy_test_mode                       (pad_yy_test_mode              ),
//      .pll_core_cpuclk                        (cpu_aclk               ),
//      .rtu_pad_gpr_data                       (rtu_pad_gpr_data              ),
//      .rtu_pad_gpr_index                      (rtu_pad_gpr_index             ),
//      .rtu_pad_gpr_we                         (rtu_pad_gpr_we                ),
//      .rtu_pad_inst_retire                    (rtu_pad_inst_retire           ),
//      .rtu_pad_inst_split                     (rtu_pad_inst_split            ),
//      .rtu_pad_retire_pc                      (rtu_pad_retire_pc             ),
//      .sysio_pad_dbg_b                        (sysio_pad_dbg_b               ),
//      .sysio_pad_idly4_b                      (sysio_pad_idly4_b             ),
//      .sysio_pad_ipend_b                      (sysio_pad_ipend_b             ),
//      .sysio_pad_lpmd_b                       (sysio_pad_lpmd_b              ),
//      .sysio_pad_wakeup_b                     (sysio_pad_wakeup_b            ),
//      .vg_top_si_1                            (vg_top_si_1                   ),
//      .vg_top_si_2                            (vg_top_si_2                   ),
//      .vg_top_si_3                            (vg_top_si_3                   ),
//      .vg_top_si_4                            (vg_top_si_4                   ),
//      .vg_top_so_1                            (vg_top_so_1                   ),
//      .vg_top_so_2                            (vg_top_so_2                   ),
//      .vg_top_so_3                            (vg_top_so_3                   ),
//      .vg_top_so_4                            (vg_top_so_4                   ),
//      .vic_pad_wic_awake_data                 (vic_pad_wic_awake_data        ),
//      .vic_pad_wic_awake_disable              (vic_pad_wic_awake_disable     ),
//      .vic_pad_wic_awake_enable               (vic_pad_wic_awake_enable      )
//      );

assign m0_ahb_hresp = 1'b0;
assign m1_ahb_hresp = 1'b0;

   // AHB-Lite ROM
   AHB2MEM uAHB2ROM (
      .HSEL(1'b1),
      .HCLK(cpu_aclk),
      .HRESETn(cpu_aresetn),
      .HREADY(m0_ahb_hready),
      .HADDR(m0_ahb_haddr),
      .HTRANS(m0_ahb_htrans),
      .HWRITE(m0_ahb_hwrite),
      .HSIZE(m0_ahb_hsize),
      .HWDATA(m0_ahb_hwdata),
      .HRDATA(m0_ahb_hrdata),
      .HREADYOUT(m0_ahb_hready)
   );

   // AHB-Lite RAM
   AHB2MEM uAHB2RAM (
      .HSEL(1'b1),
      .HCLK(cpu_aclk), 
      .HRESETn(cpu_aresetn), 
      .HREADY(m1_ahb_hready),     
      .HADDR(m1_ahb_haddr),
      .HTRANS(m1_ahb_htrans), 
      .HWRITE(m1_ahb_hwrite),
      .HSIZE(m1_ahb_hsize),
      .HWDATA(m1_ahb_hwdata), 
      .HRDATA(m1_ahb_hrdata), 
      .HREADYOUT(m1_ahb_hready)
   );

assign pad_had_jtg_tms = had_pad_jtg_tms_oe ? had_pad_jtg_tms_o : 1'bz;
assign pad_had_jtg_tms_i = ~had_pad_jtg_tms_oe ? pad_had_jtg_tms : 1'bz;

     CK803S_20160617_top    x_CK803S_20160617 
     (
      .biu_pad_haddr                          ( m2_ahb_haddr                 ),
      .biu_pad_hburst                         ( m2_ahb_hburst                ),
      .biu_pad_hprot                          ( m2_ahb_hprot                 ),
      .biu_pad_hsize                          ( m2_ahb_hsize                 ),
      .biu_pad_htrans                         ( m2_ahb_htrans                ),
      .biu_pad_hwdata                         ( m2_ahb_hwdata                ),
      .biu_pad_hwrite                         ( m2_ahb_hwrite                ),
      .clk_en                                 (clk_en                        ),
      .cp0_pad_psr                            (cp0_pad_psr                   ),
      .ctim_pad_int_vld                       (ctim_pad_int_vld              ),
      .dahbl_pad_haddr                        ( m0_ahb_haddr               ),
      .dahbl_pad_hburst                       ( m0_ahb_hburst              ),
      .dahbl_pad_hprot                        ( m0_ahb_hprot               ),
      .dahbl_pad_hsize                        ( m0_ahb_hsize               ),
      .dahbl_pad_htrans                       ( m0_ahb_htrans              ),
      .dahbl_pad_hwdata                       ( m0_ahb_hwdata              ),
      .dahbl_pad_hwrite                       ( m0_ahb_hwrite              ),
      .had_pad_jdb_ack_b                      (had_pad_jdb_ack_b             ),
      .had_pad_jdb_pm                         (had_pad_jdb_pm                ),
      .had_pad_jtg_tap_on                     (had_pad_jtg_tap_on            ),
      .had_pad_jtg_tdo                        (had_pad_jtg_tdo               ),
      .had_pad_jtg_tdo_en                     (had_pad_jtg_tdo_en            ),
      .had_pad_jtg_tms_o                      (had_pad_jtg_tms_o             ),
      .had_pad_jtg_tms_oe                     (had_pad_jtg_tms_oe            ),
      .iahbl_pad_haddr                        ( m1_ahb_haddr               ),
      .iahbl_pad_hburst                       ( m1_ahb_hburst              ),
      .iahbl_pad_hprot                        ( m1_ahb_hprot               ),
      .iahbl_pad_hsize                        ( m1_ahb_hsize               ),
      .iahbl_pad_htrans                       ( m1_ahb_htrans              ),
      .iahbl_pad_hwdata                       ( m1_ahb_hwdata              ),
      .iahbl_pad_hwrite                       ( m1_ahb_hwrite              ),
      .pad_biu_hrdata                         ( m2_ahb_hrdata                ),
      .pad_biu_hready                         ( m2_ahb_hready                ),
      .pad_biu_hresp                          ({1'b0, m2_ahb_hresp}          ),
      .pad_bmu_dahbl_base                     (pad_bmu_dahbl_base            ),
      .pad_bmu_dahbl_mask                     (pad_bmu_dahbl_mask            ),
      .pad_bmu_iahbl_base                     (pad_bmu_iahbl_base            ),
      .pad_bmu_iahbl_mask                     (pad_bmu_iahbl_mask            ),
      .pad_cpu_rst_b                          (cpu_aresetn                 ),
      .pad_ctim_calib                         (pad_ctim_calib                ),
      .pad_ctim_refclk                        (pad_ctim_refclk               ),
      .pad_dahbl_hrdata                       ( m0_ahb_hrdata              ),
      .pad_dahbl_hready                       ( m0_ahb_hready              ),
      .pad_dahbl_hresp                        ({1'b0, m0_ahb_hresp}        ),
      .pad_had_jdb_req_b                      (pad_had_jdb_req_b             ),
      .pad_had_jtag2_sel                      (pad_had_jtag2_sel             ),
      .pad_had_jtg_tap_en                     (pad_had_jtg_tap_en            ),
      .pad_had_jtg_tclk                       (pad_had_jtg_tck              ),
      .pad_had_jtg_tdi                        (pad_had_jtg_tdi               ),
      .pad_had_jtg_tms_i                      (pad_had_jtg_tms_i             ),
      .pad_had_jtg_trst_b                     (pad_had_jtg_trst_b            ),
      .pad_iahbl_hrdata                       (m1_ahb_hrdata              ),
      .pad_iahbl_hready                       (m1_ahb_hready              ),
      .pad_iahbl_hresp                        ({1'b0,m1_ahb_hresp}        ),
      .pad_sysio_bigend_b                     (pad_sysio_bigend_b            ),
      .pad_sysio_clkratio                     (pad_sysio_clkratio            ),
      .pad_sysio_dbgrq_b                      (pad_sysio_dbgrq_b             ),
      .pad_vic_int_cfg                        (pad_vic_int_cfg               ),
      .pad_vic_int_vld                        (pad_vic_int_vld               ),
      .pad_vic_wic_int_awake_en               (pad_vic_wic_int_awake_en      ),
      .pad_yy_bist_tst_en                     (pad_yy_bist_tst_en            ),
      .pad_yy_gate_clk_en_b                   (pad_yy_gate_clk_en_b          ),
      .pad_yy_scan_enable                     (pad_yy_scan_enable            ),
      .pad_yy_test_mode                       (pad_yy_test_mode              ),
      .pll_core_cpuclk                        (cpu_aclk               ),
      .rtu_pad_gpr_data                       (rtu_pad_gpr_data              ),
      .rtu_pad_gpr_index                      (rtu_pad_gpr_index             ),
      .rtu_pad_gpr_we                         (rtu_pad_gpr_we                ),
      .rtu_pad_inst_retire                    (rtu_pad_inst_retire           ),
      .rtu_pad_inst_split                     (rtu_pad_inst_split            ),
      .rtu_pad_retire_pc                      (rtu_pad_retire_pc             ),
      .sysio_pad_dbg_b                        (sysio_pad_dbg_b               ),
      .sysio_pad_idly4_b                      (sysio_pad_idly4_b             ),
      .sysio_pad_ipend_b                      (sysio_pad_ipend_b             ),
      .sysio_pad_lpmd_b                       (sysio_pad_lpmd_b              ),
      .sysio_pad_wakeup_b                     (sysio_pad_wakeup_b            ),
      .vg_top_si_1                            (vg_top_si_1                   ),
      .vg_top_si_2                            (vg_top_si_2                   ),
      .vg_top_si_3                            (vg_top_si_3                   ),
      .vg_top_si_4                            (vg_top_si_4                   ),
      .vg_top_so_1                            (vg_top_so_1                   ),
      .vg_top_so_2                            (vg_top_so_2                   ),
      .vg_top_so_3                            (vg_top_so_3                   ),
      .vg_top_so_4                            (vg_top_so_4                   ),
      .vic_pad_wic_awake_data                 (vic_pad_wic_awake_data        ),
      .vic_pad_wic_awake_disable              (vic_pad_wic_awake_disable     ),
      .vic_pad_wic_awake_enable               (vic_pad_wic_awake_enable      )
      );
endmodule


////////////////////////////////////////////////////////////////////////////////
// AHB-Lite Memory Module
////////////////////////////////////////////////////////////////////////////////
module AHB2MEM
   #(parameter MEMWIDTH = 15)               // Size = 32KB
   (
   input wire           HSEL,
   input wire           HCLK,
   input wire           HRESETn,
   input wire           HREADY,
   input wire    [31:0] HADDR,
   input wire     [1:0] HTRANS,
   input wire           HWRITE,
   input wire     [2:0] HSIZE,
   input wire    [31:0] HWDATA,
   output wire          HREADYOUT,
   output reg    [31:0] HRDATA
   );

   assign HREADYOUT = 1'b1; // Always ready

   // Memory Array
   reg  [31:0] memory[0:(2**(MEMWIDTH-2)-1)];

   // Registers to store Adress Phase Signals
   reg  [31:0] hwdata_mask;
   reg         we;
   reg  [31:0] buf_hwaddr;

   // Sample the Address Phase   
   always @(posedge HCLK or negedge HRESETn)
   begin
      if(!HRESETn)
      begin
         we <= 1'b0;
         buf_hwaddr <= 32'h0;
      end
      else
         if(HREADY)
         begin
            we <= HSEL & HWRITE & HTRANS[1];
            buf_hwaddr <= HADDR;

            casez (HSIZE[1:0])
               2'b1?: hwdata_mask <=  32'hFFFFFFFF;                        // Word write
               2'b01: hwdata_mask <= (32'h0000FFFF << (16 * HADDR[1]));    // Halfword write
               2'b00: hwdata_mask <= (32'h000000FF << (8 * HADDR[1:0]));   // Byte write
            endcase
          end
   end

   // Read and Write Memory
   always @ (posedge HCLK)
   begin
      if(we)
         memory[buf_hwaddr[MEMWIDTH - 1:2]] <= (HWDATA & hwdata_mask) | (HRDATA & ~hwdata_mask);
      HRDATA = memory[HADDR[MEMWIDTH - 1:2]];
   end

endmodule


