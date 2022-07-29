
.PHONY: all app

APP = 00_demo

DIRS_SW = sw/apps
DIRS_HW = hw/verilog
DIRS_DEMO_ICE40 = demo/ice40

export APP
export DIRS_SW
export DIRS_HW
export DIRS_DEMO_ICE40

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


ice40: app
	@echo ""
	@echo "************************************"
	@echo "******  SYNTH/IMPL iCE40     *******"
	@echo "************************************"
	@make --no-print-directory -C $(DIRS_HW) ice40

clean:
	@make --no-print-directory -C $(DIRS_SW)/$(APP) clean
	@make --no-print-directory -C $(DIRS_HW) clean
