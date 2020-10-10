// Entrada A
// Salida Y
module NOT(A, Y); // 74AC11004
  specify         // Max values at Vcc = 5 V +- 0.5 V, Ta = 25 C
    specparam tpdh = 6.3;
    specparam tpdl = 5.5;
    (A *> Y) = (tpdh, tpdl);
  endspecify  
  input A;
  output Y;

  assign Y = ~A;

endmodule

// Entrada A, B
// Salida Y
module NAND(A, B, Y); //SN74HCS03
  specify             // Max values at Vcc = 4.5 V 
    specparam tpdh = 13;
    specparam tpdl = 13;
    (A *> Y) = (tpdh, tpdl);
    (B *> Y) = (tpdh, tpdl);
  endspecify  
  input A;
  input B;
  output Y;

  assign Y = ~(A&B);
endmodule

// Entrada A, B, C
// Salida Y
module NAND3(A, B, C, Y); // SN74HCS10
  specify                 // Max values at Vcc = 4.5 V 
    specparam tpdh = 17;
    specparam tpdl = 17;
    (A *> Y) = (tpdh, tpdl);
    (B *> Y) = (tpdh, tpdl);
    (C *> Y) = (tpdh, tpdl);
  endspecify  
  input A;
  input B;
  input C;
  output Y;

  assign Y = ~(A&B&C);
endmodule

// Entrada A, B
// Salida Y
module NOR(A, B, Y);  // SN74HCS7002
  specify             // Max values at Vcc = 4.5 V 
    specparam tpdh = 15;
    specparam tpdl = 15;
    (A *> Y) = (tpdh, tpdl);
    (B *> Y) = (tpdh, tpdl);
  endspecify  
  input A;
  input B;
  output Y;

  assign Y = ~(A|B);
endmodule

// Entrada A, B
// Salida Y
module NOR3(A, B, C, Y);  // SN74HCS27
  specify                 // Max values at Vcc = 4.5 V 
    specparam tpdh = 15;
    specparam tpdl = 15;
    (A *> Y) = (tpdh, tpdl);
    (B *> Y) = (tpdh, tpdl);
    (C *> Y) = (tpdh, tpdl);
  endspecify  
  input A;
  input B;
  input C;
  output Y;

  assign Y = ~(A|B|C);
endmodule

// Entrada D
// Reloj C
// Salida Q
module DFF(C, D, Q);      //SN74LVC2G74-EP
  specify                 // Max values at Vcc = 4.5 V 
    specparam tpdh = 6.1;
    specparam tpdl = 6.1;
    specparam tsu = 1.2;
    specparam th = 0.5;
    (C => Q) = (tpdl, tpdh);
    $setuphold(posedge C, D, tsu, th);
  endspecify  
  input C;
  input D;
  output reg Q;

  always @(posedge C) begin
    Q <= D;
  end
endmodule
