//4位7段LED数码管控制器
module led16(reset,data,cs,iow,led0,led1,led2,led3);
input reset;			//系统复位信号
input[15:0] data;		//系统总线中的数据线
input cs;				//片选信号，接LEDCtrl
input iow;				//I/O写信号
output[6:0] led0;		//led0输出信号
output[6:0] led1;		//led1输出信号
output[6:0] led2;		//led2输出信号
output[6:0] led3;		//led3输出信号

reg[6:0] led0,led1,led2,led3;
reg[15:0] rdata;		//数据锁存器

always@(posedge cs,posedge reset)
begin
	if(reset ==1)
		rdata=16'h0000;
	else if(cs==1&&iow==1)
		rdata=data;		//锁存数据
end
always@(rdata)
begin
case(rdata[3:0])
	4'b0000:led0=7'b1000000;	//0
	4'b0001:led0=7'b1111001;	//1
	4'b0010:led0=7'b0100100;	//2
	4'b0011:led0=7'b0110000;	//3
	4'b0100:led0=7'b0011001;	//4
	4'b0101:led0=7'b0010010;	//5
	4'b0110:led0=7'b0000010;	//6
	4'b0111:led0=7'b1111000;	//7
	4'b1000:led0=7'b0000000;	//8
	4'b1001:led0=7'b0010000;	//9
	4'b1010:led0=7'b0001000;	//a
	4'b1011:led0=7'b0000011;	//b
	4'b1100:led0=7'b1000110;	//c
	4'b1101:led0=7'b0100001;	//d
	4'b1110:led0=7'b0000110;	//e
	4'b1111:led0=7'b0001110;	//f
	default:led0=7'b1111111;
endcase
case(rdata[7:4])				//led1的赋值，请读者自行将代码写完整
	4'b0000:led1=7'b1000000;	//0
	4'b0001:led1=7'b1111001;	//1
	4'b0010:led1=7'b0100100;	//2
	4'b0011:led1=7'b0110000;	//3
	4'b0100:led1=7'b0011001;	//4
	4'b0101:led1=7'b0010010;	//5
	4'b0110:led1=7'b0000010;	//6
	4'b0111:led1=7'b1111000;	//7
	4'b1000:led1=7'b0000000;	//8
	4'b1001:led1=7'b0010000;	//9
	4'b1010:led1=7'b0001000;	//a
	4'b1011:led1=7'b0000011;	//b
	4'b1100:led1=7'b1000110;	//c
	4'b1101:led1=7'b0100001;	//d
	4'b1110:led1=7'b0000110;	//e
	4'b1111:led1=7'b0001110;	//f
	default:led1=7'b1111111;
endcase
case(rdata[11:8])				//led2的赋值，请读者自行将代码写完整
	4'b0000:led2=7'b1000000;	//0
	4'b0001:led2=7'b1111001;	//1
	4'b0010:led2=7'b0100100;	//2
	4'b0011:led2=7'b0110000;	//3
	4'b0100:led2=7'b0011001;	//4
	4'b0101:led2=7'b0010010;	//5
	4'b0110:led2=7'b0000010;	//6
	4'b0111:led2=7'b1111000;	//7
	4'b1000:led2=7'b0000000;	//8
	4'b1001:led2=7'b0010000;	//9
	4'b1010:led2=7'b0001000;	//a
	4'b1011:led2=7'b0000011;	//b
	4'b1100:led2=7'b1000110;	//c
	4'b1101:led2=7'b0100001;	//d
	4'b1110:led2=7'b0000110;	//e
	4'b1111:led2=7'b0001110;	//f
	default:led2=7'b1111111;
endcase
case(rdata[15:12])				//led3的赋值，请读者自行将代码写完整
	4'b0000:led3=7'b1000000;	//0
	4'b0001:led3=7'b1111001;	//1
	4'b0010:led3=7'b0100100;	//2
	4'b0011:led3=7'b0110000;	//3
	4'b0100:led3=7'b0011001;	//4
	4'b0101:led3=7'b0010010;	//5
	4'b0110:led3=7'b0000010;	//6
	4'b0111:led3=7'b1111000;	//7
	4'b1000:led3=7'b0000000;	//8
	4'b1001:led3=7'b0010000;	//9
	4'b1010:led3=7'b0001000;	//a
	4'b1011:led3=7'b0000011;	//b
	4'b1100:led3=7'b1000110;	//c
	4'b1101:led3=7'b0100001;	//d
	4'b1110:led3=7'b0000110;	//e
	4'b1111:led3=7'b0001110;	//f
	default:led3=7'b1111111;
endcase
end 
endmodule