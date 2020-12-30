`timescale 1ns / 1ps


module mux_4_to_1_test;

  // Inputs
  reg [3:0] DIN;
  reg [1:0] SEL;

  // Outputs
  wire DOUT;

  // Creating two counter variables for both loop
  integer count;
  integer count2;

  // Unit Under Test (UUT) to assign inputs and outputs
  mux_4_to_1 uut
  (
    .DIN(DIN),
    .SEL(SEL),
    .DOUT(DOUT)
  );

  initial begin

    // Initialize Inputs
    DIN = 0;
    SEL = 0;

    // Initialize counter variables
    count = 0;
    count2 = 0;

    // Loops over the possible combinations of SEL and resets the value for DIN
    for (count = 0; count < 4; count = count + 1) begin
      SEL = count;
      DIN = 0;

      // Loops over the possible combinations of DIN for each SEL value
      for (count2 = 0; count2 <= 16; count2 = count2 + 1) begin
        #5 DIN = count2;
      end
    end
  end

  initial #340 $finish; // The test will operate for a total interval of 340 nanoseconds
endmodule
