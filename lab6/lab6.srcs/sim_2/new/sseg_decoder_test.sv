module sseg_decoder_test();
    reg [3:0] num_t;
    wire [6:0] sseg_t;
    
    integer i;
    
    sseg_decoder SD(.num(num_t), .sseg(sseg_t));
    
    initial begin
        for(i = 0; i <= 8'hF; i= i+1) begin
            num_t = i;
            #10;
         end
         $finish;
         end
    
    
endmodule