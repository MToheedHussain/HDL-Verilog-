`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 01:21:14 AM
// Design Name: 
// Module Name: add_suB_main
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


module add_sub_main
    #(parameter size = 8)
    (
    output cout, overflow, //MSB, determines if answer is positive or negative
    output [size-1:0] S,
    input [size-1:0] A,
    input [size-1:0] B,
    input cin // if 1, subtract, if 0, add. This is XOR'ed with b
    );
    
    wire [7:0] bin;
//    integer i;
    
//    always @(*) begin
//    for (i = 0; i<=size-1; i = i+1) begin
//     bin[i] = B[i]^cin;
//    end
//    end
      assign bin[0] = B[0]^cin;
    assign bin[1] = B[1]^cin;
    assign bin[2] = B[2]^cin;
    assign bin[3] = B[3]^cin;
    assign bin[4] = B[4]^cin;                          
    assign bin[5] = B[5]^cin;
    assign bin[6] = B[6]^cin;
    assign bin[7] = B[7]^cin;
    
      
    wire [size:1] carry; 
     full_adder FA0(carry[1],S[0],A[0],bin[0],cin);
     full_adder FA1(carry[2],S[1],A[1],bin[1],carry[1]);
     full_adder FA2(carry[3],S[2],A[2],bin[2],carry[2]);
     full_adder FA3(carry[4],S[3],A[3],bin[3],carry[3]);
     full_adder FA4(carry[5],S[4],A[4],bin[4],carry[4]);
     full_adder FA5(carry[6],S[5],A[5],bin[5],carry[5]);
     full_adder FA6(carry[7],S[6],A[6],bin[6],carry[6]);
     full_adder FA7(carry[8],S[7],A[7],bin[7],carry[7]);
     
     assign cout = cin^carry[8];
    
     assign overflow = carry[size-1]^carry[size-2]; 
   
endmodule