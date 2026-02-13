module fulladder(full i);
  assign {i.ca,i.s} = i.a+i.b+i.c;
endmodule

interface full;
  logic a,b,c,s,ca;
endinterface

module tb;
  full i();
  fulladder dut(i);
  initial begin
    $monitor("a=%b b=%b c=%b,sum=%b,carry=%b",i.a,i.b,i.c,i.s,i.ca);
    i.a = 1; i.b = 0; i.c = 0;
    #1;
    i.a = 1; i.b = 0; i.c = 1;
    #1;
    i.a = 1; i.b = 1; i.c = 1;
  end
endmodule
