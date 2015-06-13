//4*4键盘控制器
module key16(reset,cs,clk,ior,address,col,line,ioread_data);
input reset;		//系统复位信号
input cs;			//片选信号，接KEYCtrl
input clk;			//系统时钟
input ior;			//读信号
input[1:0] address;	//端口号
input[3:0] col;		//列线
output[3:0] line;	//行线
output[15:0] ioread_data;	//输出到系统总线上的数据（对CPU是读的I/O数据）

reg[15:0] ioread_data;		
reg[3:0] line;
reg[15:0] keyvalue;		//键值寄存器
reg[15:0] keystat;		//状态寄存器

always @(negedge clk)	//时钟的下降沿扫描键盘和输出数据到数据总线
begin
	if(reset==1)			//系统复位
	begin
		ioread_data=16'b0000000000000000;
		keyvalue=16'b0000000000000000;
		keystat=16'b0000000000000000;
		line=4'b0000;
	end
	else
	begin			//扫描
	case(line)
		4'b0000:if(col!=4'b1111) line<=4'b1110;		//当列线不全为1时开始扫描
		4'b1110:if(col!=4'b1111)	//扫描0行
			begin				//0行有键按下
			keyvalue[3:0]=col;	//得到键值
			keyvalue[7:4]=line;	
			keystat=keystat|16'b000000000000001;	//置状态寄存器
			line<=4'b0000;		//复位行线
			end
			else
				line<=4'b1101;	//如果0行无键，准备扫描1行
		4'b1101:if(col!=4'b1111)		//扫描1行
			begin
			keyvalue[3:0]=col;
			keyvalue[7:4]=line;
			keystat=keystat|16'b000000000000001;
			line<=4'b0000;
			end
			else
			line<=4'b1011;
		4'b1011:if(col!=4'b1111)		//扫描2行
			begin
			keyvalue[3:0]=col;
			keyvalue[7:4]=line;
			keystat=keystat|16'b000000000000001;
			line<=4'b0000;
			end
			else
			line<=4'b0111;
		4'b0111:if(col!=4'b1111)		//扫描3行
			begin
			keyvalue[3:0]=col;
			keyvalue[7:4]=line;
			keystat=keystat|16'b000000000000001;
			line<=4'b0000;
			end
			else
			begin line<=4'b0000;
			keystat=keystat&16'b1111111111111110;
			end
		endcase
		if((cs==1)&&(ior==1))		//读信号
			if(address==2'b00)		//读键值
				ioread_data=keyvalue;
			else if(address==2'b10)	//读状态相同时清状态
				begin ioread_data=keystat;
				keystat=keystat&16'b1111111111111110;
				end
	end
end
endmodule





	
