all: build run

run:
	spike pk a.out

build: clean
	# riscv64-unknown-elf-clang -c -S -O0 -emit-llvm sqlite_test.c -O0
	# opt -S -load ~/riscv-llvm-toolchain/build-llvm/lib/LLVMshakti.so -t < sqlite_test.ll -o sqlite_testx.ll -O0
	# opt -S -load /home/sai/Shakti_TEE_Practical/fat-pointers-shakti/riscv-llvm-toolchain/build-llvm/lib/LLVMshakti.so -t < sqlite_test.ll -o sqlite_testx.ll -O0
	# sed -i 's/llvm.RISCV.hash/hash/g' sqlite_testx.ll
	# sed -i 's/llvm.RISCV.validate/val/g' sqlite_testx.ll
	riscv64-unknown-elf-clang -c -S -O0 -emit-llvm sqlite3_riscv_fat.c -O0
	# opt -S -load ~/riscv-llvm-toolchain/build-llvm/lib/LLVMshakti.so -t < sqlite3_new.ll -o sqlite3_newx.ll -O0
	opt -S -load /home/sai/Shakti_TEE_Practical/fat-pointers-shakti/riscv-llvm-toolchain/build-llvm/lib/LLVMshakti.so -t < sqlite3_riscv_fat.ll -o sqlite3_riscv_fatx.ll -O0
	sed -i 's/llvm.RISCV.hash/hash/g' sqlite3_riscv_fatx.ll
	sed -i 's/llvm.RISCV.validate/val/g' sqlite3_riscv_fatx.ll

	# riscv64-unknown-elf-clang -c -S -O0 -emit-llvm test.c -O0
	# opt -S -load /home/sai/Shakti_TEE_Practical/fat-pointers-shakti/riscv-llvm-toolchain/build-llvm/lib/LLVMshakti.so -t < test.ll -o testx.ll -O0
	# sed -i 's/llvm.RISCV.hash/hash/g' testx.ll
	# sed -i 's/llvm.RISCV.validate/val/g' testx.ll
	
	riscv64-unknown-elf-clang -c debug.c
	riscv64-unknown-elf-clang -c craft.s
	riscv64-unknown-elf-clang -c testx.ll -O0
	# riscv64-unknown-elf-clang -c sqlite_testx.ll -O0
	# riscv64-unknown-elf-clang -c sqlite3_riscv_fatx.ll -O0
	riscv64-unknown-elf-clang -c external.c
	riscv64-unknown-elf-clang testx.o craft.o debug.o external.o

clean:
	# rm -f sqlite_test.ll
	# rm -f sqlite_testx.ll
	rm -f sqlite3_riscv_fat.ll
	rm -f sqlite3_riscv_fatx.ll
	# rm -f test.ll
	# rm -f testx.ll
	rm -f testx.o
	rm -f debug.o
	rm -f a.out
	rm -f craft.o
	rm -f external.o

# should update SQLITE_SOURCE_ID later to the correct version and ID
# https://llvm.org/docs/WritingAnLLVMPass.html