//定时/计数器的设计
module ctc16(reset,clk,cs,iow,ior,pulse0,pulse1,address,iowrite_data,ioread_data,cout0,cout1);
input        reset;        //系统复位信号
input        clk;          //系统时钟
input        cs;           //片选，接CTCCtrl
input        iow;          //写信号
input        ior;          //读信号
input        pulse0;       //接CT0的外部脉冲
input        pulse1;       //接CT1的外部脉冲
input[3:0]   address;      //端口号
input[15:0]  iowrite_data; //写到CTC模块的数据
output[15:0]  ioread_data;  //读出的数据
output       cout0;        //CNT0的输出引脚
output       cout1;        //CNT1的输出引脚

reg cout0,cout1;
reg[15:0] ioread_data;
reg[15:0] status1,status2;  //CNT0和CNT1的状态寄存器
reg[15:0] stat11,stat12;	//stat11和stat12是status1的两个临时寄存器（解决了两个进程对同一个寄存器的赋值问题）
reg[15:0] stat21,stat22;	//stat21和stat22是status2的两个临时寄存器
reg[15:0] mode1,mode2;      //CNT0和CNT1的方式寄存器
reg[15:0] count1,count2;    //CNT0和CNT1的减1计数器
reg[15:0] cnt11,cnt12;		//cnt11和cnt12是count1的两个临时计数器（解决了两个进程对同一个计数器的赋值问题）
reg[15:0] cnt21,cnt22;		//cnt21和cnt22是count1的两个临时计数器
reg[15:0] initcnt1,initcnt2; //CNT0和CNT1的初始值寄存器
reg[15:0] rubbish;

always @(negedge clk)
begin
if(reset==1)          //初始化
   begin
   cout0=1;
   cout1=1;
   initcnt1=16'b0000000000000000;
   initcnt2=16'b0000000000000000;
   cnt11=16'b0000000000000000;
   cnt21=16'b0000000000000000;
   stat11=16'b0000000000000000;
   stat21=16'b0000000000000000;
   end
