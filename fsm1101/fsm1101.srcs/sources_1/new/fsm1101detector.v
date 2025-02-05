`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2025 11:38:39 AM
// Design Name: 
// Module Name: fsm1101detector
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


module fsm1101detector
#(parameter S1 = 3'b000,
            S2 = 3'b001,
            S3 = 3'b010,
            S4 = 3'b011,
            S5 = 3'b100)
(input in, clk, reset,
output  out
    );
    reg [2:0] PS, NS;
    
    always @(in, PS)
    case (PS)
    S1 : if (in == 1) NS = S2; else NS = S1;
    S2 : if (in == 1) NS = S3; else NS = S1;
    S3 : if (in == 0) NS = S4; else NS = S3;
    S4 : if (in == 1) NS = S5; else NS = S1;
    S5 : if (in == 1) NS = S2; else NS = S1;
    default : NS = 3'bXXX;
    endcase 
    
    always @(posedge clk, posedge reset) begin 
        if (reset == 0) 
        PS <= NS;
        else
        PS <= S1;
        end
    
    
    assign out = (PS == S5);
    
endmodule
