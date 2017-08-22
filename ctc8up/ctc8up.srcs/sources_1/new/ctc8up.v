`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/08/18 10:10:35
// Design Name: 
// Module Name: ctc8up
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


module ctc8(
    clk,
    resetn,
    count
    );
    input clk,resetn;
    output reg[2:0] count;
    
    always @(posedge clk or negedge resetn)  begin
        if(resetn == 0) begin
            count = 7;
        end else begin
            if(count == 7)
                count = 0;
            else begin
                count = count + 1;
            end
        end
    end
endmodule
