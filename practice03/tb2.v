module tb2   ;
  
reg [1:0]    sel     ;
reg [3:0]    in      ;
wire         out1    ;
wire         out2    ;
wire         out3    ;

mux4to1_if dut_1 (   .out ( out1 ),
                     .in  ( in   ),
                     .sel ( sel  ));
                     
mux4tol_case dut_2 ( .out ( out2 ),
                     .in  ( in   ),
                     .sel ( sel  ));
                     
mux4to1_2to1 dut_3 ( .out ( out3 ),
                     .in  ( in   ),
                     .sel ( sel  ));

                
initial begin
    $display("==============================================="); 
    $display(" sel[1] sel[0]  in[3] in[2] in[1] in[0] out1 out2 out3");
    $display("==============================================="); 
    #(50)   {sel, in} = 6'b000000; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in[3], in[2], in[1], in[0], out1, out2, out3);
    #(50)   {sel, in} = 6'b000001; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in[3], in[2], in[1], in[0], out1, out2, out3);
    #(50)   {sel, in} = 6'b000010; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in[3], in[2], in[1], in[0], out1, out2, out3);
    #(50)   {sel, in} = 6'b000011; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in[3], in[2], in[1], in[0], out1, out2, out3);
    #(50)   {sel, in} = 6'b000100; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in[3], in[2], in[1], in[0], out1, out2, out3);
    #(50)   {sel, in} = 6'b000101; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in[3], in[2], in[1], in[0], out1, out2, out3);
    #(50)   {sel, in} = 6'b000110; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in[3], in[2], in[1], in[0], out1, out2, out3);
    #(50)   $finish     ;
end

endmodule
