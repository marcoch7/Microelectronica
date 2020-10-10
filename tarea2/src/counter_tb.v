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
    input [3:0] Q_e,
    input [3:0] Q_s,
    input rco_e, rco_s, load_e, load_s

);

clk clock_tb (.clock (clock));

`include "driver_00.v"
`include "checker.v"

parameter ITERATIONS = 1000;
integer log_s;
integer log_e;

initial begin

    $dumpfile("tb.vcd");
    $dumpvars(0);

    // Open logs
    log_e = $fopen("tb.log_A");
    $fdisplay(log_s, "time=%5d, Simulation Start", $time); ////////
    $fdisplay(log_s, "time=%5d, Starting Reset", $time); ///////

    log_s = $fopen("tb.log_B");
    $fdisplay(log_e, "time=%5d, Simulation Start", $time); ////////
    $fdisplay(log_e, "time=%5d, Starting Reset", $time); ///////

    drv_init();

    $fdisplay(log_s, "time=%5d, Reset Completed", $time); /////
    $fdisplay(log_s, "time=%5d, Starting Test", $time);

    $fdisplay(log_e, "time=%5d, Reset Completed", $time); /////
    $fdisplay(log_e, "time=%5d, Starting Test", $time);


    fork
        drv_request(ITERATIONS);   
        checker(ITERATIONS);
    join

    // Close logs
    $fdisplay(log_e, "time=%5d, Test Completed", $time);
    $fdisplay(log_e, "time=%5d, Simulation Completed", $time);
    $fclose(log_e);

    $fdisplay(log_s, "time=%5d, Test Completed", $time);
    $fdisplay(log_s, "time=%5d, Simulation Completed", $time);
    $fclose(log_s);

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