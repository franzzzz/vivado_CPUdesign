//����ģ��
module control32(Opcode,Jrn,Function_opcode,ImmediatHigh,RegDST,ALUSrc,MemorIOtoReg,RegWrite,MemRead,MemWrite,IOWrite,IORead,Branch,nBranch,Jmp,Jal,I_format,Sftmd,ALUOp);
input[5:0]   Opcode; 					//����ȡָ��Ԫinstruction[31:26]
input[5:0]   Function_opcode;  			//����ȡָ��ԪR-����instruction[5..0]
output       Jrn;         				//����P16
output       RegDST;     				//����P16
output       ALUSrc;     				//����P16
output       MemorIOtoReg;   			//����P63
output       RegWrite;   				//����P63
output       MemWrite; 					//����P63
output       Branch;   					//����P16
output       nBranch;   				//����P16
output       Jmp;        				//����P16
output       Jal;       				//����P16
output       I_format;  				//����P16
output       Sftmd;    					//����P16
output[1:0]  ALUOp;	 					//��R���ͻ���I_ormat = 1ʱλ1Ϊ1��  beq��bneָ����λ0Ϊ1


input[7:0]   ImmediatHigh;				//����ȡָ��Ԫinstruction[15..8]
output       MemRead;					//Ϊ1������ָ����Ҫ���洢��
output       IORead;					//Ϊ1������ָ����Ҫ��I/O�˿�
output		 IOWrite;					//Ϊ1������ָ����ҪдI/0�˿�


wire Jmp,I_format,Jal,Branch,nBranch;	//
wire R_format;        					//Ϊ1������R-����ָ��
wire Lw;              					//Ϊ1��ʾ��Lwָ��
wire Sw;								//Ϊ1��ʾ��Swָ��
 
assign R_format=(Opcode==6'b000000)?1'b1:1'b0;			//R_format��6λ������ȫ��0
assign I_format=(Opcode[5:3]==3'b001)?1'b1:1'b0;		//I����ָ���Ҫ����������չ���ڱ��п��Է���I����ָ���а�����������ָ���3λ����001��
 

assign RegDST=(Opcode[5:0]==6'b000000)?1'b1:1'b0;		//Ϊ1��ʾĿ�ļĴ�����rd,ֻ��R-����ָ�����
assign ALUSrc=(Opcode[5:3]==3'b001 || Opcode[5:4]==2'b10)?1'b1:1'b0;	//Ϊ1��ʾ��2������������������Ҫ32Ϊ��չ��I-�����г���bne��beq����ָ���⣩

assign Lw=(Opcode[5:0]==6'b100011)?1'b1:1'b0;				//Ϊ1��ʾ��ǰִ��Lwָ��
assign Sw=(Opcode[5:0]==6'b101011)?1'b1:1'b0;				//Ϊ1��ʾ��ǰִ��Swָ��
assign Branch=(Opcode[5:0]==6'b000100)?1'b1:1'b0;			//Ϊ1��ʾ��ǰִ�е���beqָ�
assign nBranch=(Opcode[5:0]==6'b000101)?1'b1:1'b0;			//Ϊ1��ʾ��ǰִ�е���bneָ�

assign Jmp=(Opcode[5:0]==6'b000010)?1'b1:1'b0;				//Ϊ1��ʾִ��Jָ��
assign Jal=(Opcode[5:0]==6'b000011)?1'b1:1'b0;				//Ϊ1��ʾִ��Jalָ��
assign Jrn=(Opcode[5:0]==6'b000000 && Function_opcode[5:0]==6'b001000)? 1'b1:1'b0;		//Ϊ1��ʾִ��Jrָ��

assign Sftmd=(Opcode[5:0]==6'b000000 && Function_opcode[5:3]==3'b000)?1'b1:1'b0;		//Ϊ1��ʾִ����λָ���λָ������R����ָ��ҹ�����ǰ3λΪ000
assign ALUOp[1]=(Opcode ==6'b000000 || I_format==1'b1)?1'b1:1'b0;						//R���ͻ���I_ormat = 1ʱλ1Ϊ1
assign ALUOp[0]=(Opcode[5:1] ==6'b00010)?1'b1:1'b0;										//beq��bneָ����λ0Ϊ1

//RegWriteָ����R�����г���Jrָ�Lw��Jal�Լ�I_formatָ��
assign RegWrite=((Opcode ==6'b000000 && Function_opcode!=6'b001000)|| Opcode ==6'b100011 || Opcode[5:3]==3'b001 || Opcode==6'b000011 )?1'b1:1'b0;

//�Դ洢�����ʻ��Ƕ�I/O���ʵ���������  16Ϊ��ַ�ĸ�8λ�� ����8λȫΪ1ʱ���Ƕ�I/O���ʣ�������ǶԴ洢������
assign IORead=((Lw==1) && (ImmediatHigh[7:0]==8'hff))?1'b1:1'b0;
assign IOWrite=((Sw==1) && (ImmediatHigh[7:0]==8'hff))?1'b1:1'b0;
assign MemRead=((Lw==1) && (ImmediatHigh[7:0]!=8'hff))?1'b1:1'b0;
assign MemWrite=((Sw==1) && (ImmediatHigh[7:0]!=8'hff))?1'b1:1'b0;

assign MemorIOtoReg=IORead||MemRead;			//����������Ҫ�Ӷ˿ڻ��ߴ洢�������ݵ��Ĵ���

endmodule