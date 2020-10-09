//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk)
      reset = 0;
      enable_ = 0;
      mode_ = $urandom%4;
      D_ = $urandom%16;
    @(negedge clk)
        mode_ = $urandom%4;
        D_ = $urandom%16;
    @(negedge clk)
      enable_ = 1;
      reset = 1;
    @(negedge clk)
      reset = 0;            
  end
endtask

//Drive request to the counter
task drv_request;

input integer iteration;

  repeat (iteration) begin  
    @(negedge clk) begin
        mode_ = $urandom%4;
        D_ = $urandom%16;
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
        mode_ = $urandom%4;
        D_ = $urandom%16;
    end
    @(negedge clk) begin
    end
    @(negedge clk) begin
    end
  end
endtask

