#! /usr/bin/vvp
:ivl_version "10.1 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x560127b7e8d0 .scope module, "top" "top" 2 6;
 .timescale 0 0;
v0x560127b9f840_0 .net "D_", 3 0, v0x560127b9ed20_0;  1 drivers
o0x7f1e095ed588 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0x560127b9f920_0 .net "Q_A", 3 0, o0x7f1e095ed588;  0 drivers
v0x560127b9f9e0_0 .net "Q_x", 3 0, v0x560127b6cf00_0;  1 drivers
v0x560127b9fa80_0 .net "clock", 0 0, v0x560127b732b0_0;  1 drivers
v0x560127b9fbb0_0 .net "enable_", 0 0, v0x560127b9f070_0;  1 drivers
o0x7f1e095ed5b8 .functor BUFZ 1, C4<z>; HiZ drive
v0x560127b9fc50_0 .net "load_", 0 0, o0x7f1e095ed5b8;  0 drivers
o0x7f1e095ed5e8 .functor BUFZ 1, C4<z>; HiZ drive
v0x560127b9fcf0_0 .net "load_A", 0 0, o0x7f1e095ed5e8;  0 drivers
v0x560127b9fd90_0 .net "load_x", 0 0, v0x560127b6f1e0_0;  1 drivers
v0x560127b9fe60_0 .net "mode_", 1 0, v0x560127b9f3d0_0;  1 drivers
o0x7f1e095ed648 .functor BUFZ 1, C4<z>; HiZ drive
v0x560127b9ff90_0 .net "rco_", 0 0, o0x7f1e095ed648;  0 drivers
o0x7f1e095ed678 .functor BUFZ 1, C4<z>; HiZ drive
v0x560127ba0060_0 .net "rco_A", 0 0, o0x7f1e095ed678;  0 drivers
v0x560127ba0130_0 .net "rco_x", 0 0, v0x560127b9d3a0_0;  1 drivers
v0x560127ba0200_0 .net "reset", 0 0, v0x560127b9f610_0;  1 drivers
S_0x560127b7ea50 .scope module, "clock_m" "clk" 2 19, 3 1 0, S_0x560127b7e8d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "clock"
v0x560127b732b0_0 .var "clock", 0 0;
S_0x560127b9cbc0 .scope module, "dut" "counter" 2 34, 4 1 0, S_0x560127b7e8d0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "reset"
    .port_info 2 /INPUT 1 "enable"
    .port_info 3 /INPUT 4 "D"
    .port_info 4 /INPUT 2 "mode"
    .port_info 5 /OUTPUT 4 "Q"
    .port_info 6 /OUTPUT 1 "rco"
    .port_info 7 /OUTPUT 1 "load"
P_0x560127b9cd90 .param/l "q_d" 0 4 1, C4<011>;
P_0x560127b9cdd0 .param/l "q_m_one" 0 4 1, C4<001>;
P_0x560127b9ce10 .param/l "q_m_three" 0 4 1, C4<010>;
P_0x560127b9ce50 .param/l "q_p_one" 0 4 1, C4<000>;
P_0x560127b9ce90 .param/l "q_zero" 0 4 1, C4<100>;
v0x560127b735c0_0 .net "D", 3 0, v0x560127b9ed20_0;  alias, 1 drivers
v0x560127b6cf00_0 .var "Q", 3 0;
v0x560127b6ed60_0 .net "clk", 0 0, v0x560127b732b0_0;  alias, 1 drivers
v0x560127b6eee0_0 .net "enable", 0 0, v0x560127b9f070_0;  alias, 1 drivers
v0x560127b6f1e0_0 .var "load", 0 0;
v0x560127b6ce60_0 .net "mode", 1 0, v0x560127b9f3d0_0;  alias, 1 drivers
v0x560127b9d3a0_0 .var "rco", 0 0;
v0x560127b9d460_0 .net "reset", 0 0, v0x560127b9f610_0;  alias, 1 drivers
E_0x560127b5a1a0 .event negedge, v0x560127b732b0_0;
E_0x560127b5a7e0 .event posedge, v0x560127b732b0_0;
S_0x560127b9d670 .scope module, "tb" "testbench" 2 21, 5 5 0, S_0x560127b7e8d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "enable_"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /OUTPUT 1 "reset"
    .port_info 3 /OUTPUT 2 "mode_"
    .port_info 4 /OUTPUT 4 "D_"
    .port_info 5 /INPUT 1 "load_"
    .port_info 6 /INPUT 1 "rco_"
    .port_info 7 /INPUT 4 "Q_A"
    .port_info 8 /INPUT 1 "rco_A"
    .port_info 9 /INPUT 1 "load_A"
