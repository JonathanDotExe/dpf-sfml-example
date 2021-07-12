NAME = DPFSfmlDemo

#Files
FILES_DSP = \
	ExamplePlugin.cpp
FILES_UI = \
	ExampleUI.cpp

#Plugins makefile
include DPF/Makefile.plugins.mk

#Build all types
ifeq ($(LINUX),true)
TARGETS += jack
endif

TARGETS += lv2_dsp
TARGETS += vst

all: $(TARGETS)