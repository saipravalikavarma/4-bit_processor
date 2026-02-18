`timescale 1ns/1ps
module accumulator(
    input clk,
    input reset,
    input load,
    input [3:0] data_in,
    output reg [3:0] acc_out
);

always @(posedge clk or posedge reset) begin
    if (reset)
        acc_out <= 4'b0000;
    else if (load)
        acc_out <= data_in;
end

endmodule
