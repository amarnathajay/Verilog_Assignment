`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Circuit8
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////

module Circuit8( a, b, c, d, zero, Clk, Rst, z );

    input [63:0] a, b, c, d, zero;
    input Clk, Rst;
    output [63:0] z;
    
    wire [63:0] e, f, g, zwire;
    wire gEQz;
    wire temp0, temp1;
        
    DEC #(64) Dec0( a, e );
    INC #(64) Inc0( c, f );
    MOD #(64) Mod0( a, c, g );
    COMP #(64) Comp0( g, zero, temp0, temp1, gEQz );
    MUX2x1 #(64) Mux0( f, e, gEQz, zwire );
    REG #(64) Reg0( zwire, Clk, Rst, z );
    
endmodule