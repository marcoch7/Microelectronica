// Testbench
`include "scoreboard.v"


module testbench( 

    output reg enable_, 
    input clk, 
    output reg reset, 
    output reg [1:0] mode_, 
    output reg [3:0] D_, 
    input load_, 
    input rco_, 
    input [3:0] Q_A,
    input rco_A, load_A

);

clk clock_tb (.clock (clock));

`include "driver_random.v"
`include "checker.v"

parameter ITERATIONS = 100;
integer log_A;
integer log_B;
integer log_C;

initial begin

    $dumpfile("tba.vcd");
    $dumpvars(0);

    // Open logs
    log_A = $fopen("tba.log_A");
    $fdisplay(log_A, "time=%5d, Simulation Start", $time); ////////
    $fdisplay(log_A, "time=%5d, Starting Reset", $time); ///////

    drv_init();

    $fdisplay(log_A, "time=%5d, Reset Completed", $time); /////
    $fdisplay(log_A, "time=%5d, Starting Test", $time);

    fork
        drv_request(ITERATIONS);   
        checker(ITERATIONS);
    join

    // Close logs
    $fdisplay(log_A, "time=%5d, Test Completed", $time);
    $fdisplay(log_A, "time=%5d, Simulation Completed", $time);
    $fclose(log_A);

    #200 $finish;
end

scoreboard sb(
    .reset (reset),
    .clk (clk),
    .enable_ (enable_),
    .D_sb4 (D_),
    .mode_sb4 (mode_)
);



endmodule