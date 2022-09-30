`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2020 05:33:37 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define CLK_PER_H       5.000
`define RAM_SIZE        8192
`define BAUD_RATE       230400
//`define DEBUG
`define RELEASE

module testbench();
    reg csky_jtag_tck;
    reg csky_jtag_tdi;
    wire csky_jtag_tdo;
    wire csky_jtag_tms;
    reg csky_jtag_trst;
    reg rst_n;          //low active
    reg sys_clock;
    reg usb_uart_rxd;
    wire usb_uart_txd;

    integer i;
    reg [31:0] mem_tmp;
    integer bin_file;
    integer file_len;
    integer read_res;
    
    initial begin
        bin_file=0;
        file_len=0;
        
        `ifdef DEBUG
            bin_file=$fopen("D:/Projects/SoC_Design/hello_world/cds_proj/hello_world/Debug/hello_world.bin","rb");
        `endif
        `ifdef RELEASE
            bin_file=$fopen("D:/Projects/SoC_Design/hello_world/cds_proj/hello_world/Release/hello_world.bin","rb");
        `endif
        if(bin_file == 0)begin
            $display("file doesn't exist!\n");
            $finish;
        end
        
        while(!$feof(bin_file))begin
            read_res = $fscanf(bin_file,"%c%c%c%c",mem_tmp[7:0],mem_tmp[15:8],mem_tmp[23:16],mem_tmp[31:24]);
            if(file_len >= `RAM_SIZE/4)begin
                $display("RAM too small!\n");
                $finish; 
            end
            if(read_res == 4)begin
                uut.hello_world_i.axi_bram_ctrl_0_bram.inst.native_mem_mapped_module.
                blk_mem_gen_v8_4_5_inst.memory[file_len]=mem_tmp;
                file_len = file_len + 1;
            end
        end
        
    end
    
    initial begin
        forever
        #`CLK_PER_H sys_clock = ~sys_clock;
    end
    initial begin
        csky_jtag_tck = 1'b0;
        csky_jtag_tdi = 1'b0;
        csky_jtag_trst = 1'b0;
        rst_n = 1'b0;
        sys_clock = 1'b0;
        usb_uart_rxd = 1'b0;

        #100
        rst_n = 1'b1;

        #1000000
        $display("\nSimulation Finished\n");
        $finish;
    end
    
    hello_world_wrapper uut(
        .csky_jtag_tck  (csky_jtag_tck),
        .csky_jtag_tdi  (csky_jtag_tdi),
        .csky_jtag_tdo  (csky_jtag_tdo),
        .csky_jtag_tms  (csky_jtag_tms),
        .csky_jtag_trst (csky_jtag_trst),
        .resetn         (rst_n),
        .sys_clock      (sys_clock),
        .usb_uart_rxd   (usb_uart_rxd),
        .usb_uart_txd   (usb_uart_txd)
    );
    
    wire [7:0] rx_data;
    wire rx_data_int;
    
    uart_rx #(
        .CLK_FREQ   (1e9/`CLK_PER_H/2),
        .BAUD_RATE  (`BAUD_RATE)
    )
    uart_rx(
        .clk        (sys_clock),
        .rst_n      (rst_n),
        .rs232_rx   (usb_uart_txd),
        .rx_data    (rx_data),
        .rx_data_int(rx_data_int)
    );
    
    //Print result
    always @(negedge rx_data_int)begin
        $write("%c",rx_data);
    end
endmodule
