module clk (clock);

output clock;
reg clock;

initial begin
clock = 0;
end

always begin
 #100 clock = !clock;
end

endmodule
