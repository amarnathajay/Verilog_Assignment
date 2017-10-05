`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: DEC_tb
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module DEC_tb( );

    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] a_tb;
    wire [DATAWIDTH-1:0] d_tb;
    
    DEC D0( a_tb, d_tb );
    
    initial begin
        a_tb <= 10;
        #10;
        a_tb <= 20;
        #10;
     end
     
endmodule
