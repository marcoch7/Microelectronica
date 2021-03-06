module counter (clk, reset, enable, D, mode, Q, rco, load);

input clk;
input reset;
input enable;
output rco;
output load;
input [3:0] D;
input [1:0] mode;
output [3:0] Q;

wire vdd = 1'b1;
wire gnd = 1'b0;

	INVX1 INVX1_1 ( .A(reset), .Y(_2_) );
	NAND2X1 NAND2X1_1 ( .A(enable), .B(_2_), .Y(_3_) );
	INVX1 INVX1_2 ( .A(mode[1]), .Y(_4_) );
	INVX2 INVX2_1 ( .A(mode[0]), .Y(_5_) );
	NOR2X1 NOR2X1_1 ( .A(_4_), .B(_5_), .Y(_6_) );
	NAND2X1 NAND2X1_2 ( .A(D[0]), .B(_6_), .Y(_7_) );
	INVX1 INVX1_3 ( .A(_40__0_), .Y(_8_) );
	OAI21X1 OAI21X1_1 ( .A(_4_), .B(_5_), .C(_8_), .Y(_9_) );
	AOI21X1 AOI21X1_1 ( .A(_7_), .B(_9_), .C(_3_), .Y(_0__0_) );
	NAND2X1 NAND2X1_3 ( .A(D[1]), .B(_6_), .Y(_10_) );
	INVX1 INVX1_4 ( .A(_40__1_), .Y(_11_) );
	NAND2X1 NAND2X1_4 ( .A(mode[0]), .B(_4_), .Y(_12_) );
	NAND2X1 NAND2X1_5 ( .A(_15_), .B(_16_), .Y(_13_) );
	NAND2X1 NAND2X1_6 ( .A(mode[1]), .B(_5_), .Y(_14_) );
	OAI21X1 OAI21X1_2 ( .A(mode[1]), .B(_5_), .C(_11_), .Y(_15_) );
	OAI21X1 OAI21X1_3 ( .A(_5_), .B(_11_), .C(_12_), .Y(_16_) );
	AOI21X1 AOI21X1_2 ( .A(_13_), .B(_10_), .C(_3_), .Y(_0__1_) );
	NAND2X1 NAND2X1_7 ( .A(mode[0]), .B(_4_), .Y(_17_) );
	INVX1 INVX1_5 ( .A(_23_), .Y(_18_) );
	NAND3X1 NAND3X1_1 ( .A(_37__0_), .B(_37__1_), .C(_37__2_), .Y(_19_) );
	OAI21X1 OAI21X1_4 ( .A(_37__0_), .B(_37__1_), .C(_37__2_), .Y(_20_) );
	AOI21X1 AOI21X1_3 ( .A(_17_), .B(_18_), .C(_14_), .Y(_21_) );
	AOI21X1 AOI21X1_4 ( .A(D[2]), .B(_6_), .C(_19_), .Y(_22_) );
	NOR2X1 NOR2X1_2 ( .A(_37__0_), .B(_37__1_), .Y(_23_) );
	NAND3X1 NAND3X1_2 ( .A(_15_), .B(_37__3_), .C(_16_), .Y(_24_) );
	NAND2X1 NAND2X1_8 ( .A(_18_), .B(_13_), .Y(_25_) );
	AND2X2 AND2X2_1 ( .A(_24_), .B(_22_), .Y(_26_) );
	NAND2X1 NAND2X1_9 ( .A(mode[1]), .B(_5_), .Y(_27_) );
	AOI21X1 AOI21X1_5 ( .A(_37__0_), .B(_37__1_), .C(_37__2_), .Y(_28_) );
	AOI21X1 AOI21X1_6 ( .A(_24_), .B(_22_), .C(_26_), .Y(_29_) );
	AOI21X1 AOI21X1_7 ( .A(_25_), .B(_21_), .C(_27_), .Y(_0__2_) );
	INVX1 INVX1_6 ( .A(_26_), .Y(_30_) );
	XNOR2X1 XNOR2X1_1 ( .A(_37__0_), .B(_40__3_), .Y(_31_) );
	AOI21X1 AOI21X1_8 ( .A(_28_), .B(_20_), .C(_3_), .Y(_32_) );
	XOR2X1 XOR2X1_1 ( .A(_32_), .B(_40__3_), .Y(_33_) );
	AOI22X1 AOI22X1_1 ( .A(_30_), .B(_21_), .C(_29_), .D(_32_), .Y(_34_) );
	NOR2X1 NOR2X1_3 ( .A(mode[1]), .B(mode[0]), .Y(_35_) );
	NAND3X1 NAND3X1_3 ( .A(_18_), .B(_40__3_), .C(_35_), .Y(_36_) );
	INVX1 INVX1_7 ( .A(_37__3_), .Y(_37_) );
	AOI21X1 AOI21X1_9 ( .A(_17_), .B(_31_), .C(_14_), .Y(_38_) );
	AOI22X1 AOI22X1_2 ( .A(D[3]), .B(_6_), .C(_34_), .D(_35_), .Y(_39_) );
	AOI21X1 AOI21X1_10 ( .A(_33_), .B(_36_), .C(_3_), .Y(_0__3_) );
	AND2X2 AND2X2_2 ( .A(_6_), .B(_2_), .Y(_1_) );
	BUFX2 BUFX2_1 ( .A(_37__0_), .Y(Q[0]) );
	BUFX2 BUFX2_2 ( .A(_37__1_), .Y(Q[1]) );
	BUFX2 BUFX2_3 ( .A(_37__2_), .Y(Q[2]) );
	BUFX2 BUFX2_4 ( .A(_37__3_), .Y(Q[3]) );
	BUFX2 BUFX2_5 ( .A(_41_), .Y(load) );
	BUFX2 BUFX2_6 ( .A(gnd), .Y(rco) );
	DFFPOSX1 DFFPOSX1_1 ( .CLK(clk), .D(_0__0_), .Q(_37__0_) );
	DFFPOSX1 DFFPOSX1_2 ( .CLK(clk), .D(_0__1_), .Q(_37__1_) );
	DFFPOSX1 DFFPOSX1_3 ( .CLK(clk), .D(_0__2_), .Q(_37__2_) );
	DFFPOSX1 DFFPOSX1_4 ( .CLK(clk), .D(_0__3_), .Q(_37__3_) );
	DFFPOSX1 DFFPOSX1_5 ( .CLK(clk), .D(_1_), .Q(_38_) );
endmodule
