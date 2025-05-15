module sr(input s,r, clk, output reg q,qn);
always@(posedge clk) begin 
case ({s,r}) 
2'b01: {q,qn}  <=2'b01;
2'b10: {q,qn} <=2'b10;
2'b00: {q,qn} <={q,qn};
2'b11: {q,qn} <=2'bxx;
endcase
end
endmodule

module sr(input s,r, clk, output reg q,output qn);
assign qn=~q;
always@(posedge clk) begin 
    case ({s,r})
 2'b00: q <= q;    
            2'b01: q <= 1'b0; 
            2'b10: q <= 1'b1; 
            2'b11: q <= 1'bx; 
    endcase
end
 endmodule

module sr(input s,r ,clk, output reg q, output wire qn);
assign qn=~q;
always@(posedge clk)begin
if (s==0 && r==0)
q<=q;
else if(s==0 && r==1)
q<=1'b0;
else if(s==1 && r==0)
q<=1'b1;
else// (s==1 && r==1)
q<=1'bx;
end
 endmodule