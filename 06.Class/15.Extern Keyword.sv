class student;
  string name;
  int roll_no;
  
  extern function void display1();
  extern task display2();  
endclass

function void student::display1();
  $display("Student name = %0s ",name);
endfunction

task student::display2();
  #10;
  $display("%0t | roll no = %0d ",$time, roll_no);
endtask

module tb;
  student s;
  initial begin
    s=new();
    s.name="dhanush";
    s.roll_no=7;
    s.display1();
    s.display2();
    end
endmodule
