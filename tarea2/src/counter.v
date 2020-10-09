module counter (
    input clk,
    input reset,
    input enable,
    input [3:0] i_D,
    input [1:0] mode,
    output reg [3:0] o_Q,
    output reg rco,
    output reg load
);

// mode params
parameter p_3 = 2'b00;
parameter m_1 = 2'b01;
parameter p_1 = 2'b10;
parameter charge = 2'b11;

always @(posedge clk) begin
    if (reset == 1) begin
        rco <= 0;
        load <= 0;
        o_Q <= 0;
    end
    else if (reset == 0 && enable == 0) begin
        rco <= 0;
        load <= 0;
        o_Q <= 1'bz;
    end
    else if (reset == 0 && enable == 1) begin
        rco <= 0;
        case(mode)
            p_3 : begin
                load <= 0;
                o_Q <= o_Q + 3;
                if(o_Q == 4'b1111 | o_Q == 4'b1110 | o_Q == 4'b1101) begin
                    rco <=  1;
                end
            end
            m_1 : begin
                load <= 0;
                if(o_Q == 4'b0000) begin
                    rco <=  1;
                end
                o_Q <= o_Q - 1;
            end
            p_1 : begin
                load <= 0;          
                if(o_Q == 4'b1111) begin
                    rco <=  1;
                end
                o_Q <= o_Q + 1;
            end
            charge : begin
                load <= 1;
                o_Q <= i_D;
                rco <= 0;
            end
            default : begin
                o_Q <= i_D;
                rco <= 1;
            end
        endcase
    end
end
endmodule