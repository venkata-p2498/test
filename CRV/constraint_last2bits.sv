// To demonstrate the last 2 bits of address pin to be '0'

class Bus;
  rand bit [15:0] addr;
  rand bit [31:0] data;
  
  constraint word_align{ addr [1:0] == 2'b0; }
  
endclass

module tb;
  Bus bus; // a bus object is created
  bit success;

  initial begin
  bus = new();
    repeat(50) begin   // object bus will be randomized 50 times
    success = bus.randomize();
    $display("addr : %0b data : %0b", bus.addr, bus.data);
    end
  end
endmodule

