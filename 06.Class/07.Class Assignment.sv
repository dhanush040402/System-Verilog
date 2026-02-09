class Packet;
  int addr;
endclass

module class_assignment;
Packet p1, p2;

initial begin
  p1 = new();
  p1.addr = 32'hAA;

  p2 = p1;   

  p2.addr = 32'hBB;

  $display("p1.addr = %h", p1.addr);
  $display("p2.addr = %h", p2.addr); 
end
endmodule
