class Container #(type T = int);

  T data;

  function void display();
    $display("Data = %p", data);
  endfunction

endclass
module test;

  Container #(int)    c1;
  Container #(string) c2;

  initial begin
    c1 = new();
    c2 = new();

    c1.data = 10;
    c2.data = "Hello";

    c1.display();
    c2.display();
  end

endmodule
