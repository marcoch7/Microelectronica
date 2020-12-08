module scoreboard(reset, clk, enable_, D_sb32, mode_sb32);

input clk, enable_, reset;
input [31:0] D_sb32;
input [1:0] mode_sb32;

reg [31:0] Q_sb32;
reg rco_sb32 = 0, load_sb32 = 0;

always @(posedge clk) begin
    if(reset == 0 && enable_ == 1) begin
        rco_sb32 <=  0;
        if(mode_sb32 == 2'b00) begin 
            load_sb32 <=  0;
            if(Q_sb32 == 32'hFFFFFFFF) begin
                rco_sb32 <=  1;
            end
            Q_sb32 <=  Q_sb32 + 1;
        end
        else if(mode_sb32 == 2'b01) begin
            load_sb32 <=  0;
            if(Q_sb32 == 32'h00000000) begin
                rco_sb32 <=  1;
            end
            Q_sb32 <=  Q_sb32 - 1;
        end
        else if(mode_sb32 == 2'b10) begin
            load_sb32 <=  0;
            if(Q_sb32 == 32'h00000000 || Q_sb32 == 32'h00000001 || Q_sb32 == 32'h00000002) begin
                rco_sb32 <=  1;
            end
            Q_sb32 <=  Q_sb32 - 3;  
        end
        else if(mode_sb32 == 2'b11) begin
            load_sb32 <=  1;
            Q_sb32 <=  D_sb32;
            rco_sb32 <=  0;
        end 
    end
    else if(reset == 1)  begin
        rco_sb32 <=  0;
        load_sb32 <=  0;
        Q_sb32 <=  0;
    end
    else if(reset == 0 && enable_ == 0) begin
        Q_sb32 <=  0;
    end
end

always @(negedge clk) begin
    rco_sb32 <= 0;
end


endmodule