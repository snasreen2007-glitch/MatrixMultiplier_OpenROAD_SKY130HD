# 4×4 Matrix Multiplier Accelerator using OpenROAD and SKY130HD

## Overview

This project implements a 4×4 Matrix Multiplier Accelerator using Verilog RTL and the OpenROAD physical design flow on the SKY130HD technology node.

## Design Flow

RTL Design → Synthesis → Floorplan → Placement → CTS → Routing → Timing Closure

## Technology

* Verilog HDL
* OpenROAD
* SKY130HD
* Yosys
* Ubuntu Linux

## Results

| Metric         | Value      |
| -------------- | ---------- |
| Area           | 148653 µm² |
| Utilization    | 42%        |
| Critical Delay | 9.0562 ns  |
| Slack          | +1.6056 ns |
| Power          | 140 mW     |
| Total Cells    | 49,535     |

## Flow Commands

```bash
make synth DESIGN_CONFIG=./designs/sky130hd/matrix_multiplier/config.mk
make floorplan DESIGN_CONFIG=./designs/sky130hd/matrix_multiplier/config.mk
make place DESIGN_CONFIG=./designs/sky130hd/matrix_multiplier/config.mk
make cts DESIGN_CONFIG=./designs/sky130hd/matrix_multiplier/config.mk
make route DESIGN_CONFIG=./designs/sky130hd/matrix_multiplier/config.mk
```

