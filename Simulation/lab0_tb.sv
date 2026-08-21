`timescale 1ns/1ps

module lab0_tb;

    logic SW0;
    logic SW1;

    logic AND_OUT;
    logic OR_OUT;
    logic XOR_OUT;
    logic NAND_OUT;
    logic NOR_OUT;
	 logic XNOR_OUT;

    // Instantiate the design under test
    lab0 dut (
        .SW0(SW0),
        .SW1(SW1),
        .AND_OUT(AND_OUT),
        .OR_OUT(OR_OUT),
        .XOR_OUT(XOR_OUT),
        .NAND_OUT(NAND_OUT),
        .NOR_OUT(NOR_OUT),
		  .XNOR_OUT(XNOR_OUT)
    );

    initial begin

        $display("SW0 SW1 | AND OR XOR NAND NOR XNOR");
        $display("--------------------------------");

        // Test 1: SW0 = 0, SW1 = 0
        SW0 = 0;
        SW1 = 0;
        #10;
        $display(" %b   %b  |  %b   %b   %b    %b    %b    %b",
                 SW0, SW1, AND_OUT, OR_OUT, XOR_OUT, NAND_OUT, NOR_OUT, XNOR_OUT);

        // Test 2: SW0 = 0, SW1 = 1
        SW0 = 0;
        SW1 = 1;
        #10;
        $display(" %b   %b  |  %b   %b   %b    %b    %b    %b",
                 SW0, SW1, AND_OUT, OR_OUT, XOR_OUT, NAND_OUT, NOR_OUT, XNOR_OUT);

        // Test 3: SW0 = 1, SW1 = 0
        SW0 = 1;
        SW1 = 0;
        #10;
        $display(" %b   %b  |  %b   %b   %b    %b    %b    %b",
                 SW0, SW1, AND_OUT, OR_OUT, XOR_OUT, NAND_OUT, NOR_OUT, XNOR_OUT);

        // Test 4: SW0 = 1, SW1 = 1
        SW0 = 1;
        SW1 = 1;
        #10;
        $display(" %b   %b  |  %b   %b   %b    %b    %b    %b",
                 SW0, SW1, AND_OUT, OR_OUT, XOR_OUT, NAND_OUT, NOR_OUT, XNOR_OUT);

        $stop;

    end

endmodule
