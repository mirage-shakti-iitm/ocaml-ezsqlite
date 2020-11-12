CC=riscv64-unknown-elf-gcc

C_FLAGS=-mcmodel=medany -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT -ffunction-sections

C_INCLUDES=-I. -I${OPAM_SWITCH_PREFIX}/riscv-sysroot/lib/ocaml -I${OPAM_SWITCH_PREFIX}/riscv-sysroot/lib/cstruct -I${OPAM_SWITCH_PREFIX}/riscv-sysroot/lib/hex -I${OPAM_SWITCH_PREFIX}/riscv-sysroot/lib/bigarray-compat

OBJS=sqlite3_new.o ezsqlite_stubs.o

SRCS=sqlite3_new.c ezsqlite_stubs.c

ASMS=sqlite3_new.s ezsqlite_stubs.s

CAPS=sqlite3_new.cap ezsqlite_stubs.cap

$(OBJS):%.o: %.s
	$(CC) -g $(C_INCLUDES) $(C_FLAGS) -o $@ -c $<

.phony: generate-asm generate-initial-cap-tee add-checkap

add-checkcap: $(ASMS)
	for f in $^; do postProcessing.py ./$$f; done

libezsqlite_stubs.a: generate-asm add-checkcap $(OBJS)
	riscv64-unknown-elf-ar rcs $@ $(OBJS)

generate-asm: $(SRCS)
	$(CC) $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES) $(SRCS) -S

generate-initial-cap-tee: generate-asm $(ASMS)
	initial_cap_file_generator c 254 $(ASMS)
