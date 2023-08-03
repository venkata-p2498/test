class rand_c;
  rand integer int1, int2, int3;
  
  //for set membership : constraints for the same variables but for different ranges (hardcoding the values for same signals)
  constraint con1{int1 inside {1, 2, 3, 4, 5, [11:15], [int2:int3]};}
  constraint con1a{!int1 inside {55, 65, 75};}
  constraint con2{int2 > 50 && int2 < 60;}
  constraint con3{int3 >60 && int3 <70;}
  
endclass

module tb;
  bit success;
  
  initial begin
    rand_c rand_obj;
    rand_obj = new();
    repeat(15) begin  
      success = rand_obj.randomize();
      $display("int1 : %0d int2 : %0d int3 : %0d", rand_obj.int1, rand_obj.int2, rand_obj.int3);
  end
end
endmodule
