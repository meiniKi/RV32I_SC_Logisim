
DIR_ROOT 	= ../../
DIR_TB 		= ./tb
DIR_OUT		= ./out
DIR_THIS   =  $(shell pwd)

TOP 		= $(DIR_TB)/tb.v
TOP_MODULE 	= tb

ICARUS 		= iverilog
ICARUS_RTE  = vvp


ROM_FILE 	= $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/rom.hex
RAM_FILE 	= $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/ram.hex

VSRC = 	./mcu/gates/AND_GATE_3_INPUTS.v		\
	 	./mcu/gates/AND_GATE_BUS.v			\
		./mcu/gates/AND_GATE.v				\
 		./mcu/gates/NOT_GATE.v				\
 		./mcu/gates/OR_GATE_5_INPUTS.v		\
 		./mcu/gates/OR_GATE_6_INPUTS.v		\
 		./mcu/gates/OR_GATE_BUS.v			\
 		./mcu/gates/OR_GATE.v				\
 		./mcu/gates/XOR_GATE_BUS_ONEHOT.v

VSRC += ./mcu/plexers/Demultiplexer_8.v		\
		./mcu/plexers/Multiplexer_2.v		\
		./mcu/plexers/Multiplexer_bus_2.v	\
		./mcu/plexers/Multiplexer_bus_4.v	\
		./mcu/plexers/Multiplexer_bus_8.v

VSRC += ./mcu/base/LogisimClockComponent.v	\
		./mcu/base/LogisimTickGenerator.v

VSRC +=	./mcu/arithmetic/Adder.v			\
 		./mcu/arithmetic/Comparator.v		\
		./mcu/arithmetic/Shifter_32_bit.v	\
		./mcu/arithmetic/Shifter_4_bit.v	\
	 	./mcu/arithmetic/Subtractor.v

VSRC +=	./mcu/memory/ram.v  				\
		./mcu/memory/REGISTER_FLIP_FLOP.v	\
		./mcu/memory/ROMCONTENTS_ROM_1.v

VSRC +=	./mcu/circuit/d_ledbar.v			\
		./mcu/circuit/mcu.v					\
		./mcu/circuit/rv32i_aludec.v		\
		./mcu/circuit/rv32i_alu.v			\
		./mcu/circuit/rv32i_imm.v			\
		./mcu/circuit/rv32i_indec.v			\
		./mcu/circuit/rv32i_lsu.v			\
		./mcu/circuit/rv32i_regbank.v		\
		./mcu/circuit/rv32i_regfile.v		\
		./mcu/circuit/rv32i.v				\
		./mcu/circuit/sc_bus.v

VSRC += ./$(DIR_TB)/tb.v

default: all

.PHONY: 
sim: clean
	@mkdir $(DIR_OUT)
	@$(ICARUS) -g2012 -D ROM_FILE=\"$(ROM_FILE)\" -D RAM_FILE=\"$(RAM_FILE)\" -s $(TOP_MODULE) -o $(DIR_OUT)/out $(VSRC)
	@cd out && $(ICARUS_RTE) out 

.PHONY: all
all: sim

.PHONY: clean
clean:
	@rm -r $(DIR_OUT) || true

