`timescale 1ns / 1ps
module instruction_memory(
    input [3:0] addr,
    output reg [7:0] instruction
);

reg [7:0] memory [15:0];

initial begin
    memory[0] = 8'b0001_0101; // LDI 5
    memory[1] = 8'b0001_0011; // LDI 3
    memory[2] = 8'b0010_0000; // ADD
    memory[3] = 8'b0011_0000; // SUB
    memory[4] = 8'b0000_0000; // NOP
end

always @(*) begin
    instruction = memory[addr];
end

endmodule
