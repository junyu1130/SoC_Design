//-----------------------------------------------------------------------------------------------------
//
// Important: this document is for use only in course <Embedded System Design> & <System on Chip Laboratory> 
//
// Institute of VLSI Design, Zhejiang University
//
// zhangpy@vlsi.zju.edu.cn
//
// CK80732F_AXI_AHB_20160315_FPGA_wrap0
// CPU_CLK:SYS_CLK = 1:1 ; 
// No interrupt.
//
// assign          pad_biu_avec_b = 1'b0;           
// assign          pad_biu_bigend_b = 1'b1;         
// assign          pad_biu_endian_v2 = 1'b0;        
// assign          biu1_clk_en = 1;                     
// assign          pad_biu1_hgrant = 1;                 
// assign          pad_biu1_hrdata = 32'b0;                 
// assign          pad_biu1_hready = 1;                 
// assign          pad_biu1_hresp = 2'b0;                  
// assign          pad_div_region1_base_addr = 32'hF000_0000;
// assign          pad_div_region1_page_mask = 32'hFFFF_FFFF;
//
// assign          biu_clk_en = 1'b0; // cpu_clk:sys_clk=1:1
// assign          pad_biu_bigend_b = 1'b1;
// assign          pad_biu_fint_b = 1'b1;
// assign          pad_biu_fintraw_b = 1'b1;
// assign          pad_biu_gsb = 32'b0;
// assign          pad_biu_int_b = 1'b1;
// assign          pad_biu_intraw_b = 1'b1;
//
//-----------------------------------------------------------------------------------------------------

