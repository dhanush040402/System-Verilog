module call_by_value;
int result;  
initial begin  
  result=sum(5,6);  
  $display("\treturned from function and");  
  $display("\tstored the value of sum in result");    
  $display("\n\t@ %0t ns, value of sum is %0d",$time,result);     
end  
function int sum(int var1,var2);    
  $display("entered into function");   
  return var1+var2;  
endfunction   
endmodule
