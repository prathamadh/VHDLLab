all:	lcm.vcd
lcm.vcd:	lcm.vhdl	lcm_tb.vhdl
	ghdl	-a	-fsynopsys	lcm.vhdl
	ghdl	-a	lcm_tb.vhdl
	ghdl	-e	-fsynopsys tb
	ghdl	-r	-fsynopsys tb	--vcd=lcm.vcd	--stop-time=20us
clean:
	rm	-rf	lcm.vcd
