`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Lianne Rozzelle, Kristel Zuniga
// 
// Create Date: 02/06/2018 03:27:02 PM
// Design Name: 
// Module Name: tb_sub4hex
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


module tb_sub4hex();

    // declare registers and wires
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] Sum;
    wire [6:0] segs7;
    wire [3:0] anodes;
    
    // instantiate add4hex
    add4hex U1(A,B,Sum,segs7,anodes);
    
    // test inputs
    initial begin
        A = 4'b0000;
        B = 4'b0000;
        #100;
        A = 4'b0010;
        B = 4'b0001;
        #100;
        A = 4'b0100;
        B = 4'b0010;
        #100;
        A = 4'b0110;
        B = 4'b0011;
        #100;
        A = 4'b1100;
        B = 4'b0100;
        #100;
        A = 4'b0101;
        B = 4'b0111;
        #100;
        A = 4'b0110;
        B = 4'b1110;
        #100;
        A = 4'b1111;
        B = 4'b0111;            
    end
    
endmodule
