module counter #(parameter q_p_one = 2'b00, parameter q_m_one = 2'b01, parameter q_m_three = 2'b10, parameter q_d = 2'b11)(
    input clk,
    input reset,
    input enable,
    input [3:0] D,
    input [1:0] mode,
    output reg [3:0] Q,
    output reg rco,
    output reg load
);


// initial conditions
always @(posedge clk) begin
    if(reset) begin
        rco <= 0;
        load <= 0;
        Q <= 0;
    end
    else if(reset == 0 && enable == 0) begin
        Q <= 0;
        if(mode == 3) begin
            rco <= 0;
            load <= 1;
        end
        else begin
            load <= 0;
        end
    end
    else begin
        case(mode)
            q_p_one: begin
                if(Q == 4'b1111) begin
                    rco <= 1;
                end
                else begin
                    rco <= 0;
                end
                load <= 0;
                Q <= Q  + 1;
            end
            
            q_m_one: begin
                if(Q == 4'b0000) begin
                    rco <=  1;
                end
                else begin
                    rco <= 0;
                end
                load <= 0;
                Q <= Q - 1;
            end

            q_m_three: begin
                if(Q == 4'b0000 | Q == 4'b0001 | Q == 4'b0010) begin
                    rco <= 1;
                end
                else begin
                    rco <= 0;
                end
                load <= 0;
                Q <= Q - 3;
            end

            q_d: begin
                rco <= 0;
                load <= 1;
                Q <= D; 
            end

            default: begin
                Q <= 0;
                load <= 0;
                rco <= 0;
            end
        endcase    
    end
end



endmodule