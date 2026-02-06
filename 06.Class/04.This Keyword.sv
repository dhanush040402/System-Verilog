class transaction;
  int id;
  bit [31:0] data;

  function new(int id, bit [31:0] data);
    this.id   = id;     
    this.data = data;   
  endfunction

  function void print();
    $display("id = %0d, data = %0h", this.id, this.data);
  endfunction
endclass

module tb;
  initial begin
    transaction tr;

    tr = new(5, 32'hABCD);
    tr.print();
  end
endmodule

