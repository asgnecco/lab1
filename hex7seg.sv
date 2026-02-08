module hex7seg(input logic  [3:0] a,
	       output logic [6:0] y);

   /* Replace this comment and the code below it with your solution */
   always_comb begin
      case(a)
         4'd0: y = 7'b111_1110;
         4'd1: y = 7'b011_0000;
         4'd2: y = 7'b110_1101;
         4'd3: y = 7'b111_1001;
         4'd4: y = 7'b011_0011;
         4'd5: y = 7'b101_1011;
         4'd6: y = 7'b101_1111;
         4'd7: y = 7'b111_0000;
         4'd8: y = 7'b111_1111;
         4'd9: y = 7'b111_1011;
         default: y = 7'b000_0000;
      endcase
   end
   
endmodule
