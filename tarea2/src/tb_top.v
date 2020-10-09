
`include "timescale.v"
`include "counter_tb.v"
`include "clock.v"
`include "counter.v"
`include "c_synth.v"
`include "cmos_cells.v"
module tb_top;

wire rco_, load_;
wire [3:0] D_;
wire [1:0] mode_;
wire [3:0] Q_;

//---------------------------DUT wires----------------------

wire rco_s, load_s, rco_e, load_e;
wire [3:0] Q_s;
wire [3:0] Q_e;

clk clock_m (.clock (clock));

counter_tb tb(
    .reset (reset), 
    .enable_ (enable_),
    .D_ (D_),
    .mode_ (mode_),
    .rco_ (rco_),
    .load_ (load_),
    .clk (clock),
    .Q_e (Q_e),
    .Q_s (Q_s),
    .rco_e (rco_e),
    .rco_s (rco_s),
    .load_e (load_e),
    .load_s (load_s)
);


c_synth dut_s (
    .clk (clock),
    .reset (reset),
    .enable (enable_),
    .D_synth (D_),
    .mode (mode_),
    .Q_synth (Q_s),
    .rco_synth (rco_s),
    .load_synth (load_s)
);

counter dut_e (
    .clk (clock),
    .reset (reset),
    .enable (enable_),
    .i_D (D_),
    .mode (mode_),
    .o_Q (Q_e),
    .rco (rco_e),
    .load (load_e)
);

endmodule


