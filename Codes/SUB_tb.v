`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: SUB_tb
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module SUB_tb( );
    
    parameter DATAWIDTH = 2;
    reg [DATAWIDTH-1:0] a_tb, b_tb;
    wire [DATAWIDTH-1:0] diff_tb;
    
    SUB S0( a_tb, b_tb, diff_tb );
    
    initial begin
        a_tb <= 10;
        b_tb <= 0;
        #20;
        
        a_tb <= 15;
        b_tb <= 5;
        #20;
        
        a_tb <= 15;
        b_tb <= 20;
        #20;
    end
    
endmodule