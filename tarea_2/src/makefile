yosys:
	yosys -s yosys.tcl
	sed -i 's/counter/c_synth/' c_synth.v
	sed -i 's/\<i_D\>/D_synth/' c_synth.v
	sed -i 's/\<o_Q\>/Q_synth/' c_synth.v
	sed -i 's/\<rco\>/rco_synth/' c_synth.v
	sed -i 's/\<load\>/load_synth/' c_synth.v
00:
	sed -i 's/`include "driver.*"/`include "driver_00.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_cond.gtkw

01:
	sed -i 's/`include "driver.*"/`include "driver_01.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_cond.gtkw
10:
	sed -i 's/`include "driver.*"/`include "driver_10.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_cond.gtkw
11:
	sed -i 's/`include "driver.*"/`include "driver_11.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_cond.gtkw
reset:
	sed -i 's/`include "driver.*"/`include "driver_reset.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_cond.gtkw
invalid:
	sed -i 's/`include "driver.*"/`include "driver_invalid.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_cond.gtkw
enable:
	sed -i 's/`include "driver.*"/`include "driver_enable.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_cond.gtkw	
random:
	sed -i 's/`include "driver.*"/`include "driver_random.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_cond.gtkw
##############################Synth#################################
00s:
	sed -i 's/`include "driver.*"/`include "driver_00.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw

01s:
	sed -i 's/`include "driver.*"/`include "driver_01.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
10s:
	sed -i 's/`include "driver.*"/`include "driver_10.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
11s:
	sed -i 's/`include "driver.*"/`include "driver_11.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
resets:
	sed -i 's/`include "driver.*"/`include "driver_reset.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
invalids:
	sed -i 's/`include "driver.*"/`include "driver_invalid.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
enables:
	sed -i 's/`include "driver.*"/`include "driver_enable.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw	
randoms:
	sed -i 's/`include "driver.*"/`include "driver_random.v"/' counter_tb.v
	iverilog tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
##############################Synth+delay###########################	
00g:
	sed -i 's/`include "driver.*"/`include "driver_00.v"/' counter_tb.v
	iverilog -gspecify tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw

01g:
	sed -i 's/`include "driver.*"/`include "driver_01.v"/' counter_tb.v
	iverilog -gspecify tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
10g:
	sed -i 's/`include "driver.*"/`include "driver_10.v"/' counter_tb.v
	iverilog -gspecify tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
11g:
	sed -i 's/`include "driver.*"/`include "driver_11.v"/' counter_tb.v
	iverilog -gspecify tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
resetg:
	sed -i 's/`include "driver.*"/`include "driver_reset.v"/' counter_tb.v
	iverilog -gspecify tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
invalidg:
	sed -i 's/`include "driver.*"/`include "driver_invalid.v"/' counter_tb.v
	iverilog -gspecify tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw
enableg:
	sed -i 's/`include "driver.*"/`include "driver_enable.v"/' counter_tb.v
	iverilog -gspecify tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw	
randomg:
	sed -i 's/`include "driver.*"/`include "driver_random.v"/' counter_tb.v
	iverilog -gspecify tb_top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform_estr.gtkw	