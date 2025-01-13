***[sample]:***

```verilog
module io_test
(
inout SDA
);

// ==================================================================
// wire & reg
// ==================================================================
wire                                    ctrl                       ;
wire                                    data_out                   ;
wire                                    data_in                    ;


// ==================================================================
// assign & fixed value
// ==================================================================
// ouput
assign data_in = SDA;

assign ctrl     = 1'b0; // modify control
assign data_out = 1'b0; // modify data_out
assign SDA = (ctrl)? data_out: 1'bz;


endmodule


```

