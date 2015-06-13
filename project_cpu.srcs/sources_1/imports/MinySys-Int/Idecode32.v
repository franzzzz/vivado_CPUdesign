//译码模块
module Idecode32(read_data_1,read_data_2,Instruction,read_data,ALU_result,Jal,RegWrite,MemtoReg,RegDst,Sign_extend,clock,reset,opcplus4,int0,int1,imask,intPC,read_register_1_address,ifech_write_data_out,reg26,reg27);
output[31:0] read_data_1;				//译码单元输出的第一操作数
output[31:0] read_data_2;				//译码单元输出的第二操作数
output[31:0] Sign_extend;				//译码单元输出的扩展后的32为立即数
input[31:0] Instruction;				//来自取指单元的指令
input[31:0] read_data;					//从数据RAM中读取的数据
input[31:0] ALU_result;					//从执行单元来的运算的结果
input Jal;								//来自控制单元
input RegWrite;							//来自控制单元
input MemtoReg;							//来自控制单元
input RegDst;							//来自控制单元	
input clock,reset;						//系统时钟和复位
input[15:0] opcplus4;					//来自取指单元，JAL中用

input         int0,int1;				//从外设中过来的2个中断信号
input[1:0]     imask;					//从取指单元来的中断屏蔽寄存器的值
input[15:0]    intPC;					//从取指单元来的中断返回地址
output[4:0]    read_register_1_address;	//输出到取指单元的jr指令的寄存器号

output[31:0] reg26;						//LG
output[31:0] reg27;						//LG

//output[15:0] intPC;
output ifech_write_data_out;			//

reg[31:0] read_data_1;
reg[31:0] read_data_2;

reg[31:0] register[31:0];		//定义寄存器组中的32个寄存器

reg[4:0] write_register_address;
reg[31:0] write_data;
wire[4:0] /*read_register_1_address,*/read_register_2_address;		//当时read_register_1_address用作内部寄存器，这里则将其值输出到取指单元，因此在这里注释掉
wire[4:0] write_register_address_1,write_register_address_0;
wire[15:0] Instruction_immediate_value;
wire[5:0] opcode;
wire sign;

//
wire[31:0] ifech_write_data_out;

//
assign ifech_write_data_out=write_data;

assign opcode=Instruction[31:26];						//OP
assign read_register_1_address=Instruction[25:21];		//rs寄存器号
assign read_register_2_address=Instruction[20:16];		//rt寄存器号
assign write_register_address_1=Instruction[15:11];		//rd(R-类型)寄存器号
assign write_register_address_0=Instruction[20:16];		//rt寄存器号
assign Instruction_immediate_value=Instruction[15:0];	//data，offset(I-类型)
assign reg26=register[26];			//取出$26的值
assign reg27=register[27];			//取出$27的值

