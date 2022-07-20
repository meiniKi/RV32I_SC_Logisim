
# Modified from
# https://github.com/TheNetAdmin/Makefile-Templates/

TARGET_NAME := 00_demo
IMAGE_NAME := image

SRC_PATH = .
INC_PATH = .
OBJ_PATH = ./obj
BIN_PATH = ./bin
ASM_PATH = ../../startup
LINK_SCRIPT = ../../buildenv/linker/smallriscv_logi.ld

SRC := $(foreach x, $(SRC_PATH), $(wildcard $(addprefix $(x)/*,.c*)))
STU := $(foreach x, $(ASM_PATH), $(wildcard $(addprefix $(x)/*,.S*)))
ASM := $(STU)
INC := $(foreach x, $(INC_PATH), $(wildcard $(addprefix $(x)/*,.h*)))
ALL_SRC := $(SRC) $(ASM)
OBJ := $(addprefix $(OBJ_PATH)/, $(addsuffix .o, $(notdir $(basename $(ALL_SRC)))))

CC := riscv32-unknown-elf-gcc-10.2.0
OBJCPY := riscv32-unknown-elf-objcopy
CCFLAGS := -nostdlib -O3 -march=rv32i -T $(LINK_SCRIPT)
CCOBJFLAGS := $(CCFLAGS) -c 


TARGET := $(BIN_PATH)/$(TARGET_NAME)
IMAGE := $(BIN_PATH)/$(IMAGE_NAME)


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
	$(OBJCPY) -O binary $(TARGET) $(IMAGE)

.PHONY: all
all: makedir app image

.PHONY: clean
clean:
	@echo $(ALL_SRC)
	@echo CLEAN $(CLEAN_LIST)
	@rm -rf $(CLEAN_LIST)
