module top(
    input [7:0] sw,
    output [5:0] led
);


wire lsb_cout;

light light_inst(
.down(sw[0]),
.up(sw[1]),
.light(led[0])
);

adder adder_inst(
.A(sw[2]),
.B(sw[3]),
.Y(led[1]),
.carry(led[2])
);

full_adder LSB(
.A(sw[4]),
.B(sw[6]),
.Cin(1'b0),
.Y(led[3]),
.Cout(lsb_cout)
);

full_adder MSB(
.A(sw[5]),
.B(sw[7]),
.Cin(lsb_cout),
.Y(led[4]),
.Cout(led[5])
);


endmodule