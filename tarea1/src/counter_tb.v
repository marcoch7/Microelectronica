// Testbench
`include "scoreboard.v"


module counter_tb( 

    output reg enable_, 
    input clk, 
    output reg reset, 
    output reg [1:0] mode_, 
    output reg [3:0] D_, 
    input load_, 
    input rco_, 
    input [3:0] Q_A,
    input [3:0] Q_B,
    input [3:0] Q_C,
    input rco_A, rco_B, rco_C, load_A, load_B, load_C

);

clk clock_tb (.clock (clock));

`include "driver_enable.v"
`include "checker.v"

parameter ITERATIONS = 100;
integer log;


initial begin

    $dumpfile("tb.vcd");
    $dumpvars(0);

    log = $fopen("tb.log");
    $fdisplay(log, "time=%5d, Simulation Start", $time); ////////
    $fdisplay(log, "time=%5d, Starting Reset", $time); ///////

    drv_init();

    $fdisplay(log, "time=%5d, Reset Completed", $time); /////

    $fdisplay(log, "time=%5d, Starting Test", $time);
    fork
        drv_request(ITERATIONS);   
        checker(ITERATIONS);
    join
    $fdisplay(log, "time=%5d, Test Completed", $time);
    $fdisplay(log, "time=%5d, Simulation Completed", $time);
    $fclose(log);
    #200 $finish;
end

scoreboard sb(
    .reset (reset),
    .clk (clk),
    .enable_ (enable_),
    .D_ (D_),
    .mode_ (mode_)
);



endmodule