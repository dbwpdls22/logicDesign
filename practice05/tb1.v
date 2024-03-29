module         tb_bnb         ;

wire           block_out      ;
wire           nonblock_out   ;

reg            d              ;
reg            clk            ;


initial          clk = 1'b0   ;
always    #(100) clk = ~clk   ;


block      dut_0 (   .q    (   block_out     ),
                     .d    (   d             ),
                     .clk  (   clk           ));
                     
                   
nonblock   dut_1 (   .q    (   nonblock_out  ),
                     .d    (   d             ),
                     .clk  (   clk           )); 
                 
initial begin 
$display("==============================")   ;
$display("  d  block_out  nonblock_out  ")   ;
$display("==============================")   ;

#(50)     {d} = 1'b1;  #(50)  $display(" %b\t%b\t%b\t ",  d, block_out, nonblock_out )  ;
#(50)     {d} = 1'b0;  #(50)  $display(" %b\t%b\t%b\t ",  d, block_out, nonblock_out )  ;
#(50)     {d} = 1'b1;  #(50)  $display(" %b\t%b\t%b\t ",  d, block_out, nonblock_out )  ;
#(50)     {d} = 1'b0;  #(50)  $display(" %b\t%b\t%b\t ",  d, block_out, nonblock_out )  ;
#(50)     {d} = 1'b1;  #(50)  $display(" %b\t%b\t%b\t ",  d, block_out, nonblock_out )  ;
#(50)     {d} = 1'b0;  #(50)  $display(" %b\t%b\t%b\t ",  d, block_out, nonblock_out )  ;
#(50)     {d} = 1'b1;  #(50)  $display(" %b\t%b\t%b\t ",  d, block_out, nonblock_out )  ;
#(50)     {d} = 1'b0;  #(50)  $display(" %b\t%b\t%b\t ",  d, block_out, nonblock_out )  ;
$finish  ;
end 

endmodule