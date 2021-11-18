`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Haoyuan Sun
// 
// Create Date: 17.11.2021 20:50:16
// Design Name: 
// Module Name: Multiplier
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


module Mul #(parameter DataWidth=8)
(
  input [DataWidth-1:0]   m1,
  input [DataWidth-1:0]   m2,
  input [2*DataWidth-1:0] p
);

assign p=m1*m2;

endmodule
