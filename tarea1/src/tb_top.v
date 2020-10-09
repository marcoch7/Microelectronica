
`include "counter_tb.v"
`include "clock.v"
`include "contadorA.v"
`include "contadorB.v"
`include "contadorC.v"
`include "counter.v"
`include "counterr.v"
module tb_top;

wire rco_, load_;
wire [3:0] D_;
wire [1:0] mode_;
wire [3:0] Q_;

//---------------------------DUT wires----------------------

wire rco_A, rco_B, rco_C, load_A, load_B, load_C, rco_x, load_x, rco_R, load_R;
wire [3:0] Q_A;
wire [3:0] Q_B;
wire [3:0] Q_C;
wire [3:0] Q_R;
wire [3:0] Q_x;

clk clock_m (.clock (clock));

counter_tb tb(
    .reset (reset), 
    .enable_ (enable_),
    .D_ (D_),
    .mode_ (mode_),
    .rco_ (rco_),
    .load_ (load_),
    .clk (clock),
    .Q_A (Q_A),
    .Q_B (Q_B),
    .Q_C (Q_C),
    .rco_A (rco_A),
    .rco_B (rco_B),
    .rco_C (rco_C),
    .load_A (load_A),
    .load_B (load_B),
    .load_C (load_C)
);

counter_A dut_A (
    .clk (clock),
    .reset (reset),
    .enable (enable_),
    .D (D_),
    .mode (mode_),
    .Q_A (Q_A),
    .rco_A (rco_A),
    .load_A (load_A)
);

counter_B dut_B (
    .clk (clock),
    .reset (reset),
    .enable (enable_),
    .D (D_),
    .mode (mode_),
    .Q_B (Q_B),
    .rco_B (rco_B),
    .load_B (load_B)
);

counter_C dut_C (
    .clk (clock),
    .reset (reset),
    .enable (enable_),
    .D (D_),
    .mode (mode_),
    .Q_C (Q_C),
    .rco_C (rco_C),
    .load_C (load_C)
);

counter dut_ (
    .clk (clock),
    .reset (reset),
    .enable (enable_),
    .D (D_),
    .mode (mode_),
    .Q (Q_x),
    .rco (rco_x),
    .load (load_x)
);

counterr dut_r (
    .clk (clock),
    .reset (reset),
    .enable (enable_),
    .D (D_),
    .mode (mode_),
    .Q (Q_R),
    .rco (rco_R),
    .load (load_R)
);

endmodule


