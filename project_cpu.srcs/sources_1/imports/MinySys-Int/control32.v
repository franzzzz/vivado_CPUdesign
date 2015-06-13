//控制模块
module control32(Opcode,Jrn,Function_opcode,ImmediatHigh,RegDST,ALUSrc,MemorIOtoReg,RegWrite,MemRead,MemWrite,IOWrite,IORead,Branch,nBranch,Jmp,Jal,I_format,Sftmd,ALUOp);
input[5:0]   Opcode; 					//来自取指单元instruction[31:26]
input[5:0]   Function_opcode;  			//来自取指单元R-类型instruction[5..0]
output       Jrn;         				//见书P16
output       RegDST;     				//见书P16
output       ALUSrc;     				//见书P16
output       MemorIOtoReg;   			//见书P63
output       RegWrite;   				//见书P63
output       MemWrite; 					//见书P63
output       Branch;   					//见书P16
output       nBranch;   				//见书P16
output       Jmp;        				//见书P16
output       Jal;       				//见书P16
output       I_format;  				//见书P16
output       Sftmd;    					//见书P16
output[1:0]  ALUOp;	 					//是R类型或者I_ormat = 1时位1为1，  beq和bne指令则位0为1


input[7:0]   ImmediatHigh;				//来自取指单元instruction[15..8]
output       MemRead;					//为1表明该指令需要读存储器
output       IORead;					//为1表明该指令需要读I/O端口
output		 IOWrite;					//为1表明该指令需要写I/0端口


wire Jmp,I_format,Jal,Branch,nBranch;	//
wire R_format;        					//为1表明是R-类型指令
wire Lw;              					//为1表示是Lw指令
wire Sw;								//为1表示是Sw指令
 
assign R_format=(Opcode==6'b000000)?1'b1:1'b0;			//R_format的6位操作码全是0
assign I_format=(Opcode[5:3]==3'b001)?1'b1:1'b0;		//I类型指令，需要做立即数扩展，在表中可以发现I类型指令中包含立即数的指令高3位都是001；
 

assign RegDST=(Opcode[5:0]==6'b000000)?1'b1:1'b0;		//为1表示目的寄存器是rd,只有R-类型指令符合
assign ALUSrc=(Opcode[5:3]==3'b001 || Opcode[5:4]==2'b10)?1'b1:1'b0;	//为1表示第2操作数是立即数，需要32为扩展（I-类型中除了bne和beq两个指令外）

assign Lw=(Opcode[5:0]==6'b100011)?1'b1:1'b0;				//为1表示当前执行Lw指令
assign Sw=(Opcode[5:0]==6'b101011)?1'b1:1'b0;				//为1表示当前执行Sw指令
assign Branch=(Opcode[5:0]==6'b000100)?1'b1:1'b0;			//为1表示当前执行的是beq指令，
assign nBranch=(Opcode[5:0]==6'b000101)?1'b1:1'b0;			//为1表示当前执行的是bne指令，

assign Jmp=(Opcode[5:0]==6'b000010)?1'b1:1'b0;				//为1表示执行J指令
assign Jal=(Opcode[5:0]==6'b000011)?1'b1:1'b0;				//为1表示执行Jal指令
assign Jrn=(Opcode[5:0]==6'b000000 && Function_opcode[5:0]==6'b001000)? 1'b1:1'b0;		//为1表示执行Jr指令

assign Sftmd=(Opcode[5:0]==6'b000000 && Function_opcode[5:3]==3'b000)?1'b1:1'b0;		//为1表示执行移位指令，移位指令属于R类型指令，且功能码前3位为000
assign ALUOp[1]=(Opcode ==6'b000000 || I_format==1'b1)?1'b1:1'b0;						//R类型或者I_ormat = 1时位1为1
assign ALUOp[0]=(Opcode[5:1] ==6'b00010)?1'b1:1'b0;										//beq和bne指令则位0为1

//RegWrite指令有R类型中除了Jr指令，Lw，Jal以及I_format指令
assign RegWrite=((Opcode ==6'b000000 && Function_opcode!=6'b001000)|| Opcode ==6'b100011 || Opcode[5:3]==3'b001 || Opcode==6'b000011 )?1'b1:1'b0;

//对存储器访问还是对I/O访问的区别在与  16为地址的高8位， 当高8位全为1时，是对I/O访问，否则就是对存储器访问
assign IORead=((Lw==1) && (ImmediatHigh[7:0]==8'hff))?1'b1:1'b0;
assign IOWrite=((Sw==1) && (ImmediatHigh[7:0]==8'hff))?1'b1:1'b0;
assign MemRead=((Lw==1) && (ImmediatHigh[7:0]!=8'hff))?1'b1:1'b0;
assign MemWrite=((Sw==1) && (ImmediatHigh[7:0]!=8'hff))?1'b1:1'b0;

assign MemorIOtoReg=IORead||MemRead;			//读操作，需要从端口或者存储器读数据到寄存器

endmodule