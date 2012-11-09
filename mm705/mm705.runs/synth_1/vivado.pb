
?
Feature available: %s
81*common2
ImplementationZ17-81
:
Feature available: %s
81*common2
	SynthesisZ17-81
{
+Loading parts and site information from %s
36*device27
5/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/arch.xmlZ21-36
à
!Parsing RTL primitives file [%s]
14*netlist2M
K/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/xilinx/rtl/prims/rtl_prims.xmlZ29-14
ë
*Finished parsing RTL primitives file [%s]
11*netlist2M
K/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/xilinx/rtl/prims/rtl_prims.xmlZ29-11
/

Starting synthesis...

3*	vivadotclZ4-3
r
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7k325tZ17-347
b
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7k325tZ17-349
c
WUsing Xilinx IP in: /opt/Xilinx/14.3/ISE_DS/ISE/coregen/ip/xilinx/primary/com/xilinx/ip*common


*common
à
%s*synth2y
wstarting Rtl Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 173.973 ; gain = 60.723

¢
synthesizing module '%s'638*oasys2	
fpgaTop2[
W/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/fpgaTop_mm705.v2
58@Z8-638
é
synthesizing module '%s'638*oasys2	
IBUFGDS2C
?/opt/Xilinx/14.3/ISE_DS/PlanAhead/scripts/rt/data/unisim_comp.v2	
111728@Z8-638
L
%s*synth2=
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 

F
%s*synth27
5	Parameter DIFF_TERM bound to: FALSE - type: string 

I
%s*synth2:
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 

H
%s*synth29
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 

I
%s*synth2:
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 

•
%done synthesizing module '%s' (%s#%s)256*oasys2	
IBUFGDS2
12
92C
?/opt/Xilinx/14.3/ISE_DS/PlanAhead/scripts/rt/data/unisim_comp.v2	
111728@Z8-256
´
synthesizing module '%s'638*oasys2
mkFTop_mm7052^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkFTop_mm705.v2
348@Z8-638
´
synthesizing module '%s'638*oasys2
mkMLConsumer2^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLConsumer.v2
498@Z8-638
ò
synthesizing module '%s'638*oasys2
FIFO22R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
A
%s*synth22
0	Parameter width bound to: 128 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

Ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO22
22
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized02R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
A
%s*synth22
0	Parameter width bound to: 129 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized02
22
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized12R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
@
%s*synth21
/	Parameter width bound to: 40 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized12
22
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
¬
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMLConsumer2
32
92^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLConsumer.v2
498@Z8-256
´
synthesizing module '%s'638*oasys2
mkMLProducer2^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLProducer.v2
428@Z8-638
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized22R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
@
%s*synth21
/	Parameter width bound to: 32 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized22
32
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
¬
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMLProducer2
42
92^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLProducer.v2
428@Z8-256
ß
synthesizing module '%s'638*oasys2

mkReceiver2\
X/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v2
508@Z8-638
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized32R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
A
%s*synth22
0	Parameter width bound to: 134 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized32
42
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized42R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
?
%s*synth20
.	Parameter width bound to: 5 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized42
42
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
‘
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2\
X/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v2
3458@Z8-3536
‘
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2\
X/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v2
4168@Z8-3536
æ
%done synthesizing module '%s' (%s#%s)256*oasys2

mkReceiver2
52
92\
X/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v2
508@Z8-256
¢
synthesizing module '%s'638*oasys2

SyncResetA2W
S/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/SyncResetA.v2
438@Z8-638
C
%s*synth24
2	Parameter RSTDELAY bound to: 15 - type: integer 

π
%done synthesizing module '%s' (%s#%s)256*oasys2

SyncResetA2
62
92W
S/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/SyncResetA.v2
438@Z8-256
£
synthesizing module '%s'638*oasys2

mkSender2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
508@Z8-638
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized52R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
@
%s*synth21
/	Parameter width bound to: 16 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized52
62
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
“
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
4218@Z8-3536
“
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
4438@Z8-3536
“
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
5068@Z8-3536
“
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
5418@Z8-3536
∫
%done synthesizing module '%s' (%s#%s)256*oasys2

mkSender2
72
92Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
508@Z8-256
¬
%done synthesizing module '%s' (%s#%s)256*oasys2
mkFTop_mm7052
82
92^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkFTop_mm705.v2
348@Z8-256
π
%done synthesizing module '%s' (%s#%s)256*oasys2	
fpgaTop2
92
92[
W/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/fpgaTop_mm705.v2
58@Z8-256
â
%s*synth2z
xfinished Rtl Elaboration : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 451.277 ; gain = 338.027

(
%s*synth2
Report Check Netlist: 

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A     |Item             |Errors|Warnings|Status|Description      

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A1    |multi_driven_nets|     0|       0|Passed|Multi driven nets

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

J
-Analyzing %s Unisim elements for replacement
17*netlist2
1Z29-17
O
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28
ï
Loading clock regions from %s
13*device2^
\/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/xilinx/kintex7/kintex7/xc7k325t/ClockRegion.xmlZ21-13
ñ
Loading clock buffers from %s
11*device2_
]/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/xilinx/kintex7/kintex7/xc7k325t/ClockBuffers.xmlZ21-11
í
&Loading clock placement rules from %s
318*place2R
P/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/xilinx/kintex7/ClockPlacerRules.xmlZ30-318
ê
)Loading package pin functions from %s...
17*device2N
L/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/xilinx/kintex7/PinFunctions.xmlZ21-17
í
Loading package from %s
16*device2a
_/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/xilinx/kintex7/kintex7/xc7k325t/ffg900/Package.xmlZ21-16
Ö
Loading io standards from %s
15*device2O
M/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/./parts/xilinx/kintex7/IOStandards.xmlZ21-15
ë
+Loading device configuration modes from %s
14*device2M
K/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/parts/xilinx/kintex7/ConfigModes.xmlZ21-14
å
/Loading list of drcs for the architecture : %s
17*drc2G
E/opt/Xilinx/14.3/ISE_DS/PlanAhead/data/./parts/xilinx/kintex7/drc.xmlZ23-17
5

Processing XDC Constraints
244*projectZ1-262
â
Parsing XDC File [%s]
179*designutils2S
Q/home/cms/projects/mm705_v3/mm705/mm705.srcs/constrs_1/imports/mm705_v3/kc705.xdcZ20-179
í
Finished Parsing XDC File [%s]
178*designutils2S
Q/home/cms/projects/mm705_v3/mm705/mm705.srcs/constrs_1/imports/mm705_v3/kc705.xdcZ20-178
?
&Completed Processing XDC Constraints

245*projectZ1-263
ä
!Unisim Transformation Summary:
%s111*project2N
L  A total of 1 instances were transformed.
  IBUFGDS => IBUFDS: 1 instances
Z1-111
1
%Phase 0 | Netlist Checksum: 386e0986
*common
c
WUsing Xilinx IP in: /opt/Xilinx/14.3/ISE_DS/ISE/coregen/ip/xilinx/primary/com/xilinx/ip*common


*common
Ñ
%s*synth2u
sstarting synthesize : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 563.496 ; gain = 450.246

¢
synthesizing module '%s'638*oasys2	
fpgaTop2[
W/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/fpgaTop_mm705.v2
58@Z8-638
é
synthesizing module '%s'638*oasys2	
IBUFGDS2C
?/opt/Xilinx/14.3/ISE_DS/PlanAhead/scripts/rt/data/unisim_comp.v2	
111728@Z8-638
L
%s*synth2=
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 

F
%s*synth27
5	Parameter DIFF_TERM bound to: FALSE - type: string 

I
%s*synth2:
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 

H
%s*synth29
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 

I
%s*synth2:
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 

•
%done synthesizing module '%s' (%s#%s)256*oasys2	
IBUFGDS2
12
92C
?/opt/Xilinx/14.3/ISE_DS/PlanAhead/scripts/rt/data/unisim_comp.v2	
111728@Z8-256
´
synthesizing module '%s'638*oasys2
mkFTop_mm7052^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkFTop_mm705.v2
348@Z8-638
´
synthesizing module '%s'638*oasys2
mkMLConsumer2^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLConsumer.v2
498@Z8-638
ò
synthesizing module '%s'638*oasys2
FIFO22R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
A
%s*synth22
0	Parameter width bound to: 128 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

Ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO22
22
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized02R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
A
%s*synth22
0	Parameter width bound to: 129 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized02
22
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized12R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
@
%s*synth21
/	Parameter width bound to: 40 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized12
22
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
¬
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMLConsumer2
32
92^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLConsumer.v2
498@Z8-256
´
synthesizing module '%s'638*oasys2
mkMLProducer2^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLProducer.v2
428@Z8-638
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized22R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
@
%s*synth21
/	Parameter width bound to: 32 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized22
32
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
¬
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMLProducer2
42
92^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkMLProducer.v2
428@Z8-256
ß
synthesizing module '%s'638*oasys2

mkReceiver2\
X/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v2
508@Z8-638
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized32R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
A
%s*synth22
0	Parameter width bound to: 134 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized32
42
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized42R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
?
%s*synth20
.	Parameter width bound to: 5 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized42
42
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
‘
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2\
X/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v2
3458@Z8-3536
‘
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2\
X/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v2
4168@Z8-3536
æ
%done synthesizing module '%s' (%s#%s)256*oasys2

mkReceiver2
52
92\
X/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkReceiver.v2
508@Z8-256
¢
synthesizing module '%s'638*oasys2

SyncResetA2W
S/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/SyncResetA.v2
438@Z8-638
C
%s*synth24
2	Parameter RSTDELAY bound to: 15 - type: integer 

π
%done synthesizing module '%s' (%s#%s)256*oasys2

SyncResetA2
62
92W
S/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/SyncResetA.v2
438@Z8-256
£
synthesizing module '%s'638*oasys2

mkSender2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
508@Z8-638
®
synthesizing module '%s'638*oasys2
FIFO2__parameterized52R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-638
@
%s*synth21
/	Parameter width bound to: 16 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

ø
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized52
62
92R
N/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/Verilog/FIFO2.v2
418@Z8-256
“
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
4218@Z8-3536
“
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
4438@Z8-3536
“
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
5068@Z8-3536
“
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2
parallel_case2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
5418@Z8-3536
à
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
5068@Z8-3537
∫
%done synthesizing module '%s' (%s#%s)256*oasys2

mkSender2
72
92Z
V/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkSender.v2
508@Z8-256
¬
%done synthesizing module '%s' (%s#%s)256*oasys2
mkFTop_mm7052
82
92^
Z/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/rtl/mkFTop_mm705.v2
348@Z8-256
π
%done synthesizing module '%s' (%s#%s)256*oasys2	
fpgaTop2
92
92[
W/home/cms/projects/mm705_v3/mm705/mm705.srcs/sources_1/imports/mm705_v3/fpgaTop_mm705.v2
58@Z8-256
Ñ
%s*synth2u
sfinished synthesize : Time (s): cpu = 00:01:00 ; elapsed = 00:01:01 . Memory (MB): peak = 668.473 ; gain = 555.223



*common
]
Q---------------------------------------------------------------------------------*common


*common
6
*Applying 'set_property' XDC Constraints...*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
£
%s*synth2ì
êFinished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:00 ; elapsed = 00:01:01 . Memory (MB): peak = 668.473 ; gain = 555.223

]
Q---------------------------------------------------------------------------------*common


*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
/
#Loading Part and Timing Information*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
*
Loading part: xc7k325tffg900-1*common


*common
{
%s*synth2l
jPart Resources:
DSPs: 840 (col length:140)
BRAMs: 890 (col length: RAMB8 0 RAMB16 0 RAMB18 140 RAMB36 70)

]
Q---------------------------------------------------------------------------------*common


*common
ü
%s*synth2è
åFinished Loading Part and Timing Information : Time (s): cpu = 00:01:08 ; elapsed = 00:01:09 . Memory (MB): peak = 668.473 ; gain = 555.223

]
Q---------------------------------------------------------------------------------*common


*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
%
RTL Component Statistics *common


*common
]
Q---------------------------------------------------------------------------------*common


*common
0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     32 Bit       Adders := 9     

?
%s*synth20
.	   2 Input     16 Bit       Adders := 8     

?
%s*synth20
.	   2 Input      8 Bit       Adders := 70    

?
%s*synth20
.	   4 Input      6 Bit       Adders := 2     

?
%s*synth20
.	   3 Input      6 Bit       Adders := 4     

?
%s*synth20
.	   2 Input      1 Bit       Adders := 1     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              256 Bit    Registers := 2     

?
%s*synth20
.	              192 Bit    Registers := 1     

?
%s*synth20
.	              134 Bit    Registers := 4     

?
%s*synth20
.	              129 Bit    Registers := 12    

?
%s*synth20
.	              128 Bit    Registers := 6     

?
%s*synth20
.	               80 Bit    Registers := 1     

?
%s*synth20
.	               40 Bit    Registers := 4     

?
%s*synth20
.	               33 Bit    Registers := 3     

?
%s*synth20
.	               32 Bit    Registers := 12    

?
%s*synth20
.	               16 Bit    Registers := 9     

?
%s*synth20
.	                8 Bit    Registers := 8     

?
%s*synth20
.	                6 Bit    Registers := 4     

?
%s*synth20
.	                5 Bit    Registers := 2     

?
%s*synth20
.	                2 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 45    


%s*synth2
+---Muxes : 

?
%s*synth20
.	   2 Input    129 Bit        Muxes := 3     

?
%s*synth20
.	   4 Input    128 Bit        Muxes := 1     

?
%s*synth20
.	   3 Input    128 Bit        Muxes := 2     

?
%s*synth20
.	   2 Input    128 Bit        Muxes := 2     

?
%s*synth20
.	   2 Input     33 Bit        Muxes := 3     

?
%s*synth20
.	   3 Input     32 Bit        Muxes := 2     

?
%s*synth20
.	   2 Input     32 Bit        Muxes := 7     

?
%s*synth20
.	   2 Input     16 Bit        Muxes := 3     

?
%s*synth20
.	   4 Input     16 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 54    

?
%s*synth20
.	   2 Input      6 Bit        Muxes := 1     

?
%s*synth20
.	   4 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      5 Bit        Muxes := 4     

?
%s*synth20
.	   6 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   4 Input      2 Bit        Muxes := 2     

?
%s*synth20
.	   2 Input      2 Bit        Muxes := 3     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 59    



*common
]
Q---------------------------------------------------------------------------------*common


*common
.
"Finished RTL Component Statistics *common


*common
]
Q---------------------------------------------------------------------------------*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
-
!Start Cross Boundary Optimization*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[31] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[30] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[29] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[28] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[27] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[26] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[25] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[24] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[23] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[22] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[21] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[20] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[19] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[18] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[17] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[16] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[15] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[14] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[13] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[12] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[11] 2	
reg__12Z8-3332
Ä
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[10] 2	
reg__12Z8-3332

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[9] 2	
reg__12Z8-3332

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[8] 2	
reg__12Z8-3332

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[7] 2	
reg__12Z8-3332

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[6] 2	
reg__12Z8-3332

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[5] 2	
reg__12Z8-3332

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrect_reg[4] 2	
reg__12Z8-3332
É
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[4] 2	
counterZ8-3332
É
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[5] 2	
counterZ8-3332
É
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[6] 2	
counterZ8-3332
É
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[7] 2	
counterZ8-3332
É
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[8] 2	
counterZ8-3332
É
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[9] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[10] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[11] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[12] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[13] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[14] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[15] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[16] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[17] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[18] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[19] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[20] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[21] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[22] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[23] 2	
counterZ8-3332
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[24] 2	
counterZ8-3332
Ø
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-33322
50Z17-14
Ñ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\incorrectMeta_reg[25] 2	
counterZ8-3332
]
Q---------------------------------------------------------------------------------*common


*common
ó
%s*synth2á
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:01:09 ; elapsed = 00:01:10 . Memory (MB): peak = 668.473 ; gain = 555.223

]
Q---------------------------------------------------------------------------------*common


*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
#
Start Area Optimization*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
x
6propagating constant %s across sequential element (%s)3333*oasys2
12"
 \ftop/producer1 /\lfsr_r_reg[0] Z8-3333
y
6propagating constant %s across sequential element (%s)3333*oasys2
02#
!\ftop/producer1 /\lfsr_r_reg[29] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer1 /dataInitVal_reg_inferred/\dataInitVal_reg[6] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer1 /dataInitVal_reg_inferred/\dataInitVal_reg[7] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer1 /dataInitVal_reg_inferred/\dataInitVal_reg[1] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
12@
>\ftop/producer1 /dataInitVal_reg_inferred/\dataInitVal_reg[0] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer1 /dataInitVal_reg_inferred/\dataInitVal_reg[4] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer1 /dataInitVal_reg_inferred/\dataInitVal_reg[3] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer1 /dataInitVal_reg_inferred/\dataInitVal_reg[2] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer1 /dataInitVal_reg_inferred/\dataInitVal_reg[5] Z8-3333
z
6propagating constant %s across sequential element (%s)3333*oasys2
02$
"\ftop/producer1 /\lengthR_reg[29] Z8-3333
r
6propagating constant %s across sequential element (%s)3333*oasys2
02
\ftop/sender /\fh_reg[53] Z8-3333
r
6propagating constant %s across sequential element (%s)3333*oasys2
02
\ftop/sender /\mh_reg[93] Z8-3333
x
6propagating constant %s across sequential element (%s)3333*oasys2
12"
 \ftop/producer2 /\lfsr_r_reg[0] Z8-3333
y
6propagating constant %s across sequential element (%s)3333*oasys2
02#
!\ftop/producer2 /\lfsr_r_reg[23] Z8-3333
z
6propagating constant %s across sequential element (%s)3333*oasys2
02$
"\ftop/producer2 /\lengthR_reg[23] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer2 /dataInitVal_reg_inferred/\dataInitVal_reg[6] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer2 /dataInitVal_reg_inferred/\dataInitVal_reg[7] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
12@
>\ftop/producer2 /dataInitVal_reg_inferred/\dataInitVal_reg[0] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer2 /dataInitVal_reg_inferred/\dataInitVal_reg[1] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer2 /dataInitVal_reg_inferred/\dataInitVal_reg[2] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer2 /dataInitVal_reg_inferred/\dataInitVal_reg[3] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer2 /dataInitVal_reg_inferred/\dataInitVal_reg[4] Z8-3333
ñ
6propagating constant %s across sequential element (%s)3333*oasys2
02@
>\ftop/producer2 /dataInitVal_reg_inferred/\dataInitVal_reg[5] Z8-3333
á
6propagating constant %s across sequential element (%s)3333*oasys2
021
/\ftop/producer1 /\nextLengthF/data1_reg_reg[7] Z8-3333
à
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer2 /\nextLengthF/data1_reg_reg[24] Z8-3333
]
Q---------------------------------------------------------------------------------*common


*common
ã
%s*synth2|
zFinished Area Optimization : Time (s): cpu = 00:01:20 ; elapsed = 00:01:22 . Memory (MB): peak = 676.508 ; gain = 563.258

]
Q---------------------------------------------------------------------------------*common


*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
%
Start Timing Optimization*common


*common
]
Q---------------------------------------------------------------------------------*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
+
Applying XDC Timing Constraints*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
õ
%s*synth2ã
àFinished Applying XDC Timing Constraints : Time (s): cpu = 00:01:20 ; elapsed = 00:01:22 . Memory (MB): peak = 676.508 ; gain = 563.258

]
Q---------------------------------------------------------------------------------*common


*common


*common
Ç
%s*synth2s
qinfo: (0) optimizing '\ftop/sender /\byteShifter_vec_reg[208] /D' (path group default) @ -1673.0ps(1/1) (0 secs)

G
%s*synth28
6info: start optimizing equally critical endpoints ...

G
%s*synth28
6info: done optimizing (1) equally critical endpoints.

:
%s*synth2+
)info: done optimizing path group default

?
%s*synth20
.info: start optimizing sub-critical range ...

R
%s*synth2C
Ainfo: done optimizing sub-critical range for path group default.

;
%s*synth2,
*info: done optimizing sub-critical range.

]
Q---------------------------------------------------------------------------------*common


*common
ç
%s*synth2~
|Finished Timing Optimization : Time (s): cpu = 00:01:25 ; elapsed = 00:01:27 . Memory (MB): peak = 676.508 ; gain = 563.258

]
Q---------------------------------------------------------------------------------*common


*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
$
Start Technology Mapping*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[15] Z8-3333
Ö
6propagating constant %s across sequential element (%s)3333*oasys2
02/
-\ftop/producer1/nextLengthF/data0_reg_reg[7] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[23] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[31] Z8-3333
Ö
6propagating constant %s across sequential element (%s)3333*oasys2
02/
-\ftop/producer1/nextLengthF/data0_reg_reg[3] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[19] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[27] Z8-3333
Ö
6propagating constant %s across sequential element (%s)3333*oasys2
02/
-\ftop/producer1/nextLengthF/data0_reg_reg[0] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[16] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[24] Z8-3333
Ö
6propagating constant %s across sequential element (%s)3333*oasys2
02/
-\ftop/producer1/nextLengthF/data0_reg_reg[4] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[20] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[28] Z8-3333
Ö
6propagating constant %s across sequential element (%s)3333*oasys2
02/
-\ftop/producer1/nextLengthF/data0_reg_reg[2] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[18] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[26] Z8-3333
Ö
6propagating constant %s across sequential element (%s)3333*oasys2
02/
-\ftop/producer1/nextLengthF/data0_reg_reg[1] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[17] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[25] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[13] Z8-3333
Ö
6propagating constant %s across sequential element (%s)3333*oasys2
02/
-\ftop/producer1/nextLengthF/data0_reg_reg[5] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[21] Z8-3333
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[29] Z8-3333
Ø
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-33332
50Z17-14
Ü
6propagating constant %s across sequential element (%s)3333*oasys2
020
.\ftop/producer1/nextLengthF/data0_reg_reg[14] Z8-3333
]
Q---------------------------------------------------------------------------------*common


