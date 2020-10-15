`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Maddie Vorhies
// 
// Create Date: 10/08/2020 01:03:19 PM
// Design Name: 
// Module Name: bcd6_test
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


module bcd6_test();
   reg [5:0] B_t;
   wire [3:0] ones_t;
   wire [3:0] tens_t;
   
   bcd6 dut (
      .B(B_t), 
      .ones(ones_t), 
      .tens(tens_t)
   );
   
   initial begin 
   
      B_t = 6'b100100; #10;
      B_t = 6'b001101; #10;
      B_t = 6'b111001; #10;
      
      $finish;
      
   end


endmodule
