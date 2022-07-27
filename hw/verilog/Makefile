
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

VSRC = 	./mcu/modules/rv32i_alu.v		\
		./mcu/modules/rv32i_imm.v		\
	 	./mcu/modules/rv32i_aludec.v	\
 		./mcu/modules/rv32i_indec.v		\
 		./mcu/modules/rv32i_lsu.v		\
 		./mcu/modules/rv32i_regbank.v	\
 		./mcu/modules/rv32i_regfile.v	\
 		./mcu/modules/ram.v				\
 		./mcu/modules/d_ledbar.v 		\
		./mcu/modules/sc_bus.v	 		\
		./mcu/modules/rv32i.v

VSRC += ./mcu/mcu.v		


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

