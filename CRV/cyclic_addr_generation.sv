class Bus;
  
  //randc: random cyclic value upto 16 bits
  //bit: unsigned integer random variable and randc [3:0] 4 bit unsigned integer random variable
  randc bit [3:0] addr; //address generation should be in cyclic order and it should not repeat
  
  //rand:returns the value over the entire range
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

---------------------------------
/*
# KERNEL: addr = e data = 2
# KERNEL: addr = b data = 2
# KERNEL: addr = c data = 9
# KERNEL: addr = f data = a
# KERNEL: addr = 0 data = c
# KERNEL: addr = 4 data = 0
# KERNEL: addr = 2 data = 9
# KERNEL: addr = 7 data = 5
# KERNEL: addr = 9 data = 0
# KERNEL: addr = 1 data = b
# KERNEL: addr = 3 data = 0
# KERNEL: addr = 5 data = 5
# KERNEL: addr = a data = 8
# KERNEL: addr = 6 data = a
# KERNEL: addr = 8 data = e
# KERNEL: addr = d data = 5
# KERNEL: addr = 9 data = b
# KERNEL: addr = a data = 9
# KERNEL: addr = c data = d
*/
-------------------------------
