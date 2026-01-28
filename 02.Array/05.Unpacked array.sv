module unpacked_array;
  int mem [0:3][0:7];

  integer i, j;

  initial begin
    
    for (i = 0; i < 4; i++) begin
      for (j = 0; j < 8; j++) begin
        mem[i][j] = i * 10 + j;
      end
    end

    
    for (i = 0; i < 4; i++) begin
      for (j = 0; j < 8; j++) begin
        $display("mem[%0d][%0d] = %0d", i, j, mem[i][j]);
      end
    end
  end

endmodule
