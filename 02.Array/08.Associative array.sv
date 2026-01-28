module associative_array_example;

  int aa[int];
  int key;

  initial begin
    aa[10] = 100;
    aa[5]  = 50;
    aa[20] = 200;
    aa[15] = 150;

    $display("Associative array contents:");
    foreach (aa[i])
      $display("aa[%0d] = %0d", i, aa[i]);

    if (aa.exists(10))
      $display("Key 10 exists");

    $display("Size = %0d", aa.num());

    if (aa.first(key))
      $display("First key = %0d, value = %0d", key, aa[key]);

    if (aa.last(key))
      $display("Last key = %0d, value = %0d", key, aa[key]);

    if (aa.next(key))
      $display("Next key = %0d, value = %0d", key, aa[key]);

    if (aa.prev(key))
      $display("Previous key = %0d, value = %0d", key, aa[key]);

    aa.delete(10);
    aa.delete();

    $display("Size after delete = %0d", aa.num());
  end

endmodule
