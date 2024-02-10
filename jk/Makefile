all:	jk.vcd
jk.vcd:	jk.vhdl	jk_tb.vhdl
	ghdl	-a	-fsynopsys	jk.vhdl
	ghdl	-a	-fsynopsys	jk_tb.vhdl
	ghdl	-e	-fsynopsys	tb
	ghdl	-r	-fsynopsys	tb	--vcd=jk.vcd	--stop-time=20us
clean:
	rm	-rf	jk.vcd