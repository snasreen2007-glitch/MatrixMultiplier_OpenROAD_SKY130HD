export DESIGN_NICKNAME = matrix_multiplier
export DESIGN_NAME = matrix_multiplier
export PLATFORM = sky130hd

export VERILOG_FILES = $(sort $(wildcard $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/*.v))

export SDC_FILE = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export CORE_UTILIZATION = 40
export PLACE_DENSITY_LB_ADDON = 0.10
export TNS_END_PERCENT = 100
