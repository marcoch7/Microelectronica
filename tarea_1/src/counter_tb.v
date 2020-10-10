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

`include "driver_random.v"
`include "checker.v"

parameter ITERATIONS = 100;
integer log_A;
integer log_B;
integer log_C;

initial begin

    $dumpfile("tb.vcd");
    $dumpvars(0);

    // Open logs
    log_A = $fopen("tb.log_A");
    $fdisplay(log_A, "time=%5d, Simulation Start", $time); ////////
    $fdisplay(log_A, "time=%5d, Starting Reset", $time); ///////

    log_B = $fopen("tb.log_B");
    $fdisplay(log_B, "time=%5d, Simulation Start", $time); ////////
    $fdisplay(log_B, "time=%5d, Starting Reset", $time); ///////

    log_C = $fopen("tb.log_C");
    $fdisplay(log_C, "time=%5d, Simulation Start", $time); ////////
    $fdisplay(log_C, "time=%5d, Starting Reset", $time); ///////

    drv_init();

    $fdisplay(log_A, "time=%5d, Reset Completed", $time); /////
    $fdisplay(log_A, "time=%5d, Starting Test", $time);

    $fdisplay(log_B, "time=%5d, Reset Completed", $time); /////
    $fdisplay(log_B, "time=%5d, Starting Test", $time);

    $fdisplay(log_C, "time=%5d, Reset Completed", $time); /////
    $fdisplay(log_C, "time=%5d, Starting Test", $time);


    fork
        drv_request(ITERATIONS);   
        checker(ITERATIONS);
    join

    // Close logs
    $fdisplay(log_A, "time=%5d, Test Completed", $time);
    $fdisplay(log_A, "time=%5d, Simulation Completed", $time);
    $fclose(log_A);

    $fdisplay(log_B, "time=%5d, Test Completed", $time);
    $fdisplay(log_B, "time=%5d, Simulation Completed", $time);
    $fclose(log_B);

    $fdisplay(log_C, "time=%5d, Test Completed", $time);
    $fdisplay(log_C, "time=%5d, Simulation Completed", $time);
    $fclose(log_C);

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