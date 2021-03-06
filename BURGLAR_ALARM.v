Verilog Code:-
module BA(SYS,WS,MD, ALARM);

input SYS,WS,MD;
output reg ALARM;

always@(SYS,WS,MD)
  begin
    if(SYS==1'b1)
    begin
         if(WS==1'b1|MD==1'b1)
              assign ALARM=1'b1;
         else 
              assign ALARM=1'b0;
    end
    else
        assign ALARM=1'b0;
  end
endmodule  
