`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 06:18:33 PM
// Design Name: 
// Module Name: CSA_tb
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


module CSA_tb();

reg [3:0] A,B;
                reg cin;
                wire [3:0] S;
                wire cout;
                integer i;
                
  carry_select_adder dut(.A(A), .B(B), .cin(cin), .cout(cout), .S(S));
            
             initial begin 
             
             A = 0; B = 0; cin = 0; #5
             
             for (i = 0; i<16; i = i + 1) begin 
             A = i; B = i; #10;
             end
             end
             
             
                
endmodule    
