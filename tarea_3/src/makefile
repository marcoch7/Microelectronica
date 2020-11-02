pruebas_1:
	sed -i 's/`include "definiciones.*"/`include "definiciones.v"/' libreria.v
	sed -i 's/`include "sumador_rizado.*"/`include "sumador_rizado.v"/' banco_pruebas.v
	iverilog banco_pruebas.v -o out.vvp
	vvp out.vvp
	gtkwave wf.gtkw

pruebas_2:
	sed -i 's/`include "definiciones.*"/`include "definiciones_1.v"/' libreria.v
	sed -i 's/`include "sumador_rizado.*"/`include "sumador_rizado.v"/' banco_pruebas.v
	iverilog banco_pruebas.v -o out.vvp
	vvp out.vvp
	gtkwave wf.gtkw
	
pruebas_3:
	sed -i 's/`include "definiciones.*"/`include "definiciones.v"/' libreria.v
	sed -i 's/`include "sumador_rizado.*"/`include "sumador_rizado_v2.v"/' banco_pruebas.v
	iverilog banco_pruebas.v -o out.vvp
	vvp out.vvp
	gtkwave wf.gtkw