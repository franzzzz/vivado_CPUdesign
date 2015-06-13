//ȡָ��Ԫ�������������ն�
module Ifetc32(Instruction,PC_plus_4_out,Add_result,Read_data_1,Branch,nBranch,Jmp,Jal,Jrn,Zero,PC_out,clock,reset,opcplus4,int0,int1,imask,intPC,read_register_1_address,next_PC_out);
output[31:0] Instruction;				//���ָ�CPU�ⲿ������Ϲ�����
output[15:0] PC_plus_4_out;				//��(PC+4���͵�ִ�е�Ԫ
input[15:0] Add_result;				 	//����ִ�е�Ԫ�������ת��ַ
input[31:0] Read_data_1;				//�������뵥Ԫ���������ת��ַ
input Branch;							//���Կ��Ƶ�Ԫ
input nBranch;							//���Կ��Ƶ�Ԫ
input Jmp;								//���Կ��Ƶ�Ԫ
input Jal;								//���Կ��Ƶ�Ԫ
input Jrn;								//���Կ��Ƶ�Ԫ
input Zero;								//���Կ��Ƶ�Ԫ
output[15:0] PC_out;					//���ڲ���PCֵ�͵�CPU�ⲿ������Ϲ���֤��
input clock,reset;						//ϵͳʱ���븴λ�ź�
output[15:0] opcplus4;					//Jalָ��ר�õ�PC+4

input int0,int1;						//CPU���ӵĴ������й����������ж�
output[1:0]   imask;					//��������뵥Ԫ���ж����μĴ���imaskR��ֵ,����λR[1]Ϊ1������INT1��R[0]Ϊ1������INT0��
output[15:0]  intPC;					//�����뵥Ԫ���жϷ��ص�ַ
input[4:0]     read_register_1_address;	//�����뵥Ԫ����jrָ��ļĴ�����
output[15:0] next_PC_out;				//

wire[17:0] PC_plus_4;
reg[17:0] PC;
reg[15:0] next_PC;
reg[31:0] Jpadr;
reg[15:0] opcplus4;

reg[1:0]     imask;					//�ж����μĴ���
reg         rubbish; 				//����˿ںŵ�data����

dist_mem_gen_1 progrom(.a(PC[11:2]),.clk(clock),.q(Jpadr));		//ָ��ROM��ʵ���ϸ�ROM�����ĵ�ַ��PC/4�Ľ������ΪMIF�ļ����յ�Ԫ��ţ�һ����Ԫ�ĸ��ֽ�



assign intPC[15:0]=((Jmp==1)||(Jal==1))?Jpadr[15:0]:next_PC[15:0];//�жϷ��ص�ַ��������PC+4(��next_PC),������жϵ�����ת���Ļ�����Ӧ������ת��Ŀ���ַ
//�����J����Jalָ��򱣴�ĵ�ַ��ָ���У����򱣴�ĵ�ַ���ǵ�2�µ�cpu�м������next_PC
assign PC_out=PC[15:0];						//���ڲ���PCֵ�͵�CPU�ⲿ������Ϲ���֤��
assign PC_plus_4_out=PC_plus_4[15:0];		//PC+4�͵�ִ�е�Ԫ���Ա�ִ�е�Ԫ�ڱ�Ҫ��ʱ�����ADDResult
assign next_PC_out=next_PC;					//
assign PC_plus_4[17:2]=PC[17:2]+1;			//�˴�+1ʵ������+4����ΪPC��2λʼ��Ϊ00��+1����D2λ��

assign PC_plus_4[1:0]=2'b00;				
assign Instruction=Jpadr;					//ȡ��ָ��


always			//beq,bne,jrָ��Ĵ���
begin	
    if(((Branch==1)&&(Zero==1))||((nBranch==1)&&(Zero==0)))			//beq,bneָ������������ʱ��
        next_PC=Add_result;				//������µ�PC��ַ
    else if(Jrn==1) next_PC=Read_data_1[15:0];		//jrָ��Ĵ���
    else next_PC=PC_plus_4[17:2];			//����ʱ����PC��ʱ����pc+4
end

always @(negedge clock)		//ʱ���½��ض�PCд����ֵ
begin
    if(reset==1)
		begin
		PC<=18'b000000000000000000;				//PC��ʼ��
		imask=2'b00;							//�����ж�
		end
    else
        begin
			if((Jmp==1)||(Jal==1))			//�������ý��������Ĵ��й�ϵ����JALָ��ִ��ʱ����ǰ����PC+4��$15
				begin
				opcplus4=PC_plus_4[17:2];
				PC[17:0]<={Jpadr[15:0],2'b00};
				end
			if((int0==1)&&(imask[0]==0))					//��ӦINT0
				begin
				imask[0]=1;
				PC<=18'b000000111111111000;	//	PC�ĵ�ַ����0ff8H
				end
			else if((int1==1)&&(imask[1]==0)&&(imask[0]==0))	//��ӦINT1
				begin
				imask[1]=1;
				PC<=18'b000000111111111100;		//PC�ĵ�ַ����0ffch
				end
			else if (!((Jmp==1)||(Jal==1)))PC[17:0]<={next_PC[15:0],2'b00};
        
			if(Jrn==1)			//�����жϷ���ʱ���μĴ����ĸ�λ
				begin
				if(read_register_1_address==5'b11010)  //$26
						imask[0]=0;
				else if(read_register_1_address==5'b11011)  //$27
						imask[1]=0;
				else  rubbish=0;
				end
        end
end
endmodule


