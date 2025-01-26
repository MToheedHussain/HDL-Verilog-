`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 03:01:50 AM
// Design Name: 
// Module Name: register_file
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


module register_file
#(parameter B = 8, W= 2)
    (
        input wire clk,
        input wire wr_en,
        input wire [1:0] w_addr, r_addr,
        input wire [7:0] w_data,
        output wire[7:0] r_data
    );
    
    reg [7:0] array_reg [2**W-1:0];
    
    
    always @(posedge clk)
    begin 
    
        if (wr_en) 
            begin
            
            array_reg[w_addr] <= w_data;
                       
            end
    end
            
   assign r_data = array_reg[r_addr];
       
    
    
endmodule
