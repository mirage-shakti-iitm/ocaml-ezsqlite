	.file	"ezsqlite_stubs.c"
	.option pic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"commit hook"
	.section	.text.commit_hook_callback,"ax",@progbits
	.align	1
	.globl	commit_hook_callback
	.type	commit_hook_callback, @function
commit_hook_callback:
	addi	sp,sp,-16
	lla	a0,.LC0
	sd	ra,8(sp)
	call	caml_named_value@plt
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L2
	ld	a0,0(a5)
	li	a1,1
	call	caml_callback@plt
	slli	a0,a0,1
	addiw	a0,a0,1
.L2:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	commit_hook_callback, .-commit_hook_callback
	.section	.text.destroy_function,"ax",@progbits
	.align	1
	.globl	destroy_function
	.type	destroy_function, @function
destroy_function:
	tail	caml_remove_generational_global_root@plt
	.size	destroy_function, .-destroy_function
	.section	.rodata.str1.8
	.align	3
.LC1:
	.string	"update hook"
	.section	.text.update_hook_callback,"ax",@progbits
	.align	1
	.globl	update_hook_callback
	.type	update_hook_callback, @function
update_hook_callback:
	addi	sp,sp,-80
	lla	a0,.LC1
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	mv	s0,a1
	mv	s4,a2
	mv	s3,a3
	mv	s2,a4
	call	caml_named_value@plt
	beq	a0,zero,.L9
	slli	a1,s0,1
	addi	a1,a1,1
	mv	s1,a0
	mv	a0,s4
	sd	a1,0(sp)
	call	caml_copy_string@plt
	mv	a5,a0
	mv	a0,s3
	sd	a5,8(sp)
	call	caml_copy_string@plt
	mv	a5,a0
	mv	a0,s2
	sd	a5,16(sp)
	call	caml_copy_int64@plt
	sd	a0,24(sp)
	ld	a0,0(s1)
	mv	a2,sp
	li	a1,4
	call	caml_callbackN@plt
.L9:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	addi	sp,sp,80
	jr	ra
	.size	update_hook_callback, .-update_hook_callback
	.section	.rodata.str1.8
	.align	3
.LC2:
	.string	"auto extension"
	.section	.text.auto_extension_callback,"ax",@progbits
	.align	1
	.globl	auto_extension_callback
	.type	auto_extension_callback, @function
auto_extension_callback:
	addi	sp,sp,-16
	sd	s0,0(sp)
	mv	s0,a0
	lla	a0,.LC2
	sd	ra,8(sp)
	call	caml_named_value@plt
	beq	a0,zero,.L16
	ld	a0,0(a0)
	mv	a1,s0
	call	caml_callback@plt
.L16:
	li	a2,0
	la	a1,commit_hook_callback
	mv	a0,s0
	call	sqlite3_commit_hook@plt
	mv	a0,s0
	li	a2,0
	la	a1,update_hook_callback
	call	sqlite3_update_hook@plt
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	auto_extension_callback, .-auto_extension_callback
	.section	.rodata.str1.8
	.align	3
.LC3:
	.string	"sqlite error"
	.align	3
.LC4:
	.string	"unknown"
	.align	3
.LC5:
	.string	"unknown sqlite error"
	.section	.text.sqlite3_error,"ax",@progbits
	.align	1
	.globl	sqlite3_error
	.type	sqlite3_error, @function
sqlite3_error:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a0
	lla	a0,.LC3
	sd	s0,16(sp)
	sd	ra,24(sp)
	call	caml_named_value@plt
	mv	s0,a0
	mv	a0,s1
	call	sqlite3_errstr@plt
	beq	a0,zero,.L22
	beq	s0,zero,.L23
	mv	a1,a0
	ld	a0,0(s0)
	call	caml_raise_with_string@plt
.L22:
	beq	s0,zero,.L23
	ld	a0,0(s0)
	lla	a1,.LC4
	call	caml_raise_with_string@plt
.L23:
	lla	a0,.LC5
	call	caml_failwith@plt
	.size	sqlite3_error, .-sqlite3_error
	.section	.text.copy_s,"ax",@progbits
	.align	1
	.globl	copy_s
	.type	copy_s, @function
copy_s:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	mv	s1,a0
	mv	s2,a1
	call	sqlite3_value_bytes@plt
	mv	s3,a0
	call	caml_alloc_string@plt
	mv	s0,a0
	mv	a0,s1
	beq	s2,zero,.L32
	call	sqlite3_value_blob@plt
	mv	a1,a0
