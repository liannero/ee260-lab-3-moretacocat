`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Lianne Rozzelle, Kristel Zuniga
// 
// Create Date: 02/13/2018 01:38:45 PM
// Design Name: 
// Module Name: or4bits
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

//delcare inputs and outputs
module or4bits(
    input [3:0] A,
    input [3:0] B,
    output [3:0] orAB
    );
    
//assign bitwise operator for OR
    assign orAB = A | B;
    
endmodule
