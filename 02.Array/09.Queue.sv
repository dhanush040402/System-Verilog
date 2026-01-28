module queue;

  int A[$] = '{0, 1, 2, 3, 4, 5, 6};
  int x, y, z;

  initial begin
    $display("Initial queue A = %p", A);

    x = A.size();
    $display("After size(): x = %0d, A = %p", x, A);

    A.insert(3, 7);
    $display("After insert(3,7): A = %p", A);

    A.delete(5);
    $display("After delete(5): A = %p", A);

    y = A.pop_front();
    $display("After pop_front(): y = %0d, A = %p", y, A);

    z = A.pop_back();
    $display("After pop_back(): z = %0d, A = %p", z, A);

    A.push_front(9);
    $display("After push_front(9): A = %p", A);

    A.push_back(8);
    $display("After push_back(8): A = %p", A);
  end

endmodule
