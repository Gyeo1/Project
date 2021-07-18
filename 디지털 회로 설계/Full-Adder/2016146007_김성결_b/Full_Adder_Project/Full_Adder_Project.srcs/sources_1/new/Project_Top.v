module Project_Top(

output Sumout,
output Cout
);

wire input1,input2, Cin;

Testbench U0(
input1,
input2,
Cin
);

Full_Adder U1(
input1,
input2,
Cin,
Sumout,
Cout
);
/*
Half_Adder U2(
input1,
input2,
Sumout,
Cout
);*/

endmodule