`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 02:26:37 AM
// Design Name: 
// Module Name: carry_look_ahead_sim
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


module carry_look_ahead_sim();

//inputs
reg [3:0] A, B;
reg cin;
//ouputs
wire [3:0] S;
wire cout;

adder_lookahead 
        dut(
        .A(A), .B(B), .cin(cin), .S(S), .cout(cout)
        );

initial 
    begin 
     #5 A = 4'd0; B = 4'd0; cin = 1'b0;
     #5 A = 4'd1; B = 4'd1; cin = 1'b0;
     #5 A = 4'd2; B = 4'd2; cin = 1'b0;
     #5 A = 4'd3; B = 4'd3; cin = 1'b0;
     #5 A = 4'd4; B = 4'd4; cin = 1'b0;
     #5 A = 4'd5; B = 4'd5; cin = 1'b1;
     #5 A = 4'd6; B = 4'd6; cin = 1'b0;
     #5 A = 4'd7; B = 4'd7; cin = 1'b0;
     #5 $finish;
    end
endmodule
