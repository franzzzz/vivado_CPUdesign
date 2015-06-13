//���߿���ģ��-1��MEMorIOģ�飬��ɵ�ַ���롢����ת������������ѡ����
module memorio(caddress,address,memread,memwrite,ioread,iowrite,mread_data,ioread_data,wdata,rdata,write_data,LEDCtrl,KEYCtrl,CTCCtrl,PWMCtrl,UARTCtrl,WDTCtrl);
input[15:0] caddress;	//��ִ�е�Ԫ����alu_resullt[15:0]
input memread;			//�ӿ��Ƶ�Ԫ���Ĵ洢���������ź�
input memwrite;			//�ӿ��Ƶ�Ԫ���Ĵ洢��д�����ź�
input ioread;			//�ӿ��Ƶ�Ԫ����I/O�������ź�
input iowrite;			//�ӿ��Ƶ�Ԫ����I/Oд�����ź�
input[31:0] mread_data;	//�Ӵ洢����������
input[15:0] ioread_data;	//��I/O�˿���������
input[31:0] wdata;			//�����뵥Ԫ����������洢����I/O�˿���ȥ������
output[31:0] rdata;			//�Ӵ洢����I/O�˿ڶ����׼��д���Ĵ�����ȥ������
output[31:0] write_data;	//׼��д���洢����I/O�˿ڵ��������
output[11:0] address;		//�����ϵĵ�ַ��ȥ�洢������4λ�����ʶ˿ڵĶ˿ںţ�
output LEDCtrl;			//LED(�����)�ӿڲ�����Ƭѡcs
output KEYCtrl;			//key�����̣��ӿڲ�����Ƭѡcs
output CTCCtrl;			//counter(������)�ӿڲ�����Ƭѡcs
output PWMCtrl;			//pwm��������ƣ��ӿڲ�����Ƭѡcs
output UARTCtrl;		//UART���첽����ͨ�ţ��ӿڲ�����Ƭѡcs
output WDTCtrl;			//watch dog�����Ź����ӿڲ�����Ƭѡcs

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
