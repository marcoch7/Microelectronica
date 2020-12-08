module tt_counter ( gnd, vdd, clk, reset, enable, D_32b, mode, Q_32b, rco_32b, load_32b);

input gnd, vdd;
input clk;
input reset;
input enable;
output rco_32b;
output load_32b;
input [31:0] D_32b;
input [1:0] mode;
output [31:0] Q_32b;

	BUFX2 BUFX2_1 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_), .Y(counter_five_mode_1_bF_buf3) );
	BUFX2 BUFX2_2 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_), .Y(counter_five_mode_1_bF_buf2) );
	BUFX2 BUFX2_3 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_), .Y(counter_five_mode_1_bF_buf1) );
	BUFX2 BUFX2_4 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_), .Y(counter_five_mode_1_bF_buf0) );
	BUFX2 BUFX2_5 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_), .Y(counter_five_mode_0_bF_buf4) );
	BUFX2 BUFX2_6 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_), .Y(counter_five_mode_0_bF_buf3) );
	BUFX2 BUFX2_7 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_), .Y(counter_five_mode_0_bF_buf2) );
	BUFX2 BUFX2_8 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_), .Y(counter_five_mode_0_bF_buf1) );
	BUFX2 BUFX2_9 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_), .Y(counter_five_mode_0_bF_buf0) );
	AND2X2 AND2X2_1 ( .gnd(gnd), .vdd(vdd), .A(counter_one_load), .B(counter_two_load), .Y(_0_) );
	NAND3X1 NAND3X1_1 ( .gnd(gnd), .vdd(vdd), .A(counter_four_load), .B(counter_seven_load), .C(_0_), .Y(_1_) );
	AND2X2 AND2X2_2 ( .gnd(gnd), .vdd(vdd), .A(counter_zero_load), .B(counter_three_load), .Y(_2_) );
	NAND3X1 NAND3X1_2 ( .gnd(gnd), .vdd(vdd), .A(counter_five_load), .B(counter_six_load), .C(_2_), .Y(_3_) );
	NOR2X1 NOR2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_1_), .B(_3_), .Y(_18_) );
	INVX1 INVX1_1 ( .gnd(gnd), .vdd(vdd), .A(mode[1]), .Y(_4_) );
	INVX1 INVX1_2 ( .gnd(gnd), .vdd(vdd), .A(mode[0]), .Y(_5_) );
	NAND2X1 NAND2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_4_), .B(_5_), .Y(counter_five_mode_0_) );
	NAND2X1 NAND2X1_2 ( .gnd(gnd), .vdd(vdd), .A(mode[1]), .B(mode[0]), .Y(_6_) );
	INVX4 INVX4_1 ( .gnd(gnd), .vdd(vdd), .A(_6_), .Y(counter_five_mode_1_) );
	INVX1 INVX1_3 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(_7_) );
	INVX1 INVX1_4 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_8_) );
	NAND3X1 NAND3X1_3 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_8_), .C(_6_), .Y(_9_) );
	NAND2X1 NAND2X1_3 ( .gnd(gnd), .vdd(vdd), .A(clk), .B(_9_), .Y(_10_) );
	OAI21X1 OAI21X1_1 ( .gnd(gnd), .vdd(vdd), .A(_7_), .B(_9_), .C(_10_), .Y(clk_one) );
	INVX1 INVX1_5 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(_11_) );
	OAI21X1 OAI21X1_2 ( .gnd(gnd), .vdd(vdd), .A(_11_), .B(_9_), .C(_10_), .Y(clk_two) );
	INVX1 INVX1_6 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(_12_) );
	OAI21X1 OAI21X1_3 ( .gnd(gnd), .vdd(vdd), .A(_12_), .B(_9_), .C(_10_), .Y(clk_three) );
	INVX1 INVX1_7 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(_13_) );
	OAI21X1 OAI21X1_4 ( .gnd(gnd), .vdd(vdd), .A(_13_), .B(_9_), .C(_10_), .Y(clk_four) );
	INVX1 INVX1_8 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(_14_) );
	OAI21X1 OAI21X1_5 ( .gnd(gnd), .vdd(vdd), .A(_14_), .B(_9_), .C(_10_), .Y(clk_five) );
	INVX1 INVX1_9 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(_15_) );
	OAI21X1 OAI21X1_6 ( .gnd(gnd), .vdd(vdd), .A(_15_), .B(_9_), .C(_10_), .Y(clk_six) );
	INVX1 INVX1_10 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(_16_) );
	OAI21X1 OAI21X1_7 ( .gnd(gnd), .vdd(vdd), .A(_16_), .B(_9_), .C(_10_), .Y(clk_seven) );
	BUFX2 BUFX2_10 ( .gnd(gnd), .vdd(vdd), .A(_17__0_), .Y(Q_32b[0]) );
	BUFX2 BUFX2_11 ( .gnd(gnd), .vdd(vdd), .A(_17__1_), .Y(Q_32b[1]) );
	BUFX2 BUFX2_12 ( .gnd(gnd), .vdd(vdd), .A(_17__2_), .Y(Q_32b[2]) );
	BUFX2 BUFX2_13 ( .gnd(gnd), .vdd(vdd), .A(_17__3_), .Y(Q_32b[3]) );
	BUFX2 BUFX2_14 ( .gnd(gnd), .vdd(vdd), .A(_17__4_), .Y(Q_32b[4]) );
	BUFX2 BUFX2_15 ( .gnd(gnd), .vdd(vdd), .A(_17__5_), .Y(Q_32b[5]) );
	BUFX2 BUFX2_16 ( .gnd(gnd), .vdd(vdd), .A(_17__6_), .Y(Q_32b[6]) );
	BUFX2 BUFX2_17 ( .gnd(gnd), .vdd(vdd), .A(_17__7_), .Y(Q_32b[7]) );
	BUFX2 BUFX2_18 ( .gnd(gnd), .vdd(vdd), .A(_17__8_), .Y(Q_32b[8]) );
	BUFX2 BUFX2_19 ( .gnd(gnd), .vdd(vdd), .A(_17__9_), .Y(Q_32b[9]) );
	BUFX2 BUFX2_20 ( .gnd(gnd), .vdd(vdd), .A(_17__10_), .Y(Q_32b[10]) );
	BUFX2 BUFX2_21 ( .gnd(gnd), .vdd(vdd), .A(_17__11_), .Y(Q_32b[11]) );
	BUFX2 BUFX2_22 ( .gnd(gnd), .vdd(vdd), .A(_17__12_), .Y(Q_32b[12]) );
	BUFX2 BUFX2_23 ( .gnd(gnd), .vdd(vdd), .A(_17__13_), .Y(Q_32b[13]) );
	BUFX2 BUFX2_24 ( .gnd(gnd), .vdd(vdd), .A(_17__14_), .Y(Q_32b[14]) );
	BUFX2 BUFX2_25 ( .gnd(gnd), .vdd(vdd), .A(_17__15_), .Y(Q_32b[15]) );
	BUFX2 BUFX2_26 ( .gnd(gnd), .vdd(vdd), .A(_17__16_), .Y(Q_32b[16]) );
	BUFX2 BUFX2_27 ( .gnd(gnd), .vdd(vdd), .A(_17__17_), .Y(Q_32b[17]) );
	BUFX2 BUFX2_28 ( .gnd(gnd), .vdd(vdd), .A(_17__18_), .Y(Q_32b[18]) );
	BUFX2 BUFX2_29 ( .gnd(gnd), .vdd(vdd), .A(_17__19_), .Y(Q_32b[19]) );
	BUFX2 BUFX2_30 ( .gnd(gnd), .vdd(vdd), .A(_17__20_), .Y(Q_32b[20]) );
	BUFX2 BUFX2_31 ( .gnd(gnd), .vdd(vdd), .A(_17__21_), .Y(Q_32b[21]) );
	BUFX2 BUFX2_32 ( .gnd(gnd), .vdd(vdd), .A(_17__22_), .Y(Q_32b[22]) );
	BUFX2 BUFX2_33 ( .gnd(gnd), .vdd(vdd), .A(_17__23_), .Y(Q_32b[23]) );
	BUFX2 BUFX2_34 ( .gnd(gnd), .vdd(vdd), .A(_17__24_), .Y(Q_32b[24]) );
	BUFX2 BUFX2_35 ( .gnd(gnd), .vdd(vdd), .A(_17__25_), .Y(Q_32b[25]) );
	BUFX2 BUFX2_36 ( .gnd(gnd), .vdd(vdd), .A(_17__26_), .Y(Q_32b[26]) );
	BUFX2 BUFX2_37 ( .gnd(gnd), .vdd(vdd), .A(_17__27_), .Y(Q_32b[27]) );
	BUFX2 BUFX2_38 ( .gnd(gnd), .vdd(vdd), .A(_17__28_), .Y(Q_32b[28]) );
	BUFX2 BUFX2_39 ( .gnd(gnd), .vdd(vdd), .A(_17__29_), .Y(Q_32b[29]) );
	BUFX2 BUFX2_40 ( .gnd(gnd), .vdd(vdd), .A(_17__30_), .Y(Q_32b[30]) );
	BUFX2 BUFX2_41 ( .gnd(gnd), .vdd(vdd), .A(_17__31_), .Y(Q_32b[31]) );
	BUFX2 BUFX2_42 ( .gnd(gnd), .vdd(vdd), .A(_18_), .Y(load_32b) );
	BUFX2 BUFX2_43 ( .gnd(gnd), .vdd(vdd), .A(gnd), .Y(rco_32b) );
	INVX1 INVX1_11 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_21_) );
	INVX1 INVX1_12 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf3), .Y(_22_) );
	INVX1 INVX1_13 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf4), .Y(_23_) );
	NOR2X1 NOR2X1_2 ( .gnd(gnd), .vdd(vdd), .A(_22_), .B(_23_), .Y(_24_) );
	AND2X2 AND2X2_3 ( .gnd(gnd), .vdd(vdd), .A(_24_), .B(_21_), .Y(_20_) );
	NAND2X1 NAND2X1_4 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_21_), .Y(_25_) );
	NAND2X1 NAND2X1_5 ( .gnd(gnd), .vdd(vdd), .A(D_32b[20]), .B(_24_), .Y(_26_) );
	INVX1 INVX1_14 ( .gnd(gnd), .vdd(vdd), .A(_17__20_), .Y(_27_) );
	OAI21X1 OAI21X1_8 ( .gnd(gnd), .vdd(vdd), .A(_22_), .B(_23_), .C(_27_), .Y(_28_) );
	AOI21X1 AOI21X1_1 ( .gnd(gnd), .vdd(vdd), .A(_26_), .B(_28_), .C(_25_), .Y(_19__0_) );
	NAND2X1 NAND2X1_6 ( .gnd(gnd), .vdd(vdd), .A(D_32b[21]), .B(_24_), .Y(_29_) );
	XNOR2X1 XNOR2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_17__20_), .B(_17__21_), .Y(_30_) );
	OAI21X1 OAI21X1_9 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf2), .B(_23_), .C(_30_), .Y(_31_) );
	OAI21X1 OAI21X1_10 ( .gnd(gnd), .vdd(vdd), .A(_23_), .B(_30_), .C(_31_), .Y(_32_) );
	AOI21X1 AOI21X1_2 ( .gnd(gnd), .vdd(vdd), .A(_32_), .B(_29_), .C(_25_), .Y(_19__1_) );
	NOR2X1 NOR2X1_3 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf1), .B(counter_five_mode_0_bF_buf3), .Y(_33_) );
	AOI21X1 AOI21X1_3 ( .gnd(gnd), .vdd(vdd), .A(_17__20_), .B(_17__21_), .C(_17__22_), .Y(_34_) );
	INVX1 INVX1_15 ( .gnd(gnd), .vdd(vdd), .A(_34_), .Y(_35_) );
	NAND3X1 NAND3X1_4 ( .gnd(gnd), .vdd(vdd), .A(_17__20_), .B(_17__21_), .C(_17__22_), .Y(_36_) );
	NAND3X1 NAND3X1_5 ( .gnd(gnd), .vdd(vdd), .A(_33_), .B(_36_), .C(_35_), .Y(_37_) );
	NAND2X1 NAND2X1_7 ( .gnd(gnd), .vdd(vdd), .A(D_32b[22]), .B(_24_), .Y(_38_) );
	AND2X2 AND2X2_4 ( .gnd(gnd), .vdd(vdd), .A(_37_), .B(_38_), .Y(_39_) );
	NOR2X1 NOR2X1_4 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf2), .B(_22_), .Y(_40_) );
	NAND2X1 NAND2X1_8 ( .gnd(gnd), .vdd(vdd), .A(_36_), .B(_35_), .Y(_41_) );
	NAND2X1 NAND2X1_9 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf1), .B(_22_), .Y(_42_) );
	INVX1 INVX1_16 ( .gnd(gnd), .vdd(vdd), .A(_17__21_), .Y(_43_) );
	INVX1 INVX1_17 ( .gnd(gnd), .vdd(vdd), .A(_17__22_), .Y(_44_) );
	NAND3X1 NAND3X1_6 ( .gnd(gnd), .vdd(vdd), .A(_27_), .B(_43_), .C(_44_), .Y(_45_) );
	OAI21X1 OAI21X1_11 ( .gnd(gnd), .vdd(vdd), .A(_17__20_), .B(_17__21_), .C(_17__22_), .Y(_46_) );
	AOI21X1 AOI21X1_4 ( .gnd(gnd), .vdd(vdd), .A(_45_), .B(_46_), .C(_42_), .Y(_47_) );
	AOI21X1 AOI21X1_5 ( .gnd(gnd), .vdd(vdd), .A(_40_), .B(_41_), .C(_47_), .Y(_48_) );
	AOI21X1 AOI21X1_6 ( .gnd(gnd), .vdd(vdd), .A(_48_), .B(_39_), .C(_25_), .Y(_19__2_) );
	XNOR2X1 XNOR2X1_2 ( .gnd(gnd), .vdd(vdd), .A(_36_), .B(_17__23_), .Y(_49_) );
	XOR2X1 XOR2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_34_), .B(_17__23_), .Y(_50_) );
	AOI22X1 AOI22X1_1 ( .gnd(gnd), .vdd(vdd), .A(_49_), .B(_33_), .C(_40_), .D(_50_), .Y(_51_) );
	NOR2X1 NOR2X1_5 ( .gnd(gnd), .vdd(vdd), .A(_17__20_), .B(_17__21_), .Y(_52_) );
	NAND3X1 NAND3X1_7 ( .gnd(gnd), .vdd(vdd), .A(_44_), .B(_17__23_), .C(_52_), .Y(_53_) );
	INVX1 INVX1_18 ( .gnd(gnd), .vdd(vdd), .A(_17__23_), .Y(_54_) );
	AOI21X1 AOI21X1_7 ( .gnd(gnd), .vdd(vdd), .A(_45_), .B(_54_), .C(_42_), .Y(_55_) );
	AOI22X1 AOI22X1_2 ( .gnd(gnd), .vdd(vdd), .A(D_32b[23]), .B(_24_), .C(_55_), .D(_53_), .Y(_56_) );
	AOI21X1 AOI21X1_8 ( .gnd(gnd), .vdd(vdd), .A(_51_), .B(_56_), .C(_25_), .Y(_19__3_) );
	DFFPOSX1 DFFPOSX1_1 ( .gnd(gnd), .vdd(vdd), .CLK(clk_five), .D(_19__0_), .Q(_17__20_) );
	DFFPOSX1 DFFPOSX1_2 ( .gnd(gnd), .vdd(vdd), .CLK(clk_five), .D(_19__1_), .Q(_17__21_) );
	DFFPOSX1 DFFPOSX1_3 ( .gnd(gnd), .vdd(vdd), .CLK(clk_five), .D(_19__2_), .Q(_17__22_) );
	DFFPOSX1 DFFPOSX1_4 ( .gnd(gnd), .vdd(vdd), .CLK(clk_five), .D(_19__3_), .Q(_17__23_) );
	DFFPOSX1 DFFPOSX1_5 ( .gnd(gnd), .vdd(vdd), .CLK(clk_five), .D(_20_), .Q(counter_five_load) );
	INVX1 INVX1_19 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_59_) );
	INVX1 INVX1_20 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf0), .Y(_60_) );
	INVX1 INVX1_21 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf0), .Y(_61_) );
	NOR2X1 NOR2X1_6 ( .gnd(gnd), .vdd(vdd), .A(_60_), .B(_61_), .Y(_62_) );
	AND2X2 AND2X2_5 ( .gnd(gnd), .vdd(vdd), .A(_62_), .B(_59_), .Y(_58_) );
	NAND2X1 NAND2X1_10 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_59_), .Y(_63_) );
	NAND2X1 NAND2X1_11 ( .gnd(gnd), .vdd(vdd), .A(D_32b[16]), .B(_62_), .Y(_64_) );
	INVX1 INVX1_22 ( .gnd(gnd), .vdd(vdd), .A(_17__16_), .Y(_65_) );
	OAI21X1 OAI21X1_12 ( .gnd(gnd), .vdd(vdd), .A(_60_), .B(_61_), .C(_65_), .Y(_66_) );
	AOI21X1 AOI21X1_9 ( .gnd(gnd), .vdd(vdd), .A(_64_), .B(_66_), .C(_63_), .Y(_57__0_) );
	NAND2X1 NAND2X1_12 ( .gnd(gnd), .vdd(vdd), .A(D_32b[17]), .B(_62_), .Y(_67_) );
	XNOR2X1 XNOR2X1_3 ( .gnd(gnd), .vdd(vdd), .A(_17__16_), .B(_17__17_), .Y(_68_) );
	OAI21X1 OAI21X1_13 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf3), .B(_61_), .C(_68_), .Y(_69_) );
	OAI21X1 OAI21X1_14 ( .gnd(gnd), .vdd(vdd), .A(_61_), .B(_68_), .C(_69_), .Y(_70_) );
	AOI21X1 AOI21X1_10 ( .gnd(gnd), .vdd(vdd), .A(_70_), .B(_67_), .C(_63_), .Y(_57__1_) );
	NOR2X1 NOR2X1_7 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf2), .B(counter_five_mode_0_bF_buf4), .Y(_71_) );
	AOI21X1 AOI21X1_11 ( .gnd(gnd), .vdd(vdd), .A(_17__16_), .B(_17__17_), .C(_17__18_), .Y(_72_) );
	INVX1 INVX1_23 ( .gnd(gnd), .vdd(vdd), .A(_72_), .Y(_73_) );
	NAND3X1 NAND3X1_8 ( .gnd(gnd), .vdd(vdd), .A(_17__16_), .B(_17__17_), .C(_17__18_), .Y(_74_) );
	NAND3X1 NAND3X1_9 ( .gnd(gnd), .vdd(vdd), .A(_71_), .B(_74_), .C(_73_), .Y(_75_) );
	NAND2X1 NAND2X1_13 ( .gnd(gnd), .vdd(vdd), .A(D_32b[18]), .B(_62_), .Y(_76_) );
	AND2X2 AND2X2_6 ( .gnd(gnd), .vdd(vdd), .A(_75_), .B(_76_), .Y(_77_) );
	NOR2X1 NOR2X1_8 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf3), .B(_60_), .Y(_78_) );
	NAND2X1 NAND2X1_14 ( .gnd(gnd), .vdd(vdd), .A(_74_), .B(_73_), .Y(_79_) );
	NAND2X1 NAND2X1_15 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf2), .B(_60_), .Y(_80_) );
	INVX1 INVX1_24 ( .gnd(gnd), .vdd(vdd), .A(_17__17_), .Y(_81_) );
	INVX1 INVX1_25 ( .gnd(gnd), .vdd(vdd), .A(_17__18_), .Y(_82_) );
	NAND3X1 NAND3X1_10 ( .gnd(gnd), .vdd(vdd), .A(_65_), .B(_81_), .C(_82_), .Y(_83_) );
	OAI21X1 OAI21X1_15 ( .gnd(gnd), .vdd(vdd), .A(_17__16_), .B(_17__17_), .C(_17__18_), .Y(_84_) );
	AOI21X1 AOI21X1_12 ( .gnd(gnd), .vdd(vdd), .A(_83_), .B(_84_), .C(_80_), .Y(_85_) );
	AOI21X1 AOI21X1_13 ( .gnd(gnd), .vdd(vdd), .A(_78_), .B(_79_), .C(_85_), .Y(_86_) );
	AOI21X1 AOI21X1_14 ( .gnd(gnd), .vdd(vdd), .A(_86_), .B(_77_), .C(_63_), .Y(_57__2_) );
	XNOR2X1 XNOR2X1_4 ( .gnd(gnd), .vdd(vdd), .A(_74_), .B(_17__19_), .Y(_87_) );
	XOR2X1 XOR2X1_2 ( .gnd(gnd), .vdd(vdd), .A(_72_), .B(_17__19_), .Y(_88_) );
	AOI22X1 AOI22X1_3 ( .gnd(gnd), .vdd(vdd), .A(_87_), .B(_71_), .C(_78_), .D(_88_), .Y(_89_) );
	NOR2X1 NOR2X1_9 ( .gnd(gnd), .vdd(vdd), .A(_17__16_), .B(_17__17_), .Y(_90_) );
	NAND3X1 NAND3X1_11 ( .gnd(gnd), .vdd(vdd), .A(_82_), .B(_17__19_), .C(_90_), .Y(_91_) );
	INVX1 INVX1_26 ( .gnd(gnd), .vdd(vdd), .A(_17__19_), .Y(_92_) );
	AOI21X1 AOI21X1_15 ( .gnd(gnd), .vdd(vdd), .A(_83_), .B(_92_), .C(_80_), .Y(_93_) );
	AOI22X1 AOI22X1_4 ( .gnd(gnd), .vdd(vdd), .A(D_32b[19]), .B(_62_), .C(_93_), .D(_91_), .Y(_94_) );
	AOI21X1 AOI21X1_16 ( .gnd(gnd), .vdd(vdd), .A(_89_), .B(_94_), .C(_63_), .Y(_57__3_) );
	DFFPOSX1 DFFPOSX1_6 ( .gnd(gnd), .vdd(vdd), .CLK(clk_four), .D(_57__0_), .Q(_17__16_) );
	DFFPOSX1 DFFPOSX1_7 ( .gnd(gnd), .vdd(vdd), .CLK(clk_four), .D(_57__1_), .Q(_17__17_) );
	DFFPOSX1 DFFPOSX1_8 ( .gnd(gnd), .vdd(vdd), .CLK(clk_four), .D(_57__2_), .Q(_17__18_) );
	DFFPOSX1 DFFPOSX1_9 ( .gnd(gnd), .vdd(vdd), .CLK(clk_four), .D(_57__3_), .Q(_17__19_) );
	DFFPOSX1 DFFPOSX1_10 ( .gnd(gnd), .vdd(vdd), .CLK(clk_four), .D(_58_), .Q(counter_four_load) );
	INVX1 INVX1_27 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_97_) );
	INVX1 INVX1_28 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf1), .Y(_98_) );
	INVX1 INVX1_29 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf1), .Y(_99_) );
	NOR2X1 NOR2X1_10 ( .gnd(gnd), .vdd(vdd), .A(_98_), .B(_99_), .Y(_100_) );
	AND2X2 AND2X2_7 ( .gnd(gnd), .vdd(vdd), .A(_100_), .B(_97_), .Y(_96_) );
	NAND2X1 NAND2X1_16 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_97_), .Y(_101_) );
	NAND2X1 NAND2X1_17 ( .gnd(gnd), .vdd(vdd), .A(D_32b[4]), .B(_100_), .Y(_102_) );
	INVX1 INVX1_30 ( .gnd(gnd), .vdd(vdd), .A(_17__4_), .Y(_103_) );
	OAI21X1 OAI21X1_16 ( .gnd(gnd), .vdd(vdd), .A(_98_), .B(_99_), .C(_103_), .Y(_104_) );
	AOI21X1 AOI21X1_17 ( .gnd(gnd), .vdd(vdd), .A(_102_), .B(_104_), .C(_101_), .Y(_95__0_) );
	NAND2X1 NAND2X1_18 ( .gnd(gnd), .vdd(vdd), .A(D_32b[5]), .B(_100_), .Y(_105_) );
	XNOR2X1 XNOR2X1_5 ( .gnd(gnd), .vdd(vdd), .A(_17__4_), .B(_17__5_), .Y(_106_) );
	OAI21X1 OAI21X1_17 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf0), .B(_99_), .C(_106_), .Y(_107_) );
	OAI21X1 OAI21X1_18 ( .gnd(gnd), .vdd(vdd), .A(_99_), .B(_106_), .C(_107_), .Y(_108_) );
	AOI21X1 AOI21X1_18 ( .gnd(gnd), .vdd(vdd), .A(_108_), .B(_105_), .C(_101_), .Y(_95__1_) );
	NOR2X1 NOR2X1_11 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf3), .B(counter_five_mode_0_bF_buf0), .Y(_109_) );
	AOI21X1 AOI21X1_19 ( .gnd(gnd), .vdd(vdd), .A(_17__4_), .B(_17__5_), .C(_17__6_), .Y(_110_) );
	INVX1 INVX1_31 ( .gnd(gnd), .vdd(vdd), .A(_110_), .Y(_111_) );
	NAND3X1 NAND3X1_12 ( .gnd(gnd), .vdd(vdd), .A(_17__4_), .B(_17__5_), .C(_17__6_), .Y(_112_) );
	NAND3X1 NAND3X1_13 ( .gnd(gnd), .vdd(vdd), .A(_109_), .B(_112_), .C(_111_), .Y(_113_) );
	NAND2X1 NAND2X1_19 ( .gnd(gnd), .vdd(vdd), .A(D_32b[6]), .B(_100_), .Y(_114_) );
	AND2X2 AND2X2_8 ( .gnd(gnd), .vdd(vdd), .A(_113_), .B(_114_), .Y(_115_) );
	NOR2X1 NOR2X1_12 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf4), .B(_98_), .Y(_116_) );
	NAND2X1 NAND2X1_20 ( .gnd(gnd), .vdd(vdd), .A(_112_), .B(_111_), .Y(_117_) );
	NAND2X1 NAND2X1_21 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf3), .B(_98_), .Y(_118_) );
	INVX1 INVX1_32 ( .gnd(gnd), .vdd(vdd), .A(_17__5_), .Y(_119_) );
	INVX1 INVX1_33 ( .gnd(gnd), .vdd(vdd), .A(_17__6_), .Y(_120_) );
	NAND3X1 NAND3X1_14 ( .gnd(gnd), .vdd(vdd), .A(_103_), .B(_119_), .C(_120_), .Y(_121_) );
	OAI21X1 OAI21X1_19 ( .gnd(gnd), .vdd(vdd), .A(_17__4_), .B(_17__5_), .C(_17__6_), .Y(_122_) );
	AOI21X1 AOI21X1_20 ( .gnd(gnd), .vdd(vdd), .A(_121_), .B(_122_), .C(_118_), .Y(_123_) );
	AOI21X1 AOI21X1_21 ( .gnd(gnd), .vdd(vdd), .A(_116_), .B(_117_), .C(_123_), .Y(_124_) );
	AOI21X1 AOI21X1_22 ( .gnd(gnd), .vdd(vdd), .A(_124_), .B(_115_), .C(_101_), .Y(_95__2_) );
	XNOR2X1 XNOR2X1_6 ( .gnd(gnd), .vdd(vdd), .A(_112_), .B(_17__7_), .Y(_125_) );
	XOR2X1 XOR2X1_3 ( .gnd(gnd), .vdd(vdd), .A(_110_), .B(_17__7_), .Y(_126_) );
	AOI22X1 AOI22X1_5 ( .gnd(gnd), .vdd(vdd), .A(_125_), .B(_109_), .C(_116_), .D(_126_), .Y(_127_) );
	NOR2X1 NOR2X1_13 ( .gnd(gnd), .vdd(vdd), .A(_17__4_), .B(_17__5_), .Y(_128_) );
	NAND3X1 NAND3X1_15 ( .gnd(gnd), .vdd(vdd), .A(_120_), .B(_17__7_), .C(_128_), .Y(_129_) );
	INVX1 INVX1_34 ( .gnd(gnd), .vdd(vdd), .A(_17__7_), .Y(_130_) );
	AOI21X1 AOI21X1_23 ( .gnd(gnd), .vdd(vdd), .A(_121_), .B(_130_), .C(_118_), .Y(_131_) );
	AOI22X1 AOI22X1_6 ( .gnd(gnd), .vdd(vdd), .A(D_32b[7]), .B(_100_), .C(_131_), .D(_129_), .Y(_132_) );
	AOI21X1 AOI21X1_24 ( .gnd(gnd), .vdd(vdd), .A(_127_), .B(_132_), .C(_101_), .Y(_95__3_) );
	DFFPOSX1 DFFPOSX1_11 ( .gnd(gnd), .vdd(vdd), .CLK(clk_one), .D(_95__0_), .Q(_17__4_) );
	DFFPOSX1 DFFPOSX1_12 ( .gnd(gnd), .vdd(vdd), .CLK(clk_one), .D(_95__1_), .Q(_17__5_) );
	DFFPOSX1 DFFPOSX1_13 ( .gnd(gnd), .vdd(vdd), .CLK(clk_one), .D(_95__2_), .Q(_17__6_) );
	DFFPOSX1 DFFPOSX1_14 ( .gnd(gnd), .vdd(vdd), .CLK(clk_one), .D(_95__3_), .Q(_17__7_) );
	DFFPOSX1 DFFPOSX1_15 ( .gnd(gnd), .vdd(vdd), .CLK(clk_one), .D(_96_), .Q(counter_one_load) );
	INVX1 INVX1_35 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_135_) );
	INVX1 INVX1_36 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf2), .Y(_136_) );
	INVX1 INVX1_37 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf2), .Y(_137_) );
	NOR2X1 NOR2X1_14 ( .gnd(gnd), .vdd(vdd), .A(_136_), .B(_137_), .Y(_138_) );
	AND2X2 AND2X2_9 ( .gnd(gnd), .vdd(vdd), .A(_138_), .B(_135_), .Y(_134_) );
	NAND2X1 NAND2X1_22 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_135_), .Y(_139_) );
	NAND2X1 NAND2X1_23 ( .gnd(gnd), .vdd(vdd), .A(D_32b[28]), .B(_138_), .Y(_140_) );
	INVX1 INVX1_38 ( .gnd(gnd), .vdd(vdd), .A(_17__28_), .Y(_141_) );
	OAI21X1 OAI21X1_20 ( .gnd(gnd), .vdd(vdd), .A(_136_), .B(_137_), .C(_141_), .Y(_142_) );
	AOI21X1 AOI21X1_25 ( .gnd(gnd), .vdd(vdd), .A(_140_), .B(_142_), .C(_139_), .Y(_133__0_) );
	NAND2X1 NAND2X1_24 ( .gnd(gnd), .vdd(vdd), .A(D_32b[29]), .B(_138_), .Y(_143_) );
	XNOR2X1 XNOR2X1_7 ( .gnd(gnd), .vdd(vdd), .A(_17__28_), .B(_17__29_), .Y(_144_) );
	OAI21X1 OAI21X1_21 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf1), .B(_137_), .C(_144_), .Y(_145_) );
	OAI21X1 OAI21X1_22 ( .gnd(gnd), .vdd(vdd), .A(_137_), .B(_144_), .C(_145_), .Y(_146_) );
	AOI21X1 AOI21X1_26 ( .gnd(gnd), .vdd(vdd), .A(_146_), .B(_143_), .C(_139_), .Y(_133__1_) );
	NOR2X1 NOR2X1_15 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf0), .B(counter_five_mode_0_bF_buf1), .Y(_147_) );
	AOI21X1 AOI21X1_27 ( .gnd(gnd), .vdd(vdd), .A(_17__28_), .B(_17__29_), .C(_17__30_), .Y(_148_) );
	INVX1 INVX1_39 ( .gnd(gnd), .vdd(vdd), .A(_148_), .Y(_149_) );
	NAND3X1 NAND3X1_16 ( .gnd(gnd), .vdd(vdd), .A(_17__28_), .B(_17__29_), .C(_17__30_), .Y(_150_) );
	NAND3X1 NAND3X1_17 ( .gnd(gnd), .vdd(vdd), .A(_147_), .B(_150_), .C(_149_), .Y(_151_) );
	NAND2X1 NAND2X1_25 ( .gnd(gnd), .vdd(vdd), .A(D_32b[30]), .B(_138_), .Y(_152_) );
	AND2X2 AND2X2_10 ( .gnd(gnd), .vdd(vdd), .A(_151_), .B(_152_), .Y(_153_) );
	NOR2X1 NOR2X1_16 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf0), .B(_136_), .Y(_154_) );
	NAND2X1 NAND2X1_26 ( .gnd(gnd), .vdd(vdd), .A(_150_), .B(_149_), .Y(_155_) );
	NAND2X1 NAND2X1_27 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf4), .B(_136_), .Y(_156_) );
	INVX1 INVX1_40 ( .gnd(gnd), .vdd(vdd), .A(_17__29_), .Y(_157_) );
	INVX1 INVX1_41 ( .gnd(gnd), .vdd(vdd), .A(_17__30_), .Y(_158_) );
	NAND3X1 NAND3X1_18 ( .gnd(gnd), .vdd(vdd), .A(_141_), .B(_157_), .C(_158_), .Y(_159_) );
	OAI21X1 OAI21X1_23 ( .gnd(gnd), .vdd(vdd), .A(_17__28_), .B(_17__29_), .C(_17__30_), .Y(_160_) );
	AOI21X1 AOI21X1_28 ( .gnd(gnd), .vdd(vdd), .A(_159_), .B(_160_), .C(_156_), .Y(_161_) );
	AOI21X1 AOI21X1_29 ( .gnd(gnd), .vdd(vdd), .A(_154_), .B(_155_), .C(_161_), .Y(_162_) );
	AOI21X1 AOI21X1_30 ( .gnd(gnd), .vdd(vdd), .A(_162_), .B(_153_), .C(_139_), .Y(_133__2_) );
	XNOR2X1 XNOR2X1_8 ( .gnd(gnd), .vdd(vdd), .A(_150_), .B(_17__31_), .Y(_163_) );
	XOR2X1 XOR2X1_4 ( .gnd(gnd), .vdd(vdd), .A(_148_), .B(_17__31_), .Y(_164_) );
	AOI22X1 AOI22X1_7 ( .gnd(gnd), .vdd(vdd), .A(_163_), .B(_147_), .C(_154_), .D(_164_), .Y(_165_) );
	NOR2X1 NOR2X1_17 ( .gnd(gnd), .vdd(vdd), .A(_17__28_), .B(_17__29_), .Y(_166_) );
	NAND3X1 NAND3X1_19 ( .gnd(gnd), .vdd(vdd), .A(_158_), .B(_17__31_), .C(_166_), .Y(_167_) );
	INVX1 INVX1_42 ( .gnd(gnd), .vdd(vdd), .A(_17__31_), .Y(_168_) );
	AOI21X1 AOI21X1_31 ( .gnd(gnd), .vdd(vdd), .A(_159_), .B(_168_), .C(_156_), .Y(_169_) );
	AOI22X1 AOI22X1_8 ( .gnd(gnd), .vdd(vdd), .A(D_32b[31]), .B(_138_), .C(_169_), .D(_167_), .Y(_170_) );
	AOI21X1 AOI21X1_32 ( .gnd(gnd), .vdd(vdd), .A(_165_), .B(_170_), .C(_139_), .Y(_133__3_) );
	DFFPOSX1 DFFPOSX1_16 ( .gnd(gnd), .vdd(vdd), .CLK(clk_seven), .D(_133__0_), .Q(_17__28_) );
	DFFPOSX1 DFFPOSX1_17 ( .gnd(gnd), .vdd(vdd), .CLK(clk_seven), .D(_133__1_), .Q(_17__29_) );
	DFFPOSX1 DFFPOSX1_18 ( .gnd(gnd), .vdd(vdd), .CLK(clk_seven), .D(_133__2_), .Q(_17__30_) );
	DFFPOSX1 DFFPOSX1_19 ( .gnd(gnd), .vdd(vdd), .CLK(clk_seven), .D(_133__3_), .Q(_17__31_) );
	DFFPOSX1 DFFPOSX1_20 ( .gnd(gnd), .vdd(vdd), .CLK(clk_seven), .D(_134_), .Q(counter_seven_load) );
	INVX1 INVX1_43 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_173_) );
	INVX1 INVX1_44 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf3), .Y(_174_) );
	INVX1 INVX1_45 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf3), .Y(_175_) );
	NOR2X1 NOR2X1_18 ( .gnd(gnd), .vdd(vdd), .A(_174_), .B(_175_), .Y(_176_) );
	AND2X2 AND2X2_11 ( .gnd(gnd), .vdd(vdd), .A(_176_), .B(_173_), .Y(_172_) );
	NAND2X1 NAND2X1_28 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_173_), .Y(_177_) );
	NAND2X1 NAND2X1_29 ( .gnd(gnd), .vdd(vdd), .A(D_32b[24]), .B(_176_), .Y(_178_) );
	INVX1 INVX1_46 ( .gnd(gnd), .vdd(vdd), .A(_17__24_), .Y(_179_) );
	OAI21X1 OAI21X1_24 ( .gnd(gnd), .vdd(vdd), .A(_174_), .B(_175_), .C(_179_), .Y(_180_) );
	AOI21X1 AOI21X1_33 ( .gnd(gnd), .vdd(vdd), .A(_178_), .B(_180_), .C(_177_), .Y(_171__0_) );
	NAND2X1 NAND2X1_30 ( .gnd(gnd), .vdd(vdd), .A(D_32b[25]), .B(_176_), .Y(_181_) );
	XNOR2X1 XNOR2X1_9 ( .gnd(gnd), .vdd(vdd), .A(_17__24_), .B(_17__25_), .Y(_182_) );
	OAI21X1 OAI21X1_25 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf2), .B(_175_), .C(_182_), .Y(_183_) );
	OAI21X1 OAI21X1_26 ( .gnd(gnd), .vdd(vdd), .A(_175_), .B(_182_), .C(_183_), .Y(_184_) );
	AOI21X1 AOI21X1_34 ( .gnd(gnd), .vdd(vdd), .A(_184_), .B(_181_), .C(_177_), .Y(_171__1_) );
	NOR2X1 NOR2X1_19 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf1), .B(counter_five_mode_0_bF_buf2), .Y(_185_) );
	AOI21X1 AOI21X1_35 ( .gnd(gnd), .vdd(vdd), .A(_17__24_), .B(_17__25_), .C(_17__26_), .Y(_186_) );
	INVX1 INVX1_47 ( .gnd(gnd), .vdd(vdd), .A(_186_), .Y(_187_) );
	NAND3X1 NAND3X1_20 ( .gnd(gnd), .vdd(vdd), .A(_17__24_), .B(_17__25_), .C(_17__26_), .Y(_188_) );
	NAND3X1 NAND3X1_21 ( .gnd(gnd), .vdd(vdd), .A(_185_), .B(_188_), .C(_187_), .Y(_189_) );
	NAND2X1 NAND2X1_31 ( .gnd(gnd), .vdd(vdd), .A(D_32b[26]), .B(_176_), .Y(_190_) );
	AND2X2 AND2X2_12 ( .gnd(gnd), .vdd(vdd), .A(_189_), .B(_190_), .Y(_191_) );
	NOR2X1 NOR2X1_20 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf1), .B(_174_), .Y(_192_) );
	NAND2X1 NAND2X1_32 ( .gnd(gnd), .vdd(vdd), .A(_188_), .B(_187_), .Y(_193_) );
	NAND2X1 NAND2X1_33 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf0), .B(_174_), .Y(_194_) );
	INVX1 INVX1_48 ( .gnd(gnd), .vdd(vdd), .A(_17__25_), .Y(_195_) );
	INVX1 INVX1_49 ( .gnd(gnd), .vdd(vdd), .A(_17__26_), .Y(_196_) );
	NAND3X1 NAND3X1_22 ( .gnd(gnd), .vdd(vdd), .A(_179_), .B(_195_), .C(_196_), .Y(_197_) );
	OAI21X1 OAI21X1_27 ( .gnd(gnd), .vdd(vdd), .A(_17__24_), .B(_17__25_), .C(_17__26_), .Y(_198_) );
	AOI21X1 AOI21X1_36 ( .gnd(gnd), .vdd(vdd), .A(_197_), .B(_198_), .C(_194_), .Y(_199_) );
	AOI21X1 AOI21X1_37 ( .gnd(gnd), .vdd(vdd), .A(_192_), .B(_193_), .C(_199_), .Y(_200_) );
	AOI21X1 AOI21X1_38 ( .gnd(gnd), .vdd(vdd), .A(_200_), .B(_191_), .C(_177_), .Y(_171__2_) );
	XNOR2X1 XNOR2X1_10 ( .gnd(gnd), .vdd(vdd), .A(_188_), .B(_17__27_), .Y(_201_) );
	XOR2X1 XOR2X1_5 ( .gnd(gnd), .vdd(vdd), .A(_186_), .B(_17__27_), .Y(_202_) );
	AOI22X1 AOI22X1_9 ( .gnd(gnd), .vdd(vdd), .A(_201_), .B(_185_), .C(_192_), .D(_202_), .Y(_203_) );
	NOR2X1 NOR2X1_21 ( .gnd(gnd), .vdd(vdd), .A(_17__24_), .B(_17__25_), .Y(_204_) );
	NAND3X1 NAND3X1_23 ( .gnd(gnd), .vdd(vdd), .A(_196_), .B(_17__27_), .C(_204_), .Y(_205_) );
	INVX1 INVX1_50 ( .gnd(gnd), .vdd(vdd), .A(_17__27_), .Y(_206_) );
	AOI21X1 AOI21X1_39 ( .gnd(gnd), .vdd(vdd), .A(_197_), .B(_206_), .C(_194_), .Y(_207_) );
	AOI22X1 AOI22X1_10 ( .gnd(gnd), .vdd(vdd), .A(D_32b[27]), .B(_176_), .C(_207_), .D(_205_), .Y(_208_) );
	AOI21X1 AOI21X1_40 ( .gnd(gnd), .vdd(vdd), .A(_203_), .B(_208_), .C(_177_), .Y(_171__3_) );
	DFFPOSX1 DFFPOSX1_21 ( .gnd(gnd), .vdd(vdd), .CLK(clk_six), .D(_171__0_), .Q(_17__24_) );
	DFFPOSX1 DFFPOSX1_22 ( .gnd(gnd), .vdd(vdd), .CLK(clk_six), .D(_171__1_), .Q(_17__25_) );
	DFFPOSX1 DFFPOSX1_23 ( .gnd(gnd), .vdd(vdd), .CLK(clk_six), .D(_171__2_), .Q(_17__26_) );
	DFFPOSX1 DFFPOSX1_24 ( .gnd(gnd), .vdd(vdd), .CLK(clk_six), .D(_171__3_), .Q(_17__27_) );
	DFFPOSX1 DFFPOSX1_25 ( .gnd(gnd), .vdd(vdd), .CLK(clk_six), .D(_172_), .Q(counter_six_load) );
	INVX1 INVX1_51 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_211_) );
	INVX1 INVX1_52 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf0), .Y(_212_) );
	INVX1 INVX1_53 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf4), .Y(_213_) );
	NOR2X1 NOR2X1_22 ( .gnd(gnd), .vdd(vdd), .A(_212_), .B(_213_), .Y(_214_) );
	AND2X2 AND2X2_13 ( .gnd(gnd), .vdd(vdd), .A(_214_), .B(_211_), .Y(_210_) );
	NAND2X1 NAND2X1_34 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_211_), .Y(_215_) );
	NAND2X1 NAND2X1_35 ( .gnd(gnd), .vdd(vdd), .A(D_32b[12]), .B(_214_), .Y(_216_) );
	INVX1 INVX1_54 ( .gnd(gnd), .vdd(vdd), .A(_17__12_), .Y(_217_) );
	OAI21X1 OAI21X1_28 ( .gnd(gnd), .vdd(vdd), .A(_212_), .B(_213_), .C(_217_), .Y(_218_) );
	AOI21X1 AOI21X1_41 ( .gnd(gnd), .vdd(vdd), .A(_216_), .B(_218_), .C(_215_), .Y(_209__0_) );
	NAND2X1 NAND2X1_36 ( .gnd(gnd), .vdd(vdd), .A(D_32b[13]), .B(_214_), .Y(_219_) );
	XNOR2X1 XNOR2X1_11 ( .gnd(gnd), .vdd(vdd), .A(_17__12_), .B(_17__13_), .Y(_220_) );
	OAI21X1 OAI21X1_29 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf3), .B(_213_), .C(_220_), .Y(_221_) );
	OAI21X1 OAI21X1_30 ( .gnd(gnd), .vdd(vdd), .A(_213_), .B(_220_), .C(_221_), .Y(_222_) );
	AOI21X1 AOI21X1_42 ( .gnd(gnd), .vdd(vdd), .A(_222_), .B(_219_), .C(_215_), .Y(_209__1_) );
	NOR2X1 NOR2X1_23 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf2), .B(counter_five_mode_0_bF_buf3), .Y(_223_) );
	AOI21X1 AOI21X1_43 ( .gnd(gnd), .vdd(vdd), .A(_17__12_), .B(_17__13_), .C(_17__14_), .Y(_224_) );
	INVX1 INVX1_55 ( .gnd(gnd), .vdd(vdd), .A(_224_), .Y(_225_) );
	NAND3X1 NAND3X1_24 ( .gnd(gnd), .vdd(vdd), .A(_17__12_), .B(_17__13_), .C(_17__14_), .Y(_226_) );
	NAND3X1 NAND3X1_25 ( .gnd(gnd), .vdd(vdd), .A(_223_), .B(_226_), .C(_225_), .Y(_227_) );
	NAND2X1 NAND2X1_37 ( .gnd(gnd), .vdd(vdd), .A(D_32b[14]), .B(_214_), .Y(_228_) );
	AND2X2 AND2X2_14 ( .gnd(gnd), .vdd(vdd), .A(_227_), .B(_228_), .Y(_229_) );
	NOR2X1 NOR2X1_24 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf2), .B(_212_), .Y(_230_) );
	NAND2X1 NAND2X1_38 ( .gnd(gnd), .vdd(vdd), .A(_226_), .B(_225_), .Y(_231_) );
	NAND2X1 NAND2X1_39 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf1), .B(_212_), .Y(_232_) );
	INVX1 INVX1_56 ( .gnd(gnd), .vdd(vdd), .A(_17__13_), .Y(_233_) );
	INVX1 INVX1_57 ( .gnd(gnd), .vdd(vdd), .A(_17__14_), .Y(_234_) );
	NAND3X1 NAND3X1_26 ( .gnd(gnd), .vdd(vdd), .A(_217_), .B(_233_), .C(_234_), .Y(_235_) );
	OAI21X1 OAI21X1_31 ( .gnd(gnd), .vdd(vdd), .A(_17__12_), .B(_17__13_), .C(_17__14_), .Y(_236_) );
	AOI21X1 AOI21X1_44 ( .gnd(gnd), .vdd(vdd), .A(_235_), .B(_236_), .C(_232_), .Y(_237_) );
	AOI21X1 AOI21X1_45 ( .gnd(gnd), .vdd(vdd), .A(_230_), .B(_231_), .C(_237_), .Y(_238_) );
	AOI21X1 AOI21X1_46 ( .gnd(gnd), .vdd(vdd), .A(_238_), .B(_229_), .C(_215_), .Y(_209__2_) );
	XNOR2X1 XNOR2X1_12 ( .gnd(gnd), .vdd(vdd), .A(_226_), .B(_17__15_), .Y(_239_) );
	XOR2X1 XOR2X1_6 ( .gnd(gnd), .vdd(vdd), .A(_224_), .B(_17__15_), .Y(_240_) );
	AOI22X1 AOI22X1_11 ( .gnd(gnd), .vdd(vdd), .A(_239_), .B(_223_), .C(_230_), .D(_240_), .Y(_241_) );
	NOR2X1 NOR2X1_25 ( .gnd(gnd), .vdd(vdd), .A(_17__12_), .B(_17__13_), .Y(_242_) );
	NAND3X1 NAND3X1_27 ( .gnd(gnd), .vdd(vdd), .A(_234_), .B(_17__15_), .C(_242_), .Y(_243_) );
	INVX1 INVX1_58 ( .gnd(gnd), .vdd(vdd), .A(_17__15_), .Y(_244_) );
	AOI21X1 AOI21X1_47 ( .gnd(gnd), .vdd(vdd), .A(_235_), .B(_244_), .C(_232_), .Y(_245_) );
	AOI22X1 AOI22X1_12 ( .gnd(gnd), .vdd(vdd), .A(D_32b[15]), .B(_214_), .C(_245_), .D(_243_), .Y(_246_) );
	AOI21X1 AOI21X1_48 ( .gnd(gnd), .vdd(vdd), .A(_241_), .B(_246_), .C(_215_), .Y(_209__3_) );
	DFFPOSX1 DFFPOSX1_26 ( .gnd(gnd), .vdd(vdd), .CLK(clk_three), .D(_209__0_), .Q(_17__12_) );
	DFFPOSX1 DFFPOSX1_27 ( .gnd(gnd), .vdd(vdd), .CLK(clk_three), .D(_209__1_), .Q(_17__13_) );
	DFFPOSX1 DFFPOSX1_28 ( .gnd(gnd), .vdd(vdd), .CLK(clk_three), .D(_209__2_), .Q(_17__14_) );
	DFFPOSX1 DFFPOSX1_29 ( .gnd(gnd), .vdd(vdd), .CLK(clk_three), .D(_209__3_), .Q(_17__15_) );
	DFFPOSX1 DFFPOSX1_30 ( .gnd(gnd), .vdd(vdd), .CLK(clk_three), .D(_210_), .Q(counter_three_load) );
	INVX1 INVX1_59 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_249_) );
	INVX1 INVX1_60 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf1), .Y(_250_) );
	INVX1 INVX1_61 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf0), .Y(_251_) );
	NOR2X1 NOR2X1_26 ( .gnd(gnd), .vdd(vdd), .A(_250_), .B(_251_), .Y(_252_) );
	AND2X2 AND2X2_15 ( .gnd(gnd), .vdd(vdd), .A(_252_), .B(_249_), .Y(_248_) );
	NAND2X1 NAND2X1_40 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_249_), .Y(_253_) );
	NAND2X1 NAND2X1_41 ( .gnd(gnd), .vdd(vdd), .A(D_32b[8]), .B(_252_), .Y(_254_) );
	INVX1 INVX1_62 ( .gnd(gnd), .vdd(vdd), .A(_17__8_), .Y(_255_) );
	OAI21X1 OAI21X1_32 ( .gnd(gnd), .vdd(vdd), .A(_250_), .B(_251_), .C(_255_), .Y(_256_) );
	AOI21X1 AOI21X1_49 ( .gnd(gnd), .vdd(vdd), .A(_254_), .B(_256_), .C(_253_), .Y(_247__0_) );
	NAND2X1 NAND2X1_42 ( .gnd(gnd), .vdd(vdd), .A(D_32b[9]), .B(_252_), .Y(_257_) );
	XNOR2X1 XNOR2X1_13 ( .gnd(gnd), .vdd(vdd), .A(_17__8_), .B(_17__9_), .Y(_258_) );
	OAI21X1 OAI21X1_33 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf0), .B(_251_), .C(_258_), .Y(_259_) );
	OAI21X1 OAI21X1_34 ( .gnd(gnd), .vdd(vdd), .A(_251_), .B(_258_), .C(_259_), .Y(_260_) );
	AOI21X1 AOI21X1_50 ( .gnd(gnd), .vdd(vdd), .A(_260_), .B(_257_), .C(_253_), .Y(_247__1_) );
	NOR2X1 NOR2X1_27 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_1_bF_buf3), .B(counter_five_mode_0_bF_buf4), .Y(_261_) );
	AOI21X1 AOI21X1_51 ( .gnd(gnd), .vdd(vdd), .A(_17__8_), .B(_17__9_), .C(_17__10_), .Y(_262_) );
	INVX1 INVX1_63 ( .gnd(gnd), .vdd(vdd), .A(_262_), .Y(_263_) );
	NAND3X1 NAND3X1_28 ( .gnd(gnd), .vdd(vdd), .A(_17__8_), .B(_17__9_), .C(_17__10_), .Y(_264_) );
	NAND3X1 NAND3X1_29 ( .gnd(gnd), .vdd(vdd), .A(_261_), .B(_264_), .C(_263_), .Y(_265_) );
	NAND2X1 NAND2X1_43 ( .gnd(gnd), .vdd(vdd), .A(D_32b[10]), .B(_252_), .Y(_266_) );
	AND2X2 AND2X2_16 ( .gnd(gnd), .vdd(vdd), .A(_265_), .B(_266_), .Y(_267_) );
	NOR2X1 NOR2X1_28 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf3), .B(_250_), .Y(_268_) );
	NAND2X1 NAND2X1_44 ( .gnd(gnd), .vdd(vdd), .A(_264_), .B(_263_), .Y(_269_) );
	NAND2X1 NAND2X1_45 ( .gnd(gnd), .vdd(vdd), .A(counter_five_mode_0_bF_buf2), .B(_250_), .Y(_270_) );
	INVX1 INVX1_64 ( .gnd(gnd), .vdd(vdd), .A(_17__9_), .Y(_271_) );
	INVX1 INVX1_65 ( .gnd(gnd), .vdd(vdd), .A(_17__10_), .Y(_272_) );
	NAND3X1 NAND3X1_30 ( .gnd(gnd), .vdd(vdd), .A(_255_), .B(_271_), .C(_272_), .Y(_273_) );
	OAI21X1 OAI21X1_35 ( .gnd(gnd), .vdd(vdd), .A(_17__8_), .B(_17__9_), .C(_17__10_), .Y(_274_) );
	AOI21X1 AOI21X1_52 ( .gnd(gnd), .vdd(vdd), .A(_273_), .B(_274_), .C(_270_), .Y(_275_) );
	AOI21X1 AOI21X1_53 ( .gnd(gnd), .vdd(vdd), .A(_268_), .B(_269_), .C(_275_), .Y(_276_) );
	AOI21X1 AOI21X1_54 ( .gnd(gnd), .vdd(vdd), .A(_276_), .B(_267_), .C(_253_), .Y(_247__2_) );
	XNOR2X1 XNOR2X1_14 ( .gnd(gnd), .vdd(vdd), .A(_264_), .B(_17__11_), .Y(_277_) );
	XOR2X1 XOR2X1_7 ( .gnd(gnd), .vdd(vdd), .A(_262_), .B(_17__11_), .Y(_278_) );
	AOI22X1 AOI22X1_13 ( .gnd(gnd), .vdd(vdd), .A(_277_), .B(_261_), .C(_268_), .D(_278_), .Y(_279_) );
	NOR2X1 NOR2X1_29 ( .gnd(gnd), .vdd(vdd), .A(_17__8_), .B(_17__9_), .Y(_280_) );
	NAND3X1 NAND3X1_31 ( .gnd(gnd), .vdd(vdd), .A(_272_), .B(_17__11_), .C(_280_), .Y(_281_) );
	INVX1 INVX1_66 ( .gnd(gnd), .vdd(vdd), .A(_17__11_), .Y(_282_) );
	AOI21X1 AOI21X1_55 ( .gnd(gnd), .vdd(vdd), .A(_273_), .B(_282_), .C(_270_), .Y(_283_) );
	AOI22X1 AOI22X1_14 ( .gnd(gnd), .vdd(vdd), .A(D_32b[11]), .B(_252_), .C(_283_), .D(_281_), .Y(_284_) );
	AOI21X1 AOI21X1_56 ( .gnd(gnd), .vdd(vdd), .A(_279_), .B(_284_), .C(_253_), .Y(_247__3_) );
	DFFPOSX1 DFFPOSX1_31 ( .gnd(gnd), .vdd(vdd), .CLK(clk_two), .D(_247__0_), .Q(_17__8_) );
	DFFPOSX1 DFFPOSX1_32 ( .gnd(gnd), .vdd(vdd), .CLK(clk_two), .D(_247__1_), .Q(_17__9_) );
	DFFPOSX1 DFFPOSX1_33 ( .gnd(gnd), .vdd(vdd), .CLK(clk_two), .D(_247__2_), .Q(_17__10_) );
	DFFPOSX1 DFFPOSX1_34 ( .gnd(gnd), .vdd(vdd), .CLK(clk_two), .D(_247__3_), .Q(_17__11_) );
	DFFPOSX1 DFFPOSX1_35 ( .gnd(gnd), .vdd(vdd), .CLK(clk_two), .D(_248_), .Q(counter_two_load) );
	INVX1 INVX1_67 ( .gnd(gnd), .vdd(vdd), .A(reset), .Y(_287_) );
	INVX1 INVX1_68 ( .gnd(gnd), .vdd(vdd), .A(mode[1]), .Y(_288_) );
	INVX1 INVX1_69 ( .gnd(gnd), .vdd(vdd), .A(mode[0]), .Y(_289_) );
	NOR2X1 NOR2X1_30 ( .gnd(gnd), .vdd(vdd), .A(_288_), .B(_289_), .Y(_290_) );
	AND2X2 AND2X2_17 ( .gnd(gnd), .vdd(vdd), .A(_290_), .B(_287_), .Y(_286_) );
	NAND2X1 NAND2X1_46 ( .gnd(gnd), .vdd(vdd), .A(enable), .B(_287_), .Y(_291_) );
	NAND2X1 NAND2X1_47 ( .gnd(gnd), .vdd(vdd), .A(D_32b[0]), .B(_290_), .Y(_292_) );
	INVX1 INVX1_70 ( .gnd(gnd), .vdd(vdd), .A(_17__0_), .Y(_293_) );
	OAI21X1 OAI21X1_36 ( .gnd(gnd), .vdd(vdd), .A(_288_), .B(_289_), .C(_293_), .Y(_294_) );
	AOI21X1 AOI21X1_57 ( .gnd(gnd), .vdd(vdd), .A(_292_), .B(_294_), .C(_291_), .Y(_285__0_) );
	NAND2X1 NAND2X1_48 ( .gnd(gnd), .vdd(vdd), .A(D_32b[1]), .B(_290_), .Y(_295_) );
	XNOR2X1 XNOR2X1_15 ( .gnd(gnd), .vdd(vdd), .A(_17__0_), .B(_17__1_), .Y(_296_) );
	OAI21X1 OAI21X1_37 ( .gnd(gnd), .vdd(vdd), .A(mode[1]), .B(_289_), .C(_296_), .Y(_297_) );
	OAI21X1 OAI21X1_38 ( .gnd(gnd), .vdd(vdd), .A(_289_), .B(_296_), .C(_297_), .Y(_298_) );
	AOI21X1 AOI21X1_58 ( .gnd(gnd), .vdd(vdd), .A(_298_), .B(_295_), .C(_291_), .Y(_285__1_) );
	NOR2X1 NOR2X1_31 ( .gnd(gnd), .vdd(vdd), .A(mode[1]), .B(mode[0]), .Y(_299_) );
	AOI21X1 AOI21X1_59 ( .gnd(gnd), .vdd(vdd), .A(_17__0_), .B(_17__1_), .C(_17__2_), .Y(_300_) );
	INVX1 INVX1_71 ( .gnd(gnd), .vdd(vdd), .A(_300_), .Y(_301_) );
	NAND3X1 NAND3X1_32 ( .gnd(gnd), .vdd(vdd), .A(_17__0_), .B(_17__1_), .C(_17__2_), .Y(_302_) );
	NAND3X1 NAND3X1_33 ( .gnd(gnd), .vdd(vdd), .A(_299_), .B(_302_), .C(_301_), .Y(_303_) );
	NAND2X1 NAND2X1_49 ( .gnd(gnd), .vdd(vdd), .A(D_32b[2]), .B(_290_), .Y(_304_) );
	AND2X2 AND2X2_18 ( .gnd(gnd), .vdd(vdd), .A(_303_), .B(_304_), .Y(_305_) );
	NOR2X1 NOR2X1_32 ( .gnd(gnd), .vdd(vdd), .A(mode[0]), .B(_288_), .Y(_306_) );
	NAND2X1 NAND2X1_50 ( .gnd(gnd), .vdd(vdd), .A(_302_), .B(_301_), .Y(_307_) );
	NAND2X1 NAND2X1_51 ( .gnd(gnd), .vdd(vdd), .A(mode[0]), .B(_288_), .Y(_308_) );
	INVX1 INVX1_72 ( .gnd(gnd), .vdd(vdd), .A(_17__1_), .Y(_309_) );
	INVX1 INVX1_73 ( .gnd(gnd), .vdd(vdd), .A(_17__2_), .Y(_310_) );
	NAND3X1 NAND3X1_34 ( .gnd(gnd), .vdd(vdd), .A(_293_), .B(_309_), .C(_310_), .Y(_311_) );
	OAI21X1 OAI21X1_39 ( .gnd(gnd), .vdd(vdd), .A(_17__0_), .B(_17__1_), .C(_17__2_), .Y(_312_) );
	AOI21X1 AOI21X1_60 ( .gnd(gnd), .vdd(vdd), .A(_311_), .B(_312_), .C(_308_), .Y(_313_) );
	AOI21X1 AOI21X1_61 ( .gnd(gnd), .vdd(vdd), .A(_306_), .B(_307_), .C(_313_), .Y(_314_) );
	AOI21X1 AOI21X1_62 ( .gnd(gnd), .vdd(vdd), .A(_314_), .B(_305_), .C(_291_), .Y(_285__2_) );
	XNOR2X1 XNOR2X1_16 ( .gnd(gnd), .vdd(vdd), .A(_302_), .B(_17__3_), .Y(_315_) );
	XOR2X1 XOR2X1_8 ( .gnd(gnd), .vdd(vdd), .A(_300_), .B(_17__3_), .Y(_316_) );
	AOI22X1 AOI22X1_15 ( .gnd(gnd), .vdd(vdd), .A(_315_), .B(_299_), .C(_306_), .D(_316_), .Y(_317_) );
	NOR2X1 NOR2X1_33 ( .gnd(gnd), .vdd(vdd), .A(_17__0_), .B(_17__1_), .Y(_318_) );
	NAND3X1 NAND3X1_35 ( .gnd(gnd), .vdd(vdd), .A(_310_), .B(_17__3_), .C(_318_), .Y(_319_) );
	INVX1 INVX1_74 ( .gnd(gnd), .vdd(vdd), .A(_17__3_), .Y(_320_) );
	AOI21X1 AOI21X1_63 ( .gnd(gnd), .vdd(vdd), .A(_311_), .B(_320_), .C(_308_), .Y(_321_) );
	AOI22X1 AOI22X1_16 ( .gnd(gnd), .vdd(vdd), .A(D_32b[3]), .B(_290_), .C(_321_), .D(_319_), .Y(_322_) );
	AOI21X1 AOI21X1_64 ( .gnd(gnd), .vdd(vdd), .A(_317_), .B(_322_), .C(_291_), .Y(_285__3_) );
	DFFPOSX1 DFFPOSX1_36 ( .gnd(gnd), .vdd(vdd), .CLK(clk), .D(_285__0_), .Q(_17__0_) );
	DFFPOSX1 DFFPOSX1_37 ( .gnd(gnd), .vdd(vdd), .CLK(clk), .D(_285__1_), .Q(_17__1_) );
	DFFPOSX1 DFFPOSX1_38 ( .gnd(gnd), .vdd(vdd), .CLK(clk), .D(_285__2_), .Q(_17__2_) );
	DFFPOSX1 DFFPOSX1_39 ( .gnd(gnd), .vdd(vdd), .CLK(clk), .D(_285__3_), .Q(_17__3_) );
	DFFPOSX1 DFFPOSX1_40 ( .gnd(gnd), .vdd(vdd), .CLK(clk), .D(_286_), .Q(counter_zero_load) );
endmodule