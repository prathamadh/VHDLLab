
all:	gcd.vcd
gcd.vcd:	gcd.vhdl	gcd_tb.vhdl
	ghdl	-a	-fsynopsys	gcd.vhdl
	ghdl	-a	gcd_tb.vhdl
	ghdl	-e	-fsynopsys tb
	ghdl	-r	-fsynopsys tb	--vcd=result.vcd	--stop-time=2000us
clean:
	rm	-rf	gcd.vcd
