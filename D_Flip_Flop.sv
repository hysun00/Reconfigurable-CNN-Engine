`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Haoyuan Sun
// 
// Create Date: 17.11.2021 20:49:12
// Design Name: 
// Module Name: D_Flip_Flop
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


module DFF #(parameter DataWidth=8)
(
 input CLK,
 input RST,
 input  [DataWidth-1:0] D,
 output reg [DataWidth-1:0] Q
);

always @(posedge CLK) begin
     if(RST) Q<=0;
     else Q<=D;
end

endmodule

