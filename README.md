# 8-Bit ALU — Verilog HDL

A modular 8-bit Arithmetic Logic Unit designed and simulated using Verilog HDL in Xilinx Vivado.

---

## Overview

The Arithmetic Logic Unit (ALU) is the core digital circuit inside a processor responsible for performing arithmetic calculations and logical comparisons. This project implements an 8-bit ALU capable of 8 operations, controlled by a 3-bit SEL signal.

---

## Operations

| SEL | Operation    |
|-----|--------------|
| 000 | Addition     |
| 001 | Subtraction  |
| 010 | AND          |
| 011 | OR           |
| 100 | XOR          |
| 101 | NOT          |
| 110 | Left Shift   |
| 111 | Right Shift  |

---

## Block Diagram

```
Inputs:
  A [7:0]     ──┐
  B [7:0]     ──┤
  SEL [2:0]   ──┤  8-BIT ALU  ──── RESULT [7:0]
  CARRY_IN    ──┘             ──── CARRY_OUT
                               ──── ZERO FLAG
```

---

## Project Structure

```
8-BIT-ALU/
├── ALU.v          # Top-level module
├── ALU_tb.v       # Testbench
└── README.md
```

Each operation is implemented as a separate self-contained Verilog module (adder, subtractor, AND, OR, XOR, NOT, shifter). All modules are instantiated inside `ALU.v`, which uses a `case` statement on the SEL signal to route the correct output.

---

## Tools

| Tool          | Purpose                        |
|---------------|--------------------------------|
| Verilog HDL   | Hardware description           |
| Xilinx Vivado | Design, simulation, synthesis  |
| Git           | Version control                |

---

## Simulation

The testbench (`ALU_tb.v`) covers all 8 opcodes with multiple input combinations including edge cases — overflow, zero result, and all-ones input. Waveform outputs match expected truth table values for every operation.

---

## Synthesis Results

| Metric              | Value        |
|---------------------|--------------|
| Total On-Chip Power | 5.125 W      |
| Dynamic Power       | 5.058 W (99%)|
| Slice LUTs Used     | 82 (1%)      |
| Bonded IOB          | 30 (20%)     |
| Junction Temperature| 52.0°C       |

**Power Breakdown:** I/O — 4.442W (88%) · Logic — 0.328W (6%) · Signals — 0.288W (6%)

---

## Observation

The ALU correctly performed the selected operation based on the control signal while maintaining stable outputs. Arithmetic operations required more hardware resources compared to simple logical operations. Vivado optimization reduced unnecessary logic during synthesis, improving resource efficiency.

---

## Result

The ALU was successfully designed and implemented using Verilog HDL in Vivado. Simulation results verified correct operation of all arithmetic and logical functions for different input combinations. The synthesized design met the required functional specifications and produced the expected outputs.

---

## Author

**Uday Jha**  
uday.jha2023@gmail.com · 8602005640

> GitHub: [UDAY-JHA/8-BIT-ALU](https://github.com/UDAY-JHA/8-BIT-ALU)
