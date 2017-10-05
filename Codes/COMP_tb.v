`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: COMP_tb
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module COMP_tb( );
    
    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] a_tb, b_tb;
    wire gt_tb, lt_tb, eq_tb;
    
    COMP C0( a_tb, b_tb, gt_tb, lt_tb, eq_tb );
    
    initial begin
        a_tb <= 20;
        b_tb <= 10;
        #10;
        
        a_tb <= 10;
        b_tb <= 20;
        #10;
        
        a_tb <= 15;
        b_tb <= 15;
        #10;
    end
    
endmodule
