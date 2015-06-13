//���Ź�������
module wtd16(reset,clk,cs,iow,data,rst);
input       reset;      //ϵͳ��λ�ź�
input       clk;        //ϵͳʱ��
input       cs;         //Ƭѡ����WDTCtrl
input       iow;        //д�ź�
input[15:0] data;       //CPUд������
output      rst;        //����ĸ�λ�ź�

reg rst;
reg[15:0] count;        //������
reg[2:0]  cnt;          //С����������4��ʱ��

always @ (negedge clk)
begin
 if(reset==1)           //ϵͳ��λ
	 begin
	 count=16'h0F00;     //��ʼ����ֵ
	 cnt=3'b000;
	 rst=0;               //��λ�źŸߵ�ƽ��Ч�������ʼ��Ϊ�͵�ƽ
     end
 else
 begin
 if(count==16'd0)        //�Ѿ�������0
	 begin
	 cnt=3'b100;         //����С������
	 count=16'h0F00;
	 rst=1;              //�����λ�ź�
    end
 else
 count=count-1'b1;            //���������û�е�0�����������1
 if(cnt==3'b000)             //���С��������0��˵����λ�ź��Ѿ���4��ʱ������
	 rst=0;                 //����ĸ�λ�źű�Ϊ��Ч    
 else
	 cnt=cnt-1'b1;          //�������С��������Ϊ0����С��������1
   if((cs==1)&&(iow==1))      //�õ�д�źź󣬿��Ź�ȫ����λ
	   begin
	   count=16'h0F00;
	   cnt=3'b000;
	   rst=0;
end
end
end
endmodule