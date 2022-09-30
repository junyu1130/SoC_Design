module uart_rx(
    input clk,          //100MHz main clock
    input rst_n,        //low enable reset
    input rs232_rx,     //uart rx in
    output[7:0] rx_data,//rx data 
    output rx_data_int  //rx valid interuput pulse
);
    // Sample Counter Signal Generator
    parameter CLK_FREQ  = 100_000_000;
    parameter BAUD_RATE = 9600;
    localparam CNT_MAX  = $ceil(CLK_FREQ/BAUD_RATE);
    reg [15:0] baud_cnt;
    always @ (posedge clk or negedge rst_n)
    if (!rst_n) begin
        baud_cnt <= 16'd0;
    end
    else begin
        if (bps_start_r) begin
            if (baud_cnt == CNT_MAX - 1)
                baud_cnt <= 16'd0;
            else
                baud_cnt <= baud_cnt + 1'b1;
        end
        else baud_cnt <= 16'd0;
    end
 
    // Sample Clock Signal Generator
    parameter CNT_MAX_H = $ceil(CNT_MAX/2);
    wire clk_bps = (baud_cnt == CNT_MAX_H) ? (1'b1) : (1'b0);
    
    //----------------------------------------------------------------
    reg rs232_rx0,rs232_rx1,rs232_rx2,rs232_rx3;   //filter reg for rx bit
    wire neg_rs232_rx;                             //neg edge for uart start

    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            rs232_rx0 <= 1'b0;
            rs232_rx1 <= 1'b0;
            rs232_rx2 <= 1'b0;
            rs232_rx3 <= 1'b0;
        end
        else begin
            rs232_rx0 <= rs232_rx;
            rs232_rx1 <= rs232_rx0;
            rs232_rx2 <= rs232_rx1;
            rs232_rx3 <= rs232_rx2;
        end
    end
    
    //set neg_rs232_rx to high for 1 clk peorid
    assign neg_rs232_rx = rs232_rx3 & rs232_rx2 & ~rs232_rx1 & ~rs232_rx0;    

    //----------------------------------------------------------------
    reg bps_start_r;
    reg[3:0] num;
    reg rx_int;

    always @ (posedge clk or negedge rst_n)
        if(!rst_n) begin
            bps_start_r <= 1'b0;
            rx_int <= 1'b0;
        end
        else if(neg_rs232_rx) begin
            bps_start_r <= 1'b1;
            rx_int <= 1'b1;
        end
        else if(num==4'd9) begin
            bps_start_r <= 1'b0;
            rx_int <= 1'b0;
        end

    //----------------------------------------------------------------
    reg[7:0] rx_data_r;     //rx_data
    //----------------------------------------------------------------

    reg[7:0] rx_temp_data;  //tmp data

    always @ (posedge clk or negedge rst_n)
        if(!rst_n) begin
            rx_temp_data <= 8'd0;
            num <= 4'd0;
            rx_data_r <= 8'd0;
        end
        else if(rx_int) begin
        if(clk_bps) begin   
                num <= num+1'b1;
                case (num)
                    4'd1: rx_temp_data[0] <= rs232_rx;  //latch 0bit
                    4'd2: rx_temp_data[1] <= rs232_rx;  //latch 1bit
                    4'd3: rx_temp_data[2] <= rs232_rx;  //latch 2bit
                    4'd4: rx_temp_data[3] <= rs232_rx;  //latch 3bit
                    4'd5: rx_temp_data[4] <= rs232_rx;  //latch 4bit
                    4'd6: rx_temp_data[5] <= rs232_rx;  //latch 5bit
                    4'd7: rx_temp_data[6] <= rs232_rx;  //latch 6bit
                    4'd8: rx_temp_data[7] <= rs232_rx;  //latch 7bit
                    default: ;
                endcase
            end
        else if(num == 4'd9) begin
                num <= 4'd0;                //after reciveing STOP bit, clear num
                rx_data_r <= rx_temp_data;  //latch tmp data to rx_data
            end
        end

    assign rx_data = rx_data_r; 
    
    reg  bps_start_r_ff;
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n) begin
            bps_start_r_ff <= 1'b0;
        end
        else begin
            bps_start_r_ff <= bps_start_r;
        end
    end
    
    wire bps_start_r_neg;
    assign bps_start_r_neg = (!bps_start_r) & bps_start_r_ff;
    assign rx_data_int = bps_start_r_neg;
    
endmodule
