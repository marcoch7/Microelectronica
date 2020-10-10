module counter(     input enable, 
                    input clk, 
                    input reset, 
                    input [1:0] mode, 
                    input [3:0] D, 
                    output load, 
                    output rco, 
                    output [3:0] Q);
  
//SM codes with one-hot encoding 
parameter start_counter = 6'b000000;
parameter high_impedance = 6'b000001;
parameter next_counter_QP3 = 6'b000010;
parameter next_counter_QM1 = 6'b000100;
parameter next_counter_QP1 = 6'b001000;
parameter next_counter_LOAD = 6'b010000;
parameter need_reset = 6'b100000; 

//Control registers
reg state_load, state_load_next, state_rco, state_rco_next;    
reg [5:0] state_reg; 
reg [5:0] next_state_reg;
reg [3:0] count_reg;
reg [3:0] count_next_reg;

always @(posedge clk) begin 
    if (reset) begin
        state_reg <= start_counter;
        count_reg <= 0;
        state_rco <= 0;
        state_load <= 0;
    end
    else if(~reset && ~enable) begin
        state_reg <= high_impedance;
        count_reg <= 4'bz;
        state_rco <= 1'bz;
        state_load <= 1'bz;
    end
    else begin
        state_reg <= next_state_reg;
        count_reg <= count_next_reg;
        state_rco <= state_rco_next;
        state_load <= state_load_next;
    end
end

assign Q = count_reg;
assign rco = state_rco;
assign load = state_load;

always @(*)
begin 
    count_next_reg = count_reg;
    state_rco_next = state_rco;
    state_load_next = state_load;
    case (state_reg) 
        start_counter : begin 
            if(mode == 2'b00) begin
                count_next_reg = count_reg + 3;
                state_load_next= 0;
                state_rco_next = 0; 
                next_state_reg = next_counter_QP3;
            end
            else if(mode == 2'b01) begin
                count_next_reg = count_reg - 1;
                state_load_next = 0;
                state_rco_next = 0; 
                next_state_reg = next_counter_QM1;
            end
            else if(mode == 2'b10) begin
                count_next_reg = count_reg + 1;
                state_load_next = 0;
                state_rco_next = 0; 
                next_state_reg = next_counter_QP1;
            end
            else if(mode == 2'b11) begin
                count_next_reg = D;
                state_load_next = 1;
                state_rco_next = 0; 
                next_state_reg = next_counter_LOAD;
            end
        end
        next_counter_QP3 : begin
            if(mode == 2'b00) begin
                count_next_reg = count_reg + 3;
                if (count_next_reg == 4'b0000 || count_next_reg == 4'b0001 || count_next_reg == 4'b0010)
                    state_rco_next = 1;
                else
                    state_rco_next = 0;
                next_state_reg = next_counter_QP3;               
            end
            else if (mode == 2'b01) begin
                count_next_reg = count_reg - 1;
                next_state_reg = next_counter_QM1;
            end
            else if (mode == 2'b10) begin
                count_next_reg = count_reg + 1;
                next_state_reg = next_counter_QP1;
            end
            else if (mode == 2'b11) begin
                count_next_reg = D;
                state_load_next = 1;
                state_rco_next = 0;
                next_state_reg = next_counter_LOAD;
            end
        end
        next_counter_QM1 : begin          
            if(mode == 2'b01) begin
                count_next_reg = count_reg - 1;
                if (count_next_reg == 4'b1111)
                    state_rco_next = 1;
                else
                    state_rco_next = 0;  
                next_state_reg = next_counter_QM1;
            end
            else if(mode == 2'b00) begin
                count_next_reg = count_reg + 3;
                next_state_reg = next_counter_QP3;
            end
            else if(mode == 2'b10) begin
                count_next_reg = count_reg + 1;
                next_state_reg = next_counter_QP1;
            end
            else if(mode == 2'b11) begin
                count_next_reg = D;
                state_load_next = 1;
                state_rco_next = 0;
                next_state_reg = next_counter_LOAD;
            end
        end
        next_counter_QP1 : begin
            if(mode == 2'b10) begin
                count_next_reg = count_reg + 1;
                if (count_next_reg == 4'b0000)
                    state_rco_next = 1;
                else
                    state_rco_next = 0;
                next_state_reg = next_counter_QP1;
            end
            else if(mode == 2'b00) begin
                count_next_reg = count_reg + 3;
                next_state_reg = next_counter_QP3;
            end
            else if(mode == 2'b01) begin
                count_next_reg = count_reg - 1;
                next_state_reg = next_counter_QM1;
            end
            else if(mode == 2'b11) begin
                count_next_reg = D;
                state_load_next = 1;
                state_rco_next = 0;
                next_state_reg = next_counter_LOAD;
            end
        end
        next_counter_LOAD : begin
            if(mode == 2'b11) begin
                count_next_reg = D;
                next_state_reg = next_counter_LOAD;
            end
            else if(mode == 2'b00) begin
                count_next_reg = count_reg + 3;
                state_load_next = 0;
                next_state_reg = next_counter_QP3;
            end
            else if(mode == 2'b01) begin
                count_next_reg = count_reg - 1;
                state_load_next = 0;
                next_state_reg = next_counter_QM1;
            end
            else if(mode == 2'b10) begin
                count_next_reg = count_reg + 1;
                state_load_next = 0;
                next_state_reg = next_counter_QP1;
            end
        end
        high_impedance : begin
            next_state_reg = high_impedance;
            count_next_reg = 4'bx; 
            if(mode == 2'b11) begin
                state_rco_next = 0;
                state_load_next = 1;    
            end
            else begin
                state_rco_next = 1'bx;
                state_load_next = 0; 
            end

        end
        default:begin
            count_next_reg = 0;
            next_state_reg = start_counter;
        end
    endcase
end 

endmodule