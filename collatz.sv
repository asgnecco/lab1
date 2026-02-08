module collatz( input logic         clk,   // Clock
		input logic 	    go,    // Load value from n; start iterating
		input logic  [31:0] n,     // Start value; only read when go = 1
		output logic [31:0] dout,  // Iteration value: true after go = 1
		output logic 	    done); // True when dout reaches 1

   /* Replace this comment and the code below with your solution */
   logic [31:0] working_val;

   always_ff @(posedge clk) begin
      if (go) begin
         working_val <= n;
      end else if (working_val != 1) begin
         if (working_val[0] == 0) begin
            working_val <= working_val >> 1; // n / 2
         end else begin
            working_val <= 3 * working_val + 1; // 3n + 1
         end
      end
      dout <= working_val;
      done <= (working_val == 1);
   end
   /* Replace this comment and the code above with your solution */

endmodule
   