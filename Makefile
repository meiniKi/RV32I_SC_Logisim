
.PHONY: all app

APP = 00_demo

DIRS = sw/apps

all: app
	
app:
	@echo ""
	@echo "************************************"
	@echo "******      BUILDING APP     *******"
	@echo "************************************"
	@make --no-print-directory -C $(DIRS)/$(APP)
	
clean:
	@make --no-print-directory -C $(DIRS)/$(APP) clean