*common
å
%s*synth2}
{Finished Technology Mapping : Time (s): cpu = 00:01:41 ; elapsed = 00:01:43 . Memory (MB): peak = 768.195 ; gain = 654.945

]
Q---------------------------------------------------------------------------------*common


*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common

Start IO Insertion*common


*common
]
Q---------------------------------------------------------------------------------*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
0
$Start Flattening Before IO Insertion*common


*common
]
Q---------------------------------------------------------------------------------*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
3
'Finished Flattening Before IO Insertion*common


*common
]
Q---------------------------------------------------------------------------------*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
!
Final Netlist Cleanup*common


*common
]
Q---------------------------------------------------------------------------------*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
*
Finished Final Netlist Cleanup*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
Ü
%s*synth2w
uFinished IO Insertion : Time (s): cpu = 00:01:42 ; elapsed = 00:01:45 . Memory (MB): peak = 768.195 ; gain = 654.945

]
Q---------------------------------------------------------------------------------*common


*common


*common
(
%s*synth2
Report Check Netlist: 

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A     |Item             |Errors|Warnings|Status|Description      

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A1    |multi_driven_nets|     0|       0|Passed|Multi driven nets

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------



*common
]
Q---------------------------------------------------------------------------------*common


*common
.
"Start renaming generated instances*common


