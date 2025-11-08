`timescale 1ns / 1ps
module boolean_exp (
    input A,B,C,D,E,
    output Y
);
wire e1,e2;

and (e1,A,B); //e1=A & B
and (e2,C,D); //e2=C & D
or (Y,e1,e2,E); //Y= e1 | e2 | E
endmodule