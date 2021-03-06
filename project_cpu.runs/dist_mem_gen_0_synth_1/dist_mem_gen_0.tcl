# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0

read_ip d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.xci
set_property used_in_implementation false [get_files d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Vivado/project_cpu/project_cpu.data/wt [current_project]
set_property parent.project_dir D:/Vivado/project_cpu [current_project]
synth_design -top dist_mem_gen_0 -part xc7a100tcsg324-1 -mode out_of_context

rename_ref -prefix_all dist_mem_gen_0
write_checkpoint -noxdef dist_mem_gen_0.dcp
report_utilization -file dist_mem_gen_0_utilization_synth.rpt -pb dist_mem_gen_0_utilization_synth.pb
if { [catch {
  file copy -force D:/Vivado/project_cpu/project_cpu.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0.dcp d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp
  write_verilog -force -mode synth_stub d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.v
  write_verilog -force -mode funcsim d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_funcsim.v
  write_vhdl -force -mode funcsim d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_funcsim.vhdl
} _RESULT ] } { 
  puts "Critical Warning: Unable to successfully create or copy supporting IP files."
}
