`include "counter.v"

module tt_counter (
    input clk,
    input reset,
    input enable,
    input [31:0] D_32b,
    input [1:0] mode,
    output [31:0] Q_32b,
    output rco_32b,
    output load_32b
);

// wires
wire rco_zero, rco_one, rco_two, rco_three, rco_four, rco_five, rco_six, rco_seven;
wire load_zero, load_one, load_two, load_three, load_four, load_five, load_six, load_seven;
wire clk_one, clk_two, clk_three, clk_four, clk_five, clk_six, clk_seven;
wire enable_one, enable_two, enable_three, enable_four, enable_five, enable_six, enable_seven;
wire [1:0] mode_newer;

// assigns
// enables
assign enable_one = enable;
assign enable_two = enable;
assign enable_three = enable;
assign enable_four = enable;
assign enable_five = enable;
assign enable_six = enable;
assign enable_seven = enable;

// modes
//assign mode_new = (mode == 3'b000 || mode == 3'b010 || mode == 3'b011 || mode == 3'b100) ? mode : 3'b100;
assign mode_newer = (mode == 2'b10) ? 2'b01 : mode;

//clks
assign clk_one = (reset == 1 || enable == 0 || mode == 2'b11) ? clk : rco_zero;
assign clk_two = (reset == 1 || enable == 0 || mode == 2'b11) ? clk : rco_one;
assign clk_three = (reset == 1 || enable == 0 || mode == 2'b11) ? clk : rco_two;
assign clk_four = (reset == 1 || enable == 0 || mode == 2'b11) ? clk : rco_three;
assign clk_five = (reset == 1 || enable == 0 || mode == 2'b11) ? clk : rco_four;
assign clk_six = (reset == 1 || enable == 0 || mode == 2'b11) ? clk : rco_five;
assign clk_seven = (reset == 1 || enable == 0 || mode == 2'b11) ? clk : rco_six;

// outputs
assign load_32b = (load_zero && load_one && load_two && load_three && load_four && load_five && load_six && load_seven);



// modules
counter counter_zero(
    .clk        (clk),
    .reset      (reset),
    .enable     (enable),
    .D          (D_32b[3:0]),
    .mode       (mode),
    .Q          (Q_32b[3:0]),
    .rco        (rco_zero),
    .load       (load_zero)
);

counter counter_one(
    .clk        (clk_one),
    .reset      (reset),
    .enable     (enable_one),
    .D          (D_32b[7:4]),
    .mode       (mode_newer),
    .Q          (Q_32b[7:4]),
    .rco        (rco_one),
    .load       (load_one)
);

counter counter_two(
    .clk        (clk_two),
    .reset      (reset),
    .enable     (enable_two),
    .D          (D_32b[11:8]),
    .mode       (mode_newer),
    .Q          (Q_32b[11:8]),
    .rco        (rco_two),
    .load       (load_two)
);

counter counter_three(
    .clk        (clk_three),
    .reset      (reset),
    .enable     (enable_three),
    .D          (D_32b[15:12]),
    .mode       (mode_newer),
    .Q          (Q_32b[15:12]),
    .rco        (rco_three),
    .load       (load_three)
);

counter counter_four(
    .clk        (clk_four),
    .reset      (reset),
    .enable     (enable_four),
    .D          (D_32b[19:16]),
    .mode       (mode_newer),
    .Q          (Q_32b[19:16]),
    .rco        (rco_four),
    .load       (load_four)
);

counter counter_five(
    .clk        (clk_five),
    .reset      (reset),
    .enable     (enable_five),
    .D          (D_32b[23:20]),
    .mode       (mode_newer),
    .Q          (Q_32b[23:20]),
    .rco        (rco_five),
    .load       (load_five)
);

counter counter_six(
    .clk        (clk_six),
    .reset      (reset),
    .enable     (enable_six),
    .D          (D_32b[27:24]),
    .mode       (mode_newer),
    .Q          (Q_32b[27:24]),
    .rco        (rco_six),
    .load       (load_six)
);

counter counter_seven(
    .clk        (clk_seven),
    .reset      (reset),
    .enable     (enable_seven),
    .D          (D_32b[31:28]),
    .mode       (mode_newer),
    .Q          (Q_32b[31:28]),
    .rco        (rco_32b),
    .load       (load_seven)
);


endmodule
