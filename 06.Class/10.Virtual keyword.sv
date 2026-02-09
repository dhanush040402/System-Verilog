class Parent;
  virtual function void display();
    $display("Class parent");
  endfunction
endclass

class child extends Parent;
  function void display();
    $display("Class CHild");
  endfunction
endclass

module virtual_key;
  Parent p;
  child c;
  initial begin
    c=new();
    p=c;
    p.display();
  end
endmodule
