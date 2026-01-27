module four_state_data_type;
    logic [7:0]a;
    reg [7:0]b;
    integer sum;
    time  t;
  
   initial begin
      a = 8'd15;
      b = 8'd2;
      sum = a + b;
     #10 t = $time;
     
     $display("Four state data types");
     $display(" a=%0d ", a);
     $display(" b=%0d ", b);
     $display(" sum=%0d ", sum);
     $display(" t=%0d ", t);
   end
endmodule
