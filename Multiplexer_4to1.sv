`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Haoyuan Sun
// 
// Create Date: 17.11.2021 20:56:31
// Design Name: 
// Module Name: Multiplexer_4to1
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


module Mux_4 #(parameter DataWidth=8)
(
  input  [1:0] sel,
  input  [DataWidth-1:0] m_in_3,
  input  [DataWidth-1:0] m_in_2,
  input  [DataWidth-1:0] m_in_1,
  input  [DataWidth-1:0] m_in_0,
  output [DataWidth-1:0] m_out
);

reg [DataWidth-1:0] out;

always@(*) begin
  case(sel)
    2'b00: out<=m_in_0;
    2'b01: out<=m_in_1;
    2'b10: out<=m_in_2;
    2'b11: out<=m_in_3;
  endcase
end

assign m_out=out;

endmodule

