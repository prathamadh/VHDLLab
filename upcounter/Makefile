
all:	uc.vcd
uc.vcd:	uc.vhdl	uc_tb.vhdl
	ghdl	-a	-fsynopsys	uc.vhdl
	ghdl	-a	uc_tb.vhdl
	ghdl	-e	-fsynopsys tb
	ghdl	-r	-fsynopsys tb	--vcd=uc.vcd	--stop-time=20us
clean:
	rm	-rf	uc.vcd
