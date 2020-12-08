module scoreboard(reset, clk, enable_, D_sb4, mode_sb4);

input clk, enable_, reset;
input [3:0] D_sb4;
input [1:0] mode_sb4;

reg [3:0] Q_sb4;
reg rco_sb4 = 0, load_sb4 = 0;

always @(posedge clk) begin
    if(reset == 0 && enable_ == 1) begin
        rco_sb4 <=  0;
        if(mode_sb4 == 2'b00) begin 
            load_sb4 <=  0;
            if(Q_sb4 == 4'b1111) begin
                rco_sb4 <=  1;
            end
            Q_sb4 <=  Q_sb4 + 1;
        end
        else if(mode_sb4 == 2'b01) begin
            load_sb4 <=  0;
            if(Q_sb4 == 4'b0000) begin
                rco_sb4 <=  1;
            end
            Q_sb4 <=  Q_sb4 - 1;
        end
        else if(mode_sb4 == 2'b10) begin
            load_sb4 <=  0;
            if(Q_sb4 == 4'b0000 || Q_sb4 == 4'b0001 || Q_sb4 == 4'b0010) begin
                rco_sb4 <=  1;
            end
            Q_sb4 <=  Q_sb4 - 3;  
        end
        else if(mode_sb4 == 2'b11) begin
            load_sb4 <=  1;
            Q_sb4 <=  D_sb4;
            rco_sb4 <=  0;
        end 
    end
    else if(reset == 1)  begin
        rco_sb4 <=  0;
        load_sb4 <=  0;
        Q_sb4 <=  4'b0000;
    end
    else if(reset == 0 && enable_ == 0) begin
        Q_sb4 <=  0;
    end
end

always @(negedge clk) begin
    rco_sb4 <= 0;
end


endmodule