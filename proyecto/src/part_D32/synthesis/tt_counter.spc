*SPICE netlist created from BLIF module tt_counter by blif2BSpice
.include /usr/share/qflow/tech/osu050/osu050_stdcells.sp
.subckt tt_counter vdd gnd clk reset enable D_32b<0> D_32b<1> D_32b<2> D_32b<3> D_32b<4> D_32b<5> D_32b<6> D_32b<7> D_32b<8> D_32b<9> D_32b<10> D_32b<11> D_32b<12> D_32b<13> D_32b<14> D_32b<15> D_32b<16> D_32b<17> D_32b<18> D_32b<19> D_32b<20> D_32b<21> D_32b<22> D_32b<23> D_32b<24> D_32b<25> D_32b<26> D_32b<27> D_32b<28> D_32b<29> D_32b<30> D_32b<31> mode<0> mode<1> Q_32b<0> Q_32b<1> Q_32b<2> Q_32b<3> Q_32b<4> Q_32b<5> Q_32b<6> Q_32b<7> Q_32b<8> Q_32b<9> Q_32b<10> Q_32b<11> Q_32b<12> Q_32b<13> Q_32b<14> Q_32b<15> Q_32b<16> Q_32b<17> Q_32b<18> Q_32b<19> Q_32b<20> Q_32b<21> Q_32b<22> Q_32b<23> Q_32b<24> Q_32b<25> Q_32b<26> Q_32b<27> Q_32b<28> Q_32b<29> Q_32b<30> Q_32b<31> rco_32b load_32b 
XBUFX2_1 vdd gnd counter_five.mode<1> counter_five.mode_1_bF$buf3 BUFX2
XBUFX2_2 vdd gnd counter_five.mode<1> counter_five.mode_1_bF$buf2 BUFX2
XBUFX2_3 vdd gnd counter_five.mode<1> counter_five.mode_1_bF$buf1 BUFX2
XBUFX2_4 vdd gnd counter_five.mode<1> counter_five.mode_1_bF$buf0 BUFX2
XBUFX2_5 vdd gnd counter_five.mode<0> counter_five.mode_0_bF$buf4 BUFX2
XBUFX2_6 vdd gnd counter_five.mode<0> counter_five.mode_0_bF$buf3 BUFX2
XBUFX2_7 vdd gnd counter_five.mode<0> counter_five.mode_0_bF$buf2 BUFX2
XBUFX2_8 vdd gnd counter_five.mode<0> counter_five.mode_0_bF$buf1 BUFX2
XBUFX2_9 vdd gnd counter_five.mode<0> counter_five.mode_0_bF$buf0 BUFX2
XAND2X2_1 vdd gnd counter_one.load counter_two.load _0_ AND2X2
XNAND3X1_1 counter_seven.load vdd gnd counter_four.load _0_ _1_ NAND3X1
XAND2X2_2 vdd gnd counter_zero.load counter_three.load _2_ AND2X2
XNAND3X1_2 counter_six.load vdd gnd counter_five.load _2_ _3_ NAND3X1
XNOR2X1_1 vdd _3_ gnd _18_ _1_ NOR2X1
XINVX1_1 mode<1> _4_ vdd gnd INVX1
XINVX1_2 mode<0> _5_ vdd gnd INVX1
XNAND2X1_1 vdd counter_five.mode<0> gnd _4_ _5_ NAND2X1
XNAND2X1_2 vdd _6_ gnd mode<1> mode<0> NAND2X1
XINVX4_1 vdd gnd counter_five.mode<1> _6_ INVX4
XINVX1_3 gnd _7_ vdd gnd INVX1
XINVX1_4 reset _8_ vdd gnd INVX1
XNAND3X1_3 _8_ vdd gnd enable _6_ _9_ NAND3X1
XNAND2X1_3 vdd _10_ gnd clk _9_ NAND2X1
XOAI21X1_1 gnd vdd _7_ _9_ clk_one _10_ OAI21X1
XINVX1_5 gnd _11_ vdd gnd INVX1
XOAI21X1_2 gnd vdd _11_ _9_ clk_two _10_ OAI21X1
XINVX1_6 gnd _12_ vdd gnd INVX1
XOAI21X1_3 gnd vdd _12_ _9_ clk_three _10_ OAI21X1
XINVX1_7 gnd _13_ vdd gnd INVX1
XOAI21X1_4 gnd vdd _13_ _9_ clk_four _10_ OAI21X1
XINVX1_8 gnd _14_ vdd gnd INVX1
XOAI21X1_5 gnd vdd _14_ _9_ clk_five _10_ OAI21X1
XINVX1_9 gnd _15_ vdd gnd INVX1
XOAI21X1_6 gnd vdd _15_ _9_ clk_six _10_ OAI21X1
XINVX1_10 gnd _16_ vdd gnd INVX1
XOAI21X1_7 gnd vdd _16_ _9_ clk_seven _10_ OAI21X1
XBUFX2_10 vdd gnd _17_<0> Q_32b<0> BUFX2
XBUFX2_11 vdd gnd _17_<1> Q_32b<1> BUFX2
XBUFX2_12 vdd gnd _17_<2> Q_32b<2> BUFX2
XBUFX2_13 vdd gnd _17_<3> Q_32b<3> BUFX2
XBUFX2_14 vdd gnd _17_<4> Q_32b<4> BUFX2
XBUFX2_15 vdd gnd _17_<5> Q_32b<5> BUFX2
XBUFX2_16 vdd gnd _17_<6> Q_32b<6> BUFX2
XBUFX2_17 vdd gnd _17_<7> Q_32b<7> BUFX2
XBUFX2_18 vdd gnd _17_<8> Q_32b<8> BUFX2
XBUFX2_19 vdd gnd _17_<9> Q_32b<9> BUFX2
XBUFX2_20 vdd gnd _17_<10> Q_32b<10> BUFX2
XBUFX2_21 vdd gnd _17_<11> Q_32b<11> BUFX2
XBUFX2_22 vdd gnd _17_<12> Q_32b<12> BUFX2
XBUFX2_23 vdd gnd _17_<13> Q_32b<13> BUFX2
XBUFX2_24 vdd gnd _17_<14> Q_32b<14> BUFX2
XBUFX2_25 vdd gnd _17_<15> Q_32b<15> BUFX2
XBUFX2_26 vdd gnd _17_<16> Q_32b<16> BUFX2
XBUFX2_27 vdd gnd _17_<17> Q_32b<17> BUFX2
XBUFX2_28 vdd gnd _17_<18> Q_32b<18> BUFX2
XBUFX2_29 vdd gnd _17_<19> Q_32b<19> BUFX2
XBUFX2_30 vdd gnd _17_<20> Q_32b<20> BUFX2
XBUFX2_31 vdd gnd _17_<21> Q_32b<21> BUFX2
XBUFX2_32 vdd gnd _17_<22> Q_32b<22> BUFX2
XBUFX2_33 vdd gnd _17_<23> Q_32b<23> BUFX2
XBUFX2_34 vdd gnd _17_<24> Q_32b<24> BUFX2
XBUFX2_35 vdd gnd _17_<25> Q_32b<25> BUFX2
XBUFX2_36 vdd gnd _17_<26> Q_32b<26> BUFX2
XBUFX2_37 vdd gnd _17_<27> Q_32b<27> BUFX2
XBUFX2_38 vdd gnd _17_<28> Q_32b<28> BUFX2
XBUFX2_39 vdd gnd _17_<29> Q_32b<29> BUFX2
XBUFX2_40 vdd gnd _17_<30> Q_32b<30> BUFX2
XBUFX2_41 vdd gnd _17_<31> Q_32b<31> BUFX2
XBUFX2_42 vdd gnd _18_ load_32b BUFX2
XBUFX2_43 vdd gnd gnd rco_32b BUFX2
XINVX1_11 reset _21_ vdd gnd INVX1
XINVX1_12 counter_five.mode_1_bF$buf3 _22_ vdd gnd INVX1
XINVX1_13 counter_five.mode_0_bF$buf4 _23_ vdd gnd INVX1
XNOR2X1_2 vdd _23_ gnd _24_ _22_ NOR2X1
XAND2X2_3 vdd gnd _24_ _21_ _20_ AND2X2
XNAND2X1_4 vdd _25_ gnd enable _21_ NAND2X1
XNAND2X1_5 vdd _26_ gnd D_32b<20> _24_ NAND2X1
XINVX1_14 _17_<20> _27_ vdd gnd INVX1
XOAI21X1_8 gnd vdd _22_ _23_ _28_ _27_ OAI21X1
XAOI21X1_1 gnd vdd _26_ _28_ _19_<0> _25_ AOI21X1
XNAND2X1_6 vdd _29_ gnd D_32b<21> _24_ NAND2X1
XXNOR2X1_1 _17_<20> _17_<21> gnd vdd _30_ XNOR2X1
XOAI21X1_9 gnd vdd counter_five.mode_1_bF$buf2 _23_ _31_ _30_ OAI21X1
XOAI21X1_10 gnd vdd _23_ _30_ _32_ _31_ OAI21X1
XAOI21X1_2 gnd vdd _32_ _29_ _19_<1> _25_ AOI21X1
XNOR2X1_3 vdd counter_five.mode_0_bF$buf3 gnd _33_ counter_five.mode_1_bF$buf1 NOR2X1
XAOI21X1_3 gnd vdd _17_<20> _17_<21> _34_ _17_<22> AOI21X1
XINVX1_15 _34_ _35_ vdd gnd INVX1
XNAND3X1_4 _17_<21> vdd gnd _17_<20> _17_<22> _36_ NAND3X1
XNAND3X1_5 _36_ vdd gnd _33_ _35_ _37_ NAND3X1
XNAND2X1_7 vdd _38_ gnd D_32b<22> _24_ NAND2X1
XAND2X2_4 vdd gnd _37_ _38_ _39_ AND2X2
XNOR2X1_4 vdd _22_ gnd _40_ counter_five.mode_0_bF$buf2 NOR2X1
XNAND2X1_8 vdd _41_ gnd _36_ _35_ NAND2X1
XNAND2X1_9 vdd _42_ gnd counter_five.mode_0_bF$buf1 _22_ NAND2X1
XINVX1_16 _17_<21> _43_ vdd gnd INVX1
XINVX1_17 _17_<22> _44_ vdd gnd INVX1
XNAND3X1_6 _43_ vdd gnd _27_ _44_ _45_ NAND3X1
XOAI21X1_11 gnd vdd _17_<20> _17_<21> _46_ _17_<22> OAI21X1
XAOI21X1_4 gnd vdd _45_ _46_ _47_ _42_ AOI21X1
XAOI21X1_5 gnd vdd _40_ _41_ _48_ _47_ AOI21X1
XAOI21X1_6 gnd vdd _48_ _39_ _19_<2> _25_ AOI21X1
XXNOR2X1_2 _36_ _17_<23> gnd vdd _49_ XNOR2X1
XXOR2X1_1 _50_ vdd _17_<23> _34_ gnd XOR2X1
XAOI22X1_1 gnd vdd _40_ _50_ _51_ _49_ _33_ AOI22X1
XNOR2X1_5 vdd _17_<21> gnd _52_ _17_<20> NOR2X1
XNAND3X1_7 _17_<23> vdd gnd _44_ _52_ _53_ NAND3X1
XINVX1_18 _17_<23> _54_ vdd gnd INVX1
XAOI21X1_7 gnd vdd _45_ _54_ _55_ _42_ AOI21X1
XAOI22X1_2 gnd vdd _55_ _53_ _56_ D_32b<23> _24_ AOI22X1
XAOI21X1_8 gnd vdd _51_ _56_ _19_<3> _25_ AOI21X1
XDFFPOSX1_1 vdd _19_<0> gnd _17_<20> clk_five DFFPOSX1
XDFFPOSX1_2 vdd _19_<1> gnd _17_<21> clk_five DFFPOSX1
XDFFPOSX1_3 vdd _19_<2> gnd _17_<22> clk_five DFFPOSX1
XDFFPOSX1_4 vdd _19_<3> gnd _17_<23> clk_five DFFPOSX1
XDFFPOSX1_5 vdd _20_ gnd counter_five.load clk_five DFFPOSX1
XINVX1_19 reset _59_ vdd gnd INVX1
XINVX1_20 counter_five.mode_1_bF$buf0 _60_ vdd gnd INVX1
XINVX1_21 counter_five.mode_0_bF$buf0 _61_ vdd gnd INVX1
XNOR2X1_6 vdd _61_ gnd _62_ _60_ NOR2X1
XAND2X2_5 vdd gnd _62_ _59_ _58_ AND2X2
XNAND2X1_10 vdd _63_ gnd enable _59_ NAND2X1
XNAND2X1_11 vdd _64_ gnd D_32b<16> _62_ NAND2X1
XINVX1_22 _17_<16> _65_ vdd gnd INVX1
XOAI21X1_12 gnd vdd _60_ _61_ _66_ _65_ OAI21X1
XAOI21X1_9 gnd vdd _64_ _66_ _57_<0> _63_ AOI21X1
XNAND2X1_12 vdd _67_ gnd D_32b<17> _62_ NAND2X1
XXNOR2X1_3 _17_<16> _17_<17> gnd vdd _68_ XNOR2X1
XOAI21X1_13 gnd vdd counter_five.mode_1_bF$buf3 _61_ _69_ _68_ OAI21X1
XOAI21X1_14 gnd vdd _61_ _68_ _70_ _69_ OAI21X1
XAOI21X1_10 gnd vdd _70_ _67_ _57_<1> _63_ AOI21X1
XNOR2X1_7 vdd counter_five.mode_0_bF$buf4 gnd _71_ counter_five.mode_1_bF$buf2 NOR2X1
XAOI21X1_11 gnd vdd _17_<16> _17_<17> _72_ _17_<18> AOI21X1
XINVX1_23 _72_ _73_ vdd gnd INVX1
XNAND3X1_8 _17_<17> vdd gnd _17_<16> _17_<18> _74_ NAND3X1
XNAND3X1_9 _74_ vdd gnd _71_ _73_ _75_ NAND3X1
XNAND2X1_13 vdd _76_ gnd D_32b<18> _62_ NAND2X1
XAND2X2_6 vdd gnd _75_ _76_ _77_ AND2X2
XNOR2X1_8 vdd _60_ gnd _78_ counter_five.mode_0_bF$buf3 NOR2X1
XNAND2X1_14 vdd _79_ gnd _74_ _73_ NAND2X1
XNAND2X1_15 vdd _80_ gnd counter_five.mode_0_bF$buf2 _60_ NAND2X1
XINVX1_24 _17_<17> _81_ vdd gnd INVX1
XINVX1_25 _17_<18> _82_ vdd gnd INVX1
XNAND3X1_10 _81_ vdd gnd _65_ _82_ _83_ NAND3X1
XOAI21X1_15 gnd vdd _17_<16> _17_<17> _84_ _17_<18> OAI21X1
XAOI21X1_12 gnd vdd _83_ _84_ _85_ _80_ AOI21X1
XAOI21X1_13 gnd vdd _78_ _79_ _86_ _85_ AOI21X1
XAOI21X1_14 gnd vdd _86_ _77_ _57_<2> _63_ AOI21X1
XXNOR2X1_4 _74_ _17_<19> gnd vdd _87_ XNOR2X1
XXOR2X1_2 _88_ vdd _17_<19> _72_ gnd XOR2X1
XAOI22X1_3 gnd vdd _78_ _88_ _89_ _87_ _71_ AOI22X1
XNOR2X1_9 vdd _17_<17> gnd _90_ _17_<16> NOR2X1
XNAND3X1_11 _17_<19> vdd gnd _82_ _90_ _91_ NAND3X1
XINVX1_26 _17_<19> _92_ vdd gnd INVX1
XAOI21X1_15 gnd vdd _83_ _92_ _93_ _80_ AOI21X1
XAOI22X1_4 gnd vdd _93_ _91_ _94_ D_32b<19> _62_ AOI22X1
XAOI21X1_16 gnd vdd _89_ _94_ _57_<3> _63_ AOI21X1
XDFFPOSX1_6 vdd _57_<0> gnd _17_<16> clk_four DFFPOSX1
XDFFPOSX1_7 vdd _57_<1> gnd _17_<17> clk_four DFFPOSX1
XDFFPOSX1_8 vdd _57_<2> gnd _17_<18> clk_four DFFPOSX1
XDFFPOSX1_9 vdd _57_<3> gnd _17_<19> clk_four DFFPOSX1
XDFFPOSX1_10 vdd _58_ gnd counter_four.load clk_four DFFPOSX1
XINVX1_27 reset _97_ vdd gnd INVX1
XINVX1_28 counter_five.mode_1_bF$buf1 _98_ vdd gnd INVX1
XINVX1_29 counter_five.mode_0_bF$buf1 _99_ vdd gnd INVX1
XNOR2X1_10 vdd _99_ gnd _100_ _98_ NOR2X1
XAND2X2_7 vdd gnd _100_ _97_ _96_ AND2X2
XNAND2X1_16 vdd _101_ gnd enable _97_ NAND2X1
XNAND2X1_17 vdd _102_ gnd D_32b<4> _100_ NAND2X1
XINVX1_30 _17_<4> _103_ vdd gnd INVX1
XOAI21X1_16 gnd vdd _98_ _99_ _104_ _103_ OAI21X1
XAOI21X1_17 gnd vdd _102_ _104_ _95_<0> _101_ AOI21X1
XNAND2X1_18 vdd _105_ gnd D_32b<5> _100_ NAND2X1
XXNOR2X1_5 _17_<4> _17_<5> gnd vdd _106_ XNOR2X1
XOAI21X1_17 gnd vdd counter_five.mode_1_bF$buf0 _99_ _107_ _106_ OAI21X1
XOAI21X1_18 gnd vdd _99_ _106_ _108_ _107_ OAI21X1
XAOI21X1_18 gnd vdd _108_ _105_ _95_<1> _101_ AOI21X1
XNOR2X1_11 vdd counter_five.mode_0_bF$buf0 gnd _109_ counter_five.mode_1_bF$buf3 NOR2X1
XAOI21X1_19 gnd vdd _17_<4> _17_<5> _110_ _17_<6> AOI21X1
XINVX1_31 _110_ _111_ vdd gnd INVX1
XNAND3X1_12 _17_<5> vdd gnd _17_<4> _17_<6> _112_ NAND3X1
XNAND3X1_13 _112_ vdd gnd _109_ _111_ _113_ NAND3X1
XNAND2X1_19 vdd _114_ gnd D_32b<6> _100_ NAND2X1
XAND2X2_8 vdd gnd _113_ _114_ _115_ AND2X2
XNOR2X1_12 vdd _98_ gnd _116_ counter_five.mode_0_bF$buf4 NOR2X1
XNAND2X1_20 vdd _117_ gnd _112_ _111_ NAND2X1
XNAND2X1_21 vdd _118_ gnd counter_five.mode_0_bF$buf3 _98_ NAND2X1
XINVX1_32 _17_<5> _119_ vdd gnd INVX1
XINVX1_33 _17_<6> _120_ vdd gnd INVX1
XNAND3X1_14 _119_ vdd gnd _103_ _120_ _121_ NAND3X1
XOAI21X1_19 gnd vdd _17_<4> _17_<5> _122_ _17_<6> OAI21X1
XAOI21X1_20 gnd vdd _121_ _122_ _123_ _118_ AOI21X1
XAOI21X1_21 gnd vdd _116_ _117_ _124_ _123_ AOI21X1
XAOI21X1_22 gnd vdd _124_ _115_ _95_<2> _101_ AOI21X1
XXNOR2X1_6 _112_ _17_<7> gnd vdd _125_ XNOR2X1
XXOR2X1_3 _126_ vdd _17_<7> _110_ gnd XOR2X1
XAOI22X1_5 gnd vdd _116_ _126_ _127_ _125_ _109_ AOI22X1
XNOR2X1_13 vdd _17_<5> gnd _128_ _17_<4> NOR2X1
XNAND3X1_15 _17_<7> vdd gnd _120_ _128_ _129_ NAND3X1
XINVX1_34 _17_<7> _130_ vdd gnd INVX1
XAOI21X1_23 gnd vdd _121_ _130_ _131_ _118_ AOI21X1
XAOI22X1_6 gnd vdd _131_ _129_ _132_ D_32b<7> _100_ AOI22X1
XAOI21X1_24 gnd vdd _127_ _132_ _95_<3> _101_ AOI21X1
XDFFPOSX1_11 vdd _95_<0> gnd _17_<4> clk_one DFFPOSX1
XDFFPOSX1_12 vdd _95_<1> gnd _17_<5> clk_one DFFPOSX1
XDFFPOSX1_13 vdd _95_<2> gnd _17_<6> clk_one DFFPOSX1
XDFFPOSX1_14 vdd _95_<3> gnd _17_<7> clk_one DFFPOSX1
XDFFPOSX1_15 vdd _96_ gnd counter_one.load clk_one DFFPOSX1
XINVX1_35 reset _135_ vdd gnd INVX1
XINVX1_36 counter_five.mode_1_bF$buf2 _136_ vdd gnd INVX1
XINVX1_37 counter_five.mode_0_bF$buf2 _137_ vdd gnd INVX1
XNOR2X1_14 vdd _137_ gnd _138_ _136_ NOR2X1
XAND2X2_9 vdd gnd _138_ _135_ _134_ AND2X2
XNAND2X1_22 vdd _139_ gnd enable _135_ NAND2X1
XNAND2X1_23 vdd _140_ gnd D_32b<28> _138_ NAND2X1
XINVX1_38 _17_<28> _141_ vdd gnd INVX1
XOAI21X1_20 gnd vdd _136_ _137_ _142_ _141_ OAI21X1
XAOI21X1_25 gnd vdd _140_ _142_ _133_<0> _139_ AOI21X1
XNAND2X1_24 vdd _143_ gnd D_32b<29> _138_ NAND2X1
XXNOR2X1_7 _17_<28> _17_<29> gnd vdd _144_ XNOR2X1
XOAI21X1_21 gnd vdd counter_five.mode_1_bF$buf1 _137_ _145_ _144_ OAI21X1
XOAI21X1_22 gnd vdd _137_ _144_ _146_ _145_ OAI21X1
XAOI21X1_26 gnd vdd _146_ _143_ _133_<1> _139_ AOI21X1
XNOR2X1_15 vdd counter_five.mode_0_bF$buf1 gnd _147_ counter_five.mode_1_bF$buf0 NOR2X1
XAOI21X1_27 gnd vdd _17_<28> _17_<29> _148_ _17_<30> AOI21X1
XINVX1_39 _148_ _149_ vdd gnd INVX1
XNAND3X1_16 _17_<29> vdd gnd _17_<28> _17_<30> _150_ NAND3X1
XNAND3X1_17 _150_ vdd gnd _147_ _149_ _151_ NAND3X1
XNAND2X1_25 vdd _152_ gnd D_32b<30> _138_ NAND2X1
XAND2X2_10 vdd gnd _151_ _152_ _153_ AND2X2
XNOR2X1_16 vdd _136_ gnd _154_ counter_five.mode_0_bF$buf0 NOR2X1
XNAND2X1_26 vdd _155_ gnd _150_ _149_ NAND2X1
XNAND2X1_27 vdd _156_ gnd counter_five.mode_0_bF$buf4 _136_ NAND2X1
XINVX1_40 _17_<29> _157_ vdd gnd INVX1
XINVX1_41 _17_<30> _158_ vdd gnd INVX1
XNAND3X1_18 _157_ vdd gnd _141_ _158_ _159_ NAND3X1
XOAI21X1_23 gnd vdd _17_<28> _17_<29> _160_ _17_<30> OAI21X1
XAOI21X1_28 gnd vdd _159_ _160_ _161_ _156_ AOI21X1
XAOI21X1_29 gnd vdd _154_ _155_ _162_ _161_ AOI21X1
XAOI21X1_30 gnd vdd _162_ _153_ _133_<2> _139_ AOI21X1
XXNOR2X1_8 _150_ _17_<31> gnd vdd _163_ XNOR2X1
XXOR2X1_4 _164_ vdd _17_<31> _148_ gnd XOR2X1
XAOI22X1_7 gnd vdd _154_ _164_ _165_ _163_ _147_ AOI22X1
XNOR2X1_17 vdd _17_<29> gnd _166_ _17_<28> NOR2X1
XNAND3X1_19 _17_<31> vdd gnd _158_ _166_ _167_ NAND3X1
XINVX1_42 _17_<31> _168_ vdd gnd INVX1
XAOI21X1_31 gnd vdd _159_ _168_ _169_ _156_ AOI21X1
XAOI22X1_8 gnd vdd _169_ _167_ _170_ D_32b<31> _138_ AOI22X1
XAOI21X1_32 gnd vdd _165_ _170_ _133_<3> _139_ AOI21X1
XDFFPOSX1_16 vdd _133_<0> gnd _17_<28> clk_seven DFFPOSX1
XDFFPOSX1_17 vdd _133_<1> gnd _17_<29> clk_seven DFFPOSX1
XDFFPOSX1_18 vdd _133_<2> gnd _17_<30> clk_seven DFFPOSX1
XDFFPOSX1_19 vdd _133_<3> gnd _17_<31> clk_seven DFFPOSX1
XDFFPOSX1_20 vdd _134_ gnd counter_seven.load clk_seven DFFPOSX1
XINVX1_43 reset _173_ vdd gnd INVX1
XINVX1_44 counter_five.mode_1_bF$buf3 _174_ vdd gnd INVX1
XINVX1_45 counter_five.mode_0_bF$buf3 _175_ vdd gnd INVX1
XNOR2X1_18 vdd _175_ gnd _176_ _174_ NOR2X1
XAND2X2_11 vdd gnd _176_ _173_ _172_ AND2X2
XNAND2X1_28 vdd _177_ gnd enable _173_ NAND2X1
XNAND2X1_29 vdd _178_ gnd D_32b<24> _176_ NAND2X1
XINVX1_46 _17_<24> _179_ vdd gnd INVX1
XOAI21X1_24 gnd vdd _174_ _175_ _180_ _179_ OAI21X1
XAOI21X1_33 gnd vdd _178_ _180_ _171_<0> _177_ AOI21X1
XNAND2X1_30 vdd _181_ gnd D_32b<25> _176_ NAND2X1
XXNOR2X1_9 _17_<24> _17_<25> gnd vdd _182_ XNOR2X1
XOAI21X1_25 gnd vdd counter_five.mode_1_bF$buf2 _175_ _183_ _182_ OAI21X1
XOAI21X1_26 gnd vdd _175_ _182_ _184_ _183_ OAI21X1
XAOI21X1_34 gnd vdd _184_ _181_ _171_<1> _177_ AOI21X1
XNOR2X1_19 vdd counter_five.mode_0_bF$buf2 gnd _185_ counter_five.mode_1_bF$buf1 NOR2X1
XAOI21X1_35 gnd vdd _17_<24> _17_<25> _186_ _17_<26> AOI21X1
XINVX1_47 _186_ _187_ vdd gnd INVX1
XNAND3X1_20 _17_<25> vdd gnd _17_<24> _17_<26> _188_ NAND3X1
XNAND3X1_21 _188_ vdd gnd _185_ _187_ _189_ NAND3X1
XNAND2X1_31 vdd _190_ gnd D_32b<26> _176_ NAND2X1
XAND2X2_12 vdd gnd _189_ _190_ _191_ AND2X2
XNOR2X1_20 vdd _174_ gnd _192_ counter_five.mode_0_bF$buf1 NOR2X1
XNAND2X1_32 vdd _193_ gnd _188_ _187_ NAND2X1
XNAND2X1_33 vdd _194_ gnd counter_five.mode_0_bF$buf0 _174_ NAND2X1
XINVX1_48 _17_<25> _195_ vdd gnd INVX1
XINVX1_49 _17_<26> _196_ vdd gnd INVX1
XNAND3X1_22 _195_ vdd gnd _179_ _196_ _197_ NAND3X1
XOAI21X1_27 gnd vdd _17_<24> _17_<25> _198_ _17_<26> OAI21X1
XAOI21X1_36 gnd vdd _197_ _198_ _199_ _194_ AOI21X1
XAOI21X1_37 gnd vdd _192_ _193_ _200_ _199_ AOI21X1
XAOI21X1_38 gnd vdd _200_ _191_ _171_<2> _177_ AOI21X1
XXNOR2X1_10 _188_ _17_<27> gnd vdd _201_ XNOR2X1
XXOR2X1_5 _202_ vdd _17_<27> _186_ gnd XOR2X1
XAOI22X1_9 gnd vdd _192_ _202_ _203_ _201_ _185_ AOI22X1
XNOR2X1_21 vdd _17_<25> gnd _204_ _17_<24> NOR2X1
XNAND3X1_23 _17_<27> vdd gnd _196_ _204_ _205_ NAND3X1
XINVX1_50 _17_<27> _206_ vdd gnd INVX1
XAOI21X1_39 gnd vdd _197_ _206_ _207_ _194_ AOI21X1
XAOI22X1_10 gnd vdd _207_ _205_ _208_ D_32b<27> _176_ AOI22X1
XAOI21X1_40 gnd vdd _203_ _208_ _171_<3> _177_ AOI21X1
XDFFPOSX1_21 vdd _171_<0> gnd _17_<24> clk_six DFFPOSX1
XDFFPOSX1_22 vdd _171_<1> gnd _17_<25> clk_six DFFPOSX1
XDFFPOSX1_23 vdd _171_<2> gnd _17_<26> clk_six DFFPOSX1
XDFFPOSX1_24 vdd _171_<3> gnd _17_<27> clk_six DFFPOSX1
XDFFPOSX1_25 vdd _172_ gnd counter_six.load clk_six DFFPOSX1
XINVX1_51 reset _211_ vdd gnd INVX1
XINVX1_52 counter_five.mode_1_bF$buf0 _212_ vdd gnd INVX1
XINVX1_53 counter_five.mode_0_bF$buf4 _213_ vdd gnd INVX1
XNOR2X1_22 vdd _213_ gnd _214_ _212_ NOR2X1
XAND2X2_13 vdd gnd _214_ _211_ _210_ AND2X2
XNAND2X1_34 vdd _215_ gnd enable _211_ NAND2X1
XNAND2X1_35 vdd _216_ gnd D_32b<12> _214_ NAND2X1
XINVX1_54 _17_<12> _217_ vdd gnd INVX1
XOAI21X1_28 gnd vdd _212_ _213_ _218_ _217_ OAI21X1
XAOI21X1_41 gnd vdd _216_ _218_ _209_<0> _215_ AOI21X1
XNAND2X1_36 vdd _219_ gnd D_32b<13> _214_ NAND2X1
XXNOR2X1_11 _17_<12> _17_<13> gnd vdd _220_ XNOR2X1
XOAI21X1_29 gnd vdd counter_five.mode_1_bF$buf3 _213_ _221_ _220_ OAI21X1
XOAI21X1_30 gnd vdd _213_ _220_ _222_ _221_ OAI21X1
XAOI21X1_42 gnd vdd _222_ _219_ _209_<1> _215_ AOI21X1
XNOR2X1_23 vdd counter_five.mode_0_bF$buf3 gnd _223_ counter_five.mode_1_bF$buf2 NOR2X1
XAOI21X1_43 gnd vdd _17_<12> _17_<13> _224_ _17_<14> AOI21X1
XINVX1_55 _224_ _225_ vdd gnd INVX1
XNAND3X1_24 _17_<13> vdd gnd _17_<12> _17_<14> _226_ NAND3X1
XNAND3X1_25 _226_ vdd gnd _223_ _225_ _227_ NAND3X1
XNAND2X1_37 vdd _228_ gnd D_32b<14> _214_ NAND2X1
XAND2X2_14 vdd gnd _227_ _228_ _229_ AND2X2
XNOR2X1_24 vdd _212_ gnd _230_ counter_five.mode_0_bF$buf2 NOR2X1
XNAND2X1_38 vdd _231_ gnd _226_ _225_ NAND2X1
XNAND2X1_39 vdd _232_ gnd counter_five.mode_0_bF$buf1 _212_ NAND2X1
XINVX1_56 _17_<13> _233_ vdd gnd INVX1
XINVX1_57 _17_<14> _234_ vdd gnd INVX1
XNAND3X1_26 _233_ vdd gnd _217_ _234_ _235_ NAND3X1
XOAI21X1_31 gnd vdd _17_<12> _17_<13> _236_ _17_<14> OAI21X1
XAOI21X1_44 gnd vdd _235_ _236_ _237_ _232_ AOI21X1
XAOI21X1_45 gnd vdd _230_ _231_ _238_ _237_ AOI21X1
XAOI21X1_46 gnd vdd _238_ _229_ _209_<2> _215_ AOI21X1
XXNOR2X1_12 _226_ _17_<15> gnd vdd _239_ XNOR2X1
XXOR2X1_6 _240_ vdd _17_<15> _224_ gnd XOR2X1
XAOI22X1_11 gnd vdd _230_ _240_ _241_ _239_ _223_ AOI22X1
XNOR2X1_25 vdd _17_<13> gnd _242_ _17_<12> NOR2X1
XNAND3X1_27 _17_<15> vdd gnd _234_ _242_ _243_ NAND3X1
XINVX1_58 _17_<15> _244_ vdd gnd INVX1
XAOI21X1_47 gnd vdd _235_ _244_ _245_ _232_ AOI21X1
XAOI22X1_12 gnd vdd _245_ _243_ _246_ D_32b<15> _214_ AOI22X1
XAOI21X1_48 gnd vdd _241_ _246_ _209_<3> _215_ AOI21X1
XDFFPOSX1_26 vdd _209_<0> gnd _17_<12> clk_three DFFPOSX1
XDFFPOSX1_27 vdd _209_<1> gnd _17_<13> clk_three DFFPOSX1
XDFFPOSX1_28 vdd _209_<2> gnd _17_<14> clk_three DFFPOSX1
XDFFPOSX1_29 vdd _209_<3> gnd _17_<15> clk_three DFFPOSX1
XDFFPOSX1_30 vdd _210_ gnd counter_three.load clk_three DFFPOSX1
XINVX1_59 reset _249_ vdd gnd INVX1
XINVX1_60 counter_five.mode_1_bF$buf1 _250_ vdd gnd INVX1
XINVX1_61 counter_five.mode_0_bF$buf0 _251_ vdd gnd INVX1
XNOR2X1_26 vdd _251_ gnd _252_ _250_ NOR2X1
XAND2X2_15 vdd gnd _252_ _249_ _248_ AND2X2
XNAND2X1_40 vdd _253_ gnd enable _249_ NAND2X1
XNAND2X1_41 vdd _254_ gnd D_32b<8> _252_ NAND2X1
XINVX1_62 _17_<8> _255_ vdd gnd INVX1
XOAI21X1_32 gnd vdd _250_ _251_ _256_ _255_ OAI21X1
XAOI21X1_49 gnd vdd _254_ _256_ _247_<0> _253_ AOI21X1
XNAND2X1_42 vdd _257_ gnd D_32b<9> _252_ NAND2X1
XXNOR2X1_13 _17_<8> _17_<9> gnd vdd _258_ XNOR2X1
XOAI21X1_33 gnd vdd counter_five.mode_1_bF$buf0 _251_ _259_ _258_ OAI21X1
XOAI21X1_34 gnd vdd _251_ _258_ _260_ _259_ OAI21X1
XAOI21X1_50 gnd vdd _260_ _257_ _247_<1> _253_ AOI21X1
XNOR2X1_27 vdd counter_five.mode_0_bF$buf4 gnd _261_ counter_five.mode_1_bF$buf3 NOR2X1
XAOI21X1_51 gnd vdd _17_<8> _17_<9> _262_ _17_<10> AOI21X1
XINVX1_63 _262_ _263_ vdd gnd INVX1
XNAND3X1_28 _17_<9> vdd gnd _17_<8> _17_<10> _264_ NAND3X1
XNAND3X1_29 _264_ vdd gnd _261_ _263_ _265_ NAND3X1
XNAND2X1_43 vdd _266_ gnd D_32b<10> _252_ NAND2X1
XAND2X2_16 vdd gnd _265_ _266_ _267_ AND2X2
XNOR2X1_28 vdd _250_ gnd _268_ counter_five.mode_0_bF$buf3 NOR2X1
XNAND2X1_44 vdd _269_ gnd _264_ _263_ NAND2X1
XNAND2X1_45 vdd _270_ gnd counter_five.mode_0_bF$buf2 _250_ NAND2X1
XINVX1_64 _17_<9> _271_ vdd gnd INVX1
XINVX1_65 _17_<10> _272_ vdd gnd INVX1
XNAND3X1_30 _271_ vdd gnd _255_ _272_ _273_ NAND3X1
XOAI21X1_35 gnd vdd _17_<8> _17_<9> _274_ _17_<10> OAI21X1
XAOI21X1_52 gnd vdd _273_ _274_ _275_ _270_ AOI21X1
XAOI21X1_53 gnd vdd _268_ _269_ _276_ _275_ AOI21X1
XAOI21X1_54 gnd vdd _276_ _267_ _247_<2> _253_ AOI21X1
XXNOR2X1_14 _264_ _17_<11> gnd vdd _277_ XNOR2X1
XXOR2X1_7 _278_ vdd _17_<11> _262_ gnd XOR2X1
XAOI22X1_13 gnd vdd _268_ _278_ _279_ _277_ _261_ AOI22X1
XNOR2X1_29 vdd _17_<9> gnd _280_ _17_<8> NOR2X1
XNAND3X1_31 _17_<11> vdd gnd _272_ _280_ _281_ NAND3X1
XINVX1_66 _17_<11> _282_ vdd gnd INVX1
XAOI21X1_55 gnd vdd _273_ _282_ _283_ _270_ AOI21X1
XAOI22X1_14 gnd vdd _283_ _281_ _284_ D_32b<11> _252_ AOI22X1
XAOI21X1_56 gnd vdd _279_ _284_ _247_<3> _253_ AOI21X1
XDFFPOSX1_31 vdd _247_<0> gnd _17_<8> clk_two DFFPOSX1
XDFFPOSX1_32 vdd _247_<1> gnd _17_<9> clk_two DFFPOSX1
XDFFPOSX1_33 vdd _247_<2> gnd _17_<10> clk_two DFFPOSX1
XDFFPOSX1_34 vdd _247_<3> gnd _17_<11> clk_two DFFPOSX1
XDFFPOSX1_35 vdd _248_ gnd counter_two.load clk_two DFFPOSX1
XINVX1_67 reset _287_ vdd gnd INVX1
XINVX1_68 mode<1> _288_ vdd gnd INVX1
XINVX1_69 mode<0> _289_ vdd gnd INVX1
XNOR2X1_30 vdd _289_ gnd _290_ _288_ NOR2X1
XAND2X2_17 vdd gnd _290_ _287_ _286_ AND2X2
XNAND2X1_46 vdd _291_ gnd enable _287_ NAND2X1
XNAND2X1_47 vdd _292_ gnd D_32b<0> _290_ NAND2X1
XINVX1_70 _17_<0> _293_ vdd gnd INVX1
XOAI21X1_36 gnd vdd _288_ _289_ _294_ _293_ OAI21X1
XAOI21X1_57 gnd vdd _292_ _294_ _285_<0> _291_ AOI21X1
XNAND2X1_48 vdd _295_ gnd D_32b<1> _290_ NAND2X1
XXNOR2X1_15 _17_<0> _17_<1> gnd vdd _296_ XNOR2X1
XOAI21X1_37 gnd vdd mode<1> _289_ _297_ _296_ OAI21X1
XOAI21X1_38 gnd vdd _289_ _296_ _298_ _297_ OAI21X1
XAOI21X1_58 gnd vdd _298_ _295_ _285_<1> _291_ AOI21X1
XNOR2X1_31 vdd mode<0> gnd _299_ mode<1> NOR2X1
XAOI21X1_59 gnd vdd _17_<0> _17_<1> _300_ _17_<2> AOI21X1
XINVX1_71 _300_ _301_ vdd gnd INVX1
XNAND3X1_32 _17_<1> vdd gnd _17_<0> _17_<2> _302_ NAND3X1
XNAND3X1_33 _302_ vdd gnd _299_ _301_ _303_ NAND3X1
XNAND2X1_49 vdd _304_ gnd D_32b<2> _290_ NAND2X1
XAND2X2_18 vdd gnd _303_ _304_ _305_ AND2X2
XNOR2X1_32 vdd _288_ gnd _306_ mode<0> NOR2X1
XNAND2X1_50 vdd _307_ gnd _302_ _301_ NAND2X1
XNAND2X1_51 vdd _308_ gnd mode<0> _288_ NAND2X1
XINVX1_72 _17_<1> _309_ vdd gnd INVX1
XINVX1_73 _17_<2> _310_ vdd gnd INVX1
XNAND3X1_34 _309_ vdd gnd _293_ _310_ _311_ NAND3X1
XOAI21X1_39 gnd vdd _17_<0> _17_<1> _312_ _17_<2> OAI21X1
XAOI21X1_60 gnd vdd _311_ _312_ _313_ _308_ AOI21X1
XAOI21X1_61 gnd vdd _306_ _307_ _314_ _313_ AOI21X1
XAOI21X1_62 gnd vdd _314_ _305_ _285_<2> _291_ AOI21X1
XXNOR2X1_16 _302_ _17_<3> gnd vdd _315_ XNOR2X1
XXOR2X1_8 _316_ vdd _17_<3> _300_ gnd XOR2X1
XAOI22X1_15 gnd vdd _306_ _316_ _317_ _315_ _299_ AOI22X1
XNOR2X1_33 vdd _17_<1> gnd _318_ _17_<0> NOR2X1
XNAND3X1_35 _17_<3> vdd gnd _310_ _318_ _319_ NAND3X1
XINVX1_74 _17_<3> _320_ vdd gnd INVX1
XAOI21X1_63 gnd vdd _311_ _320_ _321_ _308_ AOI21X1
XAOI22X1_16 gnd vdd _321_ _319_ _322_ D_32b<3> _290_ AOI22X1
XAOI21X1_64 gnd vdd _317_ _322_ _285_<3> _291_ AOI21X1
XDFFPOSX1_36 vdd _285_<0> gnd _17_<0> clk DFFPOSX1
XDFFPOSX1_37 vdd _285_<1> gnd _17_<1> clk DFFPOSX1
XDFFPOSX1_38 vdd _285_<2> gnd _17_<2> clk DFFPOSX1
XDFFPOSX1_39 vdd _285_<3> gnd _17_<3> clk DFFPOSX1
XDFFPOSX1_40 vdd _286_ gnd counter_zero.load clk DFFPOSX1
.ends tt_counter
 