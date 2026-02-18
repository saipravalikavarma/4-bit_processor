module control_unit(
    input [3:0] opcode,
    input zero,
    output reg load_acc,
    output reg alu_enable,
    output reg jump
);

always @(*) begin
    load_acc = 0;
    alu_enable = 0;
    jump = 0;

    case(opcode)
        4'b0001: load_acc = 1;     // LDI
        4'b0010: alu_enable = 1;   // ADD
        4'b0011: alu_enable = 1;   // SUB
        4'b0111: jump = 1;         // JMP
        4'b1000: if(zero) jump = 1; // JZ
    endcase
end

endmodule
