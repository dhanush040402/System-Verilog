module union_unpacked;

  typedef union{
    logic [31:0] word;
    logic [7:0] bytes;
    logic [15:0] halfwords;
  } data_u;

  data_u d;

  initial begin
    d.word = 32'hA1B2_C3D4;

    $display("word      = %h", d.word);
    d.bytes[3:0] = 4'hF;


    $display("after byte change");
    $display("word      = %h", d.word);
  end

endmodule
