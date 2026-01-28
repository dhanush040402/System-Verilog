module dynamic_methods;

  int d1[];
  int d[] = '{9, 1, 8, 3, 4, 4};

  initial begin
    d1 = new[6];

    foreach (d1[i]) begin
      d1[i] = i;
    end

    $display("d1 = %p, size = %0d", d1, d1.size());

    d.reverse();
    $display("After reverse d = %p", d);

    d.sort();
    $display("After sort d = %p", d);

    d.rsort();
    $display("After rsort d = %p", d);

    d.shuffle();
    $display("After shuffle d = %p", d);

    d1.delete();
    $display("size of d1 after deleting = %0d", d1.size());
  end

endmodule
