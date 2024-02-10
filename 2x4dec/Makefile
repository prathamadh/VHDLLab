all:	dec.vcd

dec.vcd:	dec.vhdl	dec_tb.vhdl
	ghdl	-a	-fsynopsys	dec.vhdl
	ghdl	-a	-fsynopsys	dec_tb.vhdl
	ghdl	-e	-fsynopsys	tb
	ghdl	-r	-fsynopsys	tb	--vcd=dec.vcd
clean:
	rm	-rf	dec.vcd