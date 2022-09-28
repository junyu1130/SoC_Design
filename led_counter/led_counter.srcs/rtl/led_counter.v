module led_counter(
    input               clk,
    input               reset,
    output reg [31 : 0] ledout
);

always @(posedge clk or negedge reset) begin
    if (reset) begin
        ledout <= 32'HFFFFFFFF;
    end
    else begin
        ledout <= ledout + 1;
    end
end

endmodule