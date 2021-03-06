// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
  reg a, b, carryin;
  wire sum, carryout;

  // behavioralFullAdder adder (sum, carryout, a, b, carryin);
  structuralFullAdder adder (sum, carryout, a, b, carryin);

  initial begin
    $dumpfile("testFullAdder.vcd");
    $dumpvars(0,testFullAdder);

    $display(" A  B Ci | Sm Co | Expected Output");
    a=0;b=0;carryin=0; #500
    $display(" %b  %b  %b |  %b  %b |  0  0", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=0; #500
    $display(" %b  %b  %b |  %b  %b |  1  0", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=0; #500
    $display(" %b  %b  %b |  %b  %b |  1  0", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=0; #500
    $display(" %b  %b  %b |  %b  %b |  0  1", a, b, carryin, sum, carryout);
    a=0;b=0;carryin=1; #500
    $display(" %b  %b  %b |  %b  %b |  1  0", a, b, carryin, sum, carryout);
    a=1;b=0;carryin=1; #500
    $display(" %b  %b  %b |  %b  %b |  0  1", a, b, carryin, sum, carryout);
    a=0;b=1;carryin=1; #500
    $display(" %b  %b  %b |  %b  %b |  0  1", a, b, carryin, sum, carryout);
    a=1;b=1;carryin=1; #500
    $display(" %b  %b  %b |  %b  %b |  1  1", a, b, carryin, sum, carryout);

  end

endmodule
