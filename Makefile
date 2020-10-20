.PHONY: all clean install

BUILD = $(shell pwd)/build

$(BUILD)/lib/Makefile:
	mkdir -p $(BUILD)
	cp -r lib $(BUILD)

$(BUILD)/lib/libezsqlite_stubs.a: $(BUILD)/lib/Makefile
	$(MAKE) -C $(BUILD)/lib libezsqlite_stubs.a

all: $(BUILD)/lib/libezsqlite_stubs.a

install: all
	./install.sh

uninstall:   
	rm -r $(BUILD)
clean: 
	rm -r $(BUILD)