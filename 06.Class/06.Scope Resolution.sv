class packet;
  static int count = 0;   
  int id;

  function new();
    count++;              
    id = packet::count;   
  endfunction
endclass

module tb;
  initial begin
    packet p1 = new();
    packet p2 = new();

    $display("p1.id = %0d", p1.id);
    $display("p2.id = %0d", p2.id);
  end
endmodule
