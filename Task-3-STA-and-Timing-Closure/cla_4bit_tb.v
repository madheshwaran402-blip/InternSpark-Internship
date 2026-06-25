`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 15:39:03
// Design Name: 
// Module Name: cla_4bit_tb
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

module cla_4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

cla_4bit DUT(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    A=4'd3;  B=4'd4;  Cin=0; #10;
    A=4'd7;  B=4'd5;  Cin=0; #10;
    A=4'd8;  B=4'd6;  Cin=1; #10;
    A=4'd15; B=4'd1;  Cin=0; #10;
    A=4'd9;  B=4'd9;  Cin=1; #10;

    $finish;

end

endmodule
