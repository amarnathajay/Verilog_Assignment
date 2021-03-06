`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: DIV_tb
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module DIV_tb( );

    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] a_tb, b_tb;
    wire [DATAWIDTH-1:0] quot_tb;
    
    DIV D0( a_tb, b_tb, quot_tb );
    
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
