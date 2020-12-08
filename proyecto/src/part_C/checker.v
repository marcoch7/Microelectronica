task checker;

input integer iteration;

repeat (iteration) @ (posedge clk) begin
  //-------------Checker_A-----------------------------
	if ({sb.Q_sb32,sb.rco_sb32,sb.load_sb32 } == {Q_A, rco_A, load_A}) begin  ////// sb.sb_gnt0 ????????????????
    //$fdisplay(log_A, "PASS_A");
  end
  else begin
    $fdisplay(log_A, "Time=%.0f Error dut_A: Q=%b, rco=%b, load=%b, scoreboard: Q_=%b, rco_=%b, load_=%b", $time, Q_A, rco_A, load_A, sb.Q_sb32, sb.rco_sb32, sb.load_sb32);
  end
end
endtask