*common
]
Q---------------------------------------------------------------------------------*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
%
Rebuilding User Hierarchy*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
ï
%s*synth2Ö
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:01:43 ; elapsed = 00:01:45 . Memory (MB): peak = 768.195 ; gain = 654.945

]
Q---------------------------------------------------------------------------------*common


*common


*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
$
Writing Synthesis Report*common


*common
]
Q---------------------------------------------------------------------------------*common


*common
%
%s*synth2
Report BlackBoxes: 

/
%s*synth2 
-----+-------------+---------

/
%s*synth2 
     |BlackBox name|Instances

/
%s*synth2 
-----+-------------+---------

/
%s*synth2 
-----+-------------+---------

%
%s*synth2
Report Cell Usage: 

%
%s*synth2
-----+-------+-----

%
%s*synth2
     |Cell   |Count

%
%s*synth2
-----+-------+-----

%
%s*synth2
1    |BUFG   |    1

%
%s*synth2
2    |CARRY4 |   81

%
%s*synth2
3    |LUT1   |  236

%
%s*synth2
4    |LUT2   |  504

%
%s*synth2
5    |LUT3   |  512

%
%s*synth2
6    |LUT4   |  531

%
%s*synth2
7    |LUT5   | 1094

%
%s*synth2
8    |LUT6   | 3499

