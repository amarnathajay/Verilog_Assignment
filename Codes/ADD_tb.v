`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: ADD_tb
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module ADD_tb( );
    
    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] a_tb, b_tb;
    wire [DATAWIDTH-1:0] sum_tb;
    
    ADD A0( a_tb, b_tb, sum_tb );
    
    initial begin
        a_tb <= 1;
        b_tb <= 0;
        #2;
        
        a_tb <= 1;
        b_tb <= 1;
        #2;
    end
    
endmodule