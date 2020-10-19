all: build run

run:
	spike pk a.out

build: clean
	# clang -c -S -O0 -emit-llvm sqlite_test.c -O0
	# clang -c -S -O0 -emit-llvm sqlite3_new.c -O0
	# opt -S -load /home/sai/Shakti_TEE_Practical/fat-pointers-shakti/LLVMshakti.so -t < test.ll -o testx.ll -O0
	# sed -i 's/llvm.RISCV.hash/hash/g' testx.ll
	# sed -i 's/llvm.RISCV.validate/val/g' testx.ll
	
	clang -march=rv64gc -mabi=lp64d -c debug.c 
	clang -march=rv64gc -mabi=lp64d -c craft.s
	clang -march=rv64gc -mabi=lp64d -c testx.ll -O0
	clang -march=rv64gc -mabi=lp64d -c external.c
	riscv64-unknown-elf-gcc -march=rv64gc -mabi=lp64d testx.o shakti_ms/craft.o debug.o external.o

clean:
	# rm -f test.ll
	# rm -f testx.ll
	rm -f testx.o
	rm -f debug.o
	rm -f a.out
	rm -f craft.o
	rm -f external.o
