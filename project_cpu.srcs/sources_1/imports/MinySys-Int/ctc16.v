//��ʱ/�����������
module ctc16(reset,clk,cs,iow,ior,pulse0,pulse1,address,iowrite_data,ioread_data,cout0,cout1);
input        reset;        //ϵͳ��λ�ź�
input        clk;          //ϵͳʱ��
input        cs;           //Ƭѡ����CTCCtrl
input        iow;          //д�ź�
input        ior;          //���ź�
input        pulse0;       //��CT0���ⲿ����
input        pulse1;       //��CT1���ⲿ����
input[3:0]   address;      //�˿ں�
input[15:0]  iowrite_data; //д��CTCģ�������
output[15:0]  ioread_data;  //����������
output       cout0;        //CNT0���������
output       cout1;        //CNT1���������

reg cout0,cout1;
reg[15:0] ioread_data;
reg[15:0] status1,status2;  //CNT0��CNT1��״̬�Ĵ���
reg[15:0] stat11,stat12;	//stat11��stat12��status1��������ʱ�Ĵ�����������������̶�ͬһ���Ĵ����ĸ�ֵ���⣩
reg[15:0] stat21,stat22;	//stat21��stat22��status2��������ʱ�Ĵ���
reg[15:0] mode1,mode2;      //CNT0��CNT1�ķ�ʽ�Ĵ���
reg[15:0] count1,count2;    //CNT0��CNT1�ļ�1������
reg[15:0] cnt11,cnt12;		//cnt11��cnt12��count1��������ʱ��������������������̶�ͬһ���������ĸ�ֵ���⣩
reg[15:0] cnt21,cnt22;		//cnt21��cnt22��count1��������ʱ������
reg[15:0] initcnt1,initcnt2; //CNT0��CNT1�ĳ�ʼֵ�Ĵ���
reg[15:0] rubbish;

always @(negedge clk)
begin
if(reset==1)          //��ʼ��
   begin
   cout0=1;
   cout1=1;
   initcnt1=16'b0000000000000000;
   initcnt2=16'b0000000000000000;
   cnt11=16'b0000000000000000;
   cnt21=16'b0000000000000000;
   stat11=16'b0000000000000000;
   stat21=16'b0000000000000000;
   end
