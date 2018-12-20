module somador(A, B, S);

input [31:0] A, B;
output [31:0] S;
wire [31:0] C;

somador1bit somador1bit0(S[0],C[0],A[0],B[0],1'b0);
somador1bit somador1bit1(S[1],C[1],A[1],B[1],C[0]);
somador1bit somador1bit2(S[2],C[2],A[2],B[2],C[1]);
somador1bit somador1bit3(S[3],C[3],A[3],B[3],C[2]);
somador1bit somador1bit4(S[4],C[4],A[4],B[4],C[3]);
somador1bit somador1bit5(S[5],C[5],A[5],B[5],C[4]);
somador1bit somador1bit6(S[6],C[6],A[6],B[6],C[5]);
somador1bit somador1bit7(S[7],C[7],A[7],B[7],C[6]);
somador1bit somador1bit8(S[8],C[8],A[8],B[8],C[7]);
somador1bit somador1bit9(S[9],C[9],A[9],B[9],C[8]);
somador1bit somador1bit10(S[10],C[10],A[10],B[10],C[9]);
somador1bit somador1bit11(S[11],C[11],A[11],B[11],C[10]);
somador1bit somador1bit12(S[12],C[12],A[12],B[12],C[11]);
somador1bit somador1bit13(S[13],C[13],A[13],B[13],C[12]);
somador1bit somador1bit14(S[14],C[14],A[14],B[14],C[13]);
somador1bit somador1bit15(S[15],C[15],A[15],B[15],C[14]);
somador1bit somador1bit16(S[16],C[16],A[16],B[16],C[15]);
somador1bit somador1bit17(S[17],C[17],A[17],B[17],C[16]);
somador1bit somador1bit18(S[18],C[18],A[18],B[18],C[17]);
somador1bit somador1bit19(S[19],C[19],A[19],B[19],C[18]);
somador1bit somador1bit20(S[20],C[20],A[20],B[20],C[19]);
somador1bit somador1bit21(S[21],C[21],A[21],B[21],C[20]);
somador1bit somador1bit22(S[22],C[22],A[22],B[22],C[21]);
somador1bit somador1bit23(S[23],C[23],A[23],B[23],C[22]);
somador1bit somador1bit24(S[24],C[24],A[24],B[24],C[23]);
somador1bit somador1bit25(S[25],C[25],A[25],B[25],C[24]);
somador1bit somador1bit26(S[26],C[26],A[26],B[26],C[25]);
somador1bit somador1bit27(S[27],C[27],A[27],B[27],C[26]);
somador1bit somador1bit28(S[28],C[28],A[28],B[28],C[27]);
somador1bit somador1bit29(S[29],C[29],A[29],B[29],C[28]);
somador1bit somador1bit30(S[30],C[30],A[30],B[30],C[29]);
somador1bit somador1bit31(S[31],C[31],A[31],B[31],C[30]);

endmodule

module somador1bit(soma, cout, a, b, cin);
input   a,b,cin;
output  cout,soma;

xor #(50) (soma,a,b,cin);

and #(50) and1(c1,a,b);
or #(50) or1(c2,a,b);
and #(50) and2(c3,c2,cin);
or #(50) or2(cout,c1,c3);

endmodule 