P_0x560127b9d7f0 .param/l "ITERATIONS" 0 5 24, +C4<00000000000000000000000001100100>;
v0x560127b9ed20_0 .var "D_", 3 0;
v0x560127b9ee50_0 .net "Q_A", 3 0, o0x7f1e095ed588;  alias, 0 drivers
v0x560127b9ef30_0 .net "clk", 0 0, v0x560127b732b0_0;  alias, 1 drivers
v0x560127b9efd0_0 .net "clock", 0 0, v0x560127b9de70_0;  1 drivers
v0x560127b9f070_0 .var "enable_", 0 0;
v0x560127b9f1b0_0 .net "load_", 0 0, o0x7f1e095ed5b8;  alias, 0 drivers
v0x560127b9f250_0 .net "load_A", 0 0, o0x7f1e095ed5e8;  alias, 0 drivers
v0x560127b9f2f0_0 .var/i "log_A", 31 0;
v0x560127b9f3d0_0 .var "mode_", 1 0;
v0x560127b9f490_0 .net "rco_", 0 0, o0x7f1e095ed648;  alias, 0 drivers
v0x560127b9f550_0 .net "rco_A", 0 0, o0x7f1e095ed678;  alias, 0 drivers
v0x560127b9f610_0 .var "reset", 0 0;
S_0x560127b9d990 .scope task, "checker" "checker" 6 1, 6 1 0, S_0x560127b9d670;
 .timescale 0 0;
v0x560127b9db60_0 .var/i "iteration", 31 0;
TD_top.tb.checker ;
    %load/vec4 v0x560127b9db60_0;
T_0.0 %dup/vec4;
    %pushi/vec4 0, 0, 32;
    %cmp/s;
    %jmp/1xz T_0.1, 5;
    %jmp/1 T_0.1, 4;
    %pushi/vec4 1, 0, 32;
    %sub;
    %wait E_0x560127b5a7e0;
    %load/vec4 v0x560127b9e6f0_0;
    %load/vec4 v0x560127b9eb00_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x560127b9e970_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x560127b9ee50_0;
    %load/vec4 v0x560127b9f550_0;
    %concat/vec4; draw_concat_vec4
    %load/vec4 v0x560127b9f250_0;
    %concat/vec4; draw_concat_vec4
    %cmp/e;
    %jmp/0xz  T_0.2, 4;
    %jmp T_0.3;
T_0.2 ;
    %vpi_call 6 11 "$fdisplay", v0x560127b9f2f0_0, "Time=%.0f Error dut_A: Q=%b, rco=%b, load=%b, scoreboard: Q_=%b, rco_=%b, load_=%b", $time, v0x560127b9ee50_0, v0x560127b9f550_0, v0x560127b9f250_0, v0x560127b9e6f0_0, v0x560127b9eb00_0, v0x560127b9e970_0 {0 0 0};
T_0.3 ;
    %jmp T_0.0;
T_0.1 ;
    %pop/vec4 1;
    %end;
S_0x560127b9dc60 .scope module, "clock_tb" "clk" 5 19, 3 1 0, S_0x560127b9d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "clock"
v0x560127b9de70_0 .var "clock", 0 0;
S_0x560127b9df90 .scope task, "drv_init" "drv_init" 7 2, 7 2 0, S_0x560127b9d670;
 .timescale 0 0;
TD_top.tb.drv_init ;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9f610_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9f070_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x560127b9f3d0_0, 0, 2;
    %pushi/vec4 1, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 2, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x560127b9f070_0, 0, 1;
    %pushi/vec4 3, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %end;
S_0x560127b9e160 .scope task, "drv_request" "drv_request" 7 19, 7 19 0, S_0x560127b9d670;
 .timescale 0 0;
