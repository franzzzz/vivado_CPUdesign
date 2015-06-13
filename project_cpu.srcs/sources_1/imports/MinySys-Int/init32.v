//复位信息的整合输出
module init32(prst,rst,clk,reset);
input prst;		//按钮复位信号
input rst;		//看门狗的复位信号
input clk;		//系统时钟
output reset;	//输出的系统复位信号

reg reset;
reg[2:0] cnt1;
reg[2:0] cnt2;
reg stat1;
reg stat2;		//reset的临时变量，用于解决两个进程不能同时修改同一信号的问题

always @ (negedge clk)
begin
stat1=0;
if(prst==1)
    begin
        if(cnt1==3'b011)
        begin
        stat1=1;
        cnt1=3'b000;
        end
        else
        cnt1=cnt1+1'b1;
    end
else
    cnt1=3'b000;
end

always @ (negedge clk)
begin
stat2=0;
if(rst==1)
    begin
        if(cnt2==3'b011)
        begin
        stat2=1;
        cnt2=3'b000;
        end
        else
        cnt2=cnt2+1'b1;
        
    end
else
    cnt2=3'b000;
end


always @ (posedge clk)
begin
if(stat1|stat2)
	reset=1;
else
	reset=0;
end

endmodule

    
    
