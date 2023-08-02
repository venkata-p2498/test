class Bus;
  randc bit [3:0] addr; //address generation should be in cyclic order and it should not repeat
  rand bit[3:0] data;
endclass

module tb;
  initial begin  
    Bus bus = new(); // bus object is created 
    repeat(16) begin    
      if(bus.randomize() == 1)     
        $display("addr = %0h data = %0h", bus.addr, bus.data);
      else
        $display("Randomization Failed");  
    end 
  end
endmodule
