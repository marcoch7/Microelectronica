task checker;

input integer iteration;

repeat (iteration) @ (posedge clk) begin
  //-------------Checker_A-----------------------------
	if ({sb.Q_sb,sb.rco_sb,sb.load_sb } == {Q_e, rco_e, load_e}) begin  ////// sb.sb_gnt0 ????????????????
    //$fdisplay(log_A, "PASS_A");
  end
  else begin
    $fdisplay(log_e, "Time=%.0f Error dut_e: Q=%b, rco=%b, load=%b, scoreboard: Q_=%b, rco_=%b, load_=%b", $time, Q_e, rco_e, load_e, sb.Q_sb, sb.rco_sb, sb.load_sb);
  end

  //-------------Checker_B-----------------------------
  if ({sb.Q_sb,sb.rco_sb,sb.load_sb } == {Q_s, rco_s, load_s}) begin  ////// sb.sb_gnt0 ????????????????
    //$fdisplay(log_B, "PASS_B");
  end
  else begin
    $fdisplay(log_s, "Time=%.0f Error dut_s: Q=%b, rco=%b, load=%b, scoreboard: Q_=%b, rco_=%b, load_=%b", $time, Q_s, rco_s, load_s, sb.Q_sb, sb.rco_sb, sb.load_sb);
  end
end
endtask
