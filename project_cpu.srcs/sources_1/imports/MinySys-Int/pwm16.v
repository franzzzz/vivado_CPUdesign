//PWM控制器
module pwm16(reset,address,data,cs,clk,iow,pwm);
input         reset;      //系统复位
input[2:0]    address;    //端口号
input[15:0]   data;       //CPU写到PWM控制器的数据
input         cs;         //片选，接PWMCtrl
input         clk;        //系统时钟
input         iow;        //写信号
output        pwm;        //输出方波信号

reg  pwm;
reg[15:0]  maxcount;      //最大值寄存器
reg[15:0]  midcount;      //对比值寄存器
reg[15:0]  flag;          //使能寄存器
reg[15:0]  rubbish;       //错误端口号的data处理
reg[15:0]  counter;       //计数器

always @ (negedge clk)
begin
 if(reset==1)              //系统复位，初始化寄存器
	 begin
	 maxcount=16'b1111111111111111;
	 midcount=16'b0111111111111111;
	 flag=16'b0000000000000000;
	 pwm=1;
     counter=16'b0000000000000000;
    end
 else if(cs==1 && iow==1)       //CPU写PWM控制器
 begin
  case(address[2:0])
	3'b000:maxcount=data;      //写最大值寄存器
    3'b010:midcount=data;      //写对比值寄存器
	3'b100:flag[0]=data[0];    //写使能寄存器
	default:rubbish=data;
  endcase
end
 else                         //计数
 if(flag[0])                  //在允许输出的情况下做
	 begin
	 if(counter==maxcount)    //计数值到最大值
		 begin
		 counter=16'b0000000000000000;
		 pwm=1;
	 end
	 else
	 begin
	 counter=counter+1'b1;    //没到最大值，计数器加1
	 if(counter>midcount)
		 pwm=0;              //计数值大于对比值，输出低电平
	 else
		 pwm=1;              //计数值小于等于对比值，输出高电平
	 end
    end
 else
 pwm=1;                     //如果不允许输出，则输出始终为高电平
	end
 endmodule
