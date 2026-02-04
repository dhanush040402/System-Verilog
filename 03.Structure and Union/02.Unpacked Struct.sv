module unpacked_struct;

  typedef struct {
    int        id;
    byte       prior;
    logic [7:0] data;
  } trans_t;

  trans_t tr;

  initial begin
    tr.id       = 100;
    tr.prior = 5;
    tr.data     = 8'hA5;

    $display("id=%0d priority=%0d data=%h",
              tr.id, tr.prior, tr.data);
  end

endmodule
