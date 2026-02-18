`timescale 1ns / 1ps
module alu(
    input [3:0] a,
    input [3:0] b,
    input [3:0] opcode,
    output reg [3:0] result,
    output zero
);

always @(*) begin
    case(opcode)
        4'b0010: result = a + b; // ADD
        4'b0011: result = a - b; // SUB
        4'b0100: result = a & b; // AND
        4'b0101: result = a | b; // OR
        default: result = a;
    endcase
end

assign zero = (result == 4'b0000);

endmodule