.L33:
	beq	a1,zero,.L31
	mv	a2,s3
	mv	a0,s0
	call	memcpy@plt
.L31:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L32:
	call	sqlite3_value_text@plt
	mv	a1,a0
	j	.L33
	.size	copy_s, .-copy_s
	.section	.text.caml_of_sqlite,"ax",@progbits
	.align	1
	.globl	caml_of_sqlite
	.type	caml_of_sqlite, @function
caml_of_sqlite:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	beq	a0,zero,.L40
	mv	s0,a0
	call	sqlite3_value_type@plt
	li	a4,1
	beq	a0,a4,.L41
	li	a4,3
	beq	a0,a4,.L42
.L40:
	la	a5,Null
	ld	s1,0(a5)
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L42:
	li	a1,1
	li	a0,1
	call	caml_alloc@plt
	mv	s1,a0
	li	a1,0
	mv	a0,s0
	call	copy_s@plt
	mv	a1,a0
	mv	a0,s1
	call	caml_modify@plt
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L41:
	li	a1,3
	call	caml_alloc@plt
	mv	s1,a0
	mv	a0,s0
	call	sqlite3_value_int64@plt
	call	caml_copy_int64@plt
	mv	a1,a0
	mv	a0,s1
	call	caml_modify@plt
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	caml_of_sqlite, .-caml_of_sqlite
	.section	.rodata.str1.8
	.align	3
.LC6:
	.string	"invalid conversion"
	.section	.text.set_result,"ax",@progbits
	.align	1
	.globl	set_result
	.type	set_result, @function
