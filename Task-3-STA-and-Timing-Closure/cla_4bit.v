`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 15:38:03
// Design Name: 
// Module Name: cla_4bit
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


module cla_4bit(
    input  [3:0] A,
    input  [3:0] B,
    input  Cin,
    output [3:0] Sum,
    output Cout
);

wire [3:0] P, G;
wire C1, C2, C3;

// Propagate and Generate
assign P = A ^ B;
assign G = A & B;

// Carry Lookahead Logic
assign C1 = G[0] | (P[0] & Cin);

assign C2 = G[1] |
            (P[1] & G[0]) |
            (P[1] & P[0] & Cin);

assign C3 = G[2] |
            (P[2] & G[1]) |
            (P[2] & P[1] & G[0]) |
            (P[2] & P[1] & P[0] & Cin);

assign Cout = G[3] |
              (P[3] & G[2]) |
              (P[3] & P[2] & G[1]) |
              (P[3] & P[2] & P[1] & G[0]) |
              (P[3] & P[2] & P[1] & P[0] & Cin);

// Sum Logic
assign Sum[0] = P[0] ^ Cin;
assign Sum[1] = P[1] ^ C1;
assign Sum[2] = P[2] ^ C2;
assign Sum[3] = P[3] ^ C3;

endmodule
