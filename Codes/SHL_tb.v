`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: SHL_tb
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module SHL_tb( );

    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] a_tb, sh_amt_tb;
    wire [DATAWIDTH-1:0] d_tb;
    
    SHL S0( a_tb, sh_amt_tb, d_tb );
    
    initial begin
        a_tb <= 20;
        sh_amt_tb <= 1;
        #20;
        sh_amt_tb <= 3;
        #20;
        a_tb <= 40;
        sh_amt_tb <= 4;
        
    end

endmodule