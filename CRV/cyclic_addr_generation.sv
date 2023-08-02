class Bus;
  
  //randc: random cyclic value upto 16 bits
  //Ex: randc bit[1:0] r_var; // r_var is a 2 bit random variable , can take values between 0 to 3.
  // randc limitations: can take datatype  of only bit or enum 
  randc bit [3:0] addr; //address generation should be in cyclic order and it should not repeat
  
  //rand:returns the value over the entire range
  //bit: unsigned integer random variable and randc [3:0] 4 bit unsigned integer random variable
  rand bit[3:0] data;

  constraint range10 {
    data < 'd10; // always less than 10
    data % 2 == 0; // event numbers only
  }
  
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
/* output with out constraint                                    
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

/*output  with constraint
# KERNEL: addr = 5 data = 6
# KERNEL: addr = e data = 2
# KERNEL: addr = 1 data = 2
# KERNEL: addr = 3 data = 4
# KERNEL: addr = 4 data = 0
# KERNEL: addr = 8 data = 4
# KERNEL: addr = 7 data = 4
# KERNEL: addr = 9 data = 4
# KERNEL: addr = 2 data = 4
# KERNEL: addr = c data = 2
# KERNEL: addr = 6 data = 0
# KERNEL: addr = b data = 6
# KERNEL: addr = f data = 2
# KERNEL: addr = a data = 0
# KERNEL: addr = 0 data = 0
# KERNEL: addr = d data = 0
# KERNEL: addr = a data = 0
# KERNEL: addr = 3 data = 2
# KERNEL: addr = 6 data = 8
*/
--------------------------------
