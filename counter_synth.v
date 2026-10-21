module counter (
    clk,
    rst,
    count
);
  input clk;
  input rst;
  output [3:0] count;

  wire [3:0] count;
  wire net0, net1, net2, net3;
  wire and01, and012;

  // Bit 0: Inverter + Flip-Flop
  sky130_fd_sc_hd__inv_1 u_inv0 (
      .A(count[0]),
      .Y(net0)
  );
  sky130_fd_sc_hd__dfxtp_1 dff0 (
      .CLK(clk),
      .D(net0),
      .Q(count[0])
  );

  // Bit 1: XOR + Flip-Flop
  sky130_fd_sc_hd__xor2_1 u_xor1 (
      .A(count[0]),
      .B(count[1]),
      .X(net1)
  );
  sky130_fd_sc_hd__dfxtp_1 dff1 (
      .CLK(clk),
      .D(net1),
      .Q(count[1])
  );

  // Bit 2: AND + XOR + Flip-Flop
  sky130_fd_sc_hd__and2_1 u_and1 (
      .A(count[0]),
      .B(count[1]),
      .X(and01)
  );
  sky130_fd_sc_hd__xor2_1 u_xor2 (
      .A(count[2]),
      .B(and01),
      .X(net2)
  );
  sky130_fd_sc_hd__dfxtp_1 dff2 (
      .CLK(clk),
      .D(net2),
      .Q(count[2])
  );

  // Bit 3: AND + XOR + Flip-Flop
  sky130_fd_sc_hd__and2_1 u_and2 (
      .A(and01),
      .B(count[2]),
      .X(and012)
  );
  sky130_fd_sc_hd__xor2_1 u_xor3 (
      .A(count[3]),
      .B(and012),
      .X(net3)
  );
  sky130_fd_sc_hd__dfxtp_1 dff3 (
      .CLK(clk),
      .D(net3),
      .Q(count[3])
  );

endmodule
