module enum_methods;


  typedef enum int {
    ST_IDLE  = 0,
    ST_READ  = 2,
    ST_WRITE = 4,
    ST_DONE  = 6
  } state_t;

  state_t state;

  initial begin
    
    state = state.first();
    $display("first  : value=%0d name=%s", state, state.name());

    state = state.last();
    $display("last   : value=%0d name=%s", state, state.name());

    // next()
    state = ST_IDLE;
    repeat (state.num()) begin
      $display("next   : value=%0d name=%s", state, state.name());
      state = state.next();
    end

    // prev()
    state = ST_DONE;
    repeat (state.num()) begin
      $display("prev   : value=%0d name=%s", state, state.name());
      state = state.prev();
    end

    // num()
    $display("num    : total enum literals = %0d", state.num());

    // inside operator
    if (state inside {ST_IDLE, ST_READ})
      $display("inside : state is IDLE or READ");

    // enum casting
    state = state_t'(4);
    $display("cast   : value=%0d name=%s", state, state.name());

    // invalid cast (no matching literal)
    state = state_t'(5);
    $display("invalid: value=%0d name=%s", state, state.name());

  end

endmodule