set_result:
	andi	a5,a1,1
	bne	a5,zero,.L59
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lbu	a5,-8(a1)
	li	a4,2
	mv	s0,a1
	beq	a5,a4,.L47
	bgtu	a5,a4,.L50
	mv	s1,a0
	beq	a5,zero,.L60
	ld	a0,0(a1)
	call	caml_string_length@plt
	ld	a1,0(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	sext.w	a2,a0
	mv	a0,s1
	ld	s1,8(sp)
	li	a3,-1
	addi	sp,sp,32
	tail	sqlite3_result_text@plt
.L50:
	li	a4,3
	bne	a5,a4,.L61
	ld	a5,0(a1)
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	a1,8(a5)
	addi	sp,sp,32
	tail	sqlite3_result_int64@plt
.L59:
	tail	sqlite3_result_null@plt
.L60:
	ld	a0,0(a1)
	call	caml_string_length@plt
	ld	a1,0(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	sext.w	a2,a0
	mv	a0,s1
	ld	s1,8(sp)
	li	a3,-1
	addi	sp,sp,32
	tail	sqlite3_result_blob@plt
.L47:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L61:
	lla	a0,.LC6
	call	caml_failwith@plt
	.size	set_result, .-set_result
	.section	.rodata.str1.8
	.align	3
.LC7:
	.string	"Invalid function name"
	.section	.text.call_function,"ax",@progbits
	.align	1
	.globl	call_function
	.type	call_function, @function
call_function:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	mv	s2,a2
	call	sqlite3_user_data@plt
	beq	a0,zero,.L63
	mv	s0,a0
	mv	a1,s2
	la	a0,caml_of_sqlite
	call	caml_alloc_array@plt
	mv	a1,a0
	ld	a0,0(s0)
	call	caml_callback@plt
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s2,0(sp)
	mv	a1,a0
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	set_result@plt
.L63:
	lla	a0,.LC7
	call	caml_failwith@plt
	.size	call_function, .-call_function
	.section	.text._ezsqlite_db_create_function,"ax",@progbits
	.align	1
	.globl	_ezsqlite_db_create_function
	.type	_ezsqlite_db_create_function, @function
_ezsqlite_db_create_function:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s2,32(sp)
	mv	s0,a2
	mv	s2,a0
	mv	a0,a1
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	mv	s1,a1
	srai	s0,s0,1
	call	caml_named_value@plt
	mv	s3,a0
	sext.w	s0,s0
	call	caml_register_generational_global_root@plt
	la	s4,destroy_function
	sd	s4,0(sp)
	li	a7,0
	li	a6,0
	la	a5,call_function
	mv	a4,s3
	li	a3,1
	mv	a2,s0
	mv	a1,s1
	mv	a0,s2
	call	sqlite3_create_function_v2@plt
	bne	a0,zero,.L71
.L66:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	li	a0,1
	addi	sp,sp,64
	jr	ra
.L71:
	li	a7,0
	li	a6,0
	la	a5,call_function
	mv	a4,s3
	li	a3,1
	mv	a2,s0
	mv	a1,s1
	sd	s4,0(sp)
	mv	a0,s2
	call	sqlite3_create_function_v2@plt
	call	sqlite3_error@plt
	j	.L66
	.size	_ezsqlite_db_create_function, .-_ezsqlite_db_create_function
	.section	.text.dummy,"ax",@progbits
	.align	1
	.globl	dummy
	.type	dummy, @function
dummy:
	li	a0,3
	ret
	.size	dummy, .-dummy
	.section	.text._ezsqlite_db_load,"ax",@progbits
	.align	1
	.globl	_ezsqlite_db_load
	.type	_ezsqlite_db_load, @function
_ezsqlite_db_load:
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	lla	s0,.LANCHOR0
	lw	a5,0(s0)
	sd	a0,8(sp)
	beq	a5,zero,.L78
.L74:
	la	s1,Caml_state
	ld	a4,0(s1)
	ld	a0,8(sp)
	li	a5,1
	ld	s0,280(a4)
	addi	a3,sp,32
	addi	s2,sp,24
	sd	a3,280(a4)
	sd	a5,48(sp)
	sd	a5,40(sp)
	li	a3,0
	addi	a5,sp,8
	li	a2,134
	mv	a1,s2
	sd	s0,32(sp)
	sd	a5,56(sp)
	sd	zero,24(sp)
	call	sqlite3_open_v2@plt
	bne	a0,zero,.L79
	ld	a5,0(s1)
	ld	a0,24(sp)
	sd	s0,280(a5)
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	addi	sp,sp,128
	jr	ra
.L78:
	la	a0,auto_extension_callback
	call	sqlite3_auto_extension@plt
	li	a5,1
	sw	a5,0(s0)
	j	.L74
.L79:
	ld	a0,8(sp)
	mv	a1,s2
	li	a3,0
	li	a2,134
	call	sqlite3_open_v2@plt
	call	sqlite3_error@plt
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	li	a0,1
	addi	sp,sp,128
	jr	ra
	.size	_ezsqlite_db_load, .-_ezsqlite_db_load
	.section	.text._ezsqlite_db_free,"ax",@progbits
	.align	1
	.globl	_ezsqlite_db_free
	.type	_ezsqlite_db_free, @function
_ezsqlite_db_free:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a5,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a5)
	li	a4,1
	addi	a3,sp,16
	sd	a4,32(sp)
	sd	a4,24(sp)
	addi	a4,sp,8
	sd	a0,8(sp)
	sd	s0,16(sp)
	sd	a3,280(a5)
	sd	a4,40(sp)
	bne	a0,zero,.L86
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
.L86:
	call	sqlite3_close@plt
	ld	a5,0(s1)
	li	a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_db_free, .-_ezsqlite_db_free
	.section	.text._ezsqlite_stmt_prepare,"ax",@progbits
	.align	1
	.globl	_ezsqlite_stmt_prepare
	.type	_ezsqlite_stmt_prepare, @function
_ezsqlite_stmt_prepare:
	addi	sp,sp,-144
	sd	s3,104(sp)
	la	s3,Caml_state
	ld	a5,0(s3)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s4,96(sp)
	sd	ra,136(sp)
	sd	s2,112(sp)
	addi	a4,sp,32
	ld	s2,280(a5)
	sd	a4,280(a5)
	li	a5,1
	sd	a5,48(sp)
	li	a5,2
	sd	a5,40(sp)
	addi	a5,sp,8
	sd	a0,8(sp)
	mv	s1,a0
	sd	a5,56(sp)
	mv	a0,a1
	mv	a5,sp
	mv	s0,a1
	sd	a1,0(sp)
	sd	s2,32(sp)
	sd	a5,64(sp)
	sd	zero,24(sp)
	addi	s4,sp,24
	call	caml_string_length@plt
	sext.w	a2,a0
	li	a4,0
	mv	a3,s4
	mv	a1,s0
	mv	a0,s1
	call	sqlite3_prepare_v2@plt
	bne	a0,zero,.L91
	call	dummy@plt
	ld	a5,0(s3)
	ld	a0,24(sp)
	sd	s2,280(a5)
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	addi	sp,sp,144
	jr	ra
.L91:
	ld	s0,0(sp)
	mv	a0,s0
	call	caml_string_length@plt
	mv	a3,s4
	sext.w	a2,a0
	mv	a1,s0
	li	a4,0
	mv	a0,s1
	call	sqlite3_prepare_v2@plt
	call	sqlite3_error@plt
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	li	a0,1
	addi	sp,sp,144
	jr	ra
	.size	_ezsqlite_stmt_prepare, .-_ezsqlite_stmt_prepare
	.section	.text._ezsqlite_stmt_finalize,"ax",@progbits
	.align	1
	.globl	_ezsqlite_stmt_finalize
	.type	_ezsqlite_stmt_finalize, @function
_ezsqlite_stmt_finalize:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a5,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a5)
	li	a4,1
	addi	a3,sp,16
	sd	a4,32(sp)
	sd	a4,24(sp)
	addi	a4,sp,8
	sd	a0,8(sp)
	sd	s0,16(sp)
	sd	a3,280(a5)
	sd	a4,40(sp)
	bne	a0,zero,.L98
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
.L98:
	call	sqlite3_finalize@plt
	ld	a5,0(s1)
	li	a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_stmt_finalize, .-_ezsqlite_stmt_finalize
	.section	.text._ezsqlite_stmt_step,"ax",@progbits
	.align	1
	.globl	_ezsqlite_stmt_step
	.type	_ezsqlite_stmt_step, @function
