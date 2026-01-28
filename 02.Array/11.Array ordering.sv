module array_ordering;

  int a[] = '{5, 2, 9, 1, 5, 6};

  initial begin
    a.sort();
    $display("1) %p", a);

    a.rsort();
    $display("2) %p", a);

    a.reverse();
    $display("3) %p", a);

    a.shuffle();
    $display("4) %p", a);
  end

endmodule
