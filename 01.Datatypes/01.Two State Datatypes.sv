module two_state_datatypes;

  bit [3:0]   a;
  byte        b;
  shortint    c;
  int         d;
  longint     e;

  initial begin
    a = 4'b1001;
    b = 8'b10110100;
    c = 16'd98;
    d = 32'd245;
    e = 64'd520;

    $display("Two state data types");
    $display("bit,       a = %0b ", a);
    $display("byte,      b = %0d ", b);
    $display("shortint,  c = %0d ", c);
    $display("int,       d = %0d ", d);
    $display("longint,   e = %0d ", e);
  end

endmodule
