//总线控制模块-2：IORead模块，实现I/O数据选择器
module ioread(reset,clk,ior,keyctrl,ctcctrl,uartctrl,ioread_data,ioread_data_key,ioread_data_ctc,ioread_data_uart);
input reset,clk;
input ior,keyctrl,ctcctrl,uartctrl;
input[15:0] ioread_data_key;		//键盘接口来的数据
input[15:0] ioread_data_ctc;		//计数器接口来的数据
input[15:0] ioread_data_uart;		//异步串行通信接口来的数据
output[15:0] ioread_data;		//根据片选信号输出相应接口来的数据

reg[15:0] ioread_data;		
always
begin 
	if(reset==1)
		ioread_data=16'b0000000000000000;
	else
	if(ior==1)
	begin
		if(keyctrl==1)
			ioread_data=ioread_data_key;
		else if(ctcctrl==1)
			ioread_data=ioread_data_ctc;
		else if (uartctrl==1)
			ioread_data=ioread_data_uart;
		end
	end
endmodule