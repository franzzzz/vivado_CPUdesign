
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
É
+Loading parts and site information from %s
36*device2?
+C:/Xilinx/Vivado/2013.4/data/parts/arch.xml2default:defaultZ21-36
ê
!Parsing RTL primitives file [%s]
14*netlist2U
AC:/Xilinx/Vivado/2013.4/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
ô
*Finished parsing RTL primitives file [%s]
11*netlist2U
AC:/Xilinx/Vivado/2013.4/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
l
Command: %s
53*	vivadotcl2D
0synth_design -top minisys -part xc7a100tcsg324-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
ñ
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347
Ü
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349
õ
%s*synth2ã
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 236.195 ; gain = 71.965
2default:default
œ
synthesizing module '%s'638*oasys2
minisys2default:default2d
ND:/Vivado/project_cpu/project_cpu.srcs/sources_1/imports/MinySys-Int/minisys.v2default:default2
22default:default8@Z8-638
œ
synthesizing module '%s'638*oasys2
Ifetc322default:default2d
ND:/Vivado/project_cpu/project_cpu.srcs/sources_1/imports/MinySys-Int/Ifetc32.v2default:default2
22default:default8@Z8-638
„
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2d
ND:/Vivado/project_cpu/project_cpu.srcs/sources_1/imports/MinySys-Int/Ifetc32.v2default:default2
322default:default8@Z8-4446
·
synthesizing module '%s'638*oasys2"
dist_mem_gen_12default:default2n
Xd:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_stub.v2default:default2
162default:default8@Z8-638
Ω
Jnamed port connection '%s' does not exist for instance '%s' of module '%s'448*oasys2
q2default:default2
progrom2default:default2"
dist_mem_gen_12default:default2d
ND:/Vivado/project_cpu/project_cpu.srcs/sources_1/imports/MinySys-Int/Ifetc32.v2default:default2
322default:default8@Z8-448
ƒ
+always block has no event control specified85*oasys2d
ND:/Vivado/project_cpu/project_cpu.srcs/sources_1/imports/MinySys-Int/Ifetc32.v2default:default2
472default:default8@Z8-85
÷
failed synthesizing module '%s'285*oasys2
Ifetc322default:default2d
ND:/Vivado/project_cpu/project_cpu.srcs/sources_1/imports/MinySys-Int/Ifetc32.v2default:default2
22default:default8@Z8-285
Ó
redeclaration of %s '%s'564*oasys2
port2default:default2 
iowrite_data2default:default2d
ND:/Vivado/project_cpu/project_cpu.srcs/sources_1/imports/MinySys-Int/minisys.v2default:default2
22default:default8@Z8-564
÷
failed synthesizing module '%s'285*oasys2
minisys2default:default2d
ND:/Vivado/project_cpu/project_cpu.srcs/sources_1/imports/MinySys-Int/minisys.v2default:default2
22default:default8@Z8-285
ú
%s*synth2å
xFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 269.395 ; gain = 105.164
2default:default
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
º
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
52default:default2
22default:default2
02default:default2
42default:defaultZ4-41
E

%s failed
30*	vivadotcl2 
synth_design2default:defaultZ4-43
Ö
Command failed: %s
69*common2Y
ESynthesis failed - please see the console or run log file for details2default:defaultZ17-69
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jan 06 13:40:09 20152default:defaultZ17-206