v0x560127b9e330_0 .var/i "iteration", 31 0;
TD_top.tb.drv_request ;
    %load/vec4 v0x560127b9e330_0;
T_2.4 %dup/vec4;
    %pushi/vec4 0, 0, 32;
    %cmp/s;
    %jmp/1xz T_2.5, 5;
    %jmp/1 T_2.5, 4;
    %pushi/vec4 1, 0, 32;
    %sub;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x560127b9f3d0_0, 0, 2;
    %pushi/vec4 4, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 5, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x560127b9f610_0, 0, 1;
    %pushi/vec4 6, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9f610_0, 0, 1;
    %pushi/vec4 7, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 8, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 9, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 10, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 11, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 12, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x560127b9f3d0_0, 0, 2;
    %pushi/vec4 13, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 14, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 15, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 15, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 15, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 15, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x560127b9f3d0_0, 0, 2;
    %pushi/vec4 13, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x560127b9f3d0_0, 0, 2;
    %pushi/vec4 13, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 13, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 13, 0, 4;
    %store/vec4 v0x560127b9ed20_0, 0, 4;
    %jmp T_2.4;
T_2.5 ;
    %pop/vec4 1;
    %end;
S_0x560127b9e3f0 .scope module, "sb" "scoreboard" 5 57, 8 1 0, S_0x560127b9d670;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "reset"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /INPUT 1 "enable_"
    .port_info 3 /INPUT 4 "D_sb4"
    .port_info 4 /INPUT 2 "mode_sb4"
v0x560127b9e610_0 .net "D_sb4", 3 0, v0x560127b9ed20_0;  alias, 1 drivers
v0x560127b9e6f0_0 .var "Q_sb4", 3 0;
v0x560127b9e7b0_0 .net "clk", 0 0, v0x560127b732b0_0;  alias, 1 drivers
v0x560127b9e8d0_0 .net "enable_", 0 0, v0x560127b9f070_0;  alias, 1 drivers
v0x560127b9e970_0 .var "load_sb4", 0 0;
v0x560127b9ea60_0 .net "mode_sb4", 1 0, v0x560127b9f3d0_0;  alias, 1 drivers
v0x560127b9eb00_0 .var "rco_sb4", 0 0;
v0x560127b9eba0_0 .net "reset", 0 0, v0x560127b9f610_0;  alias, 1 drivers
    .scope S_0x560127b7ea50;
T_3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b732b0_0, 0, 1;
    %end;
    .thread T_3;
    .scope S_0x560127b7ea50;
T_4 ;
    %delay 5, 0;
    %load/vec4 v0x560127b732b0_0;
    %nor/r;
    %store/vec4 v0x560127b732b0_0, 0, 1;
    %jmp T_4;
    .thread T_4;
    .scope S_0x560127b9dc60;
T_5 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9de70_0, 0, 1;
    %end;
    .thread T_5;
    .scope S_0x560127b9dc60;
T_6 ;
    %delay 5, 0;
    %load/vec4 v0x560127b9de70_0;
    %nor/r;
    %store/vec4 v0x560127b9de70_0, 0, 1;
    %jmp T_6;
    .thread T_6;
    .scope S_0x560127b9e3f0;
T_7 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9eb00_0, 0, 1;
    %end;
    .thread T_7;
    .scope S_0x560127b9e3f0;
T_8 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9e970_0, 0, 1;
    %end;
    .thread T_8;
    .scope S_0x560127b9e3f0;
T_9 ;
    %wait E_0x560127b5a7e0;
    %load/vec4 v0x560127b9eba0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x560127b9e8d0_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9eb00_0, 0;
    %load/vec4 v0x560127b9ea60_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_9.2, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9e970_0, 0;
    %load/vec4 v0x560127b9e6f0_0;
    %cmpi/e 15, 0, 4;
    %jmp/0xz  T_9.4, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560127b9eb00_0, 0;
T_9.4 ;
    %load/vec4 v0x560127b9e6f0_0;
    %addi 1, 0, 4;
    %assign/vec4 v0x560127b9e6f0_0, 0;
    %jmp T_9.3;
