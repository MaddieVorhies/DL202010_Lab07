`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Maddie Vorhies
// 
// Create Date: 10/08/2020 12:20:57 PM
// Design Name: 
// Module Name: bcd6
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


module bcd6(
    input [5:0] B,
    output [3:0] ones,
    output [3:0] tens
    );
    
    reg [3:0] C1_out;
    reg [3:0] C2_out;
    reg [3:0] C3_out;
    
    add3 C1 (
       .num({1'b0, B[5:3]}),
       .modnum(C1_out[3:0])
    );
   
    add3 C2 (
       .num({C1_out[2:0], B[2]}), 
       .modnum(C2_out[3:0])
    );
     
    add3 C3 (
       .num({C2_out[2:0], B[1]}),
       .modnum(C3_out[3:0])
    );  
    
    assign tens[3:0] = {1'b0, C1_out[3], C2_out[3], C3_out[3]};
    assign ones[3:0] = {C3_out[2:0], B[0]};
    
    
endmodule
