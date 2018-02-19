`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2018 02:24:40 PM
// Design Name: 
// Module Name: tb_add4hex
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


module tb_add4hex();

    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] Sum;
    wire [6:0] segs7;
    wire [3:0] anodes;
 
    
    add4hex U1(A,B,Sum,segs7,anodes);
    
    initial begin
        A = 4'b0000;
        B = 4'b0000;
        #100;
        A = 4'b0001;
        B = 4'b0001;
        #100;
        A = 4'b0010;
        B = 4'b0010;
        #100;
        A = 4'b0011;
        B = 4'b0011;
        #100;
        A = 4'b0100;
        B = 4'b0100;
        #100;
        A = 4'b0101;
        B = 4'b0101;
        #100;
        A = 4'b0110;
        B = 4'b0110;
        #100;
        A = 4'b0111;
        B = 4'b0111;            

    end

endmodule
