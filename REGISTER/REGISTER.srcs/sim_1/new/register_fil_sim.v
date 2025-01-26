`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 03:16:06 AM
// Design Name: 
// Module Name: register_fil_sim
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


module register_fil_sim
    ();
    reg clk;
          reg wr_en;
          reg [1:0] w_addr, r_addr;
          reg [7:0] w_data;
          wire [7:0] r_data;
    
    register_file dut
    (
    .clk(clk), .wr_en(wr_en), .w_addr(w_addr), .r_addr(r_addr), .w_data(w_data), .r_data(r_data)
    );
    
    initial clk = 0;
    always  #5 begin clk = ~clk; end
    
    initial 
    begin 
     wr_en = 1'b0; #5 wr_en = 1'b1;
    
    #10  w_addr = 2'b00; w_data = 8'b1010_1100;
    #10  w_addr = 2'b01; w_data = 8'b1111_0000;
    #10  w_addr = 2'b10; w_data = 8'b0000_1111;
    #10 w_addr = 2'b11; w_data = 8'b1100_0011;
    
    
     #10  r_addr = 2'b00;
     #10 r_addr = 2'b01;
     #10  r_addr = 2'b10;
     #10 r_addr = 2'b11; 
     
              
    
    end
        
endmodule
