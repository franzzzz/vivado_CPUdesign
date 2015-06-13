//PWM������
module pwm16(reset,address,data,cs,clk,iow,pwm);
input         reset;      //ϵͳ��λ
input[2:0]    address;    //�˿ں�
input[15:0]   data;       //CPUд��PWM������������
input         cs;         //Ƭѡ����PWMCtrl
input         clk;        //ϵͳʱ��
input         iow;        //д�ź�
output        pwm;        //��������ź�

reg  pwm;
reg[15:0]  maxcount;      //���ֵ�Ĵ���
reg[15:0]  midcount;      //�Ա�ֵ�Ĵ���
reg[15:0]  flag;          //ʹ�ܼĴ���
reg[15:0]  rubbish;       //����˿ںŵ�data����
reg[15:0]  counter;       //������

always @ (negedge clk)
begin
 if(reset==1)              //ϵͳ��λ����ʼ���Ĵ���
	 begin
	 maxcount=16'b1111111111111111;
	 midcount=16'b0111111111111111;
	 flag=16'b0000000000000000;
	 pwm=1;
     counter=16'b0000000000000000;
    end
 else if(cs==1 && iow==1)       //CPUдPWM������
 begin
  case(address[2:0])
	3'b000:maxcount=data;      //д���ֵ�Ĵ���
    3'b010:midcount=data;      //д�Ա�ֵ�Ĵ���
	3'b100:flag[0]=data[0];    //дʹ�ܼĴ���
	default:rubbish=data;
  endcase
end
 else                         //����
 if(flag[0])                  //������������������
	 begin
	 if(counter==maxcount)    //����ֵ�����ֵ
		 begin
		 counter=16'b0000000000000000;
		 pwm=1;
	 end
	 else
	 begin
	 counter=counter+1'b1;    //û�����ֵ����������1
	 if(counter>midcount)
		 pwm=0;              //����ֵ���ڶԱ�ֵ������͵�ƽ
	 else
		 pwm=1;              //����ֵС�ڵ��ڶԱ�ֵ������ߵ�ƽ
	 end
    end
 else
 pwm=1;                     //�������������������ʼ��Ϊ�ߵ�ƽ
	end
 endmodule
