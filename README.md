# Verilog_HDL Repository
 This repository contains Verilog HDL programs for the VTU Curriculum's HDL Laboratory with subject code 18ECL58. These programs cover a range of topics and questions as per the syllabus for the HDL Laboratory.
# Contents
## PART A: Programming

### Combinational Design

#### 1. 2 to 4 Decoder
- Verilog program for 2 to 4 decoder realization using NAND gates only (structural model)
- Test bench to verify the design

#### 2. 8 to 3 Encoder
- Verilog program for an 8 to 3 encoder with priority and without priority (behavioral model)

#### 3. 8 to 1 Multiplexer
- Verilog program for an 8 to 1 multiplexer using case statements and if statements

#### 4. Binary to Gray Converter
- Verilog program for a 4-bit binary to gray converter using a 1-bit gray to binary converter, a 1-bit adder, and subtractor

## Full Adder with Logic Gates
### 5. Full Adder with Logical Operations
- Verilog model for a full adder with functionality to perform logical operations of XOR, XNOR, AND, and OR gates
- Test bench with appropriate input patterns to verify the modeled behavior

## ALU Design
### 6. 32-bit ALU
- Verilog program for a 32-bit ALU with the functionality specified in Table 1
- Test bench to verify the functionality considering all possible input patterns

## Flip Flops
### 7. Flip Flop Verification
- Verilog code for SR, D, and JK flip-flops
- Test bench to verify the flip-flops

## Counters
### 8. BCD Synchronous Counter
- Verilog code for a 4-bit BCD synchronous counter

### 9. Clock Divider
- Verilog code for a clock divider that divides the input clock by 2, 3, and 4
- Verification of functionality using FPGA and an oscilloscope

# PART B: Interfacing and Debugging

## Clock Divider Circuit
### 1. Clock Divider
- Verilog code to design a clock divider circuit that generates 1/2, 1/3, and 1/4 clock from a given input clock
- Port the design to FPGA and validate the functionality through an oscilloscope

## DC Motor Interface
### 2. DC Motor Interface
- Verilog code to interface a DC motor to FPGA
- Control the motor's speed and direction

## Stepper Motor Control
### 3. Stepper Motor Control
- Verilog code to interface a stepper motor to FPGA
- Control the stepper motor's rotation using external switches for different control modes

## DAC and Sine Wave Generation
### 4. DAC Interface
- Verilog code to interface a DAC to FPGA
- Generate a sine wave of a specified frequency
- Modify the code to downsample the frequency
- Display the original and downsampled signals on an oscilloscope
