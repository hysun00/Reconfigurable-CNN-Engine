`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Haoyuan Sun
// 
// Create Date: 18.11.2021 03:40:59
// Design Name: 
// Module Name: PE_Array
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


module PE_Array #(parameter DataWidth=8)
(
  input  CLK,
  input  RST,
  input  RST_W,
  //Multiplexer inputs
  input  [1:0] sel,
  input  [DataWidth-1:0]   m_in_3 [10:0],
  input  [DataWidth-1:0]   m_in_2 [10:0],
  input  [DataWidth-1:0]   m_in_1 [10:0],    
  input  [DataWidth-1:0]   Bus_IF [10:0],
  //Weight
  input  [DataWidth-1:0]   Bus_W  [10:0],
  //Product of the weight and the feature pixel
  output [2*DataWidth-1:0] Bus_P  [10:0],
  //I.F. DFF output
  output reg [DataWidth-1:0]   Bus_Q  [10:0]
);

/**
   A PE array is composed of 11 PEs,
   from PE_0 to PE_10.
**/
PE #(DataWidth)PE_0
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[0]),
 .m_in_2(m_in_2[0]),
 .m_in_1(m_in_1[0]),
 .m_in_0(Bus_IF[0]),
 .weight(Bus_W[0]),
 .Q(Bus_Q[0]),
 .P(Bus_P[0])
);

PE #(DataWidth)PE_1
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[1]),
 .m_in_2(m_in_2[1]),
 .m_in_1(m_in_1[1]),
 .m_in_0(Bus_IF[1]),
 .weight(Bus_W[1]),
 .Q(Bus_Q[1]),
 .P(Bus_P[1])
);

PE #(DataWidth)PE_2
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[2]),
 .m_in_2(m_in_2[2]),
 .m_in_1(m_in_1[2]),
 .m_in_0(Bus_IF[2]),
 .weight(Bus_W[2]),
 .Q(Bus_Q[2]),
 .P(Bus_P[2])
);

PE #(DataWidth)PE_3
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[3]),
 .m_in_2(m_in_2[3]),
 .m_in_1(m_in_1[3]),
 .m_in_0(Bus_IF[3]),
 .weight(Bus_W[3]),
 .Q(Bus_Q[3]),
 .P(Bus_P[3])
);

PE #(DataWidth)PE_4
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[4]),
 .m_in_2(m_in_2[4]),
 .m_in_1(m_in_1[4]),
 .m_in_0(Bus_IF[4]),
 .weight(Bus_W[4]),
 .Q(Bus_Q[4]),
 .P(Bus_P[4])
);

PE #(DataWidth)PE_5
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[5]),
 .m_in_2(m_in_2[5]),
 .m_in_1(m_in_1[5]),
 .m_in_0(Bus_IF[5]),
 .weight(Bus_W[5]),
 .Q(Bus_Q[5]),
 .P(Bus_P[5])
);

PE #(DataWidth)PE_6
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[6]),
 .m_in_2(m_in_2[6]),
 .m_in_1(m_in_1[6]),
 .m_in_0(Bus_IF[6]),
 .weight(Bus_W[6]),
 .Q(Bus_Q[6]),
 .P(Bus_P[6])
);

PE #(DataWidth)PE_7
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[7]),
 .m_in_2(m_in_2[7]),
 .m_in_1(m_in_1[7]),
 .m_in_0(Bus_IF[7]),
 .weight(Bus_W[7]),
 .Q(Bus_Q[7]),
 .P(Bus_P[7])
);

PE #(DataWidth)PE_8
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[8]),
 .m_in_2(m_in_2[8]),
 .m_in_1(m_in_1[8]),
 .m_in_0(Bus_IF[8]),
 .weight(Bus_W[8]),
 .Q(Bus_Q[8]),
 .P(Bus_P[8])
);

PE #(DataWidth)PE_9
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[9]),
 .m_in_2(m_in_2[9]),
 .m_in_1(m_in_1[9]),
 .m_in_0(Bus_IF[9]),
 .weight(Bus_W[9]),
 .Q(Bus_Q[9]),
 .P(Bus_P[9])
);

PE #(DataWidth)PE_10
(
 .CLK(CLK),.RST(RST),.RST_W(RST_W),.sel(sel),
 .m_in_3(m_in_3[10]),
 .m_in_2(m_in_2[10]),
 .m_in_1(m_in_1[10]),
 .m_in_0(Bus_IF[10]),
 .weight(Bus_W[10]),
 .Q(Bus_Q[10]),
 .P(Bus_P[10])
);

endmodule