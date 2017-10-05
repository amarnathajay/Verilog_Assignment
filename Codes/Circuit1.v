`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Circuit1
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////

module Circuit1( a, b, c, Clk, Rst, z, x );

    input [7:0] a, b, c;
    input Clk, Rst;
    output [7:0] z;
    output [15:0] x;
    
    wire [7:0] d, e, z_wire;
    wire [15:0] f, g, xwire;
    
    ADD #(8) Add0( a, b, d );
    ADD #(8) Add1( a, c, e );
    COMP #(8) Comp0( d, e, g[0], g[1], g[2] );
    MUX2x1 #(8) Mux0( e, d, g[0], z_wire );
    REG #(8) Reg0( z_wire, Clk, Rst, z ); 
    MUL #(16) Mul0( {8'b0,a}, {8'b0,c}, f );
    SUB #(16) Sub0( f, {8'b0,d}, xwire );
    REG #(16) Reg1( xwire, Clk, Rst, x );
    
endmodule
