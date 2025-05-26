// ======================================================================================
// * Engineer:     n/a
// * Module Name:
// *               valid_data_buffer
// * Project Name: n/a
// * Description:
// *               Keep data when load_data signal is high.
// ======================================================================================

module valid_data_buffer #(
    parameter DEF_VALUE   = 0,
    parameter BIT_OF_DATA = 8
) (
    clk,
    rst_n,
    load_data,
    data_in,
    data_out
);

    input                                   clk                    ;
    input                                   rst_n                  ;
    input                                   load_data              ;
    input              [(BIT_OF_DATA-1) : 0]data_in                ;
    output reg         [(BIT_OF_DATA-1) : 0]data_out               ;

// ==================================================================
// main
// ==================================================================
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_out <= DEF_VALUE;
    end
    else if (!load_data) begin // load_data: 1 => load data; load_data: 0 => no load data.
        data_out <= data_out;
    end
    else begin
        data_out <= data_in;
    end
end


endmodule
