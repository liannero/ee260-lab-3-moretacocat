`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2018 02:35:44 PM
// Design Name: 
// Module Name: and4bits
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
module and4bits(
    input [3:0] A,
    input [3:0] B,
    output [3:0] andAB
    );
    
//assign bitwise operation for AND
    assign andAB = A & B;
    
endmodule
