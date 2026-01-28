module packed_array;
  bit [7:0] data;

  initial begin
    data = 8'b10101101;

    $display("Full data      = %b", data);
    $display("data[7] (MSB)  = %b", data[7]);
    $display("data[0] (LSB)  = %b", data[0]);
    $display("Lower nibble   = %b", data[3:0]);
  end

endmodule
