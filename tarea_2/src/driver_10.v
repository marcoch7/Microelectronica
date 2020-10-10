//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk)
      reset = 0;
      enable_ = 0;
      mode_ = 2'b10;
      D_ = 1;
    @(negedge clk)
    @(negedge clk)
      D_ = 2;
    @(negedge clk)
      enable_ = 1;
      D_ = 3;                
  end
endtask

//Drive request to the counter
task drv_request;

input integer iteration;

  repeat (iteration) begin  
    @(negedge clk) begin
        mode_ = 2'b10;
        D_ = 4;
    end
    @(negedge clk) begin
        D_ = 5;
    end
    @(negedge clk) begin
        reset = 1;
        D_ = 6;
    end
    @(negedge clk) begin
        reset = 0;
        D_ = 7;
    end
    @(negedge clk) begin
        D_ = 8;
    end
    @(negedge clk) begin
        D_ = 9;
    end
    @(negedge clk) begin
        
        D_ = 10;
    end
    @(negedge clk) begin
       
        D_ = 11;
    end
    @(negedge clk) begin
        D_ = 12;
    end
    @(negedge clk) begin
        mode_ = 2'b10;
        D_ = 13;
    end
    @(negedge clk) begin
        D_ = 14;
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
        D_ = 15;
    end
    @(negedge clk) begin
        mode_ = 2'b11;
        D_ = 13;
    end
    @(negedge clk) begin
        
    end
    @(negedge clk) begin
        mode_ = 2'b10;
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

