module counterr (
    input clk,
    input reset,
    input enable,
    input [3:0] D,
    input [1:0] mode,
    output [3:0] Q,
    output rco,
    output load
);

// one-hot codes
parameter count = 6'b000000;
parameter minus_1 = 6'b000001;
parameter plus_1 = 6'b000010;
parameter charge = 6'b000100;
parameter high_z = 6'b001000;
parameter restart = 6'b010000;
parameter start = 6'b100000;

// regs
reg rco_atm, rco_next, load_atm, load_next;
reg [5:0] state_atm, state_next;
reg [3:0] Q_atm, Q_next;
reg aver;
// initial conditions
always @(posedge clk) begin
    if(reset) begin
        rco_atm <= 0;
        load_atm <= 0;
        state_atm <= count;
        Q_atm <= 0;
        aver <= 0;
    end
    else if(reset == 0 && enable == 0) begin
        rco_atm <= 0;
        load_atm <= 0;
        aver <= 0;
        state_atm <= high_z;
        Q_atm <= 1'bz;
    end
    else begin
        rco_atm <= rco_next;
        load_atm <= load_next;
        state_atm <= state_next;
        Q_atm <= Q_next;
    end
end

// update outputs
assign rco = rco_atm;
assign load = load_atm;
assign Q = Q_atm;

// fsm
always @(*) begin
    rco_next = rco_next;
    load_next = load_atm;
    state_next = state_atm;
    
    case(state_atm)

        start : begin                   // Case reset
            state_next = count;
        end

        count : begin                  // Case Q = Q + 3
            if(mode == 0) begin
                if(Q_atm == 4'b1111 | Q_atm == 4'b1110 | Q_atm == 4'b1101) begin
                    rco_next = 1;
                end
                else begin
                    rco_next = 0;
                end
                load_next = 0;
                state_next = count;
                Q_next = Q_atm + 3;   
            end
            else if(mode == 1) begin
                if(Q_atm == 4'b0000) begin
                    rco_next =  1;
                end
                else begin
                    rco_next = 0;
                end
                load_next = 0;
                state_next = count;
                Q_next = Q_atm - 1;   
                
            end
            else if(mode == 2) begin
                if(Q_atm == 4'b1111) begin
                    rco_next =  1;
                end
                else begin
                    rco_next =  0;
                end
                load_next = 0;
                state_next = count;
                Q_next = Q_atm + 1;   
                
            end
            else if(mode == 3) begin
                rco_next = 0;
                load_next = 1;
                state_next = count;
                Q_next = D;   
                
            end
        end

        high_z : begin
            state_next = high_z;
            Q_next = 1'bx;
            if(mode == 3) begin
                rco_next = 0;
                load_next = 1;
            end
            else begin
                rco_next = 1'bx;
                load_next = 0;
            end
        end

        default : begin
            Q_next = 0;
            state_next = count;
        end
    endcase
end

endmodule