//`include "libreria.v"

// -----------------------------------------------
// Sumador completo de un bit
// -----------------------------------------------
// Entradas: A, B, Cin
// Salida Cout y S


module sumador_completo (a, b, ci, s, co);
  parameter PwrC = 0;
  input a;
  input b;
  input ci;
  output s;
  output co;
  

  wire s_0, s_1, s_2, s_3;

  xor3_p #(PwrC) xor_0(s, a, b, ci);
  //xor2_p #(PwrC) xor_1(s, s_0, ci);
  and2_p #(PwrC) and_0(s_1, a, ci);
  and2_p #(PwrC) and_1(s_2, b, ci);
  and2_p #(PwrC) and_2(s_3, a, b);
  or3_p #(PwrC) or_0(co, s_1, s_2, s_3);

  

endmodule


// -----------------------------------------------
// Sumador rizado de 8 bits
// -----------------------------------------------
module SUM_RIZADO(a, b, ci, s, co);
  parameter PwrC = 0;
  input [7:0] a;
  input [7:0] b;
  input ci;
  output [7:0] s;
  output co;

  wire c_1, c_2, c_3, c_4, c_5, c_6, c_7;

  sumador_completo #(PwrC) sum_0(a[0], b[0], ci, s[0], c_1);
  sumador_completo #(PwrC) sum_1(a[1], b[1], c_1, s[1], c_2);
  sumador_completo #(PwrC) sum_2(a[2], b[2], c_2, s[2], c_3);
  sumador_completo #(PwrC) sum_3(a[3], b[3], c_3, s[3], c_4);
  sumador_completo #(PwrC) sum_4(a[4], b[4], c_4, s[4], c_5);
  sumador_completo #(PwrC) sum_5(a[5], b[5], c_5, s[5], c_6);
  sumador_completo #(PwrC) sum_6(a[6], b[6], c_6, s[6], c_7);
  sumador_completo #(PwrC) sum_7(a[7], b[7], c_7, s[7], co);

endmodule
