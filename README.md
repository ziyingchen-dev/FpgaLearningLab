# FPGA Learning Lab

A hands-on FPGA learning project using Verilog, Icarus Verilog, and GTKWave.

---

## Overview

This repository contains a series of FPGA learning chapters.

Each chapter focuses on one design topic and includes:

- RTL source code
- Testbench
- Simulation output
- Waveform examples
- Learning notes

---

## Learning Path

| Chapter | Topic |
|----------|----------|
| 01 | LED Blink |
| 02 | Key Input |
| 03 | PLL |
| 04 | UART |
| 05 | 7-Segment Display |
| 06 | Key Debounce |
| 07 | Buzzer PWM |
| 08 | SPI Flash |
| 09 | DS1302 RTC |
| 10 | I2C EEPROM |
| 11 | UART Terminal |
| 12 | Digital Clock |
| 13 | SPI Flash Logger |

---

## Directory Structure

```text
Chapter/
├─ README.md
├─ rtl/
├─ tb/
├─ sim/
└─ images/
```

| Directory | Purpose |
|------------|------------|
| rtl | Verilog RTL source files |
| tb | Testbench files |
| sim | Simulation output files |
| images | Waveform screenshots and diagrams |

---

## Development Environment

The examples are verified using:

| Tool | Purpose |
|------|------|
| Icarus Verilog (`iverilog`) | Compile RTL and testbench |
| VVP (`vvp`) | Execute simulation |
| GTKWave (`gtkwave`) | View waveform files |

Linux and WSL are recommended.

---

## Tool Installation

Ubuntu / WSL:

```bash
sudo apt update
sudo apt install -y iverilog gtkwave
```

Verify installation:

```bash
iverilog -V
vvp -V
gtkwave --version
```

---

## Typical Workflow

### 1. Enter a Chapter

Example:

```bash
cd 01-led
```

---

### 2. Compile

```bash
iverilog \
-o sim/output \
rtl/*.v \
tb/*.v
```

---

### 3. Run Simulation

```bash
vvp sim/output
```

Simulation generates:

```text
*.vcd
```

waveform files inside the `sim/` directory.

---

### 4. Open Waveform

```bash
gtkwave sim/*.vcd
```

Typical signals to inspect:

```text
clk
rst_n
counter
state
data
```

---

## Recommended Learning Process

For each chapter:

1. Read the chapter README.
2. Study the RTL design.
3. Draw or understand the block diagram.
4. Run simulation.
5. Inspect the waveform.
6. Modify the RTL.
7. Re-run simulation and observe changes.

---

## Notes

Simulation is the first step.

Always verify functionality in simulation before downloading the design to FPGA hardware.

Recommended workflow:

```text
RTL
 ↓
Simulation
 ↓
Waveform Verification
 ↓
FPGA Implementation
 ↓
Hardware Validation
```

---

## Repository Layout

```text
FpgaLearningLab/
├── 01-led
├── 02-key
├── 03-pll
├── 04-uart
├── 05-seg7
├── 06-key-debounce
├── 07-buzzer-pwm
├── 08-spi-flash
├── 09-rtc-ds1302
├── 10-i2c-eeprom
├── 11-uart-terminal
├── 12-digital-clock
└── 13-spi-flash-logger
```

Start with:

```bash
cd 01-led
```

and continue chapter by chapter.