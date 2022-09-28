module tb_led_counter();

reg clk, reset;
wire [31 : 0] ledout;

led_counter u_led_counter(
    .clk    (clk),
    .reset  (reset),
    .ledout (ledout)
);

initial clk = 0;
always #5 clk = ~clk;

initial begin
     #0     reset = 0;
     #100   reset = 1;
     #20    reset = 0;
     #50000 $finish;
end

endmodule