assign sign=Instruction_immediate_value[15];		//立即数的符号位
assign Sign_extend[31:0]=((opcode==6'b001100)		//andi
                         ||(opcode==6'b001101)		//ori
                         ||(opcode==6'b001110)		//xori
                         ||(opcode==6'b001011))		//sltiu
                        ?{16'h0000,Instruction_immediate_value[15:0]}
                        :{sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,		//立即数零扩展
                        sign,sign,sign,sign,Instruction_immediate_value[15:0]};				//立即数符号扩展
    
always @ (negedge clock)
begin
   if(reset==1)						//初始化$26和$27寄存器
   begin
      register[26]<=32'h00000000;
      register[27]<=32'h00000000;
   end
  if((int0==1)&&(imask[0]==0))		//存INT0返回地址
   register[26][31:0]<={16'b0000000000000000,intPC};
 else if((int1==1)&&(imask[1]==0)&&(imask[0]==0))	//	存INT1返回地址
   register[27][31:0]<={16'b0000000000000000,intPC};
end
                    

always @(read_register_1_address)		//从寄存器中读第一个操作数
begin
    case(read_register_1_address[4:0])		//根据寄存器号决定从哪个寄存器读
    5'd0:read_data_1=register[0];
    5'd1:read_data_1=register[1];
    5'd2:read_data_1=register[2];
    5'd3:read_data_1=register[3];
    5'd4:read_data_1=register[4];
    5'd5:read_data_1=register[5];
    5'd6:read_data_1=register[6];
    5'd7:read_data_1=register[7];
    5'd8:read_data_1=register[8];
    5'd9:read_data_1=register[9];
    5'd10:read_data_1=register[10];
    5'd11:read_data_1=register[11];
    5'd12:read_data_1=register[12];
    5'd13:read_data_1=register[13];
    5'd14:read_data_1=register[14];
    5'd15:read_data_1=register[15];
    5'd16:read_data_1=register[16];
    5'd17:read_data_1=register[17];
    5'd18:read_data_1=register[18];
    5'd19:read_data_1=register[19];
    5'd20:read_data_1=register[20];
    5'd21:read_data_1=register[21];
    5'd22:read_data_1=register[22];
    5'd23:read_data_1=register[23];
    5'd24:read_data_1=register[24];
    5'd25:read_data_1=register[25];
    5'd26:read_data_1=register[26];
    5'd27:read_data_1=register[27];
    5'd28:read_data_1=register[28];
    5'd29:read_data_1=register[29];
    5'd30:read_data_1=register[30];
    5'd31:read_data_1=register[31];
    default read_data_1=32'bx;
    endcase 
end

always @(read_register_2_address)		//从寄存器中读第一个操作数
begin
    case(read_register_2_address[4:0])
    5'd0:read_data_2=register[0];
    5'd1:read_data_2=register[1];
    5'd2:read_data_2=register[2];
    5'd3:read_data_2=register[3];
    5'd4:read_data_2=register[4];
    5'd5:read_data_2=register[5];
    5'd6:read_data_2=register[6];
    5'd7:read_data_2=register[7];
    5'd8:read_data_2=register[8];
    5'd9:read_data_2=register[9];
    5'd10:read_data_2=register[10];
    5'd11:read_data_2=register[11];
    5'd12:read_data_2=register[12];
    5'd13:read_data_2=register[13];
    5'd14:read_data_2=register[14];
    5'd15:read_data_2=register[15];
    5'd16:read_data_2=register[16];
    5'd17:read_data_2=register[17];
    5'd18:read_data_2=register[18];
    5'd19:read_data_2=register[19];
    5'd20:read_data_2=register[20];
    5'd21:read_data_2=register[21];
    5'd22:read_data_2=register[22];
    5'd23:read_data_2=register[23];
    5'd24:read_data_2=register[24];
    5'd25:read_data_2=register[25];
    5'd26:read_data_2=register[26];
    5'd27:read_data_2=register[27];
    5'd28:read_data_2=register[28];
    5'd29:read_data_2=register[29];
    5'd30:read_data_2=register[30];
    5'd31:read_data_2=register[31];
    default read_data_2=32'bx;
    endcase 
end

always			//这个进程指定不同指令下的目的寄存器
begin
    if((RegDst==1)&&(Jal==0))
        write_register_address=write_register_address_1;			//R-类型的目的寄存器是$31
    else if((RegDst==0)&&(Jal==1))
        write_register_address=5'b11111;							//Jal指令需要将下个指令的地址给$31寄存器
    else
        write_register_address=write_register_address_0;			//I-类型目的是rt寄存器
end

always			//这个进程基本上是实现结构图中右下的多路选择器，准备要写到寄存器中的数据
begin
    if((MemtoReg==0)&&(Jal==0))
        write_data=ALU_result[31:0];			//是运算指令，则数据来自执行单元
    else if((MemtoReg==0)&&(Jal==1))
        begin
            write_data[31:0]={16'b0000000000000000,opcplus4[15:0]};		//jal指令，写$31的数据来自取指单元
        end
    else write_data=read_data;					//是LW指令时，数据来自存储器
end	

always @(posedge clock)							//本进程是写目的寄存器，注意在时钟的上升沿
begin
    if(reset==1)								//复位的时候初始化寄存器组，
    begin
        register[0]<=32'd0;
        register[1]<=32'd1;
        register[2]<=32'd2;
        register[3]<=32'd3;
        register[4]<=32'd4;
        register[5]<=32'd5;
        register[6]<=32'd6;
        register[7]<=32'd7;
        register[8]<=32'd8;
        register[9]<=32'd9;
        register[10]<=32'd10;
        register[11]<=32'd11;
        register[12]<=32'd12;
        register[13]<=32'd13;
        register[14]<=32'd14;
        register[15]<=32'd15;
        register[16]<=32'd16;
        register[17]<=32'd17;
        register[18]<=32'd18;
        register[19]<=32'd19;
        register[20]<=32'd20;
        register[21]<=32'd21;
        register[22]<=32'd22;
        register[23]<=32'd23;
        register[24]<=32'd24;
        register[25]<=32'd25;
        //register[26]<=32'd26;
        //register[27]<=32'd27;
        register[28]<=32'd28;
        register[29]<=32'd29;
        register[30]<=32'd30;
        register[31]<=32'd31;
    end
    else if(RegWrite==1)			//以下语句是写寄存器，注意$0恒为0，$26和$27 已经用于保存被中断程序的下一跳指令的地址
    begin
        case(write_register_address[4:0])
        5'd0:register[0]<=32'd0;
        5'd1:register[1]<=write_data;
        5'd2:register[2]<=write_data;
        5'd3:register[3]<=write_data;
        5'd4:register[4]<=write_data;
        5'd5:register[5]<=write_data;
        5'd6:register[6]<=write_data;
        5'd7:register[7]<=write_data;
        5'd8:register[8]<=write_data;
        5'd9:register[9]<=write_data;
        5'd10:register[10]<=write_data;
        5'd11:register[11]<=write_data;
        5'd12:register[12]<=write_data;
        5'd13:register[13]<=write_data;
        5'd14:register[14]<=write_data;
        5'd15:register[15]<=write_data;
        5'd16:register[16]<=write_data;
        5'd17:register[17]<=write_data;
        5'd18:register[18]<=write_data;
        5'd19:register[19]<=write_data;
        5'd20:register[20]<=write_data;
        5'd21:register[21]<=write_data;
        5'd22:register[22]<=write_data;
        5'd23:register[23]<=write_data;
        5'd24:register[24]<=write_data;
        5'd25:register[25]<=write_data;
        //5'd26:register[26]<=write_data;
        //5'd27:register[27]<=write_data;
        5'd28:register[28]<=write_data;
        5'd29:register[29]<=write_data;
        5'd30:register[30]<=write_data;
        5'd31:register[31]<=write_data;
        default: register[0]<=32'd0;
        endcase
    end
end

endmodule