%
%s*synth2
9    |MUXCY_L|    5

%
%s*synth2
10   |XORCY  |   10

%
%s*synth2
11   |FD     | 1474

%
%s*synth2
12   |FDC    |   16

%
%s*synth2
13   |FDE    | 1320

%
%s*synth2
14   |FDR    |  570

%
%s*synth2
15   |FDRE   |  479

%
%s*synth2
16   |FDS    |    2

%
%s*synth2
17   |FDSE   |  114

%
%s*synth2
18   |IBUF   |    1

%
%s*synth2
19   |IBUFGDS|    1

%
%s*synth2
20   |OBUF   |    8

%
%s*synth2
-----+-------+-----

)
%s*synth2
Report Instance Areas: 

L
%s*synth2=
;-----+----------------------+-----------------------+-----

L
%s*synth2=
;     |Instance              |Module                 |Cells

L
%s*synth2=
;-----+----------------------+-----------------------+-----

L
%s*synth2=
;1    |top                   |                       |10458

L
%s*synth2=
;2    |  ftop                |mkFTop_mm705           |10447

L
%s*synth2=
;3    |    producer2         |mkMLProducer           |  983

L
%s*synth2=
;4    |      mesgEgressF     |FIFO2__parameterized0_8|  602

L
%s*synth2=
;5    |      nextLengthF     |FIFO2__parameterized2_9|   30

