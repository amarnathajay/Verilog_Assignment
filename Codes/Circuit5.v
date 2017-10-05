`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Circuit5
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////

module Circuit5( a, b, c, Clk, Rst, z, x );

    input [63:0] a, b, c;
    input Clk, Rst;
    output [31:0] z, x;
    
    wire [63:0] d, e, f, g, h;
    wire dLTe, dEQe;
    wire temp;
    wire [63:0] xrin, zrin;
    wire [63:0] greg, hreg;
    
    ADD #(64) Add0( a, b, d );
    ADD #(64) Add1( a, c, e );
    SUB #(64) Sub0( a, b, f );
    COMP #(64) Comp0( d, e, temp, dLTe, dEQe );
    MUX2x1 #(64) Mux0( e, d, dLTe, g );
    MUX2x1 #(64) Mux1( f, g, dEQe, h );
    REG #(64) Reg0( g, Clk, Rst, greg );
    REG #(64) Reg1( h, Clk, Rst, hreg );
    SHL #(64) SHL0( hreg, {63'b0,dLTe}, xrin );
    SHR #(64) SHR0( greg, {63'b0,dEQe}, zrin );
    REG #(32) Reg2( xrin[31:0], Clk, Rst, x );
    REG #(32) Reg3( zrin[31:0], Clk, Rst, z );

endmodule