`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Circuit2
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////

module Circuit2( a, b, c, Clk, Rst, z, x );

    input [31:0] a, b, c;
    input Clk, Rst;
    output [31:0] z, x;
        
    wire [31:0] d, e, f, g, h;
    wire dLTe, dEQe;
    wire [31:0] zwire, xwire;
    wire temp;
    
    ADD #(32) Add0( a, b, d );
    ADD #(32) Add1( a, c, e );
    SUB #(32) Sub0( a, b, f );
    COMP #(32) Comp0( d, e, temp, dLTe, dEQe );
    MUX2x1 #(32) Mux0( e, d, dLTe, g );
    MUX2x1 #(32) Mux1( f, g, dEQe, h );
    SHL #(32) SHL0( g, {31'b0,dLTe}, xwire );
    SHR #(32) SHR0( h, {31'b0,dEQe}, zwire );
    REG #(32) Reg0( xwire, Clk, Rst, x ); 
    REG #(32) Reg1( zwire, Clk, Rst, z );
    
endmodule
