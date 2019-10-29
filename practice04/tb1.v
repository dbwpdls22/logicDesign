module tb_dec3to8    ;
  
wire   [7:0]  shift_out ;
wire   [7:0]  case_out  ; 
reg    [2:0]  in        ;
reg           en        ;



dec3to8_shift    dut0( .out  (  shift_out  ),
                       .in   (     in      ),
                       .en   (     en      ) );
                       
                       
dec3to8_case     dut1( .out  (  case_out   ),
                       .in   (     in      ),
                       .en   (     en      ) );
                       
initial begin
$display("======================================");
$display(" en in[2] in[1] in[0] shift_out case_out ");
$display("======================================");
#(50)    {en, in} = 4'b0000; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b0001; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b0010; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b0011; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b0100; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b0101; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b0110; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b0111; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b1000; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b1001; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b1010; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b1011; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b1100; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b1101; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b1110; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
#(50)    {en, in} = 4'b1111; #(50)   $display( " %b\t%b\t%b\t%b\t", en, in, shift_out, case_out);
$finish;
end

endmodule