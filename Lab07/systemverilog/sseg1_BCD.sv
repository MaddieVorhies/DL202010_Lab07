`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Maddie Vorhies
// 
// Create Date: 10/14/2020 07:36:17 PM
// Design Name: 
// Module Name: sseg1_BCD
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


module sseg1_BCD(

   input [15:0] switches,
   output [3:0] out,
   output dp,
   output [6:0] sseg
);

   wire [3:0] num;
   wire [3:0] ones;
   wire [3:0] tens;
   wire [3:0] hundreds;
   wire [3:0] thousands;
   
   bcd11 bcd(
      .B(switches[10:0]),
      .tens(tens[3:0]),
      .ones(ones[3:0]),
      .hundreds(hundreds[3:0]),
      .thousands(thousands[3:0])
   );
   
   mux2_4b mux (
      .in1(tens[3:0]),
      .in0(ones[3:0]),
      .sel(switches[15]),
      .out(num)
   );
   
   sseg_decoder prototype (
      .num(num),
      .sseg(sseg)
   );
   
   assign out [0] = switches [15];
   assign out [1] = ~switches [15];
   assign dp = 1'b1;
   assign out [3:2] = 2'b11;
   
endmodule
