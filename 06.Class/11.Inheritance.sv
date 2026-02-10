class parent;
  bit[31:0]data;
  
  function void display_parent();
    $display("Value of data = %d  ",data);
  endfunction
endclass

class child extends parent;
  int id;
  
  function void display_child();
    $display("Value of id = %d ",id);
  endfunction
endclass

module inheritance;
  initial begin
    child ch;
    ch=new();
    
    ch.data=8;
    ch.id=1;
    
    ch.display_parent();
    ch.display_child();
    
    end
endmodule
