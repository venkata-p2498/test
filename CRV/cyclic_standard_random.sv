// To demonstrate cyclic random and standard randomization techniques
  class rand_c;
    randc bit [3:0] cyc_rand;
    rand  bit [3:0] std_rand;
  endclass

module test_tb;
  bit success = 0;
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
    
    
