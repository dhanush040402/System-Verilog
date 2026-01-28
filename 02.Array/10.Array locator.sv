module array_locators;

  int q[$] = '{1, 3, 5, 7};
  int tq[$];
  int d[]  = '{9, 1, 8, 3, 4, 4};
  int f[6] = '{1, 6, 2, 6, 8, 6};
  int count;

  initial begin
    $display("1) %0d", q.sum());
    $display("2) %0d", q.product());
	$display("3) %p", q.min());
	$display("4) %p", q.max());


    tq = f.unique();
    $display("5) %p", tq);

    tq = d.find with (item > 3);
    $display("6) %p", tq);

    tq = d.find_index with (item > 3);
    $display("7) %p", tq);

    tq = d.find_index with (item > 99);
    $display("8) %p", tq);

    tq = d.find_first_index with (item == 8);
    $display("9) %p", tq);

    tq = d.find_last with (item == 4);
    $display("10) %p", tq);

    tq = d.find_last_index with (item == 4);
    $display("11) %p", tq);

    count = d.sum with ((item > 7) ? 1 : 0);
    $display("12) %0d", count);

    count = d.sum with ((item > 7) * item);
    $display("13) %0d", count);

    count = d.sum with (item < 8);
    $display("14) %0d", count);

    count = d.sum with ((item < 8) ? item : 0);
    $display("15) %0d", count);
  end

endmodule