module CK80732F_AXI_AHB_20160315_FPGA_wrap0 
  (
// ar_top_si_1,
// ar_top_si_10,
// ar_top_si_11,
// ar_top_si_12,
// ar_top_si_2,
// ar_top_si_3,
// ar_top_si_4,
// ar_top_si_5,
// ar_top_si_6,
// ar_top_si_7,
// ar_top_si_8,
// ar_top_si_9,
// ar_top_so_1,
// ar_top_so_10,
// ar_top_so_11,
// ar_top_so_12,
// ar_top_so_2,
// ar_top_so_3,
// ar_top_so_4,
// ar_top_so_5,
// ar_top_so_6,
// ar_top_so_7,
// ar_top_so_8,
// ar_top_so_9,
// bht_smbist_done,
// bht_smbist_fail,
// biu1_clk_en,
// biu1_pad_haddr,
// biu1_pad_hburst,
// biu1_pad_hbusreq,
// biu1_pad_hlock,
// biu1_pad_hprot,
// biu1_pad_hsize,
// biu1_pad_htrans,
// biu1_pad_hwdata,
// biu1_pad_hwrite,
// biu_clk_en,
   biu_pad_araddr,
   biu_pad_arburst,
   biu_pad_arcache,
   biu_pad_arid,
   biu_pad_arlen,
   biu_pad_arlock,
   biu_pad_arprot,
   biu_pad_arsize,
   biu_pad_arvalid,
   biu_pad_awaddr,
   biu_pad_awburst,
   biu_pad_awcache,
   biu_pad_awid,
   biu_pad_awlen,
   biu_pad_awlock,
   biu_pad_awprot,
   biu_pad_awsize,
   biu_pad_awvalid,
   biu_pad_awqos,
   biu_pad_arqos,
   biu_pad_bready,
// biu_pad_cactive,
// biu_pad_csysack,
// biu_pad_dbg_b,
// biu_pad_gcb,
// biu_pad_idly4_b,
// biu_pad_int_ack,
// biu_pad_ipend_b,
// biu_pad_lpmd_b,
   biu_pad_rready,
// biu_pad_te_b,
// biu_pad_wakeup_b,
   biu_pad_wdata,
   biu_pad_wid,
   biu_pad_wlast,
   biu_pad_wstrb,
   biu_pad_wvalid,
// cp0_pad_psr,
// dcache_smbist_done,
// dcache_smbist_fail,
//   had_pad_jdb_ack_b,
//   had_pad_jdb_pm,
//   had_pad_jtg_tap_on,
   had_pad_jtg_tdo,
//   had_pad_jtg_tdo_en,
//   had_pad_jtg_tms_o,
//   had_pad_jtg_tms_oe,
// icache_smbist_done,
// icache_smbist_fail,
// mad_pad_hi,
// mad_pad_hi_wb_vld,
// mad_pad_lo,
// mad_pad_lo_wb_vld,
// mmu_smbist_done,
// mmu_smbist_fail,
// pad_biu1_hgrant,
// pad_biu1_hrdata,
// pad_biu1_hready,
// pad_biu1_hresp,
   pad_biu_arready,
// pad_biu_avec_b,
   pad_biu_awready,
   pad_biu_bid,
// pad_biu_bigend_b,
   pad_biu_bresp,
   pad_biu_bvalid,
// pad_biu_clkratio,
// pad_biu_csysreq,
//   pad_biu_dbgrq_b,
// pad_biu_endian_v2,
// pad_biu_fint_b,
// pad_biu_fintraw_b,
// pad_biu_gsb,
// pad_biu_int_b,
// pad_biu_intraw_b,
   pad_biu_rdata,
   pad_biu_rid,
   pad_biu_rlast,
   pad_biu_rresp,
   pad_biu_rvalid,
// pad_biu_vec_b,
   pad_biu_wready,
   pad_cpu_aresetn,  // changed from pad_cpu_rst_b
// pad_div_region1_base_addr,
// pad_div_region1_page_mask,
//   pad_had_jdb_req_b,
//   pad_had_jtag2_sel,
//   pad_had_jtg_tap_en,
   pad_had_jtg_tck,  // change from pad_had_jtg_tclk
   pad_had_jtg_tdi,
   pad_had_jtg_tms_i,
   pad_had_jtg_trst_b,
// pad_yy_bist_tst_en,
// pad_yy_gate_clk_en_b,
// pad_yy_scan_enable,
// pad_yy_test_mode,
   pll_core_aclk,  // changed from pll_core_cpuclk
// rtu_pad_retire0,
// rtu_pad_retire0_pc,
// rtu_pad_retire1,
// rtu_pad_retire1_pc,
// rtu_pad_wb0_c,
// rtu_pad_wb0_c_vld,
// rtu_pad_wb0_data,
// rtu_pad_wb0_data_vld,
// rtu_pad_wb0_gpr_index,
// rtu_pad_wb1_c,
// rtu_pad_wb1_c_vld,
// rtu_pad_wb1_data,
// rtu_pad_wb1_data_vld,
// rtu_pad_wb1_gpr_index

   );


   input           pad_biu_arready;                 
   input           pad_biu_awready;                 
   input [3 :0]    pad_biu_bid;                     
   input [1 :0]    pad_biu_bresp;                   
   input           pad_biu_bvalid;                  

   input [63:0]    pad_biu_rdata;                   
   input [3 :0]    pad_biu_rid;                     
   input           pad_biu_rlast;                   
   input [1 :0]    pad_biu_rresp;                   
   input           pad_biu_rvalid;                  
   input           pad_biu_wready;                  
   input           pad_cpu_aresetn;                   
   input           pad_had_jtg_tck;                // change from pad_had_jtg_tclk
   input           pad_had_jtg_tdi;                 
   input           pad_had_jtg_tms_i;               
   input           pad_had_jtg_trst_b;                
   input           pll_core_aclk;                 

   output [31:0]   biu_pad_araddr;                  
   output [1 :0]   biu_pad_arburst;                 
   output [3 :0]   biu_pad_arcache;                 
   output [3 :0]   biu_pad_arid;                    
   output [3 :0]   biu_pad_arlen;                   
   output [1 :0]   biu_pad_arlock;                  
   output [2 :0]   biu_pad_arprot;                  
   output [2 :0]   biu_pad_arsize;                  
   output          biu_pad_arvalid;                 
   output [31:0]   biu_pad_awaddr;                  
   output [1 :0]   biu_pad_awburst;                 
   output [3 :0]   biu_pad_awcache;                 
   output [3 :0]   biu_pad_awid;                    
   output [3 :0]   biu_pad_awlen;                   
   output [1 :0]   biu_pad_awlock;                  
   output [2 :0]   biu_pad_awprot;                  
   output [2 :0]   biu_pad_awsize;                  
   output          biu_pad_awvalid;                 
   output          biu_pad_bready;                  

   output          biu_pad_rready;                  
   output [63:0]   biu_pad_wdata;                   
   output [3 :0]   biu_pad_wid;                     
   output          biu_pad_wlast;                   
   output [7 :0]   biu_pad_wstrb;                   
   output          biu_pad_wvalid;                  
   output          had_pad_jtg_tdo;                 

   output [3:0]    biu_pad_awqos;
   output [3:0]    biu_pad_arqos;


   wire            ar_top_si_1;                     
   wire            ar_top_si_10;                    
   wire            ar_top_si_11;                    
   wire            ar_top_si_12;                    
   wire            ar_top_si_2;                     
   wire            ar_top_si_3;                     
   wire            ar_top_si_4;                     
   wire            ar_top_si_5;                     
   wire            ar_top_si_6;                     
   wire            ar_top_si_7;                     
   wire            ar_top_si_8;                     
   wire            ar_top_si_9;                     

   wire            ar_top_so_1;                     
   wire            ar_top_so_10;                    
   wire            ar_top_so_11;                    
   wire            ar_top_so_12;                    
   wire            ar_top_so_2;                     
   wire            ar_top_so_3;                     
   wire            ar_top_so_4;                     
   wire            ar_top_so_5;                     
   wire            ar_top_so_6;                     
   wire            ar_top_so_7;                     
   wire            ar_top_so_8;                     
   wire            ar_top_so_9;                     

   wire            biu1_clk_en;                     
   wire            pad_biu1_hgrant;                 
   wire [31:0] 	   pad_biu1_hrdata;                 
   wire            pad_biu1_hready;                 
   wire [1 :0] 	   pad_biu1_hresp;                  
   wire [31:0] 	   pad_div_region1_base_addr;       
   wire [31:0] 	   pad_div_region1_page_mask;       

   wire [31:0] 	   biu1_pad_haddr;                  
   wire [2 :0] 	   biu1_pad_hburst;                 
   wire            biu1_pad_hbusreq;                
   wire            biu1_pad_hlock;                  
   wire [3 :0] 	   biu1_pad_hprot;                  
   wire [2 :0] 	   biu1_pad_hsize;                  
   wire [1 :0] 	   biu1_pad_htrans;                 
   wire [31:0] 	   biu1_pad_hwdata;                 
   wire            biu1_pad_hwrite;                 

   wire            biu_clk_en;                      

   wire            pad_biu_avec_b;                  
   wire            pad_biu_bigend_b;                
   wire            pad_biu_endian_v2;               
   wire            pad_biu_fint_b;                  
   wire            pad_biu_fintraw_b;               
   wire  [31:0]    pad_biu_gsb;                     
   wire            pad_biu_int_b;                   
   wire            pad_biu_intraw_b;                

   wire  [2 :0]    pad_biu_clkratio;                
   wire            pad_biu_csysreq;                 
   wire            biu_pad_cactive;                 
   wire            biu_pad_csysack;                 

   wire            biu_pad_dbg_b;                   
   wire   [31:0]   biu_pad_gcb;                     
   wire            biu_pad_idly4_b;                 
   wire            biu_pad_int_ack;                 
   wire            biu_pad_ipend_b;                 
   wire   [1 :0]   biu_pad_lpmd_b;                  

   wire            biu_pad_te_b;                    
   wire            biu_pad_wakeup_b;                

   wire   [31:0]   cp0_pad_psr;                     
   wire            dcache_smbist_done;              
   wire            dcache_smbist_fail;              

   wire            icache_smbist_done;              
   wire            icache_smbist_fail;              
   wire   [31:0]   mad_pad_hi;                      
   wire            mad_pad_hi_wb_vld;               
   wire   [31:0]   mad_pad_lo;                      
   wire            mad_pad_lo_wb_vld;               
   wire            mmu_smbist_done;                 
   wire            mmu_smbist_fail;                 

   wire  [7 :0]    pad_biu_vec_b;                   

   wire            pad_yy_bist_tst_en;              
   wire            pad_yy_gate_clk_en_b;            
   wire            pad_yy_scan_enable;              
   wire            pad_yy_test_mode;                

   wire            rtu_pad_retire0;                 
   wire   [31:0]   rtu_pad_retire0_pc;              
   wire            rtu_pad_retire1;                 
   wire   [31:0]   rtu_pad_retire1_pc;              
   wire            rtu_pad_wb0_c;                   
   wire            rtu_pad_wb0_c_vld;               
   wire   [31:0]   rtu_pad_wb0_data;                
   wire            rtu_pad_wb0_data_vld;            
   wire   [4 :0]   rtu_pad_wb0_gpr_index;           
   wire            rtu_pad_wb1_c;                   
   wire            rtu_pad_wb1_c_vld;               
   wire   [31:0]   rtu_pad_wb1_data;                
   wire            rtu_pad_wb1_data_vld;            
   wire   [4 :0]   rtu_pad_wb1_gpr_index;           

   wire            bht_smbist_done;                 
   wire            bht_smbist_fail;                 

   wire            pad_biu_dbgrq_b;                 
   wire            pad_had_jdb_req_b;               
   wire            pad_had_jtag2_sel;               
   wire            pad_had_jtg_tap_en;              

   wire            had_pad_jdb_ack_b;               
   wire   [1 :0]   had_pad_jdb_pm;                  
   wire            had_pad_jtg_tap_on;              
   wire            had_pad_jtg_tdo_en;              
   wire            had_pad_jtg_tms_o;               
   wire            had_pad_jtg_tms_oe;              


   assign          pad_biu_dbgrq_b = 1'b1;
   assign          pad_had_jdb_req_b = 1'b1;               
   assign          pad_had_jtag2_sel = 1'b0;               
   assign          pad_had_jtg_tap_en = 1'b1;              

   assign          ar_top_si_1 = 0;                 
   assign          ar_top_si_10 = 0;                
   assign          ar_top_si_11 = 0;                
   assign          ar_top_si_12 = 0;                
   assign          ar_top_si_2 = 0;                 
   assign          ar_top_si_3 = 0;                 
   assign          ar_top_si_4 = 0;                 
   assign          ar_top_si_5 = 0;                 
   assign          ar_top_si_6 = 0;                 
   assign          ar_top_si_7 = 0;                 
   assign          ar_top_si_8 = 0;                 
   assign          ar_top_si_9 = 0;                 

   assign          biu1_clk_en = 0;                     
   assign          pad_biu1_hgrant = 1;                 
   assign          pad_biu1_hrdata = 32'b0;
   assign          pad_biu1_hready = 1;                 
   assign          pad_biu1_hresp = 2'b0;
   assign          pad_biu_vec_b =8'b0;
   assign          pad_div_region1_base_addr = 32'hF000_0000;       
   assign          pad_div_region1_page_mask = 32'hFFFF_FFFF;       

   assign          biu_clk_en = 1'b1; // cpu_clk:sys_clk=1:1


   assign          pad_biu_avec_b = 1'b0;           
   assign          pad_biu_bigend_b = 1'b1;         
   assign          pad_biu_endian_v2 = 1'b0;        
   assign          pad_biu_fint_b = 1'b1;           
   assign          pad_biu_fintraw_b = 1'b1;        
   assign          pad_biu_gsb = 32'b0;                     
   assign          pad_biu_int_b = 1'b1;                   
   assign          pad_biu_intraw_b = 1'b1;                

   assign          pad_biu_clkratio = 3'b0; // 1:1  
   assign          pad_biu_csysreq = 1'b1;          

   assign          pad_yy_bist_tst_en = 1'b0;              
   assign          pad_yy_gate_clk_en_b = 1'b1;            
   assign          pad_yy_scan_enable = 1'b0;              
   assign          pad_yy_test_mode = 1'b0;                

   assign          biu_pad_awqos = 4'b0;
   assign          biu_pad_arqos = 4'b0;


   CK80732F_AXI_AHB_20160315_FPGA_top x_CK80732F_AXI_AHB_20160315_FPGA 
     (
      .ar_top_si_1                            (ar_top_si_1                   ),
      .ar_top_si_10                           (ar_top_si_10                  ),
      .ar_top_si_11                           (ar_top_si_11                  ),
      .ar_top_si_12                           (ar_top_si_12                  ),
      .ar_top_si_2                            (ar_top_si_2                   ),
      .ar_top_si_3                            (ar_top_si_3                   ),
      .ar_top_si_4                            (ar_top_si_4                   ),
      .ar_top_si_5                            (ar_top_si_5                   ),
      .ar_top_si_6                            (ar_top_si_6                   ),
      .ar_top_si_7                            (ar_top_si_7                   ),
      .ar_top_si_8                            (ar_top_si_8                   ),
      .ar_top_si_9                            (ar_top_si_9                   ),
      .ar_top_so_1                            (ar_top_so_1                   ),
      .ar_top_so_10                           (ar_top_so_10                  ),
      .ar_top_so_11                           (ar_top_so_11                  ),
      .ar_top_so_12                           (ar_top_so_12                  ),
      .ar_top_so_2                            (ar_top_so_2                   ),
      .ar_top_so_3                            (ar_top_so_3                   ),
      .ar_top_so_4                            (ar_top_so_4                   ),
      .ar_top_so_5                            (ar_top_so_5                   ),
      .ar_top_so_6                            (ar_top_so_6                   ),
      .ar_top_so_7                            (ar_top_so_7                   ),
      .ar_top_so_8                            (ar_top_so_8                   ),
      .ar_top_so_9                            (ar_top_so_9                   ),
      .bht_smbist_done                        (bht_smbist_done               ),
      .bht_smbist_fail                        (bht_smbist_fail               ),
      .biu1_clk_en                            (biu1_clk_en                   ),
      .biu1_pad_haddr                         (biu1_pad_haddr                ),
      .biu1_pad_hburst                        (biu1_pad_hburst               ),
      .biu1_pad_hbusreq                       (biu1_pad_hbusreq              ),
      .biu1_pad_hlock                         (biu1_pad_hlock                ),
      .biu1_pad_hprot                         (biu1_pad_hprot                ),
      .biu1_pad_hsize                         (biu1_pad_hsize                ),
      .biu1_pad_htrans                        (biu1_pad_htrans               ),
      .biu1_pad_hwdata                        (biu1_pad_hwdata               ),
      .biu1_pad_hwrite                        (biu1_pad_hwrite               ),
      .biu_clk_en                             (biu_clk_en                    ),
      .biu_pad_araddr                         (biu_pad_araddr                ),
      .biu_pad_arburst                        (biu_pad_arburst               ),
      .biu_pad_arcache                        (biu_pad_arcache               ),
      .biu_pad_arid                           (biu_pad_arid                  ),
      .biu_pad_arlen                          (biu_pad_arlen                 ),
      .biu_pad_arlock                         (biu_pad_arlock                ),
      .biu_pad_arprot                         (biu_pad_arprot                ),
      .biu_pad_arsize                         (biu_pad_arsize                ),
      .biu_pad_arvalid                        (biu_pad_arvalid               ),
      .biu_pad_awaddr                         (biu_pad_awaddr                ),
      .biu_pad_awburst                        (biu_pad_awburst               ),
      .biu_pad_awcache                        (biu_pad_awcache               ),
      .biu_pad_awid                           (biu_pad_awid                  ),
      .biu_pad_awlen                          (biu_pad_awlen                 ),
      .biu_pad_awlock                         (biu_pad_awlock                ),
      .biu_pad_awprot                         (biu_pad_awprot                ),
      .biu_pad_awsize                         (biu_pad_awsize                ),
      .biu_pad_awvalid                        (biu_pad_awvalid               ),
      .biu_pad_bready                         (biu_pad_bready                ),
      .biu_pad_cactive                        (biu_pad_cactive               ),
      .biu_pad_csysack                        (biu_pad_csysack               ),
      .biu_pad_dbg_b                          (biu_pad_dbg_b                 ),
      .biu_pad_gcb                            (biu_pad_gcb                   ),
      .biu_pad_idly4_b                        (biu_pad_idly4_b               ),
      .biu_pad_int_ack                        (biu_pad_int_ack               ),
      .biu_pad_ipend_b                        (biu_pad_ipend_b               ),
      .biu_pad_lpmd_b                         (biu_pad_lpmd_b                ),
      .biu_pad_rready                         (biu_pad_rready                ),
      .biu_pad_te_b                           (biu_pad_te_b                  ),
      .biu_pad_wakeup_b                       (biu_pad_wakeup_b              ),
      .biu_pad_wdata                          (biu_pad_wdata                 ),
      .biu_pad_wid                            (biu_pad_wid                   ),
      .biu_pad_wlast                          (biu_pad_wlast                 ),
      .biu_pad_wstrb                          (biu_pad_wstrb                 ),
      .biu_pad_wvalid                         (biu_pad_wvalid                ),
      .cp0_pad_psr                            (cp0_pad_psr                   ),
      .dcache_smbist_done                     (dcache_smbist_done            ),
      .dcache_smbist_fail                     (dcache_smbist_fail            ),
      .had_pad_jdb_ack_b                      (had_pad_jdb_ack_b             ),
      .had_pad_jdb_pm                         (had_pad_jdb_pm                ),
      .had_pad_jtg_tap_on                     (had_pad_jtg_tap_on            ),
      .had_pad_jtg_tdo                        (had_pad_jtg_tdo               ),
      .had_pad_jtg_tdo_en                     (had_pad_jtg_tdo_en            ),
      .had_pad_jtg_tms_o                      (had_pad_jtg_tms_o             ),
      .had_pad_jtg_tms_oe                     (had_pad_jtg_tms_oe            ),
      .icache_smbist_done                     (icache_smbist_done            ),
      .icache_smbist_fail                     (icache_smbist_fail            ),
      .mad_pad_hi                             (mad_pad_hi                    ),
      .mad_pad_hi_wb_vld                      (mad_pad_hi_wb_vld             ),
      .mad_pad_lo                             (mad_pad_lo                    ),
      .mad_pad_lo_wb_vld                      (mad_pad_lo_wb_vld             ),
      .mmu_smbist_done                        (mmu_smbist_done               ),
      .mmu_smbist_fail                        (mmu_smbist_fail               ),
      .pad_biu1_hgrant                        (pad_biu1_hgrant               ),
      .pad_biu1_hrdata                        (pad_biu1_hrdata               ),
      .pad_biu1_hready                        (pad_biu1_hready               ),
      .pad_biu1_hresp                         (pad_biu1_hresp                ),
      .pad_biu_arready                        (pad_biu_arready               ),
      .pad_biu_avec_b                         (pad_biu_avec_b                ),
      .pad_biu_awready                        (pad_biu_awready               ),
      .pad_biu_bid                            (pad_biu_bid                   ),
      .pad_biu_bigend_b                       (pad_biu_bigend_b              ),
      .pad_biu_bresp                          (pad_biu_bresp                 ),
      .pad_biu_bvalid                         (pad_biu_bvalid                ),
      .pad_biu_clkratio                       (pad_biu_clkratio              ),
      .pad_biu_csysreq                        (pad_biu_csysreq               ),
      .pad_biu_dbgrq_b                        (pad_biu_dbgrq_b               ),
      .pad_biu_endian_v2                      (pad_biu_endian_v2             ),
      .pad_biu_fint_b                         (pad_biu_fint_b                ),
      .pad_biu_fintraw_b                      (pad_biu_fintraw_b             ),
      .pad_biu_gsb                            (pad_biu_gsb                   ),
      .pad_biu_int_b                          (pad_biu_int_b                 ),
      .pad_biu_intraw_b                       (pad_biu_intraw_b              ),
      .pad_biu_rdata                          (pad_biu_rdata                 ),
      .pad_biu_rid                            (pad_biu_rid                   ),
      .pad_biu_rlast                          (pad_biu_rlast                 ),
      .pad_biu_rresp                          (pad_biu_rresp                 ),
      .pad_biu_rvalid                         (pad_biu_rvalid                ),
      .pad_biu_vec_b                          (pad_biu_vec_b                 ),
      .pad_biu_wready                         (pad_biu_wready                ),
      .pad_cpu_rst_b                          (pad_cpu_aresetn               ),
      .pad_div_region1_base_addr              (pad_div_region1_base_addr     ),
      .pad_div_region1_page_mask              (pad_div_region1_page_mask     ),
      .pad_had_jdb_req_b                      (pad_had_jdb_req_b             ),
      .pad_had_jtag2_sel                      (pad_had_jtag2_sel             ),
      .pad_had_jtg_tap_en                     (pad_had_jtg_tap_en            ),
      .pad_had_jtg_tclk                       (pad_had_jtg_tck               ),
      .pad_had_jtg_tdi                        (pad_had_jtg_tdi               ),
      .pad_had_jtg_tms_i                      (pad_had_jtg_tms_i             ),
      .pad_had_jtg_trst_b                     (pad_had_jtg_trst_b            ),
      .pad_yy_bist_tst_en                     (pad_yy_bist_tst_en            ),
      .pad_yy_gate_clk_en_b                   (pad_yy_gate_clk_en_b          ),
      .pad_yy_scan_enable                     (pad_yy_scan_enable            ),
      .pad_yy_test_mode                       (pad_yy_test_mode              ),
      .pll_core_cpuclk                        (pll_core_aclk                 ),
      .rtu_pad_retire0                        (rtu_pad_retire0               ),
      .rtu_pad_retire0_pc                     (rtu_pad_retire0_pc            ),
      .rtu_pad_retire1                        (rtu_pad_retire1               ),
      .rtu_pad_retire1_pc                     (rtu_pad_retire1_pc            ),
      .rtu_pad_wb0_c                          (rtu_pad_wb0_c                 ),
      .rtu_pad_wb0_c_vld                      (rtu_pad_wb0_c_vld             ),
      .rtu_pad_wb0_data                       (rtu_pad_wb0_data              ),
      .rtu_pad_wb0_data_vld                   (rtu_pad_wb0_data_vld          ),
      .rtu_pad_wb0_gpr_index                  (rtu_pad_wb0_gpr_index         ),
      .rtu_pad_wb1_c                          (rtu_pad_wb1_c                 ),
      .rtu_pad_wb1_c_vld                      (rtu_pad_wb1_c_vld             ),
      .rtu_pad_wb1_data                       (rtu_pad_wb1_data              ),
      .rtu_pad_wb1_data_vld                   (rtu_pad_wb1_data_vld          ),
      .rtu_pad_wb1_gpr_index                  (rtu_pad_wb1_gpr_index         )
      );
endmodule

