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

class child_A extends child;
  string name;
  
  function void display_childA();
    $display("Name = %s ",name);
  endfunction
endclass

module multi_inheritance;
  initial begin
    child_A ch;
    ch=new();
    
    ch.data=8;
    ch.id=1;
    ch.name="Dhanush";
    
    ch.display_parent();
    ch.display_child();
    ch.display_childA();
    
    end
endmodule
