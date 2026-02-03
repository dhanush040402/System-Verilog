module addition_simpletask;
  int a=10,b=5,result;
  initial begin
    $display("Simple task calling " );
    add(a,b,result);
    $display("Time  = %0t | A = %0d | B = %0d | Result = %0d |",$time,a,b,result);
  end
  
  task add(input int var1,var2, output int sum);
    #2;
    sum = var1+var2;
  endtask
endmodule