else                 //(reset==0)
begin
if(cs==1)
   begin
   if(iow==1)    //CPU��ʱ��/������д
   begin
   case(address)       //���ݶ˿ںŷֱ�д��ʽ�Ĵ����ͳ�ʼֵ�Ĵ���
   4'b0000:begin mode1=iowrite_data;stat11=status1 & 16'h7FFC;end
   4'b0010:begin mode2=iowrite_data;stat21=status2 & 16'h7FFC;end
   4'b0100:begin initcnt1=iowrite_data;cnt11=iowrite_data;stat11=status1 | 16'b1000000000000000;end
   4'b0110:begin initcnt2=iowrite_data;cnt21=iowrite_data;stat21=status2 | 16'b1000000000000000;end
   default:rubbish=iowrite_data;
   endcase
   end            
   else if(ior==1)  //CPU����ʱ��/������������
   begin
   case(address)        //���ݶ˿ںŷֱ��״̬�Ĵ����͵�ǰ������
   4'b0000:begin ioread_data=status1;stat11=status1 & 16'hFFFC;end
   4'b0010:begin ioread_data=status2;stat21=status2 & 16'hFFFC;end
   4'b0100:begin ioread_data=count1;end
   4'b0110:begin ioread_data=count2;end
   default:ioread_data=16'bzzzzzzzzzzzzzzzz;
   endcase
   end       //ior==1
   end        //cs==1
   begin      //CNT0����ʱ
   if(status1[15]==1'b0)     //����ֵ��Ч���������Ϊ�ߵ�ƽ
	   cout0=1;
   if((status1[15]==1)&&(mode1[0]==0))
	   begin
	   if(count1==1)        //��ʱ������1������͵�ƽ
		   begin
		   cout0=0;
		   stat11=status1|16'b0000000000000001;     //��״̬�Ĵ���Ϊ��ʱ��
	   if(mode1[1]==1)                         //����ظ���ʱ����װ��ʼֵ
		   cnt11=initcnt1;
	   else
		   begin                             //���ظ���ʱ������״̬�Ĵ���Ϊ��������Ч
		   stat11=stat11 & 16'b0111111111111111;
		   cnt11=0;
		   end
		end
	   else                               //count!=1
	   begin                              //�����ʱ����û�е�1
		cout0=1;                          //�������Ϊ�ߵ�ƽ
		cnt11=count1-1'b1;                //����ֵ��1
			stat11=status1|16'b1000000000000000;   //״̬�Ĵ������ּ���ֵ��Ч
			end
			end
			if(status2[15]==1'b0)              //������CNT1�Ķ�ʱ������ԭ���CNT0һ��
			   cout1=1;
			if((status2[15]==1)&&(mode2[0]==0))
			begin
			if(count2==1)
			  begin
			  cout1=0;
			   stat21=status2|16'b0000000000000001;
			 if(mode2[1]==1)
			   cnt21=initcnt2;
			   else
			   begin
				stat21=stat21 & 16'b0111111111111111;
				cnt21=0;
				end
			   end
			else         //count2!=1
			begin
			 cout1=1;
			cnt21=count2-1'b1;
			stat21=status2|16'b1000000000000000;
			end
			end
			end          //cs==0
			end          //(reset==0)
			end

		always @(negedge pulse0)  //����0����
		begin
		if((status1[15]==1)&&(mode1[0]==1))
			begin
			if(count1==0)            //������0
				begin
				  stat12=status1|16'b0000000000000001;     //��״̬�Ĵ�����������־
				  if(mode1[1]==1)                        //������ظ�����
					cnt12=initcnt1;                      //��װ��ʼֵ
				  else
					  begin                             //��������ظ����������ñ�־�Ĵ���Ϊ����ֵ��Ч״̬                         
					  stat12=stat12 & 16'b0111111111111111; 
					  cnt12=0;
					end
				   end
			else                                       //count1!=0
			 begin                                     //����δ��0�����������1������״̬�Ĵ���Ϊ����ֵ��Ч״̬
			  cnt12=count1-1'b1;
			  stat12=status1|16'b1000000000000000;
			  end
		end
			  end

		  always @(negedge pulse1)
		  begin
		  //����߸�����һ���̣���ɱ����̵����
		  if((status2[15]==1)&&(mode2[0]==1))
			begin
			if(count2==0)            //������0
				begin
				  stat22=status2|16'b0000000000000001;     //��״̬�Ĵ�����������־
				  if(mode2[1]==1)                        //������ظ�����
					cnt22=initcnt2;                      //��װ��ʼֵ
				  else
					  begin                             //��������ظ����������ñ�־�Ĵ���Ϊ����ֵ��Ч״̬                         
					  stat22=stat22 & 16'b0111111111111111; 
					  cnt22=0;
					end
				   end
			else                                       //count1!=0
			 begin                                     //����δ��0�����������1������״̬�Ĵ���Ϊ����ֵ��Ч״̬
			  cnt22=count2-1'b1;
			  stat22=status2|16'b1000000000000000;
			  end
			  end
		  end

		  always @ (stat11,stat12)     //����ʱ�ͼ����������̶�״̬�Ĵ����ĸ�ֵ���������üĴ���
		  begin
		  if(reset==0)
			  begin
			  if((cs==1)&&(((iow==1) && ((address==4'b0100)||(address==4'b0000))) ||((ior==1) && (address==4'b0000))))
				  status1=stat11;                    //�Զ�ʱ/��������дʱ���״̬�Ĵ����ĸ�ֵ�����üĴ���
			  else
				  if(mode1[0]==1)
					  status1=stat12;               //������ʱ���״̬�Ĵ����ĸ�ֵ�����üĴ���
				  else
					  status1=stat11;               //��ʱ��ʱ���״̬�Ĵ����ĸ�ֵ�����üĴ���
				end
			end
			 
		  always@(stat21,stat22)
		  begin
		  //����߸�����һ���̣���ɱ����̵����
		  if(reset==0)
			  begin
			  if((cs==1)&&(((iow==1) && ((address==4'b0110)||(address==4'b0010))) ||((ior==1) && (address==4'b0010))))
				  status2=stat21;                    //�Զ�ʱ/��������дʱ���״̬�Ĵ����ĸ�ֵ�����üĴ���
			  else
				  if(mode2[0]==1)
					  status2=stat22;               //������ʱ���״̬�Ĵ����ĸ�ֵ�����üĴ���
				  else
					  status2=stat21;               //��ʱ��ʱ���״̬�Ĵ����ĸ�ֵ�����üĴ���
				end
		  end

		  always@(cnt11,cnt12)   //����ʱ�ͼ����������̶Լ�1�������ĸ�ֵ���������üĴ���
		  begin
		  if(reset==0)
			  begin
			  if((cs==1)&&(iow==1)&&(address==4'b0100))
				  count1=cnt11;           //�Զ�ʱ/������дʱ��Լ�1�������ĸ�ֵ�����üĴ���
			  else
			   if(mode1[0]==1)
				   count1=cnt12;          //����ʱ��Լ�1�������ĸ�ֵ�����üĴ���
			   else
				   count1=cnt11;          //��ʱʱ��Լ�1�������ĸ�ֵ�����üĴ���
				end
			end

		   always @ (cnt21,cnt22)
		   begin
		   //����߸�����һ���̣���ɱ����̵����
		   if(reset==0)
			  begin
			  if((cs==1)&&(iow==1)&&(address==4'b0110))
				  count2=cnt21;           //�Զ�ʱ/������дʱ��Լ�1�������ĸ�ֵ�����üĴ���
			  else
			   if(mode2[0]==1)
				   count2=cnt22;          //����ʱ��Լ�1�������ĸ�ֵ�����üĴ���
			   else
				   count2=cnt21;          //��ʱʱ��Լ�1�������ĸ�ֵ�����üĴ���
				end
		   end
		   endmodule