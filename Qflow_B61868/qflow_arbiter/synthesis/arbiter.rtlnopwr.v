module arbiter (clk, rst, req3, req2, req1, req0, gnt3, gnt2, gnt1, gnt0);

input clk;
input rst;
input req3;
input req2;
input req1;
input req0;
output gnt3;
output gnt2;
output gnt1;
output gnt0;

wire vdd = 1'b1;
wire gnd = 1'b0;

	AOI21X1 AOI21X1_1 ( .A(_36_), .B(_39_), .C(rst), .Y(_4_) );
	NAND2X1 NAND2X1_1 ( .A(req1), .B(_21_), .Y(_40_) );
	INVX1 INVX1_1 ( .A(_40_), .Y(_41_) );
	NOR2X1 NOR2X1_1 ( .A(req3), .B(req2), .Y(_42_) );
	INVX1 INVX1_2 ( .A(_42_), .Y(_43_) );
	NOR3X1 NOR3X1_1 ( .A(_12_), .B(_43_), .C(_27_), .Y(_44_) );
	OAI21X1 OAI21X1_1 ( .A(_35_), .B(_44_), .C(_41_), .Y(_45_) );
	NOR3X1 NOR3X1_2 ( .A(lmask0), .B(_20_), .C(_27_), .Y(_46_) );
	NOR3X1 NOR3X1_3 ( .A(_12_), .B(_40_), .C(_18_), .Y(_47_) );
	AND2X2 AND2X2_1 ( .A(_17_), .B(_62_), .Y(_48_) );
	NOR3X1 NOR3X1_4 ( .A(_48_), .B(_46_), .C(_47_), .Y(_49_) );
	AOI21X1 AOI21X1_2 ( .A(_49_), .B(_45_), .C(rst), .Y(_3_) );
	OAI21X1 OAI21X1_2 ( .A(_35_), .B(_44_), .C(req0), .Y(_50_) );
	NOR3X1 NOR3X1_5 ( .A(_12_), .B(_21_), .C(_18_), .Y(_51_) );
	NAND3X1 NAND3X1_1 ( .A(_20_), .B(req0), .C(_42_), .Y(_52_) );
	NOR3X1 NOR3X1_6 ( .A(lmask0), .B(_52_), .C(_27_), .Y(_53_) );
	AND2X2 AND2X2_2 ( .A(_17_), .B(_61_), .Y(_54_) );
	NOR3X1 NOR3X1_7 ( .A(_54_), .B(_51_), .C(_53_), .Y(_55_) );
	AOI21X1 AOI21X1_3 ( .A(_55_), .B(_50_), .C(rst), .Y(_2_) );
	INVX1 INVX1_3 ( .A(_17_), .Y(_56_) );
	OAI21X1 OAI21X1_3 ( .A(_22_), .B(_43_), .C(_56_), .Y(_57_) );
	OR2X2 OR2X2_1 ( .A(lasmask), .B(ledge), .Y(_58_) );
	NOR2X1 NOR2X1_2 ( .A(_58_), .B(_57_), .Y(_0_) );
	NAND2X1 NAND2X1_2 ( .A(lasmask), .B(ledge), .Y(_59_) );
	NAND2X1 NAND2X1_3 ( .A(_59_), .B(_58_), .Y(_60_) );
	NOR2X1 NOR2X1_3 ( .A(_60_), .B(_57_), .Y(_1_) );
	BUFX2 BUFX2_1 ( .A(_61_), .Y(gnt0) );
	BUFX2 BUFX2_2 ( .A(_62_), .Y(gnt1) );
	BUFX2 BUFX2_3 ( .A(_63_), .Y(gnt2) );
	BUFX2 BUFX2_4 ( .A(_64_), .Y(gnt3) );
	DFFPOSX1 DFFPOSX1_1 ( .CLK(clk), .D(_6_), .Q(lmask0) );
	DFFPOSX1 DFFPOSX1_2 ( .CLK(clk), .D(_7_), .Q(lmask1) );
	DFFPOSX1 DFFPOSX1_3 ( .CLK(clk), .D(_0_), .Q(lasmask) );
	DFFPOSX1 DFFPOSX1_4 ( .CLK(clk), .D(_1_), .Q(ledge) );
	DFFPOSX1 DFFPOSX1_5 ( .CLK(clk), .D(_2_), .Q(_61_) );
	DFFPOSX1 DFFPOSX1_6 ( .CLK(clk), .D(_3_), .Q(_62_) );
	DFFPOSX1 DFFPOSX1_7 ( .CLK(clk), .D(_4_), .Q(_63_) );
	DFFPOSX1 DFFPOSX1_8 ( .CLK(clk), .D(_5_), .Q(_64_) );
	INVX1 INVX1_4 ( .A(rst), .Y(_8_) );
	INVX1 INVX1_5 ( .A(lmask1), .Y(_9_) );
	OAI21X1 OAI21X1_4 ( .A(_64_), .B(_63_), .C(lasmask), .Y(_10_) );
	OAI21X1 OAI21X1_5 ( .A(lasmask), .B(_9_), .C(_10_), .Y(_11_) );
	AND2X2 AND2X2_3 ( .A(_11_), .B(_8_), .Y(_7_) );
	INVX4 INVX4_1 ( .A(lmask0), .Y(_12_) );
	OAI21X1 OAI21X1_6 ( .A(_64_), .B(_62_), .C(lasmask), .Y(_13_) );
	OAI21X1 OAI21X1_7 ( .A(lasmask), .B(_12_), .C(_13_), .Y(_14_) );
	AND2X2 AND2X2_4 ( .A(_14_), .B(_8_), .Y(_6_) );
	AOI22X1 AOI22X1_1 ( .A(_62_), .B(req1), .C(_61_), .D(req0), .Y(_15_) );
	AOI22X1 AOI22X1_2 ( .A(_64_), .B(req3), .C(_63_), .D(req2), .Y(_16_) );
	NAND2X1 NAND2X1_4 ( .A(_15_), .B(_16_), .Y(_17_) );
	NAND3X1 NAND3X1_2 ( .A(lmask1), .B(_15_), .C(_16_), .Y(_18_) );
	NOR2X1 NOR2X1_4 ( .A(_12_), .B(_18_), .Y(_19_) );
	INVX2 INVX2_1 ( .A(req1), .Y(_20_) );
	INVX1 INVX1_6 ( .A(req0), .Y(_21_) );
	NAND2X1 NAND2X1_5 ( .A(_20_), .B(_21_), .Y(_22_) );
	INVX1 INVX1_7 ( .A(req2), .Y(_23_) );
	NAND2X1 NAND2X1_6 ( .A(req3), .B(_23_), .Y(_24_) );
	NOR2X1 NOR2X1_5 ( .A(_24_), .B(_22_), .Y(_25_) );
	AOI22X1 AOI22X1_3 ( .A(_64_), .B(_17_), .C(_25_), .D(_19_), .Y(_26_) );
	NAND3X1 NAND3X1_3 ( .A(_9_), .B(_15_), .C(_16_), .Y(_27_) );
	NOR3X1 NOR3X1_8 ( .A(_12_), .B(_24_), .C(_27_), .Y(_28_) );
	INVX1 INVX1_8 ( .A(req3), .Y(_29_) );
	NOR3X1 NOR3X1_9 ( .A(lmask0), .B(_29_), .C(_18_), .Y(_30_) );
	NAND3X1 NAND3X1_4 ( .A(req3), .B(_23_), .C(_20_), .Y(_31_) );
	NOR3X1 NOR3X1_10 ( .A(lmask0), .B(_31_), .C(_27_), .Y(_32_) );
	NOR3X1 NOR3X1_11 ( .A(_28_), .B(_30_), .C(_32_), .Y(_33_) );
	AOI21X1 AOI21X1_4 ( .A(_33_), .B(_26_), .C(rst), .Y(_5_) );
	NOR2X1 NOR2X1_6 ( .A(_23_), .B(_22_), .Y(_34_) );
	NOR3X1 NOR3X1_12 ( .A(lmask0), .B(req3), .C(_18_), .Y(_35_) );
	OAI21X1 OAI21X1_8 ( .A(_19_), .B(_35_), .C(_34_), .Y(_36_) );
	INVX1 INVX1_9 ( .A(_27_), .Y(_37_) );
	AOI21X1 AOI21X1_5 ( .A(_12_), .B(req1), .C(_23_), .Y(_38_) );
	AOI22X1 AOI22X1_4 ( .A(_63_), .B(_17_), .C(_38_), .D(_37_), .Y(_39_) );
endmodule
