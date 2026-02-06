class assignment;
  bit[7:0]data;
endclass

module example;
  assignment a1,a2;
  initial begin
  a1=new();
  a1.data=5;
  a2=a1;
  
  $display("The first value : %0h",a1.data);
  $display("The second value : %0h",a2.data);
  
  a1.data=12;
  
  $display("The first value : %0h",a1.data);
  $display("The second value : %0h",a2.data);
  end
endmodule
