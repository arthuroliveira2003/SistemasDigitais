// 15493899 Arthur da silva oliveira

module tb_hex_to_7seg;
    reg  [3:0] hex_in;
    wire [6:0] segments;
    
    hex_to_7seg dut(.hex(hex_in), .segments(segments));

    integer h;

    wire [6:0] conferencia [15:0];
    assign conferencia[0] = 7'b1111110;
    assign conferencia[1] = 7'b0110000;
    assign conferencia[2] = 7'b1101101;
    assign conferencia[3] = 7'b1111001;
    assign conferencia[4] = 7'b0110011;
    assign conferencia[5] = 7'b1011011;
    assign conferencia[6] = 7'b1011111;
    assign conferencia[7] = 7'b1110000;
    assign conferencia[8] = 7'b1111111;
    assign conferencia[9] = 7'b1111011;
    assign conferencia[10] = 7'b1110111;
    assign conferencia[11] = 7'b0011111;
    assign conferencia[12] = 7'b1001110;
    assign conferencia[13] = 7'b0111101;
    assign conferencia[14] = 7'b1001111;
    assign conferencia[15] = 7'b1000111;

    initial begin
    $display(" N | SEGMENTOS |    CONFERENCIA  |");
    for (h = 0; h < 16; h = h + 1) 
        begin
        hex_in = h;
        #10;
        if(segments == conferencia[h])
            $display("%2d |  %b  | %b | PASSOU", hex_in, segments, conferencia[h]);
        else
            $display("%2d | %b | %b | FALHOU", hex_in, segments, conferencia[h]);
        end
    $finish; 
    end  
   
endmodule
