`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 01:24:19 AM
// Design Name: 
// Module Name: add_sub_testbench
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


module add_sub_testbench();
reg [7:0] A,B;
                reg cin;
                wire [7:0] S;
                wire cout, overflow;
                integer i;
                
  add_sub_main dut(.overflow(overflow), .A(A), .B(B), .cin(cin), .cout(cout), .S(S));
            
             initial begin 
             
              cin = 0; #5
             
             for (i = 0; i<=128; i = i + 1) begin 
             A = i; B = i; #5;
             end
             
             cin = 1; #5
             for (i = 0; i<=128; i = i + 1) begin 
             A = i; B = i; #5;
             end
                          
             end
             
endmodule