_ezsqlite_stmt_step:
	addi	sp,sp,-112
	sd	s2,80(sp)
	la	s2,Caml_state
	ld	a4,0(s2)
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	ld	s1,280(a4)
	li	a5,1
	addi	a3,sp,16
	sd	a3,280(a4)
	sd	a5,32(sp)
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a0,8(sp)
	sd	s1,16(sp)
	call	sqlite3_step@plt
	mv	s0,a0
	call	dummy@plt
	li	a5,100
	beq	s0,a5,.L100
	li	a5,101
	beq	s0,a5,.L104
	bne	s0,zero,.L107
.L104:
	ld	a5,0(s2)
	li	a0,1
	sd	s1,280(a5)
.L99:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	addi	sp,sp,112
	jr	ra
.L100:
	ld	a5,0(s2)
	li	a0,3
	sd	s1,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	addi	sp,sp,112
	jr	ra
.L107:
	mv	a0,s0
	call	sqlite3_error@plt
	li	a0,1
	j	.L99
	.size	_ezsqlite_stmt_step, .-_ezsqlite_stmt_step
	.section	.text._ezsqlite_stmt_reset,"ax",@progbits
	.align	1
	.globl	_ezsqlite_stmt_reset
	.type	_ezsqlite_stmt_reset, @function
_ezsqlite_stmt_reset:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a4)
	li	a5,1
	addi	a3,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	sd	a3,280(a4)
	addi	a5,sp,8
	sd	a0,8(sp)
	sd	s0,16(sp)
	sd	a5,40(sp)
	call	sqlite3_reset@plt
	bne	a0,zero,.L112
	ld	a5,0(s1)
	li	a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
.L112:
	ld	a0,8(sp)
	call	sqlite3_reset@plt
	call	sqlite3_error@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_stmt_reset, .-_ezsqlite_stmt_reset
	.section	.text._ezsqlite_stmt_clear_bindings,"ax",@progbits
	.align	1
	.globl	_ezsqlite_stmt_clear_bindings
	.type	_ezsqlite_stmt_clear_bindings, @function
_ezsqlite_stmt_clear_bindings:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a4)
	li	a5,1
	addi	a3,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	sd	a3,280(a4)
	addi	a5,sp,8
	sd	a0,8(sp)
	sd	s0,16(sp)
	sd	a5,40(sp)
	call	sqlite3_clear_bindings@plt
	bne	a0,zero,.L117
	ld	a5,0(s1)
	li	a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
.L117:
	ld	a0,8(sp)
	call	sqlite3_clear_bindings@plt
	call	sqlite3_error@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_stmt_clear_bindings, .-_ezsqlite_stmt_clear_bindings
	.section	.text._ezsqlite_stmt_parameter_count,"ax",@progbits
	.align	1
	.globl	_ezsqlite_stmt_parameter_count
	.type	_ezsqlite_stmt_parameter_count, @function
_ezsqlite_stmt_parameter_count:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a4)
	li	a5,1
	addi	a3,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	sd	a3,280(a4)
	addi	a5,sp,8
	sd	s0,16(sp)
	sd	a5,40(sp)
	sd	a0,8(sp)
	call	sqlite3_bind_parameter_count@plt
	ld	a5,0(s1)
	slli	a0,a0,1
	addi	a0,a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_stmt_parameter_count, .-_ezsqlite_stmt_parameter_count
	.section	.text._ezsqlite_stmt_parameter_index,"ax",@progbits
	.align	1
	.globl	_ezsqlite_stmt_parameter_index
	.type	_ezsqlite_stmt_parameter_index, @function
