//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk)
      reset = 0;
      enable_ = 0;
      mode_ = 2'b00;
      D_ = 100;
    @(negedge clk)
    @(negedge clk)
      D_ = 25;
    @(negedge clk)
      enable_ = 1;
      D_ = 36;                
  end
endtask

//Drive request to the counter
task drv_request;

input integer iteration;

  repeat (iteration) begin  
    @(negedge clk) begin
        mode_ = 2'b00;
        D_ = 4213;
    end
    @(negedge clk) begin
        D_ = 554;
    end
    @(negedge clk) begin
        reset = 1;
        D_ = 66;
    end
    @(negedge clk) begin
        reset = 0;
        D_ = 777;
    end
    @(negedge clk) begin
        D_ = 8123;
    end
    @(negedge clk) begin
        D_ = 951;
    end
    @(negedge clk) begin
        
        D_ = 1023;
    end
    @(negedge clk) begin
       
        D_ = 1331;
    end
    @(negedge clk) begin
        D_ = 11122;
    end
    @(negedge clk) begin
        mode_ = 2'b00;
        D_ = 1323;
    end
    @(negedge clk) begin
        D_ = 1466;
    end
    @(negedge clk) begin
        D_ = 1554;
    end
    @(negedge clk) begin
        D_ = 15;
    end
    @(negedge clk) begin
        D_ = 15;
    end
    @(negedge clk) begin
        D_ = 15;
    end
    @(negedge clk) begin
        mode_ = 2'b11;
        D_ = 13;
    end
    @(negedge clk) begin
        
    end
    @(negedge clk) begin
        mode_ = 2'b00;
        D_ = 13;
    end
    @(negedge clk) begin
        D_ = 13;
    end
    @(negedge clk) begin
        D_ = 13;
    end
  end
endtask

