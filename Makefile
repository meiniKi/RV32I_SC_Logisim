
.PHONY: all app

APP = 00_demo

DIRS_SW = sw/apps
DIRS_HW = hw/verilog

export APP
export DIRS_SW
export DIRS_HW

all: app
	
app:
	@echo ""
	@echo "************************************"
	@echo "******      BUILDING APP     *******"
	@echo "************************************"
	@make --no-print-directory -C $(DIRS_SW)/$(APP)
	
sim: app
	@echo ""
	@echo "************************************"
	@echo "******       SIMULATING      *******"
	@echo "************************************"
	@make --no-print-directory -C $(DIRS_HW)


clean:
	@make --no-print-directory -C $(DIRS_SW)/$(APP) clean
	@make --no-print-directory -C $(DIRS_HW) clean
