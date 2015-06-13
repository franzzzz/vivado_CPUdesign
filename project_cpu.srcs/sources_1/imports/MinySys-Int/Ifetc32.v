//取指单元，增加了两个终端
module Ifetc32(Instruction,PC_plus_4_out,Add_result,Read_data_1,Branch,nBranch,Jmp,Jal,Jrn,Zero,PC_out,clock,reset,opcplus4,int0,int1,imask,intPC,read_register_1_address,next_PC_out);
output[31:0] Instruction;				//输出指令到CPU外部输出脚上供查验
output[15:0] PC_plus_4_out;				//将(PC+4）送到执行单元
input[15:0] Add_result;				 	//来自执行单元，算出跳转地址
input[31:0] Read_data_1;				//来自译码单元，算出的跳转地址
input Branch;							//来自控制单元
input nBranch;							//来自控制单元
input Jmp;								//来自控制单元
input Jal;								//来自控制单元
input Jrn;								//来自控制单元
input Zero;								//来自控制单元
output[15:0] PC_out;					//将内部的PC值送到CPU外部输出脚上供验证用
input clock,reset;						//系统时钟与复位信号
output[15:0] opcplus4;					//Jal指令专用的PC+4

input int0,int1;						//CPU增加的从外设中过来的两个中断
output[1:0]   imask;					//输出到译码单元的中断屏蔽寄存器imaskR的值,低两位R[1]为1，屏蔽INT1，R[0]为1，屏蔽INT0；
output[15:0]  intPC;					//给译码单元的中断返回地址
input[4:0]     read_register_1_address;	//从译码单元来的jr指令的寄存器号
output[15:0] next_PC_out;				//

wire[17:0] PC_plus_4;
reg[17:0] PC;
reg[15:0] next_PC;
reg[31:0] Jpadr;
reg[15:0] opcplus4;

reg[1:0]     imask;					//中断屏蔽寄存器
reg         rubbish; 				//错误端口号的data处理

dist_mem_gen_1 progrom(.a(PC[11:2]),.clk(clock),.q(Jpadr));		//指令ROM，实际上给ROM器件的地址是PC/4的结果，因为MIF文件按照单元编号，一个单元四个字节



assign intPC[15:0]=((Jmp==1)||(Jal==1))?Jpadr[15:0]:next_PC[15:0];//中断返回地址，正常是PC+4(即next_PC),但如果中断的是跳转语句的话，则应该是跳转的目标地址
//如果是J或者Jal指令，则保存的地址在指令中，否则保存的地址就是第2章的cpu中计算出的next_PC
assign PC_out=PC[15:0];						//将内部的PC值送到CPU外部输出脚上供验证用
assign PC_plus_4_out=PC_plus_4[15:0];		//PC+4送到执行单元，以便执行单元在必要的时候算出ADDResult
assign next_PC_out=next_PC;					//
assign PC_plus_4[17:2]=PC[17:2]+1;			//此处+1实际上是+4，因为PC低2位始终为00，+1加在D2位上

assign PC_plus_4[1:0]=2'b00;				
assign Instruction=Jpadr;					//取出指令


always			//beq,bne,jr指令的处理
begin	
    if(((Branch==1)&&(Zero==1))||((nBranch==1)&&(Zero==0)))			//beq,bne指令满足条件的时候
        next_PC=Add_result;				//计算出新的PC地址
    else if(Jrn==1) next_PC=Read_data_1[15:0];		//jr指令的处理
    else next_PC=PC_plus_4[17:2];			//其他时候都是PC暂时等于pc+4
end

always @(negedge clock)		//时钟下降沿对PC写入新值
begin
    if(reset==1)
		begin
		PC<=18'b000000000000000000;				//PC初始化
		imask=2'b00;							//允许中断
		end
    else
        begin
			if((Jmp==1)||(Jal==1))			//这里利用进程内语句的串行关系，在JAL指令执行时，提前保存PC+4到$15
				begin
				opcplus4=PC_plus_4[17:2];
				PC[17:0]<={Jpadr[15:0],2'b00};
				end
			if((int0==1)&&(imask[0]==0))					//响应INT0
				begin
				imask[0]=1;
				PC<=18'b000000111111111000;	//	PC的地址跳到0ff8H
				end
			else if((int1==1)&&(imask[1]==0)&&(imask[0]==0))	//响应INT1
				begin
				imask[1]=1;
				PC<=18'b000000111111111100;		//PC的地址跳到0ffch
				end
			else if (!((Jmp==1)||(Jal==1)))PC[17:0]<={next_PC[15:0],2'b00};
        
			if(Jrn==1)			//处理中断返回时屏蔽寄存器的复位
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


