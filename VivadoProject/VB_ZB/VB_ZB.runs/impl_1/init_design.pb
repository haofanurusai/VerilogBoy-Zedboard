
o
Command: %s
53*	vivadotcl2>
*link_design -top top -part xc7z020clg484-12default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2J
6c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll.dcp2default:default2
pll2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2T
@c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/CartTobu/CartTobu.dcp2default:default2
tobu2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2R
>c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/vga_mem/vga_mem.dcp2default:default2%
vga_mixer/vga_mem2default:defaultZ1-454h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1872default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.32default:defaultZ1-479h px? 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt2)
pll/inst/clkin1_ibufg2default:default2#
CLK_100MHZ_FPGA2default:defaultZ31-35h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2!
pll/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2R
<c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll_board.xdc2default:default2
pll/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2R
<c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll_board.xdc2default:default2
pll/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2L
6c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll.xdc2default:default2
pll/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2L
6c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2L
6c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll.xdc2default:default2
572default:default8@Z38-2h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:092default:default2
00:00:092default:default2
1279.3792default:default2
548.9302default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2L
6c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll.xdc2default:default2
pll/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default8Z20-179h px? 
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'buttons[7]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
362default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'buttons[6]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
382default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'buttons[5]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
402default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'buttons[4]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
422default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'buttons[3]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
442default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'buttons[2]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
462default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'buttons[1]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
482default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'buttons[0]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
502default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_b[7]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
522default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_b[6]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
562default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_b[5]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
602default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_b[4]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
642default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_g[7]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
682default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_g[6]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
722default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_g[5]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
762default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_g[4]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
802default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_r[7]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
842default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_r[6]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
882default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_r[5]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
922default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'vga_r[4]'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
962default:default8@Z17-69h px?
?
Command failed: %s
69*common2G
3Cannot change direction of connected port 'AC_ADR0'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1002default:default8@Z17-69h px?
?
Command failed: %s
69*common2G
3Cannot change direction of connected port 'AC_ADR1'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1042default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'AC_GPIO0'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1082default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'AC_GPIO2'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1142default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'AC_GPIO3'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1162default:default8@Z17-69h px?
?
Command failed: %s
69*common2G
3Cannot change direction of connected port 'AC_MCLK'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1182default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'AC_SCK'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1222default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'AC_SDA'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1262default:default8@Z17-69h px?
?
Command failed: %s
69*common2O
;Cannot change direction of connected port 'CLK_100MHZ_FPGA'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1302default:default8@Z17-69h px?
?
Command failed: %s
69*common2E
1Cannot change direction of connected port 'reset'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1342default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'vga_hs'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1382default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'vga_vs'2default:default2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default2
1422default:default8@Z17-69h px?
?
Finished Parsing XDC File [%s]
178*designutils2I
3C:/Users/Tom/VB_ZB/VB_ZB.srcs/constrs_1/new/top.xdc2default:default8Z20-178h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12default:default2
32default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1279.3792default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 3 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 1 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 2 instances
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
22default:default2
322default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:152default:default2
00:00:162default:default2
1279.3792default:default2
911.6212default:defaultZ17-268h px? 


End Record