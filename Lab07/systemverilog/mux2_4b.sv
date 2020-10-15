`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Maddie Vorhies
// 
// Create Date: 10/14/2020 07:37:13 PM
// Design Name: 
// Module Name: mux2_4b
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


module mux2_4b(
   input [3:0] in0 ,
   input [3:0] in1 ,
   input sel ,
   output [3:0] out
);

   assign out = sel ? in1 : in0 ;

endmodule
