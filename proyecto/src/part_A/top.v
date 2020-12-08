
`include "testbench.v" 
`include "clock.v"
`include "counter.v"

module top;

wire rco_, load_;
wire [3:0] D_;
wire [1:0] mode_;
wire [3:0] Q_;

//---------------------------DUT wires----------------------

wire rco_A, load_A, rco_x, load_x;
wire [3:0] Q_A;
wire [3:0] Q_x;

clk clock_m (.clock (clock));

testbench tb(
    .reset (reset), 
    .enable_ (enable_),
    .D_ (D_),
    .mode_ (mode_),
    .rco_ (rco_),
    .load_ (load_),
    .clk (clock),
    .Q_A (Q_A),
    .rco_A (rco_A), 
    .load_A (load_A)
);

counter dut (
    .clk (clock),
    .reset (reset),
    .enable (enable_),
    .D (D_),
    .mode (mode_),
    .Q (Q_x),
    .rco (rco_x),
    .load (load_x)
);


endmodule


