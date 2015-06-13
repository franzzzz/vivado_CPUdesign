//�洢��Ԫ
module dmemory32(read_data,address,write_data,Memwrite,clock);
output[31:0] read_data;		//RAM�ж������������
input[11:0] address;		//����ִ�е�Ԫ�����alu_result�ĵ�12λ
input[31:0] write_data;		//�������뵥Ԫ��read_data2
input Memwrite;				//���Կ��Ƶ�Ԫ
input clock;				//ϵͳʱ��	

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