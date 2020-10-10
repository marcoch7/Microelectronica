`timescale 	1ns				/ 100ps
//Ejemplo #1
module BUF(A, Y);
specify
	specparam tpd= 4.5; //hoja de fabricante 74ACT244
    (A*> Y) = (tpd, tpd); //tRise,tFall
endspecify

input A;
output Y;
assign Y = A;
endmodule

//Ejemplo #2
module BUFX2 (A, Y);
input  A ;
output Y ;
   buf (Y, A);
   specify
     // delay parameters
     specparam
       tpllh = 0.13,
       tphhl = 0.15;
     // path delays
     (A *> Y) = (tpllh, tphhl);
   endspecify
endmodule

// Entrada A
// Salida Y
module NOT(A, Y); // 74AC11004
  specify         // Max values at Vcc = 5 V +- 0.5 V, Ta = 25 C
    specparam tpdh = 4.2;
    specparam tpdl = 3.8;
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
    specparam tpdh = 9;
    specparam tpdl = 9;
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
  specify                 // Typical values at Vcc = 4.5 V 
    specparam tpdh = 6;
    specparam tpdl = 6;
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
  specify             // Typical values at Vcc = 4.5 V 
    specparam tpdh = 7;
    specparam tpdl = 7;
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
  specify                 // Typical values at Vcc = 4.5 V 
    specparam tpdh = 7;
    specparam tpdl = 7;
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
  specify                 // Typical values at Vcc = 4.5 V 
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
