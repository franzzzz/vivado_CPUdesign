//顶层文件
module minisys(clock,pc,alu_result_out,read_data_1_out,read_data_2_out,write_data_out,instruction_out,branch_out,zero_out,memwrite_out,regwrite_out,i_format_out,opcplus4_out,the_ifech_write_data_out,prst,led0,led1,led2,led3,int0,int1,col,line,pulse0,pulse1,cout0,cout1,status1,iowrite_data,pwm,xtal,rxd,txd,iowrite_data,iowrite,ledctrl,write_data,memtoreg_out,reset_out,ioread_data,imask_out,reg26_out,reg27_out,intPC,next_PCout,pc_plus_4_out,Add_result_out,jal_out,jmp_out,rst);
input clock;				//系统时钟
input prst;					//按钮复位信号

output reset_out;
output[31:0] alu_result_out;			//执行单元运算的结果
output[31:0] read_data_1_out,read_data_2_out;		//译码单元出来的两个操作数
output[31:0] instruction_out;			//指令码
output[31:0] write_data_out;			//写到寄存器的数据
output[15:0] pc;						//PC 值
output branch_out,zero_out;				//分支信号和结果为0的信号
output memwrite_out,regwrite_out;		//写存储器和写寄存器信号
output i_format_out;					//I_format

output[31:0] reg26_out;
output[31:0] reg27_out;

input int0,int1;
input[3:0] col;
output[3:0] line;
input pulse0;
input pulse1;

output cout0;
output cout1;
output[15:0] status1;

output[31:0] iowrite_data;
output[31:0] write_data;

output[15:0] intPC;

output pwm;
input xtal;
input rxd;
output txd;

output iowrite;
output ledctrl;

output[6:0] led0;//LG
output[6:0] led1;
output[6:0] led2;
output[6:0] led3;
//
output opcplus4_out;
output the_ifech_write_data_out;

//
wire[15:0] opcplus4_out;
wire[31:0] the_ifech_write_data_out;

output memtoreg_out;
output[15:0] next_PCout;

wire[15:0] pc_plus_4;				//PC+4的值
output[15:0] pc_plus_4_out;			
wire[31:0] read_data_1;
wire[31:0] read_data_2;
wire[31:0] sign_extend;				//扩展的32位立即数
wire[15:0] add_result;				//执行单元计算出的beq和bne的跳转地址
output[15:0] Add_result_out;		
wire[31:0] alu_result;				//执行单元计算出的运算值
wire[31:0] read_data;
wire alusrc,branch,nbranch,jmp,jal,jrn,i_format;		//来自控制单元的7个控制信号
output jmp_out;
output jal_out;
wire memwrite,regwrite,memtoreg,regdst,sftmd;			//来自控制单元的5个控制信号
wire zero;							//来自执行单元的结果为0的状态信息
wire[1:0] aluop;					//来自控制单元的运算码
wire[31:0] instruction;				//指令码
wire[15:0] opcplus4;				//专为Jal指令准备的下条指令地址
wire[11:0] address;
wire[31:0] write_data;
wire reset;
wire memread,ioread,iowrite;
wire rst;
output rst;
wire ledctrl;
wire keyctrl;
wire ctcctrl;
wire pwmctrl;
wire uartctrl;
wire wdtctrl;

wire int0,int1;
wire[15:0] intpc;
wire[1:0] imask;
wire[4:0] read_register_1_address;
wire[31:0] rdata;

wire[15:0] ioread_data_key;
//wire[32:0] write_data;
wire[15:0] ioread_data_ctc;
wire[15:0] ioread_data_uart;
wire[2:0] alu_ctl;

output[1:0] imask_out;
output[15:0] ioread_data;

assign jal_out=jal;
assign jmp_out=jmp;
assign pc_plus_4_out=pc_plus_4;
assign Add_result_out=add_result;
//assign intPC_out=intPC;
assign imask_out=imask;
assign reset_out=reset;
assign memtoreg_out=memtoreg;
assign instruction_out=instruction;
assign alu_result_out=alu_result;
assign read_data_1_out=read_data_1;
assign read_data_2_out=read_data_2;
assign write_data_out=(memtoreg==1)?read_data:alu_result;
assign branch_out=branch;
assign zero_out=zero;
assign regwrite_out=regwrite;
assign memwrite_out=memwrite;
assign i_format_out=i_format;
assign iowrite_data=write_data;

//
assign opcplus4_out=opcplus4;

Ifetc32 ifetch( .Instruction(instruction),
                .PC_plus_4_out(pc_plus_4),
                .Add_result(add_result),
                .Branch(branch),
                .nBranch(nbranch),
                .Jmp(jmp),
                .Jal(jal),
                .Jrn(jrn),
                .Read_data_1(read_data_1),
                .Zero(zero),
                .PC_out(pc),
                .clock(clock),
                .reset(reset),
                .opcplus4(opcplus4),
                .int0(int0),
                .int1(int1),
                .intPC(intPC),
                .imask(imask),
                .read_register_1_address(read_register_1_address),
                .next_PC_out(next_PCout)
                );

