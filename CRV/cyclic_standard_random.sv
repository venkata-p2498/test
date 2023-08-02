module test_tb;

  bit success = 0;

  class rand_c;
    randc [3:0] cyc_rand;
    rand [3:]  std_rand;
  endclass

  initial begin
    rand_c rand_obj;
    rand_obj = new();
    
    for(int i = 0; i <16; i++) begin
        success = rand_obj.randomize();
        $display("cyclic random = %0d standard random = %0d", rand_obj.cyc_rand, rand_obj.std_rand);
      if(i%4 == 0) $display("");
         
    end
  end
endmodule
    
    
