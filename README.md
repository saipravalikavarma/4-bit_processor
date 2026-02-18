# Design and Simulation of 4-Bit Processor

## 📌 Project Overview
This project implements a simple 4-bit custom processor using Verilog HDL and simulates CPU operations in Xilinx Vivado.

The processor follows a basic instruction execution cycle:
Fetch → Decode → Execute

## 🧠 Custom Instruction Set
Example instructions implemented:
- ADD
- SUB
- LOAD
- STORE
- AND
- OR

## 🏗 Architecture Components

The processor consists of:

- Program Counter (PC)
- Instruction Memory
- Control Unit
- Arithmetic Logic Unit (ALU)
- Accumulator (Register)
- Data Path Logic

## 🛠 Tools Used
- Xilinx Vivado
- Verilog HDL
- GitHub

## 📂 Project Structure
- src/ → All design source files
- simulation/ → Testbench file
- waveform.png → Simulation result

## ▶ Simulation
The processor was verified using Vivado Behavioral Simulation.
The waveform confirms correct instruction execution, PC increment, and ALU operations.

## 📷 Simulation Output

![Waveform](waveform.png)

## 🚀 How to Run
1. Open Xilinx Vivado
2. Create a new RTL Project
3. Add all src files under Design Sources
4. Add cpu_tb.v under Simulation Sources
5. Set cpu_tb.v as Top Module
6. Run Behavioral Simulation

## 🎯 Applications
- Educational CPU design
- Understanding processor architecture
- Digital system design learning

## 👩‍💻 Author
Pravalika Varma
