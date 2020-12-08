*SPICE netlist created from BLIF module counter by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt counter vdd gnd clk reset enable D<0> D<1> D<2> D<3> mode<0> mode<1> Q<0> Q<1> Q<2> Q<3> rco load 
XINVX1_1 reset _2_ vdd gnd INVX1
XINVX2_1 vdd gnd _3_ mode<1> INVX2
XINVX2_2 vdd gnd _4_ mode<0> INVX2
XNOR2X1_1 vdd _4_ gnd _5_ _3_ NOR2X1
XAND2X2_1 vdd gnd _5_ _2_ _1_ AND2X2
XNAND2X1_1 vdd _6_ gnd enable _2_ NAND2X1
XNAND2X1_2 vdd _7_ gnd D<0> _5_ NAND2X1
XINVX1_2 _36_<0> _8_ vdd gnd INVX1
XOAI21X1_1 gnd vdd _3_ _4_ _9_ _8_ OAI21X1
XAOI21X1_1 gnd vdd _7_ _9_ _0_<0> _6_ AOI21X1
XNAND2X1_3 vdd _10_ gnd D<1> _5_ NAND2X1
XXNOR2X1_1 _36_<0> _36_<1> gnd vdd _11_ XNOR2X1
XOAI21X1_2 gnd vdd mode<1> _4_ _12_ _11_ OAI21X1
XOAI21X1_3 gnd vdd _4_ _11_ _13_ _12_ OAI21X1
XAOI21X1_2 gnd vdd _13_ _10_ _0_<1> _6_ AOI21X1
XNOR2X1_2 vdd mode<0> gnd _14_ mode<1> NOR2X1
XAOI21X1_3 gnd vdd _36_<0> _36_<1> _15_ _36_<2> AOI21X1
XINVX1_3 _15_ _16_ vdd gnd INVX1
XNAND3X1_1 _36_<1> vdd gnd _36_<0> _36_<2> _17_ NAND3X1
XAND2X2_2 vdd gnd _16_ _17_ _18_ AND2X2
XAOI22X1_1 gnd vdd _14_ _18_ _19_ D<2> _5_ AOI22X1
XNOR2X1_3 vdd _3_ gnd _20_ mode<0> NOR2X1
XNAND2X1_4 vdd _21_ gnd _17_ _16_ NAND2X1
XNAND2X1_5 vdd _22_ gnd mode<0> _3_ NAND2X1
XINVX1_4 _36_<2> _23_ vdd gnd INVX1
XNOR2X1_4 vdd _36_<1> gnd _24_ _36_<0> NOR2X1
XNAND2X1_6 vdd _25_ gnd _23_ _24_ NAND2X1
XOAI21X1_4 gnd vdd _36_<0> _36_<1> _26_ _36_<2> OAI21X1
XAOI21X1_4 gnd vdd _25_ _26_ _27_ _22_ AOI21X1
XAOI21X1_5 gnd vdd _20_ _21_ _28_ _27_ AOI21X1
XAOI21X1_6 gnd vdd _19_ _28_ _0_<2> _6_ AOI21X1
XXNOR2X1_2 _17_ _36_<3> gnd vdd _29_ XNOR2X1
XINVX1_5 _36_<3> _30_ vdd gnd INVX1
XXNOR2X1_3 _15_ _30_ gnd vdd _31_ XNOR2X1
XAOI22X1_2 gnd vdd _20_ _31_ _32_ _29_ _14_ AOI22X1
XNAND3X1_2 _36_<3> vdd gnd _23_ _24_ _33_ NAND3X1
XAOI21X1_7 gnd vdd _25_ _30_ _34_ _22_ AOI21X1
XAOI22X1_3 gnd vdd _33_ _34_ _35_ D<3> _5_ AOI22X1
XAOI21X1_8 gnd vdd _32_ _35_ _0_<3> _6_ AOI21X1
XBUFX2_1 vdd gnd _36_<0> Q<0> BUFX2
XBUFX2_2 vdd gnd _36_<1> Q<1> BUFX2
XBUFX2_3 vdd gnd _36_<2> Q<2> BUFX2
XBUFX2_4 vdd gnd _36_<3> Q<3> BUFX2
XBUFX2_5 vdd gnd _37_ load BUFX2
XBUFX2_6 vdd gnd gnd rco BUFX2
XDFFPOSX1_1 vdd _0_<0> gnd _36_<0> clk DFFPOSX1
XDFFPOSX1_2 vdd _0_<1> gnd _36_<1> clk DFFPOSX1
XDFFPOSX1_3 vdd _0_<2> gnd _36_<2> clk DFFPOSX1
XDFFPOSX1_4 vdd _0_<3> gnd _36_<3> clk DFFPOSX1
XDFFPOSX1_5 vdd _1_ gnd _37_ clk DFFPOSX1
.ends counter
 