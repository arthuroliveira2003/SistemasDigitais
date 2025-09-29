// 15493899 Arthur da silva oliveira

module tb_hex_to_7seg;
    reg  [3:0] hex_in;
    wire [6:0] segments;
    
    hex_to_7seg dut(.hex(hex_in), .segments(segments));

    integer h;
    initial begin
    $display(" N | SEGMENTS");
    for (h = 0; h < 16; h = h + 1) 
        begin
        hex_in = h;
        #10;
        $display("%2d | %b", hex_in, segments);
        end
    $finish; 
    end  
   
endmodule
