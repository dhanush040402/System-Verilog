module call_by_variable;
int result,a=5,b=6;    
initial begin  
  $display("\tcalling the function");  
  result=sum(a,b);  
  $display("\treturned from function and");  
  $display("\tstored the value of sum in result");  
  $display("\n\t@ %0t ns, value of sum is %0d",$time,result);    
end  
function int sum(input int a,b);  
  $display("entered into function");   
  return a+b;  
endfunction  
endmodule
