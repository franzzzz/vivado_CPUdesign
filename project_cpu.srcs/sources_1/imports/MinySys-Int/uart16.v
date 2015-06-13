//UART串行通信控制器
module uart16(reset,clk,cs,iow,ior,xtal,address,iowrite_data,ioread_data,txd,rxd);
input  reset,clk,cs,iow,ior;              //系统信号
input  xtal;                              //收发时钟信号
input  rxd;                               //串行输入端
output txd;                               //窜行输出端
input[1:0] address;                       //端口号
input[7:0] iowrite_data;                  //CPU写给UART的数据
output[15:0] ioread_data;                 //CPU读UART的数据

reg[15:0] ioread_data;         
reg txd,txd1,txd2;                        //窜行输出和它的两个临时改变
reg[4:0] cnt,rcnt,scnt;                   //收发时钟计数器、接收状态量、发送状态量
reg[4:0] rcnt2,rcnt3;                     //接收状态量的2个临时变量
reg[4:0] scnt1,scnt2,scnt3;               //发送状态量的3个临时变量
reg[15:0] status,stat1,stat2,stat3;       //状态寄存器和它的3个临时改变
reg[7:0] receivebuff,sentbuff,buff;       //输入缓冲器和输出锁存器
reg[7:0] sentbuff1,sentbuff2;             //输出锁存器的2个临时变量
reg[7:0] receivebuff1,receivebuff2;       //输入缓冲器的2个临时变量
reg baundclk;                             //波特率时钟
reg statflag1,statflag2;                  //系统时钟下降沿处理CPU读写数据等

always @ (negedge clk)
begin
 if(reset==0)
	 begin
	 if(scnt3==5'd2)
		 scnt1=5'd0;
		 if(cs==1)
			 begin
			 if(iow==1)
				 begin
				 if(address==2'b00)         //写出锁存器
					 begin
					 sentbuff1=iowrite_data;
                     stat1=stat3 & 16'b1111111111111110;    //清状态寄存器的D0
					 scnt1=5'd1;                            //发送状态到状态1，表示发送开始                        
					 end
				   end                                      //iow==1
				 else if(ior==1)
				 begin
				 if(address==2'b00)                        //读输入缓冲器
					 begin
					 ioread_data=receivebuff;
                     stat1=stat3 & 16'b1111111111111101;     //清状态寄存器的D1
					end
				 else if(address==2'b10)
				 begin
				  stat1=stat3;
                  ioread_data=stat3;                        //读状态寄存器
				  end
			     end                                        //ior==1
				 else stat1=status;
			     end                                       //cs==1
				 end
				 end

	 always @ (posedge xtal)                             //收发时钟的上升沿
	 begin
	 if(reset==1)                                       //系统复位，初始化
		 begin
         cnt=5'd0;                                      //收发时钟计数器复位
		 scnt2=5'd0;
         rcnt2=5'd0;
		 buff=8'b00000000;                              //缓冲清空
         baundclk=0;
         stat2=16'b0000000000000000;
		 txd1=1;                                           //窜行输出为高电平
		 end
	 else
       begin
	   cnt=cnt+1'b1;                                       //计数收发时钟
	   if(cnt==5'd8)                                       //到16个收发时钟的中间
		   begin
		   cnt=5'd0;                                       //收发时钟计数器复位
           baundclk=!baundclk;                            //波特率时钟相反
		 end
		 end
		 end

	 always @ (posedge baundclk)                          //波特率时钟的上升沿
	 begin
	 case(scnt)                                           //考虑发送状态
	 5'd0:begin txd2=1;sentbuff2=sentbuff;stat3=status;
	    scnt3<=5'd0;statflag1=0;end                          //发送空闲位
		5'd1:if(!((cs==1) && (iow==1)))                     //如果输出锁存器写已经结束
      begin txd2=0;sentbuff2=sentbuff;scnt3<=5'd2;         //发送起始位
	   stat3=status & 16'b1111111111111110;                 //清状态寄存器D0位
	   end
	   else txd2=txd1;
	   5'd2:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd3;end                               //发送原数据的D0位，输出锁存器右移一位
	   5'd3:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd4;end                               //发送原数据的D1位，输出锁存器右移一位
	   5'd4:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd5;end                               //发送原数据的D2位，输出锁存器右移一位
	   5'd5:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd6;end                               //发送原数据的D3位，输出锁存器右移一位
	   5'd6:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd7;end                               //发送原数据的D4位，输出锁存器右移一位
	   5'd7:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd8;end                               //发送原数据的D5位，输出锁存器右移一位
	   5'd8:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd9;end                               //发送原数据的D6位，输出锁存器右移一位
	   5'd9:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd10;end                               //发送原数据的D7位，输出锁存器右移一位
	   5'd10:begin txd2=1;stat3=status|16'b0000000000000001;
		  scnt3<=5'd0;statflag1=1;end                               //发送停止位，置位状态寄存器D0位
	  default:begin txd2=1;scnt3<=5'd0;end
	  endcase
	  case(rcnt)            //考虑接收状态
	  5'd0:if(rxd==0) rcnt3<=5'd1;else begin rcnt3<=5'd0;statflag2=0;end
	  5'd1:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd2;end
      5'd2:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd3;end
	  5'd3:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd4;end
	  5'd4:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd5;end
	  5'd5:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd6;end
	  5'd6:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd7;end
	  5'd7:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd8;end
	  5'd8:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd9;end
	  5'd9:if(rxd==1) begin stat3=status|16'b0000000000000010;
		     rcnt3<=5'd0;statflag2=1;end         //得到正确停止位后结束接收
				 else begin receivebuff=8'h0000;rcnt3<=5'd0;end       //错误的停止位
			 default rcnt3<=5'd0;
          endcase
        end

   always @ (stat1,stat2,statflag1,statflag2)       //为状态寄存器实际赋值
   begin
    if(reset==1)
		status=stat2;                              //初始化时期为状态寄存器赋值
	else
		if(cs==1)
        status=stat1;                              //CPU读写时期为状态寄存器赋值
		else if((statflag1==1)||(statflag2==1))
			status=stat3;                          //发送或接收结束时候为状态寄存器赋值
		end
	always @ (scnt1,scnt2,scnt3)             //对发送状态量实际赋值
	begin
	if(reset==1)
		scnt=scnt2;                          //复位时候对发送状态量赋值
	else
		if(scnt1==1)
			scnt=scnt1;                       //CPU写输出锁存器时候对发送状态量赋值
		else
			scnt=scnt3;                        //发送的时候对发送状态量赋值
	end
  always @ (rcnt2,rcnt3)                       //对接收状态量的实际赋值
  begin
   if(reset==1)
	   rcnt=rcnt2;                             //复位的时候
   else
	   rcnt=rcnt3;                             //接收的时候
	end

 always @ (sentbuff1,sentbuff2)               //实际写写发送锁存器
 begin
 if(reset==1)
	 sentbuff=buff;                          //复位时写发送锁存器
 else
	 if(scnt==5'd1)
		 sentbuff=sentbuff1;                 //CPU写发送锁存器
	 else
		 sentbuff=sentbuff2;                 //发送时移位后写
	end

always @ (txd1,txd2)                         //实际写发送端口
begin
if((reset==1)||(scnt3==5'd0))
   txd=txd1;                                  //复位或发送没开始时写发送端口
else
   txd=txd2;                                  //发送时写发送端口
	end
endmodule