L
%s*synth2=
;6    |    consumer          |mkMLConsumer           | 2090

L
%s*synth2=
;7    |      dataIngressRcvF |FIFO2                  |  465

L
%s*synth2=
;8    |      mesgIngressRcvF |FIFO2__parameterized0_4|  398

L
%s*synth2=
;9    |      dataIngressExpF |FIFO2_5                |  393

L
%s*synth2=
;10   |      mesgIngressExpF |FIFO2__parameterized0_6|  398

L
%s*synth2=
;11   |      metaIngressRcvF |FIFO2__parameterized1  |  166

L
%s*synth2=
;12   |      metaIngressExpF |FIFO2__parameterized1_7|  146

L
%s*synth2=
;13   |    sender            |mkSender               | 3417

L
%s*synth2=
;14   |      mesgIngressF    |FIFO2__parameterized0_2|  544

L
%s*synth2=
;15   |      datagramEgressF |FIFO2__parameterized3_3|  636

L
%s*synth2=
;16   |      fcF             |FIFO2__parameterized5  | 1528

L
%s*synth2=
;17   |    rstndb            |SyncResetA             |   17

L
%s*synth2=
;18   |    receiver          |mkReceiver             | 2899

L
%s*synth2=
;19   |      datagramIngressF|FIFO2__parameterized3  | 1106

