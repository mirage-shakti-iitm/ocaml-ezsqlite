HEX_PATH := $(shell opam config exec --  ocamlfind -toolchain riscv query hex)
BIGARRAY_COMPAT_PATH := $(shell opam config exec -- ocamlfind -toolchain riscv query bigarray-compat)
CSTRUCT_PATH = $(shell opam config exec -- ocamlfind -toolchain riscv query cstruct)
# Using str package to find path for ocaml directory. Should change this later
OCAML_PATH = $(OPAM_SWITCH_PREFIX)/riscv-sysroot/lib/ocaml

CC=riscv64-unknown-elf-gcc

ASM_FLAGS= 

ASM_DEFINES=

ASM_INCLUDES=

C_FLAGS=-mcmodel=medany -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT -g

C_DEFINES=

C_INCLUDES=-I. -I$(BIGARRAY_COMPAT_PATH) -I$(CSTRUCT_PATH) -I$(HEX_PATH) -I$(OCAML_PATH)

OBJS= sqlite3_new.o ezsqlite_stubs.o

$(OBJS):%.o: %.c
	$(CC) $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o $@ -c $<

libezsqlite_stubs.a: $(OBJS)
	$(AR) rcs $@ $(OBJS)
# 	riscv64-unknown-elf-clang -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -g -g '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/bigarray-compat' '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/cstruct' '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/hex' -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' 'lib/ezsqlite_stubs.c'
# 	riscv64-unknown-elf-clang -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -g -g '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/bigarray-compat' '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/cstruct' '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/hex' -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' 'lib/sqlite3_new.c'
# 	clang -mcmodel=medium -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT -c -g -g -g '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/bigarray-compat' '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/cstruct' '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/hex' -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/ezsqlite_stubs.c'
# 	clang -mcmodel=medany -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT -c -g -g -g '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/bigarray-compat' '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/cstruct' '-I/home/sai/.opam/4.07.0/riscv-sysroot/lib/hex' -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/sqlite3_new.c'
# 	llvm-ar rc libezsqlite_stubs.a  ezsqlite_stubs.o sqlite3_new.o
# 	llvm-ranlib libezsqlite_stubs.a


# 	riscv64-unknown-linux-gnu-gcc -I/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml -o sqlite3_new.o lib/sqlite3_new.c
# 	riscv64-unknown-linux-gnu-gcc -I/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml -o ezsqlite_stubs.o lib/ezsqlite_stubs.c
# 	riscv64-unknown-linux-gnu-ar rcs libezsqlite_stubs.a ezsqlite_stubs.o sqlite3_new.o
# 	riscv64-unknown-linux-gnu-ranlib libezsqlite_stubs.a 
