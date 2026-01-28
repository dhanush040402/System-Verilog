module two_dimensional_array;
  int array[3][2] = '{'{1, 100}, '{2, 200}, '{3, 300}};
  initial begin
    foreach (array[i,j]) begin
      $display("array[%0d][%0d] = %0d", i,j, array[i][j]);
    end
  end
endmodule