_ezsqlite_stmt_parameter_index:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a5,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	addi	a4,sp,16
	ld	s0,280(a5)
	sd	a4,280(a5)
	li	a5,1
	sd	a5,32(sp)
	li	a5,2
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	mv	a5,sp
	sd	s0,16(sp)
	sd	a5,48(sp)
	sd	a0,8(sp)
	sd	a1,0(sp)
	call	sqlite3_bind_parameter_index@plt
	ld	a5,0(s1)
	slli	a0,a0,1
	addi	a0,a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_stmt_parameter_index, .-_ezsqlite_stmt_parameter_index
	.section	.text._ezsqlite_bind_null,"ax",@progbits
	.align	1
	.globl	_ezsqlite_bind_null
	.type	_ezsqlite_bind_null, @function
_ezsqlite_bind_null:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	a0,8(sp)
	sd	s0,16(sp)
	sd	a5,48(sp)
	call	sqlite3_bind_null@plt
	bne	a0,zero,.L126
	ld	a5,0(s1)
	li	a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
.L126:
	ld	a1,0(sp)
	ld	a0,8(sp)
	srai	a1,a1,1
	sext.w	a1,a1
	call	sqlite3_bind_null@plt
	call	sqlite3_error@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_bind_null, .-_ezsqlite_bind_null
	.section	.text._ezsqlite_bind_text,"ax",@progbits
	.align	1
	.globl	_ezsqlite_bind_text
	.type	_ezsqlite_bind_text, @function
