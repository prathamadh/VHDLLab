all:	sd.vcd
sd.vcd:	sd.vhdl	sd_tb.vhdl
	ghdl	-a	-fsynopsys	sd.vhdl
	ghdl	-a	-fsynopsys	sd_tb.vhdl
	ghdl	-e	-fsynopsys	tb
	ghdl	-r	-fsynopsys	tb 	--vcd=sd.vcd	--stop-time=20us
clean:
	rm	-rf	sd.vcd
