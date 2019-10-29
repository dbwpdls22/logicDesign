module tb2   ;
  
reg     sel     ;
reg     in0     ;
reg     in1     ;

wire    out1    ;
wire    out2    ;
wire    out3    ;

mux2to1_cond dut_1(  .out ( out1  ),
                     .in0( in0   ),
                     .in1( in1   ), 
                     .sel( sel   )); 

mux2to1_if dut_2 (  .out ( out2  ),
                    .in0( in0   ),
                    .in1( in1   ), 
                    .sel( sel   )); 
mux2tol_case dut_3( .out ( out3  ),
                    .in0( in0   ),
                    .in1( in1   ), 
                    .sel( sel   ));
                
initial begin
    $display("==============================================="); 
    $display(" in0  in1  sel  out1 out2 out3 ");
    $display("==============================================="); 
    #(50)   {sel, in1, in0} = 3'b000; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
    #(50)   {sel, in1, in0} = 3'b001; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
    #(50)   {sel, in1, in0} = 3'b010; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
    #(50)   {sel, in1, in0} = 3'b011; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
    #(50)   {sel, in1, in0} = 3'b100; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
    #(50)   {sel, in1, in0} = 3'b101; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
    #(50)   {sel, in1, in0} = 3'b110; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
    #(50)   {sel, in1, in0} = 3'b111; #(50) $display(" %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out1, out2, out3);
    #(50)   $finish     ;
end

endmodule