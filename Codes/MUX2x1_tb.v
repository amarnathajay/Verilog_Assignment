`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: MUX2x1_tb
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module MUX2x1_tb( );

    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] a_tb, b_tb;
    reg sel_tb;
    wire [DATAWIDTH-1:0] d_tb;

    MUX2x1 M0( a_tb, b_tb, sel_tb, d_tb );
    
    initial begin
        a_tb <= 20;
        b_tb <= 10;
        sel_tb <= 0;
        #20;
        sel_tb <= 1;
        #20;
        b_tb <= 30;
        #20;
        a_tb <= 15;
        sel_tb <= 0;
        
    end
    
endmodule