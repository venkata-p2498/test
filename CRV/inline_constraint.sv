class Transaction;
  
  rand bit [3:0] int1, int2, int3;
  //constraint con{int3 >= int1 + int2;}
  //constraint con{int3 <= int1 + int2;}
  constraint con{int3 == int1 + int2;}
  
endclass

module test_tb;
  
  bit success;
  
  initial begin
    
    Transaction tr;   
    tr = new();
    
    repeat(10) begin
    //success = tr.randomize() with {int1 < int2;};
    // success = tr.randomize() with {int1 > int2;};
      success = tr.randomize() with {int1 == int2;};
      
      $display("int1 : %0d int2 : %0d int3 : %0d", tr.int1, tr.int2, tr.int3 );
    end
   
  end
endmodule
