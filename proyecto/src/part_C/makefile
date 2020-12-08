00:
	sed -i 's/`include "driver.*"/`include "driver_00.v"/' testbench.v
	iverilog top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform.gtkw

01:
	sed -i 's/`include "driver.*"/`include "driver_01.v"/' testbench.v
	iverilog top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform.gtkw
10:
	sed -i 's/`include "driver.*"/`include "driver_10.v"/' testbench.v
	iverilog top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform.gtkw
11:
	sed -i 's/`include "driver.*"/`include "driver_11.v"/' testbench.v
	iverilog top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform.gtkw
reset:
	sed -i 's/`include "driver.*"/`include "driver_reset.v"/' testbench.v
	iverilog top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform.gtkw
invalid:
	sed -i 's/`include "driver.*"/`include "driver_invalid.v"/' testbench.v
	iverilog top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform.gtkw
enable:
	sed -i 's/`include "driver.*"/`include "driver_enable.v"/' testbench.v
	iverilog top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform.gtkw	
random:
	sed -i 's/`include "driver.*"/`include "driver_random.v"/' testbench.v
	iverilog top.v -o out.vvp
	vvp out.vvp
	gtkwave waveform.gtkw