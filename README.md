# RV32I Logisim Single-Cycle

## Description

RV32I_Logi_SC is a minimalistic single-cycle RISC-V platform for demonstrational and educational purposes in [Logisim Evolution](https://github.com/logisim-evolution/logisim-evolution). It is designed with simplicity in mind to explore the operation of a RISC-V CPU without being overwhelmed by modern performance-enhancing/security features. Besides the core itself, some peripherals, such as an LED bar and an ASCII output terminal, are memory-mapped to visualize computation results.

![Top level MCU architecture](/doc/top.png)

## Getting Started (Logisim)

Clone the repository and initialize the environment. The toolchain path may be modified in `initEnv.sh`.

```
cd <repo>
source initEnv.sh
```

Run `make` in the root directory to compile and link the example in `/sw/apps/00_demo`. It creates a file that can be loaded into the logisim RAM and ROM instances. Currently, the image must be loaded into both ROM and RAM to avoid copying data into RAM at start-up. The linker file may be improved to avoid loading the `.text` segment into RAM. The memory content is in _little endian_ format.

```
make clean && make
```

Open `r32i_sc.circ` in Logisim Evolution. Right-click the ROM instance and load the image file `sw/apps/00_demo/bin/image` in _little-endian_ format. Repeat for the RAM. Afterward, the clock can be started by pressing `CTRL+K.` The clock speed may be increased.


## Getting Started (Simulation)

To simulate the target application based on the Verilog implementation run the Makefile target listed below.

```
make sim
```

## Getting Started (iCE40)

Synthesis, implementation, and transfer to the configuration memory are entirely handled by Makefiles as well. The Raspberry Pi connected to the icoboard must be available via the SSH `rpi` without authentication (or public key authentication).

Use the following Makefile targets:

```
make app
make ice40
make prog_ice40
```

## Core Architecture

The core implements (a) an instruction decoder (`indec`) to decode the instruction opcode and generate the correct immediate, (b) a register file (`regfile`), (c) an arithmetical logical unit (`ALU`), (d) an ALU decoder (`aludec`) to generate the control signals for the ALU, (e) a load-store unit to manage memory accesses.

As each cycle one instruction is executed, the core expects to receive the addressed data word in the next cycle. Optimizations, such as pipelining, memory-handshaking, etc., may be added.

![Core architecture](/doc/core.png)

### Instruction Decoder
In the instruction decoder, the parts of the instruction word are split up, and the correct immediate type is routed to its outputs. 

![Register File](/doc/indec.png)


### Register File

The register file consists of two memory banks to avoid circuit "duplication." As `x0` shall always read _zero_, an input specifies whether the instance of the register bank implements the lower or upper 16 registers. Again, simplicity is prioritized over performance and circuit size.

![Register File](/doc/regfile.png)


### ALU

The ALU takes two input operands and performs the operation selected by the control signals. Results may be used for arithmetic, logic, or branching instructions.

![Register File](/doc/alu.png)

### ALU Decoder

In the ALU decoder, the instruction type is further decomposed into the kind of operation that shall be performed by the ALU.

![Register File](/doc/aludec.png)

### LSU

Finally, the LSU manages accesses via the bus and arranges byte loads and stores.

![Register File](/doc/lsu.png)
