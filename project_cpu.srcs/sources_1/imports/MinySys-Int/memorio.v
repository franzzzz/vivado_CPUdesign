//总线控制模块-1：MEMorIO模块，完成地址译码、数据转换和输入数据选择器
module memorio(caddress,address,memread,memwrite,ioread,iowrite,mread_data,ioread_data,wdata,rdata,write_data,LEDCtrl,KEYCtrl,CTCCtrl,PWMCtrl,UARTCtrl,WDTCtrl);
input[15:0] caddress;	//从执行单元来的alu_resullt[15:0]
input memread;			//从控制单元来的存储器读控制信号
input memwrite;			//从控制单元来的存储器写控制信号
input ioread;			//从控制单元来的I/O读控制信号
input iowrite;			//从控制单元来的I/O写控制信号
input[31:0] mread_data;	//从存储器来的数据
input[15:0] ioread_data;	//从I/O端口来的数据
input[31:0] wdata;			//从译码单元来的输出到存储器或I/O端口中去的数据
output[31:0] rdata;			//从存储器或I/O端口读入的准备写到寄存器中去的数据
output[31:0] write_data;	//准备写到存储器或I/O端口的输出数据
output[11:0] address;		//总线上的地址（去存储器，低4位做访问端口的端口号）
output LEDCtrl;			//LED(数码管)接口部件的片选cs
output KEYCtrl;			//key（键盘）接口部件的片选cs
output CTCCtrl;			//counter(计数器)接口不见的片选cs
output PWMCtrl;			//pwm（脉宽调制）接口部件的片选cs
output UARTCtrl;		//UART（异步串行通信）接口部件的片选cs
output WDTCtrl;			//watch dog（看门狗）接口部件的片选cs

reg[31:0] write_data;
wire iorw;

assign address=caddress[11:0];
assign rdata=(memread==1)? mread_data:{16'h0000,ioread_data[15:0]};
assign iorw=(iowrite||ioread);

assign LEDCtrl = ((iorw==1)&&(caddress[15:4]==12'hff0))?1'b1:1'b0;
assign KEYCtrl = ((iorw==1)&&(caddress[15:4]==12'hff1))?1'b1:1'b0;
assign CTCCtrl = ((iorw==1)&&(caddress[15:4]==12'hff2))?1'b1:1'b0;
assign PWMCtrl = ((iorw==1)&&(caddress[15:4]==12'hff3))?1'b1:1'b0;
assign UARTCtrl = ((iorw==1)&&(caddress[15:4]==12'hff4))?1'b1:1'b0;
assign WDTCtrl = ((iorw==1)&&(caddress[15:4]==12'hff5))?1'b1:1'b0;

always
begin
	if((memwrite==1)||(iowrite==1))
	begin
		write_data=wdata;
	end
	else
		begin
			write_data=32'hzzzzzzzz;
		end
	end
endmodule
