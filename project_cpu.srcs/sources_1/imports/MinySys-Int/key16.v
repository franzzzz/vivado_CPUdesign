//4*4���̿�����
module key16(reset,cs,clk,ior,address,col,line,ioread_data);
input reset;		//ϵͳ��λ�ź�
input cs;			//Ƭѡ�źţ���KEYCtrl
input clk;			//ϵͳʱ��
input ior;			//���ź�
input[1:0] address;	//�˿ں�
input[3:0] col;		//����
output[3:0] line;	//����
output[15:0] ioread_data;	//�����ϵͳ�����ϵ����ݣ���CPU�Ƕ���I/O���ݣ�

reg[15:0] ioread_data;		
reg[3:0] line;
reg[15:0] keyvalue;		//��ֵ�Ĵ���
reg[15:0] keystat;		//״̬�Ĵ���

always @(negedge clk)	//ʱ�ӵ��½���ɨ����̺�������ݵ���������
begin
	if(reset==1)			//ϵͳ��λ
	begin
		ioread_data=16'b0000000000000000;
		keyvalue=16'b0000000000000000;
		keystat=16'b0000000000000000;
		line=4'b0000;
	end
	else
	begin			//ɨ��
	case(line)
		4'b0000:if(col!=4'b1111) line<=4'b1110;		//�����߲�ȫΪ1ʱ��ʼɨ��
		4'b1110:if(col!=4'b1111)	//ɨ��0��
			begin				//0���м�����
			keyvalue[3:0]=col;	//�õ���ֵ
			keyvalue[7:4]=line;	
			keystat=keystat|16'b000000000000001;	//��״̬�Ĵ���
			line<=4'b0000;		//��λ����
			end
			else
				line<=4'b1101;	//���0���޼���׼��ɨ��1��
		4'b1101:if(col!=4'b1111)		//ɨ��1��
			begin
			keyvalue[3:0]=col;
			keyvalue[7:4]=line;
			keystat=keystat|16'b000000000000001;
			line<=4'b0000;
			end
			else
			line<=4'b1011;
		4'b1011:if(col!=4'b1111)		//ɨ��2��
			begin
			keyvalue[3:0]=col;
			keyvalue[7:4]=line;
			keystat=keystat|16'b000000000000001;
			line<=4'b0000;
			end
			else
			line<=4'b0111;
		4'b0111:if(col!=4'b1111)		//ɨ��3��
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
		if((cs==1)&&(ior==1))		//���ź�
			if(address==2'b00)		//����ֵ
				ioread_data=keyvalue;
			else if(address==2'b10)	//��״̬��ͬʱ��״̬
				begin ioread_data=keystat;
				keystat=keystat&16'b1111111111111110;
				end
	end
end
endmodule





	
