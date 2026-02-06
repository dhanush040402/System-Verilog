class parent;
  int a;

  function new(int a);
    this.a = a;
  endfunction
endclass

class child extends parent;
  int b;

  function new(int a, int b);
    super.new(a);   
    this.b = b;
  endfunction
endclass

module tb;
  initial begin
    child c = new(5, 10);
    $display("a = %0d, b = %0d", c.a, c.b);
  end
endmodule
