// To demonstrate the last 2 bits of address pin to be '0'

class Bus;
  rand bit [15:0] addr;
  rand bit [31:0] data;
  
  constraint word_align{ addr [1:0] == 2'b0; } // The last two bits of addr should be '0'
  
endclass

module tb;
  Bus bus; // a bus object is created
  bit success;

  initial begin
  bus = new();
    repeat(10) begin   // object bus will be randomized 10 times
    
      //object is randomized using randomize() for (addr/data) till all the constraints are satisfied.
    success = bus.randomize();
    $display("addr : %0b data : %0b", bus.addr, bus.data);
    end
  end
endmodule

/*Output generated
----------------------------------------------------------------------
# KERNEL: addr : 1110011010001100 data : 10111001100000000001110010100101
# KERNEL: addr : 111011001000100  data : 1001111000001011001001011010100
# KERNEL: addr : 11101110111100   data : 1110100100100011111100110101101
# KERNEL: addr : 1110101101110100 data : 11010001100100000010111101011000
# KERNEL: addr : 1001100001100    data : 100001111110000011011011011000
# KERNEL: addr : 110111000010100  data : 1111001001011000110110010111010
# KERNEL: addr : 1011110100010100 data : 10100010011111101011011001111101
# KERNEL: addr : 1111000100011000 data : 11110111110001110001010100100100
# KERNEL: addr : 111001111110000  data : 1010110010110110111110110011001
# KERNEL: addr : 111000010100000  data : 1111001000001110111110111001011
------------------------------------------------------------------------
*/
