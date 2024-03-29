
# Modified from
# https://github.com/TheNetAdmin/Makefile-Templates/

TARGET_NAME	 	:= 00_demo
ROM_IMAGE_NAME 	:= rom.image
RAM_IMAGE_NAME 	:= ram.image
ROM_HEX_NAME 	:= rom.hex
RAM_HEX_NAME	:= ram.hex

ROM_HEX_NAME_BYTE0 	:= rom_b0.hex
ROM_HEX_NAME_BYTE1 	:= rom_b1.hex
ROM_HEX_NAME_BYTE2 	:= rom_b2.hex
ROM_HEX_NAME_BYTE3 	:= rom_b3.hex

RAM_HEX_NAME_BYTE0 	:= ram_b0.hex
RAM_HEX_NAME_BYTE1 	:= ram_b1.hex
RAM_HEX_NAME_BYTE2 	:= ram_b2.hex
RAM_HEX_NAME_BYTE3 	:= ram_b3.hex

RAM_SIZE_WORDS  := 1024
ROM_SIZE_WORDS 	:= 1024

SRC_PATH 	= .
INC_PATH 	= .
OBJ_PATH 	= ./obj
BIN_PATH 	= ./bin
ASM_PATH 	= ../../startup
UTILS_PATH 	= ../../utils
LINK_SCRIPT = ../../buildenv/linker/smallriscv_logi.ld

SRC 	:= $(foreach x, $(SRC_PATH), $(wildcard $(addprefix $(x)/*,.c*)))
STU 	:= $(foreach x, $(ASM_PATH), $(wildcard $(addprefix $(x)/*,.S*)))
ASM 	:= $(STU)
INC 	:= $(foreach x, $(INC_PATH), $(wildcard $(addprefix $(x)/*,.h*)))
ALL_SRC := $(SRC) $(ASM)
OBJ 	:= $(addprefix $(OBJ_PATH)/, $(addsuffix .o, $(notdir $(basename $(ALL_SRC)))))

CC 			:= riscv32-unknown-elf-gcc-10.2.0
OBJCPY 		:= riscv32-unknown-elf-objcopy
CCFLAGS 	:= -nostdlib -O3 -march=rv32i -T $(LINK_SCRIPT)
CCOBJFLAGS	:= $(CCFLAGS) -c 
PYTHON 		:= python3

TARGET 		:= $(BIN_PATH)/$(TARGET_NAME)
ROM_IMAGE 	:= $(BIN_PATH)/$(ROM_IMAGE_NAME)
RAM_IMAGE 	:= $(BIN_PATH)/$(RAM_IMAGE_NAME)
ROM_HEX		:= $(BIN_PATH)/$(ROM_HEX_NAME)
RAM_HEX 	:= $(BIN_PATH)/$(RAM_HEX_NAME)

RAM_HEX_BYTE0	:= $(BIN_PATH)/$(RAM_HEX_NAME_BYTE0)
RAM_HEX_BYTE1	:= $(BIN_PATH)/$(RAM_HEX_NAME_BYTE1)
RAM_HEX_BYTE2	:= $(BIN_PATH)/$(RAM_HEX_NAME_BYTE2)
RAM_HEX_BYTE3	:= $(BIN_PATH)/$(RAM_HEX_NAME_BYTE3)

ROM_HEX_BYTE0	:= $(BIN_PATH)/$(ROM_HEX_NAME_BYTE0)
ROM_HEX_BYTE1	:= $(BIN_PATH)/$(ROM_HEX_NAME_BYTE1)
ROM_HEX_BYTE2	:= $(BIN_PATH)/$(ROM_HEX_NAME_BYTE2)
ROM_HEX_BYTE3	:= $(BIN_PATH)/$(ROM_HEX_NAME_BYTE3)


CLEAN_LIST := $(OBJ_PATH) \
			  $(BIN_PATH)

default: all

$(TARGET): $(OBJ)
	$(CC) $(CCFLAGS)  -o $@ $(OBJ)

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c*
	$(CC) $(CCOBJFLAGS) -o $@ $< 

$(OBJ_PATH)/%.o: $(ASM_PATH)/%.S*
	$(CC) $(CCOBJFLAGS) -o $@ $< 



.PHONY: makedir
makedir:
	@mkdir -p $(BIN_PATH) $(OBJ_PATH)


.PHONY: app
app: $(TARGET)


.PHONY: image
image: app
	$(OBJCPY) --only-section=.text -O binary $(TARGET) $(ROM_IMAGE)
	$(OBJCPY) --remove-section=.text -O binary $(TARGET) $(RAM_IMAGE)
	$(PYTHON) $(UTILS_PATH)/img2hex.py $(ROM_IMAGE) $(ROM_HEX) $(ROM_SIZE_WORDS)
	$(PYTHON) $(UTILS_PATH)/img2hex.py $(RAM_IMAGE) $(RAM_HEX) $(RAM_SIZE_WORDS)
	$(PYTHON) $(UTILS_PATH)/hex2bytehex.py $(ROM_HEX) $(ROM_HEX_BYTE0) $(ROM_HEX_BYTE1) $(ROM_HEX_BYTE2) $(ROM_HEX_BYTE3)
	$(PYTHON) $(UTILS_PATH)/hex2bytehex.py $(RAM_HEX) $(RAM_HEX_BYTE0) $(RAM_HEX_BYTE1) $(RAM_HEX_BYTE2) $(RAM_HEX_BYTE3)

.PHONY: all
all: makedir app image

.PHONY: clean
clean:
	@echo $(ALL_SRC)
	@echo CLEAN $(CLEAN_LIST)
	@rm -rf $(CLEAN_LIST)
