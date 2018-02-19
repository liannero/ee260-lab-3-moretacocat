`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Lianne Rozzelle, Kristel Zuniga
// 
// Create Date: 02/13/2018 02:38:26 PM
// Design Name: 
// Module Name: tb_ALU4bit
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


module tb_ALU4bit( );

    reg [3:0] A;
    reg [3:0] B;
    reg [1:0] op;
    wire [3:0] Result;
    wire negSign;
    wire [6:0] segs7;
    wire [3:0] anodes;
    
    ALU4bit U1(A,B,op,Result,negSign,segs7,anodes);
    
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
