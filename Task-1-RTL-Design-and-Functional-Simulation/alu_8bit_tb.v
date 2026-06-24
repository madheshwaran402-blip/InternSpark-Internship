`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 13:54:03
// Design Name: 
// Module Name: alu_8bit_tb
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


`timescale 1ns/1ps

module alu_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] opcode;

wire [7:0] result;

integer i;

alu_8bit DUT(
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result)
);

initial begin

    // Directed Tests

    A = 20;
    B = 10;

    for(opcode = 0; opcode < 8; opcode = opcode + 1)
        #10;

    // Random Tests

    for(i = 0; i < 20; i = i + 1)
    begin
        A = $random;
        B = $random;
        opcode = $random % 8;
        #10;
    end

    $finish;

end

endmodule