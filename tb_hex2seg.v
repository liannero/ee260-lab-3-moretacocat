`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Lianne Rozzelle, Kristel Zuniga
// 
// Create Date: 02/06/2018 01:38:06 PM
// Design Name: 
// Module Name: tb_hex2seg
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


module tb_hex2seg(

    );
    
    reg [3:0] D;
    
    wire [6:0] segs;
    wire [3:0] anodes;
    
    hex2seg U1(D,segs,anodes);
    
    initial begin
        D = 4'b0000;
        #100;
        D = 4'b0001;
        #100;
        D = 4'b0010;
        #100;
        D = 4'b0011;
        #100;
        D = 4'b0100;
        #100;
        D = 4'b0101;
        #100;
        D = 4'b0110;
        #100;
        D = 4'b0111;
        #100;
        D = 4'b1000;
        #100;
        D = 4'b1001;
        #100;
        D = 4'b1010;
        #100;
        D = 4'b1011;
        #100;
        D = 4'b1100;
        #100;
        D = 4'b1101;
        #100;
        D = 4'b1110;
        #100;
        D = 4'b1111;
        
        end
        
endmodule
