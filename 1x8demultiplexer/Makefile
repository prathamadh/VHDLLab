all:	1x8demux.vcd
1x8demux.vcd:	demux.vhdl	demux_tb.vhdl
	ghdl	-a	-fsynopsys	demux.vhdl
	ghdl	-a	-fsynopsys	demux_tb.vhdl
	ghdl	-e	-fsynopsys	demultiplexer_tst
	ghdl	-r	-fsynopsys	demultiplexer_tst	--vcd=1x8demux.vcd
clean:
	rm	-rf	1x8demux.vcd