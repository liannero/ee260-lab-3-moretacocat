`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Lianne Rozzelle, Kristel Zuniga
// 
// Create Date: 02/06/2018 02:17:05 PM
// Design Name: 
// Module Name: add4hex
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
module add4hex(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Sum,
    output [6:0] segs7,
    output [3:0] anodes
    );
    
    wire of_s,c_msb;
    wire [3:0] negB;
    
//instantiate 2's comp
    twosComp4 U1(B, negB);
    
//instantiate 4-bit full adder
    fourAdd U2(A,negB,Sum,of_s,c_msb);

//display to 7-segment LED display    
    hex2seg U3(Sum,segs7,anodes);
    

endmodule
