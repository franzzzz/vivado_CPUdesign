//���߿���ģ��-2��IOReadģ�飬ʵ��I/O����ѡ����
module ioread(reset,clk,ior,keyctrl,ctcctrl,uartctrl,ioread_data,ioread_data_key,ioread_data_ctc,ioread_data_uart);
input reset,clk;
input ior,keyctrl,ctcctrl,uartctrl;
input[15:0] ioread_data_key;		//���̽ӿ���������
input[15:0] ioread_data_ctc;		//�������ӿ���������
input[15:0] ioread_data_uart;		//�첽����ͨ�Žӿ���������
output[15:0] ioread_data;		//����Ƭѡ�ź������Ӧ�ӿ���������

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