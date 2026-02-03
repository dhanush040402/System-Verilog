module call_func_inside_task;
  initial begin
    $display("%0t | Inside initial begin",$time);
    $display("Calling task");
    task_sum;
    
  end
  task task_sum;
    #1;
    $display(" %0t | I am inside task ",$time);
    $display("calling function inside task");
    #1;
    void'(function_sum);
    $display("%0t | Returned from function to task ",$time);
  endtask
  
  function function_sum;
    $display("I am inside function");
  endfunction
endmodule