else                 //(reset==0)
begin
if(cs==1)
   begin
   if(iow==1)    //CPU向定时器/计数器写
   begin
   case(address)       //根据端口号分别写方式寄存器和初始值寄存器
   4'b0000:begin mode1=iowrite_data;stat11=status1 & 16'h7FFC;end
   4'b0010:begin mode2=iowrite_data;stat21=status2 & 16'h7FFC;end
   4'b0100:begin initcnt1=iowrite_data;cnt11=iowrite_data;stat11=status1 | 16'b1000000000000000;end
   4'b0110:begin initcnt2=iowrite_data;cnt21=iowrite_data;stat21=status2 | 16'b1000000000000000;end
   default:rubbish=iowrite_data;
   endcase
   end            
   else if(ior==1)  //CPU读定时器/计数器的内容
   begin
   case(address)        //根据端口号分别读状态寄存器和当前计数器
   4'b0000:begin ioread_data=status1;stat11=status1 & 16'hFFFC;end
   4'b0010:begin ioread_data=status2;stat21=status2 & 16'hFFFC;end
   4'b0100:begin ioread_data=count1;end
   4'b0110:begin ioread_data=count2;end
   default:ioread_data=16'bzzzzzzzzzzzzzzzz;
   endcase
   end       //ior==1
   end        //cs==1
   begin      //CNT0做定时
   if(status1[15]==1'b0)     //计数值无效，保持输出为高电平
	   cout0=1;
   if((status1[15]==1)&&(mode1[0]==0))
	   begin
	   if(count1==1)        //定时计数到1，输出低电平
		   begin
		   cout0=0;
		   stat11=status1|16'b0000000000000001;     //置状态寄存器为定时到
	   if(mode1[1]==1)                         //如果重复定时，重装初始值
		   cnt11=initcnt1;
	   else
		   begin                             //非重复定时，设置状态寄存器为计数器无效
		   stat11=stat11 & 16'b0111111111111111;
		   cnt11=0;
		   end
		end
	   else                               //count!=1
	   begin                              //如果定时计数没有到1
		cout0=1;                          //保持输出为高电平
		cnt11=count1-1'b1;                //计数值减1
			stat11=status1|16'b1000000000000000;   //状态寄存器保持计数值有效
			end
			end
			if(status2[15]==1'b0)              //以下是CNT1的定时计数，原理和CNT0一样
			   cout1=1;
			if((status2[15]==1)&&(mode2[0]==0))
			begin
			if(count2==1)
			  begin
			  cout1=0;
			   stat21=status2|16'b0000000000000001;
			 if(mode2[1]==1)
			   cnt21=initcnt2;
			   else
			   begin
				stat21=stat21 & 16'b0111111111111111;
				cnt21=0;
				end
			   end
			else         //count2!=1
			begin
			 cout1=1;
			cnt21=count2-1'b1;
			stat21=status2|16'b1000000000000000;
			end
			end
			end          //cs==0
			end          //(reset==0)
			end

		always @(negedge pulse0)  //脉冲0计数
		begin
		if((status1[15]==1)&&(mode1[0]==1))
			begin
			if(count1==0)            //计数到0
				begin
				  stat12=status1|16'b0000000000000001;     //置状态寄存器计数到标志
				  if(mode1[1]==1)                        //如果是重复计数
					cnt12=initcnt1;                      //重装初始值
				  else
					  begin                             //如果不是重复计数，则置标志寄存器为计数值无效状态                         
					  stat12=stat12 & 16'b0111111111111111; 
					  cnt12=0;
					end
				   end
			else                                       //count1!=0
			 begin                                     //计数未到0，则计数器减1，保持状态寄存器为计数值有效状态
			  cnt12=count1-1'b1;
			  stat12=status1|16'b1000000000000000;
			  end
		end
			  end

		  always @(negedge pulse1)
		  begin
		  //请读者根据上一进程，完成本进程的设计
		  if((status2[15]==1)&&(mode2[0]==1))
			begin
			if(count2==0)            //计数到0
				begin
				  stat22=status2|16'b0000000000000001;     //置状态寄存器计数到标志
				  if(mode2[1]==1)                        //如果是重复计数
					cnt22=initcnt2;                      //重装初始值
				  else
					  begin                             //如果不是重复计数，则置标志寄存器为计数值无效状态                         
					  stat22=stat22 & 16'b0111111111111111; 
					  cnt22=0;
					end
				   end
			else                                       //count1!=0
			 begin                                     //计数未到0，则计数器减1，保持状态寄存器为计数值有效状态
			  cnt22=count2-1'b1;
			  stat22=status2|16'b1000000000000000;
			  end
			  end
		  end

		  always @ (stat11,stat12)     //将定时和计数两个进程对状态寄存器的赋值真正付给该寄存器
		  begin
		  if(reset==0)
			  begin
			  if((cs==1)&&(((iow==1) && ((address==4'b0100)||(address==4'b0000))) ||((ior==1) && (address==4'b0000))))
				  status1=stat11;                    //对定时/计数器读写时候对状态寄存器的赋值付给该寄存器
			  else
				  if(mode1[0]==1)
					  status1=stat12;               //计数的时候对状态寄存器的赋值付给该寄存器
				  else
					  status1=stat11;               //定时的时候对状态寄存器的赋值付给该寄存器
				end
			end
			 
		  always@(stat21,stat22)
		  begin
		  //请读者根据上一进程，完成本进程的设计
		  if(reset==0)
			  begin
			  if((cs==1)&&(((iow==1) && ((address==4'b0110)||(address==4'b0010))) ||((ior==1) && (address==4'b0010))))
				  status2=stat21;                    //对定时/计数器读写时候对状态寄存器的赋值付给该寄存器
			  else
				  if(mode2[0]==1)
					  status2=stat22;               //计数的时候对状态寄存器的赋值付给该寄存器
				  else
					  status2=stat21;               //定时的时候对状态寄存器的赋值付给该寄存器
				end
		  end

		  always@(cnt11,cnt12)   //将定时和计数两个进程对减1计数器的赋值真正付给该寄存器
		  begin
		  if(reset==0)
			  begin
			  if((cs==1)&&(iow==1)&&(address==4'b0100))
				  count1=cnt11;           //对定时/计数器写时候对减1计数器的赋值付给该寄存器
			  else
			   if(mode1[0]==1)
				   count1=cnt12;          //计数时候对减1计数器的赋值付给该寄存器
			   else
				   count1=cnt11;          //定时时候对减1计数器的赋值付给该寄存器
				end
			end

		   always @ (cnt21,cnt22)
		   begin
		   //请读者根据上一进程，完成本进程的设计
		   if(reset==0)
			  begin
			  if((cs==1)&&(iow==1)&&(address==4'b0110))
				  count2=cnt21;           //对定时/计数器写时候对减1计数器的赋值付给该寄存器
			  else
			   if(mode2[0]==1)
				   count2=cnt22;          //计数时候对减1计数器的赋值付给该寄存器
			   else
				   count2=cnt21;          //定时时候对减1计数器的赋值付给该寄存器
				end
		   end
		   endmodule