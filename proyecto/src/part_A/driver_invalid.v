//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk)
      reset = 0;
      enable_ = 0;
      mode_ = 4'b1100;
    @(negedge clk)
    @(negedge clk)
    @(negedge clk)
      enable_ = 1;             
  end
endtask

//Drive request to the counter
task drv_request;

input integer iteration;

  repeat (iteration) begin  
    @(negedge clk) begin
        mode_ = 4'b1100;
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
        reset = 1;
    end
    @(negedge clk) begin
        reset = 0;
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
        reset = 0;
        enable_ = 0;
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
        enable_ = 1;
        mode_ = 2'b11;
        D_ = 1;
    end
    @(negedge clk) begin
        mode_ = 2'b00;
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
        mode_ = 4'b1111;
    end
    @(negedge clk) begin
        mode_ = 2'b00;
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
  end
endtask

