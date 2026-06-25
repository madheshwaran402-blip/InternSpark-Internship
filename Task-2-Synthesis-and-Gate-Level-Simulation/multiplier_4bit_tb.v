`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 15:17:20
// Design Name: 
// Module Name: multiplier_4bit_tb
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

module multiplier_4bit_tb;

reg [3:0] A;
reg [3:0] B;
wire [7:0] P;

multiplier_4bit DUT(
    .A(A),
    .B(B),
    .P(P)
);

initial begin

    A = 4'd2; B = 4'd3; #10;
    A = 4'd5; B = 4'd4; #10;
    A = 4'd7; B = 4'd6; #10;
    A = 4'd8; B = 4'd3; #10;
    A = 4'd15; B = 4'd15; #10;

    $finish;

end

endmodule
