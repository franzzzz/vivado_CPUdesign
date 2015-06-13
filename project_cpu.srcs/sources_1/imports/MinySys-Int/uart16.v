//UART����ͨ�ſ�����
module uart16(reset,clk,cs,iow,ior,xtal,address,iowrite_data,ioread_data,txd,rxd);
input  reset,clk,cs,iow,ior;              //ϵͳ�ź�
input  xtal;                              //�շ�ʱ���ź�
input  rxd;                               //���������
output txd;                               //���������
input[1:0] address;                       //�˿ں�
input[7:0] iowrite_data;                  //CPUд��UART������
output[15:0] ioread_data;                 //CPU��UART������

reg[15:0] ioread_data;         
reg txd,txd1,txd2;                        //�������������������ʱ�ı�
reg[4:0] cnt,rcnt,scnt;                   //�շ�ʱ�Ӽ�����������״̬��������״̬��
reg[4:0] rcnt2,rcnt3;                     //����״̬����2����ʱ����
reg[4:0] scnt1,scnt2,scnt3;               //����״̬����3����ʱ����
reg[15:0] status,stat1,stat2,stat3;       //״̬�Ĵ���������3����ʱ�ı�
reg[7:0] receivebuff,sentbuff,buff;       //���뻺���������������
reg[7:0] sentbuff1,sentbuff2;             //�����������2����ʱ����
reg[7:0] receivebuff1,receivebuff2;       //���뻺������2����ʱ����
reg baundclk;                             //������ʱ��
reg statflag1,statflag2;                  //ϵͳʱ���½��ش���CPU��д���ݵ�

