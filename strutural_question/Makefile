all: 2x1mux.vcd
2x1mux.vcd:	mux.vhdl	mux_tb.vhdl
	ghdl	-a	-fsynopsys	mux.vhdl
	ghdl	-a	-fsynopsys	mux_tb.vhdl
	ghdl	-e	-fsynopsys	mux_tb
	ghdl	-r	-fsynopsys	mux_tb	--vcd=2x1mux.vcd	--stop-time=20us
clean:
	rm	-rf	2x1mux.vcd
