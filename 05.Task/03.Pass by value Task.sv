module pass_by_value_task;
  int a, b;
  int out;
  
  
  task multiply(int a,b, output int out);
    a = a*b; 
    out = a;
  endtask
  
  initial begin
	a=10;
    b=5;

    multiply(a,b, out);
    $display("Task: out = %0d for a = %0d and b = %0d", out, a, b);
  end
endmodule
