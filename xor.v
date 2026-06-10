`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 11:10:00
// Design Name: 
// Module Name: xor
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


module xor_op(
    input [7:0] a,
    input [7:0] b,
    output [7:0] out
    );
   
    assign out = a ^ b ; // out is bitwise or of a and b
    
endmodule
