all:	fa.vcd
fa.vcd:	fulladdder.vhdl	fulladder_tb.vhdl
	ghdl	-a	-fsynopsys	fulladdder.vhdl
	ghdl	-a	-fsynopsys	fulladder_tb.vhdl
	ghdl	-e	-fsynopsys	tb
	ghdl	-r	-fsynopsys	tb	--vcd=fa.vcd
clean:
	rm	-rf	fa.vcd