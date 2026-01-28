module single_dimensional_array;
  int array[5] = '{15,7,3,12,5};
  initial begin
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule
