`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: INC_tb
// Group: amarnathajay_ankurlimaye 
//////////////////////////////////////////////////////////////////////////////////


module INC_tb( );

    parameter DATAWIDTH = 8;
    reg [DATAWIDTH-1:0] a_tb;
    wire [DATAWIDTH-1:0] d_tb;
    
    INC I0( a_tb, d_tb );
    
    initial begin
        a_tb <= 10;
        #50;
        
        a_tb <= 20;
        #50;
     end
        
endmodule
