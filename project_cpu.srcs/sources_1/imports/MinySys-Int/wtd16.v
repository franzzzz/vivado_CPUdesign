//看门狗控制器
module wtd16(reset,clk,cs,iow,data,rst);
input       reset;      //系统复位信号
input       clk;        //系统时钟
input       cs;         //片选，接WDTCtrl
input       iow;        //写信号
input[15:0] data;       //CPU写的数据
output      rst;        //输出的复位信号

reg rst;
reg[15:0] count;        //计数器
reg[2:0]  cnt;          //小计数器，计4个时钟

always @ (negedge clk)
begin
 if(reset==1)           //系统复位
	 begin
	 count=16'h0F00;     //初始计数值
	 cnt=3'b000;
	 rst=0;               //复位信号高电平有效，这里初始化为低电平
     end
 else
 begin
 if(count==16'd0)        //已经计数到0
	 begin
	 cnt=3'b100;         //启动小计数器
	 count=16'h0F00;
	 rst=1;              //输出复位信号
    end
 else
 count=count-1'b1;            //如果计数器没有到0，则计数器减1
 if(cnt==3'b000)             //如果小计数器到0，说明复位信号已经满4个时钟周期
	 rst=0;                 //输出的复位信号变为无效    
 else
	 cnt=cnt-1'b1;          //否则，如果小计数器不为0，则小计数器减1
   if((cs==1)&&(iow==1))      //得到写信号后，看门狗全部复位
	   begin
	   count=16'h0F00;
	   cnt=3'b000;
	   rst=0;
end
end
end
endmodule