
DIR_ROOT 	= ../../
DIR_TB 		= ./tb
DIR_MCU		= ./mcu
DIR_OUT		= ./out
DIR_THIS   =  $(shell pwd)


#################################
# Simulation
#################################

ICARUS 		= iverilog
ICARUS_RTE  = vvp

SIM_TOP 		= $(DIR_TB)/tb.v
SIM_TOP_MODULE 	= tb

#################################
# Synthesis
#################################

SYNTH_TOP_MODULE 	= mcu

ICE_FPGA_TYPE	= hx8k

DIRS_ICE 		= ../../$(DIRS_DEMO_ICE40)
DIRS_ICE_OUT	= $(DIRS_ICE)/out
ICE_PCF_FILE 	= $(DIRS_ICE)/ico.pcf
ICE_SYNTH_FILE 	= $(DIRS_ICE_OUT)/synth.json
BLIF_FILE 		= $(DIRS_ICE_OUT)/synth.blif
ASC_FILE 		= $(DIRS_ICE_OUT)/impl.asc
BIN_FILE 		= $(DIRS_ICE_OUT)/impl.bit

ROM_FILE 	= $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/rom.hex
RAM_FILE 	= $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/ram.hex


ROM_HEX_NAME_BYTE0 = $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/rom_b0.hex
ROM_HEX_NAME_BYTE1 = $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/rom_b1.hex
ROM_HEX_NAME_BYTE2 = $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/rom_b2.hex
ROM_HEX_NAME_BYTE3 = $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/rom_b3.hex

RAM_HEX_NAME_BYTE0 = $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/ram_b0.hex
RAM_HEX_NAME_BYTE1 = $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/ram_b1.hex
RAM_HEX_NAME_BYTE2 = $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/ram_b2.hex
RAM_HEX_NAME_BYTE3 = $(DIR_THIS)/$(DIR_ROOT)/$(DIRS_SW)/$(APP)/bin/ram_b3.hex

VSRC = 	./mcu/modules/rv32i_alu.v		\
		./mcu/modules/rv32i_imm.v		\
	 	./mcu/modules/rv32i_aludec.v	\
 		./mcu/modules/rv32i_indec.v		\
 		./mcu/modules/rv32i_lsu.v		\
 		./mcu/modules/rv32i_regbank.v	\
 		./mcu/modules/rv32i_regfile.v	\
		./mcu/modules/ram_byte.v		\
 		./mcu/modules/ram.v				\
 		./mcu/modules/d_ledbar.v 		\
		./mcu/modules/sc_bus.v	 		\
		./mcu/modules/rv32i.v

VSRC += ./mcu/mcu.v		


VSRC += ./$(DIR_TB)/tb.v

default: all

.PHONY: sim
sim: clean
	@mkdir $(DIR_OUT)
	@$(ICARUS) -g2012 -D ROM_FILE=\"$(ROM_FILE)\" -D RAM_FILE=\"$(RAM_FILE)\" -s $(SIM_TOP_MODULE) -o $(DIR_OUT)/out $(VSRC) \
						-D ROM_BYTE0=\"$(ROM_HEX_NAME_BYTE0)\" -D ROM_BYTE1=\"$(ROM_HEX_NAME_BYTE1)\" -D ROM_BYTE2=\"$(ROM_HEX_NAME_BYTE2)\" -D ROM_BYTE3=\"$(ROM_HEX_NAME_BYTE3)\" \
					  	-D RAM_BYTE0=\"$(RAM_HEX_NAME_BYTE0)\" -D RAM_BYTE1=\"$(RAM_HEX_NAME_BYTE1)\" -D RAM_BYTE2=\"$(RAM_HEX_NAME_BYTE2)\" -D RAM_BYTE3=\"$(RAM_HEX_NAME_BYTE3)\" \
						-D SYNTH_ICE40
	@cd out && $(ICARUS_RTE) out 


.PHONY: ice40
ice40: clean
	@mkdir $(DIRS_ICE_OUT)
	@yosys -p "read_verilog -sv -D ROM_FILE=\"$(ROM_FILE)\" -D RAM_FILE=\"$(RAM_FILE)\" -D SYNTH_ICE40 \
				-D ROM_BYTE0=\"$(ROM_HEX_NAME_BYTE0)\" -D ROM_BYTE1=\"$(ROM_HEX_NAME_BYTE1)\" -D ROM_BYTE2=\"$(ROM_HEX_NAME_BYTE2)\" -D ROM_BYTE3=\"$(ROM_HEX_NAME_BYTE3)\" \
				-D RAM_BYTE0=\"$(RAM_HEX_NAME_BYTE0)\" -D RAM_BYTE1=\"$(RAM_HEX_NAME_BYTE1)\" -D RAM_BYTE2=\"$(RAM_HEX_NAME_BYTE2)\" -D RAM_BYTE3=\"$(RAM_HEX_NAME_BYTE3)\" \
				./mcu/modules/*.v ./mcu/mcu.v; synth_ice40 -abc2 -top $(SYNTH_TOP_MODULE) -blif $(BLIF_FILE); write_json $(ICE_SYNTH_FILE)"
	@nextpnr-ice40 --$(ICE_FPGA_TYPE) --package ct256 --pcf $(ICE_PCF_FILE) --json $(ICE_SYNTH_FILE) --asc $(ASC_FILE) --pcf-allow-unconstrained --freq 16


.PHONY: prog_ice40
prog_ice40:
	@icepack $(ASC_FILE) $(BIN_FILE)
	@ssh rpi 'icoprog -p' < $(BIN_FILE)

.PHONY: all
all: sim


.PHONY: clean
clean:
	@rm -r $(DIR_OUT) || true
	@rm -r $(DIRS_ICE_OUT) || true

