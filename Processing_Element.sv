`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2021 20:53:38
// Design Name: 
// Module Name: Processing_Element
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


module PE #(parameter DataWidth=8)
(
 input CLK,
 input RST,
 input RST_W,
 //Multiplexer Input
 input  [1:0] sel,
 input  [DataWidth-1:0] m_in_3,
 input  [DataWidth-1:0] m_in_2,
 input  [DataWidth-1:0] m_in_1,
 input  [DataWidth-1:0] m_in_0,
 //
 input  [DataWidth-1:0] weight, 
 output reg [DataWidth-1:0] Q,
 output [2*DataWidth-1:0] P
);

wire [DataWidth-1:0] D;
reg [DataWidth-1:0] Q_W;

//4 to 1 multiplexer for data streaming
Mux_4 #(DataWidth) Mux_4_PE 
(
 .sel(sel),
 .m_in_3(m_in_3),
 .m_in_2(m_in_2),
 .m_in_1(m_in_1),
 .m_in_0(m_in_0),
 .m_out(D)
);

//Inuput feature buffer
DFF #(DataWidth) DFF_PE
(
  .CLK(CLK),
  .RST(RST),
  .D(D),
  .Q(Q)//Input feature
);

//Weight buffer
DFF #(DataWidth) DFF_W_PE
(
  .CLK(CLK),
  .RST(RST_W),
  .D(weight),
  .Q(Q_W)//Weight
);

//Multiplier
Mul #(DataWidth) Mul_PE(
  .m1(Q),
  .m2(Q_W),
  .p(P)//Product
);

endmodule
