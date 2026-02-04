module union_packed;

  typedef union packed {
    logic [31:0] word;
    logic [3:0][7:0] bytes;
    logic [15:0][1:0] halfwords;
  } data_u;

  data_u d;

  initial begin
    d.word = 32'hA1B2_C3D4;

    $display("word      = %h", d.word);
    d.bytes[0] = 8'hFF;

    $display("after byte change");
    $display("word      = %h", d.word);
  end

endmodule
