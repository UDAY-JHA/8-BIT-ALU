`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 12:27:02
// Design Name: 
// Module Name: ALU_tb
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


`timescale 1ns/1ps

module ALU_tb;

reg [7:0] a;
reg [7:0] b;
reg carry_in;
reg [2:0] sel;

wire [7:0] result;
wire carry_out;
wire zero_flag;

ALU dut(
    .a(a),
    .b(b),
    .carry_in(carry_in),
    .sel(sel),
    .result(result),
    .carry_out(carry_out),
    .zero_flag(zero_flag)
);

task apply_test;
input [7:0] ta;
input [7:0] tb;
input tcin;
input [2:0] tsel;
begin
    a = ta;
    b = tb;
    carry_in = tcin;
    sel = tsel;
    #10;
end
endtask

initial begin

    apply_test(8'd10 ,8'd20 ,0,3'b000);
    apply_test(8'd50 ,8'd25 ,0,3'b000);
    apply_test(8'd100,8'd100,0,3'b000);
    apply_test(8'd255,8'd1  ,0,3'b000);
    apply_test(8'd15 ,8'd35 ,1,3'b000);
    apply_test(8'd90 ,8'd10 ,0,3'b000);
    apply_test(8'd75 ,8'd50 ,1,3'b000);
    apply_test(8'd0  ,8'd0  ,0,3'b000);
    apply_test(8'd1  ,8'd1  ,1,3'b000);
    apply_test(8'd200,8'd40 ,0,3'b000);
    apply_test(8'd170,8'd85 ,0,3'b000);
    apply_test(8'd60 ,8'd60 ,1,3'b000);
    apply_test(8'd99 ,8'd88 ,0,3'b000);
    apply_test(8'd44 ,8'd55 ,1,3'b000);
    apply_test(8'd128,8'd128,0,3'b000);

    apply_test(8'd50 ,8'd20 ,0,3'b001);
    apply_test(8'd25 ,8'd25 ,0,3'b001);
    apply_test(8'd100,8'd30 ,0,3'b001);
    apply_test(8'd0  ,8'd1  ,0,3'b001);
    apply_test(8'd255,8'd100,0,3'b001);
    apply_test(8'd80 ,8'd40 ,0,3'b001);
    apply_test(8'd90 ,8'd90 ,0,3'b001);
    apply_test(8'd10 ,8'd15 ,0,3'b001);
    apply_test(8'd150,8'd50 ,0,3'b001);
    apply_test(8'd200,8'd199,0,3'b001);
    apply_test(8'd70 ,8'd35 ,0,3'b001);
    apply_test(8'd44 ,8'd11 ,0,3'b001);
    apply_test(8'd88 ,8'd22 ,0,3'b001);
    apply_test(8'd99 ,8'd77 ,0,3'b001);
    apply_test(8'd128,8'd64 ,0,3'b001);

    apply_test(8'hAA,8'h55,0,3'b010);
    apply_test(8'hFF,8'h0F,0,3'b010);
    apply_test(8'hF0,8'h0F,0,3'b010);
    apply_test(8'hCC,8'hAA,0,3'b010);
    apply_test(8'h12,8'h34,0,3'b010);
    apply_test(8'hFF,8'hFF,0,3'b010);
    apply_test(8'h00,8'hFF,0,3'b010);
    apply_test(8'h81,8'h18,0,3'b010);
    apply_test(8'h7E,8'h3C,0,3'b010);
    apply_test(8'hA5,8'h5A,0,3'b010);
    apply_test(8'h11,8'h22,0,3'b010);
    apply_test(8'hFE,8'hEF,0,3'b010);
    apply_test(8'hC3,8'h3C,0,3'b010);
    apply_test(8'h69,8'h96,0,3'b010);
    apply_test(8'h88,8'h88,0,3'b010);

    apply_test(8'hAA,8'h55,0,3'b011);
    apply_test(8'hF0,8'h0F,0,3'b011);
    apply_test(8'h00,8'hFF,0,3'b011);
    apply_test(8'h12,8'h34,0,3'b011);
    apply_test(8'hCC,8'h33,0,3'b011);
    apply_test(8'hA5,8'h5A,0,3'b011);
    apply_test(8'h11,8'h22,0,3'b011);
    apply_test(8'hFE,8'h01,0,3'b011);
    apply_test(8'h80,8'h01,0,3'b011);
    apply_test(8'h77,8'h88,0,3'b011);
    apply_test(8'h18,8'h24,0,3'b011);
    apply_test(8'h66,8'h99,0,3'b011);
    apply_test(8'h7E,8'h81,0,3'b011);
    apply_test(8'hC3,8'h3C,0,3'b011);
    apply_test(8'hFF,8'hFF,0,3'b011);

    apply_test(8'hAA,8'h55,0,3'b100);
    apply_test(8'hFF,8'h0F,0,3'b100);
    apply_test(8'hF0,8'h0F,0,3'b100);
    apply_test(8'h12,8'h34,0,3'b100);
    apply_test(8'hCC,8'hAA,0,3'b100);
    apply_test(8'h00,8'hFF,0,3'b100);
    apply_test(8'hA5,8'h5A,0,3'b100);
    apply_test(8'h11,8'h22,0,3'b100);
    apply_test(8'hFE,8'hEF,0,3'b100);
    apply_test(8'h77,8'h88,0,3'b100);
    apply_test(8'h18,8'h24,0,3'b100);
    apply_test(8'hC3,8'h3C,0,3'b100);
    apply_test(8'h69,8'h96,0,3'b100);
    apply_test(8'h81,8'h18,0,3'b100);
    apply_test(8'hFF,8'hFF,0,3'b100);

    apply_test(8'h00,8'h00,0,3'b101);
    apply_test(8'hFF,8'h00,0,3'b101);
    apply_test(8'hAA,8'h00,0,3'b101);
    apply_test(8'h55,8'h00,0,3'b101);
    apply_test(8'hF0,8'h00,0,3'b101);
    apply_test(8'h0F,8'h00,0,3'b101);
    apply_test(8'h81,8'h00,0,3'b101);
    apply_test(8'h18,8'h00,0,3'b101);
    apply_test(8'h7E,8'h00,0,3'b101);
    apply_test(8'h24,8'h00,0,3'b101);
    apply_test(8'hC3,8'h00,0,3'b101);
    apply_test(8'h3C,8'h00,0,3'b101);
    apply_test(8'h69,8'h00,0,3'b101);
    apply_test(8'h96,8'h00,0,3'b101);
    apply_test(8'h11,8'h00,0,3'b101);

    apply_test(8'h01,8'h02,0,3'b111);
    apply_test(8'h02,8'h00,0,3'b111);
    apply_test(8'h04,8'h01,0,3'b111);
    apply_test(8'h08,8'h01,0,3'b111);
    apply_test(8'h10,8'h01,0,3'b111);
    apply_test(8'h20,8'h01,0,3'b111);
    apply_test(8'h40,8'h01,0,3'b111);
    apply_test(8'h80,8'h02,0,3'b111);
    apply_test(8'hAA,8'h03,0,3'b111);
    apply_test(8'h55,8'h04,0,3'b111);
    apply_test(8'hF0,8'h01,0,3'b111);
    apply_test(8'h0F,8'h01,0,3'b111);
    apply_test(8'h33,8'h01,0,3'b111);
    apply_test(8'hCC,8'h02,0,3'b111);
    apply_test(8'h7E,8'h01,0,3'b111);

    apply_test(8'h80,8'h01,0,3'b111);
    apply_test(8'h40,8'h01,0,3'b111);
    apply_test(8'h20,8'h02,0,3'b111);
    apply_test(8'h10,8'h03,0,3'b111);
    apply_test(8'h08,8'h04,0,3'b111);
    apply_test(8'h04,8'h05,0,3'b111);
    apply_test(8'h02,8'h06,0,3'b111);
    apply_test(8'h01,8'h01,0,3'b111);
    apply_test(8'hAA,8'h02,0,3'b111);
    apply_test(8'h55,8'h03,0,3'b111);
    apply_test(8'hF0,8'h04,0,3'b111);
    apply_test(8'h0F,8'h01,0,3'b111);
    apply_test(8'h33,8'h01,0,3'b111);
    apply_test(8'hCC,8'h02,0,3'b111);
    apply_test(8'h7E,8'h03,0,3'b111);

    #20;
    $finish;

end

endmodule
