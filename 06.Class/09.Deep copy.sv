class Packet;
  int addr;
  
    function void copy(Packet rhs);
    this.addr = rhs.addr;
  endfunction
endclass

module deep_copy;
Packet p1, p2;

initial begin
  p1 = new();
  p2 = new();
  p1.addr = 32'hAA;

  p2.copy(p1);   

  p2.addr = 32'hBB;

  $display("p1.addr = %h", p1.addr);
  $display("p2.addr = %h", p2.addr); 
end
endmodule