_ezsqlite_bind_text:
	addi	sp,sp,-128
	sd	s2,96(sp)
	la	s2,Caml_state
	ld	a5,0(s2)
	sd	s0,112(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	addi	a4,sp,32
	ld	s1,280(a5)
	sd	a4,280(a5)
	li	a5,1
	sd	a5,48(sp)
	li	a5,3
	sd	a5,40(sp)
	addi	a5,sp,24
	sd	a5,56(sp)
	addi	a5,sp,16
	sd	a0,24(sp)
	sd	a5,64(sp)
	mv	a0,a2
	addi	a5,sp,8
	sd	a1,16(sp)
	sd	a2,8(sp)
	sd	s1,32(sp)
	sd	a5,72(sp)
	call	caml_string_length@plt
	ld	a1,16(sp)
	mv	s0,a0
	ld	a2,8(sp)
	ld	a0,24(sp)
	sext.w	s0,s0
	srai	a1,a1,1
	li	a4,-1
	mv	a3,s0
	sext.w	a1,a1
	call	sqlite3_bind_text@plt
	bne	a0,zero,.L131
	ld	a5,0(s2)
	li	a0,1
	sd	s1,280(a5)
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	addi	sp,sp,128
	jr	ra
.L131:
	ld	a1,16(sp)
	ld	a2,8(sp)
	ld	a0,24(sp)
	srai	a1,a1,1
	mv	a3,s0
	li	a4,-1
	sext.w	a1,a1
	call	sqlite3_bind_text@plt
	call	sqlite3_error@plt
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	li	a0,1
	addi	sp,sp,128
	jr	ra
	.size	_ezsqlite_bind_text, .-_ezsqlite_bind_text
	.section	.text._ezsqlite_bind_int64,"ax",@progbits
	.align	1
	.globl	_ezsqlite_bind_int64
	.type	_ezsqlite_bind_int64, @function
_ezsqlite_bind_int64:
	addi	sp,sp,-128
	sd	s1,104(sp)
	la	s1,Caml_state
	ld	a5,0(s1)
	sd	ra,120(sp)
	sd	s0,112(sp)
	addi	a4,sp,32
	ld	s0,280(a5)
	sd	a4,280(a5)
	li	a5,1
	sd	a5,48(sp)
	li	a5,3
	sd	a5,40(sp)
	addi	a5,sp,24
	sd	a5,56(sp)
	addi	a5,sp,16
	sd	a5,64(sp)
	addi	a5,sp,8
	sd	a1,16(sp)
	sd	a0,24(sp)
	sd	a2,8(sp)
	sd	s0,32(sp)
	sd	a5,72(sp)
	ld	a2,8(a2)
	srai	a1,a1,1
	sext.w	a1,a1
	call	sqlite3_bind_int64@plt
	bne	a0,zero,.L136
	ld	a5,0(s1)
	li	a0,1
	sd	s0,280(a5)
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	addi	sp,sp,128
	jr	ra
.L136:
	ld	a5,8(sp)
	ld	a1,16(sp)
	ld	a0,24(sp)
	ld	a2,8(a5)
	srai	a1,a1,1
	sext.w	a1,a1
	call	sqlite3_bind_int64@plt
	call	sqlite3_error@plt
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	li	a0,1
	addi	sp,sp,128
	jr	ra
	.size	_ezsqlite_bind_int64, .-_ezsqlite_bind_int64
	.section	.text._ezsqlite_bind_value,"ax",@progbits
	.align	1
	.globl	_ezsqlite_bind_value
	.type	_ezsqlite_bind_value, @function
_ezsqlite_bind_value:
	addi	sp,sp,-128
	sd	s1,104(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	a1,16(sp)
	sext.w	a1,a5
	li	a5,1
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	a5,48(sp)
	li	a5,3
	ld	s0,280(a4)
	sd	a5,40(sp)
	addi	a5,sp,24
	addi	a3,sp,32
	sd	a5,56(sp)
	addi	a5,sp,16
	sd	a5,64(sp)
	sd	a3,280(a4)
	addi	a5,sp,8
	sd	a0,24(sp)
	sd	a2,8(sp)
	sd	s0,32(sp)
	sd	a5,72(sp)
	call	sqlite3_bind_value@plt
	bne	a0,zero,.L141
	ld	a5,0(s1)
	li	a0,1
	sd	s0,280(a5)
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	addi	sp,sp,128
	jr	ra
.L141:
	ld	a1,16(sp)
	ld	a2,8(sp)
	ld	a0,24(sp)
	srai	a1,a1,1
	sext.w	a1,a1
	call	sqlite3_bind_value@plt
	call	sqlite3_error@plt
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	li	a0,1
	addi	sp,sp,128
	jr	ra
	.size	_ezsqlite_bind_value, .-_ezsqlite_bind_value
	.section	.text._ezsqlite_data_count,"ax",@progbits
	.align	1
	.globl	_ezsqlite_data_count
	.type	_ezsqlite_data_count, @function
_ezsqlite_data_count:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a4)
	li	a5,1
	addi	a3,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	sd	a3,280(a4)
	addi	a5,sp,8
	sd	s0,16(sp)
	sd	a5,40(sp)
	sd	a0,8(sp)
	call	sqlite3_data_count@plt
	ld	a5,0(s1)
	slli	a0,a0,1
	addi	a0,a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_data_count, .-_ezsqlite_data_count
	.section	.text._ezsqlite_column_type,"ax",@progbits
	.align	1
	.globl	_ezsqlite_column_type
	.type	_ezsqlite_column_type, @function
_ezsqlite_column_type:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	s0,16(sp)
	sd	a5,48(sp)
	sd	a0,8(sp)
	call	sqlite3_column_type@plt
	ld	a5,0(s1)
	slli	a0,a0,1
	addi	a0,a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_column_type, .-_ezsqlite_column_type
	.section	.text._ezsqlite_column_text,"ax",@progbits
	.align	1
	.globl	_ezsqlite_column_text
	.type	_ezsqlite_column_text, @function
_ezsqlite_column_text:
	addi	sp,sp,-192
	sd	s2,160(sp)
	la	s2,Caml_state
	ld	a3,0(s2)
	srai	a4,a1,1
	sd	ra,184(sp)
	sd	s0,176(sp)
	sd	s1,168(sp)
	sd	a1,0(sp)
	sext.w	a1,a4
	addi	a4,sp,96
	ld	s1,280(a3)
	sd	a4,280(a3)
	li	a4,2
	sd	a4,40(sp)
	addi	a4,sp,8
	li	a5,1
	sd	a4,56(sp)
	mv	a4,sp
	sd	a5,48(sp)
	sd	a4,64(sp)
	sd	a5,24(sp)
	addi	a4,sp,32
	sd	a5,112(sp)
	sd	a5,104(sp)
	addi	a5,sp,24
	sd	a5,120(sp)
	sd	a4,96(sp)
	sd	a0,8(sp)
	sd	s1,32(sp)
	call	sqlite3_column_bytes@plt
	mv	s0,a0
	call	caml_alloc_string@plt
	ld	a1,0(sp)
	mv	a5,a0
	ld	a0,8(sp)
	srai	a1,a1,1
	sext.w	a1,a1
	sd	a5,24(sp)
	call	sqlite3_column_text@plt
	beq	a0,zero,.L147
	mv	a1,a0
	ld	a0,24(sp)
	mv	a2,s0
	call	memcpy@plt
.L147:
	ld	a5,0(s2)
	ld	a0,24(sp)
	sd	s1,280(a5)
	ld	ra,184(sp)
	ld	s0,176(sp)
	ld	s1,168(sp)
	ld	s2,160(sp)
	addi	sp,sp,192
	jr	ra
	.size	_ezsqlite_column_text, .-_ezsqlite_column_text
	.section	.text._ezsqlite_column_int64,"ax",@progbits
	.align	1
	.globl	_ezsqlite_column_int64
	.type	_ezsqlite_column_int64, @function
_ezsqlite_column_int64:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	a5,48(sp)
	sd	s0,16(sp)
	sd	a0,8(sp)
	call	sqlite3_column_int64@plt
	call	caml_copy_int64@plt
	ld	a5,0(s1)
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_column_int64, .-_ezsqlite_column_int64
	.section	.text._ezsqlite_column_int,"ax",@progbits
	.align	1
	.globl	_ezsqlite_column_int
	.type	_ezsqlite_column_int, @function
_ezsqlite_column_int:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	s0,16(sp)
	sd	a5,48(sp)
	sd	a0,8(sp)
	call	sqlite3_column_int@plt
	ld	a5,0(s1)
	slli	a0,a0,1
	addi	a0,a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_column_int, .-_ezsqlite_column_int
	.section	.text._ezsqlite_column_value,"ax",@progbits
	.align	1
	.globl	_ezsqlite_column_value
	.type	_ezsqlite_column_value, @function
_ezsqlite_column_value:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	s0,16(sp)
	sd	a5,48(sp)
	sd	a0,8(sp)
	call	sqlite3_column_value@plt
	ld	a5,0(s1)
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_column_value, .-_ezsqlite_column_value
	.section	.text._ezsqlite_column_name,"ax",@progbits
	.align	1
	.globl	_ezsqlite_column_name
	.type	_ezsqlite_column_name, @function
_ezsqlite_column_name:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	a5,48(sp)
	sd	s0,16(sp)
	sd	a0,8(sp)
	call	sqlite3_column_name@plt
	call	caml_copy_string@plt
	ld	a5,0(s1)
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_column_name, .-_ezsqlite_column_name
	.section	.text._ezsqlite_database_name,"ax",@progbits
	.align	1
	.globl	_ezsqlite_database_name
	.type	_ezsqlite_database_name, @function
_ezsqlite_database_name:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	a5,48(sp)
	sd	s0,16(sp)
	sd	a0,8(sp)
	call	sqlite3_column_database_name@plt
	call	caml_copy_string@plt
	ld	a5,0(s1)
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_database_name, .-_ezsqlite_database_name
	.section	.text._ezsqlite_table_name,"ax",@progbits
	.align	1
	.globl	_ezsqlite_table_name
	.type	_ezsqlite_table_name, @function
_ezsqlite_table_name:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	a5,48(sp)
	sd	s0,16(sp)
	sd	a0,8(sp)
	call	sqlite3_column_table_name@plt
	call	caml_copy_string@plt
	ld	a5,0(s1)
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_table_name, .-_ezsqlite_table_name
	.section	.text._ezsqlite_origin_name,"ax",@progbits
	.align	1
	.globl	_ezsqlite_origin_name
	.type	_ezsqlite_origin_name, @function
_ezsqlite_origin_name:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	srai	a5,a1,1
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,1
	ld	s0,280(a4)
	sd	a5,32(sp)
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	a5,48(sp)
	sd	s0,16(sp)
	sd	a0,8(sp)
	call	sqlite3_column_origin_name@plt
	call	caml_copy_string@plt
	ld	a5,0(s1)
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_origin_name, .-_ezsqlite_origin_name
	.section	.text._ezsqlite_backup_init,"ax",@progbits
	.align	1
	.globl	_ezsqlite_backup_init
	.type	_ezsqlite_backup_init, @function
_ezsqlite_backup_init:
	addi	sp,sp,-128
	sd	s2,96(sp)
	la	s2,Caml_state
	ld	a5,0(s2)
	sd	s0,112(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	addi	a4,sp,32
	ld	s1,280(a5)
	sd	a4,280(a5)
	li	a5,1
	sd	a5,48(sp)
	li	a5,4
	sd	a5,40(sp)
	addi	a5,sp,24
	sd	a5,56(sp)
	addi	a5,sp,16
	sd	a5,64(sp)
	addi	a5,sp,8
	sd	a5,72(sp)
	mv	a5,sp
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	sd	a3,0(sp)
	sd	s1,32(sp)
	sd	a5,80(sp)
	mv	s0,a0
	call	sqlite3_backup_init@plt
	beq	a0,zero,.L169
	ld	a5,0(s2)
	sd	s1,280(a5)
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	addi	sp,sp,128
	jr	ra
.L169:
	lla	a0,.LC3
	call	caml_named_value@plt
	ld	s1,0(a0)
	mv	a0,s0
	call	sqlite3_errmsg@plt
	mv	a1,a0
	mv	a0,s1
	call	caml_raise_with_string@plt
	.size	_ezsqlite_backup_init, .-_ezsqlite_backup_init
	.section	.text._ezsqlite_backup_step,"ax",@progbits
	.align	1
	.globl	_ezsqlite_backup_step
	.type	_ezsqlite_backup_step, @function
_ezsqlite_backup_step:
	addi	sp,sp,-112
	sd	s2,80(sp)
	la	s2,Caml_state
	ld	a4,0(s2)
	sd	s0,96(sp)
	sd	ra,104(sp)
	sd	s1,88(sp)
	srai	a5,a1,1
	ld	s1,280(a4)
	sd	a1,0(sp)
	sext.w	a1,a5
	li	a5,2
	addi	a3,sp,16
	sd	a5,24(sp)
	addi	a5,sp,8
	li	s0,1
	sd	a5,40(sp)
	sd	a3,280(a4)
	mv	a5,sp
	sd	a0,8(sp)
	sd	s1,16(sp)
	sd	s0,32(sp)
	sd	a5,48(sp)
	call	sqlite3_backup_step@plt
	beq	a0,zero,.L171
	addiw	a4,a0,-5
	bleu	a4,s0,.L171
	li	a4,101
	bne	a0,a4,.L174
	ld	a5,0(s2)
	li	a0,1
	sd	s1,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	addi	sp,sp,112
	jr	ra
.L174:
	call	sqlite3_error@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
.L171:
	ld	a5,0(s2)
	li	a0,3
	sd	s1,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_backup_step, .-_ezsqlite_backup_step
	.section	.text._ezsqlite_backup_finish,"ax",@progbits
	.align	1
	.globl	_ezsqlite_backup_finish
	.type	_ezsqlite_backup_finish, @function
_ezsqlite_backup_finish:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a4)
	li	a5,1
	addi	a3,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	sd	a3,280(a4)
	addi	a5,sp,8
	sd	a0,8(sp)
	sd	s0,16(sp)
	sd	a5,40(sp)
	call	sqlite3_backup_finish@plt
	bne	a0,zero,.L183
	ld	a5,0(s1)
	li	a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
.L183:
	ld	a0,8(sp)
	call	sqlite3_backup_finish@plt
	call	sqlite3_error@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	li	a0,1
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_backup_finish, .-_ezsqlite_backup_finish
	.section	.text._ezsqlite_backup_remaining,"ax",@progbits
	.align	1
	.globl	_ezsqlite_backup_remaining
	.type	_ezsqlite_backup_remaining, @function
_ezsqlite_backup_remaining:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a4)
	li	a5,1
	addi	a3,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	sd	a3,280(a4)
	addi	a5,sp,8
	sd	s0,16(sp)
	sd	a5,40(sp)
	sd	a0,8(sp)
	call	sqlite3_backup_remaining@plt
	ld	a5,0(s1)
	slli	a0,a0,1
	addi	a0,a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_backup_remaining, .-_ezsqlite_backup_remaining
	.section	.text._ezsqlite_backup_pagecount,"ax",@progbits
	.align	1
	.globl	_ezsqlite_backup_pagecount
	.type	_ezsqlite_backup_pagecount, @function
_ezsqlite_backup_pagecount:
	addi	sp,sp,-112
	sd	s1,88(sp)
	la	s1,Caml_state
	ld	a4,0(s1)
	sd	ra,104(sp)
	sd	s0,96(sp)
	ld	s0,280(a4)
	li	a5,1
	addi	a3,sp,16
	sd	a5,32(sp)
	sd	a5,24(sp)
	sd	a3,280(a4)
	addi	a5,sp,8
	sd	s0,16(sp)
	sd	a5,40(sp)
	sd	a0,8(sp)
	call	sqlite3_backup_pagecount@plt
	ld	a5,0(s1)
	slli	a0,a0,1
	addi	a0,a0,1
	sd	s0,280(a5)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	_ezsqlite_backup_pagecount, .-_ezsqlite_backup_pagecount
	.globl	Null
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_inited, @object
	.size	_inited, 4
_inited:
	.zero	4
	.zero	4
	.type	Null, @object
	.size	Null, 8
Null:
	.zero	8
	.ident	"GCC: (GNU) 9.2.0"
