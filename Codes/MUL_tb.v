`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: MUL_tb
// Group: amarnathajay_ankurlimaye 
//////////////////////////////////////////////////////////////////////////////////


module MUL_tb( );

    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] a_tb, b_tb;
    wire [{2*DATAWIDTH}-1:0] prod_tb;
    
    MUL M0( a_tb, b_tb, prod_tb );
    
    initial begin
        a_tb <= 7;
        b_tb <= 2;
        #50;
        
        a_tb <= 25;
        b_tb <= 5;
        #50;
        
        a_tb <= 5;
        b_tb <= 13;
        #50;
        
        a_tb <= 39;
        b_tb <= 1;
        #50;
    
    end
    
endmodule
