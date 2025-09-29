module primo(N, F);
    input [3:0] N;
    output reg F;
    wire A, B, C, D;

assign {D, C, B, A} = N;
always @(*) begin
  F = (~A && ~B && C) || (~A && C && D) || (B && ~C && D) || (B && C && ~D);
end
endmodule