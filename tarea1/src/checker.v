task checker;

input integer iteration;

repeat (iteration) @ (posedge clk) begin
  //-------------Checker_A-----------------------------
	if ({sb.Q_sb,sb.rco_sb,sb.load_sb } == {Q_A, rco_A, load_A}) begin  ////// sb.sb_gnt0 ????????????????
    //$fdisplay(log_A, "PASS_A");
  end
  else begin
    $fdisplay(log_A, "Time=%.0f Error dut_A: Q=%b, rco=%b, load=%b, scoreboard: Q_=%b, rco_=%b, load_=%b", $time, Q_A, rco_A, load_A, sb.Q_sb, sb.rco_sb, sb.load_sb);
  end

  //-------------Checker_B-----------------------------
  if ({sb.Q_sb,sb.rco_sb,sb.load_sb } == {Q_B, rco_B, load_B}) begin  ////// sb.sb_gnt0 ????????????????
    //$fdisplay(log_B, "PASS_B");
  end
  else begin
    $fdisplay(log_B, "Time=%.0f Error dut_B: Q=%b, rco=%b, load=%b, scoreboard: Q_=%b, rco_=%b, load_=%b", $time, Q_B, rco_B, load_B, sb.Q_sb, sb.rco_sb, sb.load_sb);
  end

  //-------------Checker_C-----------------------------
  if ({sb.Q_sb,sb.rco_sb,sb.load_sb } == {Q_C, rco_C, load_C}) begin  ////// sb.sb_gnt0 ????????????????
    //$fdisplay(log_C, "PASS_C");
  end
  else begin
    $fdisplay(log_C, "Time=%.0f Error dut_C: Q=%b, rco=%b, load=%b, scoreboard: Q_=%b, rco_=%b, load_=%b", $time, Q_C, rco_C, load_C, sb.Q_sb, sb.rco_sb, sb.load_sb);
  end
end
endtask