Idecode32 idecode(.read_data_1(read_data_1),
                  .read_data_2(read_data_2),
                  .Instruction(instruction),
                  .read_data(rdata),
                  .ALU_result(alu_result),
                  .MemtoReg(memtoreg),
                  .RegWrite(regwrite),
                  .RegDst(regdst),
                  .Sign_extend(sign_extend),
                  .Jal(jal),
                 // .PC_next(pc_next),
                  .clock(clock),
                  .reset(reset),
                  .opcplus4(opcplus4),
                  .ifech_write_data_out(the_ifech_write_data_out),
                  .int0(int0),
				  .int1(int1),
                  .intPC(intPC),
                  .imask(imask),
                  .read_register_1_address(read_register_1_address),
                  .reg26(reg26_out),
                  .reg27(reg27_out)
                  );

control32 control(.Opcode(instruction[31:26]),
                    .Function_opcode(instruction[5:0]),
                    .RegDST(regdst),
                    .ALUSrc(alusrc),
                    .MemorIOtoReg(memtoreg),
                    .RegWrite(regwrite),
                    .MemWrite(memwrite),
                    .ALUOp(aluop),
                    .I_format(i_format),
                    .Branch(branch),
                    .nBranch(nbranch),
                    .Sftmd(sftmd),
                    .Jal(jal),
                    .Jrn(jrn),
                    .Jmp(jmp),
                    .MemRead(memread),
                    .IORead(ioread),
                    .IOWrite(iowrite),
                    .ImmediatHigh(instruction[15:8])
                    );

Executs32 execute(.Read_data_1(read_data_1),
                    .Read_data_2(read_data_2),
                    .Sign_extend(sign_extend),
                    .Function_opcode(instruction[5:0]),
                    .Shamt(instruction[10:6]),
                    .Exe_opcode(instruction[31:26]),
                    .Sftmd(sftmd),
                    .ALUOp(aluop),
                    .ALUSrc(alusrc),
                    .ALU_Result(alu_result),
                    .Add_Result(add_result),
                    .I_format(i_format),
                    .Zero(zero),
                    .PC_plus_4(pc_plus_4));
                    
/*dmemory32 memory(.read_data(read_data),
                    .address(alu_result[11:0]),
                    .write_data(read_data_2),
                    .Memwrite(memwrite),
                    .clock(clock));*/
                    
dmemory32 memory(.read_data(read_data),
                 .address(address),
                 .write_data(write_data),
                 .Memwrite(memwrite),
                 .clock(clock));
                    
memorio memio(.caddress(alu_result[15:0]),
              .address(address),
              .memread(memread),
              .memwrite(memwrite),
              .ioread(ioread),
              .iowrite(iowrite),
              .mread_data(read_data),
              .ioread_data(ioread_data),
              .wdata(read_data_2),
              .rdata(rdata),
              .write_data(write_data),
              .LEDCtrl(ledctrl),
              .KEYCtrl(keyctrl),
              .CTCCtrl(ctcctrl),
              .PWMCtrl(pwmctrl),
              .UARTCtrl(uartctrl),
              .WDTCtrl(wdtctrl));

ioread multiioread(.reset(reset),
                   .clk(clock),
                   .ior(ioread),
                   .keyctrl(keyctrl),
                   .ctcctrl(ctcctrl),
                   .uartctrl(uartctrl),
                   .ioread_data(ioread_data),
                   .ioread_data_key(ioread_data_key),
                   .ioread_data_ctc(ioread_data_ctc),
                   .ioread_data_uart(ioread_data_uart));
                   
led16 led(.reset(reset),
          .data(write_data[15:0]),
          .cs(ledctrl),
          .iow(iowrite),
          .led0(led0),
          .led1(led1),
          .led2(led2),
          .led3(led3));
        
        
key16 key(.reset(reset),
          .cs(keyctrl),
          .clk(clock),
          .ior(ioread),
          .address(address[1:0]),
          .col(col),
          .line(line),
          .ioread_data(ioread_data_key));
    
ctc16 ctc(.reset(reset),
          .clk(clock),
          .cs(ctcctrl),
          .iow(iowrite),
          .ior(ioread),
          .pulse0(pulse0),
          .pulse1(pulse1),
          .address(address[3:0]),
          .iowrite_data(write_data[15:0]),
          .ioread_data(ioread_data_ctc),
          .cout0(cout0),
          .cout1(cout1));
          
          
pwm16 pwmcontrol(.reset(reset),
                 .address(address[2:0]),
                 .data(write_data[15:0]),
                 .cs(pwmctrl),
                 .clk(clock),
                 .iow(iowrite),
                 .pwm(pwm));
                 
                 
uart16 uart(.reset(reset),
          .clk(clock),
          .cs(uartctrl),
          .iow(iowrite),
          .ior(ioread),
          .xtal(xtal),
          .address(address[1:0]),
          .iowrite_data(write_data[7:0]),
          .ioread_data(ioread_data_uart),
          .txd(txd),
          .rxd(rxd));
          
          
wtd16 wtd(.reset(reset),
          .clk(clock),
          .cs(wdtctrl),
          .iow(iowrite),
          .data(write_data[15:0]),
          .rst(rst));
          
          
init32 init(.prst(prst),
            .rst(rst),
            .clk(clock),
            .reset(reset));
            
endmodule
                    