L
%s*synth2=
;20   |      nbValF          |FIFO2__parameterized4  |  365

L
%s*synth2=
;21   |      mesgEgressF     |FIFO2__parameterized0_1| 1092

L
%s*synth2=
;22   |    producer1         |mkMLProducer_0         |  962

L
%s*synth2=
;23   |      mesgEgressF     |FIFO2__parameterized0  |  556

L
%s*synth2=
;24   |      nextLengthF     |FIFO2__parameterized2  |   55

L
%s*synth2=
;-----+----------------------+-----------------------+-----

]
Q---------------------------------------------------------------------------------*common


*common
î
%s*synth2Ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:01:43 ; elapsed = 00:01:45 . Memory (MB): peak = 768.195 ; gain = 654.945

]
Q---------------------------------------------------------------------------------*common


*common


*common
µ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2#
!Synthesis Optimization Complete: 2

00:01:412

00:01:432	
768.1952	
614.535Z17-268
M
-Analyzing %s Unisim elements for replacement
17*netlist2
3388Z29-17
O
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28
∆
!Unisim Transformation Summary:
%s111*project2â
Ü  A total of 3393 instances were transformed.
  (MUXCY,XORCY) => CARRY4: 10 instances
  FD => FDCE: 1474 instances
  FDC => FDCE: 16 instances
  FDE => FDCE: 1320 instances
  FDR => FDRE: 570 instances
  FDS => FDSE: 2 instances
  IBUFGDS => IBUFDS: 1 instances
Z1-111
1
%Phase 0 | Netlist Checksum: cd97e4f8
*common
:
Releasing license: %s
83*common2
	SynthesisZ17-83
¢
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:462

00:01:482	
793.2272	
639.566Z17-268
Å
ureport_utilization: Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.03 . Memory (MB): peak = 793.227 ; gain = 0.000
*common
S
Exiting %s at %s...
206*common2
Vivado2
Thu Nov  8 15:30:36 2012Z17-206