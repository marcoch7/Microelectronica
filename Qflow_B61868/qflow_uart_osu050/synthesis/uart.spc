*SPICE netlist created from BLIF module uart by blif2BSpice
.include /usr/share/qflow/tech/osu050/osu050_stdcells.sp
.subckt uart vdd gnd reset txclk ld_tx_data tx_data<0> tx_data<1> tx_data<2> tx_data<3> tx_data<4> tx_data<5> tx_data<6> tx_data<7> tx_enable rxclk uld_rx_data rx_enable rx_in tx_out tx_empty rx_data<0> rx_data<1> rx_data<2> rx_data<3> rx_data<4> rx_data<5> rx_data<6> rx_data<7> rx_empty 
XBUFX2_1 vdd gnd rxclk rxclk_bF$buf4 BUFX2
XBUFX2_2 vdd gnd rxclk rxclk_bF$buf3 BUFX2
XBUFX2_3 vdd gnd rxclk rxclk_bF$buf2 BUFX2
XBUFX2_4 vdd gnd rxclk rxclk_bF$buf1 BUFX2
XBUFX2_5 vdd gnd rxclk rxclk_bF$buf0 BUFX2
XBUFX2_6 vdd gnd uld_rx_data uld_rx_data_bF$buf3 BUFX2
XBUFX2_7 vdd gnd uld_rx_data uld_rx_data_bF$buf2 BUFX2
XBUFX2_8 vdd gnd _167_<0> uld_rx_data_bF$buf1 BUFX2
XBUFX2_9 vdd gnd _167_<1> uld_rx_data_bF$buf0 BUFX2
XBUFX4_1 vdd gnd _166_ _166__bF$buf5 BUFX4
XBUFX4_2 vdd gnd _162_ _166__bF$buf4 BUFX4
XBUFX4_3 vdd gnd _162_ _166__bF$buf3 BUFX4
XBUFX4_4 vdd gnd _162_ _166__bF$buf2 BUFX4
XBUFX4_5 vdd gnd _162_ _166__bF$buf1 BUFX4
XBUFX4_6 vdd gnd _162_ _166__bF$buf0 BUFX4
XINVX2_1 vdd gnd _172_ rx_d2 INVX2
XINVX2_2 vdd gnd _173_ rx_cnt<0> INVX2
XNOR2X1_1 vdd _164_ gnd _174_ rx_cnt<1> NOR2X1
XINVX1_1 rx_cnt<2> _175_ vdd gnd INVX1
XNOR2X1_2 vdd rx_cnt<0> gnd _10_ rx_cnt<1> NOR2X1
XNAND3X1_1 _175_ vdd gnd rx_cnt<3> _10_ _11_ NAND3X1
XINVX1_2 rx_cnt<3> _12_ vdd gnd INVX1
XINVX1_3 _20_ _13_ vdd gnd INVX1
XNAND2X1_1 vdd _14_ gnd _10_ _11_ NAND2X1
XOAI21X1_1 gnd vdd rx_cnt<1> rx_cnt<0> _15_ rx_cnt<2> OAI21X1
XNAND2X1_2 vdd _16_ gnd _14_ _12_ NAND2X1
XNAND3X1_2 _13_ vdd gnd _165_ _21_ _17_ NAND3X1
XOAI21X1_2 gnd vdd _163_ _22_ _18_ _23_ OAI21X1
XAND2X2_1 vdd gnd _20_ _15_ _19_ AND2X2
XNAND3X1_3 _31_ vdd gnd _20_ _29_ _20_ NAND3X1
XNOR2X1_3 vdd _10_ gnd _21_ rx_cnt<3> NOR2X1
XNAND3X1_4 _34_ vdd gnd _20_ _29_ _22_ NAND3X1
XNOR2X1_4 vdd _15_ gnd _23_ rx_cnt<3> NOR2X1
XNAND3X1_5 _20_ vdd gnd _165_ _29_ _24_ NAND3X1
XINVX1_4 rx_cnt<1> _25_ vdd gnd INVX1
XNAND2X1_3 vdd _26_ gnd _18_ _18_ NAND2X1
XINVX2_3 vdd gnd _27_ rx_enable INVX2
XINVX1_5 _39_ _28_ vdd gnd INVX1
XNAND2X1_4 vdd _29_ gnd rx_busy _22_ NAND2X1
XNOR3X1_1 vdd gnd _17_ _19_ _16_ _30_ NOR3X1
XNAND3X1_6 _25_ vdd gnd _49_ _48_ _31_ NAND3X1
XOAI21X1_3 gnd vdd _26_ _24_ _32_ rx_reg<4> OAI21X1
XOAI21X1_4 gnd vdd _163_ _27_ _4_<4> _28_ OAI21X1
XINVX1_6 _47_ _33_ vdd gnd INVX1
XNAND2X1_5 vdd _34_ gnd _11_ _25_ NAND2X1
XNOR2X1_5 vdd _164_ gnd _35_ _30_ NOR2X1
XNAND2X1_6 vdd _36_ gnd _35_ _32_ NAND2X1
XMUX2X1_1 _109_ vdd gnd _4_<3> _108_ _107_ MUX2X1
XINVX1_7 _49_ _37_ vdd gnd INVX1
XNAND2X1_7 vdd _38_ gnd rx_busy _35_ NAND2X1
XINVX1_8 _42_ _39_ vdd gnd INVX1
XNAND3X1_7 _10_ vdd gnd rx_cnt<3> _165_ _40_ NAND3X1
XNAND3X1_8 rx_cnt<0> vdd gnd tx_cnt<0> _90_ _41_ NAND3X1
XNOR2X1_6 vdd _30_ gnd _42_ rx_cnt<0> NOR2X1
XNAND2X1_8 vdd _43_ gnd _39_ _37_ NAND2X1
XMUX2X1_2 _109_ vdd gnd _4_<2> _111_ _110_ MUX2X1
XNOR2X1_7 vdd rx_cnt<2> gnd _44_ rx_cnt<3> NOR2X1
XNAND2X1_9 vdd _45_ gnd _11_ _43_ NAND2X1
XINVX1_9 rx_sample_cnt<0> _46_ vdd gnd INVX1
XNAND2X1_10 vdd _47_ gnd rx_enable _31_ NAND2X1
XINVX1_10 rx_sample_cnt<1> _48_ vdd gnd INVX1
XNAND2X1_11 vdd _49_ gnd _53_ _55_ NAND2X1
XNOR2X1_8 vdd _19_ gnd _50_ _17_ NOR2X1
XNAND3X1_9 _91_ vdd gnd _89_ _95_ _51_ NAND3X1
XOAI21X1_5 gnd vdd _163_ _32_ _52_ _33_ OAI21X1
XOAI21X1_6 gnd vdd _163_ _35_ _4_<1> _36_ OAI21X1
XINVX1_11 rx_sample_cnt<2> _53_ vdd gnd INVX1
XNOR2X1_9 vdd _16_ gnd _54_ _56_ NOR2X1
XNAND2X1_12 vdd _55_ gnd rx_sample_cnt<1> rx_sample_cnt<0> NAND2X1
XMUX2X1_3 _109_ vdd gnd _4_<0> _113_ _112_ MUX2X1
XINVX1_12 rx_busy _56_ vdd gnd INVX1
XOAI21X1_7 gnd vdd _163_ _37_ _57_ _38_ OAI21X1
XOAI21X1_8 gnd vdd rx_busy _163_ _58_ rx_enable OAI21X1
XINVX1_13 _58_ _59_ vdd gnd INVX1
XNOR2X1_10 vdd uld_rx_data_bF$buf3 gnd _60_ rx_cnt<3> NOR2X1
XNAND2X1_13 vdd _61_ gnd _64_ _63_ NAND2X1
XNAND2X1_14 vdd _62_ gnd rx_reg<0> uld_rx_data_bF$buf2 NAND2X1
XOAI22X1_1 gnd vdd _42_ _164_ _24_ _45_ _1_<0> OAI22X1
XOAI21X1_9 gnd vdd rx_sample_cnt<3> _17_ _63_ rx_busy OAI21X1
XOAI21X1_10 gnd vdd _163_ _44_ _1_<1> _164_ OAI21X1
XINVX1_14 _41_ _64_ vdd gnd INVX1
XNOR2X1_11 vdd _68_ gnd _65_ _163_ NOR2X1
XAOI21X1_1 gnd vdd rx_cnt<2> _31_ _66_ _50_ AOI21X1
XOAI21X1_11 gnd vdd _165_ _34_ _67_ _20_ OAI21X1
XOAI21X1_12 gnd vdd _30_ _42_ _1_<2> _46_ OAI21X1
XNOR2X1_12 vdd _34_ gnd _68_ uld_rx_data_bF$buf2 NOR2X1
XNAND2X1_15 vdd _69_ gnd rx_reg<1> uld_rx_data_bF$buf0 NAND2X1
XOAI21X1_13 gnd vdd rx_cnt<2> _48_ _70_ _51_ OAI21X1
XNAND2X1_16 vdd _1_<3> gnd rx_reg<2> uld_rx_data_bF$buf2 NAND2X1
XINVX1_15 rx_sample_cnt<0> _71_ vdd gnd INVX1
XINVX1_16 _57_ _72_ vdd gnd INVX1
XNOR2X1_13 vdd _27_ gnd _73_ uld_rx_data_bF$buf0 NOR2X1
XAOI22X1_1 gnd vdd _56_ _39_ _5_<0> _57_ rx_busy AOI22X1
XINVX1_17 rx_sample_cnt<1> _74_ vdd gnd INVX1
XAOI21X1_2 gnd vdd _69_ _20_ _75_ _67_ AOI21X1
XOAI21X1_14 gnd vdd _10_ _42_ _76_ _52_ OAI21X1
XOAI21X1_15 gnd vdd _51_ _54_ _5_<1> rx_cnt<3> OAI21X1
XINVX1_18 rx_sample_cnt<2> _77_ vdd gnd INVX1
XNAND2X1_17 vdd _78_ gnd rx_reg<3> uld_rx_data_bF$buf0 NAND2X1
XOAI21X1_16 gnd vdd rx_sample_cnt<1> _57_ _79_ _60_ OAI21X1
XNAND3X1_10 _98_ vdd gnd _86_ _125_ _80_ NAND3X1
XOAI21X1_17 gnd vdd _58_ _40_ _5_<2> _61_ OAI21X1
XAOI21X1_3 gnd vdd uld_rx_data_bF$buf1 _82_ _81_ _83_ AOI21X1
XOAI21X1_18 gnd vdd _16_ _59_ _5_<3> _62_ OAI21X1
XNOR2X1_14 vdd _88_ gnd _82_ _169_ NOR2X1
XNAND3X1_11 _129_ vdd gnd _114_ _128_ _83_ NAND3X1
XNOR2X1_15 vdd _83_ gnd _84_ _172_ NOR2X1
XAOI21X1_4 gnd vdd uld_rx_data_bF$buf3 _84_ _3_ _85_ AOI21X1
XNOR2X1_16 vdd tx_cnt<1> gnd _85_ tx_cnt<0> NOR2X1
XAOI21X1_5 gnd vdd _86_ _169_ _2_<0> _87_ AOI21X1
XINVX1_19 _176_<1> _86_ vdd gnd INVX1
XNAND2X1_18 vdd _87_ gnd rx_reg<4> uld_rx_data_bF$buf2 NAND2X1
XOAI21X1_19 gnd vdd _62_ _40_ _2_<1> _65_ OAI21X1
XNOR2X1_17 vdd _94_ gnd _88_ _92_ NOR2X1
XAOI21X1_6 gnd vdd _96_ _97_ _2_<2> _88_ AOI21X1
XNOR2X1_18 vdd _103_ gnd _89_ _88_ NOR2X1
XAOI21X1_7 gnd vdd _106_ _105_ _2_<3> _104_ AOI21X1
XINVX1_20 _93_ _90_ vdd gnd INVX1
XNAND2X1_19 vdd _91_ gnd uld_rx_data_bF$buf0 uld_rx_data_bF$buf2 NAND2X1
XOAI21X1_20 gnd vdd _39_ _63_ _2_<4> rx_sample_cnt<3> OAI21X1
XINVX1_21 _89_ _92_ vdd gnd INVX1
XNAND2X1_20 vdd _93_ gnd tx_cnt<0> tx_cnt<1> NAND2X1
XOAI21X1_21 gnd vdd _16_ _50_ _2_<5> _66_ OAI21X1
XINVX1_22 rx_reg<6> _94_ vdd gnd INVX1
XNOR2X1_19 vdd _109_ gnd _95_ uld_rx_data_bF$buf2 NOR2X1
XAOI21X1_8 gnd vdd _120_ _109_ _2_<6> _121_ AOI21X1
XINVX1_23 rx_reg<7> _96_ vdd gnd INVX1
XNOR2X1_20 vdd _109_ gnd _97_ uld_rx_data_bF$buf0 NOR2X1
XAOI21X1_9 gnd vdd _122_ _109_ _2_<7> _123_ AOI21X1
XINVX2_4 vdd gnd _98_ tx_cnt<0> INVX2
XOAI21X1_22 gnd vdd uld_rx_data_bF$buf1 _70_ _99_ _71_ OAI21X1
XAOI21X1_10 gnd vdd _150_ _178_ _6_<0> _153_ AOI21X1
XINVX1_24 _178_ _100_ vdd gnd INVX1
XINVX1_25 tx_cnt<1> _101_ vdd gnd INVX1
XNOR2X1_21 vdd _128_ gnd _102_ tx_cnt<3> NOR2X1
XNAND3X1_12 _86_ vdd gnd tx_cnt<2> _125_ _103_ NAND3X1
XNAND2X1_21 vdd _104_ gnd _94_ _89_ NAND2X1
XNAND2X1_22 vdd _105_ gnd _100_ _102_ NAND2X1
XNAND2X1_23 vdd _106_ gnd _86_ _125_ NAND2X1
XNAND2X1_24 vdd _107_ gnd _93_ _126_ NAND2X1
XNOR2X1_22 vdd _150_ gnd _108_ _148_ NOR2X1
XNAND2X1_25 vdd _109_ gnd tx_cnt<2> _118_ NAND2X1
XOAI21X1_23 gnd vdd uld_rx_data_bF$buf3 _72_ _110_ _73_ OAI21X1
XAND2X2_2 vdd gnd _40_ _41_ _6_<1> AND2X2
XINVX1_26 tx_cnt<2> _111_ vdd gnd INVX1
XOAI21X1_24 gnd vdd uld_rx_data_bF$buf1 _74_ _112_ _75_ OAI21X1
XNOR2X1_23 vdd _99_ gnd _113_ _91_ NOR2X1
XNAND2X1_26 vdd _114_ gnd tx_cnt<2> _116_ NAND2X1
XNAND3X1_13 _133_ vdd gnd _131_ _132_ _115_ NAND3X1
XINVX1_27 _115_ _6_<2> vdd gnd INVX1
XOAI21X1_25 gnd vdd uld_rx_data_bF$buf3 _76_ _116_ _77_ OAI21X1
XNAND2X1_27 vdd _117_ gnd _89_ _149_ NAND2X1
XOR2X2_1 _118_ _26_ vdd gnd _24_ OR2X2
XAOI21X1_11 gnd vdd _161_ _159_ _6_<3> _16_ AOI21X1
XINVX1_28 tx_reg<0> _119_ vdd gnd INVX1
XINVX1_29 tx_data<0> _120_ vdd gnd INVX1
XAND2X2_3 vdd gnd _59_ rx_busy _121_ AND2X2
XMUX2X1_4 _109_ vdd gnd _9_<0> _115_ _114_ MUX2X1
XINVX1_30 tx_reg<1> _122_ vdd gnd INVX1
XINVX1_31 tx_data<1> _123_ vdd gnd INVX1
XMUX2X1_5 _109_ vdd gnd _9_<1> _117_ _116_ MUX2X1
XINVX1_32 tx_reg<2> _124_ vdd gnd INVX1
XINVX1_33 tx_data<2> _125_ vdd gnd INVX1
XMUX2X1_6 _109_ vdd gnd _9_<2> _119_ _118_ MUX2X1
XINVX1_34 tx_reg<3> _126_ vdd gnd INVX1
XINVX1_35 tx_data<3> _127_ vdd gnd INVX1
XMUX2X1_7 _156_ vdd gnd _9_<3> _84_ _163_ MUX2X1
XINVX1_36 _169_ _128_ vdd gnd INVX1
XINVX1_37 tx_cnt<1> _129_ vdd gnd INVX1
XMUX2X1_8 _53_ vdd gnd _9_<4> _82_ _163_ MUX2X1
XINVX1_38 tx_reg<5> _130_ vdd gnd INVX1
XINVX1_39 tx_data<5> _131_ vdd gnd INVX1
XMUX2X1_9 _121_ vdd gnd _9_<5> _131_ _130_ MUX2X1
XINVX1_40 tx_data<6> _132_ vdd gnd INVX1
XNOR2X1_24 vdd _12_ gnd _133_ _166_ NOR2X1
XAOI21X1_12 gnd vdd _132_ _121_ _9_<6> _133_ AOI21X1
XINVX1_41 tx_data<7> _134_ vdd gnd INVX1
XNOR2X1_25 vdd _121_ gnd _135_ tx_reg<7> NOR2X1
XAOI21X1_13 gnd vdd _134_ _121_ _9_<7> _135_ AOI21X1
XOR2X2_2 _136_ _98_ vdd gnd _101_ OR2X2
XOAI21X1_26 gnd vdd uld_rx_data_bF$buf1 _78_ _7_ _79_ OAI21X1
XNAND3X1_14 _134_ vdd gnd _127_ _130_ _137_ NAND3X1
XOAI21X1_27 gnd vdd uld_rx_data_bF$buf3 _80_ _138_ _81_ OAI21X1
XNAND3X1_15 _129_ vdd gnd _110_ _128_ _139_ NAND3X1
XOAI21X1_28 gnd vdd tx_cnt<0> _86_ _140_ _111_ OAI21X1
XNAND3X1_16 _137_ vdd gnd _95_ _136_ _141_ NAND3X1
XOAI21X1_29 gnd vdd _169_ _88_ _142_ tx_cnt<1> OAI21X1
XNAND3X1_17 _138_ vdd gnd _86_ _135_ _143_ NAND3X1
XNAND3X1_18 _129_ vdd gnd _112_ _128_ _144_ NAND3X1
XXOR2X1_1 _145_ vdd tx_cnt<1> tx_cnt<0> gnd XOR2X1
XNAND3X1_19 _141_ vdd gnd _131_ _132_ _146_ NAND3X1
XNAND2X1_28 vdd _147_ gnd _154_ _152_ NAND2X1
XNAND3X1_20 _142_ vdd gnd _127_ _140_ _148_ NAND3X1
XNAND3X1_21 _129_ vdd gnd _107_ _128_ _149_ NAND3X1
XNAND3X1_22 _145_ vdd gnd _95_ _144_ _150_ NAND3X1
XOAI21X1_30 gnd vdd _93_ _99_ _151_ _98_ OAI21X1
XNAND3X1_23 _146_ vdd gnd tx_cnt<0> _143_ _152_ NAND3X1
XNAND3X1_24 _139_ vdd gnd _151_ _147_ _153_ NAND3X1
XNAND3X1_25 _34_ vdd gnd _13_ _21_ _154_ NAND3X1
XNAND2X1_29 vdd _155_ gnd _20_ _155_ NAND2X1
XNAND3X1_26 _155_ vdd gnd _145_ _154_ _156_ NAND3X1
XNAND3X1_27 _156_ vdd gnd tx_cnt<0> _153_ _157_ NAND3X1
XNOR2X1_26 vdd _137_ gnd _158_ tx_cnt<3> NOR2X1
XINVX1_42 tx_cnt<3> _159_ vdd gnd INVX1
XAOI21X1_14 gnd vdd _140_ _111_ _160_ _159_ AOI21X1
XNOR3X1_2 vdd gnd _160_ _158_ _104_ _161_ NOR3X1
XNAND3X1_28 _149_ vdd gnd _161_ _157_ _162_ NAND3X1
XOAI21X1_31 gnd vdd _169_ _91_ _163_ tx_enable OAI21X1
XAND2X2_4 vdd gnd _17_ rx_busy _164_ AND2X2
XNAND2X1_30 vdd _8_ gnd rx_reg<5> _157_ NAND2X1
XNOR2X1_27 vdd _22_ gnd _165_ _11_ NOR2X1
XNAND2X1_31 vdd _167_ gnd rx_d2 _165_ NAND2X1
XOAI21X1_32 gnd vdd _98_ _101_ _4_<7> tx_cnt<3> OAI21X1
XMUX2X1_10 _69_ vdd gnd _4_<6> _94_ _172_ MUX2X1
XNAND3X1_29 _46_ vdd gnd _16_ _23_ _168_ NAND3X1
XOAI21X1_33 gnd vdd tx_cnt<0> tx_cnt<1> _169_ tx_cnt<2> OAI21X1
XOAI21X1_34 gnd vdd tx_cnt<0> tx_cnt<1> _4_<5> _98_ OAI21X1
XOAI21X1_35 gnd vdd tx_cnt<3> tx_cnt<2> _170_ tx_reg<7> OAI21X1
XNAND3X1_30 _83_ vdd gnd rx_busy _61_ _171_ NAND3X1
XAOI21X1_15 gnd vdd _171_ _170_ _0_ _27_ AOI21X1
XINVX8_1 vdd gnd reset _162_ INVX8
XBUFX2_10 vdd gnd _167_<2> rx_data<0> BUFX2
XBUFX2_11 vdd gnd _167_<3> rx_data<1> BUFX2
XBUFX2_12 vdd gnd _167_<4> rx_data<2> BUFX2
XBUFX2_13 vdd gnd _167_<5> rx_data<3> BUFX2
XBUFX2_14 vdd gnd _167_<6> rx_data<4> BUFX2
XBUFX2_15 vdd gnd _167_<7> rx_data<5> BUFX2
XBUFX2_16 vdd gnd _168_ rx_data<6> BUFX2
XBUFX2_17 vdd gnd _169_ rx_data<7> BUFX2
XBUFX2_18 vdd gnd _170_ rx_empty BUFX2
XBUFX2_19 vdd gnd _178_ tx_empty BUFX2
XBUFX2_20 vdd gnd _179_ tx_out BUFX2
XDFFSR_1 gnd vdd _8_ _162__bF$buf5 vdd _170_ txclk DFFSR
XDFFSR_2 gnd vdd _7_ _162__bF$buf4 vdd _169_ txclk DFFSR
XDFFSR_3 gnd vdd _9_<0> vdd _162__bF$buf3 tx_reg<0> txclk DFFSR
XDFFSR_4 gnd vdd _9_<1> vdd _162__bF$buf2 tx_reg<1> txclk DFFSR
XDFFSR_5 gnd vdd _9_<2> vdd _162__bF$buf1 tx_reg<2> txclk DFFSR
XDFFSR_6 gnd vdd _9_<3> vdd _162__bF$buf0 tx_reg<3> txclk DFFSR
XDFFSR_7 gnd vdd _9_<4> vdd _162__bF$buf5 tx_reg<4> txclk DFFSR
XDFFSR_8 gnd vdd _9_<5> vdd _162__bF$buf4 tx_reg<5> txclk DFFSR
XDFFSR_9 gnd vdd _9_<6> vdd _162__bF$buf3 tx_reg<6> txclk DFFSR
XDFFSR_10 gnd vdd _9_<7> vdd _162__bF$buf2 tx_reg<7> txclk DFFSR
XDFFSR_11 gnd vdd _6_<0> vdd _162__bF$buf1 tx_cnt<0> txclk DFFSR
XDFFSR_12 gnd vdd _6_<1> vdd _162__bF$buf0 tx_cnt<1> txclk DFFSR
XDFFSR_13 gnd vdd _6_<2> vdd _162__bF$buf5 tx_cnt<2> txclk DFFSR
XDFFSR_14 gnd vdd _6_<3> vdd _162__bF$buf4 tx_cnt<3> txclk DFFSR
XDFFSR_15 gnd vdd _2_<0> vdd _162__bF$buf3 _167_<0> rxclk_bF$buf4 DFFSR
XDFFSR_16 gnd vdd _2_<1> vdd _162__bF$buf2 _167_<1> rxclk_bF$buf3 DFFSR
XDFFSR_17 gnd vdd _2_<2> vdd _162__bF$buf1 _167_<2> rxclk_bF$buf2 DFFSR
XDFFSR_18 gnd vdd _2_<3> vdd _162__bF$buf0 _167_<3> rxclk_bF$buf1 DFFSR
XDFFSR_19 gnd vdd _2_<4> vdd _162__bF$buf5 _167_<4> rxclk_bF$buf0 DFFSR
XDFFSR_20 gnd vdd _2_<5> vdd _162__bF$buf4 _167_<5> rxclk_bF$buf4 DFFSR
XDFFSR_21 gnd vdd _2_<6> vdd _162__bF$buf3 _167_<6> rxclk_bF$buf3 DFFSR
XDFFSR_22 gnd vdd _2_<7> vdd _162__bF$buf2 _167_<7> rxclk_bF$buf2 DFFSR
XDFFSR_23 gnd vdd _3_ _162__bF$buf1 vdd _168_ rxclk_bF$buf1 DFFSR
XDFFSR_24 gnd vdd _4_<0> vdd _162__bF$buf0 rx_reg<0> rxclk_bF$buf0 DFFSR
XDFFSR_25 gnd vdd _4_<1> vdd _162__bF$buf5 rx_reg<1> rxclk_bF$buf4 DFFSR
XDFFSR_26 gnd vdd _4_<2> vdd _162__bF$buf4 rx_reg<2> rxclk_bF$buf3 DFFSR
XDFFSR_27 gnd vdd _4_<3> vdd _162__bF$buf3 rx_reg<3> rxclk_bF$buf2 DFFSR
XDFFSR_28 gnd vdd _4_<4> vdd _162__bF$buf2 rx_reg<4> rxclk_bF$buf1 DFFSR
XDFFSR_29 gnd vdd _4_<5> vdd _162__bF$buf1 rx_reg<5> rxclk_bF$buf0 DFFSR
XDFFSR_30 gnd vdd _4_<6> vdd _162__bF$buf0 rx_reg<6> rxclk_bF$buf4 DFFSR
XDFFSR_31 gnd vdd _4_<7> vdd _162__bF$buf5 rx_reg<7> rxclk_bF$buf3 DFFSR
XDFFSR_32 gnd vdd _5_<0> vdd _162__bF$buf4 rx_sample_cnt<0> rxclk_bF$buf2 DFFSR
XDFFSR_33 gnd vdd _5_<1> vdd _162__bF$buf3 rx_sample_cnt<1> rxclk_bF$buf1 DFFSR
XDFFSR_34 gnd vdd _5_<2> vdd _162__bF$buf2 rx_sample_cnt<2> rxclk_bF$buf0 DFFSR
XDFFSR_35 gnd vdd _5_<3> vdd _162__bF$buf1 rx_sample_cnt<3> rxclk_bF$buf4 DFFSR
XDFFSR_36 gnd vdd _1_<0> vdd _162__bF$buf0 rx_cnt<0> rxclk_bF$buf3 DFFSR
XDFFSR_37 gnd vdd _1_<1> vdd _162__bF$buf5 rx_cnt<1> rxclk_bF$buf2 DFFSR
XDFFSR_38 gnd vdd _1_<2> vdd _162__bF$buf4 rx_cnt<2> rxclk_bF$buf1 DFFSR
XDFFSR_39 gnd vdd _1_<3> vdd _162__bF$buf3 rx_cnt<3> rxclk_bF$buf0 DFFSR
XDFFSR_40 gnd vdd rx_in _162__bF$buf2 vdd rx_d1 rxclk_bF$buf4 DFFSR
XDFFSR_41 gnd vdd rx_d1 _162__bF$buf1 vdd rx_d2 rxclk_bF$buf3 DFFSR
XDFFSR_42 gnd vdd _0_ vdd _162__bF$buf0 rx_busy rxclk_bF$buf2 DFFSR
.ends uart
 