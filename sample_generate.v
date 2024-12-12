module sample_generate;
    
// ==================================================================
// parameter
// ==================================================================
    parameter                           N = 10                     ;

wire                                    test                       ;

// main
genvar i;
  
generate
    for (i = 0;i < N ; i = i+1) begin : sample_mode

    end
endgenerate

endmodule
