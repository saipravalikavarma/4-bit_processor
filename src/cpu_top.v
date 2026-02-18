`timescale 1ns/1ps
module cpu_top(
    input clk,
    input reset
);

wire [3:0] pc_out;
wire [7:0] instruction;
wire [3:0] opcode;
wire [3:0] operand;

wire load_acc;
wire alu_enable;
wire jump;

wire [3:0] alu_result;
wire [3:0] acc_out;
wire zero;

assign opcode = instruction[7:4];
assign operand = instruction[3:0];

pc pc_inst(
    .clk(clk),
    .reset(reset),
    .jump(jump),
    .jump_addr(operand),
    .pc_out(pc_out)
);

instruction_memory imem_inst(
    .addr(pc_out),
    .instruction(instruction)
);

control_unit cu_inst(
    .opcode(opcode),
    .zero(zero),
    .load_acc(load_acc),
    .alu_enable(alu_enable),
    .jump(jump)
);

alu alu_inst(
    .a(acc_out),
    .b(operand),
    .opcode(opcode),
    .result(alu_result),
    .zero(zero)
);

accumulator acc_inst(
    .clk(clk),
    .reset(reset),
    .load(load_acc | alu_enable),
    .data_in(load_acc ? operand : alu_result),
    .acc_out(acc_out)
);

endmodule
