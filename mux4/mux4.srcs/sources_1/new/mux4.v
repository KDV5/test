`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/08/18 10:40:12
// Design Name: 
// Module Name: mux4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4(
    Enable,
    in1,
    in2,
    in3,
    in4,
    cntrl1,
    cntrl2,
    out
    );
    output [3:0] out;
    input [3:0] in1,in2,in3,in4;
    input Enable,cntrl1,cntrl2;
    reg[3:0] out;
    reg[3:0] in1,in2,in3,in4;
    always@(Enable)
    begin
        case({cntrl1,cntrl2})
            2'b00:out=in1;
            2'b01:out=in2;
            2'b10:out=in3;
            2'b11:out=in4;
            default:out=4'hx;
        endcase
    end
endmodule
