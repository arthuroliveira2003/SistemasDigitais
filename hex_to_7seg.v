// 15493899 Arthur da silva oliveira

module hex_to_7seg (
    input  [3:0] hex,
    output [6:0] segments  // abcdefg
);

wire A, B, C, D;

assign A = hex[3];
assign B = hex[2];
assign C = hex[1];
assign D = hex[0];

assign segments[0] = (~A && B && ~C || A && ~B || A && D || ~B && C || C && ~D);
assign segments[1] = (~A && B && ~C || A && ~B || A && C || B && ~D || ~C && ~D);
assign segments[2] = (A && B || A && C || ~B && ~D || C && ~D);
assign segments[3] = (~A && ~B && ~D || A && ~C || ~B && C && D || B && ~C && D || B && C && ~D);
assign segments[4] = (~A && B || A && ~B || ~C && D || ~A && ~B && ~C || ~A && ~B && D);
assign segments[5] = (~A && ~C  && ~D || ~A && C && D || A && ~C && D || ~B && ~D || ~B && ~C);
assign segments[6] = (C && ~A || ~D && ~B || ~C && ~B && A || B && C || B && D && ~A || A && ~D);

endmodule