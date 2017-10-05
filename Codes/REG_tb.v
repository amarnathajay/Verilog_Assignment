`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: REG_tb
// Group: amarnathajay_ankurlimaye 
//////////////////////////////////////////////////////////////////////////////////


module REG_tb( );

    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] d_tb;
    reg Clk_tb = 0, Rst_tb;
    wire [DATAWIDTH-1:0] q_tb;
    
    REG R0( d_tb, Clk_tb, Rst_tb, q_tb );
    
    always begin
        Clk_tb <=  !(Clk_tb);
        #20;
    end
    
    initial begin
       d_tb <= 10;
       Rst_tb <= 1;
       #40;
       Rst_tb <= 0;
       #40;
       d_tb <= 20;
       #20;
       d_tb <= 30;
        
    end
    
endmodule
