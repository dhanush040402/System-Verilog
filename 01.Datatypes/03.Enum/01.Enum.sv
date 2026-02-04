module enum_datatype;
  typedef enum {Violet,Blue,Green,Yellow,Red} colour_set1;
  typedef enum {violet=1,blue=3,green=2,yellow=5,red=4} colour_set2;
  typedef enum {Beige[3]} colour_set3;
  typedef enum {Black[4]=7} colour_set4;
  typedef enum {White[3:5]} colour_set5;
  typedef enum {Pink[3:5]=8} colour_set6;
  
  initial begin
    colour_set1 colour1;
    colour_set2 colour2;
    colour_set3 colour3;
    colour_set4 colour4;
    colour_set5 colour5;
    colour_set6 colour6;
  
    colour1=Green;
    $display("value = %d | Key = %s |",colour1,colour1.name());
    colour2=blue;
    $display("value = %d | Key = %s |",colour2,colour2.name());
    colour3=Beige2;
    $display("value = %d | Key = %s |",colour3,colour3.name());
    colour4=Black3;
    $display("value = %d | Key = %s |",colour4,colour4.name());                                                                                     colour5=White4;
    $display("value = %d | Key = %s |",colour5,colour5.name());
    colour6=Pink4;
    $display("value = %d | Key = %s |",colour6,colour6.name());    
    end
endmodule
