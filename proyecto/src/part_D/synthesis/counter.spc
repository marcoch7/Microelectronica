*SPICE netlist created from BLIF module counter by blif2BSpice
.include /usr/share/qflow/tech/osu050/osu050_stdcells.sp
.subckt counter vdd gnd clk reset enable D<0> D<1> D<2> D<3> mode<0> mode<1> Q<0> Q<1> Q<2> Q<3> rco load 
XINVX1_1 reset _2_ vdd gnd INVX1
XNAND2X1_1 vdd _3_ gnd enable _2_ NAND2X1
XINVX1_2 mode<1> _4_ vdd gnd INVX1
XINVX2_1 vdd gnd _5_ mode<0> INVX2
XNOR2X1_1 vdd _5_ gnd _6_ _4_ NOR2X1
XNAND2X1_2 vdd _7_ gnd D<0> _6_ NAND2X1
XINVX1_3 _40_<0> _8_ vdd gnd INVX1
XOAI21X1_1 gnd vdd _4_ _5_ _9_ _8_ OAI21X1
XAOI21X1_1 gnd vdd _7_ _9_ _0_<0> _3_ AOI21X1
XNAND2X1_3 vdd _10_ gnd D<1> _6_ NAND2X1
XINVX1_4 _40_<1> _11_ vdd gnd INVX1
XNAND2X1_4 vdd _12_ gnd mode<0> _4_ NAND2X1
XNAND2X1_5 vdd _13_ gnd _15_ _16_ NAND2X1
XNAND2X1_6 vdd _14_ gnd mode<1> _5_ NAND2X1
XOAI21X1_2 gnd vdd mode<1> _5_ _15_ _11_ OAI21X1
XOAI21X1_3 gnd vdd _5_ _11_ _16_ _12_ OAI21X1
XAOI21X1_2 gnd vdd _13_ _10_ _0_<1> _3_ AOI21X1
XNAND2X1_7 vdd _17_ gnd mode<0> _4_ NAND2X1
XINVX1_5 _23_ _18_ vdd gnd INVX1
XNAND3X1_1 _37_<1> vdd gnd _37_<0> _37_<2> _19_ NAND3X1
XOAI21X1_4 gnd vdd _37_<0> _37_<1> _20_ _37_<2> OAI21X1
XAOI21X1_3 gnd vdd _17_ _18_ _21_ _14_ AOI21X1
XAOI21X1_4 gnd vdd D<2> _6_ _22_ _19_ AOI21X1
XNOR2X1_2 vdd _37_<1> gnd _23_ _37_<0> NOR2X1
XNAND3X1_2 _37_<3> vdd gnd _15_ _16_ _24_ NAND3X1
XNAND2X1_8 vdd _25_ gnd _18_ _13_ NAND2X1
XAND2X2_1 vdd gnd _24_ _22_ _26_ AND2X2
XNAND2X1_9 vdd _27_ gnd mode<1> _5_ NAND2X1
XAOI21X1_5 gnd vdd _37_<0> _37_<1> _28_ _37_<2> AOI21X1
XAOI21X1_6 gnd vdd _24_ _22_ _29_ _26_ AOI21X1
XAOI21X1_7 gnd vdd _25_ _21_ _0_<2> _27_ AOI21X1
XINVX1_6 _26_ _30_ vdd gnd INVX1
XXNOR2X1_1 _37_<0> _40_<3> gnd vdd _31_ XNOR2X1
XAOI21X1_8 gnd vdd _28_ _20_ _32_ _3_ AOI21X1
XXOR2X1_1 _33_ vdd _40_<3> _32_ gnd XOR2X1
XAOI22X1_1 gnd vdd _29_ _32_ _34_ _30_ _21_ AOI22X1
XNOR2X1_3 vdd mode<0> gnd _35_ mode<1> NOR2X1
XNAND3X1_3 _40_<3> vdd gnd _18_ _35_ _36_ NAND3X1
XINVX1_7 _37_<3> _37_ vdd gnd INVX1
XAOI21X1_9 gnd vdd _17_ _31_ _38_ _14_ AOI21X1
XAOI22X1_2 gnd vdd _34_ _35_ _39_ D<3> _6_ AOI22X1
XAOI21X1_10 gnd vdd _33_ _36_ _0_<3> _3_ AOI21X1
XAND2X2_2 vdd gnd _6_ _2_ _1_ AND2X2
XBUFX2_1 vdd gnd _37_<0> Q<0> BUFX2
XBUFX2_2 vdd gnd _37_<1> Q<1> BUFX2
XBUFX2_3 vdd gnd _37_<2> Q<2> BUFX2
XBUFX2_4 vdd gnd _37_<3> Q<3> BUFX2
XBUFX2_5 vdd gnd _41_ load BUFX2
XBUFX2_6 vdd gnd gnd rco BUFX2
XDFFPOSX1_1 vdd _0_<0> gnd _37_<0> clk DFFPOSX1
XDFFPOSX1_2 vdd _0_<1> gnd _37_<1> clk DFFPOSX1
XDFFPOSX1_3 vdd _0_<2> gnd _37_<2> clk DFFPOSX1
XDFFPOSX1_4 vdd _0_<3> gnd _37_<3> clk DFFPOSX1
XDFFPOSX1_5 vdd _1_ gnd _38_ clk DFFPOSX1
.ends counter
 