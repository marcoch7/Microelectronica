read_verilog counter.v
hierarchy -check -top counter
proc; opt; fsm; opt; memory; opt
techmap; opt
dfflibmap -liberty cmos_cells.lib
abc -liberty cmos_cells.lib
clean
write_verilog c_synth.v