always @ (negedge clk)
begin
 if(reset==0)
	 begin
	 if(scnt3==5'd2)
		 scnt1=5'd0;
		 if(cs==1)
			 begin
			 if(iow==1)
				 begin
				 if(address==2'b00)         //д��������
					 begin
					 sentbuff1=iowrite_data;
                     stat1=stat3 & 16'b1111111111111110;    //��״̬�Ĵ�����D0
					 scnt1=5'd1;                            //����״̬��״̬1����ʾ���Ϳ�ʼ                        
					 end
				   end                                      //iow==1
				 else if(ior==1)
				 begin
				 if(address==2'b00)                        //�����뻺����
					 begin
					 ioread_data=receivebuff;
                     stat1=stat3 & 16'b1111111111111101;     //��״̬�Ĵ�����D1
					end
				 else if(address==2'b10)
				 begin
				  stat1=stat3;
                  ioread_data=stat3;                        //��״̬�Ĵ���
				  end
			     end                                        //ior==1
				 else stat1=status;
			     end                                       //cs==1
				 end
				 end

	 always @ (posedge xtal)                             //�շ�ʱ�ӵ�������
	 begin
	 if(reset==1)                                       //ϵͳ��λ����ʼ��
		 begin
         cnt=5'd0;                                      //�շ�ʱ�Ӽ�������λ
		 scnt2=5'd0;
         rcnt2=5'd0;
		 buff=8'b00000000;                              //�������
         baundclk=0;
         stat2=16'b0000000000000000;
		 txd1=1;                                           //�������Ϊ�ߵ�ƽ
		 end
	 else
       begin
	   cnt=cnt+1'b1;                                       //�����շ�ʱ��
	   if(cnt==5'd8)                                       //��16���շ�ʱ�ӵ��м�
		   begin
		   cnt=5'd0;                                       //�շ�ʱ�Ӽ�������λ
           baundclk=!baundclk;                            //������ʱ���෴
		 end
		 end
		 end

	 always @ (posedge baundclk)                          //������ʱ�ӵ�������
	 begin
	 case(scnt)                                           //���Ƿ���״̬
	 5'd0:begin txd2=1;sentbuff2=sentbuff;stat3=status;
	    scnt3<=5'd0;statflag1=0;end                          //���Ϳ���λ
		5'd1:if(!((cs==1) && (iow==1)))                     //������������д�Ѿ�����
      begin txd2=0;sentbuff2=sentbuff;scnt3<=5'd2;         //������ʼλ
	   stat3=status & 16'b1111111111111110;                 //��״̬�Ĵ���D0λ
	   end
	   else txd2=txd1;
	   5'd2:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd3;end                               //����ԭ���ݵ�D0λ���������������һλ
	   5'd3:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd4;end                               //����ԭ���ݵ�D1λ���������������һλ
	   5'd4:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd5;end                               //����ԭ���ݵ�D2λ���������������һλ
	   5'd5:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd6;end                               //����ԭ���ݵ�D3λ���������������һλ
	   5'd6:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd7;end                               //����ԭ���ݵ�D4λ���������������һλ
	   5'd7:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd8;end                               //����ԭ���ݵ�D5λ���������������һλ
	   5'd8:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd9;end                               //����ԭ���ݵ�D6λ���������������һλ
	   5'd9:begin txd2=sentbuff[0];sentbuff2[7:0]={1'b0,sentbuff[7:1]};
		  scnt3<=5'd10;end                               //����ԭ���ݵ�D7λ���������������һλ
	   5'd10:begin txd2=1;stat3=status|16'b0000000000000001;
		  scnt3<=5'd0;statflag1=1;end                               //����ֹͣλ����λ״̬�Ĵ���D0λ
	  default:begin txd2=1;scnt3<=5'd0;end
	  endcase
	  case(rcnt)            //���ǽ���״̬
	  5'd0:if(rxd==0) rcnt3<=5'd1;else begin rcnt3<=5'd0;statflag2=0;end
	  5'd1:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd2;end
      5'd2:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd3;end
	  5'd3:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd4;end
	  5'd4:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd5;end
	  5'd5:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd6;end
	  5'd6:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd7;end
	  5'd7:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd8;end
	  5'd8:begin receivebuff[7:0]={rxd,receivebuff[7:1]};rcnt3<=5'd9;end
	  5'd9:if(rxd==1) begin stat3=status|16'b0000000000000010;
		     rcnt3<=5'd0;statflag2=1;end         //�õ���ȷֹͣλ���������
				 else begin receivebuff=8'h0000;rcnt3<=5'd0;end       //�����ֹͣλ
			 default rcnt3<=5'd0;
          endcase
        end

   always @ (stat1,stat2,statflag1,statflag2)       //Ϊ״̬�Ĵ���ʵ�ʸ�ֵ
   begin
    if(reset==1)
		status=stat2;                              //��ʼ��ʱ��Ϊ״̬�Ĵ�����ֵ
	else
		if(cs==1)
        status=stat1;                              //CPU��дʱ��Ϊ״̬�Ĵ�����ֵ
		else if((statflag1==1)||(statflag2==1))
			status=stat3;                          //���ͻ���ս���ʱ��Ϊ״̬�Ĵ�����ֵ
		end
	always @ (scnt1,scnt2,scnt3)             //�Է���״̬��ʵ�ʸ�ֵ
	begin
	if(reset==1)
		scnt=scnt2;                          //��λʱ��Է���״̬����ֵ
	else
		if(scnt1==1)
			scnt=scnt1;                       //CPUд���������ʱ��Է���״̬����ֵ
		else
			scnt=scnt3;                        //���͵�ʱ��Է���״̬����ֵ
	end
  always @ (rcnt2,rcnt3)                       //�Խ���״̬����ʵ�ʸ�ֵ
  begin
   if(reset==1)
	   rcnt=rcnt2;                             //��λ��ʱ��
   else
	   rcnt=rcnt3;                             //���յ�ʱ��
	end

 always @ (sentbuff1,sentbuff2)               //ʵ��дд����������
 begin
 if(reset==1)
	 sentbuff=buff;                          //��λʱд����������
 else
	 if(scnt==5'd1)
		 sentbuff=sentbuff1;                 //CPUд����������
	 else
		 sentbuff=sentbuff2;                 //����ʱ��λ��д
	end

always @ (txd1,txd2)                         //ʵ��д���Ͷ˿�
begin
if((reset==1)||(scnt3==5'd0))
   txd=txd1;                                  //��λ����û��ʼʱд���Ͷ˿�
else
   txd=txd2;                                  //����ʱд���Ͷ˿�
	end
endmodule