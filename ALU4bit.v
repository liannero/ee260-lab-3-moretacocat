`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2018 01:43:24 PM
// Design Name: 
// Module Name: ALU4bit
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


module ALU4bit(
    input [3:0] A,
    input [3:0] B,
    input [1:0] op,
    output [3:0] Result,
    output negSign,
    output [6:0] segs7,
    output [3:0] anodes,
    output overflow
    );
    

//extra credit: counter for LED displays
//    reg [20:0] refresh_counter;
//    wire [1:0] LED;
//    always @(posedge clock_1000Mhz or posedge reset)
//    begin
//        if(reset==1)
//            refresh_counter <= 0;
//        else
//            refresh_counter <= refresh_counter + 1;
//    end
    
//    assign LED = refresh_counter[20:19];
    
    // wires are not inputs or outputs but hold intermediate
    // values within a circuit
    // (each of these are 4 wire buses)
    wire [3:0] summ, diff, my4and, my4or, Bneg, Barg, magg; 
    wire ovf,c_msb;   // these are single bit wires
    
    // encode -B in 2's comp 
    twosComp4 U1(B,Bneg);
    
    // multiplexer to create adder B argument (either B or -B)
    // depending on whether op = 01 (subtract) 
    assign Barg = (op=='b01) ? Bneg : B;
    
    // single adder circuit handles addition and subtraction 
    fourAdd U2(A,Barg,summ,ovf,c_msb);
    assign overflow = c_msb==1 ? 1 : 0;
    
    // Finish instantiating 4-bit AND and 4-bit OR 
    and4bits U3(A,B,my4and);
    or4bits U4(A,B,my4or);
        
    // If result of subtraction is negative we'll want to
    // display magnitude with a - sign. Implement logic that
    // sets negSign = 1 if subtraction produced a negative
    // result otherwise negSign = 0 
    assign negSign = ((B > A) & (op=='b01)) ? 1 : 0;
    
    // Do 2's comp again to find magnitude
    // (we will only use magg if negSign=1) 
    twosComp4 U5(summ,magg);
    
    // Now implement multiplexer logic that assigns diff=summ
    // when the results of subtraction was positive and assigns
    // diff=magg when the results are negative 
    assign diff = (negSign==0) ? summ : magg;
    
    // Implement the final output mux 
    assign Result = (op=='b00) ? summ :(
        ((op=='b01)) ? diff :(
        ((op=='b10)) ? my4and : my4or ));
    
    // Display results to 7-seg display 
    hex2seg U6(Result,segs7,anodes);
 
//extra credit: display negative sign on 7-segment LED display
    begin 
    if (negSign==1)
        hex2seg U7(,7'b1111110,4'b1101);
    end
//    begin
//    //      begin
//            assign segs7 = 7'b1111110;
//            assign anodes[3] = 4'b1101;
//    //    end
//    end        

    
endmodule
