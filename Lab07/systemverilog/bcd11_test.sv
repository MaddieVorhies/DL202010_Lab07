`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Maddie Vorhies
// 
// Create Date: 10/14/2020 07:26:53 PM
// Design Name: 
// Module Name: bcd11_test
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


module bcd11_test();

    reg [10:0] B_t;
    wire [3:0] ones_t;
    wire [3:0] tens_t;
    wire [3:0] hundreds_t;
    wire [3:0] thousands_t;
    
    bcd11 dut (
      .B(B_t), 
      .ones(ones_t), 
      .tens(tens_t),
      .hundreds(hundreds_t),
      .thousands(thousands_t)
   );
   
    initial begin 
   
      B_t = 11'b10010011101; #10;
      B_t = 11'b00110110110; #10;
      B_t = 11'b11100110001; #10;
      
      $finish;
      
   end


endmodule
