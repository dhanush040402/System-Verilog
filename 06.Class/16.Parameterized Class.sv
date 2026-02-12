class Packet #(int WIDTH = 8);

  bit [WIDTH-1:0] data;

  function void display();
    $display("Data = %0h (Width = %0d)", data, WIDTH);
  endfunction

endclass

module test;

  Packet #(8)  p1;
  Packet #(16) p2;

  initial begin
    p1 = new();
    p2 = new();

    p1.data = 8'hAA;
    p2.data = 16'hABCD;

    p1.display();
    p2.display();
  end

endmodule