T_9.2 ;
    %load/vec4 v0x560127b9ea60_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_9.6, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9e970_0, 0;
    %load/vec4 v0x560127b9e6f0_0;
    %cmpi/e 0, 0, 4;
    %jmp/0xz  T_9.8, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560127b9eb00_0, 0;
T_9.8 ;
    %load/vec4 v0x560127b9e6f0_0;
    %subi 1, 0, 4;
    %assign/vec4 v0x560127b9e6f0_0, 0;
    %jmp T_9.7;
T_9.6 ;
    %load/vec4 v0x560127b9ea60_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_9.10, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9e970_0, 0;
    %load/vec4 v0x560127b9e6f0_0;
    %cmpi/e 0, 0, 4;
    %flag_mov 8, 4;
    %load/vec4 v0x560127b9e6f0_0;
    %cmpi/e 1, 0, 4;
    %flag_or 4, 8;
    %flag_mov 8, 4;
    %load/vec4 v0x560127b9e6f0_0;
    %cmpi/e 2, 0, 4;
    %flag_or 4, 8;
    %jmp/0xz  T_9.12, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560127b9eb00_0, 0;
T_9.12 ;
    %load/vec4 v0x560127b9e6f0_0;
    %subi 3, 0, 4;
    %assign/vec4 v0x560127b9e6f0_0, 0;
    %jmp T_9.11;
T_9.10 ;
    %load/vec4 v0x560127b9ea60_0;
    %cmpi/e 3, 0, 2;
    %jmp/0xz  T_9.14, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560127b9e970_0, 0;
    %load/vec4 v0x560127b9e610_0;
    %assign/vec4 v0x560127b9e6f0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9eb00_0, 0;
T_9.14 ;
T_9.11 ;
T_9.7 ;
T_9.3 ;
    %jmp T_9.1;
T_9.0 ;
    %load/vec4 v0x560127b9eba0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_9.16, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9eb00_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9e970_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x560127b9e6f0_0, 0;
    %jmp T_9.17;
T_9.16 ;
    %load/vec4 v0x560127b9eba0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x560127b9e8d0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.18, 8;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x560127b9e6f0_0, 0;
T_9.18 ;
T_9.17 ;
T_9.1 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x560127b9e3f0;
T_10 ;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9eb00_0, 0;
    %jmp T_10;
    .thread T_10;
    .scope S_0x560127b9d670;
T_11 ;
    %vpi_call 5 31 "$dumpfile", "tba.vcd" {0 0 0};
    %vpi_call 5 32 "$dumpvars", 32'sb00000000000000000000000000000000 {0 0 0};
    %vpi_func 5 35 "$fopen" 32, "tba.log_A" {0 0 0};
    %store/vec4 v0x560127b9f2f0_0, 0, 32;
    %vpi_call 5 36 "$fdisplay", v0x560127b9f2f0_0, "time=%5d, Simulation Start", $time {0 0 0};
    %vpi_call 5 37 "$fdisplay", v0x560127b9f2f0_0, "time=%5d, Starting Reset", $time {0 0 0};
    %fork TD_top.tb.drv_init, S_0x560127b9df90;
    %join;
    %vpi_call 5 41 "$fdisplay", v0x560127b9f2f0_0, "time=%5d, Reset Completed", $time {0 0 0};
    %vpi_call 5 42 "$fdisplay", v0x560127b9f2f0_0, "time=%5d, Starting Test", $time {0 0 0};
    %fork t_1, S_0x560127b9d670;
    %fork t_2, S_0x560127b9d670;
    %join;
    %join;
    %jmp t_0;
t_1 ;
    %pushi/vec4 100, 0, 32;
    %store/vec4 v0x560127b9e330_0, 0, 32;
    %fork TD_top.tb.drv_request, S_0x560127b9e160;
    %join;
    %end;
t_2 ;
    %pushi/vec4 100, 0, 32;
    %store/vec4 v0x560127b9db60_0, 0, 32;
    %fork TD_top.tb.checker, S_0x560127b9d990;
    %join;
    %end;
    .scope S_0x560127b9d670;
