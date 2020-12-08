module scoreboard(reset, clk, enable_, D_, mode_);

input clk, enable_, reset;
input [3:0] D_;
input [1:0] mode_;

reg [3:0] Q_sb;
reg rco_sb = 0, load_sb = 0;

always @(posedge clk) begin
    if(reset == 0 && enable_ == 1) begin
        rco_sb <=  0;
        if(mode_ == 2'b00) begin 
            load_sb <=  0;
            if(Q_sb == 4'b1111) begin
                rco_sb <=  1;
            end
            Q_sb <=  Q_sb + 1;
        end
        else if(mode_ == 2'b01) begin
            load_sb <=  0;
            if(Q_sb == 4'b0000) begin
                rco_sb <=  1;
            end
            Q_sb <=  Q_sb - 1;
        end
        else if(mode_ == 2'b10) begin
            load_sb <=  0;
            Q_sb <=  Q_sb + 3;   
            if(Q_sb == 4'b1111 | Q_sb == 4'b1110 | Q_sb == 4'b1101) begin
                rco_sb <=  1;
            end
            
        end
        else if(mode_ == 2'b11) begin
            load_sb <=  1;
            Q_sb <=  D_;
            rco_sb <=  0;
        end 
    end
    else if(reset == 1)  begin
        rco_sb <=  0;
        load_sb <=  0;
        Q_sb <=  4'b0000;
    end
    else if(reset == 0 && enable_ == 0) begin
        Q_sb <=  0;
    end
end


endmodule