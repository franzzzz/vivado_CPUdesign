//存储单元
module dmemory32(read_data,address,write_data,Memwrite,clock);
output[31:0] read_data;		//RAM中读出的数据输出
input[11:0] address;		//来自执行单元算出的alu_result的低12位
input[31:0] write_data;		//来自译码单元的read_data2
input Memwrite;				//来自控制单元
input clock;				//系统时钟	

wire clk;
wire lpm_write;

assign clk=!clock;
//assign lpm_write=Memwrite && (clock);
lpm_ram_dq ram(.data(write_data),.address(address[11:2]),.we(Memwrite),.inclock(clk),.q(read_data));
defparam ram.lpm_width=32;
defparam ram.lpm_widthad=10;
defparam ram.lpm_outdata="UNREGISTERED";
defparam ram.lpm_idata="REGISTERED";
defparam ram.lpm_address_control="REGISTERED";
defparam ram.lpm_file="dmem32.mif";
endmodule 