**Array sample**

* 宣告: 先暫存器大小,再個數(index).
* 給值: 先個數(index),再暫存器大小.

```verilog
// register width: 16 bits
// number of register: 3
reg [15:0] write_data [2:0];
reg [7:0] fifo_data;

//
always @(*) begin
  case(state)
    ONE: fifo_data = write_data[1][7:0];
    TWO: fifo_data = write_data[1][15:0];
    default: fifo_data = write_data[0][7:0];
  endcase
end
```
