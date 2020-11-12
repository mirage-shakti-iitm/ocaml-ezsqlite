.PHONY: all clean install add-cap-files

BUILD_EZSQLITE_LIB=$(shell pwd)/build_c_stubs
EZSQLITE_BINDINGS_PATH=$(shell opam config var prefix)/riscv-sysroot/lib/ezsqlite

$(BUILD_EZSQLITE_LIB)/Makefile:
	mkdir -p $(BUILD_EZSQLITE_LIB)
	cp -r lib/* $(BUILD_EZSQLITE_LIB)

$(BUILD_EZSQLITE_LIB)/libezsqlite_stubs.a: $(BUILD_EZSQLITE_LIB)/Makefile
	$(MAKE) -C $(BUILD_EZSQLITE_LIB) libezsqlite_stubs.a

all: $(BUILD_EZSQLITE_LIB)/libezsqlite_stubs.a

add-cap-files:
	./choose_compartment_strategy.sh $(COMPARTMENT_STRATEGY_CHOICE)

generate-asm: $(BUILD_EZSQLITE_LIB)/Makefile
	$(MAKE) -C $(BUILD_EZSQLITE_LIB) generate-asm

generate-initial-cap-tee: $(BUILD_EZSQLITE_LIB)/Makefile
	$(MAKE) -C $(BUILD_EZSQLITE_LIB) generate-initial-cap-tee

install:
	mkdir -p ${EZSQLITE_BINDINGS_PATH}/
	cp ${BUILD_EZSQLITE_LIB}/libezsqlite_stubs.a ${EZSQLITE_BINDINGS_PATH}/

uninstall:   
	rm -rf $(BUILD_EZSQLITE_LIB)

clean: 
	rm -rf $(BUILD_EZSQLITE_LIB)