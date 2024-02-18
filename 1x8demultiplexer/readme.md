# README: 1x8 Demultiplexer VHDL Implementation

## Overview
This VHDL code implements a 1x8 demultiplexer, which takes a single input signal (`A`) and directs it to one of eight output lines based on the control signals (`S2`, `S1`, `S0`). This README provides an explanation of the code structure and functionality.

## Files
- **demux.vhdl**: Contains the VHDL code for the demultiplexer.
- **demux_tb.vhdl**: This file, providing documentation for the VHDL implementation.

## Code Explanation

### Entity Declaration
```vhdl
ENTITY demultiplexer IS
PORT(
    A, S2, S1, S0: IN STD_LOGIC;
    D7, D6, D5, D4, D3, D2, D1, D0: OUT STD_LOGIC
);
END demultiplexer;
```
# 1x8 Demultiplexer
![D_flipflop](../Images/1x8muxnew.png)
