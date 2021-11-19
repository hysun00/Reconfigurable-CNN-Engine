`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Haoyuan Sun
// 
// Create Date: 18.11.2021 03:42:53
// Design Name: 
// Module Name: PE_Matrix
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


module PE_Matrix #(parameter DataWidth=16)
(
  input  CLK,
  input  RST,
  input  RST_W,
  //Streaming mode selection
  input [1:0] sel [10:0],
  //Input feature bus
  input  [DataWidth-1:0]   Bus_IF [10:0][10:0],
  //Weight bus
  input  [DataWidth-1:0]   Bus_W  [10:0][10:0],
  //Product bus
  output [2*DataWidth-1:0] Bus_P  [10:0][10:0]
);

//Internal Signals
wire [DataWidth-1:0]   m_in_3 [10:0][10:0];
wire [DataWidth-1:0]   m_in_2 [10:0][10:0];
wire [DataWidth-1:0]   m_in_1 [10:0][10:0];
wire [DataWidth-1:0]   Bus_Q  [10:0][10:0];

/**
   11*11 PE matrix grouped as 11 columns of PE array,
   from column 0 (i.e. PE_Array_0) to column 11 (i.e. PE_Array_10)
**/
PE_Array #(DataWidth) PE_Array_0
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[0]),
  .m_in_3(m_in_3[0]),
  .m_in_2(m_in_2[0]),
  .m_in_1(m_in_1[0]),
  .Bus_IF(Bus_IF[0]),
  .Bus_W(Bus_W[0]),
  .Bus_P(Bus_P[0]),
  .Bus_Q(Bus_Q[0])
);

PE_Array #(DataWidth) PE_Array_1
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[1]),
  .m_in_3(m_in_3[1]),
  .m_in_2(m_in_2[1]),
  .m_in_1(m_in_1[1]),
  .Bus_IF(Bus_IF[1]),
  .Bus_W(Bus_W[1]),
  .Bus_P(Bus_P[1]),
  .Bus_Q(Bus_Q[1])
);

PE_Array #(DataWidth) PE_Array_2
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[2]),
  .m_in_3(m_in_3[2]),
  .m_in_2(m_in_2[2]),
  .m_in_1(m_in_1[2]),
  .Bus_IF(Bus_IF[2]),
  .Bus_W(Bus_W[2]),
  .Bus_P(Bus_P[2]),
  .Bus_Q(Bus_Q[2])
);

PE_Array #(DataWidth) PE_Array_3
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[3]),
  .m_in_3(m_in_3[3]),
  .m_in_2(m_in_2[3]),
  .m_in_1(m_in_1[3]),
  .Bus_IF(Bus_IF[3]),
  .Bus_W(Bus_W[3]),
  .Bus_P(Bus_P[3]),
  .Bus_Q(Bus_Q[3])
);

PE_Array #(DataWidth) PE_Array_4
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[4]),
  .m_in_3(m_in_3[4]),
  .m_in_2(m_in_2[4]),
  .m_in_1(m_in_1[4]),
  .Bus_IF(Bus_IF[4]),
  .Bus_W(Bus_W[4]),
  .Bus_P(Bus_P[4]),
  .Bus_Q(Bus_Q[4])
);

PE_Array #(DataWidth) PE_Array_5
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[5]),
  .m_in_3(m_in_3[5]),
  .m_in_2(m_in_2[5]),
  .m_in_1(m_in_1[5]),
  .Bus_IF(Bus_IF[5]),
  .Bus_W(Bus_W[5]),
  .Bus_P(Bus_P[5]),
  .Bus_Q(Bus_Q[5])
);

PE_Array #(DataWidth) PE_Array_6
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[6]),
  .m_in_3(m_in_3[6]),
  .m_in_2(m_in_2[6]),
  .m_in_1(m_in_1[6]),
  .Bus_IF(Bus_IF[6]),
  .Bus_W(Bus_W[6]),
  .Bus_P(Bus_P[6]),
  .Bus_Q(Bus_Q[6])
);

PE_Array #(DataWidth) PE_Array_7
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[7]),
  .m_in_3(m_in_3[7]),
  .m_in_2(m_in_2[7]),
  .m_in_1(m_in_1[7]),
  .Bus_IF(Bus_IF[7]),
  .Bus_W(Bus_W[7]),
  .Bus_P(Bus_P[7]),
  .Bus_Q(Bus_Q[7])
);

PE_Array #(DataWidth) PE_Array_8
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[8]),
  .m_in_3(m_in_3[8]),
  .m_in_2(m_in_2[8]),
  .m_in_1(m_in_1[8]),
  .Bus_IF(Bus_IF[8]),
  .Bus_W(Bus_W[8]),
  .Bus_P(Bus_P[8]),
  .Bus_Q(Bus_Q[8])
);

PE_Array #(DataWidth) PE_Array_9
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[9]),
  .m_in_3(m_in_3[9]),
  .m_in_2(m_in_2[9]),
  .m_in_1(m_in_1[9]),
  .Bus_IF(Bus_IF[9]),
  .Bus_W(Bus_W[9]),
  .Bus_P(Bus_P[9]),
  .Bus_Q(Bus_Q[9])
);

PE_Array #(DataWidth) PE_Array_10
(
  .CLK(CLK),.RST(RST),.RST_W(RST_W),
  .sel(sel[10]),
  .m_in_3(m_in_3[10]),
  .m_in_2(m_in_2[10]),
  .m_in_1(m_in_1[10]),
  .Bus_IF(Bus_IF[10]),
  .Bus_W(Bus_W[10]),
  .Bus_P(Bus_P[10]),
  .Bus_Q(Bus_Q[10])
);

/**
   Unidirectional anti-diagonal connections for PEs above the anti-diagonal of the square PE matrix(11*11),
   Unidirectional anti-diagonal connections for PEs at the anti-diagonal of the square PE matrix(11*11),
   m_in_1 for the lower left pixel streaming in.
**/
genvar i,j;
for (j=1; j<=10; j++) begin
    for (i=0; i<=j-1; i++) begin
         assign m_in_1[0+i+1][j-i-1] = Bus_Q[0+i][j-i];
    end
end

/**
   Bi-directional anti-diagonal connections for PEs below the anti-diagonal of the square PE matrix(11*11),
   m_in_1 for the lower left pixel streaming in,
   m_in_1 for the upper right pixel streaming in.
**/
genvar m,n;
for (m=1; m<=9; m++) begin
    for (n=0; n<=9-m; n++) begin
         assign m_in_1[m+n+1][10-n-1] = Bus_Q[m+n][10-n];
         assign m_in_2[m+n][10-n]     = Bus_Q[m+n+1][10-n-1];
    end
end

endmodule