t_0 ;
    %vpi_call 5 50 "$fdisplay", v0x560127b9f2f0_0, "time=%5d, Test Completed", $time {0 0 0};
    %vpi_call 5 51 "$fdisplay", v0x560127b9f2f0_0, "time=%5d, Simulation Completed", $time {0 0 0};
    %vpi_call 5 52 "$fclose", v0x560127b9f2f0_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 5 54 "$finish" {0 0 0};
    %end;
    .thread T_11;
    .scope S_0x560127b9cbc0;
T_12 ;
    %wait E_0x560127b5a7e0;
    %load/vec4 v0x560127b9d460_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9d3a0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b6f1e0_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x560127b6cf00_0, 0;
    %jmp T_12.1;
T_12.0 ;
    %load/vec4 v0x560127b9d460_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x560127b6eee0_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.2, 8;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x560127b6cf00_0, 0;
    %load/vec4 v0x560127b6ce60_0;
    %pad/u 32;
    %cmpi/e 3, 0, 32;
    %jmp/0xz  T_12.4, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9d3a0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560127b6f1e0_0, 0;
    %jmp T_12.5;
T_12.4 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b6f1e0_0, 0;
T_12.5 ;
    %jmp T_12.3;
T_12.2 ;
    %load/vec4 v0x560127b6ce60_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 2;
    %cmp/u;
    %jmp/1 T_12.6, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 2;
    %cmp/u;
    %jmp/1 T_12.7, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 2;
    %cmp/u;
    %jmp/1 T_12.8, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 2;
    %cmp/u;
    %jmp/1 T_12.9, 6;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x560127b6cf00_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b6f1e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9d3a0_0, 0;
    %jmp T_12.11;
T_12.6 ;
    %load/vec4 v0x560127b6cf00_0;
    %cmpi/e 15, 0, 4;
    %jmp/0xz  T_12.12, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560127b9d3a0_0, 0;
    %jmp T_12.13;
T_12.12 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9d3a0_0, 0;
T_12.13 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b6f1e0_0, 0;
    %load/vec4 v0x560127b6cf00_0;
    %addi 1, 0, 4;
    %assign/vec4 v0x560127b6cf00_0, 0;
    %jmp T_12.11;
T_12.7 ;
    %load/vec4 v0x560127b6cf00_0;
    %cmpi/e 0, 0, 4;
    %jmp/0xz  T_12.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x560127b9d3a0_0, 0, 1;
    %jmp T_12.15;
T_12.14 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9d3a0_0, 0, 1;
T_12.15 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b6f1e0_0, 0, 1;
    %load/vec4 v0x560127b6cf00_0;
    %subi 1, 0, 4;
    %assign/vec4 v0x560127b6cf00_0, 0;
    %jmp T_12.11;
T_12.8 ;
    %load/vec4 v0x560127b6cf00_0;
    %pushi/vec4 0, 0, 4;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x560127b6cf00_0;
    %pushi/vec4 1, 0, 4;
    %cmp/e;
    %flag_get/vec4 4;
    %or;
    %load/vec4 v0x560127b6cf00_0;
    %pushi/vec4 2, 0, 4;
    %cmp/e;
    %flag_get/vec4 4;
    %or;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.16, 8;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x560127b9d3a0_0, 0, 1;
    %jmp T_12.17;
T_12.16 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9d3a0_0, 0, 1;
T_12.17 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b6f1e0_0, 0, 1;
    %load/vec4 v0x560127b6cf00_0;
    %subi 3, 0, 4;
    %assign/vec4 v0x560127b6cf00_0, 0;
    %jmp T_12.11;
T_12.9 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560127b9d3a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x560127b6f1e0_0, 0, 1;
    %load/vec4 v0x560127b735c0_0;
    %store/vec4 v0x560127b6cf00_0, 0, 4;
    %jmp T_12.11;
T_12.11 ;
    %pop/vec4 1;
T_12.3 ;
T_12.1 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x560127b9cbc0;
T_13 ;
    %wait E_0x560127b5a1a0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560127b9d3a0_0, 0;
    %jmp T_13;
    .thread T_13;
# The file index is used to find the file name in the following table.
:file_names 9;
    "N/A";
    "<interactive>";
    "top.v";
    "./clock.v";
    "./counter.v";
    "./testbench.v";
    "./checker.v";
    "./driver_00.v";
    "./scoreboard.v";