`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:05:28
// Design Name: 
// Module Name: add
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


module add(
    input [7:0] a,
    input [7:0] b,
    input carry_in,
    output [7:0] out,
    output carry_out
    );
    
    wire [8:0]result ; //after addition n bits generate result of n+1 bit 
    
   assign {carry_out,out} = a + b + carry_in ;
     
endmodule
