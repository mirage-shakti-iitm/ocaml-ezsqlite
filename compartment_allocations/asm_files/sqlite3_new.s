	.file	"sqlite3_new.c"
	.option pic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"Wrong number of columns for an rtree table"
	.align	3
.LC3:
	.string	"Too few columns for an rtree table"
	.align	3
.LC4:
	.string	"Too many columns for an rtree table"
	.align	3
.LC5:
	.string	"Auxiliary rtree columns must be last"
	.text
	.section	.text.currentTimeFunc,"ax",@progbits
	.align	1
	.type	currentTimeFunc, @function
currentTimeFunc:
	ret
	.size	currentTimeFunc, .-currentTimeFunc
	.section	.text.vfsUnlink,"ax",@progbits
	.align	1
	.type	vfsUnlink, @function
vfsUnlink:
	beq	a0,zero,.L3
	lla	a4,.LANCHOR0
	ld	a5,0(a4)
	beq	a5,a0,.L17
	bne	a5,zero,.L6
	j	.L3
.L19:
	beq	a5,a0,.L18
.L6:
	mv	a4,a5
	ld	a5,16(a5)
	bne	a5,zero,.L19
.L3:
	ret
.L17:
	ld	a5,16(a5)
	sd	a5,0(a4)
	ret
.L18:
	ld	a5,16(a5)
	sd	a5,16(a4)
	ret
	.size	vfsUnlink, .-vfsUnlink
	.section	.text.sqlite3MemSize,"ax",@progbits
	.align	1
	.type	sqlite3MemSize, @function
sqlite3MemSize:
	lw	a0,-8(a0)
	ret
	.size	sqlite3MemSize, .-sqlite3MemSize
	.section	.text.sqlite3MemRoundup,"ax",@progbits
	.align	1
	.type	sqlite3MemRoundup, @function
sqlite3MemRoundup:
	addiw	a0,a0,7
	andi	a0,a0,-8
	sext.w	a0,a0
	ret
	.size	sqlite3MemRoundup, .-sqlite3MemRoundup
	.section	.text.sqlite3MemInit,"ax",@progbits
	.align	1
	.type	sqlite3MemInit, @function
sqlite3MemInit:
	li	a0,0
	ret
	.size	sqlite3MemInit, .-sqlite3MemInit
	.section	.text.sqlite3_release_memory,"ax",@progbits
	.align	1
	.globl	sqlite3_release_memory
	.type	sqlite3_release_memory, @function
sqlite3_release_memory:
	li	a0,0
	ret
	.size	sqlite3_release_memory, .-sqlite3_release_memory
	.section	.text.sqlite3MallocSize,"ax",@progbits
	.align	1
	.type	sqlite3MallocSize, @function
sqlite3MallocSize:
	ld	t1,.LANCHOR1+72
	jr	t1
	.size	sqlite3MallocSize, .-sqlite3MallocSize
	.section	.text.sqlite3_msize,"ax",@progbits
	.align	1
	.globl	sqlite3_msize
	.type	sqlite3_msize, @function
sqlite3_msize:
	beq	a0,zero,.L27
	addi	sp,sp,-16
	sd	ra,8(sp)
	ld	a5,.LANCHOR1+72
	jalr	a5
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
.L27:
	li	a0,0
	ret
	.size	sqlite3_msize, .-sqlite3_msize
	.section	.text.measureAllocationSize,"ax",@progbits
	.align	1
	.type	measureAllocationSize, @function
measureAllocationSize:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	mv	a0,a1
	beq	s0,zero,.L33
	ld	a5,400(s0)
	bgtu	a5,a1,.L33
	ld	a5,408(s0)
	bleu	a5,a1,.L33
	ld	a4,664(s0)
	lhu	a0,364(s0)
	lw	a5,0(a4)
	addw	a0,a5,a0
	sw	a0,0(a4)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L33:
	ld	a5,.LANCHOR1+72
	jalr	a5
	ld	a4,664(s0)
	lw	a5,0(a4)
	addw	a0,a5,a0
	sw	a0,0(a4)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	measureAllocationSize, .-measureAllocationSize
	.section	.text.sqlite3_str_errcode,"ax",@progbits
	.align	1
	.globl	sqlite3_str_errcode
	.type	sqlite3_str_errcode, @function
sqlite3_str_errcode:
	beq	a0,zero,.L41
	lbu	a0,28(a0)
	ret
.L41:
	li	a0,7
	ret
	.size	sqlite3_str_errcode, .-sqlite3_str_errcode
	.section	.text.sqlite3_str_length,"ax",@progbits
	.align	1
	.globl	sqlite3_str_length
	.type	sqlite3_str_length, @function
sqlite3_str_length:
	beq	a0,zero,.L44
	lw	a0,24(a0)
	ret
.L44:
	li	a0,0
	ret
	.size	sqlite3_str_length, .-sqlite3_str_length
	.section	.text.sqlite3_str_value,"ax",@progbits
	.align	1
	.globl	sqlite3_str_value
	.type	sqlite3_str_value, @function
sqlite3_str_value:
	beq	a0,zero,.L48
	lw	a5,24(a0)
	beq	a5,zero,.L48
	ld	a4,8(a0)
	slli	a5,a5,32
	srli	a5,a5,32
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a0,8(a0)
	ret
.L48:
	li	a0,0
	ret
	.size	sqlite3_str_value, .-sqlite3_str_value
	.section	.text.sqlite3Utf8Read,"ax",@progbits
	.align	1
	.type	sqlite3Utf8Read, @function
sqlite3Utf8Read:
	ld	a5,0(a0)
	mv	a2,a0
	li	a3,191
	addi	a4,a5,1
	sd	a4,0(a0)
	lbu	a0,0(a5)
	bleu	a0,a3,.L54
	addiw	a4,a0,-192
	lbu	a3,1(a5)
	slli	a4,a4,32
	lla	a1,.LANCHOR2
	srli	a4,a4,32
	add	a4,a1,a4
	andi	a3,a3,192
	li	a1,128
	lbu	a0,0(a4)
	bne	a3,a1,.L51
	addi	a5,a5,2
.L52:
	sd	a5,0(a2)
	lbu	a3,-1(a5)
	lbu	a4,0(a5)
	slliw	a0,a0,6
	andi	a3,a3,63
	andi	a4,a4,192
	addw	a0,a3,a0
	addi	a5,a5,1
	beq	a4,a1,.L52
	li	a5,127
	bleu	a0,a5,.L53
	li	a5,57344
	andi	a4,a0,-2048
	addi	a5,a5,-2048
	beq	a4,a5,.L53
	li	a5,65536
	andi	a4,a0,-2
	addi	a5,a5,-2
	beq	a4,a5,.L53
.L54:
	ret
.L51:
	li	a5,127
	bgtu	a0,a5,.L54
.L53:
	li	a0,65536
	addi	a0,a0,-3
	ret
	.size	sqlite3Utf8Read, .-sqlite3Utf8Read
	.section	.text.sqlite3Dequote,"ax",@progbits
	.align	1
	.type	sqlite3Dequote, @function
sqlite3Dequote:
	beq	a0,zero,.L56
	lbu	a6,0(a0)
	lla	a5,.LANCHOR2
	add	a5,a5,a6
	lb	a5,64(a5)
	bge	a5,zero,.L56
	li	a5,91
	bne	a6,a5,.L58
	li	a6,93
.L58:
	li	a4,0
	li	a5,1
	j	.L62
.L59:
	sb	a3,0(a1)
.L61:
	addiw	a5,a5,1
	addiw	a4,a4,1
.L62:
	add	a2,a0,a5
	lbu	a3,0(a2)
	add	a1,a0,a4
	bne	a3,a6,.L59
	lbu	a3,1(a2)
	addiw	a5,a5,1
	bne	a3,a6,.L60
	sb	a6,0(a1)
	j	.L61
.L60:
	sb	zero,0(a1)
.L56:
	ret
	.size	sqlite3Dequote, .-sqlite3Dequote
	.section	.rodata.str1.8
	.align	3
.LC7:
	.string	"922337203685477580"
	.section	.text.sqlite3Atoi64,"ax",@progbits
	.align	1
	.type	sqlite3Atoi64, @function
sqlite3Atoi64:
	li	a5,1
	mv	a6,a0
	beq	a3,a5,.L67
	li	a0,3
	subw	a0,a0,a3
	bgt	a2,a0,.L68
	j	.L69
.L70:
	addiw	a0,a0,2
	ble	a2,a0,.L69
.L68:
	add	a5,a6,a0
	lbu	a5,0(a5)
	beq	a5,zero,.L70
.L69:
	xori	a7,a0,1
	andi	a3,a3,1
	add	a7,a6,a7
	sgt	a0,a2,a0
	add	a6,a6,a3
	li	t1,2
.L71:
	bgeu	a6,a7,.L76
	lla	t6,.LANCHOR2
	j	.L72
.L75:
	add	a6,a6,t1
	bgeu	a6,a7,.L121
.L72:
	lbu	a4,0(a6)
	add	a5,t6,a4
	lbu	a5,64(a5)
	andi	a5,a5,1
	bne	a5,zero,.L75
	bgeu	a6,a7,.L76
	li	a5,45
	beq	a4,a5,.L122
	li	a5,43
	li	t0,0
	beq	a4,a5,.L123
.L79:
	li	a5,48
	mv	a3,a6
	bne	a4,a5,.L124
.L84:
	add	a3,a3,t1
	bgeu	a3,a7,.L83
	lbu	a4,0(a3)
	beq	a4,a5,.L84
.L124:
	bgeu	a3,a7,.L83
	mv	t5,a3
	li	t4,0
	li	t3,0
	li	t2,9
	j	.L85
.L87:
	addw	t4,t1,t4
	add	t5,a3,t4
	addi	t3,a5,-48
	bgeu	t5,a7,.L86
	lbu	a4,0(t5)
.L85:
	slli	a5,t3,2
	add	a5,a5,t3
	addiw	a2,a4,-48
	slli	a5,a5,1
	andi	a2,a2,0xff
	add	a5,a5,a4
	bleu	a2,t2,.L87
.L86:
	bge	t3,zero,.L88
	li	a5,-1
	beq	t0,zero,.L107
	slli	a5,a5,63
	sd	a5,0(a1)
.L90:
	beq	t4,zero,.L125
	bne	a0,zero,.L95
	bgtu	a7,t5,.L103
.L95:
	slliw	a5,t1,2
	addw	a5,a5,t1
	slliw	a5,a5,2
	subw	a5,a5,t1
	bgt	a5,t4,.L114
	bne	a5,t4,.L110
	sext.w	t3,t1
	lla	a2,.LC7+1
	lla	t4,.LC7+18
	li	a6,0
	li	a4,57
	j	.L100
.L126:
	beq	t4,a2,.L99
	lbu	a4,0(a2)
	addi	a2,a2,1
.L100:
	add	a7,a3,a6
	lbu	a5,0(a7)
	addw	a6,t3,a6
	subw	a4,a5,a4
	slliw	a5,a4,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	beq	a5,zero,.L126
.L98:
	blt	a5,zero,.L127
	li	a4,-1
	bne	t0,zero,.L111
.L131:
	srli	a4,a4,1
	sd	a4,0(a1)
	bne	a5,zero,.L112
.L132:
	beq	t0,zero,.L128
.L114:
	ret
.L125:
	beq	a6,a3,.L92
	bne	a0,zero,.L114
	bleu	a7,t5,.L114
.L103:
	mv	a4,t4
	add	a2,a3,t4
	j	.L96
.L130:
	bleu	a7,a2,.L129
.L96:
	lbu	a5,0(a2)
	addw	a4,a4,t1
	add	a2,a3,a4
	add	a5,t6,a5
	lbu	a5,64(a5)
	andi	a5,a5,1
	bne	a5,zero,.L130
	li	a0,1
	j	.L95
.L121:
	sd	zero,0(a1)
	li	a0,-1
	ret
.L67:
	add	a7,a0,a2
	li	t1,1
	li	a0,0
	j	.L71
.L110:
	li	a5,1
	li	a4,-1
	beq	t0,zero,.L131
.L111:
	slli	a4,a4,63
	sd	a4,0(a1)
	beq	a5,zero,.L132
.L112:
	li	a0,2
	ret
.L128:
	li	a0,3
	ret
.L107:
	srli	a5,a5,1
	sd	a5,0(a1)
	j	.L90
.L122:
	add	a6,a6,t1
	li	t0,1
.L78:
	bgeu	a6,a7,.L105
	lbu	a4,0(a6)
	j	.L79
.L99:
	slliw	a5,t1,3
	addw	t1,a5,t1
	slliw	t1,t1,1
	add	a3,a3,t1
	lbu	a5,0(a3)
	addiw	a5,a5,-56
	j	.L98
.L123:
	add	a6,a6,t1
	j	.L78
.L129:
	li	a0,0
	j	.L95
.L105:
	mv	a3,a6
.L83:
	mv	t5,a3
	li	t4,0
	li	t3,0
.L88:
	beq	t0,zero,.L91
	neg	t3,t3
	sd	t3,0(a1)
	j	.L90
.L127:
	ret
.L76:
	sd	zero,0(a1)
.L92:
	li	a0,-1
	ret
.L91:
	sd	t3,0(a1)
	j	.L90
	.size	sqlite3Atoi64, .-sqlite3Atoi64
	.section	.text.putVarint64,"ax",@progbits
	.align	1
	.type	putVarint64, @function
putVarint64:
	srli	a5,a1,56
	mv	a4,a0
	bne	a5,zero,.L148
	addi	sp,sp,-16
	mv	a3,sp
	li	a0,0
.L137:
	ori	a5,a1,-128
	sb	a5,0(a3)
	srli	a1,a1,7
	mv	a5,a0
	addi	a3,a3,1
	addiw	a0,a0,1
	bne	a1,zero,.L137
	lbu	a3,0(sp)
	li	a2,-1
	andi	a3,a3,127
	sb	a3,0(sp)
.L138:
	addi	a3,sp,16
	add	a3,a3,a5
	lbu	a3,-16(a3)
	addiw	a5,a5,-1
	addi	a4,a4,1
	sb	a3,-1(a4)
	bne	a5,a2,.L138
	addi	sp,sp,16
	jr	ra
.L148:
	sb	a1,8(a0)
	addi	a5,a0,7
	srli	a1,a1,8
.L135:
	ori	a3,a1,-128
	sb	a3,0(a5)
	mv	a3,a5
	srli	a1,a1,7
	addi	a5,a5,-1
	bne	a4,a3,.L135
	li	a0,9
	ret
	.size	putVarint64, .-putVarint64
	.section	.text.sqlite3GetVarint,"ax",@progbits
	.align	1
	.type	sqlite3GetVarint, @function
sqlite3GetVarint:
	lb	a5,0(a0)
	bge	a5,zero,.L159
	lb	a3,1(a0)
	andi	a5,a5,0xff
	bge	a3,zero,.L160
	lbu	a4,2(a0)
	slliw	a5,a5,14
	li	a6,2080768
	or	a5,a4,a5
	sext.w	a4,a5
	addi	a6,a6,127
	andi	a7,a4,128
	andi	a2,a3,0xff
	and	a4,a4,a6
	beq	a7,zero,.L161
	lbu	a3,3(a0)
	slliw	a5,a2,14
	or	a5,a3,a5
	sext.w	a5,a5
	andi	a3,a5,128
	and	a5,a5,a6
	beq	a3,zero,.L162
	lbu	t1,4(a0)
	slliw	a3,a4,14
	or	a3,t1,a3
	andi	a7,a3,128
	sext.w	a2,a3
	beq	a7,zero,.L163
	lbu	a3,5(a0)
	slliw	a7,a5,14
	slli	a4,a4,7
	or	a3,a3,a7
	andi	a7,a3,128
	or	a4,a4,a5
	sext.w	a5,a3
	beq	a7,zero,.L164
	lbu	a7,6(a0)
	slliw	a3,a2,14
	or	a3,a7,a3
	andi	a2,a3,128
	sext.w	a3,a3
	beq	a2,zero,.L165
	lbu	a2,7(a0)
	slliw	a5,a5,14
	and	a3,a3,a6
	or	a5,a2,a5
	andi	a2,a5,128
	sext.w	a5,a5
	beq	a2,zero,.L166
	li	a2,532709376
	addi	a2,a2,-256
	slliw	a5,a5,8
	lbu	a0,8(a0)
	and	a5,a2,a5
	slliw	a3,a3,15
	or	a3,a5,a3
	andi	a5,t1,127
	sext.w	a3,a3
	slliw	a4,a4,4
	srliw	a5,a5,3
	or	a5,a5,a4
	or	a4,a3,a0
	slli	a4,a4,32
	srli	a4,a4,32
	slli	a5,a5,32
	or	a5,a5,a4
	sd	a5,0(a1)
	li	a0,9
	ret
.L159:
	sd	a5,0(a1)
	li	a0,1
	ret
.L160:
	li	a4,16384
	addi	a4,a4,-128
	slliw	a5,a5,7
	and	a5,a5,a4
	or	a5,a5,a3
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,0(a1)
	li	a0,2
	ret
.L163:
	slliw	a3,a5,7
	or	a3,a2,a3
	srli	a5,a4,18
	slli	a3,a3,32
	srli	a3,a3,32
	slli	a5,a5,32
	or	a5,a5,a3
	sd	a5,0(a1)
	li	a0,5
	ret
.L161:
	andi	a2,a2,127
	slliw	a2,a2,7
	or	a4,a4,a2
	slli	a4,a4,32
	srli	a4,a4,32
	sd	a4,0(a1)
	li	a0,3
	ret
.L162:
	slli	a4,a4,7
	or	a4,a4,a5
	sd	a4,0(a1)
	li	a0,4
	ret
.L164:
	slliw	a3,a2,7
	li	a2,266354688
	addi	a2,a2,-128
	and	a3,a2,a3
	sext.w	a3,a3
	or	a5,a5,a3
	srli	a4,a4,18
	slli	a5,a5,32
	slli	a4,a4,32
	srli	a5,a5,32
	or	a5,a4,a5
	sd	a5,0(a1)
	li	a0,6
	ret
.L166:
	li	a2,-266354688
	addi	a2,a2,127
	and	a5,a5,a2
	slliw	a3,a3,7
	or	a3,a5,a3
	srli	a4,a4,4
	slli	a3,a3,32
	slli	a4,a4,32
	srli	a3,a3,32
	or	a3,a4,a3
	sd	a3,0(a1)
	li	a0,8
	ret
.L165:
	li	a2,-266354688
	addi	a2,a2,127
	and	a3,a3,a2
	li	a2,266354688
	addi	a2,a2,-128
	slliw	a5,a5,7
	and	a5,a2,a5
	or	a3,a5,a3
	srli	a4,a4,11
	slli	a3,a3,32
	slli	a4,a4,32
	srli	a3,a3,32
	or	a3,a4,a3
	sd	a3,0(a1)
	li	a0,7
	ret
	.size	sqlite3GetVarint, .-sqlite3GetVarint
	.section	.text.findElementWithHash,"ax",@progbits
	.align	1
	.type	findElementWithHash, @function
findElementWithHash:
	mv	t3,a0
	ld	a0,16(a0)
	beq	a0,zero,.L168
	lbu	a5,0(a1)
	addi	a3,a1,1
	li	a4,0
	beq	a5,zero,.L169
	li	a7,-1640529920
	lla	t1,.LANCHOR2
	addiw	a7,a7,-1615
.L170:
	add	a5,t1,a5
	lbu	a6,320(a5)
	lbu	a5,0(a3)
	addi	a3,a3,1
	addw	a4,a6,a4
	mulw	a4,a4,a7
	bne	a5,zero,.L170
.L169:
	lw	a5,0(t3)
	remuw	a4,a4,a5
	slli	a5,a4,32
	srli	a5,a5,28
	add	a5,a0,a5
	ld	a0,8(a5)
	lw	a5,0(a5)
.L171:
	beq	a2,zero,.L172
	sw	a4,0(a2)
.L172:
	addiw	t3,a5,-1
	beq	a5,zero,.L189
	lla	a6,.LANCHOR2
	li	t4,-1
.L178:
	ld	a4,24(a0)
	mv	a2,a1
	lbu	a3,0(a2)
	lbu	a5,0(a4)
	addi	a4,a4,1
	add	a7,a6,a3
	add	t1,a6,a5
	beq	a5,a3,.L190
.L174:
	lbu	a3,320(t1)
	lbu	a5,320(a7)
	bne	a3,a5,.L176
.L175:
	lbu	a5,0(a4)
	lbu	a3,1(a2)
	addi	a2,a2,1
	addi	a4,a4,1
	add	t1,a6,a5
	add	a7,a6,a3
	bne	a5,a3,.L174
.L190:
	bne	a5,zero,.L175
	ret
.L176:
	addiw	t3,t3,-1
	ld	a0,0(a0)
	bne	t3,t4,.L178
.L189:
	lla	a0,.LANCHOR0+8
	ret
.L168:
	ld	a0,8(t3)
	lw	a5,4(t3)
	li	a4,0
	j	.L171
	.size	findElementWithHash, .-findElementWithHash
	.section	.text.memdbTruncate,"ax",@progbits
	.align	1
	.type	memdbTruncate, @function
memdbTruncate:
	ld	a5,8(a0)
	blt	a5,a1,.L193
	sd	a1,8(a0)
	li	a0,0
	ret
.L193:
	li	a0,13
	ret
	.size	memdbTruncate, .-memdbTruncate
	.section	.text.memdbSync,"ax",@progbits
	.align	1
	.type	memdbSync, @function
memdbSync:
	li	a0,0
	ret
	.size	memdbSync, .-memdbSync
	.section	.text.memdbFileSize,"ax",@progbits
	.align	1
	.type	memdbFileSize, @function
memdbFileSize:
	ld	a5,8(a0)
	li	a0,0
	sd	a5,0(a1)
	ret
	.size	memdbFileSize, .-memdbFileSize
	.section	.text.memdbLock,"ax",@progbits
	.align	1
	.type	memdbLock, @function
memdbLock:
	li	a4,1
	mv	a5,a0
	ble	a1,a4,.L197
	lw	a4,44(a0)
	li	a0,8
	andi	a4,a4,4
	bne	a4,zero,.L198
.L197:
	sw	a1,48(a5)
	li	a0,0
.L198:
	ret
	.size	memdbLock, .-memdbLock
	.section	.text.memdbDeviceCharacteristics,"ax",@progbits
	.align	1
	.type	memdbDeviceCharacteristics, @function
memdbDeviceCharacteristics:
	li	a0,4096
	addi	a0,a0,1537
	ret
	.size	memdbDeviceCharacteristics, .-memdbDeviceCharacteristics
	.section	.text.memdbUnfetch,"ax",@progbits
	.align	1
	.type	memdbUnfetch, @function
memdbUnfetch:
	lw	a4,40(a0)
	mv	a5,a0
	li	a0,0
	addiw	a4,a4,-1
	sw	a4,40(a5)
	ret
	.size	memdbUnfetch, .-memdbUnfetch
	.section	.text.memdbAccess,"ax",@progbits
	.align	1
	.type	memdbAccess, @function
memdbAccess:
	sw	zero,0(a3)
	li	a0,0
	ret
	.size	memdbAccess, .-memdbAccess
	.section	.text.memdbDlOpen,"ax",@progbits
	.align	1
	.type	memdbDlOpen, @function
memdbDlOpen:
	ld	a0,32(a0)
	ld	t1,72(a0)
	jr	t1
	.size	memdbDlOpen, .-memdbDlOpen
	.section	.text.memdbDlError,"ax",@progbits
	.align	1
	.type	memdbDlError, @function
memdbDlError:
	ld	a0,32(a0)
	ld	t1,80(a0)
	jr	t1
	.size	memdbDlError, .-memdbDlError
	.section	.text.memdbDlSym,"ax",@progbits
	.align	1
	.type	memdbDlSym, @function
memdbDlSym:
	ld	a0,32(a0)
	ld	t1,88(a0)
	jr	t1
	.size	memdbDlSym, .-memdbDlSym
	.section	.text.memdbDlClose,"ax",@progbits
	.align	1
	.type	memdbDlClose, @function
memdbDlClose:
	ld	a0,32(a0)
	ld	t1,96(a0)
	jr	t1
	.size	memdbDlClose, .-memdbDlClose
	.section	.text.memdbRandomness,"ax",@progbits
	.align	1
	.type	memdbRandomness, @function
memdbRandomness:
	ld	a0,32(a0)
	ld	t1,104(a0)
	jr	t1
	.size	memdbRandomness, .-memdbRandomness
	.section	.text.memdbSleep,"ax",@progbits
	.align	1
	.type	memdbSleep, @function
memdbSleep:
	ld	a0,32(a0)
	ld	t1,112(a0)
	jr	t1
	.size	memdbSleep, .-memdbSleep
	.section	.text.memdbGetLastError,"ax",@progbits
	.align	1
	.type	memdbGetLastError, @function
memdbGetLastError:
	ld	a0,32(a0)
	ld	t1,128(a0)
	jr	t1
	.size	memdbGetLastError, .-memdbGetLastError
	.section	.text.memdbCurrentTimeInt64,"ax",@progbits
	.align	1
	.type	memdbCurrentTimeInt64, @function
memdbCurrentTimeInt64:
	ld	a0,32(a0)
	ld	t1,136(a0)
	jr	t1
	.size	memdbCurrentTimeInt64, .-memdbCurrentTimeInt64
	.section	.text.sqlite3BitvecTestNotNull,"ax",@progbits
	.align	1
	.type	sqlite3BitvecTestNotNull, @function
sqlite3BitvecTestNotNull:
	lw	a4,0(a0)
	addiw	a1,a1,-1
	mv	a5,a0
	bgtu	a4,a1,.L213
	j	.L219
.L214:
	divuw	a0,a1,a4
	slli	a0,a0,32
	srli	a0,a0,32
	addi	a0,a0,2
	slli	a0,a0,3
	add	a0,a5,a0
	ld	a5,0(a0)
	remuw	a1,a1,a4
	beq	a5,zero,.L219
.L213:
	lw	a4,8(a5)
	bne	a4,zero,.L214
	lw	a3,0(a5)
	li	a4,4096
	addi	a4,a4,-128
	bleu	a3,a4,.L222
	li	a3,124
	remuw	a3,a1,a3
	addiw	a1,a1,1
	slli	a4,a3,32
	srli	a4,a4,32
	addi	a4,a4,4
	slli	a4,a4,2
	add	a4,a5,a4
	lw	a4,0(a4)
	beq	a4,zero,.L219
	li	a2,124
	j	.L216
.L223:
	remuw	a3,a3,a2
	slli	a4,a3,32
	srli	a4,a4,32
	addi	a4,a4,4
	slli	a4,a4,2
	add	a4,a5,a4
	lw	a4,0(a4)
	beq	a4,zero,.L219
.L216:
	addiw	a3,a3,1
	bne	a1,a4,.L223
	li	a0,1
	ret
.L219:
	li	a0,0
	ret
.L222:
	srliw	a0,a1,3
	add	a0,a5,a0
	lbu	a0,16(a0)
	andi	a1,a1,7
	sraw	a1,a0,a1
	andi	a0,a1,1
	ret
	.size	sqlite3BitvecTestNotNull, .-sqlite3BitvecTestNotNull
	.section	.text.pcacheManageDirtyList,"ax",@progbits
	.align	1
	.type	pcacheManageDirtyList, @function
pcacheManageDirtyList:
	andi	a4,a1,1
	ld	a5,24(a0)
	beq	a4,zero,.L226
	ld	a4,16(a5)
	ld	a3,64(a0)
	beq	a4,a0,.L240
	ld	a4,56(a0)
	beq	a4,zero,.L228
.L242:
	sd	a3,64(a4)
	ld	a4,64(a0)
	ld	a3,56(a0)
	beq	a4,zero,.L230
.L243:
	sd	a3,56(a4)
.L226:
	andi	a1,a1,2
	beq	a1,zero,.L224
	sd	zero,64(a0)
	ld	a4,0(a5)
	sd	a4,56(a0)
	beq	a4,zero,.L234
	sd	a0,64(a4)
.L235:
	ld	a4,16(a5)
	sd	a0,0(a5)
	beq	a4,zero,.L241
.L224:
	ret
.L241:
	lhu	a4,52(a0)
	andi	a4,a4,8
	bne	a4,zero,.L224
	sd	a0,16(a5)
	ret
.L234:
	lbu	a4,44(a5)
	sd	a0,8(a5)
	beq	a4,zero,.L235
	li	a4,1
	sb	a4,45(a5)
	j	.L235
.L240:
	sd	a3,16(a5)
	ld	a4,56(a0)
	ld	a3,64(a0)
	bne	a4,zero,.L242
.L228:
	sd	a3,8(a5)
	ld	a4,64(a0)
	ld	a3,56(a0)
	bne	a4,zero,.L243
.L230:
	sd	a3,0(a5)
	bne	a3,zero,.L226
	li	a4,2
	sb	a4,45(a5)
	j	.L226
	.size	pcacheManageDirtyList, .-pcacheManageDirtyList
	.section	.text.sqlite3PcacheRelease,"ax",@progbits
	.align	1
	.type	sqlite3PcacheRelease, @function
sqlite3PcacheRelease:
	ld	a3,24(a0)
	lw	a4,24(a3)
	addiw	a4,a4,-1
	sw	a4,24(a3)
	lhu	a4,54(a0)
	addiw	a4,a4,-1
	slliw	a4,a4,16
	sraiw	a4,a4,16
	sh	a4,54(a0)
	bne	a4,zero,.L244
	lhu	a4,52(a0)
	andi	a4,a4,1
	beq	a4,zero,.L246
	ld	a4,24(a0)
	lbu	a3,44(a4)
	beq	a3,zero,.L244
	ld	a1,0(a0)
	ld	a0,64(a4)
	li	a2,0
	ld	t1,.LANCHOR1+248
	jr	t1
.L244:
	ret
.L246:
	li	a1,3
	tail	pcacheManageDirtyList
	.size	sqlite3PcacheRelease, .-sqlite3PcacheRelease
	.section	.text.sqlite3PcacheDrop,"ax",@progbits
	.align	1
	.type	sqlite3PcacheDrop, @function
sqlite3PcacheDrop:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a5,52(a0)
	mv	s0,a0
	andi	a5,a5,2
	bne	a5,zero,.L256
.L251:
	ld	a4,24(s0)
	ld	t1,.LANCHOR1+248
	li	a2,1
	lw	a5,24(a4)
	addiw	a5,a5,-1
	sw	a5,24(a4)
	ld	a5,24(s0)
	ld	a1,0(s0)
	ld	s0,0(sp)
	ld	ra,8(sp)
	ld	a0,64(a5)
	addi	sp,sp,16
	jr	t1
.L256:
	li	a1,1
	call	pcacheManageDirtyList
	j	.L251
	.size	sqlite3PcacheDrop, .-sqlite3PcacheDrop
	.section	.text.sqlite3PcacheMakeDirty,"ax",@progbits
	.align	1
	.type	sqlite3PcacheMakeDirty, @function
sqlite3PcacheMakeDirty:
	lhu	a4,52(a0)
	andi	a3,a4,17
	beq	a3,zero,.L257
	andi	a3,a4,-17
	slli	a3,a3,48
	andi	a4,a4,1
	srli	a3,a3,48
	bne	a4,zero,.L260
	sh	a3,52(a0)
	ret
.L257:
	ret
.L260:
	xori	a3,a3,3
	sh	a3,52(a0)
	li	a1,2
	tail	pcacheManageDirtyList
	.size	sqlite3PcacheMakeDirty, .-sqlite3PcacheMakeDirty
	.section	.text.sqlite3PcacheMove,"ax",@progbits
	.align	1
	.type	sqlite3PcacheMove, @function
sqlite3PcacheMove:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	ld	a5,24(a0)
	mv	s0,a0
	mv	s1,a1
	lw	a2,48(a0)
	ld	a1,0(a0)
	ld	a0,64(a5)
	mv	a3,s1
	ld	a5,.LANCHOR1+256
	jalr	a5
	lhu	a5,52(s0)
	sw	s1,48(s0)
	li	a4,10
	andi	a5,a5,10
	beq	a5,a4,.L265
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L265:
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	li	a1,3
	addi	sp,sp,32
	tail	pcacheManageDirtyList
	.size	sqlite3PcacheMove, .-sqlite3PcacheMove
	.section	.text.pcache1Pagecount,"ax",@progbits
	.align	1
	.type	pcache1Pagecount, @function
pcache1Pagecount:
	lw	a0,56(a0)
	ret
	.size	pcache1Pagecount, .-pcache1Pagecount
	.section	.text.pcache1Rekey,"ax",@progbits
	.align	1
	.type	pcache1Rekey, @function
pcache1Rekey:
	lw	a5,60(a0)
	ld	a4,64(a0)
	remuw	a2,a2,a5
	slli	a2,a2,32
	srli	a2,a2,29
	add	a4,a4,a2
	ld	a5,0(a4)
	beq	a1,a5,.L268
.L269:
	mv	a4,a5
	ld	a5,24(a5)
	bne	a5,a1,.L269
	addi	a4,a4,24
.L268:
	ld	a5,24(a1)
	sd	a5,0(a4)
	lw	a5,60(a0)
	sw	a3,16(a1)
	ld	a4,64(a0)
	remuw	a5,a3,a5
	slli	a5,a5,32
	srli	a5,a5,29
	add	a4,a4,a5
	ld	a4,0(a4)
	sd	a4,24(a1)
	ld	a4,64(a0)
	add	a5,a4,a5
	sd	a1,0(a5)
	lw	a5,44(a0)
	bgeu	a5,a3,.L267
	sw	a3,44(a0)
.L267:
	ret
	.size	pcache1Rekey, .-pcache1Rekey
	.section	.text.rowSetTreeToList,"ax",@progbits
	.align	1
	.type	rowSetTreeToList, @function
rowSetTreeToList:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	mv	s0,a0
	ld	a0,16(a0)
	mv	s1,a2
	beq	a0,zero,.L273
	addi	a2,sp,8
	call	rowSetTreeToList
	ld	a5,8(sp)
	sd	s0,8(a5)
	ld	a0,8(s0)
	beq	a0,zero,.L275
.L278:
	mv	a2,s1
	addi	a1,s0,8
	call	rowSetTreeToList
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L273:
	sd	s0,0(a1)
	ld	a0,8(s0)
	bne	a0,zero,.L278
.L275:
	sd	s0,0(s1)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	rowSetTreeToList, .-rowSetTreeToList
	.section	.text.rowSetNDeepTree,"ax",@progbits
	.align	1
	.type	rowSetNDeepTree, @function
rowSetNDeepTree:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	ld	s0,0(a0)
	beq	s0,zero,.L279
	li	a5,1
	mv	s1,a0
	bgt	a1,a5,.L287
	ld	a5,8(s0)
	sd	a5,0(a0)
	sd	zero,8(s0)
	sd	zero,16(s0)
.L279:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L287:
	addiw	s2,a1,-1
	mv	a1,s2
	call	rowSetNDeepTree
	ld	s0,0(s1)
	beq	s0,zero,.L282
	ld	a5,8(s0)
	sd	a0,16(s0)
	mv	a1,s2
	sd	a5,0(s1)
	mv	a0,s1
	call	rowSetNDeepTree
	sd	a0,8(s0)
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L282:
	mv	s0,a0
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	rowSetNDeepTree, .-rowSetNDeepTree
	.section	.text.rowSetListToTree,"ax",@progbits
	.align	1
	.type	rowSetListToTree, @function
rowSetListToTree:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	ld	s0,8(a0)
	sd	zero,16(a0)
	sd	zero,8(a0)
	sd	s0,8(sp)
	beq	s0,zero,.L291
	li	s1,1
	addi	s2,sp,8
	j	.L290
.L292:
	mv	s0,a5
.L290:
	ld	a5,8(s0)
	sd	a0,16(s0)
	mv	a1,s1
	mv	a0,s2
	sd	a5,8(sp)
	call	rowSetNDeepTree
	ld	a5,8(sp)
	sd	a0,8(s0)
	addiw	s1,s1,1
	mv	a0,s0
	bne	a5,zero,.L292
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L291:
	mv	s0,a0
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
	.size	rowSetListToTree, .-rowSetListToTree
	.section	.text.read32bits,"ax",@progbits
	.align	1
	.type	read32bits, @function
read32bits:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	ld	a5,0(a0)
	mv	a3,a1
	mv	s0,a2
	ld	a5,16(a5)
	li	a2,4
	addi	a1,sp,8
	jalr	a5
	bne	a0,zero,.L295
	lbu	a5,8(sp)
	lbu	a2,11(sp)
	lbu	a3,9(sp)
	lbu	a4,10(sp)
	slliw	a5,a5,24
	or	a5,a5,a2
	slliw	a3,a3,16
	or	a5,a5,a3
	slliw	a4,a4,8
	or	a5,a5,a4
	sw	a5,0(s0)
.L295:
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	read32bits, .-read32bits
	.section	.text.pagerPagecount,"ax",@progbits
	.align	1
	.type	pagerPagecount, @function
pagerPagecount:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	ld	a5,288(a0)
	mv	s0,a0
	mv	s1,a1
	beq	a5,zero,.L298
	lh	a4,60(a5)
	bge	a4,zero,.L308
.L298:
	ld	a0,72(s0)
	ld	a5,0(a0)
	beq	a5,zero,.L303
.L309:
	sd	zero,8(sp)
	ld	a5,0(a0)
	addi	a1,sp,8
	ld	a5,48(a5)
	jalr	a5
	bne	a0,zero,.L302
	ld	a5,8(sp)
	lw	a4,188(s0)
	addi	a5,a5,-1
	add	a5,a5,a4
	div	a5,a5,a4
	sext.w	a5,a5
.L299:
	lw	a4,192(s0)
	bgeu	a4,a5,.L300
	sw	a5,192(s0)
.L300:
	sw	a5,0(s1)
	li	a0,0
.L302:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L308:
	lw	a5,92(a5)
	bne	a5,zero,.L299
	ld	a0,72(s0)
	ld	a5,0(a0)
	bne	a5,zero,.L309
.L303:
	li	a5,0
	j	.L300
	.size	pagerPagecount, .-pagerPagecount
	.section	.text.sqlite3PagerSetFlags,"ax",@progbits
	.align	1
	.type	sqlite3PagerSetFlags, @function
sqlite3PagerSetFlags:
	lbu	a4,16(a0)
	beq	a4,zero,.L311
	li	a5,1
	sb	a5,11(a0)
	sw	zero,12(a0)
.L312:
	lbu	a4,24(a0)
	andi	a1,a1,32
	ori	a5,a4,1
	beq	a1,zero,.L319
	andi	a5,a4,254
.L319:
	sb	a5,24(a0)
	ret
.L311:
	andi	a5,a1,7
	addi	a2,a5,-1
	li	a6,2
	addi	a3,a5,-4
	seqz	a2,a2
	sgtu	t1,a5,a6
	seqz	a3,a3
	li	a7,1
	sb	a2,11(a0)
	sb	t1,12(a0)
	sb	a3,13(a0)
	beq	a5,a7,.L323
	andi	a3,a1,8
	bne	a3,zero,.L324
	sb	a6,14(a0)
	li	a2,8
	li	a3,2
.L314:
	li	a6,2
	bleu	a5,a6,.L325
.L316:
	or	a3,a3,a2
	sb	a3,15(a0)
.L317:
	andi	a5,a1,16
	beq	a5,zero,.L312
	bne	a4,zero,.L312
	lbu	a5,15(a0)
	ori	a5,a5,12
	sb	a5,15(a0)
	j	.L312
.L324:
	li	a3,3
	sb	a3,14(a0)
	li	a6,2
	li	a2,12
	bgtu	a5,a6,.L316
.L325:
	sb	a2,15(a0)
	j	.L317
.L323:
	sb	zero,14(a0)
	li	a2,0
	li	a3,0
	li	a4,1
	j	.L314
	.size	sqlite3PagerSetFlags, .-sqlite3PagerSetFlags
	.section	.text.databaseIsUnmoved,"ax",@progbits
	.align	1
	.type	databaseIsUnmoved, @function
databaseIsUnmoved:
	addi	sp,sp,-32
	sd	ra,24(sp)
	lbu	a5,16(a0)
	sw	zero,12(sp)
	bne	a5,zero,.L329
	lw	a5,28(a0)
	beq	a5,zero,.L329
	ld	a0,72(a0)
	ld	a5,0(a0)
	beq	a5,zero,.L329
	ld	a5,80(a5)
	addi	a2,sp,12
	li	a1,20
	jalr	a5
	li	a5,12
	beq	a0,a5,.L329
	bne	a0,zero,.L328
	lw	a5,12(sp)
	bne	a5,zero,.L340
.L329:
	li	a0,0
.L328:
	ld	ra,24(sp)
	addi	sp,sp,32
	jr	ra
.L340:
	li	a0,1032
	j	.L328
	.size	databaseIsUnmoved, .-databaseIsUnmoved
	.section	.text.getPageError,"ax",@progbits
	.align	1
	.type	getPageError, @function
getPageError:
	sd	zero,0(a2)
	lw	a0,44(a0)
	ret
	.size	getPageError, .-getPageError
	.section	.text.walChecksumBytes,"ax",@progbits
	.align	1
	.type	walChecksumBytes, @function
walChecksumBytes:
	add	a2,a1,a2
	beq	a3,zero,.L347
	lw	t1,0(a3)
	lw	a7,4(a3)
.L343:
	bne	a0,zero,.L345
	li	t5,65536
	li	t6,16711680
	addi	t5,t5,-256
.L344:
	lw	a6,0(a1)
	lw	a0,4(a1)
	addi	a1,a1,8
	srliw	a3,a6,24
	slliw	a5,a6,24
	srliw	t3,a0,24
	addw	a5,a5,a3
	slliw	t4,a6,8
	slliw	a3,a0,24
	addw	a5,a5,a7
	addw	a3,a3,t3
	and	t4,t4,t6
	slliw	t3,a0,8
	srliw	a6,a6,8
	addw	a3,a3,a7
	addw	a5,a5,t4
	and	a7,t3,t6
	and	a6,a6,t5
	srliw	a0,a0,8
	addw	a3,a3,a7
	addw	a5,a5,a6
	and	a0,a0,t5
	addw	t1,a5,t1
	addw	a3,a3,a0
	addw	a7,t1,a3
	bgtu	a2,a1,.L344
.L346:
	sw	t1,0(a4)
	sw	a7,4(a4)
	ret
.L345:
	lw	a0,0(a1)
	addi	a1,a1,8
	lw	a5,-4(a1)
	addw	a0,a0,a7
	addw	t1,a0,t1
	addw	a5,a5,t1
	addw	a7,a5,a7
	bleu	a2,a1,.L346
	lw	a0,0(a1)
	addi	a1,a1,8
	lw	a5,-4(a1)
	addw	a0,a0,a7
	addw	t1,a0,t1
	addw	a5,a5,t1
	addw	a7,a5,a7
	bgtu	a2,a1,.L345
	j	.L346
.L347:
	li	a7,0
	li	t1,0
	j	.L343
	.size	walChecksumBytes, .-walChecksumBytes
	.section	.text.sqlite3_enable_shared_cache,"ax",@progbits
	.align	1
	.globl	sqlite3_enable_shared_cache
	.type	sqlite3_enable_shared_cache, @function
sqlite3_enable_shared_cache:
	sw	a0,.LANCHOR1+348,a5
	li	a0,0
	ret
	.size	sqlite3_enable_shared_cache, .-sqlite3_enable_shared_cache
	.section	.text.querySharedCacheTableLock,"ax",@progbits
	.align	1
	.type	querySharedCacheTableLock, @function
querySharedCacheTableLock:
	lbu	a5,17(a0)
	mv	a3,a0
	beq	a5,zero,.L360
	ld	a6,8(a0)
	ld	a5,120(a6)
	beq	a5,a0,.L355
	lhu	a5,38(a6)
	li	a0,262
	andi	a5,a5,64
	bne	a5,zero,.L354
.L355:
	ld	a5,112(a6)
	bne	a5,zero,.L357
	j	.L360
.L356:
	ld	a5,16(a5)
	beq	a5,zero,.L360
.L357:
	ld	a4,0(a5)
	beq	a4,a3,.L356
	lw	a4,8(a5)
	bne	a4,a1,.L356
	lbu	a4,12(a5)
	beq	a4,a2,.L356
	li	a5,2
	li	a0,262
	beq	a2,a5,.L363
.L354:
	ret
.L360:
	li	a0,0
	ret
.L363:
	lhu	a5,38(a6)
	ori	a5,a5,128
	sh	a5,38(a6)
	ret
	.size	querySharedCacheTableLock, .-querySharedCacheTableLock
	.section	.text.btreeParseCellAdjustSizeForOverflow,"ax",@progbits
	.align	1
	.type	btreeParseCellAdjustSizeForOverflow, @function
btreeParseCellAdjustSizeForOverflow:
	ld	a3,72(a0)
	lhu	a4,16(a0)
	lw	a5,16(a2)
	lw	a3,52(a3)
	lhu	a0,14(a0)
	subw	a5,a5,a4
	addiw	a3,a3,-4
	remuw	a5,a5,a3
	addw	a5,a5,a4
	blt	a0,a5,.L365
	slli	a4,a5,48
	srli	a4,a4,48
.L365:
	ld	a5,8(a2)
	sh	a4,20(a2)
	add	a5,a5,a4
	sub	a1,a5,a1
	addiw	a1,a1,4
	sh	a1,22(a2)
	ret
	.size	btreeParseCellAdjustSizeForOverflow, .-btreeParseCellAdjustSizeForOverflow
	.section	.text.btreeParseCellPtrNoPayload,"ax",@progbits
	.align	1
	.type	btreeParseCellPtrNoPayload, @function
btreeParseCellPtrNoPayload:
	addi	sp,sp,-16
	addi	a0,a1,4
	mv	a1,a2
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a2
	call	sqlite3GetVarint
	addiw	a0,a0,4
	sh	a0,22(s0)
	sw	zero,16(s0)
	sh	zero,20(s0)
	sd	zero,8(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	btreeParseCellPtrNoPayload, .-btreeParseCellPtrNoPayload
	.section	.text.btreeParseCellPtr,"ax",@progbits
	.align	1
	.type	btreeParseCellPtr, @function
btreeParseCellPtr:
	lbu	a5,0(a1)
	li	a3,127
	mv	a6,a1
	sext.w	a4,a5
	bleu	a5,a3,.L369
	addi	t1,a1,8
	andi	a4,a5,127
.L370:
	lbu	a3,1(a6)
	slliw	a4,a4,7
	addi	a6,a6,1
	andi	a7,a3,127
	slliw	a3,a3,24
	or	a4,a7,a4
	sraiw	a3,a3,24
	sext.w	a4,a4
	bge	a3,zero,.L369
	bne	t1,a6,.L370
.L369:
	lbu	a3,1(a6)
	li	a7,127
	addi	a5,a6,1
	bleu	a3,a7,.L371
	andi	a3,a3,127
	addi	t4,a6,8
.L372:
	lbu	a7,1(a5)
	slli	a3,a3,7
	mv	t3,a5
	andi	t1,a7,127
	slliw	a7,a7,24
	sraiw	a7,a7,24
	addi	a5,a5,1
	or	a3,a3,t1
	bge	a7,zero,.L371
	bne	a5,t4,.L372
	lbu	a6,9(a6)
	slli	a3,a3,8
	addi	a5,t3,2
	or	a3,a3,a6
.L371:
	addi	a5,a5,1
	sd	a3,0(a2)
	sw	a4,16(a2)
	sd	a5,8(a2)
	lhu	a3,14(a0)
	bltu	a3,a4,.L373
	slli	a4,a4,48
	srli	a4,a4,48
	sub	a5,a5,a1
	addw	a5,a5,a4
	slli	a5,a5,48
	srli	a5,a5,48
	li	a3,3
	bgtu	a5,a3,.L381
	li	a5,4
.L381:
	sh	a5,22(a2)
	sh	a4,20(a2)
	ret
.L373:
	tail	btreeParseCellAdjustSizeForOverflow
	.size	btreeParseCellPtr, .-btreeParseCellPtr
	.section	.text.btreeParseCellPtrIndex,"ax",@progbits
	.align	1
	.type	btreeParseCellPtrIndex, @function
btreeParseCellPtrIndex:
	lbu	a4,10(a0)
	li	a6,127
	add	a5,a1,a4
	lbu	a3,0(a5)
	sext.w	a4,a3
	bleu	a3,a6,.L383
	addi	a7,a5,8
	andi	a4,a3,127
.L384:
	lbu	a3,1(a5)
	slliw	a4,a4,7
	addi	a5,a5,1
	andi	a6,a3,127
	slliw	a3,a3,24
	or	a4,a6,a4
	sraiw	a3,a3,24
	sext.w	a4,a4
	bge	a3,zero,.L383
	bne	a7,a5,.L384
.L383:
	slli	a3,a4,32
	srli	a3,a3,32
	addi	a5,a5,1
	sd	a3,0(a2)
	sw	a4,16(a2)
	sd	a5,8(a2)
	lhu	a3,14(a0)
	bltu	a3,a4,.L385
	slli	a4,a4,48
	srli	a4,a4,48
	sub	a5,a5,a1
	addw	a5,a5,a4
	slli	a5,a5,48
	srli	a5,a5,48
	li	a3,3
	bgtu	a5,a3,.L391
	li	a5,4
.L391:
	sh	a5,22(a2)
	sh	a4,20(a2)
	ret
.L385:
	tail	btreeParseCellAdjustSizeForOverflow
	.size	btreeParseCellPtrIndex, .-btreeParseCellPtrIndex
	.section	.text.cellSizePtr,"ax",@progbits
	.align	1
	.type	cellSizePtr, @function
cellSizePtr:
	lbu	a4,10(a0)
	li	a2,127
	add	a4,a1,a4
	lbu	a5,0(a4)
	sext.w	a3,a5
	bleu	a5,a2,.L393
	addi	a7,a4,8
	andi	a3,a5,127
.L394:
	lbu	a2,1(a4)
	slliw	a3,a3,7
	addi	a4,a4,1
	andi	a6,a2,127
	slliw	a2,a2,24
	or	a3,a6,a3
	sraiw	a2,a2,24
	sext.w	a3,a3
	bge	a2,zero,.L393
	bne	a7,a4,.L394
.L393:
	lbu	a2,2(a0)
	addi	a5,a4,1
	beq	a2,zero,.L395
	addi	a4,a4,10
.L396:
	lb	a2,0(a5)
	addi	a5,a5,1
	bge	a2,zero,.L395
	bne	a5,a4,.L396
.L395:
	lhu	a2,14(a0)
	sub	a5,a5,a1
	bgeu	a2,a3,.L406
	ld	a1,72(a0)
	lhu	a6,16(a0)
	lw	a1,52(a1)
	subw	a0,a3,a6
	addiw	a3,a1,-4
	remuw	a0,a0,a3
	addw	a4,a6,a0
	bgeu	a2,a4,.L400
	mv	a4,a6
.L400:
	slliw	a0,a5,16
	srliw	a0,a0,16
	addiw	a0,a0,4
	addw	a0,a0,a4
.L399:
	slli	a0,a0,48
	srli	a0,a0,48
	ret
.L406:
	addw	a0,a5,a3
	li	a5,4
	bgeu	a0,a5,.L399
	li	a0,4
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.size	cellSizePtr, .-cellSizePtr
	.section	.text.cellSizePtrNoPayload,"ax",@progbits
	.align	1
	.type	cellSizePtrNoPayload, @function
cellSizePtrNoPayload:
	addi	a5,a1,4
	addi	a0,a1,13
.L409:
	lb	a4,0(a5)
	addi	a5,a5,1
	bge	a4,zero,.L410
	bne	a0,a5,.L409
	sub	a0,a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
.L410:
	mv	a0,a5
	sub	a0,a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.size	cellSizePtrNoPayload, .-cellSizePtrNoPayload
	.section	.text.btreeGetPage,"ax",@progbits
	.align	1
	.type	btreeGetPage, @function
btreeGetPage:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	mv	s1,a0
	ld	a0,0(a0)
	mv	s2,a2
	addi	a2,sp,8
	ld	a4,264(a0)
	mv	s0,a1
	jalr	a4
	bne	a0,zero,.L413
	ld	a4,8(sp)
	ld	a5,16(a4)
	lw	a3,4(a5)
	beq	a3,s0,.L414
	ld	a2,8(a4)
	li	a3,1
	sd	a4,112(a5)
	sd	a2,80(a5)
	sd	s1,72(a5)
	sw	s0,4(a5)
	li	a4,100
	beq	s0,a3,.L415
	li	a4,0
.L415:
	sb	a4,9(a5)
.L414:
	sd	a5,0(s2)
.L413:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
	.size	btreeGetPage, .-btreeGetPage
	.section	.text.sqlite3BtreeSetCacheSize,"ax",@progbits
	.align	1
	.type	sqlite3BtreeSetCacheSize, @function
sqlite3BtreeSetCacheSize:
	addi	sp,sp,-16
	sd	ra,8(sp)
	ld	a5,8(a0)
	ld	a3,0(a0)
	ld	a4,0(a5)
	sd	a3,8(a5)
	ld	a5,280(a4)
	ld	a4,.LANCHOR1+224
	sw	a1,28(a5)
	ld	a0,64(a5)
	bge	a1,zero,.L419
	lw	a3,36(a5)
	lw	a5,40(a5)
	neg	a1,a1
	slli	a1,a1,10
	addw	a3,a3,a5
	div	a1,a1,a3
	sext.w	a1,a1
.L419:
	jalr	a4
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	sqlite3BtreeSetCacheSize, .-sqlite3BtreeSetCacheSize
	.section	.text.sqlite3BtreeSetSpillSize,"ax",@progbits
	.align	1
	.type	sqlite3BtreeSetSpillSize, @function
sqlite3BtreeSetSpillSize:
	ld	a5,8(a0)
	ld	a3,0(a0)
	ld	a4,0(a5)
	sd	a3,8(a5)
	ld	a4,280(a4)
	bne	a1,zero,.L422
	lw	a1,32(a4)
.L423:
	lw	a5,28(a4)
	bge	a5,zero,.L425
	lw	a3,36(a4)
	lw	a4,40(a4)
	neg	a5,a5
	slli	a5,a5,10
	addw	a4,a3,a4
	div	a5,a5,a4
	sext.w	a5,a5
.L425:
	sext.w	a0,a5
	bge	a5,a1,.L426
	sext.w	a0,a1
.L426:
	ret
.L422:
	blt	a1,zero,.L427
	sw	a1,32(a4)
	j	.L423
.L427:
	lw	a5,36(a4)
	lw	a3,40(a4)
	neg	a1,a1
	slli	a1,a1,10
	addw	a5,a5,a3
	div	a1,a1,a5
	sext.w	a1,a1
	sw	a1,32(a4)
	j	.L423
	.size	sqlite3BtreeSetSpillSize, .-sqlite3BtreeSetSpillSize
	.section	.text.sqlite3BtreeSecureDelete,"ax",@progbits
	.align	1
	.type	sqlite3BtreeSecureDelete, @function
sqlite3BtreeSecureDelete:
	beq	a0,zero,.L431
	ld	a3,0(a0)
	ld	a4,8(a0)
	li	a5,-1
	sd	a3,8(a4)
	beq	a1,a5,.L430
	ld	a4,8(a0)
	slli	a1,a1,2
	lhu	a5,38(a4)
	andi	a5,a5,-13
	sh	a5,38(a4)
	ld	a4,8(a0)
	lhu	a5,38(a4)
	or	a1,a5,a1
	sh	a1,38(a4)
.L430:
	ld	a5,8(a0)
	lhu	a0,38(a5)
	srli	a0,a0,2
	andi	a0,a0,3
	ret
.L431:
	li	a0,0
	ret
	.size	sqlite3BtreeSecureDelete, .-sqlite3BtreeSecureDelete
	.section	.text.finalDbSize,"ax",@progbits
	.align	1
	.type	finalDbSize, @function
finalDbSize:
	lw	a5,52(a0)
	lw	a7,48(a0)
	li	a3,1073741824
	li	a0,5
	divuw	a0,a5,a0
	li	a6,1
	subw	a5,a2,a1
	subw	a4,a1,a2
	divuw	a3,a3,a7
	sext.w	a2,a0
	addw	a5,a5,a0
	addiw	a3,a3,1
	bleu	a1,a6,.L433
	addiw	a7,a0,1
	addiw	a6,a1,-2
	mv	t1,a7
	divuw	a7,a6,a7
	mulw	a7,a7,t1
	addiw	a6,a7,2
	beq	a6,a3,.L441
.L434:
	addw	a5,a6,a5
	divuw	a0,a5,a0
	subw	a0,a4,a0
	bleu	a1,a3,.L435
	bltu	a0,a3,.L442
.L435:
	li	a1,1
	addiw	a2,a2,1
.L436:
	addiw	a5,a0,-2
	li	a4,0
	bleu	a0,a1,.L437
	divuw	a5,a5,a2
	mulw	a5,a5,a2
	addiw	a4,a5,2
	beq	a4,a3,.L443
.L437:
	beq	a0,a4,.L438
	bne	a0,a3,.L444
.L438:
	addiw	a0,a0,-1
	j	.L436
.L443:
	addiw	a4,a5,3
	j	.L437
.L444:
	ret
.L442:
	addiw	a0,a0,-1
	j	.L435
.L441:
	addiw	a6,a7,3
	j	.L434
.L433:
	divuw	a0,a5,a0
	subw	a0,a4,a0
	j	.L435
	.size	finalDbSize, .-finalDbSize
	.section	.text.getCellInfo,"ax",@progbits
	.align	1
	.type	getCellInfo, @function
getCellInfo:
	lhu	a5,70(a0)
	mv	a2,a0
	bne	a5,zero,.L445
	lbu	a5,1(a0)
	ld	a0,136(a0)
	lhu	a3,86(a2)
	ori	a5,a5,2
	sb	a5,1(a2)
	ld	a4,96(a0)
	slliw	a3,a3,1
	lhu	a6,26(a0)
	add	a4,a4,a3
	lbu	a5,0(a4)
	lbu	a4,1(a4)
	ld	a1,80(a0)
	slliw	a5,a5,8
	or	a5,a5,a4
	ld	t1,128(a0)
	and	a5,a5,a6
	addi	a2,a2,48
	add	a1,a1,a5
	jr	t1
.L445:
	ret
	.size	getCellInfo, .-getCellInfo
	.section	.text.computeCellSize,"ax",@progbits
	.align	1
	.type	computeCellSize, @function
computeCellSize:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	ld	a5,16(a0)
	mv	s1,a0
	ld	a0,8(a0)
	slli	a4,a1,3
	add	a5,a5,a4
	ld	s2,24(s1)
	mv	s0,a1
	ld	a4,120(a0)
	ld	a1,0(a5)
	slli	s0,s0,1
	add	s2,s2,s0
	jalr	a4
	sh	a0,0(s2)
	ld	a1,24(s1)
	ld	ra,24(sp)
	ld	s1,8(sp)
	add	s0,a1,s0
	lhu	a0,0(s0)
	ld	s0,16(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	computeCellSize, .-computeCellSize
	.section	.text.sqlite3BtreeGetMeta,"ax",@progbits
	.align	1
	.type	sqlite3BtreeGetMeta, @function
sqlite3BtreeGetMeta:
	ld	a4,0(a0)
	ld	a5,8(a0)
	sd	a4,8(a5)
	li	a4,15
	beq	a1,a4,.L452
	ld	a5,24(a5)
	addiw	a1,a1,9
	slliw	a1,a1,2
	ld	a5,80(a5)
	add	a1,a5,a1
	lbu	a5,0(a1)
	lbu	a0,3(a1)
	lbu	a3,1(a1)
	lbu	a4,2(a1)
	slliw	a5,a5,24
	or	a5,a5,a0
	slliw	a3,a3,16
	or	a5,a5,a3
	slliw	a4,a4,8
	or	a5,a5,a4
	sext.w	a5,a5
	sw	a5,0(a2)
	ret
.L452:
	ld	a5,0(a5)
	lw	a4,28(a0)
	lw	a5,132(a5)
	addw	a5,a5,a4
	sw	a5,0(a2)
	ret
	.size	sqlite3BtreeGetMeta, .-sqlite3BtreeGetMeta
	.section	.text.btreeHeapInsert,"ax",@progbits
	.align	1
	.type	btreeHeapInsert, @function
btreeHeapInsert:
	lw	a3,0(a0)
	li	a6,1
	addiw	a3,a3,1
	slli	a4,a3,32
	srli	a4,a4,30
	sw	a3,0(a0)
	add	a4,a0,a4
	sext.w	a5,a3
	sw	a1,0(a4)
	li	a4,1
	srliw	a3,a3,1
	bgtu	a5,a4,.L454
	j	.L458
.L456:
	sw	a1,0(a4)
	sw	a2,0(a5)
	srli	a2,a3,1
	bleu	a3,a6,.L453
	lw	a1,0(a4)
	mv	a5,a3
	mv	a3,a2
.L454:
	slli	a4,a3,2
	add	a4,a0,a4
	lw	a2,0(a4)
	slli	a5,a5,32
	srli	a5,a5,30
	add	a5,a0,a5
	bgtu	a2,a1,.L456
.L453:
	ret
.L458:
	ret
	.size	btreeHeapInsert, .-btreeHeapInsert
	.section	.text.sqlite3_backup_remaining,"ax",@progbits
	.align	1
	.globl	sqlite3_backup_remaining
	.type	sqlite3_backup_remaining, @function
sqlite3_backup_remaining:
	lw	a0,52(a0)
	ret
	.size	sqlite3_backup_remaining, .-sqlite3_backup_remaining
	.section	.text.sqlite3_backup_pagecount,"ax",@progbits
	.align	1
	.globl	sqlite3_backup_pagecount
	.type	sqlite3_backup_pagecount, @function
sqlite3_backup_pagecount:
	lw	a0,56(a0)
	ret
	.size	sqlite3_backup_pagecount, .-sqlite3_backup_pagecount
	.section	.text.doubleToInt64,"ax",@progbits
	.align	1
	.type	doubleToInt64, @function
doubleToInt64:
	ret
	.size	doubleToInt64, .-doubleToInt64
	.section	.text.memIntValue,"ax",@progbits
	.align	1
	.type	memIntValue, @function
memIntValue:
	addi	sp,sp,-32
	sd	ra,24(sp)
	lbu	a3,10(a0)
	lw	a2,12(a0)
	ld	a0,16(a0)
	addi	a1,sp,8
	sd	zero,8(sp)
	call	sqlite3Atoi64
	ld	ra,24(sp)
	ld	a0,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	memIntValue, .-memIntValue
	.set	memRealValue,memIntValue
	.section	.text.sqlite3VdbeRealValue,"ax",@progbits
	.align	1
	.type	sqlite3VdbeRealValue, @function
sqlite3VdbeRealValue:
	lhu	a4,8(a0)
	mv	a5,a0
	andi	a3,a4,8
	bne	a3,zero,.L470
	andi	a3,a4,36
	bne	a3,zero,.L470
	andi	a4,a4,18
	li	a5,0
	beq	a4,zero,.L464
	tail	memRealValue
.L470:
	ld	a5,0(a5)
.L464:
	mv	a0,a5
	ret
	.size	sqlite3VdbeRealValue, .-sqlite3VdbeRealValue
	.section	.text.sqlite3NoopDestructor,"ax",@progbits
	.align	1
	.type	sqlite3NoopDestructor, @function
sqlite3NoopDestructor:
	ret
	.size	sqlite3NoopDestructor, .-sqlite3NoopDestructor
	.section	.text.sqlite3VdbeFrameMemDel,"ax",@progbits
	.align	1
	.type	sqlite3VdbeFrameMemDel, @function
sqlite3VdbeFrameMemDel:
	ld	a5,0(a0)
	ld	a4,256(a5)
	sd	a4,8(a0)
	sd	a0,256(a5)
	ret
	.size	sqlite3VdbeFrameMemDel, .-sqlite3VdbeFrameMemDel
	.section	.text.sqlite3_expired,"ax",@progbits
	.align	1
	.globl	sqlite3_expired
	.type	sqlite3_expired, @function
sqlite3_expired:
	beq	a0,zero,.L475
	lbu	a0,189(a0)
	andi	a0,a0,3
	snez	a0,a0
	ret
.L475:
	li	a0,1
	ret
	.size	sqlite3_expired, .-sqlite3_expired
	.section	.text.sqlite3_value_double,"ax",@progbits
	.align	1
	.globl	sqlite3_value_double
	.type	sqlite3_value_double, @function
sqlite3_value_double:
	tail	sqlite3VdbeRealValue
	.size	sqlite3_value_double, .-sqlite3_value_double
	.section	.text.sqlite3_value_subtype,"ax",@progbits
	.align	1
	.globl	sqlite3_value_subtype
	.type	sqlite3_value_subtype, @function
sqlite3_value_subtype:
	lh	a5,8(a0)
	blt	a5,zero,.L480
	li	a0,0
	ret
.L480:
	lbu	a0,11(a0)
	ret
	.size	sqlite3_value_subtype, .-sqlite3_value_subtype
	.section	.text.sqlite3_value_type,"ax",@progbits
	.align	1
	.globl	sqlite3_value_type
	.type	sqlite3_value_type, @function
sqlite3_value_type:
	lhu	a5,8(a0)
	andi	a4,a5,63
	lla	a5,.LANCHOR2
	add	a5,a5,a4
	lbu	a0,576(a5)
	ret
	.size	sqlite3_value_type, .-sqlite3_value_type
	.section	.text.sqlite3_value_nochange,"ax",@progbits
	.align	1
	.globl	sqlite3_value_nochange
	.type	sqlite3_value_nochange, @function
sqlite3_value_nochange:
	lhu	a0,8(a0)
	li	a5,16384
	addi	a5,a5,1
	and	a0,a5,a0
	sub	a0,a0,a5
	seqz	a0,a0
	ret
	.size	sqlite3_value_nochange, .-sqlite3_value_nochange
	.section	.text.sqlite3_value_frombind,"ax",@progbits
	.align	1
	.globl	sqlite3_value_frombind
	.type	sqlite3_value_frombind, @function
sqlite3_value_frombind:
	lhu	a0,8(a0)
	srliw	a0,a0,6
	andi	a0,a0,1
	ret
	.size	sqlite3_value_frombind, .-sqlite3_value_frombind
	.section	.text.sqlite3_result_subtype,"ax",@progbits
	.align	1
	.globl	sqlite3_result_subtype
	.type	sqlite3_result_subtype, @function
sqlite3_result_subtype:
	ld	a5,0(a0)
	li	a3,-32768
	lhu	a4,8(a5)
	sb	a1,11(a5)
	or	a4,a4,a3
	sh	a4,8(a5)
	ret
	.size	sqlite3_result_subtype, .-sqlite3_result_subtype
	.section	.text.sqlite3_user_data,"ax",@progbits
	.align	1
	.globl	sqlite3_user_data
	.type	sqlite3_user_data, @function
sqlite3_user_data:
	ld	a5,8(a0)
	ld	a0,8(a5)
	ret
	.size	sqlite3_user_data, .-sqlite3_user_data
	.section	.text.sqlite3_context_db_handle,"ax",@progbits
	.align	1
	.globl	sqlite3_context_db_handle
	.type	sqlite3_context_db_handle, @function
sqlite3_context_db_handle:
	ld	a5,0(a0)
	ld	a0,40(a5)
	ret
	.size	sqlite3_context_db_handle, .-sqlite3_context_db_handle
	.section	.text.sqlite3_vtab_nochange,"ax",@progbits
	.align	1
	.globl	sqlite3_vtab_nochange
	.type	sqlite3_vtab_nochange, @function
sqlite3_vtab_nochange:
	ld	a0,0(a0)
	tail	sqlite3_value_nochange@plt
	.size	sqlite3_vtab_nochange, .-sqlite3_vtab_nochange
	.section	.text.sqlite3_get_auxdata,"ax",@progbits
	.align	1
	.globl	sqlite3_get_auxdata
	.type	sqlite3_get_auxdata, @function
sqlite3_get_auxdata:
	ld	a5,24(a0)
	mv	a3,a0
	ld	a0,280(a5)
	bne	a0,zero,.L493
	j	.L488
.L490:
	ld	a0,24(a0)
	beq	a0,zero,.L488
.L493:
	lw	a5,4(a0)
	bne	a5,a1,.L490
	lw	a4,0(a0)
	lw	a5,32(a3)
	beq	a4,a5,.L492
	bge	a1,zero,.L490
.L492:
	ld	a0,8(a0)
	ret
.L488:
	ret
	.size	sqlite3_get_auxdata, .-sqlite3_get_auxdata
	.section	.text.sqlite3_aggregate_count,"ax",@progbits
	.align	1
	.globl	sqlite3_aggregate_count
	.type	sqlite3_aggregate_count, @function
sqlite3_aggregate_count:
	ld	a5,16(a0)
	lw	a0,12(a5)
	ret
	.size	sqlite3_aggregate_count, .-sqlite3_aggregate_count
	.section	.text.sqlite3_column_count,"ax",@progbits
	.align	1
	.globl	sqlite3_column_count
	.type	sqlite3_column_count, @function
sqlite3_column_count:
	beq	a0,zero,.L501
	lhu	a0,184(a0)
	ret
.L501:
	li	a0,0
	ret
	.size	sqlite3_column_count, .-sqlite3_column_count
	.section	.text.sqlite3_data_count,"ax",@progbits
	.align	1
	.globl	sqlite3_data_count
	.type	sqlite3_data_count, @function
sqlite3_data_count:
	beq	a0,zero,.L505
	ld	a5,160(a0)
	beq	a5,zero,.L505
	lhu	a0,184(a0)
	ret
.L505:
	li	a0,0
	ret
	.size	sqlite3_data_count, .-sqlite3_data_count
	.section	.text.sqlite3_bind_parameter_count,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_parameter_count
	.type	sqlite3_bind_parameter_count, @function
sqlite3_bind_parameter_count:
	beq	a0,zero,.L508
	lh	a0,32(a0)
	ret
.L508:
	li	a0,0
	ret
	.size	sqlite3_bind_parameter_count, .-sqlite3_bind_parameter_count
	.section	.text.sqlite3_bind_parameter_name,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_parameter_name
	.type	sqlite3_bind_parameter_name, @function
sqlite3_bind_parameter_name:
	beq	a0,zero,.L513
	ld	a0,176(a0)
	beq	a0,zero,.L509
	lw	a2,4(a0)
	li	a4,2
	j	.L512
.L511:
	lw	a5,4(a5)
	addw	a4,a5,a4
	ble	a2,a4,.L513
.L512:
	slli	a5,a4,2
	add	a5,a0,a5
	lw	a3,0(a5)
	bne	a3,a1,.L511
	addi	a4,a4,2
	slli	a4,a4,2
	add	a0,a0,a4
	ret
.L513:
	li	a0,0
.L509:
	ret
	.size	sqlite3_bind_parameter_name, .-sqlite3_bind_parameter_name
	.section	.text.sqlite3_db_handle,"ax",@progbits
	.align	1
	.globl	sqlite3_db_handle
	.type	sqlite3_db_handle, @function
sqlite3_db_handle:
	beq	a0,zero,.L520
	ld	a0,0(a0)
	ret
.L520:
	li	a0,0
	ret
	.size	sqlite3_db_handle, .-sqlite3_db_handle
	.section	.text.sqlite3_stmt_readonly,"ax",@progbits
	.align	1
	.globl	sqlite3_stmt_readonly
	.type	sqlite3_stmt_readonly, @function
sqlite3_stmt_readonly:
	beq	a0,zero,.L523
	lhu	a0,190(a0)
	andi	a0,a0,1
	ret
.L523:
	li	a0,1
	ret
	.size	sqlite3_stmt_readonly, .-sqlite3_stmt_readonly
	.section	.text.sqlite3_stmt_isexplain,"ax",@progbits
	.align	1
	.globl	sqlite3_stmt_isexplain
	.type	sqlite3_stmt_isexplain, @function
sqlite3_stmt_isexplain:
	beq	a0,zero,.L526
	ld	a0,184(a0)
	srli	a0,a0,42
	andi	a0,a0,3
	ret
.L526:
	li	a0,0
	ret
	.size	sqlite3_stmt_isexplain, .-sqlite3_stmt_isexplain
	.section	.text.sqlite3_stmt_busy,"ax",@progbits
	.align	1
	.globl	sqlite3_stmt_busy
	.type	sqlite3_stmt_busy, @function
sqlite3_stmt_busy:
	mv	a5,a0
	beq	a0,zero,.L529
	lw	a3,36(a0)
	li	a4,770838528
	addi	a4,a4,-605
	li	a0,0
	beq	a3,a4,.L531
	ret
.L531:
	lw	a0,52(a5)
	not	a0,a0
	srliw	a0,a0,31
	ret
.L529:
	li	a0,0
	ret
	.size	sqlite3_stmt_busy, .-sqlite3_stmt_busy
	.section	.text.sqlite3_next_stmt,"ax",@progbits
	.align	1
	.globl	sqlite3_next_stmt
	.type	sqlite3_next_stmt, @function
sqlite3_next_stmt:
	beq	a1,zero,.L535
	ld	a0,16(a1)
	ret
.L535:
	ld	a0,8(a0)
	ret
	.size	sqlite3_next_stmt, .-sqlite3_next_stmt
	.section	.text.sqlite3_sql,"ax",@progbits
	.align	1
	.globl	sqlite3_sql
	.type	sqlite3_sql, @function
sqlite3_sql:
	beq	a0,zero,.L538
	ld	a0,232(a0)
	ret
.L538:
	li	a0,0
	ret
	.size	sqlite3_sql, .-sqlite3_sql
	.section	.text.sqlite3_expanded_sql,"ax",@progbits
	.align	1
	.globl	sqlite3_expanded_sql
	.type	sqlite3_expanded_sql, @function
sqlite3_expanded_sql:
	li	a0,0
	ret
	.size	sqlite3_expanded_sql, .-sqlite3_expanded_sql
	.section	.text.sqlite3_blob_bytes,"ax",@progbits
	.align	1
	.globl	sqlite3_blob_bytes
	.type	sqlite3_blob_bytes, @function
sqlite3_blob_bytes:
	mv	a5,a0
	beq	a0,zero,.L542
	ld	a4,24(a0)
	li	a0,0
	beq	a4,zero,.L541
	lw	a0,0(a5)
	ret
.L542:
	li	a0,0
.L541:
	ret
	.size	sqlite3_blob_bytes, .-sqlite3_blob_bytes
	.section	.text.vdbeSorterMerge,"ax",@progbits
	.align	1
	.type	vdbeSorterMerge, @function
vdbeSorterMerge:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	ra,72(sp)
	mv	s1,a1
	mv	s0,a2
	mv	s2,a0
	sd	zero,8(sp)
	sw	zero,4(sp)
	addi	s3,sp,8
	addi	s4,a2,16
	addi	s5,a1,16
	addi	s6,sp,4
.L546:
	lw	a5,0(s0)
	lw	a3,0(s1)
	ld	a6,64(s2)
	mv	a4,s4
	mv	a2,s5
	mv	a1,s6
	mv	a0,s2
	jalr	a6
	ble	a0,zero,.L553
	sd	s0,0(s3)
	ld	a5,8(s0)
	sw	zero,4(sp)
	addi	s3,s0,8
	beq	a5,zero,.L554
	mv	s0,a5
	addi	s4,a5,16
	j	.L546
.L553:
	sd	s1,0(s3)
	ld	a5,8(s1)
	addi	s3,s1,8
	beq	a5,zero,.L555
	mv	s1,a5
	addi	s5,a5,16
	j	.L546
.L554:
	sd	s1,8(s0)
.L549:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	a0,8(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L555:
	sd	s0,8(s1)
	j	.L549
	.size	vdbeSorterMerge, .-vdbeSorterMerge
	.section	.text.memjrnlFileSize,"ax",@progbits
	.align	1
	.type	memjrnlFileSize, @function
memjrnlFileSize:
	ld	a5,32(a0)
	li	a0,0
	sd	a5,0(a1)
	ret
	.size	memjrnlFileSize, .-memjrnlFileSize
	.section	.text.incrAggDepth,"ax",@progbits
	.align	1
	.type	incrAggDepth, @function
incrAggDepth:
	lbu	a4,0(a1)
	li	a5,163
	bne	a4,a5,.L558
	lw	a5,40(a0)
	lbu	a4,54(a1)
	addw	a5,a5,a4
	sb	a5,54(a1)
.L558:
	li	a0,0
	ret
	.size	incrAggDepth, .-incrAggDepth
	.section	.text.sqlite3VectorFieldSubexpr,"ax",@progbits
	.align	1
	.type	sqlite3VectorFieldSubexpr, @function
sqlite3VectorFieldSubexpr:
	lbu	a5,0(a0)
	li	a3,168
	mv	a4,a5
	bne	a5,a3,.L560
	lbu	a4,54(a0)
.L560:
	li	a3,169
	beq	a4,a3,.L567
	li	a3,131
	beq	a4,a3,.L568
.L563:
	ret
.L568:
	ld	a4,32(a0)
	ld	a4,0(a4)
	lw	a3,0(a4)
.L562:
	li	a4,1
	ble	a3,a4,.L563
	li	a3,131
	ld	a4,32(a0)
	beq	a5,a3,.L564
	lbu	a5,54(a0)
	beq	a5,a3,.L564
	slli	a1,a1,5
	add	a1,a4,a1
	ld	a0,8(a1)
	ret
.L567:
	ld	a4,32(a0)
	lw	a3,0(a4)
	j	.L562
.L564:
	ld	a5,0(a4)
	slli	a1,a1,5
	add	a1,a5,a1
	ld	a0,8(a1)
	ret
	.size	sqlite3VectorFieldSubexpr, .-sqlite3VectorFieldSubexpr
	.section	.text.gatherSelectWindowsSelectCallback,"ax",@progbits
	.align	1
	.type	gatherSelectWindowsSelectCallback, @function
gatherSelectWindowsSelectCallback:
	ld	a0,40(a0)
	sub	a0,a0,a1
	snez	a0,a0
	ret
	.size	gatherSelectWindowsSelectCallback, .-gatherSelectWindowsSelectCallback
	.section	.text.sqlite3SelectWalkFail,"ax",@progbits
	.align	1
	.type	sqlite3SelectWalkFail, @function
sqlite3SelectWalkFail:
	sb	zero,36(a0)
	li	a0,2
	ret
	.size	sqlite3SelectWalkFail, .-sqlite3SelectWalkFail
	.section	.rodata.str1.8
	.align	3
.LC8:
	.string	"true"
	.align	3
.LC9:
	.string	"false"
	.section	.text.sqlite3ExprIdToTrueFalse,"ax",@progbits
	.align	1
	.type	sqlite3ExprIdToTrueFalse, @function
sqlite3ExprIdToTrueFalse:
	lw	t1,4(a0)
	slli	a5,t1,37
	blt	a5,zero,.L583
	ld	t3,8(a0)
	li	a1,116
	lla	a2,.LC8
	mv	a6,t3
	lla	a4,.LANCHOR2
	j	.L577
.L573:
	lbu	a3,320(a7)
	lbu	a5,320(a5)
	bne	a3,a5,.L582
.L575:
	lbu	a1,0(a2)
	addi	a6,a6,1
.L577:
	lbu	a3,0(a6)
	sext.w	a5,a1
	addi	a2,a2,1
	add	a7,a4,a3
	add	a5,a4,a5
	bne	a3,a1,.L573
	bne	a3,zero,.L575
	li	a5,-97
	sb	a5,0(a0)
	lbu	a4,4(t3)
	li	a5,268435456
	bne	a4,zero,.L592
.L580:
	or	t1,t1,a5
	sw	t1,4(a0)
	li	a0,1
	ret
.L583:
	li	a0,0
	ret
.L582:
	mv	a6,t3
	li	a1,102
	lla	a2,.LC9
	j	.L576
.L578:
	lbu	a3,320(a7)
	lbu	a5,320(a5)
	bne	a3,a5,.L583
.L579:
	lbu	a1,0(a2)
	addi	a6,a6,1
.L576:
	lbu	a3,0(a6)
	sext.w	a5,a1
	addi	a2,a2,1
	add	a7,a4,a3
	add	a5,a4,a5
	bne	a3,a1,.L578
	bne	a3,zero,.L579
	li	a5,-97
	sb	a5,0(a0)
	lbu	a4,4(t3)
	li	a5,268435456
	beq	a4,zero,.L580
.L592:
	li	a5,536870912
	or	t1,t1,a5
	sw	t1,4(a0)
	li	a0,1
	ret
	.size	sqlite3ExprIdToTrueFalse, .-sqlite3ExprIdToTrueFalse
	.section	.text.exprNodeIsConstant,"ax",@progbits
	.align	1
	.type	exprNodeIsConstant, @function
exprNodeIsConstant:
	addi	sp,sp,-32
	sd	s1,16(sp)
	sd	ra,24(sp)
	lbu	a3,36(a0)
	li	a5,2
	mv	s1,a0
	beq	a3,a5,.L620
	lbu	a5,0(a1)
	li	a4,59
	beq	a5,a4,.L597
	addiw	a5,a5,108
	andi	a5,a5,0xff
	li	a4,23
	bgtu	a5,a4,.L618
	lla	a4,.L599
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L599:
	.word	.L602-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L601-.L599
	.word	.L600-.L599
	.word	.L600-.L599
	.word	.L600-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L598-.L599
	.word	.L618-.L599
	.word	.L618-.L599
	.word	.L598-.L599
	.section	.text.exprNodeIsConstant
.L601:
	li	a5,3
	bleu	a3,a5,.L621
.L618:
	li	a0,0
.L615:
	ld	ra,24(sp)
	ld	s1,16(sp)
	addi	sp,sp,32
	jr	ra
.L620:
	lw	a3,4(a1)
	andi	a5,a3,1
	bne	a5,zero,.L598
	lbu	a5,0(a1)
	li	a4,164
	bgtu	a5,a4,.L608
	li	a4,161
	bgtu	a5,a4,.L598
	li	a2,59
	bne	a5,a2,.L622
.L597:
	mv	a0,a1
	sd	a1,8(sp)
	call	sqlite3ExprIdToTrueFalse
	mv	a5,a0
	li	a0,1
	bne	a5,zero,.L615
	ld	a1,8(sp)
	lbu	a3,36(s1)
	lw	a5,4(a1)
	andi	a5,a5,8
	beq	a5,zero,.L604
	li	a5,2
	bne	a3,a5,.L618
.L598:
	sb	zero,36(s1)
	li	a0,2
.L623:
	ld	ra,24(sp)
	ld	s1,16(sp)
	addi	sp,sp,32
	jr	ra
.L622:
	bne	a5,a4,.L618
.L605:
	slli	a5,a3,44
	blt	a5,zero,.L618
	j	.L598
.L608:
	li	a4,168
	beq	a5,a4,.L598
	li	a4,171
	bne	a5,a4,.L618
	sb	zero,36(s1)
	li	a0,2
	j	.L623
.L600:
	lw	a5,4(a1)
	andi	a5,a5,8
	bne	a5,zero,.L618
.L604:
	li	a5,3
	bne	a3,a5,.L598
	lw	a4,44(a1)
	lw	a5,40(s1)
	bne	a4,a5,.L598
	j	.L618
.L602:
	li	a5,5
	bne	a3,a5,.L607
	li	a5,114
	sb	a5,0(a1)
	li	a0,0
	j	.L615
.L607:
	li	a5,4
	bne	a3,a5,.L618
	j	.L598
.L621:
	lw	a3,4(a1)
	j	.L605
	.size	exprNodeIsConstant, .-exprNodeIsConstant
	.section	.text.sqlite3ExprCanBeNull,"ax",@progbits
	.align	1
	.type	sqlite3ExprCanBeNull, @function
sqlite3ExprCanBeNull:
	lbu	a3,0(a0)
	li	a2,1
	mv	a4,a0
	addiw	a5,a3,91
	andi	a5,a5,0xff
	bgtu	a5,a2,.L625
.L626:
	ld	a4,16(a4)
	lbu	a3,0(a4)
	addiw	a5,a3,91
	andi	a5,a5,0xff
	bleu	a5,a2,.L626
.L625:
	li	a5,168
	bne	a3,a5,.L627
	lbu	a3,54(a4)
.L627:
	li	a5,147
	bgtu	a3,a5,.L628
	li	a5,144
	bgtu	a3,a5,.L630
	addi	a3,a3,-110
	snez	a0,a3
	ret
.L628:
	li	a5,162
	li	a0,1
	bne	a3,a5,.L629
	lw	a5,4(a4)
	slli	a3,a5,43
	blt	a3,zero,.L629
	ld	a3,64(a4)
	beq	a3,zero,.L629
	lh	a5,48(a4)
	li	a0,0
	blt	a5,zero,.L629
	ld	a4,8(a3)
	slli	a5,a5,5
	add	a5,a4,a5
	lbu	a3,24(a5)
	seqz	a0,a3
	ret
.L630:
	li	a0,0
.L629:
	ret
	.size	sqlite3ExprCanBeNull, .-sqlite3ExprCanBeNull
	.section	.text.exprToRegister,"ax",@progbits
	.align	1
	.type	exprToRegister, @function
exprToRegister:
	li	a2,266240
	li	a6,262144
	beq	a0,zero,.L639
.L638:
	lw	a5,4(a0)
	and	a4,a5,a2
	sext.w	a4,a4
	mv	a3,a5
	beq	a4,zero,.L648
	and	a5,a5,a6
	sext.w	a5,a5
	beq	a5,zero,.L640
	ld	a5,32(a0)
	ld	a0,8(a5)
	bne	a0,zero,.L638
.L639:
	lbu	a5,0(zero)
	ebreak
.L640:
	ld	a0,16(a0)
	bne	a0,zero,.L638
	j	.L639
.L648:
	lbu	a4,0(a0)
	li	a5,-4096
	addi	a5,a5,-1
	and	a3,a3,a5
	li	a5,-88
	sb	a4,54(a0)
	sb	a5,0(a0)
	sw	a1,44(a0)
	sw	a3,4(a0)
	ret
	.size	exprToRegister, .-exprToRegister
	.section	.text.analyzeAggregatesInSelect,"ax",@progbits
	.align	1
	.type	analyzeAggregatesInSelect, @function
analyzeAggregatesInSelect:
	lw	a4,32(a0)
	mv	a5,a0
	li	a0,0
	addiw	a4,a4,1
	sw	a4,32(a5)
	ret
	.size	analyzeAggregatesInSelect, .-analyzeAggregatesInSelect
	.section	.text.analyzeAggregatesInSelectEnd,"ax",@progbits
	.align	1
	.type	analyzeAggregatesInSelectEnd, @function
analyzeAggregatesInSelectEnd:
	lw	a5,32(a0)
	addiw	a5,a5,-1
	sw	a5,32(a0)
	ret
	.size	analyzeAggregatesInSelectEnd, .-analyzeAggregatesInSelectEnd
	.section	.text.renameUnmapExprCb,"ax",@progbits
	.align	1
	.type	renameUnmapExprCb, @function
renameUnmapExprCb:
	ld	a5,0(a0)
	ld	a5,400(a5)
	bne	a5,zero,.L654
	j	.L652
.L653:
	ld	a5,24(a5)
	beq	a5,zero,.L652
.L654:
	ld	a4,0(a5)
	bne	a1,a4,.L653
	sd	zero,0(a5)
.L652:
	li	a0,0
	ret
	.size	renameUnmapExprCb, .-renameUnmapExprCb
	.section	.text.renameUnmapSelectCb,"ax",@progbits
	.align	1
	.type	renameUnmapSelectCb, @function
renameUnmapSelectCb:
	ld	a6,0(a1)
	ld	a7,0(a0)
	beq	a6,zero,.L660
	lw	a0,0(a6)
	sext.w	a5,a0
	ble	a5,zero,.L660
	li	a2,0
	j	.L664
.L661:
	addiw	a2,a2,1
	sext.w	a5,a0
	ble	a5,a2,.L660
.L664:
	slli	a5,a2,5
	add	a5,a6,a5
	ld	a3,16(a5)
	beq	a3,zero,.L661
	ld	a5,400(a7)
	bne	a5,zero,.L663
	j	.L661
.L662:
	ld	a5,24(a5)
	beq	a5,zero,.L661
.L663:
	ld	a4,0(a5)
	bne	a3,a4,.L662
	sd	zero,0(a5)
	lw	a0,0(a6)
	addiw	a2,a2,1
	sext.w	a5,a0
	bgt	a5,a2,.L664
.L660:
	ld	a1,40(a1)
	beq	a1,zero,.L665
	lw	a0,0(a1)
	sext.w	a5,a0
	ble	a5,zero,.L665
	li	a2,0
.L669:
	slli	a4,a2,3
	sub	a4,a4,a2
	ld	a5,400(a7)
	slli	a4,a4,4
	add	a4,a1,a4
	ld	a3,24(a4)
	bne	a5,zero,.L668
	j	.L666
.L667:
	ld	a5,24(a5)
	beq	a5,zero,.L666
.L668:
	ld	a4,0(a5)
	bne	a3,a4,.L667
	sd	zero,0(a5)
	lw	a0,0(a1)
.L666:
	addiw	a2,a2,1
	sext.w	a5,a0
	bgt	a5,a2,.L669
.L665:
	li	a0,0
	ret
	.size	renameUnmapSelectCb, .-renameUnmapSelectCb
	.section	.text.renameColumnExprCb,"ax",@progbits
	.align	1
	.type	renameColumnExprCb, @function
renameColumnExprCb:
	lbu	a5,0(a1)
	li	a3,77
	ld	a4,40(a0)
	beq	a5,a3,.L704
	li	a3,162
	beq	a5,a3,.L705
.L691:
	li	a0,0
	ret
.L705:
	lh	a3,48(a1)
	lw	a5,12(a4)
	bne	a3,a5,.L691
	ld	a3,16(a4)
	ld	a5,64(a1)
	bne	a3,a5,.L691
	ld	a0,0(a0)
	ld	a5,400(a0)
	addi	a0,a0,400
	bne	a5,zero,.L695
	j	.L691
.L694:
	addi	a0,a3,24
	beq	a5,zero,.L691
.L695:
	ld	a2,0(a5)
	mv	a3,a5
	ld	a5,24(a5)
	bne	a1,a2,.L694
	sd	a5,0(a0)
	ld	a5,0(a4)
	sd	a5,24(a3)
	lw	a5,8(a4)
	sd	a3,0(a4)
	addiw	a5,a5,1
	sw	a5,8(a4)
	j	.L691
.L704:
	lh	a3,48(a1)
	lw	a5,12(a4)
	bne	a3,a5,.L691
	ld	a3,0(a0)
	ld	a5,16(a4)
	ld	a2,168(a3)
	bne	a2,a5,.L691
	ld	a5,400(a3)
	addi	a3,a3,400
	bne	a5,zero,.L693
	j	.L691
.L692:
	addi	a3,a2,24
	beq	a5,zero,.L691
.L693:
	ld	a0,0(a5)
	mv	a2,a5
	ld	a5,24(a5)
	bne	a1,a0,.L692
	sd	a5,0(a3)
	ld	a5,0(a4)
	sd	a5,24(a2)
	lw	a5,8(a4)
	sd	a2,0(a4)
	addiw	a5,a5,1
	sw	a5,8(a4)
	j	.L691
	.size	renameColumnExprCb, .-renameColumnExprCb
	.section	.text.renameTableExprCb,"ax",@progbits
	.align	1
	.type	renameTableExprCb, @function
renameTableExprCb:
	lbu	a4,0(a1)
	li	a5,162
	beq	a4,a5,.L714
.L707:
	li	a0,0
	ret
.L714:
	ld	a6,40(a0)
	ld	a5,64(a1)
	ld	a4,16(a6)
	bne	a4,a5,.L707
	ld	a2,0(a0)
	addi	a1,a1,64
	ld	a5,400(a2)
	addi	a2,a2,400
	bne	a5,zero,.L709
	j	.L707
.L708:
	addi	a2,a4,24
	beq	a5,zero,.L707
.L709:
	ld	a3,0(a5)
	mv	a4,a5
	ld	a5,24(a5)
	bne	a1,a3,.L708
	sd	a5,0(a2)
	ld	a5,0(a6)
	sd	a5,24(a4)
	lw	a5,8(a6)
	sd	a4,0(a6)
	addiw	a5,a5,1
	sw	a5,8(a6)
	j	.L707
	.size	renameTableExprCb, .-renameTableExprCb
	.section	.text.sqlite3FindIndex,"ax",@progbits
	.align	1
	.type	sqlite3FindIndex, @function
sqlite3FindIndex:
	addi	sp,sp,-64
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s5,8(sp)
	mv	s4,a0
	lw	a0,40(a0)
	sext.w	a5,a0
	ble	a5,zero,.L716
	mv	s3,a1
	mv	s5,a2
	li	s1,0
	li	s2,1
	lla	s0,.LANCHOR2
.L721:
	mv	a5,s1
	bgt	s1,s2,.L717
	xori	a5,s1,1
.L717:
	ld	t3,32(s4)
	slli	a5,a5,5
	add	t3,t3,a5
	beq	s5,zero,.L718
	ld	a6,0(t3)
	mv	a4,s5
	lbu	a5,0(a4)
	lbu	a3,0(a6)
	addi	a4,a4,1
	add	t1,s0,a5
	add	a7,s0,a3
	beq	a5,a3,.L734
.L719:
	lbu	a3,320(t1)
	lbu	a5,320(a7)
	bne	a3,a5,.L724
.L720:
	lbu	a5,0(a4)
	lbu	a3,1(a6)
	addi	a6,a6,1
	addi	a4,a4,1
	add	t1,s0,a5
	add	a7,s0,a3
	bne	a5,a3,.L719
.L734:
	bne	a5,zero,.L720
.L718:
	ld	a0,24(t3)
	li	a2,0
	mv	a1,s3
	addi	a0,a0,32
	call	findElementWithHash
	ld	a0,16(a0)
	bne	a0,zero,.L715
	lw	a0,40(s4)
.L724:
	addiw	s1,s1,1
	sext.w	a5,a0
	bgt	a5,s1,.L721
.L716:
	li	a0,0
.L715:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
	.size	sqlite3FindIndex, .-sqlite3FindIndex
	.section	.text.sqlite3SrcListAssignCursors,"ax",@progbits
	.align	1
	.type	sqlite3SrcListAssignCursors, @function
sqlite3SrcListAssignCursors:
	beq	a1,zero,.L747
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	lw	a5,0(a1)
	mv	s3,a1
	addi	s0,a1,8
	ble	a5,zero,.L735
	mv	s1,a0
	li	s2,0
.L738:
	lw	a5,64(s0)
	addiw	s2,s2,1
	mv	a0,s1
	bge	a5,zero,.L735
	lw	a5,52(s1)
	addi	s0,s0,112
	addiw	a4,a5,1
	sw	a4,52(s1)
	ld	a4,-72(s0)
	sw	a5,-48(s0)
	beq	a4,zero,.L737
	ld	a1,40(a4)
	call	sqlite3SrcListAssignCursors
.L737:
	lw	a5,0(s3)
	bgt	a5,s2,.L738
.L735:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L747:
	ret
	.size	sqlite3SrcListAssignCursors, .-sqlite3SrcListAssignCursors
	.section	.text.matchQuality,"ax",@progbits
	.align	1
	.type	matchQuality, @function
matchQuality:
	li	a4,-2
	mv	a5,a0
	beq	a1,a4,.L762
	lb	a4,0(a0)
	beq	a4,a1,.L756
	li	a0,0
	bge	a4,zero,.L752
	lw	a5,4(a5)
	li	a0,1
	sext.w	a3,a2
	andi	a4,a5,3
	beq	a2,a4,.L763
.L754:
	and	a5,a5,a3
	andi	a5,a5,2
	beq	a5,zero,.L752
	addiw	a0,a0,1
.L752:
	ret
.L756:
	lw	a5,4(a5)
	li	a0,4
	sext.w	a3,a2
	andi	a4,a5,3
	bne	a2,a4,.L754
.L763:
	addiw	a0,a0,2
	ret
.L762:
	ld	a5,24(a0)
	li	a0,0
	beq	a5,zero,.L752
	li	a0,6
	ret
	.size	matchQuality, .-matchQuality
	.section	.text.sqlite3FunctionSearch,"ax",@progbits
	.align	1
	.type	sqlite3FunctionSearch, @function
sqlite3FunctionSearch:
	slli	a4,a0,3
	lla	a5,.LANCHOR0
	add	a5,a5,a4
	ld	a0,40(a5)
	beq	a0,zero,.L764
	lla	a6,.LANCHOR2
.L770:
	ld	a4,56(a0)
	mv	a2,a1
	lbu	a3,0(a2)
	lbu	a5,0(a4)
	addi	a4,a4,1
	add	a7,a6,a3
	add	t1,a6,a5
	beq	a5,a3,.L778
.L766:
	lbu	a3,320(t1)
	lbu	a5,320(a7)
	bne	a3,a5,.L768
.L767:
	lbu	a5,0(a4)
	lbu	a3,1(a2)
	addi	a2,a2,1
	addi	a4,a4,1
	add	t1,a6,a5
	add	a7,a6,a3
	bne	a5,a3,.L766
.L778:
	bne	a5,zero,.L767
	ret
.L768:
	ld	a0,64(a0)
	bne	a0,zero,.L770
.L764:
	ret
	.size	sqlite3FunctionSearch, .-sqlite3FunctionSearch
	.section	.text.fkParentIsModified,"ax",@progbits
	.align	1
	.type	fkParentIsModified, @function
fkParentIsModified:
	lw	a5,40(a1)
	ble	a5,zero,.L790
	addi	sp,sp,-16
	sd	s0,8(sp)
	addiw	s0,a5,-1
	slli	s0,s0,32
	srli	s0,s0,32
	lh	t6,70(a0)
	slli	s0,s0,4
	addi	a5,a1,88
	addi	t2,a1,72
	add	s0,s0,a5
	lla	a7,.LANCHOR2
.L789:
	ld	t0,0(t2)
	ble	t6,zero,.L781
	mv	t5,a2
	li	t4,0
	j	.L788
.L782:
	ld	a5,8(a0)
	slli	a4,t4,5
	add	a5,a5,a4
	bne	t0,zero,.L802
.L784:
	lbu	a5,27(a5)
	andi	a5,a5,1
	bne	a5,zero,.L792
.L783:
	addi	t4,t4,1
	sext.w	a5,t4
	addi	t5,t5,4
	bge	a5,t6,.L781
.L788:
	lw	a5,0(t5)
	bge	a5,zero,.L782
	lh	a4,68(a0)
	sext.w	a5,t4
	bne	a4,a5,.L783
	beq	a3,zero,.L783
	ld	a5,8(a0)
	slli	a4,t4,5
	add	a5,a5,a4
	beq	t0,zero,.L784
.L802:
	ld	a4,0(a5)
	mv	a6,t0
	lbu	a1,0(a6)
	lbu	a5,0(a4)
	addi	a4,a4,1
	add	t1,a7,a1
	add	t3,a7,a5
	beq	a5,a1,.L803
.L785:
	lbu	a1,320(t3)
	lbu	a5,320(t1)
	bne	a1,a5,.L783
.L786:
	lbu	a5,0(a4)
	lbu	a1,1(a6)
	addi	a6,a6,1
	addi	a4,a4,1
	add	t3,a7,a5
	add	t1,a7,a1
	bne	a5,a1,.L785
.L803:
	bne	a5,zero,.L786
.L792:
	li	a0,1
.L780:
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
.L781:
	addi	t2,t2,16
	bne	s0,t2,.L789
	li	a0,0
	j	.L780
.L790:
	li	a0,0
	ret
	.size	fkParentIsModified, .-fkParentIsModified
	.section	.text.sqlite3_cancel_auto_extension,"ax",@progbits
	.align	1
	.globl	sqlite3_cancel_auto_extension
	.type	sqlite3_cancel_auto_extension, @function
sqlite3_cancel_auto_extension:
	lla	a7,.LANCHOR0
	lw	a2,224(a7)
	addiw	a2,a2,-1
	slli	a4,a2,32
	sext.w	a5,a2
	blt	a4,zero,.L808
	ld	a6,232(a7)
	slli	a1,a2,32
	slli	a5,a5,3
	srli	a1,a1,32
	addi	a3,a6,-8
	add	a3,a3,a5
	slli	a1,a1,3
	add	a5,a6,a5
	sub	a3,a3,a1
	j	.L807
.L806:
	addi	a5,a5,-8
	beq	a5,a3,.L808
.L807:
	ld	a4,0(a5)
	bne	a4,a0,.L806
	add	a1,a6,a1
	ld	a4,0(a1)
	sw	a2,224(a7)
	li	a0,1
	sd	a4,0(a5)
	ret
.L808:
	li	a0,0
	ret
	.size	sqlite3_cancel_auto_extension, .-sqlite3_cancel_auto_extension
	.section	.text.pragmaVtabEof,"ax",@progbits
	.align	1
	.type	pragmaVtabEof, @function
pragmaVtabEof:
	ld	a0,8(a0)
	seqz	a0,a0
	ret
	.size	pragmaVtabEof, .-pragmaVtabEof
	.section	.text.pragmaVtabRowid,"ax",@progbits
	.align	1
	.type	pragmaVtabRowid, @function
pragmaVtabRowid:
	ld	a5,16(a0)
	li	a0,0
	sd	a5,0(a1)
	ret
	.size	pragmaVtabRowid, .-pragmaVtabRowid
	.section	.text.setJoinExpr,"ax",@progbits
	.align	1
	.type	setJoinExpr, @function
setJoinExpr:
	beq	a0,zero,.L826
	addi	sp,sp,-48
	sd	s4,0(sp)
	slliw	s4,a1,16
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	mv	s1,a1
	mv	s0,a0
	sraiw	s4,s4,16
	li	s3,161
.L815:
	lw	a5,4(s0)
	lbu	a4,0(s0)
	sh	s4,52(s0)
	ori	a5,a5,1
	sw	a5,4(s0)
	beq	a4,s3,.L814
.L817:
	ld	a0,16(s0)
	mv	a1,s1
	call	setJoinExpr
	ld	s0,24(s0)
	bne	s0,zero,.L815
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L814:
	ld	a5,32(s0)
	beq	a5,zero,.L817
	lw	a4,0(a5)
	ble	a4,zero,.L817
	li	s2,0
.L818:
	slli	a4,s2,5
	add	a5,a5,a4
	ld	a0,8(a5)
	mv	a1,s1
	addiw	s2,s2,1
	call	setJoinExpr
	ld	a5,32(s0)
	lw	a4,0(a5)
	bgt	a4,s2,.L818
	j	.L817
.L826:
	ret
	.size	setJoinExpr, .-setJoinExpr
	.section	.text.unsetJoinExpr,"ax",@progbits
	.align	1
	.type	unsetJoinExpr, @function
unsetJoinExpr:
	beq	a0,zero,.L848
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	mv	s0,a0
	mv	s1,a1
	li	s3,161
.L835:
	lw	a5,4(s0)
	andi	a4,a5,1
	beq	a4,zero,.L831
	blt	s1,zero,.L832
	lh	a4,52(s0)
	beq	a4,s1,.L832
.L831:
	lbu	a5,0(s0)
	beq	a5,s3,.L851
.L833:
	ld	a0,16(s0)
	mv	a1,s1
	call	unsetJoinExpr
	ld	s0,24(s0)
	bne	s0,zero,.L835
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L851:
	ld	a5,32(s0)
	beq	a5,zero,.L833
	lw	a4,0(a5)
	ble	a4,zero,.L833
	li	s2,0
.L834:
	slli	a4,s2,5
	add	a5,a5,a4
	ld	a0,8(a5)
	mv	a1,s1
	addiw	s2,s2,1
	call	unsetJoinExpr
	ld	a5,32(s0)
	lw	a4,0(a5)
	bgt	a4,s2,.L834
	j	.L833
.L832:
	andi	a5,a5,-2
	sw	a5,4(s0)
	j	.L831
.L848:
	ret
	.size	unsetJoinExpr, .-unsetJoinExpr
	.section	.text.selectPopWith,"ax",@progbits
	.align	1
	.type	selectPopWith, @function
selectPopWith:
	ld	a5,0(a0)
	ld	a4,384(a5)
	beq	a4,zero,.L852
	ld	a4,80(a1)
	beq	a4,zero,.L854
.L852:
	ret
.L854:
	mv	a4,a1
	ld	a1,88(a1)
	bne	a1,zero,.L854
	ld	a4,104(a4)
	beq	a4,zero,.L852
	ld	a4,8(a4)
	sd	a4,384(a5)
	ret
	.size	selectPopWith, .-selectPopWith
	.section	.text.sqlite3ExprWalkNoop,"ax",@progbits
	.align	1
	.type	sqlite3ExprWalkNoop, @function
sqlite3ExprWalkNoop:
	li	a0,0
	ret
	.size	sqlite3ExprWalkNoop, .-sqlite3ExprWalkNoop
	.section	.text.sqlite3_vtab_on_conflict,"ax",@progbits
	.align	1
	.globl	sqlite3_vtab_on_conflict
	.type	sqlite3_vtab_on_conflict, @function
sqlite3_vtab_on_conflict:
	lbu	a5,102(a0)
	addiw	a4,a5,-1
	lla	a5,.LANCHOR2
	add	a5,a5,a4
	lbu	a0,640(a5)
	ret
	.size	sqlite3_vtab_on_conflict, .-sqlite3_vtab_on_conflict
	.section	.text.whereOrInsert,"ax",@progbits
	.align	1
	.type	whereOrInsert, @function
whereOrInsert:
	lhu	t4,0(a0)
	addi	t5,a0,8
	li	a6,0
	beq	t4,zero,.L865
	addiw	t1,t4,-1
	slli	t1,t1,48
	srli	t1,t1,44
	addi	t1,t1,24
	add	t1,a0,t1
	mv	a5,t5
	sext.w	t3,a2
	j	.L870
.L884:
	beq	a1,a7,.L867
	beq	a6,t3,.L866
.L868:
	addi	a5,a5,16
	beq	a5,t1,.L883
.L870:
	ld	a4,0(a5)
	lh	a6,8(a5)
	and	a7,a1,a4
	bge	a6,t3,.L884
.L866:
	bne	a4,a7,.L868
	li	a0,0
.L869:
	ret
.L865:
	addiw	a4,t4,1
	slli	a5,t4,4
	slli	a6,a6,4
	sh	a4,0(a0)
	addi	a5,a5,8
	add	a6,a0,a6
	add	a5,a0,a5
	sh	a3,18(a6)
.L867:
	lh	a4,10(a5)
	sd	a1,0(a5)
	sh	a2,8(a5)
	li	a0,1
	ble	a4,a3,.L869
.L885:
	sh	a3,10(a5)
	ret
.L883:
	li	a5,2
	sext.w	a6,t4
	bleu	t4,a5,.L865
	lh	a7,16(a0)
	mv	a5,t5
	addi	a0,a0,24
	li	a4,1
.L873:
	lh	t1,8(a0)
	addiw	a4,a4,1
	slli	a4,a4,48
	srli	a4,a4,48
	bge	t1,a7,.L872
	mv	a5,a0
	mv	a7,t1
.L872:
	addi	a0,a0,16
	bne	a6,a4,.L873
	li	a0,0
	bge	t3,a7,.L869
	lh	a4,10(a5)
	sd	a1,0(a5)
	sh	a2,8(a5)
	li	a0,1
	ble	a4,a3,.L869
	j	.L885
	.size	whereOrInsert, .-whereOrInsert
	.section	.text.whereLoopCheaperProperSubset,"ax",@progbits
	.align	1
	.type	whereLoopCheaperProperSubset, @function
whereLoopCheaperProperSubset:
	lhu	a4,44(a0)
	lhu	a5,44(a1)
	lhu	a2,46(a0)
	lhu	a3,46(a1)
	mv	t1,a0
	subw	a6,a4,a2
	subw	a0,a5,a3
	sext.w	a7,a4
	sext.w	t4,a5
	bge	a6,a0,.L897
	li	a0,0
	bltu	a2,a3,.L887
	lh	a2,20(t1)
	lh	a3,20(a1)
	blt	a2,a3,.L888
	bgt	a2,a3,.L887
	lh	a2,22(t1)
	lh	a3,22(a1)
	bgt	a2,a3,.L887
.L888:
	addiw	a3,a7,-1
	beq	a7,zero,.L889
	ld	a6,56(t1)
	addiw	a4,a4,-1
	addiw	a7,a5,-1
	slli	a4,a4,32
	slli	a3,a3,3
	addi	a0,a6,-8
	srli	a4,a4,32
	slli	a7,a7,32
	add	a0,a0,a3
	slli	a5,a4,3
	addiw	t4,t4,-1
	srli	a7,a7,32
	add	a6,a6,a3
	sub	a0,a0,a5
	slli	t3,t4,3
	slli	a7,a7,3
	li	t5,-1
.L892:
	ld	a2,0(a6)
	beq	a2,zero,.L890
	beq	t4,t5,.L897
	ld	a5,56(a1)
	addi	a3,a5,-8
	add	a3,a3,t3
	add	a5,a5,t3
	sub	a3,a3,a7
	j	.L891
.L905:
	beq	a5,a3,.L897
.L891:
	ld	a4,0(a5)
	addi	a5,a5,-8
	bne	a2,a4,.L905
.L890:
	addi	a6,a6,-8
	bne	a6,a0,.L892
.L889:
	lw	a5,40(t1)
	li	a0,1
	andi	a5,a5,64
	beq	a5,zero,.L887
	lw	a0,40(a1)
	sraiw	a0,a0,6
	andi	a0,a0,1
	ret
.L897:
	li	a0,0
.L887:
	ret
	.size	whereLoopCheaperProperSubset, .-whereLoopCheaperProperSubset
	.section	.text.whereLoopFindLesser,"ax",@progbits
	.align	1
	.type	whereLoopFindLesser, @function
whereLoopFindLesser:
	ld	a5,0(a0)
	beq	a5,zero,.L906
	ld	t6,16(a1)
	li	a7,65536
	li	t3,-1
	addi	a7,a7,-1
	slli	t3,t3,48
	and	t6,t6,a7
	li	t1,16384
	addi	t3,t3,513
	li	t4,513
.L913:
	ld	a4,16(a5)
	and	a4,a4,a7
	bne	a4,t6,.L908
	lw	a4,40(a5)
	ld	a3,0(a5)
	ld	a2,0(a1)
	and	a4,a4,t1
	sext.w	a4,a4
	and	a6,a3,a2
	beq	a4,zero,.L909
	ld	a4,40(a1)
	and	a4,a4,t3
	beq	a4,t4,.L923
.L909:
	beq	a3,a6,.L924
.L911:
	beq	a2,a6,.L925
.L908:
	addi	a0,a5,64
	ld	a5,64(a5)
	bne	a5,zero,.L913
	ret
.L924:
	lh	t5,18(a5)
	lh	a4,18(a1)
	bgt	t5,a4,.L911
	lh	t5,20(a5)
	lh	a4,20(a1)
	ble	t5,a4,.L915
	bne	a2,a3,.L908
	lh	a3,22(a5)
	lh	a4,22(a1)
	blt	a3,a4,.L908
.L906:
	ret
.L923:
	beq	a2,a6,.L926
	bne	a3,a6,.L908
	lh	a3,18(a1)
	lh	a4,18(a5)
	blt	a3,a4,.L908
	lh	a3,20(a5)
	lh	a4,20(a1)
	bgt	a3,a4,.L908
.L915:
	lh	a3,22(a5)
	lh	a4,22(a1)
	bgt	a3,a4,.L911
	li	a0,0
	ret
.L925:
	lh	a3,20(a5)
	lh	a4,20(a1)
	blt	a3,a4,.L908
	lh	a3,22(a5)
	lh	a4,22(a1)
	blt	a3,a4,.L908
	j	.L906
.L926:
	ret
	.size	whereLoopFindLesser, .-whereLoopFindLesser
	.section	.text.exprNodeIsDeterministic,"ax",@progbits
	.align	1
	.type	exprNodeIsDeterministic, @function
exprNodeIsDeterministic:
	ld	a4,0(a1)
	li	a5,1
	slli	a5,a5,51
	addi	a5,a5,255
	and	a5,a4,a5
	li	a4,161
	beq	a5,a4,.L930
	li	a0,0
	ret
.L930:
	sb	zero,36(a0)
	li	a0,2
	ret
	.size	exprNodeIsDeterministic, .-exprNodeIsDeterministic
	.section	.text.sqlite3_keyword_name,"ax",@progbits
	.align	1
	.globl	sqlite3_keyword_name
	.type	sqlite3_keyword_name, @function
sqlite3_keyword_name:
	li	a5,139
	bgtu	a0,a5,.L933
	lla	a5,.LANCHOR2
	slli	a4,a0,1
	add	a4,a5,a4
	lhu	a3,1280(a4)
	add	a0,a5,a0
	lbu	a4,1560(a0)
	lla	a5,.LANCHOR2+648
	add	a5,a5,a3
	sd	a5,0(a1)
	sw	a4,0(a2)
	li	a0,0
	ret
.L933:
	li	a0,1
	ret
	.size	sqlite3_keyword_name, .-sqlite3_keyword_name
	.section	.text.sqlite3_keyword_count,"ax",@progbits
	.align	1
	.globl	sqlite3_keyword_count
	.type	sqlite3_keyword_count, @function
sqlite3_keyword_count:
	li	a0,140
	ret
	.size	sqlite3_keyword_count, .-sqlite3_keyword_count
	.section	.text.sqlite3_libversion,"ax",@progbits
	.align	1
	.globl	sqlite3_libversion
	.type	sqlite3_libversion, @function
sqlite3_libversion:
	la	a0,sqlite3_version
	ret
	.size	sqlite3_libversion, .-sqlite3_libversion
	.section	.text.sqlite3_libversion_number,"ax",@progbits
	.align	1
	.globl	sqlite3_libversion_number
	.type	sqlite3_libversion_number, @function
sqlite3_libversion_number:
	li	a0,3031040
	addi	a0,a0,-2040
	ret
	.size	sqlite3_libversion_number, .-sqlite3_libversion_number
	.section	.text.sqlite3_threadsafe,"ax",@progbits
	.align	1
	.globl	sqlite3_threadsafe
	.type	sqlite3_threadsafe, @function
sqlite3_threadsafe:
	li	a0,0
	ret
	.size	sqlite3_threadsafe, .-sqlite3_threadsafe
	.section	.text.sqlite3_db_mutex,"ax",@progbits
	.align	1
	.globl	sqlite3_db_mutex
	.type	sqlite3_db_mutex, @function
sqlite3_db_mutex:
	ld	a0,24(a0)
	ret
	.size	sqlite3_db_mutex, .-sqlite3_db_mutex
	.section	.text.sqlite3_db_release_memory,"ax",@progbits
	.align	1
	.globl	sqlite3_db_release_memory
	.type	sqlite3_db_release_memory, @function
sqlite3_db_release_memory:
	lw	a4,40(a0)
	ble	a4,zero,.L957
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s0,a0
	li	a5,0
.L940:
	ld	a3,32(s0)
	slli	a4,a5,5
	addiw	a5,a5,1
	add	a4,a3,a4
	ld	a4,8(a4)
	beq	a4,zero,.L941
	ld	a3,8(a4)
	ld	a4,0(a4)
	sd	a4,8(a3)
.L941:
	lw	a4,40(s0)
	blt	a5,a4,.L940
	ble	a4,zero,.L948
	li	s1,0
	lla	s2,.LANCHOR1
.L944:
	ld	a4,32(s0)
	slli	a5,s1,5
	addiw	s1,s1,1
	add	a5,a4,a5
	ld	a5,8(a5)
	beq	a5,zero,.L943
	ld	a4,8(a5)
	ld	a5,280(s2)
	ld	a4,0(a4)
	ld	a4,280(a4)
	ld	a0,64(a4)
	jalr	a5
.L943:
	lw	a5,40(s0)
	bgt	a5,s1,.L944
.L948:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L957:
	li	a0,0
	ret
	.size	sqlite3_db_release_memory, .-sqlite3_db_release_memory
	.section	.text.sqlite3_last_insert_rowid,"ax",@progbits
	.align	1
	.globl	sqlite3_last_insert_rowid
	.type	sqlite3_last_insert_rowid, @function
sqlite3_last_insert_rowid:
	ld	a0,56(a0)
	ret
	.size	sqlite3_last_insert_rowid, .-sqlite3_last_insert_rowid
	.section	.text.sqlite3_set_last_insert_rowid,"ax",@progbits
	.align	1
	.globl	sqlite3_set_last_insert_rowid
	.type	sqlite3_set_last_insert_rowid, @function
sqlite3_set_last_insert_rowid:
	sd	a1,56(a0)
	ret
	.size	sqlite3_set_last_insert_rowid, .-sqlite3_set_last_insert_rowid
	.section	.text.sqlite3_changes,"ax",@progbits
	.align	1
	.globl	sqlite3_changes
	.type	sqlite3_changes, @function
sqlite3_changes:
	lw	a0,116(a0)
	ret
	.size	sqlite3_changes, .-sqlite3_changes
	.section	.text.sqlite3_total_changes,"ax",@progbits
	.align	1
	.globl	sqlite3_total_changes
	.type	sqlite3_total_changes, @function
sqlite3_total_changes:
	lw	a0,120(a0)
	ret
	.size	sqlite3_total_changes, .-sqlite3_total_changes
	.section	.text.sqlite3InvokeBusyHandler,"ax",@progbits
	.align	1
	.type	sqlite3InvokeBusyHandler, @function
sqlite3InvokeBusyHandler:
	ld	a5,0(a0)
	beq	a5,zero,.L969
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	a2,a1
	lw	a1,16(a0)
	mv	s0,a0
	li	a0,0
	blt	a1,zero,.L965
	lbu	a4,20(s0)
	ld	a0,8(s0)
	beq	a4,zero,.L966
	jalr	a5
	bne	a0,zero,.L968
.L975:
	li	a5,-1
	sw	a5,16(s0)
.L965:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L966:
	jalr	a5
	beq	a0,zero,.L975
.L968:
	lw	a5,16(s0)
	addiw	a5,a5,1
	sw	a5,16(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L969:
	li	a0,0
	ret
	.size	sqlite3InvokeBusyHandler, .-sqlite3InvokeBusyHandler
	.section	.text.btreeInvokeBusyHandler,"ax",@progbits
	.align	1
	.type	btreeInvokeBusyHandler, @function
btreeInvokeBusyHandler:
	ld	a5,0(a0)
	ld	a0,8(a0)
	ld	a1,72(a5)
	addi	a0,a0,536
	tail	sqlite3InvokeBusyHandler
	.size	btreeInvokeBusyHandler, .-btreeInvokeBusyHandler
	.section	.text.sqlite3_busy_handler,"ax",@progbits
	.align	1
	.globl	sqlite3_busy_handler
	.type	sqlite3_busy_handler, @function
sqlite3_busy_handler:
	sd	a1,536(a0)
	sd	a2,544(a0)
	sw	zero,552(a0)
	sb	zero,556(a0)
	sw	zero,632(a0)
	li	a0,0
	ret
	.size	sqlite3_busy_handler, .-sqlite3_busy_handler
	.section	.text.sqlite3_progress_handler,"ax",@progbits
	.align	1
	.globl	sqlite3_progress_handler
	.type	sqlite3_progress_handler, @function
sqlite3_progress_handler:
	ble	a1,zero,.L979
	sd	a2,416(a0)
	sw	a1,432(a0)
	sd	a3,424(a0)
	ret
.L979:
	sd	zero,416(a0)
	sw	zero,432(a0)
	sd	zero,424(a0)
	ret
	.size	sqlite3_progress_handler, .-sqlite3_progress_handler
	.section	.text.sqlite3_interrupt,"ax",@progbits
	.align	1
	.globl	sqlite3_interrupt
	.type	sqlite3_interrupt, @function
sqlite3_interrupt:
	li	a5,1
	sw	a5,352(a0)
	ret
	.size	sqlite3_interrupt, .-sqlite3_interrupt
	.section	.text.sqlite3_commit_hook,"ax",@progbits
	.align	1
	.globl	sqlite3_commit_hook
	.type	sqlite3_commit_hook, @function
sqlite3_commit_hook:
	mv	a5,a0
	ld	a0,248(a0)
	sd	a1,256(a5)
	sd	a2,248(a5)
	ret
	.size	sqlite3_commit_hook, .-sqlite3_commit_hook
	.section	.text.sqlite3_update_hook,"ax",@progbits
	.align	1
	.globl	sqlite3_update_hook
	.type	sqlite3_update_hook, @function
sqlite3_update_hook:
	mv	a5,a0
	ld	a0,280(a0)
	sd	a1,288(a5)
	sd	a2,280(a5)
	ret
	.size	sqlite3_update_hook, .-sqlite3_update_hook
	.section	.text.sqlite3_rollback_hook,"ax",@progbits
	.align	1
	.globl	sqlite3_rollback_hook
	.type	sqlite3_rollback_hook, @function
sqlite3_rollback_hook:
	mv	a5,a0
	ld	a0,264(a0)
	sd	a1,272(a5)
	sd	a2,264(a5)
	ret
	.size	sqlite3_rollback_hook, .-sqlite3_rollback_hook
	.section	.text.sqlite3_wal_hook,"ax",@progbits
	.align	1
	.globl	sqlite3_wal_hook
	.type	sqlite3_wal_hook, @function
sqlite3_wal_hook:
	mv	a5,a0
	ld	a0,312(a0)
	sd	a1,304(a5)
	sd	a2,312(a5)
	ret
	.size	sqlite3_wal_hook, .-sqlite3_wal_hook
	.section	.text.sqlite3_system_errno,"ax",@progbits
	.align	1
	.globl	sqlite3_system_errno
	.type	sqlite3_system_errno, @function
sqlite3_system_errno:
	beq	a0,zero,.L988
	lw	a0,88(a0)
	ret
.L988:
	li	a0,0
	ret
	.size	sqlite3_system_errno, .-sqlite3_system_errno
	.section	.text.sqlite3_limit,"ax",@progbits
	.align	1
	.globl	sqlite3_limit
	.type	sqlite3_limit, @function
sqlite3_limit:
	li	a5,11
	bgtu	a1,a5,.L992
	slli	a1,a1,2
	add	a5,a0,a1
	lw	a0,124(a5)
	blt	a2,zero,.L990
	lla	a4,.LANCHOR2
	add	a1,a4,a1
	lw	a4,1704(a1)
	sext.w	a3,a4
	bgt	a3,a2,.L993
	sw	a4,124(a5)
	ret
.L992:
	li	a0,-1
.L990:
	ret
.L993:
	mv	a4,a2
	sw	a4,124(a5)
	ret
	.size	sqlite3_limit, .-sqlite3_limit
	.section	.text.sqlite3_collation_needed,"ax",@progbits
	.align	1
	.globl	sqlite3_collation_needed
	.type	sqlite3_collation_needed, @function
sqlite3_collation_needed:
	sd	a2,320(a0)
	sd	zero,328(a0)
	sd	a1,336(a0)
	li	a0,0
	ret
	.size	sqlite3_collation_needed, .-sqlite3_collation_needed
	.section	.text.sqlite3_get_autocommit,"ax",@progbits
	.align	1
	.globl	sqlite3_get_autocommit
	.type	sqlite3_get_autocommit, @function
sqlite3_get_autocommit:
	lbu	a0,95(a0)
	ret
	.size	sqlite3_get_autocommit, .-sqlite3_get_autocommit
	.section	.text.sqlite3_thread_cleanup,"ax",@progbits
	.align	1
	.globl	sqlite3_thread_cleanup
	.type	sqlite3_thread_cleanup, @function
sqlite3_thread_cleanup:
	ret
	.size	sqlite3_thread_cleanup, .-sqlite3_thread_cleanup
	.section	.text.sqlite3_extended_result_codes,"ax",@progbits
	.align	1
	.globl	sqlite3_extended_result_codes
	.type	sqlite3_extended_result_codes, @function
sqlite3_extended_result_codes:
	li	a5,-1
	bne	a1,zero,.L998
	li	a5,255
.L998:
	sw	a5,84(a0)
	li	a0,0
	ret
	.size	sqlite3_extended_result_codes, .-sqlite3_extended_result_codes
	.section	.text.sqlite3_test_control,"ax",@progbits
	.align	1
	.globl	sqlite3_test_control
	.type	sqlite3_test_control, @function
sqlite3_test_control:
	addi	sp,sp,-64
	sd	a1,8(sp)
	sd	a2,16(sp)
	sd	a3,24(sp)
	sd	a4,32(sp)
	sd	a5,40(sp)
	sd	a6,48(sp)
	sd	a7,56(sp)
	li	a0,0
	addi	sp,sp,64
	jr	ra
	.size	sqlite3_test_control, .-sqlite3_test_control
	.section	.text.sqlite3_compileoption_get,"ax",@progbits
	.align	1
	.globl	sqlite3_compileoption_get
	.type	sqlite3_compileoption_get, @function
sqlite3_compileoption_get:
	li	a5,18
	bgtu	a0,a5,.L1004
	lla	a5,.LANCHOR3
	slli	a0,a0,3
	add	a0,a5,a0
	ld	a0,0(a0)
	ret
.L1004:
	li	a0,0
	ret
	.size	sqlite3_compileoption_get, .-sqlite3_compileoption_get
	.section	.text.jsonParseFillInParentage,"ax",@progbits
	.align	1
	.type	jsonParseFillInParentage, @function
jsonParseFillInParentage:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	ld	a4,24(a0)
	slli	a5,a1,32
	ld	s1,8(a0)
	srli	a5,a5,32
	slli	a3,a5,2
	add	a4,a4,a3
	slli	a5,a5,4
	sw	a2,0(a4)
	add	s1,s1,a5
	lbu	a5,0(s1)
	li	a4,6
	mv	s2,a0
	mv	s0,a1
	beq	a5,a4,.L1006
	li	a4,7
	bne	a5,a4,.L1005
	lw	a5,4(s1)
	li	s3,1
	li	s4,5
	beq	a5,zero,.L1005
.L1008:
	ld	a5,24(s2)
	addw	a1,s0,s3
	slli	a4,a1,32
	srli	a4,a4,30
	add	a5,a5,a4
	sw	s0,0(a5)
	mv	a2,s0
	addiw	a1,a1,1
	mv	a0,s2
	call	jsonParseFillInParentage
	slli	a5,s3,32
	srli	a5,a5,32
	addi	a5,a5,1
	slli	a5,a5,4
	add	a5,s1,a5
	lbu	a3,0(a5)
	li	a4,2
	bleu	a3,s4,.L1012
	lw	a4,4(a5)
	addiw	a4,a4,2
.L1012:
	lw	a5,4(s1)
	addw	s3,s3,a4
	bgeu	a5,s3,.L1008
.L1005:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L1006:
	lw	a5,4(s1)
	beq	a5,zero,.L1005
	li	s3,1
	li	s4,5
.L1011:
	addw	a1,s0,s3
	mv	a2,s0
	mv	a0,s2
	call	jsonParseFillInParentage
	slli	a5,s3,32
	srli	a5,a5,28
	add	a5,s1,a5
	lbu	a3,0(a5)
	li	a4,1
	bleu	a3,s4,.L1010
	lw	a4,4(a5)
	addiw	a4,a4,1
.L1010:
	lw	a5,4(s1)
	addw	s3,a4,s3
	bgeu	a5,s3,.L1011
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
	.size	jsonParseFillInParentage, .-jsonParseFillInParentage
	.section	.text.jsonRemoveAllNulls,"ax",@progbits
	.align	1
	.type	jsonRemoveAllNulls, @function
jsonRemoveAllNulls:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	lw	s3,4(a0)
	li	a5,1
	ble	s3,a5,.L1023
	mv	s2,a0
	li	s1,2
	li	s4,7
	li	s5,5
.L1024:
	slli	s0,s1,4
	add	s0,s2,s0
	lbu	a5,0(s0)
	beq	a5,zero,.L1025
	mv	a0,s0
	bne	a5,s4,.L1027
	call	jsonRemoveAllNulls
	lbu	a5,0(s0)
.L1027:
	li	a4,1
	bleu	a5,s5,.L1028
	lw	a4,4(s0)
	addiw	a4,a4,1
.L1028:
	addiw	s1,s1,1
	addw	s1,s1,a4
	bge	s3,s1,.L1024
.L1023:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L1025:
	lbu	a5,1(s0)
	li	a4,1
	ori	a5,a5,4
	sb	a5,1(s0)
	j	.L1028
	.size	jsonRemoveAllNulls, .-jsonRemoveAllNulls
	.section	.text.jsonEachEof,"ax",@progbits
	.align	1
	.type	jsonEachEof, @function
jsonEachEof:
	lw	a5,16(a0)
	lw	a0,20(a0)
	sltu	a0,a5,a0
	xori	a0,a0,1
	sext.w	a0,a0
	ret
	.size	jsonEachEof, .-jsonEachEof
	.section	.text.jsonEachNext,"ax",@progbits
	.align	1
	.type	jsonEachNext, @function
jsonEachNext:
	lbu	a5,25(a0)
	beq	a5,zero,.L1037
	lw	a4,16(a0)
	ld	a2,56(a0)
	slli	a5,a4,32
	srli	a5,a5,28
	add	a5,a2,a5
	lbu	a3,1(a5)
	addiw	a5,a4,1
	andi	a3,a3,64
	beq	a3,zero,.L1038
	addiw	a3,a4,2
	mv	a4,a5
	mv	a5,a3
.L1038:
	lw	a3,8(a0)
	lw	a1,20(a0)
	sw	a5,16(a0)
	addiw	a3,a3,1
	sw	a3,8(a0)
	bleu	a1,a5,.L1040
	ld	a3,72(a0)
	slli	a5,a5,32
	srli	a5,a5,30
	add	a5,a3,a5
	lw	a3,0(a5)
	li	a1,6
	slli	a5,a3,32
	srli	a5,a5,28
	add	a2,a2,a5
	lbu	a5,0(a2)
	sb	a5,24(a0)
	beq	a5,a1,.L1057
.L1040:
	li	a0,0
	ret
.L1037:
	lbu	a5,24(a0)
	li	a4,6
	beq	a5,a4,.L1043
	li	a4,7
	bne	a5,a4,.L1058
	lw	a5,16(a0)
	ld	a4,56(a0)
	li	a2,5
	addiw	a5,a5,1
.L1056:
	slli	a3,a5,32
	srli	a3,a3,28
	add	a4,a4,a3
	lbu	a1,0(a4)
	li	a3,1
	bleu	a1,a2,.L1047
	lw	a3,4(a4)
	addiw	a3,a3,1
.L1047:
	lw	a4,8(a0)
	addw	a5,a5,a3
	sw	a5,16(a0)
	addiw	a5,a4,1
	sw	a5,8(a0)
	li	a0,0
	ret
.L1058:
	lw	a5,20(a0)
	sw	a5,16(a0)
	li	a0,0
	ret
.L1043:
	lw	a5,16(a0)
	ld	a4,56(a0)
	li	a2,5
	j	.L1056
.L1057:
	beq	a3,a4,.L1059
	lw	a5,8(a2)
	addiw	a5,a5,1
	sw	a5,8(a2)
	j	.L1040
.L1059:
	sw	zero,8(a2)
	j	.L1040
	.size	jsonEachNext, .-jsonEachNext
	.section	.text.jsonEachRowid,"ax",@progbits
	.align	1
	.type	jsonEachRowid, @function
jsonEachRowid:
	lwu	a5,8(a0)
	li	a0,0
	sd	a5,0(a1)
	ret
	.size	jsonEachRowid, .-jsonEachRowid
	.section	.text.jsonEachBestIndex,"ax",@progbits
	.align	1
	.type	jsonEachBestIndex, @function
jsonEachBestIndex:
	lw	a6,0(a1)
	li	a5,-1
	addi	sp,sp,-16
	sd	a5,8(sp)
	ld	a5,8(a1)
	ble	a6,zero,.L1062
	li	t3,0
	li	a0,0
	li	a4,0
	li	t1,7
	li	t4,1
	li	t5,2
	j	.L1065
.L1073:
	or	a0,a7,a0
.L1063:
	addiw	a4,a4,1
	addi	a5,a5,12
	beq	a4,a6,.L1072
.L1065:
	lw	a3,0(a5)
	addiw	a2,a3,-8
	ble	a3,t1,.L1063
	lbu	a3,5(a5)
	sllw	a7,t4,a2
	beq	a3,zero,.L1073
	lbu	a3,4(a5)
	bne	a3,t5,.L1063
	slli	a2,a2,2
	addi	a3,sp,16
	add	a2,a3,a2
	sw	a4,-8(a2)
	addiw	a4,a4,1
	or	t3,a7,t3
	addi	a5,a5,12
	bne	a4,a6,.L1065
.L1072:
	not	t3,t3
	and	a0,t3,a0
	bne	a0,zero,.L1069
	lw	a5,8(sp)
	blt	a5,zero,.L1062
	ld	a3,32(a1)
	li	a4,1
	slli	a5,a5,3
	add	a3,a3,a5
	sd	a4,64(a1)
	sw	a4,0(a3)
	ld	a2,32(a1)
	lw	a3,12(sp)
	add	a5,a2,a5
	sb	a4,4(a5)
	blt	a3,zero,.L1074
	ld	a5,32(a1)
	slli	a3,a3,3
	li	a2,2
	add	a5,a5,a3
	sw	a2,0(a5)
	ld	a5,32(a1)
	add	a3,a5,a3
	sb	a4,4(a3)
	li	a5,3
	sw	a5,40(a1)
	addi	sp,sp,16
	jr	ra
.L1062:
	sw	zero,40(a1)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L1069:
	li	a0,19
	addi	sp,sp,16
	jr	ra
.L1074:
	sw	a4,40(a1)
	addi	sp,sp,16
	jr	ra
	.size	jsonEachBestIndex, .-jsonEachBestIndex
	.section	.text.readInt64,"ax",@progbits
	.align	1
	.type	readInt64, @function
readInt64:
	lbu	a4,0(a0)
	lbu	a5,1(a0)
	lbu	a6,7(a0)
	lbu	a1,2(a0)
	lbu	a2,3(a0)
	slli	a4,a4,56
	slli	a5,a5,48
	lbu	a3,4(a0)
	add	a5,a4,a5
	add	a5,a5,a6
	lbu	a4,5(a0)
	slli	a1,a1,40
	lbu	a0,6(a0)
	add	a5,a5,a1
	slli	a2,a2,32
	add	a5,a5,a2
	slli	a3,a3,24
	add	a5,a5,a3
	slli	a4,a4,16
	add	a5,a5,a4
	slli	a0,a0,8
	add	a0,a5,a0
	ret
	.size	readInt64, .-readInt64
	.section	.text.nodeGetCell,"ax",@progbits
	.align	1
	.type	nodeGetCell, @function
nodeGetCell:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s0,a0
	lbu	a0,39(a0)
	ld	a5,24(a1)
	mv	s1,a2
	mulw	a0,a0,a2
	mv	s2,a3
	mv	s3,a1
	addiw	a0,a0,4
	add	a0,a5,a0
	call	readInt64
	sd	a0,0(s2)
	lbu	a4,39(s0)
	ld	a5,24(s3)
	addi	a7,s2,8
	mulw	a4,a4,s1
	li	a2,0
	addiw	a4,a4,12
	add	a5,a5,a4
.L1077:
	lbu	a4,0(a5)
	lbu	a3,1(a5)
	lbu	a0,3(a5)
	lbu	a1,2(a5)
	slliw	a3,a3,16
	slliw	a4,a4,24
	addw	a4,a4,a3
	addw	a4,a4,a0
	slli	a3,a2,2
	slliw	a1,a1,8
	addw	a4,a4,a1
	add	a3,a7,a3
	sw	a4,0(a3)
	lbu	a4,4(a5)
	lbu	a6,5(a5)
	lbu	a0,7(a5)
	lbu	a1,6(a5)
	slliw	a4,a4,24
	slliw	a6,a6,16
	addw	a4,a4,a6
	addw	a4,a4,a0
	slliw	a1,a1,8
	addw	a4,a4,a1
	sw	a4,4(a3)
	lbu	a4,37(s0)
	addiw	a2,a2,2
	addi	a5,a5,8
	bgt	a4,a2,.L1077
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	nodeGetCell, .-nodeGetCell
	.section	.text.rtreeEof,"ax",@progbits
	.align	1
	.type	rtreeEof, @function
rtreeEof:
	lbu	a0,8(a0)
	ret
	.size	rtreeEof, .-rtreeEof
	.section	.text.rtreeBeginTransaction,"ax",@progbits
	.align	1
	.type	rtreeBeginTransaction, @function
rtreeBeginTransaction:
	lbu	a4,40(a0)
	mv	a5,a0
	li	a0,0
	addiw	a4,a4,1
	sb	a4,40(a5)
	ret
	.size	rtreeBeginTransaction, .-rtreeBeginTransaction
	.section	.rodata.str1.8
	.align	3
.LC10:
	.string	"2019-07-10 17:32:03 fc82b73eaac8b36950e527f12c4b5dc1e147e6f4ad2217ae43ad82882a88alt2"
	.section	.text.sqlite3_sourceid,"ax",@progbits
	.align	1
	.globl	sqlite3_sourceid
	.type	sqlite3_sourceid, @function
sqlite3_sourceid:
	lla	a0,.LC10
	ret
	.size	sqlite3_sourceid, .-sqlite3_sourceid
	.section	.text.pcacheFetchFinishWithInit,"ax",@progbits
	.align	1
	.type	pcacheFetchFinishWithInit, @function
pcacheFetchFinishWithInit:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	ld	s0,8(a2)
	mv	s1,a2
	mv	s2,a0
	mv	s3,a1
	li	a2,40
	li	a1,0
	addi	a0,s0,32
	call	memset@plt
	sd	s1,0(s0)
	ld	a4,0(s1)
	addi	a5,s0,72
	sd	a5,16(s0)
	li	a5,1
	sd	a4,8(s0)
	sb	zero,72(s0)
	sb	zero,73(s0)
	sb	zero,74(s0)
	sb	zero,75(s0)
	sb	zero,76(s0)
	sb	zero,77(s0)
	sb	zero,78(s0)
	sb	zero,79(s0)
	sd	s2,24(s0)
	sw	s3,48(s0)
	sh	a5,52(s0)
	ld	s0,32(sp)
	ld	ra,40(sp)
	mv	a2,s1
	mv	a1,s3
	ld	s1,24(sp)
	ld	s3,8(sp)
	mv	a0,s2
	ld	s2,16(sp)
	addi	sp,sp,48
	tail	sqlite3PcacheFetchFinish
	.size	pcacheFetchFinishWithInit, .-pcacheFetchFinishWithInit
	.section	.text.sqlite3PcacheFetchFinish,"ax",@progbits
	.align	1
	.type	sqlite3PcacheFetchFinish, @function
sqlite3PcacheFetchFinish:
	ld	a4,8(a2)
	mv	a5,a0
	ld	a3,0(a4)
	beq	a3,zero,.L1087
	lw	a3,24(a0)
	mv	a0,a4
	addiw	a3,a3,1
	sw	a3,24(a5)
	lhu	a5,54(a4)
	addiw	a5,a5,1
	sh	a5,54(a4)
	ret
.L1087:
	tail	pcacheFetchFinishWithInit
	.size	sqlite3PcacheFetchFinish, .-sqlite3PcacheFetchFinish
	.section	.text.pcacheSortDirtyList,"ax",@progbits
	.align	1
	.type	pcacheSortDirtyList, @function
pcacheSortDirtyList:
	addi	sp,sp,-352
	addi	t3,sp,80
	sd	s0,336(sp)
	li	a2,256
	mv	s0,a0
	li	a1,0
	mv	a0,t3
	sd	ra,344(sp)
	call	memset@plt
	beq	s0,zero,.L1109
	mv	t3,a0
	addi	a7,sp,8
	li	a0,0
	li	t1,31
.L1100:
	mv	a5,s0
	ld	s0,32(s0)
	sd	zero,32(a5)
	mv	a1,t3
	li	a6,0
	beq	a0,zero,.L1123
.L1110:
	mv	a4,a7
.L1090:
	lw	a2,48(a0)
	lw	a3,48(a5)
	bgeu	a2,a3,.L1092
.L1125:
	sd	a0,32(a4)
	ld	a3,32(a0)
	mv	a4,a0
	beq	a3,zero,.L1124
	mv	a0,a3
	lw	a2,48(a0)
	lw	a3,48(a5)
	bltu	a2,a3,.L1125
.L1092:
	sd	a5,32(a4)
	ld	a3,32(a5)
	mv	a4,a5
	beq	a3,zero,.L1126
	mv	a5,a3
	j	.L1090
.L1124:
	sd	a5,32(a0)
	sd	zero,0(a1)
	addiw	a6,a6,1
	ld	a5,40(sp)
	addi	a1,a1,8
	beq	a6,t1,.L1095
.L1127:
	ld	a0,0(a1)
	bne	a0,zero,.L1110
.L1123:
	slli	a4,a6,3
	addi	a3,sp,336
	add	a4,a3,a4
	sd	a5,-256(a4)
.L1091:
	ld	a0,80(sp)
	bne	s0,zero,.L1100
	ld	s0,88(sp)
.L1089:
	addi	a2,sp,96
	addi	a1,sp,336
	addi	a6,sp,8
.L1107:
	beq	s0,zero,.L1101
	bne	a0,zero,.L1115
	mv	a0,s0
.L1101:
	beq	a1,a2,.L1088
.L1134:
	ld	s0,0(a2)
	addi	a2,a2,8
	j	.L1107
.L1126:
	sd	a0,32(a5)
	sd	zero,0(a1)
	addiw	a6,a6,1
	ld	a5,40(sp)
	addi	a1,a1,8
	bne	a6,t1,.L1127
.L1095:
	ld	a4,328(sp)
	mv	a3,a7
.L1108:
	lw	a1,48(a4)
	lw	a2,48(a5)
	bgeu	a1,a2,.L1097
.L1129:
	sd	a4,32(a3)
	ld	a2,32(a4)
	mv	a3,a4
	beq	a2,zero,.L1128
	mv	a4,a2
	lw	a1,48(a4)
	lw	a2,48(a5)
	bltu	a1,a2,.L1129
.L1097:
	sd	a5,32(a3)
	ld	a2,32(a5)
	mv	a3,a5
	beq	a2,zero,.L1130
	mv	a5,a2
	j	.L1108
.L1115:
	mv	a5,a6
.L1102:
	lw	a3,48(a0)
	lw	a4,48(s0)
	bgeu	a3,a4,.L1103
.L1132:
	sd	a0,32(a5)
	ld	a4,32(a0)
	mv	a5,a0
	beq	a4,zero,.L1131
	mv	a0,a4
	lw	a3,48(a0)
	lw	a4,48(s0)
	bltu	a3,a4,.L1132
.L1103:
	sd	s0,32(a5)
	ld	a4,32(s0)
	mv	a5,s0
	beq	a4,zero,.L1133
	mv	s0,a4
	j	.L1102
.L1131:
	sd	s0,32(a0)
	ld	a0,40(sp)
.L1135:
	bne	a1,a2,.L1134
.L1088:
	ld	ra,344(sp)
	ld	s0,336(sp)
	addi	sp,sp,352
	jr	ra
.L1133:
	sd	a0,32(s0)
	ld	a0,40(sp)
	j	.L1135
.L1128:
	sd	a5,32(a4)
.L1099:
	ld	a5,40(sp)
	sd	a5,328(sp)
	j	.L1091
.L1130:
	sd	a4,32(a5)
	j	.L1099
.L1109:
	li	a0,0
	j	.L1089
	.size	pcacheSortDirtyList, .-pcacheSortDirtyList
	.section	.text.pager_truncate,"ax",@progbits
	.align	1
	.type	pager_truncate, @function
pager_truncate:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	ra,56(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	mv	s0,a0
	ld	a0,72(a0)
	li	s1,0
	ld	a4,0(a0)
	beq	a4,zero,.L1137
	lbu	a5,20(s0)
	li	a3,2
	li	s1,0
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	bleu	a5,a3,.L1137
	ld	a5,48(a4)
	mv	s3,a1
	addi	a1,sp,8
	lw	s4,188(s0)
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L1137
	slli	s2,s3,32
	srli	s2,s2,32
	mul	s2,s2,s4
	ld	a5,8(sp)
	beq	a5,s2,.L1137
	ble	a5,s2,.L1139
	ld	a0,72(s0)
	mv	a1,s2
	ld	a5,0(a0)
	ld	a5,32(a5)
	jalr	a5
.L1140:
	beq	a0,zero,.L1142
	mv	s1,a0
.L1137:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	mv	a0,s1
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
.L1139:
	add	a5,s4,a5
	ble	a5,s2,.L1141
.L1142:
	sw	s3,36(s0)
	j	.L1137
.L1141:
	ld	a5,272(s0)
	mv	a2,s4
	li	a1,0
	mv	a0,a5
	call	memset@plt
	mv	a5,a0
	ld	a0,72(s0)
	mv	a1,a5
	sub	a3,s2,s4
	ld	a4,0(a0)
	mv	a2,s4
	ld	a5,24(a4)
	jalr	a5
	j	.L1140
	.size	pager_truncate, .-pager_truncate
	.section	.text.rowSetEntrySort,"ax",@progbits
	.align	1
	.type	rowSetEntrySort, @function
rowSetEntrySort:
	addi	sp,sp,-368
	addi	t1,sp,32
	sd	s0,352(sp)
	li	a2,320
	mv	s0,a0
	li	a1,0
	mv	a0,t1
	sd	ra,360(sp)
	call	memset@plt
	beq	s0,zero,.L1168
	ld	a7,8(s0)
	li	a5,0
	sd	zero,8(s0)
	mv	t1,a0
	addi	a6,sp,8
	beq	a5,zero,.L1169
.L1181:
	mv	a1,t1
	li	a0,0
.L1152:
	mv	a2,a6
.L1157:
	ld	a3,0(a5)
	ld	a4,0(s0)
	bgt	a3,a4,.L1153
	bge	a3,a4,.L1154
	sd	a5,8(a2)
	mv	a2,a5
.L1154:
	ld	a5,8(a5)
	bne	a5,zero,.L1157
	sd	s0,8(a2)
.L1156:
	ld	a5,8(a1)
	sd	zero,0(a1)
	ld	s0,16(sp)
	addi	a1,a1,8
	addiw	a0,a0,1
	bne	a5,zero,.L1152
	slli	a5,a0,32
	srli	a5,a5,29
	addi	a4,sp,352
	add	a5,a4,a5
	sd	s0,-320(a5)
	beq	a7,zero,.L1180
.L1158:
	ld	a5,32(sp)
	mv	s0,a7
	ld	a7,8(s0)
	sd	zero,8(s0)
	bne	a5,zero,.L1181
.L1169:
	li	a0,0
	slli	a5,a0,32
	srli	a5,a5,29
	addi	a4,sp,352
	add	a5,a4,a5
	sd	s0,-320(a5)
	bne	a7,zero,.L1158
.L1180:
	ld	a0,32(sp)
	ld	s0,40(sp)
.L1150:
	addi	a2,sp,48
	addi	a1,sp,352
	addi	a6,sp,8
.L1167:
	beq	s0,zero,.L1160
	bne	a0,zero,.L1171
	mv	a0,s0
.L1160:
	beq	a2,a1,.L1149
.L1183:
	ld	s0,0(a2)
	addi	a2,a2,8
	j	.L1167
.L1153:
	sd	s0,8(a2)
	ld	a4,8(s0)
	mv	a2,s0
	beq	a4,zero,.L1182
	mv	s0,a4
	j	.L1157
.L1182:
	sd	a5,8(s0)
	j	.L1156
.L1171:
	mv	a3,a6
.L1161:
	ld	a4,0(a0)
	ld	a5,0(s0)
	bgt	a4,a5,.L1162
	bge	a4,a5,.L1163
	sd	a0,8(a3)
	mv	a3,a0
.L1163:
	ld	a0,8(a0)
	bne	a0,zero,.L1161
	sd	s0,8(a3)
	ld	a0,16(sp)
.L1185:
	bne	a2,a1,.L1183
.L1149:
	ld	ra,360(sp)
	ld	s0,352(sp)
	addi	sp,sp,368
	jr	ra
.L1162:
	sd	s0,8(a3)
	ld	a5,8(s0)
	mv	a3,s0
	beq	a5,zero,.L1184
	mv	s0,a5
	j	.L1161
.L1184:
	sd	a0,8(s0)
	ld	a0,16(sp)
	j	.L1185
.L1168:
	li	a0,0
	j	.L1150
	.size	rowSetEntrySort, .-rowSetEntrySort
	.section	.text.pcache1Shutdown,"ax",@progbits
	.align	1
	.type	pcache1Shutdown, @function
pcache1Shutdown:
	li	a2,144
	li	a1,0
	lla	a0,.LANCHOR0+240
	tail	memset@plt
	.size	pcache1Shutdown, .-pcache1Shutdown
	.section	.text.pcache1Init,"ax",@progbits
	.align	1
	.type	pcache1Init, @function
pcache1Init:
	addi	sp,sp,-16
	li	a2,144
	li	a1,0
	lla	a0,.LANCHOR0+240
	sd	ra,8(sp)
	call	memset@plt
	lla	a3,.LANCHOR1
	ld	a4,328(a3)
	lla	a5,.LANCHOR0
	seqz	a2,a4
	sw	a2,324(a5)
	bne	a4,zero,.L1188
	lw	a4,340(a3)
	beq	a4,zero,.L1188
	sw	a4,328(a5)
.L1188:
	li	a4,10
	sw	a4,256(a5)
	li	a4,1
	sw	a4,320(a5)
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	pcache1Init, .-pcache1Init
	.section	.text.memjrnlRead,"ax",@progbits
	.align	1
	.type	memjrnlRead, @function
memjrnlRead:
	addi	sp,sp,-80
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	ld	a5,48(a0)
	lw	s4,8(a0)
	mv	s5,a0
	mv	s6,a3
	mv	s8,a1
	mv	s7,a2
	beq	a5,a3,.L1216
.L1194:
	ld	s2,24(s5)
	beq	s2,zero,.L1196
	blt	s6,s4,.L1196
	mv	a5,s4
	j	.L1197
.L1217:
	blt	s6,a5,.L1196
.L1197:
	ld	s2,0(s2)
	add	a5,a5,s4
	bne	s2,zero,.L1217
.L1196:
	rem	a5,s6,s4
	mv	s3,s7
	sext.w	s1,a5
	j	.L1202
.L1218:
	ld	s2,0(s2)
	li	s1,0
	beq	s2,zero,.L1204
	beq	s3,zero,.L1201
	lw	s4,8(s5)
.L1202:
	addi	a1,s2,8
	subw	a5,s4,s1
	add	a1,a1,s1
	mv	a0,s8
	mv	a2,a5
	ble	a5,s3,.L1198
	mv	a2,s3
.L1198:
	sext.w	s0,a2
	subw	s1,s1,s4
	mv	a2,s0
	addw	s3,s1,s3
	call	memcpy@plt
	add	s8,s8,s0
	bge	s3,zero,.L1218
	beq	s2,zero,.L1204
.L1201:
	add	s6,s7,s6
.L1200:
	sd	s6,48(s5)
	sd	s2,56(s5)
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	li	a0,0
	addi	sp,sp,80
	jr	ra
.L1216:
	beq	a3,zero,.L1194
	ld	s2,56(a0)
	j	.L1196
.L1204:
	li	s6,0
	j	.L1200
	.size	memjrnlRead, .-memjrnlRead
	.section	.text.walEncodeFrame,"ax",@progbits
	.align	1
	.type	walEncodeFrame, @function
walEncodeFrame:
	srli	a5,a1,8
	srli	a7,a2,8
	addi	sp,sp,-48
	slli	a6,a1,8
	andi	t1,a5,255
	andi	a7,a7,255
	slli	a5,a2,8
	sd	s0,32(sp)
	sd	s1,24(sp)
	mv	s0,a4
	sd	ra,40(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	srliw	t3,a1,24
	srliw	a4,a2,24
	or	a5,a5,a7
	srliw	a1,a1,16
	or	a6,a6,t1
	srliw	a2,a2,16
	sb	t3,0(s0)
	sb	a1,1(s0)
	sh	a6,2(s0)
	sb	a4,4(s0)
	sb	a2,5(s0)
	sh	a5,6(s0)
	lw	a5,124(a0)
	mv	s1,a0
	addi	a0,s0,8
	bne	a5,zero,.L1220
	lbu	t1,104(s1)
	lbu	a5,111(s1)
	lbu	a7,105(s1)
	lbu	a6,106(s1)
	lbu	a1,107(s1)
	lbu	a2,108(s1)
	lbu	a4,110(s1)
	mv	s2,a3
	lbu	a3,109(s1)
	sb	t1,8(s0)
	sb	a5,7(a0)
	sb	a7,1(a0)
	sb	a6,2(a0)
	sb	a1,3(a0)
	sb	a2,4(a0)
	sb	a3,5(a0)
	sb	a4,6(a0)
	lbu	s3,85(s1)
	addi	s4,s1,96
	mv	a1,s0
	seqz	s3,s3
	mv	a0,s3
	mv	a4,s4
	mv	a3,s4
	li	a2,8
	call	walChecksumBytes
	lw	a2,56(s1)
	mv	a4,s4
	mv	a3,s4
	mv	a1,s2
	mv	a0,s3
	call	walChecksumBytes
	lhu	a5,96(s1)
	lw	a4,96(s1)
	srli	a3,a5,8
	andi	a3,a3,255
	slliw	a5,a5,8
	or	a5,a5,a3
	srliw	a3,a4,24
	srliw	a4,a4,16
	sb	a3,16(s0)
	sb	a4,17(s0)
	sh	a5,18(s0)
	lhu	a5,100(s1)
	lw	a4,100(s1)
	srli	a3,a5,8
	andi	a3,a3,255
	slliw	a5,a5,8
	or	a5,a5,a3
	srliw	a3,a4,24
	srliw	a4,a4,16
	sb	a3,20(s0)
	sb	a4,21(s0)
	sh	a5,22(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L1220:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a2,16
	li	a1,0
	addi	sp,sp,48
	tail	memset@plt
	.size	walEncodeFrame, .-walEncodeFrame
	.section	.text.walMerge,"ax",@progbits
	.align	1
	.type	walMerge, @function
walMerge:
	lw	t6,0(a4)
	ld	t0,0(a3)
	mv	t5,a0
	li	a6,0
	mv	a0,a1
	li	t4,0
	mv	a1,a5
	li	t3,0
.L1225:
	blt	t4,t6,.L1229
.L1233:
	bge	t3,a2,.L1230
	slli	a7,t3,1
	add	a7,a0,a7
	lhu	t1,0(a7)
	slli	a7,t1,2
	add	a7,t5,a7
	lw	a5,0(a7)
.L1231:
	addiw	t3,t3,1
.L1227:
	slli	a7,a6,1
	add	a7,a1,a7
	sh	t1,0(a7)
	addiw	a6,a6,1
	bge	t3,a2,.L1225
	slli	a7,t3,1
	add	a7,a0,a7
	lhu	a7,0(a7)
	slli	a7,a7,2
	add	a7,t5,a7
	lw	a7,0(a7)
	bne	a7,a5,.L1225
	addiw	t3,t3,1
	bge	t4,t6,.L1233
.L1229:
	slli	a7,t4,1
	add	a7,t0,a7
	lhu	t1,0(a7)
	slli	a7,t1,2
	add	a7,t5,a7
	lw	a5,0(a7)
	blt	t3,a2,.L1234
.L1226:
	addiw	t4,t4,1
	j	.L1227
.L1234:
	slli	a7,t3,1
	add	a7,a0,a7
	lhu	t2,0(a7)
	slli	a7,t2,2
	add	a7,t5,a7
	lw	a7,0(a7)
	bgeu	a7,a5,.L1226
	mv	a5,a7
	mv	t1,t2
	j	.L1231
.L1230:
	sd	a0,0(a3)
	sw	a6,0(a4)
	slli	a2,a6,1
	tail	memcpy@plt
	.size	walMerge, .-walMerge
	.section	.text.exprNodeCopy,"ax",@progbits
	.align	1
	.type	exprNodeCopy, @function
exprNodeCopy:
	sd	zero,0(a0)
	sd	zero,8(a0)
	sd	zero,16(a0)
	sd	zero,24(a0)
	sd	zero,32(a0)
	sd	zero,40(a0)
	sd	zero,48(a0)
	sd	zero,56(a0)
	sd	zero,64(a0)
	lw	a5,4(a1)
	li	a2,16
	slli	a4,a5,49
	blt	a4,zero,.L1236
	slli	a4,a5,50
	li	a2,72
	blt	a4,zero,.L1240
.L1236:
	tail	memcpy@plt
.L1240:
	li	a2,44
	tail	memcpy@plt
	.size	exprNodeCopy, .-exprNodeCopy
	.section	.text.sqlite3VdbeSerialGet,"ax",@progbits
	.align	1
	.type	sqlite3VdbeSerialGet, @function
sqlite3VdbeSerialGet:
	li	a5,11
	bgtu	a1,a5,.L1242
	lla	a3,.L1244
	slli	a4,a1,2
	add	a4,a4,a3
	lw	a5,0(a4)
	add	a5,a5,a3
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1244:
	.word	.L1243-.L1244
	.word	.L1252-.L1244
	.word	.L1251-.L1244
	.word	.L1250-.L1244
	.word	.L1249-.L1244
	.word	.L1248-.L1244
	.word	.L1247-.L1244
	.word	.L1247-.L1244
	.word	.L1246-.L1244
	.word	.L1246-.L1244
	.word	.L1245-.L1244
	.word	.L1243-.L1244
	.section	.text.sqlite3VdbeSerialGet
.L1246:
	addiw	a1,a1,-8
	slli	a1,a1,32
	srli	a1,a1,32
	li	a5,4
	sd	a1,0(a2)
	sh	a5,8(a2)
	li	a0,0
	ret
.L1243:
	li	a5,1
	sh	a5,8(a2)
	li	a0,0
	ret
.L1247:
	lbu	a4,4(a0)
	lbu	a5,0(a0)
	lbu	t3,7(a0)
	lbu	a7,5(a0)
	lbu	t4,3(a0)
	lbu	a3,6(a0)
	lbu	t1,1(a0)
	lbu	a6,2(a0)
	slliw	a4,a4,24
	slliw	a5,a5,24
	or	a4,a4,t3
	slliw	a7,a7,16
	slliw	a0,t1,16
	or	a5,a5,t4
	or	a4,a4,a7
	slliw	a3,a3,8
	or	a5,a5,a0
	or	a4,a4,a3
	slliw	a0,a6,8
	or	a5,a5,a0
	slli	a4,a4,32
	srli	a4,a4,32
	slli	a5,a5,32
	add	a5,a5,a4
	addi	sp,sp,-16
	sd	a5,8(sp)
	li	a4,6
	bne	a1,a4,.L1254
	sd	a5,0(a2)
	li	a5,4
	sh	a5,8(a2)
.L1255:
	li	a0,8
	addi	sp,sp,16
	jr	ra
.L1245:
	li	a5,16384
	addi	a5,a5,1
	sh	a5,8(a2)
	sw	zero,12(a2)
	sw	zero,0(a2)
	li	a0,0
	ret
.L1252:
	lb	a5,0(a0)
	li	a4,4
	sh	a4,8(a2)
	sd	a5,0(a2)
	mv	a0,a1
	ret
.L1251:
	lb	a5,0(a0)
	lbu	a4,1(a0)
	mv	a0,a1
	slliw	a5,a5,8
	or	a5,a4,a5
	sext.w	a5,a5
	sd	a5,0(a2)
	li	a5,4
	sh	a5,8(a2)
	ret
.L1250:
	lbu	a3,2(a0)
	lbu	a5,1(a0)
	lb	a4,0(a0)
	slli	a3,a3,8
	or	a5,a3,a5
	slli	a5,a5,8
	srli	a3,a3,8
	or	a5,a5,a3
	slliw	a5,a5,16
	slliw	a4,a4,16
	srliw	a5,a5,16
	or	a5,a4,a5
	sext.w	a5,a5
	sd	a5,0(a2)
	li	a5,4
	sh	a5,8(a2)
	mv	a0,a1
	ret
.L1249:
	lbu	a5,1(a0)
	lbu	a3,2(a0)
	lbu	a6,3(a0)
	lb	a4,0(a0)
	slliw	a3,a3,8
	slliw	a5,a5,16
	or	a5,a5,a3
	or	a5,a5,a6
	slliw	a4,a4,24
	or	a5,a4,a5
	sext.w	a5,a5
	sd	a5,0(a2)
	li	a5,4
	sh	a5,8(a2)
	mv	a0,a1
	ret
.L1248:
	lbu	a5,2(a0)
	lbu	a6,5(a0)
	lbu	a1,3(a0)
	lbu	a3,4(a0)
	lb	a4,0(a0)
	slliw	a5,a5,24
	lbu	a0,1(a0)
	or	a5,a5,a6
	slliw	a1,a1,16
	or	a5,a5,a1
	slliw	a3,a3,8
	or	a5,a5,a3
	slliw	a4,a4,8
	or	a4,a4,a0
	slli	a5,a5,32
	slli	a4,a4,32
	srli	a5,a5,32
	add	a5,a5,a4
	sd	a5,0(a2)
	li	a5,4
	sh	a5,8(a2)
	li	a0,6
	ret
.L1242:
	andi	a5,a1,1
	slli	a4,a5,1
	lla	a5,.LANCHOR2
	add	a5,a5,a4
	lhu	a5,1752(a5)
	addiw	a1,a1,-12
	srliw	a4,a1,1
	sd	a0,16(a2)
	sw	a4,12(a2)
	srliw	a0,a1,1
	sh	a5,8(a2)
	ret
.L1254:
	lbu	a5,8(sp)
	sb	a5,0(a2)
	lbu	a5,9(sp)
	sb	a5,1(a2)
	lbu	a5,10(sp)
	sb	a5,2(a2)
	lbu	a5,11(sp)
	sb	a5,3(a2)
	lbu	a5,12(sp)
	sb	a5,4(a2)
	lbu	a5,13(sp)
	sb	a5,5(a2)
	lbu	a5,14(sp)
	sb	a5,6(a2)
	lbu	a5,15(sp)
	sb	a5,7(a2)
	li	a5,8
	sh	a5,8(a2)
	j	.L1255
	.size	sqlite3VdbeSerialGet, .-sqlite3VdbeSerialGet
	.section	.text.sqlite3DefaultRowEst,"ax",@progbits
	.align	1
	.type	sqlite3DefaultRowEst, @function
sqlite3DefaultRowEst:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	lla	a5,.LANCHOR2
	ld	a4,1760(a5)
	lhu	a2,94(a0)
	lhu	a5,1768(a5)
	sd	a4,0(sp)
	slli	a4,a2,48
	sh	a5,8(sp)
	srli	a4,a4,48
	li	a5,5
	ld	s2,16(a0)
	mv	s1,a0
	bleu	a4,a5,.L1261
	li	a2,5
.L1261:
	ld	a5,24(s1)
	slli	a2,a2,48
	srli	a2,a2,48
	lh	a5,72(a5)
	sext.w	s0,a2
	sh	a5,0(s2)
	ld	a4,72(s1)
	beq	a4,zero,.L1262
	addiw	a5,a5,-10
	slliw	a5,a5,16
	sraiw	a5,a5,16
.L1262:
	li	a3,33
	mv	a4,a5
	bge	a5,a3,.L1263
	li	a4,33
.L1263:
	sh	a4,0(s2)
	slli	a2,a2,1
	mv	a1,sp
	addi	a0,s2,2
	call	memcpy@plt
	lhu	a3,94(s1)
	addi	a5,s0,1
	bgt	a5,a3,.L1264
	slli	a4,a5,1
	add	a4,s2,a4
	li	a2,23
.L1265:
	sh	a2,0(a4)
	lhu	a3,94(s1)
	addiw	a5,a5,1
	addi	a4,a4,2
	bge	a3,a5,.L1265
.L1264:
	lbu	a5,98(s1)
	beq	a5,zero,.L1260
	slli	a3,a3,1
	add	a3,s2,a3
	sh	zero,0(a3)
.L1260:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3DefaultRowEst, .-sqlite3DefaultRowEst
	.section	.text.sqlite3GetInt32,"ax",@progbits
	.align	1
	.type	sqlite3GetInt32, @function
sqlite3GetInt32:
	lbu	a5,0(a0)
	li	a4,45
	mv	a6,a0
	beq	a5,a4,.L1320
	li	a4,43
	beq	a5,a4,.L1321
	li	a4,48
	beq	a5,a4,.L1322
	lla	a4,.LANCHOR2
	add	a4,a4,a5
	lbu	a4,64(a4)
	li	a0,0
	li	a7,0
	andi	a4,a4,4
	bne	a4,zero,.L1290
	ret
.L1321:
	addi	a6,a0,1
	li	a7,0
.L1277:
	lbu	a5,0(a6)
	lla	a4,.LANCHOR2
	add	a4,a4,a5
	lbu	a4,64(a4)
	andi	a4,a4,4
	beq	a4,zero,.L1299
	li	a4,48
	bne	a5,a4,.L1290
.L1280:
	li	a4,48
.L1289:
	lbu	a5,1(a6)
	addi	a6,a6,1
	beq	a5,a4,.L1289
.L1290:
	addi	a3,a6,1
	li	a2,0
	addi	a6,a6,11
	li	a0,9
	j	.L1291
.L1324:
	lbu	a5,0(a3)
	addi	a3,a3,1
.L1291:
	slli	a4,a2,2
	add	a4,a4,a2
	addiw	a5,a5,-48
	slli	a4,a4,1
	bgtu	a5,a0,.L1323
	add	a2,a5,a4
	bne	a6,a3,.L1324
.L1299:
	li	a0,0
	ret
.L1323:
	li	a5,-2147483648
	sub	a4,a2,a7
	xori	a5,a5,-1
	li	a0,0
	bgt	a4,a5,.L1325
	beq	a7,zero,.L1294
	neg	a2,a2
.L1294:
	sw	a2,0(a1)
	li	a0,1
	ret
.L1320:
	addi	a6,a0,1
	li	a7,1
	j	.L1277
.L1325:
	ret
.L1322:
	lbu	a4,1(a0)
	li	a3,88
	li	a7,0
	andi	a4,a4,223
	bne	a4,a3,.L1280
	lbu	a2,2(a0)
	lla	t1,.LANCHOR2
	add	a4,t1,a2
	lbu	a3,64(a4)
	sext.w	a4,a2
	andi	a3,a3,8
	beq	a3,zero,.L1280
	addi	sp,sp,-16
	sw	zero,12(sp)
	addi	a6,a0,2
	bne	a2,a5,.L1281
	li	a5,48
.L1282:
	lbu	a4,1(a6)
	addi	a6,a6,1
	beq	a4,a5,.L1282
	add	a5,t1,a4
	lbu	a5,64(a5)
	sext.w	a4,a4
	andi	a5,a5,8
	beq	a5,zero,.L1283
.L1281:
	addi	a0,a6,1
	li	a2,0
	addi	a6,a6,9
.L1285:
	sraiw	a5,a4,6
	andi	a3,a5,1
	slliw	a5,a3,3
	addw	a5,a5,a3
	addw	a5,a5,a4
	lbu	a4,0(a0)
	andi	a5,a5,15
	slliw	a2,a2,4
	add	a3,t1,a4
	lbu	a3,64(a3)
	addw	a2,a5,a2
	addi	a0,a0,1
	andi	a5,a3,8
	beq	a5,zero,.L1284
	bne	a6,a0,.L1285
.L1319:
	li	a0,0
.L1306:
	addi	sp,sp,16
	jr	ra
.L1284:
	sw	a2,12(sp)
	blt	a2,zero,.L1319
.L1283:
	lbu	a5,12(sp)
	li	a0,1
	sb	a5,0(a1)
	lbu	a5,13(sp)
	sb	a5,1(a1)
	lbu	a5,14(sp)
	sb	a5,2(a1)
	lbu	a5,15(sp)
	sb	a5,3(a1)
	j	.L1306
	.size	sqlite3GetInt32, .-sqlite3GetInt32
	.section	.text.sqlite3AffinityType,"ax",@progbits
	.align	1
	.type	sqlite3AffinityType, @function
sqlite3AffinityType:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	lbu	a4,0(a0)
	mv	s1,a1
	beq	a4,zero,.L1327
	li	a7,1667784704
	li	t1,1668050944
	li	t3,1952808960
	li	t4,1651273728
	li	t5,16777216
	li	a1,6909952
	mv	a3,a0
	li	s0,67
	li	a0,0
	li	a5,0
	lla	a6,.LANCHOR2
	addi	a7,a7,370
	addi	t1,t1,-158
	addi	t3,t3,-1932
	addi	t4,t4,-158
	addi	t5,t5,-1
	addi	a1,a1,-396
	li	t6,67
	li	t0,40
	j	.L1333
.L1362:
	beq	a5,t1,.L1341
	beq	a5,t3,.L1341
	beq	a5,t4,.L1360
	and	a4,t5,a4
	sext.w	a4,a4
	beq	a4,a1,.L1331
	lbu	a2,0(a3)
.L1328:
	mv	a4,a2
	beq	a2,zero,.L1361
.L1333:
	add	a4,a6,a4
	lbu	a4,320(a4)
	slliw	a5,a5,8
	addi	a3,a3,1
	addw	a4,a4,a5
	sext.w	a5,a4
	bne	a5,a7,.L1362
	lbu	a2,0(a3)
	mv	a0,a3
	li	s0,66
	mv	a4,a2
	bne	a2,zero,.L1333
.L1361:
	beq	s1,zero,.L1349
	sw	zero,12(sp)
	li	a5,67
	li	a4,1
	beq	s0,a5,.L1337
	li	a4,5
	beq	a0,zero,.L1337
	lbu	a5,0(a0)
	bne	a5,zero,.L1338
	j	.L1359
.L1336:
	lbu	a5,1(a0)
	addi	a0,a0,1
	beq	a5,zero,.L1359
.L1338:
	add	a5,a6,a5
	lbu	a5,64(a5)
	andi	a5,a5,4
	beq	a5,zero,.L1336
	addi	a1,sp,12
	call	sqlite3GetInt32
	lw	a3,12(sp)
	li	a4,255
	sraiw	a5,a3,31
	srliw	a5,a5,30
	addw	a5,a5,a3
	sraiw	a5,a5,2
	addiw	a5,a5,1
	ble	a5,a4,.L1363
.L1337:
	sb	a4,26(s1)
.L1349:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L1341:
	lbu	a2,0(a3)
	li	s0,66
	j	.L1328
.L1360:
	lbu	a2,0(a3)
	bne	s0,t6,.L1328
	mv	a4,a2
	li	s0,65
	bne	a2,t0,.L1328
	mv	a0,a3
	li	s0,65
	j	.L1333
.L1331:
	li	s0,68
	beq	s1,zero,.L1349
.L1359:
	li	a4,1
	j	.L1337
.L1327:
	li	a4,1
	li	s0,67
	bne	a1,zero,.L1337
	j	.L1349
.L1363:
	andi	a4,a5,0xff
	j	.L1337
	.size	sqlite3AffinityType, .-sqlite3AffinityType
	.section	.text.sqlite3ExprAffinity,"ax",@progbits
	.align	1
	.type	sqlite3ExprAffinity, @function
sqlite3ExprAffinity:
	lw	a5,4(a0)
	andi	a4,a5,512
	bne	a4,zero,.L1378
	li	a4,4096
	li	a1,131
	li	a7,168
	li	a6,36
	li	t1,170
	j	.L1386
.L1368:
	ld	a0,16(a0)
	lw	a5,4(a0)
.L1386:
	and	a5,a5,a4
	sext.w	a5,a5
	bne	a5,zero,.L1368
	lbu	a5,0(a0)
	beq	a5,a1,.L1387
	beq	a5,a7,.L1388
	beq	a5,a6,.L1389
.L1372:
	addiw	a3,a5,-162
	andi	a3,a3,-3
	sext.w	a3,a3
	beq	a3,zero,.L1390
	bne	a5,t1,.L1375
	ld	a3,16(a0)
	lh	a5,48(a0)
	ld	a2,32(a3)
	slli	a3,a5,5
	ld	a5,0(a2)
	add	a5,a5,a3
	ld	a0,8(a5)
.L1370:
	lw	a5,4(a0)
	andi	a3,a5,512
	beq	a3,zero,.L1386
.L1378:
	li	a0,0
	ret
.L1388:
	lbu	a5,54(a0)
	bne	a5,a6,.L1372
.L1389:
	ld	a0,8(a0)
	li	a1,0
	tail	sqlite3AffinityType
.L1390:
	ld	a5,64(a0)
	beq	a5,zero,.L1375
	lh	a4,48(a0)
	li	a0,68
	blt	a4,zero,.L1382
	ld	a5,8(a5)
	slli	a4,a4,5
	add	a4,a5,a4
	lbu	a0,25(a4)
	ret
.L1382:
	ret
.L1387:
	ld	a5,32(a0)
	ld	a5,0(a5)
	ld	a0,8(a5)
	j	.L1370
.L1375:
	lbu	a0,1(a0)
	ret
	.size	sqlite3ExprAffinity, .-sqlite3ExprAffinity
	.section	.text.sqlite3CompareAffinity,"ax",@progbits
	.align	1
	.type	sqlite3CompareAffinity, @function
sqlite3CompareAffinity:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	call	sqlite3ExprAffinity
	mv	a5,a0
	beq	a0,zero,.L1392
	beq	s0,zero,.L1393
	li	a4,66
	li	a0,67
	bgtu	a5,a4,.L1394
	li	a0,65
	bleu	s0,a4,.L1394
	li	a0,67
.L1394:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L1392:
	li	a0,65
	beq	s0,zero,.L1394
.L1393:
	ld	ra,8(sp)
	addw	a5,a5,s0
	ld	s0,0(sp)
	andi	a0,a5,0xff
	addi	sp,sp,16
	jr	ra
	.size	sqlite3CompareAffinity, .-sqlite3CompareAffinity
	.section	.text.comparisonAffinity,"ax",@progbits
	.align	1
	.type	comparisonAffinity, @function
comparisonAffinity:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	ld	a0,16(a0)
	call	sqlite3ExprAffinity
	ld	a5,24(s0)
	beq	a5,zero,.L1404
	ld	s0,0(sp)
	ld	ra,8(sp)
	mv	a1,a0
	mv	a0,a5
	addi	sp,sp,16
	tail	sqlite3CompareAffinity
.L1404:
	lw	a5,4(s0)
	slli	a4,a5,52
	blt	a4,zero,.L1409
	bne	a0,zero,.L1406
	li	a0,65
.L1406:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L1409:
	ld	a5,32(s0)
	ld	s0,0(sp)
	ld	ra,8(sp)
	ld	a5,0(a5)
	mv	a1,a0
	ld	a0,8(a5)
	addi	sp,sp,16
	tail	sqlite3CompareAffinity
	.size	comparisonAffinity, .-comparisonAffinity
	.section	.text.sqlite3VdbeSwap,"ax",@progbits
	.align	1
	.type	sqlite3VdbeSwap, @function
sqlite3VdbeSwap:
	addi	sp,sp,-320
	addi	a4,sp,16
	sd	s0,304(sp)
	sd	ra,312(sp)
	mv	s0,a1
	mv	a5,a0
	mv	a3,a0
	mv	a2,a4
	addi	a1,a0,288
.L1411:
	ld	t1,0(a3)
	ld	a7,8(a3)
	ld	a6,16(a3)
	ld	a0,24(a3)
	sd	t1,0(a2)
	sd	a7,8(a2)
	sd	a6,16(a2)
	sd	a0,24(a2)
	addi	a3,a3,32
	addi	a2,a2,32
	bne	a3,a1,.L1411
	mv	a3,s0
	mv	a2,a5
	addi	a1,s0,288
.L1412:
	ld	t1,0(a3)
	ld	a7,8(a3)
	ld	a6,16(a3)
	ld	a0,24(a3)
	sd	t1,0(a2)
	sd	a7,8(a2)
	sd	a6,16(a2)
	sd	a0,24(a2)
	addi	a3,a3,32
	addi	a2,a2,32
	bne	a3,a1,.L1412
	addi	a2,sp,304
	mv	a3,s0
	sd	a2,8(sp)
.L1413:
	ld	a2,24(a4)
	ld	a6,0(a4)
	ld	a0,8(a4)
	ld	a1,16(a4)
	sd	a6,0(a3)
	sd	a0,8(a3)
	sd	a1,16(a3)
	sd	a2,24(a3)
	ld	a2,8(sp)
	addi	a4,a4,32
	addi	a3,a3,32
	bne	a4,a2,.L1413
	ld	a3,16(s0)
	ld	a4,16(a5)
	addi	a1,a5,200
	sd	a3,16(a5)
	sd	a4,16(s0)
	ld	a3,8(s0)
	ld	a4,8(a5)
	addi	a0,s0,200
	sd	a3,8(a5)
	sd	a4,8(s0)
	ld	a3,232(s0)
	ld	a4,232(a5)
	li	a2,28
	sd	a3,232(a5)
	sd	a4,232(s0)
	lw	a4,268(a5)
	sw	a4,268(s0)
	lbu	a5,188(a5)
	sb	a5,188(s0)
	call	memcpy@plt
	lw	a5,220(s0)
	addiw	a5,a5,1
	sw	a5,220(s0)
	ld	ra,312(sp)
	ld	s0,304(sp)
	addi	sp,sp,320
	jr	ra
	.size	sqlite3VdbeSwap, .-sqlite3VdbeSwap
	.section	.text.vdbePmaWriteBlob,"ax",@progbits
	.align	1
	.type	vdbePmaWriteBlob, @function
vdbePmaWriteBlob:
	ble	a2,zero,.L1430
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	mv	s4,a2
	mv	s0,a0
	mv	s5,a1
	mv	s2,a2
.L1419:
	lw	a5,0(s0)
	subw	a1,s4,s2
	add	a1,s5,a1
	bne	a5,zero,.L1418
	lw	a4,24(s0)
	lw	a5,16(s0)
	subw	a5,a5,a4
	mv	s1,a5
	ble	a5,s2,.L1420
	mv	s1,s2
.L1420:
	ld	a0,8(s0)
	sext.w	s3,s1
	mv	a2,s3
	add	a0,a0,a4
	call	memcpy@plt
	lw	a5,24(s0)
	lw	a2,16(s0)
	subw	s2,s2,s3
	addw	a5,a5,s1
	sw	a5,24(s0)
	beq	a2,a5,.L1431
	bgt	s2,zero,.L1419
.L1418:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L1431:
	ld	a0,40(s0)
	lw	a5,20(s0)
	ld	a3,32(s0)
	ld	a4,0(a0)
	ld	a1,8(s0)
	add	a3,a5,a3
	ld	a4,24(a4)
	subw	a2,a2,a5
	add	a1,a1,a5
	jalr	a4
	ld	a5,32(s0)
	lw	a4,16(s0)
	sw	a0,0(s0)
	sw	zero,24(s0)
	add	a5,a5,a4
	sw	zero,20(s0)
	sd	a5,32(s0)
	bgt	s2,zero,.L1419
	j	.L1418
.L1430:
	ret
	.size	vdbePmaWriteBlob, .-vdbePmaWriteBlob
	.section	.text.SortByDimension,"ax",@progbits
	.align	1
	.type	SortByDimension, @function
SortByDimension:
	li	a6,1
	bgt	a2,a6,.L1444
	ret
.L1444:
	addi	sp,sp,-80
	sd	s1,56(sp)
	sd	s2,48(sp)
	srai	s1,a2,1
	sraiw	s2,a2,1
	sd	s8,0(sp)
	subw	s2,a2,s2
	slli	s8,s1,2
	mv	a2,s1
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s3,40(sp)
	mv	s0,a1
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s4,a5
	sd	s6,16(sp)
	sd	s7,8(sp)
	mv	s6,a3
	mv	s7,a0
	mv	s3,a4
	add	s5,a1,s8
	call	SortByDimension
	mv	a4,s3
	mv	a3,s6
	mv	a5,s4
	mv	a2,s2
	mv	a1,s5
	mv	a0,s7
	call	SortByDimension
	mv	a1,s0
	mv	a2,s8
	mv	a0,s4
	call	memcpy@plt
	slliw	a6,s6,1
	addiw	a3,a6,1
	li	a1,0
	li	a4,0
	slli	a6,a6,2
	slli	a0,a3,2
.L1439:
	slli	a5,a4,2
	add	t1,s4,a5
	addw	a5,a1,a4
	slli	a5,a5,2
	slli	a3,a1,2
	add	a3,s5,a3
	add	a7,s0,a5
	lw	t3,0(a3)
	mv	a5,a7
	beq	s1,a4,.L1434
	lw	t1,0(t1)
	slli	a3,t3,1
	add	a3,a3,t3
	slli	a2,t1,1
	add	a2,a2,t1
	slli	a2,a2,4
	slli	a3,a3,4
	add	a2,s3,a2
	add	a3,s3,a3
	add	t5,a2,a6
	add	t4,a3,a6
	add	a2,a2,a0
	add	a3,a3,a0
	lw	t5,8(t5)
	lw	t4,8(t4)
	lw	a2,8(a2)
	lw	a3,8(a3)
	beq	s2,a1,.L1435
	blt	t5,t4,.L1435
	beq	t5,t4,.L1445
.L1434:
	addiw	a1,a1,1
	sw	t3,0(a7)
.L1436:
	blt	a4,s1,.L1439
	blt	a1,s2,.L1439
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
.L1445:
	bge	a2,a3,.L1434
.L1435:
	sw	t1,0(a5)
	addiw	a4,a4,1
	j	.L1436
	.size	SortByDimension, .-SortByDimension
	.section	.text.SortByDistance,"ax",@progbits
	.align	1
	.type	SortByDistance, @function
SortByDistance:
	li	a5,1
	bgt	a1,a5,.L1461
	ret
.L1461:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sraiw	s0,a1,1
	srai	s1,a1,1
	sd	s6,0(sp)
	subw	s0,a1,s0
	slli	s6,s1,2
	mv	a1,s1
	sd	ra,56(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	mv	s2,a0
	sd	s4,16(sp)
	sd	s5,8(sp)
	mv	s4,a3
	mv	s3,a2
	add	s5,a0,s6
	call	SortByDistance
	mv	a3,s4
	mv	a2,s3
	mv	a1,s0
	mv	a0,s5
	call	SortByDistance
	mv	a1,s2
	mv	a2,s6
	mv	a0,s4
	call	memcpy@plt
	li	a1,0
	li	a4,0
.L1448:
	blt	a4,s1,.L1452
.L1463:
	bge	a1,s0,.L1446
	addw	a5,a4,a1
	slli	a6,a1,2
	slli	a5,a5,2
	add	a6,s5,a6
	lw	a2,0(a6)
	add	a5,s2,a5
	bne	a4,s1,.L1462
.L1451:
	sw	a2,0(a5)
	addiw	a1,a1,1
	bge	a4,s1,.L1463
.L1452:
	addw	a5,a4,a1
	slli	a6,a4,2
	slli	a5,a5,2
	add	a6,s4,a6
	lw	a0,0(a6)
	add	a5,s2,a5
	beq	a1,s0,.L1460
	slli	a3,a1,2
	add	a3,s5,a3
	lw	a2,0(a3)
.L1455:
	slli	a3,a0,3
	slli	a6,a2,3
	add	a3,s3,a3
	add	a6,s3,a6
	ld	a7,0(a3)
	ld	a3,0(a6)
	bge	a7,a3,.L1451
.L1460:
	sw	a0,0(a5)
	addiw	a4,a4,1
	j	.L1448
.L1462:
	slli	a3,a4,2
	add	a3,s4,a3
	lw	a0,0(a3)
	j	.L1455
.L1446:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
	.size	SortByDistance, .-SortByDistance
	.section	.text.sqlite3_value_pointer,"ax",@progbits
	.align	1
	.globl	sqlite3_value_pointer
	.type	sqlite3_value_pointer, @function
sqlite3_value_pointer:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	lhu	a4,8(a0)
	li	a5,-16384
	addi	a5,a5,959
	and	a5,a5,a4
	li	a4,32768
	addi	a4,a4,513
	bne	a5,a4,.L1467
	beq	a1,zero,.L1467
	lbu	a4,11(a0)
	li	a5,112
	mv	s0,a0
	li	s1,0
	bne	a4,a5,.L1464
	ld	a0,0(a0)
	call	strcmp@plt
	bne	a0,zero,.L1464
	ld	s1,16(s0)
.L1464:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L1467:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,0
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_value_pointer, .-sqlite3_value_pointer
	.section	.text.sqlite3InsertBuiltinFuncs,"ax",@progbits
	.align	1
	.type	sqlite3InsertBuiltinFuncs, @function
sqlite3InsertBuiltinFuncs:
	addiw	a1,a1,-1
	slli	a1,a1,32
	addi	sp,sp,-64
	srli	a1,a1,32
	sd	s2,32(sp)
	slli	s2,a1,3
	add	s2,s2,a1
	sd	s3,24(sp)
	slli	s2,s2,3
	addi	a5,a0,72
	li	s3,1073741824
	sd	s1,40(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s6,0(sp)
	mv	s1,a0
	add	s2,s2,a5
	addi	s3,s3,-1
	li	s4,23
	lla	s5,.LANCHOR0
	j	.L1475
.L1480:
	ld	a5,16(a0)
	sd	a5,16(s1)
	sd	s1,16(a0)
	addi	s1,s1,72
	beq	s1,s2,.L1479
.L1475:
	ld	s6,56(s1)
	mv	a0,s6
	beq	s6,zero,.L1476
	call	strlen@plt
	and	s0,a0,s3
	sext.w	a0,s0
.L1472:
	lbu	s0,0(s6)
	mv	a1,s6
	addw	s0,s0,a0
	remw	s0,s0,s4
	mv	a0,s0
	call	sqlite3FunctionSearch
	bne	a0,zero,.L1480
	slli	s0,s0,3
	sd	zero,16(s1)
	add	s0,s5,s0
	ld	a5,40(s0)
	sd	a5,64(s1)
	sd	s1,40(s0)
	addi	s1,s1,72
	bne	s1,s2,.L1475
.L1479:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L1476:
	li	a0,0
	j	.L1472
	.size	sqlite3InsertBuiltinFuncs, .-sqlite3InsertBuiltinFuncs
	.section	.text.sqlite3_uri_parameter,"ax",@progbits
	.align	1
	.globl	sqlite3_uri_parameter
	.type	sqlite3_uri_parameter, @function
sqlite3_uri_parameter:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	beq	a0,zero,.L1486
	mv	s2,a1
	beq	a1,zero,.L1486
	li	s3,1073741824
	mv	s0,a0
	addi	s3,s3,-1
	call	strlen@plt
	j	.L1492
.L1493:
	mv	a1,s2
	mv	a0,s0
	call	strcmp@plt
	mv	s1,a0
	mv	a0,s0
	call	strlen@plt
	and	a5,a0,s3
	addiw	a5,a5,1
	add	s0,s0,a5
	mv	a0,s0
	beq	s1,zero,.L1481
	call	strlen@plt
.L1492:
	and	a0,a0,s3
	addiw	a0,a0,1
	add	s0,s0,a0
	lbu	a5,0(s0)
	bne	a5,zero,.L1493
.L1486:
	li	s0,0
.L1481:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_uri_parameter, .-sqlite3_uri_parameter
	.section	.text.walDecodeFrame,"ax",@progbits
	.align	1
	.type	walDecodeFrame, @function
walDecodeFrame:
	addi	sp,sp,-80
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	mv	s2,a0
	mv	s4,a1
	mv	s3,a2
	addi	a1,a4,8
	li	a2,8
	addi	a0,a0,104
	sd	s0,64(sp)
	sd	s5,24(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	mv	s0,a4
	mv	s5,a3
	call	memcmp@plt
	bne	a0,zero,.L1497
	lbu	s1,0(s0)
	lbu	a3,3(s0)
	lbu	a4,1(s0)
	lbu	a5,2(s0)
	slliw	s1,s1,24
	or	s1,s1,a3
	slliw	a4,a4,16
	or	s1,s1,a4
	slliw	a5,a5,8
	or	s1,s1,a5
	sext.w	s1,s1
	bne	s1,zero,.L1502
.L1497:
	li	a0,0
.L1496:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	jr	ra
.L1502:
	lbu	s7,85(s2)
	addi	s6,s2,96
	li	a2,8
	seqz	s7,s7
	mv	a1,s0
	mv	a0,s7
	mv	a4,s6
	mv	a3,s6
	call	walChecksumBytes
	lw	a2,56(s2)
	mv	a4,s6
	mv	a3,s6
	mv	a1,s5
	mv	a0,s7
	call	walChecksumBytes
	lbu	a5,16(s0)
	lbu	a2,19(s0)
	lbu	a3,17(s0)
	lbu	a4,18(s0)
	slliw	a5,a5,24
	slliw	a3,a3,16
	or	a5,a5,a2
	or	a5,a5,a3
	slliw	a4,a4,8
	lw	a3,96(s2)
	or	a5,a5,a4
	sext.w	a5,a5
	bne	a3,a5,.L1497
	lbu	a5,20(s0)
	lbu	a2,23(s0)
	lbu	a3,21(s0)
	lbu	a4,22(s0)
	slliw	a5,a5,24
	slliw	a3,a3,16
	or	a5,a5,a2
	or	a5,a5,a3
	slliw	a4,a4,8
	lw	a3,100(s2)
	or	a5,a5,a4
	sext.w	a5,a5
	bne	a3,a5,.L1497
	sw	s1,0(s4)
	lbu	a5,4(s0)
	lbu	a2,7(s0)
	lbu	a3,5(s0)
	lbu	a4,6(s0)
	slliw	a5,a5,24
	or	a5,a5,a2
	slliw	a3,a3,16
	or	a5,a5,a3
	slliw	a4,a4,8
	or	a5,a5,a4
	sw	a5,0(s3)
	li	a0,1
	j	.L1496
	.size	walDecodeFrame, .-walDecodeFrame
	.section	.text.readMasterJournal,"ax",@progbits
	.align	1
	.type	readMasterJournal, @function
readMasterJournal:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sb	zero,0(a1)
	ld	a5,0(a0)
	mv	s3,a1
	addi	a1,sp,16
	ld	a5,48(a5)
	mv	s1,a0
	mv	s2,a2
	jalr	a5
	mv	s0,a0
	bne	a0,zero,.L1504
	ld	a1,16(sp)
	li	a5,15
	bgt	a1,a5,.L1521
.L1504:
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	addi	sp,sp,80
	jr	ra
.L1521:
	addi	a2,sp,8
	addi	a1,a1,-16
	mv	a0,s1
	call	read32bits
	bne	a0,zero,.L1512
	lw	a5,8(sp)
	bgeu	a5,s2,.L1504
	ld	a1,16(sp)
	slli	a4,a5,32
	srli	a4,a4,32
	addi	a3,a1,-16
	bgt	a4,a3,.L1504
	beq	a5,zero,.L1504
	addi	a2,sp,12
	addi	a1,a1,-12
	mv	a0,s1
	call	read32bits
	bne	a0,zero,.L1512
	ld	a5,0(s1)
	ld	a3,16(sp)
	li	a2,8
	ld	a5,16(a5)
	addi	a3,a3,-8
	addi	a1,sp,24
	mv	a0,s1
	jalr	a5
	bne	a0,zero,.L1512
	ld	a4,24(sp)
	ld	a5,.LC11
	bne	a4,a5,.L1504
	ld	a5,0(s1)
	lw	a2,8(sp)
	mv	a1,s3
	ld	a4,16(a5)
	ld	a5,16(sp)
	slli	a3,a2,32
	srli	a3,a3,32
	addi	a5,a5,-16
	sub	a3,a5,a3
	mv	a0,s1
	jalr	a4
	mv	s0,a0
	bne	a0,zero,.L1504
	lw	a1,8(sp)
	lw	a4,12(sp)
	beq	a1,zero,.L1507
	addiw	a2,a1,-1
	slli	a2,a2,32
	srli	a2,a2,32
	addi	a2,a2,1
	mv	a5,s3
	add	a2,a2,s3
.L1508:
	lbu	a3,0(a5)
	addi	a5,a5,1
	subw	a4,a4,a3
	bne	a2,a5,.L1508
.L1507:
	bne	a4,zero,.L1509
	slli	a1,a1,32
	srli	a1,a1,32
	add	s3,s3,a1
.L1509:
	sb	zero,0(s3)
	j	.L1504
.L1512:
	mv	s0,a0
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	addi	sp,sp,80
	jr	ra
	.size	readMasterJournal, .-readMasterJournal
	.section	.text.sqlite3RealSameAsInt,"ax",@progbits
	.align	1
	.type	sqlite3RealSameAsInt, @function
sqlite3RealSameAsInt:
	fcvt.d.l	fa5,a0
	fmv.d.x	fa4,zero
	addi	sp,sp,-32
	feq.d	a4,fa5,fa4
	bne	a4,zero,.L1524
	mv	a5,a0
	li	a0,0
	bne	a5,a1,.L1523
	li	a0,1
	slli	a4,a0,51
	add	a5,a5,a4
	slli	a0,a0,52
	sltu	a0,a5,a0
.L1523:
	addi	sp,sp,32
	jr	ra
.L1524:
	li	a0,1
	addi	sp,sp,32
	jr	ra
	.size	sqlite3RealSameAsInt, .-sqlite3RealSameAsInt
	.section	.text.sqlite3VdbeMemNumerify,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemNumerify, @function
sqlite3VdbeMemNumerify:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	lhu	a5,8(a0)
	mv	s0,a0
	andi	a4,a5,45
	beq	a4,zero,.L1528
	li	a4,-16384
	addi	a4,a4,-19
	and	a5,a5,a4
.L1529:
	sh	a5,8(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L1528:
	lbu	a3,10(a0)
	lw	a2,12(a0)
	ld	a0,16(a0)
	mv	a1,s0
	call	sqlite3Atoi64
	lbu	a3,10(s0)
	lw	a2,12(s0)
	ld	a0,16(s0)
	addi	a1,sp,8
	call	sqlite3Atoi64
	li	a5,1
	ble	a0,a5,.L1535
	ld	s1,0(s0)
	mv	a1,s1
	mv	a0,s1
	sd	s1,8(sp)
	call	sqlite3RealSameAsInt
	lhu	a5,8(s0)
	li	a4,16384
	addi	a4,a4,-448
	and	a5,a5,a4
	slliw	a5,a5,16
	sraiw	a5,a5,16
	bne	a0,zero,.L1531
	ori	a5,a5,8
	slli	a5,a5,48
	srli	a5,a5,48
	j	.L1529
.L1535:
	lhu	a5,8(s0)
	li	a4,16384
	addi	a4,a4,-448
	and	a5,a5,a4
	ld	s1,8(sp)
	slliw	a5,a5,16
	sraiw	a5,a5,16
.L1531:
	ori	a5,a5,4
	slli	a5,a5,48
	srli	a5,a5,48
	sd	s1,0(s0)
	sh	a5,8(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
	.size	sqlite3VdbeMemNumerify, .-sqlite3VdbeMemNumerify
	.section	.text.sqlite3BlobCompare,"ax",@progbits
	.align	1
	.type	sqlite3BlobCompare, @function
sqlite3BlobCompare:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	lhu	a4,8(a0)
	lhu	a5,8(a1)
	lw	s0,12(a0)
	lw	s1,12(a1)
	or	a3,a4,a5
	slli	a6,a3,49
	bge	a6,zero,.L1537
	li	a2,16384
	and	a5,a4,a5
	and	a5,a5,a2
	bne	a5,zero,.L1553
	and	a4,a4,a2
	beq	a4,zero,.L1540
	ld	a5,16(a1)
	ble	s1,zero,.L1541
	addiw	a3,s1,-1
	slli	a3,a3,32
	srli	a3,a3,32
	addi	a4,a5,1
	add	a3,a3,a4
	j	.L1542
.L1554:
	beq	a3,a5,.L1541
.L1542:
	lbu	a4,0(a5)
	addi	a5,a5,1
	beq	a4,zero,.L1554
	li	a0,-1
	j	.L1549
.L1537:
	sext.w	a2,s0
	ble	s0,s1,.L1546
	sext.w	a2,s1
.L1546:
	ld	a1,16(a1)
	ld	a0,16(a0)
	call	memcmp@plt
	bne	a0,zero,.L1549
	subw	a0,s0,s1
.L1549:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L1553:
	lw	a0,0(a0)
	lw	a5,0(a1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	subw	a0,a0,a5
	addi	sp,sp,32
	jr	ra
.L1540:
	ld	a5,16(a0)
	ble	s0,zero,.L1543
	addiw	a3,s0,-1
	slli	a3,a3,32
	addi	a4,a5,1
	srli	a3,a3,32
	add	a3,a4,a3
	j	.L1544
.L1555:
	beq	a5,a3,.L1543
.L1544:
	lbu	a4,0(a5)
	addi	a5,a5,1
	beq	a4,zero,.L1555
	li	a0,1
	j	.L1549
.L1541:
	lw	a0,0(a0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	subw	a0,a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L1543:
	lw	a0,0(a1)
	subw	a0,s0,a0
	j	.L1549
	.size	sqlite3BlobCompare, .-sqlite3BlobCompare
	.section	.text.binCollFunc,"ax",@progbits
	.align	1
	.type	binCollFunc, @function
binCollFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a1
	mv	a0,a2
	mv	s0,a3
	mv	a1,a4
	sext.w	a2,s1
	bgt	a3,s1,.L1558
	sext.w	a2,a3
.L1558:
	call	memcmp@plt
	bne	a0,zero,.L1559
	subw	a0,s1,s0
.L1559:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	binCollFunc, .-binCollFunc
	.section	.text.rtrimCollFunc,"ax",@progbits
	.align	1
	.type	rtrimCollFunc, @function
rtrimCollFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s0,a1
	sd	ra,24(sp)
	mv	a1,a4
	mv	a0,a2
	mv	s1,a3
	li	a4,32
	bne	s0,zero,.L1563
	j	.L1564
.L1567:
	addiw	s0,s0,-1
	beq	s0,zero,.L1564
.L1563:
	add	a5,a0,s0
	lbu	a5,-1(a5)
	beq	a5,a4,.L1567
	beq	s1,zero,.L1565
.L1573:
	li	a4,32
	j	.L1566
.L1569:
	addiw	s1,s1,-1
	beq	s1,zero,.L1565
.L1566:
	add	a5,a1,s1
	lbu	a5,-1(a5)
	beq	a5,a4,.L1569
.L1565:
	sext.w	a2,s1
	bgt	s1,s0,.L1588
	call	memcmp@plt
	beq	a0,zero,.L1589
.L1576:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L1564:
	li	s0,0
	bne	s1,zero,.L1573
	li	a0,0
	j	.L1576
.L1588:
	sext.w	a2,s0
	call	memcmp@plt
	bne	a0,zero,.L1576
.L1589:
	subw	a0,s0,s1
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	rtrimCollFunc, .-rtrimCollFunc
	.globl	__clzdi2
	.section	.text.estimateIndexWidth,"ax",@progbits
	.align	1
	.type	estimateIndexWidth, @function
estimateIndexWidth:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	ld	a4,24(a0)
	lhu	a5,96(a0)
	mv	s1,a0
	ld	t1,8(a4)
	beq	a5,zero,.L1599
	ld	a6,8(a0)
	addiw	a7,a5,-1
	slli	a7,a7,32
	srli	a7,a7,31
	addi	a4,a6,2
	add	a7,a7,a4
	li	a5,0
	j	.L1593
.L1604:
	addi	a4,a4,2
.L1593:
	lh	a2,0(a6)
	li	a1,1
	mv	a6,a4
	slli	a3,a2,5
	add	a3,t1,a3
	blt	a2,zero,.L1592
	lbu	a1,26(a3)
.L1592:
	addw	a5,a1,a5
	bne	a7,a4,.L1604
	slliw	a5,a5,2
	slli	s0,a5,32
	sext.w	a4,a5
	li	a3,7
	srli	s0,s0,32
	bleu	a4,a3,.L1605
	mv	a0,s0
	call	__clzdi2@plt
	li	a5,60
	subw	a0,a5,a0
	slliw	a5,a0,2
	addw	a5,a5,a0
	slliw	a5,a5,1
	addiw	a5,a5,30
	slliw	a5,a5,16
	srl	s0,s0,a0
	sraiw	a5,a5,16
.L1596:
	andi	s0,s0,7
	lla	a4,.LANCHOR2
	slli	s0,s0,1
	add	s0,a4,s0
	lhu	a4,1776(s0)
	addw	a5,a4,a5
	slliw	a5,a5,16
	sraiw	a5,a5,16
	sh	a5,92(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L1605:
	li	a5,1
	bleu	a4,a5,.L1599
	li	a4,40
	li	a2,7
.L1595:
	addiw	a3,a4,-10
	mv	a5,a4
	slli	s0,s0,1
	slliw	a4,a3,16
	sraiw	a4,a4,16
	bleu	s0,a2,.L1595
	addiw	a5,a5,-20
	slliw	a5,a5,16
	sraiw	a5,a5,16
	j	.L1596
.L1599:
	li	a5,0
	sh	a5,92(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	estimateIndexWidth, .-estimateIndexWidth
	.section	.text.sqlite3VListNameToNum,"ax",@progbits
	.align	1
	.type	sqlite3VListNameToNum, @function
sqlite3VListNameToNum:
	beq	a0,zero,.L1610
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s5,8(sp)
	lw	s5,4(a0)
	mv	s3,a0
	mv	s4,a1
	mv	s2,a2
	li	s1,2
.L1609:
	addi	s0,s1,2
	slli	s0,s0,2
	add	s0,s3,s0
	mv	a2,s2
	mv	a1,s4
	mv	a0,s0
	call	strncmp@plt
	add	a5,s0,s2
	bne	a0,zero,.L1608
	lbu	a5,0(a5)
	beq	a5,zero,.L1616
.L1608:
	lw	a5,-4(s0)
	addw	s1,a5,s1
	bgt	s5,s1,.L1609
	li	a0,0
.L1607:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L1616:
	slli	s1,s1,2
	add	s1,s3,s1
	lw	a0,0(s1)
	j	.L1607
.L1610:
	li	a0,0
	ret
	.size	sqlite3VListNameToNum, .-sqlite3VListNameToNum
	.section	.text.sqlite3_bind_parameter_index,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_parameter_index
	.type	sqlite3_bind_parameter_index, @function
sqlite3_bind_parameter_index:
	beq	a1,zero,.L1624
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	beq	a0,zero,.L1618
	mv	a0,a1
	mv	s0,a1
	call	strlen@plt
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a2,a0
	ld	a0,176(s1)
	ld	s1,8(sp)
	slli	a2,a2,34
	srli	a2,a2,34
	addi	sp,sp,32
	tail	sqlite3VListNameToNum
.L1618:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L1624:
	li	a0,0
	ret
	.size	sqlite3_bind_parameter_index, .-sqlite3_bind_parameter_index
	.section	.text.patternCompare,"ax",@progbits
	.align	1
	.type	patternCompare, @function
patternCompare:
	addi	sp,sp,-160
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	s4,112(sp)
	sd	s5,104(sp)
	sd	s8,80(sp)
	sd	s9,72(sp)
	sd	s11,56(sp)
	sd	ra,152(sp)
	sd	s2,128(sp)
	sd	s3,120(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	sd	s10,64(sp)
	lbu	s3,1(a2)
	lbu	s2,0(a2)
	lbu	s7,3(a2)
	mv	s0,a2
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	s1,a3
	li	s5,0
	addi	s11,sp,24
	lla	s8,.LANCHOR2
	addi	s9,sp,16
	li	s4,93
.L1628:
	lb	a5,0(a0)
	blt	a5,zero,.L1673
.L1721:
	addi	a5,a0,1
	sd	a5,24(sp)
	lbu	s6,0(a0)
.L1674:
	beq	s6,zero,.L1716
	beq	s6,s2,.L1717
	beq	s6,s1,.L1718
	ld	a5,16(sp)
	lb	a3,0(a5)
	blt	a3,zero,.L1668
.L1720:
	addi	a3,a5,1
	sd	a3,16(sp)
	lbu	a5,0(a5)
	beq	s6,a5,.L1714
.L1670:
	beq	s7,zero,.L1672
	andi	a2,s6,0xff
	andi	a3,a5,0xff
	add	a2,s8,a2
	add	a3,s8,a3
	lbu	a2,320(a2)
	lbu	a3,320(a3)
	beq	a2,a3,.L1719
.L1672:
	bne	s6,s3,.L1658
	ld	a0,24(sp)
	beq	a0,s5,.L1658
	bne	a5,zero,.L1628
.L1658:
	li	a0,1
.L1682:
	ld	ra,152(sp)
	ld	s0,144(sp)
	ld	s1,136(sp)
	ld	s2,128(sp)
	ld	s3,120(sp)
	ld	s4,112(sp)
	ld	s5,104(sp)
	ld	s6,96(sp)
	ld	s7,88(sp)
	ld	s8,80(sp)
	ld	s9,72(sp)
	ld	s10,64(sp)
	ld	s11,56(sp)
	addi	sp,sp,160
	jr	ra
.L1718:
	lbu	a5,2(s0)
	bne	a5,zero,.L1656
	mv	a0,s11
	call	sqlite3Utf8Read
	sext.w	s6,a0
	beq	s6,zero,.L1658
	ld	a5,16(sp)
	ld	s5,24(sp)
	lb	a3,0(a5)
	bge	a3,zero,.L1720
.L1668:
	mv	a0,s9
	call	sqlite3Utf8Read
	sext.w	a5,a0
	bne	s6,a5,.L1670
.L1714:
	ld	a0,24(sp)
.L1722:
	lb	a5,0(a0)
	bge	a5,zero,.L1721
.L1673:
	mv	a0,s11
	call	sqlite3Utf8Read
	sext.w	s6,a0
	j	.L1674
.L1719:
	li	a4,127
	bgtu	s6,a4,.L1672
	bgtu	a5,a4,.L1672
	ld	a0,24(sp)
	j	.L1722
.L1656:
	mv	a0,s9
	call	sqlite3Utf8Read
	sext.w	s6,a0
	beq	s6,zero,.L1658
	mv	a0,s11
	call	sqlite3Utf8Read
	sext.w	a0,a0
	li	a5,94
	sd	zero,8(sp)
	beq	a0,a5,.L1723
.L1659:
	mv	s10,a0
	beq	a0,s4,.L1724
	beq	a0,zero,.L1658
	sd	zero,0(sp)
.L1665:
	li	s10,0
	j	.L1667
.L1662:
	mv	s10,a0
	beq	s6,a0,.L1725
.L1663:
	mv	a0,s11
	call	sqlite3Utf8Read
	sext.w	a0,a0
	beq	a0,zero,.L1658
	beq	a0,s4,.L1666
.L1667:
	li	a5,45
	bne	a0,a5,.L1662
	ld	a3,24(sp)
	lbu	a3,0(a3)
	beq	a3,s4,.L1662
	beq	a3,zero,.L1662
	beq	s10,zero,.L1662
	mv	a0,s11
	call	sqlite3Utf8Read
	sext.w	a0,a0
	bltu	s6,s10,.L1678
	li	s10,0
	bgtu	s6,a0,.L1663
	j	.L1713
.L1725:
	mv	s10,s6
.L1713:
	li	a5,1
	sd	a5,0(sp)
	j	.L1663
.L1724:
	addi	a5,s6,-93
	seqz	a5,a5
	mv	a0,s11
	sd	a5,0(sp)
	call	sqlite3Utf8Read
	sext.w	a0,a0
	beq	a0,zero,.L1658
	bne	a0,s10,.L1665
.L1666:
	ld	a5,8(sp)
	ld	a4,0(sp)
	beq	a5,a4,.L1658
	ld	a0,24(sp)
	j	.L1722
.L1716:
	ld	a5,16(sp)
	lbu	a0,0(a5)
	snez	a0,a0
	j	.L1682
.L1717:
	addi	s6,sp,24
	addi	s5,sp,16
.L1631:
	ld	a5,24(sp)
	lb	a4,0(a5)
	addi	a3,a5,1
	blt	a4,zero,.L1633
.L1727:
	sd	a3,24(sp)
	lbu	s4,0(a5)
.L1634:
	mv	a0,s5
	beq	s4,s2,.L1635
	bne	s4,s3,.L1726
.L1636:
	call	sqlite3Utf8Read
	sext.w	a0,a0
	bne	a0,zero,.L1631
.L1649:
	li	a0,2
	j	.L1682
.L1635:
	beq	s2,s3,.L1636
	ld	a5,24(sp)
	lb	a4,0(a5)
	addi	a3,a5,1
	bge	a4,zero,.L1727
.L1633:
	mv	a0,s6
	call	sqlite3Utf8Read
	sext.w	s4,a0
	j	.L1634
.L1726:
	li	a0,0
	beq	s4,zero,.L1682
	beq	s4,s1,.L1728
.L1637:
	li	a5,128
	bleu	s4,a5,.L1711
	addi	s3,sp,16
	li	s2,1
.L1651:
	ld	a5,16(sp)
	lb	a4,0(a5)
	addi	a3,a5,1
	blt	a4,zero,.L1652
	sd	a3,16(sp)
	lbu	a5,0(a5)
.L1653:
	beq	a5,zero,.L1649
	bne	s4,a5,.L1651
	ld	a1,16(sp)
	ld	a0,24(sp)
	mv	a3,s1
	mv	a2,s0
	call	patternCompare
	beq	a0,s2,.L1651
	j	.L1682
.L1723:
	mv	a0,s11
	call	sqlite3Utf8Read
	li	a5,1
	sext.w	a0,a0
	sd	a5,8(sp)
	j	.L1659
.L1678:
	li	s10,0
	j	.L1663
.L1652:
	mv	a0,s3
	call	sqlite3Utf8Read
	sext.w	a5,a0
	j	.L1653
.L1711:
	andi	a5,s4,0xff
	beq	s7,zero,.L1647
	lla	a4,.LANCHOR2
	add	s4,a4,s4
	lbu	a4,64(s4)
	lbu	a3,320(s4)
	sb	zero,42(sp)
	andi	a4,a4,32
	not	a4,a4
	and	a5,a5,a4
	sb	a5,40(sp)
	sb	a3,41(sp)
.L1648:
	addi	s3,sp,40
	li	s4,1
.L1650:
	ld	s2,16(sp)
	mv	a1,s3
	mv	a0,s2
	call	strcspn@plt
	add	a0,s2,a0
	sd	a0,16(sp)
	lbu	a4,0(a0)
	addi	a5,a0,1
	mv	a3,s1
	mv	a2,s0
	mv	a1,a5
	beq	a4,zero,.L1649
	ld	a0,24(sp)
	sd	a5,16(sp)
	call	patternCompare
	beq	a0,s4,.L1650
	j	.L1682
.L1728:
	lbu	a5,2(s0)
	beq	a5,zero,.L1638
	ld	a1,16(sp)
	li	s2,1
	li	s3,191
	lbu	a4,0(a1)
	li	s4,128
.L1642:
	beq	a4,zero,.L1649
	ld	a0,24(sp)
	mv	a3,s1
	mv	a2,s0
	addi	a0,a0,-1
	call	patternCompare
	bne	a0,s2,.L1682
	ld	a5,16(sp)
	addi	a1,a5,1
	sd	a1,16(sp)
	lbu	a4,0(a5)
	bgtu	a4,s3,.L1641
	lbu	a4,1(a5)
	j	.L1642
.L1647:
	sb	a5,40(sp)
	sb	zero,41(sp)
	j	.L1648
.L1638:
	addi	a0,sp,24
	call	sqlite3Utf8Read
	sext.w	s4,a0
	bne	s4,zero,.L1637
	li	a0,2
	j	.L1682
.L1641:
	lbu	a4,1(a5)
	andi	a3,a4,192
	bne	a3,s4,.L1642
	addi	a5,a5,2
.L1644:
	sd	a5,16(sp)
	lbu	a4,0(a5)
	mv	a1,a5
	addi	a5,a5,1
	andi	a3,a4,192
	beq	a3,s4,.L1644
	j	.L1642
	.size	patternCompare, .-patternCompare
	.section	.text.sqlite3_strglob,"ax",@progbits
	.align	1
	.globl	sqlite3_strglob
	.type	sqlite3_strglob, @function
sqlite3_strglob:
	li	a3,91
	lla	a2,.LANCHOR2+1792
	tail	patternCompare
	.size	sqlite3_strglob, .-sqlite3_strglob
	.section	.text.sqlite3_strlike,"ax",@progbits
	.align	1
	.globl	sqlite3_strlike
	.type	sqlite3_strlike, @function
sqlite3_strlike:
	mv	a3,a2
	lla	a2,.LANCHOR2+1800
	tail	patternCompare
	.size	sqlite3_strlike, .-sqlite3_strlike
	.section	.text.sqlite3MemFree,"ax",@progbits
	.align	1
	.type	sqlite3MemFree, @function
sqlite3MemFree:
	addi	a0,a0,-8
	tail	free@plt
	.size	sqlite3MemFree, .-sqlite3MemFree
	.section	.text.sqlite3OsSync.part.0,"ax",@progbits
	.align	1
	.type	sqlite3OsSync.part.0, @function
sqlite3OsSync.part.0:
	ld	a5,0(a0)
	ld	t1,40(a5)
	jr	t1
	.size	sqlite3OsSync.part.0, .-sqlite3OsSync.part.0
	.section	.text.pagerSyncHotJournal,"ax",@progbits
	.align	1
	.type	pagerSyncHotJournal, @function
pagerSyncHotJournal:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lbu	a5,11(a0)
	mv	s0,a0
	ld	a0,80(a0)
	beq	a5,zero,.L1737
	ld	a5,0(a0)
	addi	a1,s0,104
	ld	s0,0(sp)
	ld	ra,8(sp)
	ld	t1,48(a5)
	addi	sp,sp,16
	jr	t1
.L1737:
	li	a1,2
	call	sqlite3OsSync.part.0
	bne	a0,zero,.L1735
	ld	a0,80(s0)
	addi	a1,s0,104
	ld	s0,0(sp)
	ld	a5,0(a0)
	ld	ra,8(sp)
	ld	t1,48(a5)
	addi	sp,sp,16
	jr	t1
.L1735:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	pagerSyncHotJournal, .-pagerSyncHotJournal
	.section	.text.walWriteToLog,"ax",@progbits
	.align	1
	.type	walWriteToLog, @function
walWriteToLog:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	mv	s1,a0
	ld	a0,8(a0)
	ld	a5,16(s1)
	mv	s0,a3
	ld	a4,0(a0)
	mv	s3,a1
	mv	s2,a2
	ld	t1,24(a4)
	ble	a5,a3,.L1739
	add	a4,a2,a3
	bgt	a5,a4,.L1739
	subw	s5,a5,a3
	mv	a2,s5
	sext.w	s4,a5
	jalr	t1
	mv	a5,a0
	sext.w	a2,s0
	bne	a0,zero,.L1740
	lw	a1,24(s1)
	addw	s2,a2,s2
	ld	a0,8(s1)
	andi	a1,a1,3
	add	s0,s0,s5
	subw	s2,s2,s4
	add	s3,s3,s5
	bne	a1,zero,.L1741
	beq	s2,zero,.L1740
.L1749:
	ld	a5,0(a0)
	ld	t1,24(a5)
.L1739:
	mv	a3,s0
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	mv	a2,s2
	mv	a1,s3
	ld	s2,32(sp)
	ld	s3,24(sp)
	addi	sp,sp,64
	jr	t1
.L1741:
	call	sqlite3OsSync.part.0
	mv	a5,a0
	beq	s2,zero,.L1740
	beq	a0,zero,.L1750
.L1740:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	mv	a0,a5
	addi	sp,sp,64
	jr	ra
.L1750:
	ld	a0,8(s1)
	j	.L1749
	.size	walWriteToLog, .-walWriteToLog
	.section	.text.sqlite3Malloc,"ax",@progbits
	.align	1
	.type	sqlite3Malloc, @function
sqlite3Malloc:
	addi	sp,sp,-48
	li	a5,-2147483648
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	addi	a4,a0,-1
	xori	a5,a5,-258
	bleu	a4,a5,.L1752
.L1758:
	li	s0,0
.L1751:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L1752:
	lla	s1,.LANCHOR1
	lw	a5,0(s1)
	mv	s0,a0
	sext.w	a0,a0
	bne	a5,zero,.L1764
	ld	s0,32(sp)
	ld	t1,48(s1)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	t1
.L1764:
	ld	a5,80(s1)
	lla	s2,.LANCHOR0
	jalr	a5
	ld	a5,504(s2)
	mv	s3,a0
	ble	s0,a5,.L1755
	sd	s0,504(s2)
.L1755:
	ld	a5,552(s2)
	ble	a5,zero,.L1756
	ld	a4,384(s2)
	sub	a5,a5,s3
	bge	a4,a5,.L1765
	sw	zero,.LANCHOR0+560,a5
.L1756:
	ld	a5,48(s1)
	mv	a0,s3
	jalr	a5
	mv	s0,a0
	beq	a0,zero,.L1758
	ld	a5,72(s1)
	jalr	a5
	ld	a4,384(s2)
	ld	a5,464(s2)
	add	a0,a0,a4
	sd	a0,384(s2)
	ble	a0,a5,.L1759
	sd	a0,464(s2)
.L1759:
	ld	a5,456(s2)
	ld	a4,536(s2)
	addi	a5,a5,1
	sd	a5,456(s2)
	ble	a5,a4,.L1751
	sd	a5,536(s2)
	j	.L1751
.L1765:
	li	a5,1
	mv	a0,s3
	sw	a5,560(s2)
	call	sqlite3_release_memory@plt
	j	.L1756
	.size	sqlite3Malloc, .-sqlite3Malloc
	.section	.text.sqlite3MallocZero,"ax",@progbits
	.align	1
	.type	sqlite3MallocZero, @function
sqlite3MallocZero:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	call	sqlite3Malloc
	mv	s0,a0
	beq	a0,zero,.L1766
	mv	a2,s1
	li	a1,0
	call	memset@plt
.L1766:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3MallocZero, .-sqlite3MallocZero
	.section	.text.vdbeMergeEngineNew,"ax",@progbits
	.align	1
	.type	vdbeMergeEngineNew, @function
vdbeMergeEngineNew:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	li	a5,2
	ble	a0,a5,.L1776
	li	s0,2
.L1774:
	slliw	s0,s0,1
	bgt	a0,s0,.L1774
	li	a0,84
	mulw	a0,a0,s0
	mv	s1,s0
	addiw	a0,a0,32
.L1773:
	call	sqlite3MallocZero
	beq	a0,zero,.L1772
	slli	a5,s1,2
	add	a5,a5,s1
	addi	a4,a0,32
	slli	a5,a5,4
	add	a5,a4,a5
	sw	s0,0(a0)
	sd	zero,8(a0)
	sd	a4,24(a0)
	sd	a5,16(a0)
.L1772:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L1776:
	li	a0,200
	li	s1,2
	li	s0,2
	j	.L1773
	.size	vdbeMergeEngineNew, .-vdbeMergeEngineNew
	.section	.text.sqlite3_free,"ax",@progbits
	.align	1
	.globl	sqlite3_free
	.type	sqlite3_free, @function
sqlite3_free:
	beq	a0,zero,.L1782
	addi	sp,sp,-32
	sd	s1,8(sp)
	lla	s1,.LANCHOR1
	lw	a5,0(s1)
	sd	ra,24(sp)
	sd	s0,16(sp)
	bne	a5,zero,.L1789
	ld	s0,16(sp)
	ld	t1,56(s1)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	t1
.L1789:
	ld	a5,72(s1)
	mv	s0,a0
	jalr	a5
	lla	a5,.LANCHOR0
	ld	a3,384(a5)
	ld	a4,456(a5)
	ld	t1,56(s1)
	sub	a3,a3,a0
	addi	a4,a4,-1
	sd	a3,384(a5)
	sd	a4,456(a5)
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	t1
.L1782:
	ret
	.size	sqlite3_free, .-sqlite3_free
	.section	.text.sqlite3OsCloseFree,"ax",@progbits
	.align	1
	.type	sqlite3OsCloseFree, @function
sqlite3OsCloseFree:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	ld	a5,0(a0)
	mv	s0,a0
	beq	a5,zero,.L1791
	ld	a5,8(a5)
	jalr	a5
	sd	zero,0(s0)
.L1791:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_free@plt
	.size	sqlite3OsCloseFree, .-sqlite3OsCloseFree
	.section	.text.sqlite3DbFreeNN,"ax",@progbits
	.align	1
	.type	sqlite3DbFreeNN, @function
sqlite3DbFreeNN:
	mv	a4,a1
	beq	a0,zero,.L1797
	ld	a3,664(a0)
	bne	a3,zero,.L1804
	ld	a3,400(a0)
	bgtu	a3,a1,.L1797
	ld	a3,408(a0)
	bleu	a3,a1,.L1797
	ld	a3,392(a0)
	sd	a3,0(a1)
	sd	a1,392(a0)
	ret
.L1797:
	mv	a0,a4
	tail	sqlite3_free@plt
.L1804:
	tail	measureAllocationSize
	.size	sqlite3DbFreeNN, .-sqlite3DbFreeNN
	.section	.text.sqlite3_str_reset,"ax",@progbits
	.align	1
	.globl	sqlite3_str_reset
	.type	sqlite3_str_reset, @function
sqlite3_str_reset:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lbu	a5,29(a0)
	mv	s0,a0
	andi	a4,a5,4
	beq	a4,zero,.L1806
	ld	a1,8(a0)
	beq	a1,zero,.L1807
	ld	a0,0(a0)
	call	sqlite3DbFreeNN
	lbu	a5,29(s0)
.L1807:
	andi	a5,a5,-5
	sb	a5,29(s0)
.L1806:
	sw	zero,16(s0)
	sw	zero,24(s0)
	sd	zero,8(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_str_reset, .-sqlite3_str_reset
	.section	.text.resolveP2Values,"ax",@progbits
	.align	1
	.type	resolveP2Values, @function
resolveP2Values:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s2,0(sp)
	lw	a3,144(a0)
	lbu	a5,190(a0)
	ld	s0,24(a0)
	slli	a4,a3,1
	add	a4,a4,a3
	ld	a7,136(a0)
	andi	a5,a5,-4
	slli	a4,a4,3
	ori	a5,a5,1
	addi	a4,a4,-24
	lw	s2,0(a1)
	ld	t1,80(s0)
	mv	s1,a1
	add	a4,a7,a4
	sb	a5,190(a0)
	li	a6,61
	li	a2,10
	lla	a3,.L1819
	lla	t4,sqlite3BtreePrevious
	li	a1,-5
	lla	t3,sqlite3BtreeNext
.L1829:
	lbu	a5,0(a4)
	bgtu	a5,a6,.L1816
	bgtu	a5,a2,.L1817
	slli	a5,a5,2
	add	a5,a5,a3
	lw	a5,0(a5)
	add	a5,a5,a3
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1819:
	.word	.L1839-.L1819
	.word	.L1839-.L1819
	.word	.L1824-.L1819
	.word	.L1822-.L1819
	.word	.L1823-.L1819
	.word	.L1822-.L1819
	.word	.L1821-.L1819
	.word	.L1821-.L1819
	.word	.L1821-.L1819
	.word	.L1820-.L1819
	.word	.L1818-.L1819
	.section	.text.resolveP2Values
.L1824:
	lw	a5,8(a4)
	bne	a5,zero,.L1837
.L1839:
	lbu	a5,190(a0)
.L1840:
	ori	a5,a5,2
	sb	a5,190(a0)
.L1816:
	beq	a7,a4,.L1828
.L1842:
	addi	a4,a4,-24
	j	.L1829
.L1818:
	lw	a5,8(a4)
	blt	a5,s2,.L1841
	mv	s2,a5
.L1844:
	bne	a7,a4,.L1842
.L1828:
	ld	a1,80(s0)
	beq	a1,zero,.L1830
	ld	a0,0(a0)
	call	sqlite3DbFreeNN
.L1830:
	sd	zero,80(s0)
	sw	zero,68(s0)
	sw	s2,0(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L1820:
	lw	a5,-20(a4)
	blt	a5,s2,.L1843
.L1827:
	mv	s2,a5
.L1817:
	lw	a5,8(a4)
	bge	a5,zero,.L1816
	not	a5,a5
	slli	a5,a5,2
	add	a5,t1,a5
	lw	a5,0(a5)
	sw	a5,8(a4)
	ld	a7,136(a0)
	j	.L1816
.L1821:
	lbu	a5,190(a0)
	andi	a5,a5,-4
	j	.L1840
.L1822:
	sd	t3,16(a4)
	sb	a1,1(a4)
	ld	a7,136(a0)
	j	.L1816
.L1823:
	sd	t4,16(a4)
	sb	a1,1(a4)
	ld	a7,136(a0)
	j	.L1816
.L1837:
	lbu	a5,190(a0)
	andi	t5,a5,-2
	mv	a5,t5
	sb	t5,190(a0)
	j	.L1840
.L1843:
	mv	a5,s2
	j	.L1827
.L1841:
	mv	a5,s2
	mv	s2,a5
	j	.L1844
	.size	resolveP2Values, .-resolveP2Values
	.section	.text.freeP4Mem,"ax",@progbits
	.align	1
	.type	freeP4Mem, @function
freeP4Mem:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lw	a5,32(a1)
	mv	s0,a1
	mv	s1,a0
	beq	a5,zero,.L1846
	ld	a1,24(a1)
	beq	a1,zero,.L1846
	call	sqlite3DbFreeNN
.L1846:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
	.size	freeP4Mem, .-freeP4Mem
	.section	.text.freeP4FuncCtx,"ax",@progbits
	.align	1
	.type	freeP4FuncCtx, @function
freeP4FuncCtx:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a1
	ld	a1,8(a1)
	mv	s1,a0
	lw	a5,4(a1)
	andi	a5,a5,16
	bne	a5,zero,.L1860
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
.L1860:
	call	sqlite3DbFreeNN
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
	.size	freeP4FuncCtx, .-freeP4FuncCtx
	.section	.text.sqlite3VdbeDeleteAuxData,"ax",@progbits
	.align	1
	.type	sqlite3VdbeDeleteAuxData, @function
sqlite3VdbeDeleteAuxData:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	ld	s0,0(a1)
	beq	s0,zero,.L1861
	mv	s1,a1
	mv	s3,a0
	mv	s2,a2
	mv	s4,a3
	li	s5,31
.L1867:
	blt	s2,zero,.L1863
	lw	a5,0(s0)
	beq	a5,s2,.L1876
.L1864:
	addi	s1,s0,24
.L1866:
	ld	s0,0(s1)
	bne	s0,zero,.L1867
.L1861:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L1876:
	lw	a5,4(s0)
	blt	a5,zero,.L1864
	srlw	a4,s4,a5
	andi	a4,a4,1
	ble	a5,s5,.L1877
.L1863:
	ld	a5,16(s0)
	beq	a5,zero,.L1865
	ld	a0,8(s0)
	jalr	a5
.L1865:
	ld	a5,24(s0)
	mv	a1,s0
	mv	a0,s3
	sd	a5,0(s1)
	call	sqlite3DbFreeNN
	j	.L1866
.L1877:
	bne	a4,zero,.L1864
	j	.L1863
	.size	sqlite3VdbeDeleteAuxData, .-sqlite3VdbeDeleteAuxData
	.section	.text.stat4Destructor,"ax",@progbits
	.align	1
	.type	stat4Destructor, @function
stat4Destructor:
	mv	a1,a0
	ld	a0,80(a0)
	tail	sqlite3DbFreeNN
	.size	stat4Destructor, .-stat4Destructor
	.section	.text.sqlite3VtabUnlock,"ax",@progbits
	.align	1
	.type	sqlite3VtabUnlock, @function
sqlite3VtabUnlock:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lw	a5,24(a0)
	ld	s1,0(a0)
	mv	s0,a0
	addiw	a4,a5,-1
	sw	a4,24(a0)
	bne	a4,zero,.L1879
	ld	a0,16(a0)
	beq	a0,zero,.L1881
	ld	a5,0(a0)
	ld	a5,32(a5)
	jalr	a5
.L1881:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
.L1879:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VtabUnlock, .-sqlite3VtabUnlock
	.section	.text.sqlite3VtabUnlockList,"ax",@progbits
	.align	1
	.type	sqlite3VtabUnlockList, @function
sqlite3VtabUnlockList:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	ld	s0,480(a0)
	sd	zero,480(a0)
	beq	s0,zero,.L1886
	ld	a4,8(a0)
	beq	a4,zero,.L1890
.L1889:
	lbu	a5,189(a4)
	andi	a5,a5,-4
	ori	a5,a5,1
	sb	a5,189(a4)
	ld	a4,16(a4)
	bne	a4,zero,.L1889
.L1890:
	mv	a0,s0
	ld	s0,40(s0)
	call	sqlite3VtabUnlock
	bne	s0,zero,.L1890
.L1886:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3VtabUnlockList, .-sqlite3VtabUnlockList
	.section	.text.callFinaliser,"ax",@progbits
	.align	1
	.type	callFinaliser, @function
callFinaliser:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	ld	s3,472(a0)
	beq	s3,zero,.L1900
	lw	a5,436(a0)
	sd	zero,472(a0)
	mv	s2,a0
	ble	a5,zero,.L1902
	mv	s4,a1
	li	s0,0
.L1904:
	slli	a5,s0,3
	add	a5,s3,a5
	ld	s1,0(a5)
	addiw	s0,s0,1
	ld	a5,16(s1)
	mv	a0,a5
	beq	a5,zero,.L1903
	ld	a5,0(a5)
	add	a5,a5,s4
	ld	a5,0(a5)
	beq	a5,zero,.L1903
	jalr	a5
.L1903:
	sw	zero,32(s1)
	mv	a0,s1
	call	sqlite3VtabUnlock
	lw	a5,436(s2)
	bgt	a5,s0,.L1904
.L1902:
	mv	a1,s3
	mv	a0,s2
	call	sqlite3DbFreeNN
	sw	zero,436(s2)
.L1900:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
	.size	callFinaliser, .-callFinaliser
	.section	.text.sqlite3VdbeMemFinalize,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemFinalize, @function
sqlite3VdbeMemFinalize:
	addi	sp,sp,-144
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	ra,136(sp)
	ld	a4,40(a0)
	sd	zero,64(sp)
	ld	a5,32(a1)
	addi	s0,sp,56
	sd	zero,56(sp)
	sd	a4,96(sp)
	li	a3,1
	mv	s1,a0
	sd	a0,16(sp)
	sd	zero,24(sp)
	sh	a3,64(sp)
	sd	s0,0(sp)
	sd	a1,8(sp)
	mv	a0,sp
	sd	zero,32(sp)
	sd	zero,40(sp)
	sd	zero,48(sp)
	sd	zero,16(s0)
	sd	zero,24(s0)
	sd	zero,32(s0)
	sd	zero,48(s0)
	jalr	a5
	lw	a5,32(s1)
	ble	a5,zero,.L1917
	ld	a1,24(s1)
	ld	a0,40(s1)
	call	sqlite3DbFreeNN
.L1917:
	mv	a1,s0
	mv	a0,s1
	li	a2,56
	call	memcpy@plt
	ld	ra,136(sp)
	ld	s0,128(sp)
	lw	a0,36(sp)
	ld	s1,120(sp)
	addi	sp,sp,144
	jr	ra
	.size	sqlite3VdbeMemFinalize, .-sqlite3VdbeMemFinalize
	.section	.text.vdbeMemClearExternAndSetNull,"ax",@progbits
	.align	1
	.type	vdbeMemClearExternAndSetNull, @function
vdbeMemClearExternAndSetNull:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a5,8(a0)
	mv	s0,a0
	slli	a4,a5,50
	blt	a4,zero,.L1929
.L1920:
	andi	a5,a5,1024
	beq	a5,zero,.L1921
	ld	a5,48(s0)
	ld	a0,16(s0)
	jalr	a5
.L1921:
	li	a5,1
	sh	a5,8(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L1929:
	ld	a1,0(a0)
	call	sqlite3VdbeMemFinalize
	lhu	a5,8(s0)
	j	.L1920
	.size	vdbeMemClearExternAndSetNull, .-vdbeMemClearExternAndSetNull
	.section	.text.vdbeReleaseAndSetInt64,"ax",@progbits
	.align	1
	.type	vdbeReleaseAndSetInt64, @function
vdbeReleaseAndSetInt64:
	lhu	a4,8(a0)
	li	a5,8192
	addi	sp,sp,-32
	addi	a5,a5,1024
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	and	a5,a5,a4
	mv	s0,a0
	mv	s1,a1
	bne	a5,zero,.L1936
	li	a5,4
	sd	s1,0(s0)
	sh	a5,8(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L1936:
	call	vdbeMemClearExternAndSetNull
	li	a5,4
	sd	s1,0(s0)
	sh	a5,8(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	vdbeReleaseAndSetInt64, .-vdbeReleaseAndSetInt64
	.section	.text.sqlite3_result_double,"ax",@progbits
	.align	1
	.globl	sqlite3_result_double
	.type	sqlite3_result_double, @function
sqlite3_result_double:
	ld	a0,0(a0)
	li	a5,8192
	addi	a5,a5,1024
	lhu	a3,8(a0)
	and	a5,a5,a3
	bne	a5,zero,.L1939
	li	a5,4
	sd	a1,0(a0)
	sh	a5,8(a0)
	ret
.L1939:
	tail	vdbeReleaseAndSetInt64
	.size	sqlite3_result_double, .-sqlite3_result_double
	.set	sqlite3_result_double.localalias,sqlite3_result_double
	.section	.text.sqlite3_result_int,"ax",@progbits
	.align	1
	.globl	sqlite3_result_int
	.type	sqlite3_result_int, @function
sqlite3_result_int:
	ld	a0,0(a0)
	li	a5,8192
	addi	a5,a5,1024
	lhu	a3,8(a0)
	and	a5,a5,a3
	bne	a5,zero,.L1942
	li	a5,4
	sd	a1,0(a0)
	sh	a5,8(a0)
	ret
.L1942:
	tail	vdbeReleaseAndSetInt64
	.size	sqlite3_result_int, .-sqlite3_result_int
	.section	.text.total_changes,"ax",@progbits
	.align	1
	.type	total_changes, @function
total_changes:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	call	sqlite3_context_db_handle@plt
	call	sqlite3_total_changes@plt
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_int@plt
	.size	total_changes, .-total_changes
	.section	.text.changes,"ax",@progbits
	.align	1
	.type	changes, @function
changes:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	call	sqlite3_context_db_handle@plt
	call	sqlite3_changes@plt
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_int@plt
	.size	changes, .-changes
	.section	.text.sqlite3_result_null,"ax",@progbits
	.align	1
	.globl	sqlite3_result_null
	.type	sqlite3_result_null, @function
sqlite3_result_null:
	ld	a0,0(a0)
	li	a5,8192
	addi	a5,a5,1024
	lhu	a4,8(a0)
	and	a5,a5,a4
	bne	a5,zero,.L1949
	li	a5,1
	sh	a5,8(a0)
	ret
.L1949:
	tail	vdbeMemClearExternAndSetNull
	.size	sqlite3_result_null, .-sqlite3_result_null
	.section	.text.out2PrereleaseWithClear,"ax",@progbits
	.align	1
	.type	out2PrereleaseWithClear, @function
out2PrereleaseWithClear:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	mv	s0,a0
	bne	a5,zero,.L1956
	li	a5,4
	sh	a5,8(s0)
	ld	ra,8(sp)
	mv	a0,s0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L1956:
	call	vdbeMemClearExternAndSetNull
	li	a5,4
	sh	a5,8(s0)
	ld	ra,8(sp)
	mv	a0,s0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	out2PrereleaseWithClear, .-out2PrereleaseWithClear
	.section	.text.vdbeMemClear,"ax",@progbits
	.align	1
	.type	vdbeMemClear, @function
vdbeMemClear:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	mv	s0,a0
	bne	a5,zero,.L1967
	lw	a5,32(s0)
	bne	a5,zero,.L1968
.L1959:
	sd	zero,16(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L1967:
	call	vdbeMemClearExternAndSetNull
	lw	a5,32(s0)
	beq	a5,zero,.L1959
.L1968:
	ld	a1,24(s0)
	ld	a0,40(s0)
	call	sqlite3DbFreeNN
	sw	zero,32(s0)
	sd	zero,16(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vdbeMemClear, .-vdbeMemClear
	.section	.text.sqlite3_clear_bindings,"ax",@progbits
	.align	1
	.globl	sqlite3_clear_bindings
	.type	sqlite3_clear_bindings, @function
sqlite3_clear_bindings:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	lh	a5,32(a0)
	mv	s1,a0
	ble	a5,zero,.L1975
	li	s3,8192
	li	s0,0
	li	s2,0
	addi	s3,s3,1024
	li	s4,1
.L1970:
	ld	a5,128(s1)
	addiw	s2,s2,1
	add	a5,a5,s0
	lhu	a4,8(a5)
	mv	a0,a5
	and	a4,s3,a4
	bne	a4,zero,.L1973
	lw	a4,32(a5)
	beq	a4,zero,.L1974
.L1973:
	call	vdbeMemClear
	ld	a5,128(s1)
	add	a5,a5,s0
.L1974:
	sh	s4,8(a5)
	lh	a5,32(s1)
	addi	s0,s0,56
	bgt	a5,s2,.L1970
.L1975:
	lw	a5,268(s1)
	beq	a5,zero,.L1972
	lbu	a5,189(s1)
	andi	a5,a5,-4
	ori	a5,a5,1
	sb	a5,189(s1)
.L1972:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_clear_bindings, .-sqlite3_clear_bindings
	.section	.rodata.str1.8
	.align	3
.LC12:
	.string	""
	.section	.text.sqlite3_result_pointer,"ax",@progbits
	.align	1
	.globl	sqlite3_result_pointer
	.type	sqlite3_result_pointer, @function
sqlite3_result_pointer:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	ld	s0,0(a0)
	li	a5,8192
	addi	a5,a5,1024
	lhu	a4,8(s0)
	mv	s3,a1
	mv	s2,a2
	and	a5,a5,a4
	mv	s1,a3
	bne	a5,zero,.L1985
	lw	a5,32(s0)
	bne	a5,zero,.L1985
	beq	s2,zero,.L1993
.L1987:
	li	a5,-32768
	addi	a5,a5,1537
	sh	a5,8(s0)
	li	a5,112
	sd	s2,0(s0)
	sd	s3,16(s0)
	sb	a5,11(s0)
	beq	s1,zero,.L1994
.L1988:
	sd	s1,48(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L1985:
	mv	a0,s0
	call	vdbeMemClear
	bne	s2,zero,.L1987
.L1993:
	li	a5,-32768
	addi	a5,a5,1537
	lla	s2,.LC12
	sh	a5,8(s0)
	li	a5,112
	sd	s2,0(s0)
	sd	s3,16(s0)
	sb	a5,11(s0)
	bne	s1,zero,.L1988
.L1994:
	lla	s1,sqlite3NoopDestructor
	sd	s1,48(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_result_pointer, .-sqlite3_result_pointer
	.section	.text.sqlite3VdbeMemSetZeroBlob,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemSetZeroBlob, @function
sqlite3VdbeMemSetZeroBlob:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	mv	s0,a0
	mv	s1,a1
	bne	a5,zero,.L1996
	lw	a5,32(a0)
	beq	a5,zero,.L1997
.L1996:
	mv	a0,s0
	call	vdbeMemClear
.L1997:
	not	a1,s1
	li	a5,16384
	addi	a5,a5,16
	srai	a1,a1,63
	sh	a5,8(s0)
	and	s1,s1,a1
	li	a5,1
	sw	zero,12(s0)
	sw	s1,0(s0)
	sb	a5,10(s0)
	sd	zero,16(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeMemSetZeroBlob, .-sqlite3VdbeMemSetZeroBlob
	.section	.text.sqlite3_result_zeroblob,"ax",@progbits
	.align	1
	.globl	sqlite3_result_zeroblob
	.type	sqlite3_result_zeroblob, @function
sqlite3_result_zeroblob:
	ld	a0,0(a0)
	tail	sqlite3VdbeMemSetZeroBlob
	.size	sqlite3_result_zeroblob, .-sqlite3_result_zeroblob
	.section	.text.sqlite3_result_zeroblob64,"ax",@progbits
	.align	1
	.globl	sqlite3_result_zeroblob64
	.type	sqlite3_result_zeroblob64, @function
sqlite3_result_zeroblob64:
	ld	a0,0(a0)
	ld	a5,40(a0)
	lw	a5,124(a5)
	bltu	a5,a1,.L2006
	addi	sp,sp,-16
	sext.w	a1,a1
	sd	ra,8(sp)
	call	sqlite3VdbeMemSetZeroBlob
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L2006:
	li	a0,18
	ret
	.size	sqlite3_result_zeroblob64, .-sqlite3_result_zeroblob64
	.section	.text.sqlite3VdbeMemMove,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemMove, @function
sqlite3VdbeMemMove:
	addi	sp,sp,-32
	sd	s1,16(sp)
	sd	ra,24(sp)
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	mv	s1,a1
	bne	a5,zero,.L2012
	lw	a5,32(a0)
	beq	a5,zero,.L2013
.L2012:
	sd	a0,8(sp)
	call	vdbeMemClear
	ld	a0,8(sp)
.L2013:
	mv	a1,s1
	li	a2,56
	call	memcpy@plt
	li	a5,1
	sh	a5,8(s1)
	sw	zero,32(s1)
	ld	ra,24(sp)
	ld	s1,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeMemMove, .-sqlite3VdbeMemMove
	.section	.text.sqlite3ValueFree,"ax",@progbits
	.align	1
	.type	sqlite3ValueFree, @function
sqlite3ValueFree:
	beq	a0,zero,.L2018
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	mv	s0,a0
	bne	a5,zero,.L2020
	lw	a5,32(a0)
	beq	a5,zero,.L2021
.L2020:
	mv	a0,s0
	call	vdbeMemClear
.L2021:
	ld	a0,40(s0)
	mv	a1,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3DbFreeNN
.L2018:
	ret
	.size	sqlite3ValueFree, .-sqlite3ValueFree
	.section	.text.sqlite3_value_free,"ax",@progbits
	.align	1
	.globl	sqlite3_value_free
	.type	sqlite3_value_free, @function
sqlite3_value_free:
	tail	sqlite3ValueFree
	.size	sqlite3_value_free, .-sqlite3_value_free
	.section	.text.sqlite3HashClear,"ax",@progbits
	.align	1
	.type	sqlite3HashClear, @function
sqlite3HashClear:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	ld	a0,16(a0)
	ld	s0,8(s1)
	sd	zero,8(s1)
	call	sqlite3_free@plt
	sd	zero,16(s1)
	sw	zero,0(s1)
	beq	s0,zero,.L2030
.L2031:
	mv	a0,s0
	ld	s0,0(s0)
	call	sqlite3_free@plt
	bne	s0,zero,.L2031
.L2030:
	sw	zero,4(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3HashClear, .-sqlite3HashClear
	.section	.text.memdbClose,"ax",@progbits
	.align	1
	.type	memdbClose, @function
memdbClose:
	lw	a5,44(a0)
	andi	a5,a5,1
	bne	a5,zero,.L2046
	li	a0,0
	ret
.L2046:
	addi	sp,sp,-16
	sd	ra,8(sp)
	ld	a0,32(a0)
	call	sqlite3_free@plt
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	memdbClose, .-memdbClose
	.section	.text.sqlite3BitvecDestroy,"ax",@progbits
	.align	1
	.type	sqlite3BitvecDestroy, @function
sqlite3BitvecDestroy:
	beq	a0,zero,.L2047
	addi	sp,sp,-32
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	lw	a5,8(a0)
	mv	s2,a0
	beq	a5,zero,.L2049
	addi	s0,a0,16
	addi	s1,a0,512
.L2050:
	ld	a0,0(s0)
	addi	s0,s0,8
	call	sqlite3BitvecDestroy
	bne	s0,s1,.L2050
.L2049:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	sqlite3_free@plt
.L2047:
	ret
	.size	sqlite3BitvecDestroy, .-sqlite3BitvecDestroy
	.section	.text.memjrnlClose,"ax",@progbits
	.align	1
	.type	memjrnlClose, @function
memjrnlClose:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	ld	s0,24(a0)
	mv	s1,a0
	beq	s0,zero,.L2059
.L2060:
	mv	a0,s0
	ld	s0,0(s0)
	call	sqlite3_free@plt
	bne	s0,zero,.L2060
.L2059:
	sd	zero,24(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	memjrnlClose, .-memjrnlClose
	.section	.text.releaseAllSavepoints,"ax",@progbits
	.align	1
	.type	releaseAllSavepoints, @function
releaseAllSavepoints:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lw	a5,128(a0)
	mv	s1,a0
	li	s0,0
	ble	a5,zero,.L2070
.L2067:
	ld	a4,120(s1)
	slli	a5,s0,1
	add	a5,a5,s0
	slli	a5,a5,4
	add	a5,a4,a5
	ld	a0,16(a5)
	addiw	s0,s0,1
	call	sqlite3BitvecDestroy
	lw	a5,128(s1)
	bgt	a5,s0,.L2067
.L2070:
	ld	s0,88(s1)
	lbu	a4,8(s1)
	ld	a5,0(s0)
	bne	a4,zero,.L2082
	beq	a5,zero,.L2072
.L2071:
	ld	a5,8(a5)
	mv	a0,s0
	jalr	a5
	sd	zero,0(s0)
.L2072:
	ld	a0,120(s1)
	call	sqlite3_free@plt
	sd	zero,120(s1)
	sw	zero,128(s1)
	sw	zero,56(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2082:
	lla	a4,.LANCHOR3+152
	bne	a5,a4,.L2072
	j	.L2071
	.size	releaseAllSavepoints, .-releaseAllSavepoints
	.section	.text.pragmaVtabDisconnect,"ax",@progbits
	.align	1
	.type	pragmaVtabDisconnect, @function
pragmaVtabDisconnect:
	addi	sp,sp,-16
	sd	ra,8(sp)
	call	sqlite3_free@plt
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	pragmaVtabDisconnect, .-pragmaVtabDisconnect
	.section	.text.sqlite3_free_table,"ax",@progbits
	.align	1
	.globl	sqlite3_free_table
	.type	sqlite3_free_table, @function
sqlite3_free_table:
	beq	a0,zero,.L2085
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	a5,-8(a0)
	li	a4,1
	mv	s0,a0
	sext.w	a3,a5
	addi	s2,a0,-8
	ble	a3,a4,.L2087
	addiw	s1,a5,-2
	slli	s1,s1,32
	srli	s1,s1,29
	addi	a5,a0,8
	add	s1,s1,a5
.L2089:
	ld	a0,0(s0)
	addi	s0,s0,8
	beq	a0,zero,.L2088
	call	sqlite3_free@plt
.L2088:
	bne	s0,s1,.L2089
.L2087:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	sqlite3_free@plt
.L2085:
	ret
	.size	sqlite3_free_table, .-sqlite3_free_table
	.section	.text.setupLookaside,"ax",@progbits
	.align	1
	.type	setupLookaside, @function
setupLookaside:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s4,0(sp)
	ld	a5,384(a0)
	mv	s0,a0
	mv	s2,a1
	mv	s1,a2
	mv	s3,a3
	li	a6,0
	beq	a5,zero,.L2098
.L2099:
	ld	a5,0(a5)
	addiw	a6,a6,1
	bne	a5,zero,.L2099
.L2098:
	ld	a5,392(s0)
	li	a4,0
	beq	a5,zero,.L2100
.L2101:
	ld	a5,0(a5)
	addiw	a4,a4,1
	bne	a5,zero,.L2101
.L2100:
	lw	a5,368(s0)
	li	a0,5
	subw	a6,a5,a6
	subw	a4,a6,a4
	bgt	a4,zero,.L2120
	lbu	a5,366(s0)
	bne	a5,zero,.L2126
	andi	s1,s1,-8
	li	a5,8
	bgt	s1,a5,.L2127
.L2114:
	li	s4,0
.L2104:
	li	a5,1
	sd	zero,384(s0)
	sd	zero,392(s0)
	sh	s4,364(s0)
	sd	s0,400(s0)
	sd	s0,408(s0)
	sw	a5,360(s0)
	sb	zero,366(s0)
	sw	zero,368(s0)
	li	a0,0
.L2120:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L2127:
	ble	s3,zero,.L2128
	slli	s4,s1,48
	srli	s4,s4,48
	beq	s2,zero,.L2129
	sext.w	a0,s3
	addiw	a4,s3,-1
	sd	s2,400(s0)
	sd	zero,392(s0)
	sh	s4,364(s0)
	sw	a0,368(s0)
	mv	s3,s2
.L2110:
	mv	a5,s3
	li	a3,0
	li	a1,-1
	j	.L2109
.L2115:
	mv	a5,a2
.L2109:
	sd	a3,0(a5)
	sd	a5,384(s0)
	addiw	a4,a4,-1
	add	a2,a5,s1
	mv	a3,a5
	bne	a4,a1,.L2115
	addiw	a0,a0,-1
	slli	a5,a0,32
	srli	a5,a5,32
	addi	a5,a5,1
	mul	s1,a5,s1
	add	s3,s3,s1
.L2108:
	seqz	s2,s2
	sd	s3,408(s0)
	sw	zero,360(s0)
	sb	s2,366(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L2126:
	ld	a0,400(s0)
	andi	s1,s1,-8
	call	sqlite3_free@plt
	li	a5,8
	ble	s1,a5,.L2114
	j	.L2127
.L2128:
	li	a5,1
	sd	zero,384(s0)
	sd	zero,392(s0)
	sh	zero,364(s0)
	sd	s0,400(s0)
	sd	s0,408(s0)
	sw	a5,360(s0)
	sb	zero,366(s0)
	sw	zero,368(s0)
	li	a0,0
	j	.L2120
.L2129:
	mul	a0,s1,s3
	call	sqlite3Malloc
	mv	s3,a0
	beq	a0,zero,.L2104
	ld	a5,.LANCHOR1+72
	jalr	a5
	divw	a0,a0,s1
	sd	s3,400(s0)
	sd	zero,384(s0)
	sd	zero,392(s0)
	sh	s4,364(s0)
	sw	a0,368(s0)
	addiw	a4,a0,-1
	bge	a4,zero,.L2110
	j	.L2108
	.size	setupLookaside, .-setupLookaside
	.section	.text.sqlite3_db_config,"ax",@progbits
	.align	1
	.globl	sqlite3_db_config
	.type	sqlite3_db_config, @function
sqlite3_db_config:
	addi	sp,sp,-80
	addi	t1,sp,32
	sd	a5,56(sp)
	sd	a6,64(sp)
	sd	ra,24(sp)
	sd	a2,32(sp)
	sd	a3,40(sp)
	sd	a4,48(sp)
	sd	a7,72(sp)
	sd	t1,8(sp)
	li	a5,1000
	mv	a6,a0
	beq	a1,a5,.L2131
	li	a5,1001
	beq	a1,a5,.L2132
	li	a3,1002
	lla	a4,.LANCHOR2+1816
	li	a5,0
	li	a2,13
	beq	a1,a3,.L2148
.L2135:
	addiw	a5,a5,1
	beq	a5,a2,.L2142
	lw	a3,0(a4)
	addi	a4,a4,8
	bne	a1,a3,.L2135
.L2148:
	ld	a4,8(sp)
	ld	a3,48(a6)
	lw	a1,0(a4)
	addi	a2,a4,16
	sd	a2,8(sp)
	ld	a2,8(a4)
	ble	a1,zero,.L2136
	slli	a4,a5,32
	srli	a1,a4,29
	lla	a4,.LANCHOR2
	add	a4,a4,a1
	lwu	a4,1812(a4)
	or	a4,a4,a3
	sd	a4,48(a6)
.L2137:
	beq	a3,a4,.L2140
	ld	a3,8(a6)
	beq	a3,zero,.L2140
.L2141:
	lbu	a4,189(a3)
	andi	a4,a4,-4
	ori	a4,a4,1
	sb	a4,189(a3)
	ld	a3,16(a3)
	bne	a3,zero,.L2141
.L2140:
	li	a0,0
	beq	a2,zero,.L2134
	slli	a5,a5,32
	lla	a4,.LANCHOR2
	srli	a5,a5,29
	add	a5,a4,a5
	lwu	a5,1812(a5)
	ld	a4,48(a6)
	li	a0,0
	and	a5,a5,a4
	snez	a5,a5
	sw	a5,0(a2)
	j	.L2134
.L2131:
	ld	a5,32(a0)
	li	a0,0
	sd	a2,0(a5)
.L2134:
	ld	ra,24(sp)
	addi	sp,sp,80
	jr	ra
.L2132:
	lw	a3,16(t1)
	lw	a2,8(t1)
	ld	a1,0(t1)
	call	setupLookaside
	ld	ra,24(sp)
	addi	sp,sp,80
	jr	ra
.L2142:
	ld	ra,24(sp)
	li	a0,1
	addi	sp,sp,80
	jr	ra
.L2136:
	bne	a1,zero,.L2140
	slli	a4,a5,32
	srli	a1,a4,29
	lla	a4,.LANCHOR2
	add	a4,a4,a1
	lwu	a4,1812(a4)
	not	a4,a4
	and	a4,a4,a3
	sd	a4,48(a6)
	j	.L2137
	.size	sqlite3_db_config, .-sqlite3_db_config
	.section	.text.jsonParseReset,"ax",@progbits
	.align	1
	.type	jsonParseReset, @function
jsonParseReset:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	ld	a0,8(a0)
	call	sqlite3_free@plt
	ld	a0,24(s0)
	sd	zero,0(s0)
	sd	zero,8(s0)
	call	sqlite3_free@plt
	sd	zero,24(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	jsonParseReset, .-jsonParseReset
	.section	.text.jsonParseFree,"ax",@progbits
	.align	1
	.type	jsonParseFree, @function
jsonParseFree:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	jsonParseReset
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_free@plt
	.size	jsonParseFree, .-jsonParseFree
	.section	.text.jsonEachCursorReset,"ax",@progbits
	.align	1
	.type	jsonEachCursorReset, @function
jsonEachCursorReset:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	ld	a0,32(a0)
	call	sqlite3_free@plt
	ld	a0,40(s0)
	call	sqlite3_free@plt
	addi	a0,s0,48
	call	jsonParseReset
	sw	zero,8(s0)
	sd	zero,16(s0)
	sb	zero,24(s0)
	sd	zero,32(s0)
	sd	zero,40(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	jsonEachCursorReset, .-jsonEachCursorReset
	.section	.text.jsonEachClose,"ax",@progbits
	.align	1
	.type	jsonEachClose, @function
jsonEachClose:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	call	jsonEachCursorReset
	mv	a0,s0
	call	sqlite3_free@plt
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	jsonEachClose, .-jsonEachClose
	.section	.text.rtreeFreeCallback,"ax",@progbits
	.align	1
	.type	rtreeFreeCallback, @function
rtreeFreeCallback:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	ld	a5,16(a0)
	mv	s0,a0
	beq	a5,zero,.L2158
	ld	a0,24(a0)
	jalr	a5
.L2158:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_free@plt
	.size	rtreeFreeCallback, .-rtreeFreeCallback
	.section	.text.sqlite3OsOpenMalloc,"ax",@progbits
	.align	1
	.type	sqlite3OsOpenMalloc, @function
sqlite3OsOpenMalloc:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	mv	s1,a0
	lw	a0,4(a0)
	mv	s2,a1
	mv	s5,a2
	mv	s3,a3
	mv	s4,a4
	call	sqlite3MallocZero
	beq	a0,zero,.L2166
	ld	a5,40(s1)
	mv	a2,a0
	mv	s0,a0
	mv	a4,s4
	mv	a0,s1
	mv	a3,s3
	mv	a1,s2
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L2168
	sd	s0,0(s5)
.L2164:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	mv	a0,s1
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
.L2168:
	mv	a0,s0
	call	sqlite3_free@plt
	j	.L2164
.L2166:
	li	s1,7
	j	.L2164
	.size	sqlite3OsOpenMalloc, .-sqlite3OsOpenMalloc
	.section	.text.vdbePmaWriterFinish,"ax",@progbits
	.align	1
	.type	vdbePmaWriterFinish, @function
vdbePmaWriterFinish:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lw	a5,0(a0)
	lw	a2,24(a0)
	ld	a3,32(a0)
	mv	s0,a0
	mv	s1,a1
	bne	a5,zero,.L2170
	ld	a1,8(a0)
	beq	a1,zero,.L2170
	lw	a5,20(a0)
	bge	a5,a2,.L2170
	ld	a0,40(a0)
	add	a3,a5,a3
	subw	a2,a2,a5
	ld	a4,0(a0)
	add	a1,a1,a5
	ld	a5,24(a4)
	jalr	a5
	lw	a2,24(s0)
	ld	a3,32(s0)
	sw	a0,0(s0)
.L2170:
	add	a2,a2,a3
	sd	a2,0(s1)
	ld	a0,8(s0)
	call	sqlite3_free@plt
	lw	a0,0(s0)
	sd	zero,8(s0)
	sd	zero,0(s0)
	sd	zero,16(s0)
	sd	zero,24(s0)
	sd	zero,32(s0)
	sd	zero,40(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	vdbePmaWriterFinish, .-vdbePmaWriterFinish
	.section	.text.rtreeMatchArgFree,"ax",@progbits
	.align	1
	.type	rtreeMatchArgFree, @function
rtreeMatchArgFree:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	lw	a5,40(a0)
	mv	s1,a0
	ble	a5,zero,.L2176
	li	s0,0
.L2177:
	ld	a5,48(s1)
	slli	a4,s0,3
	addiw	s0,s0,1
	add	a5,a5,a4
	ld	a0,0(a5)
	call	sqlite3_value_free@plt
	lw	a5,40(s1)
	bgt	a5,s0,.L2177
.L2176:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_free@plt
	.size	rtreeMatchArgFree, .-rtreeMatchArgFree
	.section	.text.sqlite3Realloc,"ax",@progbits
	.align	1
	.type	sqlite3Realloc, @function
sqlite3Realloc:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	mv	s0,a1
	beq	a0,zero,.L2195
	beq	a1,zero,.L2196
	li	a5,-2147483648
	xori	a5,a5,-257
	bgtu	a1,a5,.L2189
	lla	s3,.LANCHOR1
	ld	a5,72(s3)
	sext.w	s6,a1
	mv	s1,a0
	jalr	a5
	ld	a5,80(s3)
	mv	s4,a0
	mv	a0,s6
	jalr	a5
	mv	s2,a0
	beq	s4,a0,.L2190
	lw	a5,0(s3)
	beq	a5,zero,.L2185
	lla	s5,.LANCHOR0
	ld	a5,504(s5)
	ble	s0,a5,.L2186
	sd	s0,504(s5)
.L2186:
	subw	a0,s2,s4
	ble	a0,zero,.L2187
	ld	a5,552(s5)
	ld	a3,384(s5)
	sub	a4,a5,a0
	blt	a3,a4,.L2187
	ble	a5,zero,.L2187
	call	sqlite3_release_memory@plt
.L2187:
	ld	a5,64(s3)
	mv	a1,s2
	mv	a0,s1
	jalr	a5
	mv	s0,a0
	beq	a0,zero,.L2197
.L2188:
	ld	a5,72(s3)
	mv	a0,s0
	jalr	a5
	ld	a4,384(s5)
	subw	s4,a0,s4
	ld	a5,464(s5)
	add	s4,s4,a4
	sd	s4,384(s5)
	ble	s4,a5,.L2180
	sd	s4,464(s5)
	j	.L2180
.L2190:
	mv	s0,s1
.L2180:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L2185:
	ld	s0,48(sp)
	ld	t1,64(s3)
	ld	ra,56(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a1,a0
	mv	a0,s1
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	t1
.L2197:
	ld	a5,552(s5)
	ble	a5,zero,.L2189
	mv	a0,s6
	call	sqlite3_release_memory@plt
	ld	a5,64(s3)
	mv	a1,s2
	mv	a0,s1
	jalr	a5
	mv	s0,a0
	bne	a0,zero,.L2188
.L2189:
	li	s0,0
	j	.L2180
.L2195:
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a0,a1
	addi	sp,sp,64
	tail	sqlite3Malloc
.L2196:
	call	sqlite3_free@plt
	j	.L2180
	.size	sqlite3Realloc, .-sqlite3Realloc
	.section	.text.pagerOpenSavepoint,"ax",@progbits
	.align	1
	.type	pagerOpenSavepoint, @function
pagerOpenSavepoint:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	s4,0(sp)
	mv	s1,a0
	mv	s3,a1
	ld	a0,120(a0)
	slli	a1,a1,1
	add	a1,a1,s3
	slli	a1,a1,4
	lw	s2,128(s1)
	call	sqlite3Realloc
	beq	a0,zero,.L2218
	slli	s0,s2,1
	subw	a5,s3,s2
	add	s0,s0,s2
	slli	a2,a5,1
	slli	s0,s0,4
	add	a2,a2,a5
	add	s0,a0,s0
	mv	s4,a0
	slli	a2,a2,4
	li	a1,0
	mv	a0,s0
	call	memset@plt
	sd	s4,120(s1)
	blt	s2,s3,.L2205
	j	.L2206
.L2219:
	ld	a5,96(s1)
	ble	a5,zero,.L2201
.L2202:
	sd	a5,0(s0)
	lw	a5,56(s1)
	addiw	s2,s2,1
	sw	a5,28(s0)
	lw	s4,28(s1)
	call	sqlite3MallocZero
	mv	a4,s2
	beq	a0,zero,.L2203
	sw	s4,0(a0)
	sd	a0,16(s0)
	ld	a5,288(s1)
	beq	a5,zero,.L2204
	lw	a3,88(a5)
	sw	a3,32(s0)
	lw	a3,96(a5)
	sw	a3,36(s0)
	lw	a3,100(a5)
	sw	a3,40(s0)
	lw	a5,136(a5)
	sw	a5,44(s0)
.L2204:
	sw	a4,128(s1)
	addi	s0,s0,48
	beq	s2,s3,.L2206
.L2205:
	lw	a5,28(s1)
	li	a0,512
	sw	a5,24(s0)
	ld	a5,80(s1)
	ld	a5,0(a5)
	bne	a5,zero,.L2219
.L2201:
	lwu	a5,184(s1)
	j	.L2202
.L2203:
	sd	zero,16(s0)
.L2218:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,7
	addi	sp,sp,48
	jr	ra
.L2206:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
	.size	pagerOpenSavepoint, .-pagerOpenSavepoint
	.section	.text.sqlite3OomFault.part.0,"ax",@progbits
	.align	1
	.type	sqlite3OomFault.part.0, @function
sqlite3OomFault.part.0:
	lw	a5,360(a0)
	ld	a4,296(a0)
	addiw	a5,a5,1
	sw	a5,360(a0)
	beq	a4,zero,.L2220
	li	a5,7
	sw	a5,24(a4)
.L2220:
	ret
	.size	sqlite3OomFault.part.0, .-sqlite3OomFault.part.0
	.section	.text.dbMallocRawFinish,"ax",@progbits
	.align	1
	.type	dbMallocRawFinish, @function
dbMallocRawFinish:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a0
	mv	a0,a1
	sd	s0,16(sp)
	sd	ra,24(sp)
	call	sqlite3Malloc
	mv	s0,a0
	beq	a0,zero,.L2229
.L2225:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2229:
	ld	a5,96(s1)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L2225
	lw	a4,196(s1)
	li	a5,1
	sb	a5,97(s1)
	ble	a4,zero,.L2227
	sw	a5,352(s1)
.L2227:
	mv	a0,s1
	call	sqlite3OomFault.part.0
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	dbMallocRawFinish, .-dbMallocRawFinish
	.section	.text.sqlite3DbMallocRawNN,"ax",@progbits
	.align	1
	.type	sqlite3DbMallocRawNN, @function
sqlite3DbMallocRawNN:
	lw	a5,360(a0)
	bne	a5,zero,.L2231
	lhu	a5,364(a0)
	bgeu	a5,a1,.L2232
	lw	a5,376(a0)
	addiw	a5,a5,1
	sw	a5,376(a0)
.L2233:
	tail	dbMallocRawFinish
.L2232:
	ld	a5,392(a0)
	beq	a5,zero,.L2234
	lw	a4,372(a0)
	ld	a3,0(a5)
	addiw	a4,a4,1
	sd	a3,392(a0)
	sw	a4,372(a0)
.L2230:
	mv	a0,a5
	ret
.L2231:
	lbu	a5,97(a0)
	beq	a5,zero,.L2233
	li	a5,0
	j	.L2230
.L2234:
	ld	a5,384(a0)
	beq	a5,zero,.L2236
	lw	a4,372(a0)
	ld	a3,0(a5)
	addiw	a4,a4,1
	sd	a3,384(a0)
	sw	a4,372(a0)
	j	.L2230
.L2236:
	lw	a5,380(a0)
	addiw	a5,a5,1
	sw	a5,380(a0)
	j	.L2233
	.size	sqlite3DbMallocRawNN, .-sqlite3DbMallocRawNN
	.section	.text.sqlite3DbMallocRaw,"ax",@progbits
	.align	1
	.type	sqlite3DbMallocRaw, @function
sqlite3DbMallocRaw:
	beq	a0,zero,.L2239
	tail	sqlite3DbMallocRawNN
.L2239:
	mv	a0,a1
	tail	sqlite3Malloc
	.size	sqlite3DbMallocRaw, .-sqlite3DbMallocRaw
	.section	.text.sqlite3VdbeAllocUnpackedRecord,"ax",@progbits
	.align	1
	.type	sqlite3VdbeAllocUnpackedRecord, @function
sqlite3VdbeAllocUnpackedRecord:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a1,6(a0)
	mv	s0,a0
	ld	a0,16(a0)
	addiw	a5,a1,1
	slliw	a1,a5,3
	subw	a1,a1,a5
	slliw	a1,a1,3
	addiw	a1,a1,24
	slli	a1,a1,32
	srli	a1,a1,32
	call	sqlite3DbMallocRaw
	beq	a0,zero,.L2240
	addi	a5,a0,24
	sd	a5,8(a0)
	sd	s0,0(a0)
	lhu	a5,6(s0)
	addiw	a5,a5,1
	sh	a5,16(a0)
.L2240:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3VdbeAllocUnpackedRecord, .-sqlite3VdbeAllocUnpackedRecord
	.section	.text.sqlite3DbMallocZero,"ax",@progbits
	.align	1
	.type	sqlite3DbMallocZero, @function
sqlite3DbMallocZero:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a1
	call	sqlite3DbMallocRaw
	mv	s0,a0
	beq	a0,zero,.L2246
	mv	a2,s1
	li	a1,0
	call	memset@plt
.L2246:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3DbMallocZero, .-sqlite3DbMallocZero
	.section	.text.sqlite3AllocateIndexObject,"ax",@progbits
	.align	1
	.type	sqlite3AllocateIndexObject, @function
sqlite3AllocateIndexObject:
	addi	sp,sp,-48
	sd	s2,16(sp)
	addiw	s2,a1,1
	add	a5,a1,s2
	addiw	a4,a1,7
	slliw	a5,a5,1
	addw	a5,a5,a4
	slliw	a4,a1,3
	andi	a5,a5,-8
	addiw	a4,a4,112
	sd	s1,24(sp)
	addw	s1,a4,a5
	sd	s0,32(sp)
	mv	s0,a1
	addw	a1,s1,a2
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s3,a3
	call	sqlite3DbMallocZero
	beq	a0,zero,.L2252
	addi	a3,a0,112
	slli	a5,s0,3
	add	a5,a3,a5
	slli	s2,s2,1
	add	s2,a5,s2
	slli	a4,s0,1
	add	a4,s2,a4
	addiw	a2,s0,-1
	sd	a5,16(a0)
	sd	a3,64(a0)
	sd	s2,8(a0)
	sd	a4,56(a0)
	sh	s0,96(a0)
	sh	a2,94(a0)
	add	a5,a0,s1
	sd	a5,0(s3)
.L2252:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3AllocateIndexObject, .-sqlite3AllocateIndexObject
	.section	.text.sqlite3_set_auxdata,"ax",@progbits
	.align	1
	.globl	sqlite3_set_auxdata
	.type	sqlite3_set_auxdata, @function
sqlite3_set_auxdata:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s5,8(sp)
	ld	s5,24(a0)
	mv	s2,a0
	mv	s1,a1
	ld	s0,280(s5)
	mv	s4,a2
	mv	s3,a3
	bne	s0,zero,.L2262
	j	.L2259
.L2260:
	ld	s0,24(s0)
	beq	s0,zero,.L2259
.L2262:
	lw	a5,4(s0)
	bne	a5,s1,.L2260
	lw	a4,0(s0)
	lw	a5,32(s2)
	beq	a4,a5,.L2261
	bge	s1,zero,.L2260
.L2261:
	ld	a5,16(s0)
	beq	a5,zero,.L2265
	ld	a0,8(s0)
	jalr	a5
.L2265:
	sd	s4,8(s0)
	sd	s3,16(s0)
.L2258:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L2259:
	ld	a0,0(s5)
	li	a1,32
	call	sqlite3DbMallocZero
	mv	s0,a0
	beq	a0,zero,.L2275
	lw	a5,32(s2)
	sw	s1,4(s0)
	sw	a5,0(s0)
	ld	a5,280(s5)
	sd	a5,24(s0)
	sd	s0,280(s5)
	lw	a5,36(s2)
	bne	a5,zero,.L2265
	li	a5,-1
	sw	a5,36(s2)
	j	.L2265
.L2275:
	beq	s3,zero,.L2258
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s5,8(sp)
	mv	a0,s4
	mv	t1,s3
	ld	s4,16(sp)
	ld	s3,24(sp)
	addi	sp,sp,64
	jr	t1
	.size	sqlite3_set_auxdata, .-sqlite3_set_auxdata
	.section	.text.sqlite3VtabOverloadFunction,"ax",@progbits
	.align	1
	.type	sqlite3VtabOverloadFunction, @function
sqlite3VtabOverloadFunction:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	zero,0(sp)
	sd	zero,8(sp)
	mv	s1,a1
	beq	a3,zero,.L2279
	lbu	a4,0(a3)
	li	a5,162
	bne	a4,a5,.L2279
	ld	a5,64(a3)
	beq	a5,zero,.L2279
	lw	a4,84(a5)
	beq	a4,zero,.L2279
	ld	a5,96(a5)
	mv	s0,a0
	mv	a1,a2
	bne	a5,zero,.L2280
	j	.L2281
.L2282:
	ld	a5,40(a5)
	beq	a5,zero,.L2281
.L2280:
	ld	a4,0(a5)
	bne	s0,a4,.L2282
	ld	a0,16(a5)
	ld	a5,0(a0)
	ld	a5,144(a5)
	beq	a5,zero,.L2279
	ld	a2,56(s1)
	addi	a4,sp,8
	mv	a3,sp
	jalr	a5
	beq	a0,zero,.L2279
	ld	a0,56(s1)
	beq	a0,zero,.L2285
	call	strlen@plt
	slli	a1,a0,34
	srli	a1,a1,34
	addi	a1,a1,73
.L2283:
	mv	a0,s0
	call	sqlite3DbMallocZero
	mv	s0,a0
	beq	a0,zero,.L2279
	ld	a7,0(s1)
	ld	a6,8(s1)
	ld	a0,16(s1)
	ld	a1,24(s1)
	ld	a2,32(s1)
	ld	a3,40(s1)
	ld	a4,48(s1)
	ld	a5,64(s1)
	addi	s2,s0,72
	sd	a7,0(s0)
	sd	a6,8(s0)
	sd	a0,16(s0)
	sd	a1,24(s0)
	sd	a2,32(s0)
	sd	a3,40(s0)
	sd	a4,48(s0)
	sd	a5,64(s0)
	sd	s2,56(s0)
	ld	s1,56(s1)
	beq	s1,zero,.L2286
	mv	a0,s1
	call	strlen@plt
	slli	a2,a0,34
	srli	a2,a2,34
	addi	a2,a2,1
.L2284:
	mv	a1,s1
	mv	a0,s2
	call	memcpy@plt
	ld	a4,0(sp)
	lw	a5,4(s0)
	sd	a4,24(s0)
	ld	a4,8(sp)
	ori	a5,a5,16
	sw	a5,4(s0)
	sd	a4,8(s0)
	j	.L2276
.L2279:
	mv	s0,s1
.L2276:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L2285:
	li	a1,73
	j	.L2283
.L2286:
	li	a2,1
	j	.L2284
.L2281:
	ld	a5,16(zero)
	ebreak
	.size	sqlite3VtabOverloadFunction, .-sqlite3VtabOverloadFunction
	.section	.text.strAccumFinishRealloc,"ax",@progbits
	.align	1
	.type	strAccumFinishRealloc, @function
strAccumFinishRealloc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lw	a1,24(a0)
	mv	s0,a0
	ld	a0,0(a0)
	addiw	a1,a1,1
	slli	a1,a1,32
	srli	a1,a1,32
	call	sqlite3DbMallocRaw
	mv	s1,a0
	beq	a0,zero,.L2308
	lw	a2,24(s0)
	ld	a1,8(s0)
	addiw	a2,a2,1
	slli	a2,a2,32
	srli	a2,a2,32
	call	memcpy@plt
	lbu	a5,29(s0)
	ori	a5,a5,4
	sb	a5,29(s0)
.L2309:
	sd	s1,8(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2308:
	lw	a5,20(s0)
	li	a4,7
	sb	a4,28(s0)
	beq	a5,zero,.L2309
	mv	a0,s0
	call	sqlite3_str_reset@plt
	sd	s1,8(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	strAccumFinishRealloc, .-strAccumFinishRealloc
	.section	.text.sqlite3StrAccumFinish,"ax",@progbits
	.align	1
	.type	sqlite3StrAccumFinish, @function
sqlite3StrAccumFinish:
	ld	a4,8(a0)
	mv	a5,a0
	beq	a4,zero,.L2314
	lwu	a3,24(a0)
	add	a4,a4,a3
	sb	zero,0(a4)
	lw	a4,20(a0)
	bne	a4,zero,.L2316
.L2317:
	ld	a4,8(a5)
.L2314:
	mv	a0,a4
	ret
.L2316:
	lbu	a4,29(a0)
	andi	a4,a4,4
	bne	a4,zero,.L2317
	tail	strAccumFinishRealloc
	.size	sqlite3StrAccumFinish, .-sqlite3StrAccumFinish
	.section	.text.sqlite3DbStrDup,"ax",@progbits
	.align	1
	.type	sqlite3DbStrDup, @function
sqlite3DbStrDup:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	beq	a1,zero,.L2323
	mv	s1,a0
	mv	a0,a1
	mv	s0,a1
	call	strlen@plt
	addi	s2,a0,1
	mv	a1,s2
	mv	a0,s1
	call	sqlite3DbMallocRaw
	mv	s1,a0
	beq	a0,zero,.L2321
	mv	a2,s2
	mv	a1,s0
	call	memcpy@plt
.L2321:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2323:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,0
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3DbStrDup, .-sqlite3DbStrDup
	.section	.text.sqlite3SetString,"ax",@progbits
	.align	1
	.type	sqlite3SetString, @function
sqlite3SetString:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	ld	a5,0(a0)
	mv	s0,a0
	mv	s1,a1
	mv	s2,a2
	beq	a5,zero,.L2329
	mv	a1,a5
	mv	a0,s1
	call	sqlite3DbFreeNN
.L2329:
	mv	a1,s2
	mv	a0,s1
	call	sqlite3DbStrDup
	sd	a0,0(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3SetString, .-sqlite3SetString
	.section	.text.sqlite3HexToBlob,"ax",@progbits
	.align	1
	.type	sqlite3HexToBlob, @function
sqlite3HexToBlob:
	srliw	a5,a2,31
	addw	a5,a5,a2
	addi	sp,sp,-32
	sraiw	a5,a5,1
	sd	s1,8(sp)
	mv	s1,a1
	addiw	a1,a5,1
	sd	s0,16(sp)
	sd	ra,24(sp)
	mv	s0,a2
	call	sqlite3DbMallocRawNN
	beq	a0,zero,.L2334
	addiw	t4,s0,-1
	ble	t4,zero,.L2338
	li	a3,0
.L2337:
	add	a5,s1,a3
	lbu	t3,0(a5)
	lbu	t1,1(a5)
	srai	a7,a3,1
	sraiw	a4,t3,6
	andi	a6,a4,1
	sraiw	a5,t1,6
	andi	a2,a5,1
	slliw	a4,a6,3
	slliw	a5,a2,3
	addw	a4,a4,a6
	addw	a5,a5,a2
	addw	a4,a4,t3
	andi	a4,a4,15
	addw	a5,a5,t1
	andi	a5,a5,15
	slliw	a4,a4,4
	add	a2,a0,a7
	or	a5,a5,a4
	sb	a5,0(a2)
	addiw	a3,a3,2
	bgt	t4,a3,.L2337
	srai	a3,a3,1
	add	a3,a0,a3
.L2336:
	sb	zero,0(a3)
.L2334:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2338:
	mv	a3,a0
	j	.L2336
	.size	sqlite3HexToBlob, .-sqlite3HexToBlob
	.section	.text.sqlite3VdbeMemSetRowSet,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemSetRowSet, @function
sqlite3VdbeMemSetRowSet:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s2,0(sp)
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	ld	s2,40(a0)
	mv	s1,a0
	bne	a5,zero,.L2345
	lw	a5,32(a0)
	bne	a5,zero,.L2345
.L2346:
	li	a1,56
	mv	a0,s2
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	li	a0,7
	beq	s0,zero,.L2347
	beq	s2,zero,.L2348
	ld	a5,400(s2)
	bleu	a5,s0,.L2359
.L2348:
	ld	a5,.LANCHOR1+72
	mv	a0,s0
	jalr	a5
	mv	a5,a0
.L2349:
	li	a0,24
	addi	a5,a5,-56
	divu	a5,a5,a0
	addi	a4,s0,56
	sd	a4,32(s0)
	li	a4,1
	sd	zero,0(s0)
	sd	s2,8(s0)
	sd	zero,16(s0)
	sd	zero,24(s0)
	sd	zero,40(s0)
	sh	a4,50(s0)
	sw	zero,52(s0)
	li	a0,0
	sh	a5,48(s0)
	li	a5,1040
	sh	a5,8(s1)
	lla	a5,sqlite3RowSetDelete
	sd	s0,16(s1)
	sd	a5,48(s1)
.L2347:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L2345:
	mv	a0,s1
	call	vdbeMemClear
	j	.L2346
.L2359:
	ld	a5,408(s2)
	bleu	a5,s0,.L2348
	lhu	a5,364(s2)
	j	.L2349
	.size	sqlite3VdbeMemSetRowSet, .-sqlite3VdbeMemSetRowSet
	.section	.text.rowSetEntryAlloc,"ax",@progbits
	.align	1
	.type	rowSetEntryAlloc, @function
rowSetEntryAlloc:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a5,48(a0)
	mv	s0,a0
	beq	a5,zero,.L2361
	addiw	a5,a5,-1
	ld	a0,32(a0)
	slli	a5,a5,48
	srli	a5,a5,48
.L2362:
	addi	a4,a0,24
	sh	a5,48(s0)
	sd	a4,32(s0)
.L2360:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L2361:
	ld	a0,8(a0)
	li	a1,1016
	call	sqlite3DbMallocRawNN
	beq	a0,zero,.L2360
	ld	a4,0(s0)
	li	a5,41
	sd	a4,0(a0)
	sd	a0,0(s0)
	addi	a0,a0,8
	j	.L2362
	.size	rowSetEntryAlloc, .-rowSetEntryAlloc
	.section	.text.sqlite3RowSetInsert,"ax",@progbits
	.align	1
	.type	sqlite3RowSetInsert, @function
sqlite3RowSetInsert:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a0
	mv	s1,a1
	call	rowSetEntryAlloc
	beq	a0,zero,.L2368
	sd	s1,0(a0)
	sd	zero,8(a0)
	ld	a5,24(s0)
	beq	a5,zero,.L2370
	ld	a4,0(a5)
	blt	a4,s1,.L2371
	lhu	a4,50(s0)
	andi	a4,a4,-2
	sh	a4,50(s0)
.L2371:
	sd	a0,8(a5)
.L2372:
	sd	a0,24(s0)
.L2368:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2370:
	sd	a0,16(s0)
	j	.L2372
	.size	sqlite3RowSetInsert, .-sqlite3RowSetInsert
	.section	.text.sqlite3DbStrNDup,"ax",@progbits
	.align	1
	.type	sqlite3DbStrNDup, @function
sqlite3DbStrNDup:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	beq	a1,zero,.L2379
	mv	s2,a1
	addi	a1,a2,1
	mv	s0,a2
	call	sqlite3DbMallocRawNN
	mv	s1,a0
	beq	a0,zero,.L2377
	mv	a2,s0
	mv	a1,s2
	add	s0,s1,s0
	call	memcpy@plt
	sb	zero,0(s0)
.L2377:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2379:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,0
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3DbStrNDup, .-sqlite3DbStrNDup
	.section	.text.sqlite3DbSpanDup,"ax",@progbits
	.align	1
	.type	sqlite3DbSpanDup, @function
sqlite3DbSpanDup:
	lbu	a5,0(a1)
	lla	a3,.LANCHOR2
	add	a5,a3,a5
	lbu	a5,64(a5)
	andi	a5,a5,1
	beq	a5,zero,.L2385
.L2386:
	lbu	a5,1(a1)
	addi	a1,a1,1
	add	a5,a3,a5
	lbu	a5,64(a5)
	andi	a5,a5,1
	bne	a5,zero,.L2386
.L2385:
	subw	a2,a2,a1
	mv	a4,a2
	bgt	a2,zero,.L2389
	j	.L2388
.L2390:
	addi	a2,a2,-1
	beq	a4,zero,.L2397
.L2389:
	add	a5,a1,a2
	lbu	a5,-1(a5)
	addiw	a4,a4,-1
	add	a5,a3,a5
	lbu	a5,64(a5)
	andi	a5,a5,1
	bne	a5,zero,.L2390
.L2388:
	tail	sqlite3DbStrNDup
.L2397:
	li	a2,0
	tail	sqlite3DbStrNDup
	.size	sqlite3DbSpanDup, .-sqlite3DbSpanDup
	.section	.text.triggerSpanDup,"ax",@progbits
	.align	1
	.type	triggerSpanDup, @function
triggerSpanDup:
	addi	sp,sp,-16
	sd	ra,8(sp)
	call	sqlite3DbSpanDup
	beq	a0,zero,.L2398
	lbu	a5,0(a0)
	beq	a5,zero,.L2398
	mv	a3,a0
	li	a4,0
	lla	a2,.LANCHOR2
	li	a1,32
.L2401:
	add	a5,a2,a5
	lbu	a5,64(a5)
	addiw	a4,a4,1
	andi	a5,a5,1
	beq	a5,zero,.L2400
	sb	a1,0(a3)
.L2400:
	add	a3,a0,a4
	lbu	a5,0(a3)
	bne	a5,zero,.L2401
.L2398:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	triggerSpanDup, .-triggerSpanDup
	.section	.text.sqlite3NameFromToken,"ax",@progbits
	.align	1
	.type	sqlite3NameFromToken, @function
sqlite3NameFromToken:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	li	s0,0
	beq	a1,zero,.L2413
	lwu	a2,8(a1)
	ld	a1,0(a1)
	call	sqlite3DbStrNDup
	mv	s0,a0
	call	sqlite3Dequote
.L2413:
	ld	ra,8(sp)
	mv	a0,s0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3NameFromToken, .-sqlite3NameFromToken
	.section	.text.tokenExpr,"ax",@progbits
	.align	1
	.type	tokenExpr, @function
tokenExpr:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	slli	s1,a3,32
	mv	s3,a0
	ld	a0,0(a0)
	srli	s1,s1,32
	mv	s2,a1
	addi	a1,s1,73
	sd	a2,0(sp)
	sd	a3,8(sp)
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L2417
	li	a5,8388608
	ld	a1,0(sp)
	addi	a3,a0,72
	sw	a5,4(a0)
	li	a5,-65536
	sw	a5,48(a0)
	sd	a3,8(a0)
	sb	s2,0(a0)
	sb	zero,1(a0)
	sd	zero,24(a0)
	sd	zero,16(a0)
	sd	zero,32(a0)
	sd	zero,56(a0)
	sd	zero,64(a0)
	sb	zero,54(a0)
	sw	zero,44(a0)
	mv	a2,s1
	mv	a0,a3
	call	memcpy@plt
	add	a3,a0,s1
	sb	zero,0(a3)
	ld	a0,8(s0)
	lla	a5,.LANCHOR2
	lbu	a4,0(a0)
	add	a5,a5,a4
	lb	a5,64(a5)
	blt	a5,zero,.L2428
	li	a5,1
	sw	a5,40(s0)
	lbu	a4,276(s3)
	bgtu	a4,a5,.L2429
.L2417:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	addi	sp,sp,64
	jr	ra
.L2428:
	li	a3,34
	lw	a5,4(s0)
	beq	a4,a3,.L2423
	li	a4,67108864
.L2421:
	or	a5,a5,a4
	sw	a5,4(s0)
	call	sqlite3Dequote
	li	a5,1
	sw	a5,40(s0)
	lbu	a4,276(s3)
	bleu	a4,a5,.L2417
.L2429:
	ld	a0,0(s3)
	li	a1,32
	call	sqlite3DbMallocZero
	beq	a0,zero,.L2417
	ld	a5,0(sp)
	sd	s0,0(a0)
	sd	a5,8(a0)
	ld	a5,8(sp)
	sd	a5,16(a0)
	ld	a5,400(s3)
	sd	a5,24(a0)
	sd	a0,400(s3)
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	addi	sp,sp,64
	jr	ra
.L2423:
	li	a4,67108864
	addi	a4,a4,64
	j	.L2421
	.size	tokenExpr, .-tokenExpr
	.section	.text.sqlite3ExprAlloc,"ax",@progbits
	.align	1
	.type	sqlite3ExprAlloc, @function
sqlite3ExprAlloc:
	addi	sp,sp,-64
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sw	zero,12(sp)
	mv	s4,a1
	beq	a2,zero,.L2431
	li	a5,147
	mv	s1,a2
	mv	s0,a0
	mv	s3,a3
	beq	a1,a5,.L2432
.L2435:
	lw	s2,8(s1)
	mv	a0,s0
	addiw	s2,s2,1
	addi	a1,s2,72
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L2434
	li	a2,72
	li	a1,0
	call	memset@plt
	li	a5,-1
	sb	s4,0(s0)
	sh	a5,50(s0)
	beq	s2,zero,.L2442
	addi	a5,s0,72
	sd	a5,8(s0)
	lw	a2,8(s1)
	bne	a2,zero,.L2466
.L2440:
	slli	a2,a2,32
	srli	a2,a2,32
	add	a2,a5,a2
	sb	zero,0(a2)
	beq	s3,zero,.L2439
	ld	a0,8(s0)
	lla	a5,.LANCHOR2
	lbu	a4,0(a0)
	add	a5,a5,a4
	lb	a5,64(a5)
	blt	a5,zero,.L2467
.L2439:
	li	a5,1
	sw	a5,40(s0)
	j	.L2430
.L2432:
	ld	a0,0(a2)
	beq	a0,zero,.L2435
	addi	a1,sp,12
	call	sqlite3GetInt32
	beq	a0,zero,.L2435
	mv	a0,s0
	li	a1,72
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	bne	a0,zero,.L2445
.L2434:
	li	s0,0
.L2430:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L2431:
	li	a1,72
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L2434
	li	a2,72
	li	a1,0
	call	memset@plt
	li	a5,-1
	sb	s4,0(s0)
	sh	a5,50(s0)
	j	.L2439
.L2445:
	li	a2,72
	li	a1,0
	call	memset@plt
	li	a5,-109
	sb	a5,0(s0)
	li	a5,-1
	sh	a5,50(s0)
.L2442:
	lw	a4,12(sp)
	bne	a4,zero,.L2446
	li	a5,545259520
	addi	a5,a5,1024
.L2438:
	sw	a5,4(s0)
	sw	a4,8(s0)
	j	.L2439
.L2446:
	li	a5,276824064
	addi	a5,a5,1024
	j	.L2438
.L2466:
	ld	a1,0(s1)
	slli	a2,a2,32
	srli	a2,a2,32
	mv	a0,a5
	call	memcpy@plt
	lw	a2,8(s1)
	mv	a5,a0
	j	.L2440
.L2467:
	li	a3,34
	lw	a5,4(s0)
	beq	a4,a3,.L2447
	li	a4,67108864
.L2441:
	or	a5,a5,a4
	sw	a5,4(s0)
	call	sqlite3Dequote
	j	.L2439
.L2447:
	li	a4,67108864
	addi	a4,a4,64
	j	.L2441
	.size	sqlite3ExprAlloc, .-sqlite3ExprAlloc
	.section	.text.sqlite3CreateColumnExpr,"ax",@progbits
	.align	1
	.type	sqlite3CreateColumnExpr, @function
sqlite3CreateColumnExpr:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s0,a1
	mv	s2,a2
	mv	s1,a3
	li	a2,0
	li	a3,0
	li	a1,162
	sd	ra,24(sp)
	call	sqlite3ExprAlloc
	beq	a0,zero,.L2468
	slli	a4,s2,3
	sub	a5,a4,s2
	slli	a5,a5,4
	add	a5,s0,a5
	ld	a3,40(a5)
	sd	a3,64(a0)
	lw	a2,72(a5)
	sw	a2,44(a0)
	lh	a3,68(a3)
	beq	a3,s1,.L2476
	sh	s1,48(a0)
	li	a2,63
	mv	a3,s1
	ble	s1,a2,.L2471
	li	a3,63
.L2471:
	sub	s2,a4,s2
	slli	s2,s2,4
	add	s0,s0,s2
	ld	a2,96(s0)
	li	a4,1
	sll	a4,a4,a3
	or	a4,a4,a2
	sd	a4,96(a5)
.L2468:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L2476:
	li	a5,-1
	sh	a5,48(a0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3CreateColumnExpr, .-sqlite3CreateColumnExpr
	.section	.text.sqlite3Expr,"ax",@progbits
	.align	1
	.type	sqlite3Expr, @function
sqlite3Expr:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	a2,0(sp)
	mv	s0,a0
	mv	s1,a1
	beq	a2,zero,.L2479
	mv	a0,a2
	call	strlen@plt
	slli	a5,a0,34
	srli	a5,a5,34
.L2478:
	mv	a2,sp
	mv	a1,s1
	mv	a0,s0
	li	a3,0
	sw	a5,8(sp)
	call	sqlite3ExprAlloc
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L2479:
	li	a5,0
	j	.L2478
	.size	sqlite3Expr, .-sqlite3Expr
	.section	.text.sqlite3IdListDup,"ax",@progbits
	.align	1
	.type	sqlite3IdListDup, @function
sqlite3IdListDup:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	beq	a1,zero,.L2482
	mv	s3,a1
	li	a1,16
	mv	s5,a0
	call	sqlite3DbMallocRawNN
	mv	s4,a0
	beq	a0,zero,.L2482
	lw	a1,8(s3)
	mv	a0,s5
	sw	a1,8(s4)
	slli	a1,a1,4
	call	sqlite3DbMallocRawNN
	sd	a0,0(s4)
	mv	s0,a0
	beq	a0,zero,.L2483
	lw	a5,8(s3)
	li	s2,0
	bgt	a5,zero,.L2484
	j	.L2481
.L2495:
	ld	s0,0(s4)
.L2484:
	ld	s1,0(s3)
	slli	a5,s2,4
	mv	a0,s5
	add	s1,s1,a5
	ld	a1,0(s1)
	add	s0,s0,a5
	addiw	s2,s2,1
	call	sqlite3DbStrDup
	sd	a0,0(s0)
	lw	a5,8(s1)
	sw	a5,8(s0)
	lw	a5,8(s3)
	bgt	a5,s2,.L2495
.L2481:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s5,8(sp)
	mv	a0,s4
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L2482:
	li	s4,0
	j	.L2481
.L2483:
	mv	a1,s4
	mv	a0,s5
	call	sqlite3DbFreeNN
	li	s4,0
	j	.L2481
	.size	sqlite3IdListDup, .-sqlite3IdListDup
	.section	.text.sqlite3SchemaGet,"ax",@progbits
	.align	1
	.type	sqlite3SchemaGet, @function
sqlite3SchemaGet:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s2,0(sp)
	mv	s1,a0
	beq	a1,zero,.L2497
	ld	s2,8(a1)
	ld	a5,0(a1)
	ld	s0,64(s2)
	sd	a5,8(s2)
	beq	s0,zero,.L2503
.L2498:
	lbu	a5,112(s0)
	bne	a5,zero,.L2496
	li	a5,1
	sd	zero,8(s0)
	sd	zero,16(s0)
	sd	zero,24(s0)
	sd	zero,32(s0)
	sd	zero,40(s0)
	sd	zero,48(s0)
	sd	zero,56(s0)
	sd	zero,64(s0)
	sd	zero,72(s0)
	sd	zero,80(s0)
	sd	zero,88(s0)
	sd	zero,96(s0)
	sb	a5,113(s0)
.L2496:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L2503:
	li	a1,120
	li	a0,0
	call	sqlite3DbMallocZero
	lla	a5,sqlite3SchemaClear
	mv	s0,a0
	sd	a0,64(s2)
	sd	a5,72(s2)
.L2499:
	bne	s0,zero,.L2498
	ld	a5,96(s1)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L2496
	lw	a4,196(s1)
	li	a5,1
	sb	a5,97(s1)
	ble	a4,zero,.L2501
	sw	a5,352(s1)
.L2501:
	mv	a0,s1
	call	sqlite3OomFault.part.0
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L2497:
	li	a1,120
	li	a0,0
	call	sqlite3DbMallocZero
	mv	s0,a0
	j	.L2499
	.size	sqlite3SchemaGet, .-sqlite3SchemaGet
	.section	.text.sqlite3_result_error_nomem,"ax",@progbits
	.align	1
	.globl	sqlite3_result_error_nomem
	.type	sqlite3_result_error_nomem, @function
sqlite3_result_error_nomem:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	ld	a0,0(a0)
	li	a5,8192
	addi	a5,a5,1024
	lhu	a4,8(a0)
	and	a5,a5,a4
	bne	a5,zero,.L2510
	li	a5,1
	sh	a5,8(a0)
.L2506:
	ld	a5,0(s0)
	li	a4,7
	sw	a4,36(s0)
	ld	a0,40(a5)
	li	a4,16777216
	addi	a4,a4,-256
	ld	a5,96(a0)
	and	a5,a5,a4
	bne	a5,zero,.L2504
	lw	a4,196(a0)
	li	a5,1
	sb	a5,97(a0)
	ble	a4,zero,.L2508
	sw	a5,352(a0)
.L2508:
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3OomFault.part.0
.L2504:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L2510:
	call	vdbeMemClearExternAndSetNull
	j	.L2506
	.size	sqlite3_result_error_nomem, .-sqlite3_result_error_nomem
	.section	.text.sqlite3IndexAffinityStr,"ax",@progbits
	.align	1
	.type	sqlite3IndexAffinityStr, @function
sqlite3IndexAffinityStr:
	addi	sp,sp,-64
	sd	s2,32(sp)
	ld	s2,32(a1)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	beq	s2,zero,.L2526
.L2511:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	jr	ra
.L2526:
	mv	s1,a0
	lhu	a0,96(a1)
	mv	s0,a1
	ld	s5,24(a1)
	addiw	a0,a0,1
	call	sqlite3Malloc
	sd	a0,32(s0)
	mv	s2,a0
	beq	a0,zero,.L2513
	lhu	a5,96(s0)
	li	s1,0
	li	s3,0
	li	s6,-1
	li	s4,68
	bne	a5,zero,.L2514
	j	.L2515
.L2528:
	ld	a4,8(s5)
	ld	a5,32(s0)
	add	a4,a4,a3
	lbu	a4,25(a4)
	add	a5,a5,s1
	sb	a4,0(a5)
.L2519:
	lhu	a5,96(s0)
	addi	s1,s1,1
	addiw	a0,s3,1
	sext.w	s3,s1
	ble	a5,s3,.L2527
.L2514:
	ld	a5,8(s0)
	slli	a4,s1,1
	add	a5,a5,a4
	lh	a5,0(a5)
	slli	a3,a5,5
	sext.w	a4,a5
	bge	a5,zero,.L2528
	slli	a3,s3,5
	bne	a4,s6,.L2520
	ld	a5,32(s0)
	addiw	a0,s3,1
	add	a5,a5,s1
	sb	s4,0(a5)
	lhu	a5,96(s0)
	addi	s1,s1,1
	sext.w	s3,s1
	bgt	a5,s3,.L2514
.L2527:
	ld	s2,32(s0)
	add	s2,s2,a0
.L2515:
	sb	zero,0(s2)
	ld	s2,32(s0)
	j	.L2511
.L2520:
	ld	a5,80(s0)
	add	a5,a5,a3
	ld	a0,8(a5)
	call	sqlite3ExprAffinity
	bne	a0,zero,.L2521
	li	a0,65
.L2521:
	ld	a5,32(s0)
	add	a5,a5,s1
	sb	a0,0(a5)
	j	.L2519
.L2513:
	ld	a5,96(s1)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L2511
	lw	a4,196(s1)
	li	a5,1
	sb	a5,97(s1)
	ble	a4,zero,.L2517
	sw	a5,352(s1)
.L2517:
	mv	a0,s1
	call	sqlite3OomFault.part.0
	j	.L2511
	.size	sqlite3IndexAffinityStr, .-sqlite3IndexAffinityStr
	.section	.text.sqlite3SystemError.part.0,"ax",@progbits
	.align	1
	.type	sqlite3SystemError.part.0, @function
sqlite3SystemError.part.0:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	ld	a0,0(a0)
	li	a5,0
	ld	a4,128(a0)
	beq	a4,zero,.L2530
	li	a2,0
	li	a1,0
	jalr	a4
	mv	a5,a0
.L2530:
	sw	a5,88(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3SystemError.part.0, .-sqlite3SystemError.part.0
	.section	.text.sqlite3ErrorFinish,"ax",@progbits
	.align	1
	.type	sqlite3ErrorFinish, @function
sqlite3ErrorFinish:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	ld	a0,344(a0)
	mv	s0,a1
	beq	a0,zero,.L2536
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L2543
	li	a5,1
	sh	a5,8(a0)
.L2536:
	li	a5,4096
	addi	a5,a5,-1014
	beq	s0,a5,.L2535
	andi	s0,s0,251
	li	a5,10
	beq	s0,a5,.L2544
.L2535:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2543:
	call	vdbeMemClearExternAndSetNull
	j	.L2536
.L2544:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3SystemError.part.0
	.size	sqlite3ErrorFinish, .-sqlite3ErrorFinish
	.section	.text.setStrAccumError.part.0,"ax",@progbits
	.align	1
	.type	setStrAccumError.part.0, @function
setStrAccumError.part.0:
	ld	a5,0(a0)
	beq	a5,zero,.L2545
	ld	a5,296(a5)
	beq	a5,zero,.L2545
	lw	a4,48(a5)
	li	a3,18
	sw	a3,24(a5)
	addiw	a4,a4,1
	sw	a4,48(a5)
.L2545:
	ret
	.size	setStrAccumError.part.0, .-setStrAccumError.part.0
	.section	.text.printfTempBuf,"ax",@progbits
	.align	1
	.type	printfTempBuf, @function
printfTempBuf:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	lbu	a5,28(a0)
	bne	a5,zero,.L2566
	lwu	a5,16(a0)
	mv	s0,a0
	bge	a5,a1,.L2556
	lw	a5,20(a0)
	slli	a4,a5,32
	srli	a4,a4,32
	blt	a4,a1,.L2567
.L2556:
	ld	a0,0(s0)
	call	sqlite3DbMallocRaw
	mv	s1,a0
	beq	a0,zero,.L2568
.L2553:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2567:
	li	a4,18
	sb	a4,28(a0)
	bne	a5,zero,.L2569
.L2557:
	mv	a0,s0
	call	setStrAccumError.part.0
.L2566:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,0
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2568:
	lw	a5,20(s0)
	li	a4,7
	sb	a4,28(s0)
	beq	a5,zero,.L2566
	mv	a0,s0
	call	sqlite3_str_reset@plt
	j	.L2553
.L2569:
	call	sqlite3_str_reset@plt
	j	.L2557
	.size	printfTempBuf, .-printfTempBuf
	.section	.text.sqlite3_stricmp,"ax",@progbits
	.align	1
	.globl	sqlite3_stricmp
	.type	sqlite3_stricmp, @function
sqlite3_stricmp:
	mv	a5,a0
	beq	a0,zero,.L2580
	beq	a1,zero,.L2576
	lbu	a0,0(a5)
	lbu	a4,0(a1)
	lla	a3,.LANCHOR2
	addi	a5,a5,1
	add	a6,a3,a0
	add	a2,a3,a4
	beq	a0,a4,.L2581
.L2573:
	lbu	a0,320(a6)
	lbu	a4,320(a2)
	subw	a0,a0,a4
	bne	a0,zero,.L2572
.L2574:
	lbu	a0,0(a5)
	lbu	a4,1(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	add	a6,a3,a0
	add	a2,a3,a4
	bne	a0,a4,.L2573
.L2581:
	bne	a0,zero,.L2574
	ret
.L2576:
	li	a0,1
.L2572:
	ret
.L2580:
	snez	a1,a1
	neg	a0,a1
	ret
	.size	sqlite3_stricmp, .-sqlite3_stricmp
	.section	.rodata.str1.8
	.align	3
.LC13:
	.string	"sqlite_master"
	.align	3
.LC14:
	.string	"sqlite_temp_master"
	.section	.text.sqlite3FindTable,"ax",@progbits
	.align	1
	.type	sqlite3FindTable, @function
sqlite3FindTable:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	mv	s4,a0
	mv	s3,a1
	mv	s5,a2
	li	s2,1
	lla	s0,.LANCHOR2
.L2597:
	lw	a2,40(s4)
	li	s1,0
	sext.w	a5,a2
	ble	a5,zero,.L2589
.L2583:
	mv	a5,s1
	bgt	s1,s2,.L2585
	xori	a5,s1,1
.L2585:
	ld	t3,32(s4)
	slli	a5,a5,5
	add	t3,t3,a5
	beq	s5,zero,.L2586
	ld	a6,0(t3)
	mv	a4,s5
	lbu	a5,0(a4)
	lbu	a3,0(a6)
	addi	a4,a4,1
	add	t1,s0,a5
	add	a7,s0,a3
	beq	a5,a3,.L2609
.L2587:
	lbu	a3,320(t1)
	lbu	a5,320(a7)
	bne	a3,a5,.L2592
.L2588:
	lbu	a5,0(a4)
	lbu	a3,1(a6)
	addi	a6,a6,1
	addi	a4,a4,1
	add	t1,s0,a5
	add	a7,s0,a3
	bne	a5,a3,.L2587
.L2609:
	bne	a5,zero,.L2588
.L2586:
	ld	a0,24(t3)
	li	a2,0
	mv	a1,s3
	addi	a0,a0,8
	call	findElementWithHash
	ld	a0,16(a0)
	bne	a0,zero,.L2582
	lw	a2,40(s4)
.L2592:
	addiw	s1,s1,1
	sext.w	a5,a2
	bgt	a5,s1,.L2583
.L2589:
	li	a1,115
	lla	a3,.LC13
	j	.L2584
.L2593:
	lbu	a4,320(a2)
	lbu	a5,320(a5)
	bne	a4,a5,.L2596
.L2595:
	lbu	a1,0(a3)
	addi	s3,s3,1
.L2584:
	lbu	a4,0(s3)
	sext.w	a5,a1
	addi	a3,a3,1
	add	a2,s0,a4
	add	a5,s0,a5
	bne	a4,a1,.L2593
	bne	a4,zero,.L2595
	ld	a5,32(s4)
	mv	a0,s5
	lla	s3,.LC14
	ld	a1,32(a5)
	call	sqlite3_stricmp@plt
	beq	a0,zero,.L2597
.L2596:
	li	a0,0
.L2582:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
	.size	sqlite3FindTable, .-sqlite3FindTable
	.section	.rodata.str1.8
	.align	3
.LC15:
	.string	"main"
	.section	.text.sqlite3FindDbName,"ax",@progbits
	.align	1
	.type	sqlite3FindDbName, @function
sqlite3FindDbName:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	beq	a1,zero,.L2614
	lw	s0,40(a0)
	ld	s1,32(a0)
	mv	s2,a1
	addiw	s0,s0,-1
	slli	a5,s0,5
	add	s1,s1,a5
	bge	s0,zero,.L2613
	j	.L2611
.L2612:
	addiw	s0,s0,-1
.L2613:
	ld	a0,0(s1)
	mv	a1,s2
	addi	s1,s1,-32
	call	sqlite3_stricmp@plt
	beq	a0,zero,.L2611
	bne	s0,zero,.L2612
	mv	a1,s2
	lla	a0,.LC15
	call	sqlite3_stricmp@plt
	snez	s0,a0
	neg	s0,s0
.L2611:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L2614:
	li	s0,-1
	j	.L2611
	.size	sqlite3FindDbName, .-sqlite3FindDbName
	.section	.text.sqlite3DbNameToBtree,"ax",@progbits
	.align	1
	.type	sqlite3DbNameToBtree, @function
sqlite3DbNameToBtree:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	beq	a1,zero,.L2622
	call	sqlite3FindDbName
	mv	a5,a0
	li	a0,0
	blt	a5,zero,.L2619
	slli	a5,a5,5
.L2620:
	ld	a0,32(s0)
	add	a5,a0,a5
	ld	a0,8(a5)
.L2619:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L2622:
	li	a5,0
	j	.L2620
	.size	sqlite3DbNameToBtree, .-sqlite3DbNameToBtree
	.section	.text.sqlite3_file_control,"ax",@progbits
	.align	1
	.globl	sqlite3_file_control
	.type	sqlite3_file_control, @function
sqlite3_file_control:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a2
	mv	s1,a3
	call	sqlite3DbNameToBtree
	beq	a0,zero,.L2632
	ld	a5,8(a0)
	ld	a3,0(a0)
	li	a4,7
	sd	a3,8(a5)
	ld	a5,8(a0)
	ld	a5,0(a5)
	ld	a0,72(a5)
	beq	s0,a4,.L2638
	li	a4,27
	beq	s0,a4,.L2639
	li	a4,28
	beq	s0,a4,.L2640
	li	a4,35
	beq	s0,a4,.L2641
	ld	a5,0(a0)
	beq	a5,zero,.L2633
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	t1,80(a5)
	mv	a2,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	t1
.L2638:
	sd	a0,0(s1)
	li	a0,0
.L2626:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2632:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,1
	addi	sp,sp,32
	jr	ra
.L2641:
	lw	a5,132(a5)
	li	a0,0
	sw	a5,0(s1)
	j	.L2626
.L2639:
	ld	a5,0(a5)
	li	a0,0
	sd	a5,0(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L2640:
	ld	a4,288(a5)
	ld	a5,80(a5)
	beq	a4,zero,.L2630
	ld	a5,16(a4)
.L2630:
	sd	a5,0(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L2633:
	li	a0,12
	j	.L2626
	.size	sqlite3_file_control, .-sqlite3_file_control
	.section	.text.memdbFromDbSchema,"ax",@progbits
	.align	1
	.type	memdbFromDbSchema, @function
memdbFromDbSchema:
	addi	sp,sp,-32
	addi	a3,sp,8
	li	a2,7
	sd	ra,24(sp)
	sd	zero,8(sp)
	call	sqlite3_file_control@plt
	bne	a0,zero,.L2645
	ld	a0,8(sp)
	lla	a5,.LANCHOR3+304
	ld	a4,0(a0)
	bne	a4,a5,.L2645
	ld	ra,24(sp)
	addi	sp,sp,32
	jr	ra
.L2645:
	ld	ra,24(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	memdbFromDbSchema, .-memdbFromDbSchema
	.section	.text.sqlite3_db_filename,"ax",@progbits
	.align	1
	.globl	sqlite3_db_filename
	.type	sqlite3_db_filename, @function
sqlite3_db_filename:
	addi	sp,sp,-16
	sd	ra,8(sp)
	call	sqlite3DbNameToBtree
	beq	a0,zero,.L2647
	ld	a5,8(a0)
	lla	a0,.LC12
	ld	a5,0(a5)
	lbu	a4,19(a5)
	bne	a4,zero,.L2647
	ld	a0,208(a5)
.L2647:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_db_filename, .-sqlite3_db_filename
	.section	.text.sqlite3_db_readonly,"ax",@progbits
	.align	1
	.globl	sqlite3_db_readonly
	.type	sqlite3_db_readonly, @function
sqlite3_db_readonly:
	addi	sp,sp,-16
	sd	ra,8(sp)
	call	sqlite3DbNameToBtree
	beq	a0,zero,.L2656
	ld	a5,8(a0)
	lhu	a0,38(a5)
	andi	a0,a0,1
.L2655:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
.L2656:
	li	a0,-1
	j	.L2655
	.size	sqlite3_db_readonly, .-sqlite3_db_readonly
	.section	.text.sqlite3FindDb,"ax",@progbits
	.align	1
	.type	sqlite3FindDb, @function
sqlite3FindDb:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s1,a0
	call	sqlite3NameFromToken
	mv	a1,a0
	mv	s0,a0
	mv	a0,s1
	call	sqlite3FindDbName
	mv	s2,a0
	beq	s0,zero,.L2659
	mv	a1,s0
	mv	a0,s1
	call	sqlite3DbFreeNN
.L2659:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3FindDb, .-sqlite3FindDb
	.section	.rodata.str1.8
	.align	3
.LC16:
	.string	"journal_mode"
	.section	.text.pragmaLocate,"ax",@progbits
	.align	1
	.type	pragmaLocate, @function
pragmaLocate:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	mv	s2,a0
	lla	a1,.LC16
	li	s1,0
	li	s4,58
	li	a4,58
	lla	s3,.LANCHOR3
	j	.L2669
.L2666:
	addiw	s1,s0,1
	addw	a4,s4,s1
	sraiw	a3,a4,1
	slli	a5,a3,1
	add	a5,a5,a3
	slli	a5,a5,3
	add	a5,s3,a5
	blt	s4,s1,.L2670
.L2672:
	ld	a1,456(a5)
.L2669:
	mv	a0,s2
	sraiw	s0,a4,1
	call	sqlite3_stricmp@plt
	sext.w	a5,s0
	beq	a0,zero,.L2665
	bge	a0,zero,.L2666
	addiw	s4,s0,-1
	addw	a4,s4,s1
	sraiw	a3,a4,1
	slli	a5,a3,1
	add	a5,a5,a3
	slli	a5,a5,3
	add	a5,s3,a5
	bge	s4,s1,.L2672
.L2670:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L2665:
	ld	ra,40(sp)
	ld	s0,32(sp)
	slli	a0,a5,1
	add	a5,a0,a5
	slli	a5,a5,3
	lla	a0,.LANCHOR3+456
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	add	a0,a0,a5
	addi	sp,sp,48
	jr	ra
	.size	pragmaLocate, .-pragmaLocate
	.section	.rodata.str1.8
	.align	3
.LC17:
	.string	"node"
	.align	3
.LC18:
	.string	"parent"
	.align	3
.LC19:
	.string	"rowid"
	.section	.text.rtreeShadowName,"ax",@progbits
	.align	1
	.type	rtreeShadowName, @function
rtreeShadowName:
	addi	sp,sp,-16
	lla	a1,.LC17
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_stricmp@plt
	beq	a0,zero,.L2674
	lla	a1,.LC18
	mv	a0,s0
	call	sqlite3_stricmp@plt
	beq	a0,zero,.L2674
	lla	a1,.LC19
	mv	a0,s0
	call	sqlite3_stricmp@plt
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L2674
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L2674:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
	.size	rtreeShadowName, .-rtreeShadowName
	.section	.text.sqlite3_strnicmp,"ax",@progbits
	.align	1
	.globl	sqlite3_strnicmp
	.type	sqlite3_strnicmp, @function
sqlite3_strnicmp:
	beq	a0,zero,.L2697
	beq	a1,zero,.L2690
	addiw	a4,a2,-1
	lla	a3,.LANCHOR2
	li	a6,-1
	bgt	a2,zero,.L2687
	j	.L2688
.L2698:
	lbu	a5,0(a1)
	lbu	a2,320(a2)
	add	a5,a3,a5
	lbu	a5,320(a5)
	bne	a2,a5,.L2688
	addiw	a4,a4,-1
	addi	a0,a0,1
	addi	a1,a1,1
	beq	a4,a6,.L2692
.L2687:
	lbu	a5,0(a0)
	add	a2,a3,a5
	bne	a5,zero,.L2698
.L2688:
	blt	a4,zero,.L2692
	lbu	a4,0(a0)
	lbu	a3,0(a1)
	lla	a5,.LANCHOR2
	add	a4,a5,a4
	add	a5,a5,a3
	lbu	a0,320(a4)
	lbu	a1,320(a5)
	subw	a0,a0,a1
	ret
.L2692:
	li	a0,0
	ret
.L2697:
	snez	a1,a1
	neg	a0,a1
	ret
.L2690:
	li	a0,1
	ret
	.size	sqlite3_strnicmp, .-sqlite3_strnicmp
	.section	.text.sqlite3MatchSpanName,"ax",@progbits
	.align	1
	.type	sqlite3MatchSpanName, @function
sqlite3MatchSpanName:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	lbu	a4,0(a0)
	mv	s0,a0
	mv	s4,a2
	mv	s1,a1
	mv	s3,a3
	li	a2,0
	li	s2,0
	li	a0,46
	beq	a4,zero,.L2701
.L2700:
	beq	a4,a0,.L2701
	addiw	a2,a2,1
	add	a5,s0,a2
	lbu	a4,0(a5)
	mv	s2,a2
	bne	a4,zero,.L2700
.L2701:
	beq	s3,zero,.L2707
	mv	a1,s3
	mv	a0,s0
	call	sqlite3_strnicmp@plt
	bne	a0,zero,.L2706
	add	s3,s3,s2
	lbu	a5,0(s3)
	bne	a5,zero,.L2706
.L2707:
	addi	a5,s2,1
	add	s0,s0,a5
	lbu	a4,0(s0)
	li	a2,0
	li	s2,0
	li	a3,46
	beq	a4,zero,.L2705
.L2704:
	beq	a4,a3,.L2705
	addiw	a2,a2,1
	add	a5,s0,a2
	lbu	a4,0(a5)
	mv	s2,a2
	bne	a4,zero,.L2704
.L2705:
	beq	s4,zero,.L2712
	mv	a1,s4
	mv	a0,s0
	call	sqlite3_strnicmp@plt
	bne	a0,zero,.L2706
	add	s4,s4,s2
	lbu	a5,0(s4)
	bne	a5,zero,.L2706
.L2712:
	addi	a5,s2,1
	add	a5,s0,a5
	lla	a2,.LANCHOR2
	beq	s1,zero,.L2718
	lbu	a4,0(a5)
	lbu	a3,0(s1)
	addi	a5,a5,1
	add	a0,a2,a4
	add	a1,a2,a3
	beq	a4,a3,.L2730
.L2713:
	lbu	a3,320(a0)
	lbu	a4,320(a1)
	bne	a3,a4,.L2706
.L2714:
	lbu	a4,0(a5)
	lbu	a3,1(s1)
	addi	s1,s1,1
	addi	a5,a5,1
	add	a0,a2,a4
	add	a1,a2,a3
	bne	a4,a3,.L2713
.L2730:
	bne	a4,zero,.L2714
.L2718:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,1
	addi	sp,sp,48
	jr	ra
.L2706:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
	.size	sqlite3MatchSpanName, .-sqlite3MatchSpanName
	.section	.rodata.str1.8
	.align	3
.LC20:
	.string	"create"
	.align	3
.LC21:
	.string	"trigger"
	.align	3
.LC22:
	.string	"temp"
	.align	3
.LC23:
	.string	"temporary"
	.align	3
.LC24:
	.string	"end"
	.section	.text.sqlite3_complete,"ax",@progbits
	.align	1
	.globl	sqlite3_complete
	.type	sqlite3_complete, @function
sqlite3_complete:
	lbu	a5,0(a0)
	beq	a5,zero,.L2779
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	ra,72(sp)
	sd	s8,0(sp)
	li	s0,0
	li	s4,87
	lla	s2,.LANCHOR2
	li	s6,101
	li	s7,116
	lla	s1,.L2761
	lla	s3,.L2735
	li	s5,47
.L2775:
	addiw	a3,a5,-9
	andi	a3,a3,0xff
	lbu	a4,1(a0)
	bgtu	a3,s4,.L2733
	slli	a3,a3,2
	add	a3,a3,s3
	lw	a3,0(a3)
	add	a3,a3,s3
	jr	a3
	.section	.rodata
	.align	2
	.align	2
.L2735:
	.word	.L2740-.L2735
	.word	.L2740-.L2735
	.word	.L2733-.L2735
	.word	.L2740-.L2735
	.word	.L2740-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2740-.L2735
	.word	.L2733-.L2735
	.word	.L2734-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2734-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2739-.L2735
	.word	.L2733-.L2735
	.word	.L2738-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2737-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2736-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2733-.L2735
	.word	.L2734-.L2735
	.section	.text.sqlite3_complete
.L2733:
	sext.w	a3,a5
	add	a3,s2,a3
	lbu	a3,64(a3)
	andi	a3,a3,70
	bne	a3,zero,.L2755
.L2805:
	addi	a0,a0,1
.L2804:
	mv	a5,a4
	li	a4,2
.L2741:
	slli	s0,s0,3
	add	s0,s2,s0
	add	s0,s0,a4
	lbu	s0,1912(s0)
	bne	a5,zero,.L2775
.L2749:
	addi	a0,s0,-1
	seqz	a0,a0
	j	.L2795
.L2740:
	mv	a5,a4
	addi	a0,a0,1
	li	a4,1
	j	.L2741
.L2755:
	add	a3,s2,a4
	lbu	a3,64(a3)
	andi	a3,a3,70
	beq	a3,zero,.L2756
	li	a3,1
.L2757:
	addiw	a3,a3,1
	add	a4,a0,a3
	lbu	a4,0(a4)
	add	a4,s2,a4
	lbu	a4,64(a4)
	andi	a4,a4,70
	bne	a4,zero,.L2757
	addi	s8,a3,-1
	add	s8,a0,s8
	bgtu	a5,s6,.L2758
	li	a4,66
	bleu	a5,a4,.L2776
	addiw	a5,a5,-67
	andi	a5,a5,0xff
	li	a4,34
	bgtu	a5,a4,.L2776
	slli	a5,a5,2
	add	a5,a5,s1
	lw	a5,0(a5)
	add	a5,a5,s1
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L2761:
	.word	.L2762-.L2761
	.word	.L2776-.L2761
	.word	.L2760-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2763-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2776-.L2761
	.word	.L2762-.L2761
	.word	.L2776-.L2761
	.word	.L2760-.L2761
	.section	.text.sqlite3_complete
.L2734:
	addi	a0,a0,1
	beq	a4,zero,.L2782
.L2753:
	mv	a3,a4
	addi	a0,a0,1
	lbu	a4,0(a0)
	beq	a3,a5,.L2804
	bne	a4,zero,.L2753
.L2782:
	li	a0,0
.L2795:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
.L2784:
	mv	s8,a0
.L2776:
	lbu	a5,1(s8)
	li	a4,2
.L2764:
	addi	a0,s8,1
	j	.L2741
.L2736:
	addi	a0,a0,1
	beq	a4,zero,.L2782
	li	a3,93
.L2751:
	mv	a5,a4
	addi	a0,a0,1
	lbu	a4,0(a0)
	beq	a5,a3,.L2804
	bne	a4,zero,.L2751
	j	.L2782
.L2738:
	li	a5,42
	bne	a4,a5,.L2805
	lbu	a5,2(a0)
	addi	a0,a0,2
	beq	a5,zero,.L2782
	li	a3,42
	j	.L2743
.L2745:
	addi	a0,a0,1
	beq	a5,zero,.L2782
.L2743:
	mv	a4,a5
	lbu	a5,1(a0)
	bne	a4,a3,.L2745
	bne	a5,s5,.L2745
	lbu	a5,2(a0)
	li	a4,1
	addi	a0,a0,2
	j	.L2741
.L2739:
	li	a5,45
	bne	a4,a5,.L2805
	lbu	a5,0(a0)
	beq	a5,zero,.L2749
	li	a3,10
	j	.L2748
.L2750:
	beq	a4,zero,.L2749
	mv	a5,a4
	lbu	a4,1(a0)
.L2748:
	addi	a0,a0,1
	bne	a5,a3,.L2750
	mv	a5,a4
	li	a4,1
	j	.L2741
.L2737:
	mv	a5,a4
	addi	a0,a0,1
	li	a4,0
	j	.L2741
.L2758:
	bne	a5,s7,.L2776
.L2763:
	li	a5,7
	beq	a3,a5,.L2806
	li	a5,4
	beq	a3,a5,.L2769
	li	a5,9
	beq	a3,a5,.L2770
	mv	a0,s8
.L2778:
	mv	s8,a0
	lbu	a5,1(a0)
	li	a4,2
	addi	a0,s8,1
	j	.L2741
.L2762:
	li	a5,6
	bne	a3,a5,.L2776
	li	a2,6
	lla	a1,.LC20
	call	sqlite3_strnicmp@plt
	lbu	a5,1(s8)
	li	a4,4
	beq	a0,zero,.L2764
.L2774:
	li	a4,2
.L2807:
	addi	a0,s8,1
	j	.L2741
.L2760:
	li	a5,3
	bne	a3,a5,.L2776
	li	a2,3
	lla	a1,.LC24
	call	sqlite3_strnicmp@plt
	lbu	a5,1(s8)
	li	a4,7
	beq	a0,zero,.L2764
	li	a4,2
	j	.L2807
.L2806:
	li	a2,7
	lla	a1,.LC21
	call	sqlite3_strnicmp@plt
	lbu	a5,1(s8)
	li	a4,6
	beq	a0,zero,.L2764
	li	a4,2
	j	.L2807
.L2756:
	beq	a5,s6,.L2784
	bgtu	a5,s6,.L2777
	li	a3,69
	beq	a5,a3,.L2784
	li	a3,84
	beq	a5,a3,.L2778
.L2802:
	mv	s8,a0
	mv	a5,a4
	addi	a0,s8,1
	li	a4,2
	j	.L2741
.L2777:
	bne	a5,s7,.L2802
	j	.L2778
.L2769:
	li	a2,4
	lla	a1,.LC22
	call	sqlite3_strnicmp@plt
	lbu	a5,1(s8)
	bne	a0,zero,.L2774
	li	a4,5
.L2808:
	addi	a0,s8,1
	j	.L2741
.L2770:
	li	a2,9
	lla	a1,.LC23
	call	sqlite3_strnicmp@plt
	lbu	a5,1(s8)
	bne	a0,zero,.L2774
	li	a4,5
	j	.L2808
.L2779:
	li	a0,0
	ret
	.size	sqlite3_complete, .-sqlite3_complete
	.section	.text.nocaseCollatingFunc,"ax",@progbits
	.align	1
	.type	nocaseCollatingFunc, @function
nocaseCollatingFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a1
	mv	a0,a2
	mv	s0,a3
	mv	a1,a4
	sext.w	a2,s1
	bgt	a3,s1,.L2810
	sext.w	a2,a3
.L2810:
	call	sqlite3_strnicmp@plt
	bne	a0,zero,.L2811
	subw	a0,s1,s0
.L2811:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	nocaseCollatingFunc, .-nocaseCollatingFunc
	.section	.rodata.str1.8
	.align	3
.LC25:
	.string	"COMPILER=gcc-9.2.0"
	.align	3
.LC26:
	.string	"SQLITE_"
	.section	.text.sqlite3_compileoption_used,"ax",@progbits
	.align	1
	.globl	sqlite3_compileoption_used
	.type	sqlite3_compileoption_used, @function
sqlite3_compileoption_used:
	addi	sp,sp,-48
	li	a2,7
	lla	a1,.LC26
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	mv	s1,a0
	call	sqlite3_strnicmp@plt
	bne	a0,zero,.L2815
	addi	s1,s1,7
.L2816:
	mv	a0,s1
	call	strlen@plt
	slli	s4,a0,34
	srli	s4,s4,34
.L2817:
	lla	s0,.LANCHOR3
	lla	s2,.LANCHOR3+152
	lla	a1,.LC25
	lla	s3,.LANCHOR2
	j	.L2820
.L2826:
	ld	a1,0(s0)
.L2820:
	mv	a2,s4
	mv	a0,s1
	call	sqlite3_strnicmp@plt
	bne	a0,zero,.L2818
	ld	a5,0(s0)
	add	a5,a5,s4
	lbu	a5,0(a5)
	add	a5,s3,a5
	lbu	a5,64(a5)
	andi	a5,a5,70
	beq	a5,zero,.L2822
.L2818:
	addi	s0,s0,8
	bne	s2,s0,.L2826
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L2815:
	li	s4,0
	bne	s1,zero,.L2816
	j	.L2817
.L2822:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,1
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_compileoption_used, .-sqlite3_compileoption_used
	.section	.text.sqlite3PutVarint,"ax",@progbits
	.align	1
	.type	sqlite3PutVarint, @function
sqlite3PutVarint:
	li	a3,127
	bleu	a1,a3,.L2831
	li	a3,16384
	bltu	a1,a3,.L2832
	tail	putVarint64
.L2832:
	srli	a3,a1,7
	ori	a3,a3,-128
	andi	a5,a1,127
	sb	a3,0(a0)
	sb	a5,1(a0)
	li	a0,2
	ret
.L2831:
	sb	a1,0(a0)
	li	a0,1
	ret
	.size	sqlite3PutVarint, .-sqlite3PutVarint
	.section	.text.vdbePmaWriteVarint,"ax",@progbits
	.align	1
	.type	vdbePmaWriteVarint, @function
vdbePmaWriteVarint:
	addi	sp,sp,-48
	sd	s0,32(sp)
	mv	s0,sp
	sd	s1,24(sp)
	mv	s1,a0
	mv	a0,s0
	sd	ra,40(sp)
	call	sqlite3PutVarint
	mv	a2,a0
	mv	a1,s0
	mv	a0,s1
	call	vdbePmaWriteBlob
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	vdbePmaWriteVarint, .-vdbePmaWriteVarint
	.section	.text.sqlite3GetVarint32,"ax",@progbits
	.align	1
	.type	sqlite3GetVarint32, @function
sqlite3GetVarint32:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	lbu	a3,1(a0)
	lbu	a4,0(a0)
	mv	s0,a1
	slliw	a2,a3,24
	sraiw	a2,a2,24
	bge	a2,zero,.L2841
	lbu	a5,2(a0)
	slliw	a4,a4,14
	or	a5,a5,a4
	sext.w	a5,a5
	andi	a4,a5,128
	beq	a4,zero,.L2842
	addi	a1,sp,8
	call	sqlite3GetVarint
	ld	a5,8(sp)
	li	a4,-1
	srli	a4,a4,32
	and	a3,a5,a4
	beq	a5,a3,.L2839
	mv	a5,a4
.L2839:
	sw	a5,0(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L2842:
	li	a4,2080768
	andi	a3,a3,127
	addi	a4,a4,127
	and	a5,a5,a4
	slliw	a3,a3,7
	or	a5,a5,a3
	sw	a5,0(a1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	a0,3
	addi	sp,sp,32
	jr	ra
.L2841:
	andi	a4,a4,127
	slliw	a4,a4,7
	or	a4,a3,a4
	sw	a4,0(a1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	a0,2
	addi	sp,sp,32
	jr	ra
	.size	sqlite3GetVarint32, .-sqlite3GetVarint32
	.section	.text.sqlite3LogEstAdd,"ax",@progbits
	.align	1
	.type	sqlite3LogEstAdd, @function
sqlite3LogEstAdd:
	sext.w	a5,a1
	sext.w	a4,a0
	blt	a0,a1,.L2844
	addiw	a3,a5,49
	blt	a3,a4,.L2845
	addiw	a3,a5,31
	blt	a3,a4,.L2850
	subw	a5,a4,a5
.L2851:
	lla	a4,.LANCHOR2
	add	a5,a4,a5
	lbu	a1,1976(a5)
	addw	a1,a1,a0
	slliw	a0,a1,16
	sraiw	a0,a0,16
.L2845:
	ret
.L2844:
	addiw	a3,a4,49
	mv	a0,a1
	blt	a3,a5,.L2845
	addiw	a3,a4,31
	bge	a3,a5,.L2847
.L2850:
	addiw	a1,a0,1
	slliw	a0,a1,16
	sraiw	a0,a0,16
	ret
.L2847:
	subw	a5,a5,a4
	j	.L2851
	.size	sqlite3LogEstAdd, .-sqlite3LogEstAdd
	.section	.text.insertElement.isra.0,"ax",@progbits
	.align	1
	.type	insertElement.isra.0, @function
insertElement.isra.0:
	beq	a1,zero,.L2855
	lw	a5,0(a1)
	beq	a5,zero,.L2869
	ld	a4,8(a1)
	addiw	a5,a5,1
	sw	a5,0(a1)
	sd	a2,8(a1)
	beq	a4,zero,.L2855
	sd	a4,0(a2)
	ld	a5,8(a4)
	sd	a5,8(a2)
	beq	a5,zero,.L2856
	sd	a2,0(a5)
	sd	a2,8(a4)
	ret
.L2869:
	li	a5,1
	sw	a5,0(a1)
	sd	a2,8(a1)
.L2855:
	ld	a5,0(a0)
	sd	a5,0(a2)
	beq	a5,zero,.L2859
	sd	a2,8(a5)
.L2859:
	sd	zero,8(a2)
	sd	a2,0(a0)
	ret
.L2856:
	sd	a2,0(a0)
	sd	a2,8(a4)
	ret
	.size	insertElement.isra.0, .-insertElement.isra.0
	.section	.text.sqlite3HashInsert,"ax",@progbits
	.align	1
	.type	sqlite3HashInsert, @function
sqlite3HashInsert:
	addi	sp,sp,-112
	sd	s2,80(sp)
	mv	s2,a2
	addi	a2,sp,12
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s4,64(sp)
	sd	ra,104(sp)
	sd	s3,72(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s7,40(sp)
	sd	s8,32(sp)
	sd	s9,24(sp)
	mv	s0,a0
	mv	s1,a1
	call	findElementWithHash
	ld	s4,16(a0)
	beq	s4,zero,.L2871
	beq	s2,zero,.L2914
	sd	s2,16(a0)
	sd	s1,24(a0)
.L2870:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	mv	a0,s4
	ld	s4,64(sp)
	addi	sp,sp,112
	jr	ra
.L2871:
	beq	s2,zero,.L2870
	li	a0,32
	call	sqlite3Malloc
	mv	s5,a0
	beq	a0,zero,.L2891
	sd	s1,24(a0)
	sd	s2,16(a0)
	lw	a5,4(s0)
	li	a3,9
	addi	s6,s0,8
	addiw	a4,a5,1
	sw	a4,4(s0)
	bleu	a4,a3,.L2880
	lw	a2,0(s0)
	slliw	a3,a2,1
	bltu	a3,a4,.L2915
.L2880:
	ld	a1,16(s0)
	beq	a1,zero,.L2889
	lwu	a5,12(sp)
	slli	a5,a5,4
	add	a1,a1,a5
.L2889:
	mv	a2,s5
	mv	a0,s6
	call	insertElement.isra.0
	j	.L2870
.L2914:
	ld	a5,8(a0)
	lw	a4,12(sp)
	ld	a3,0(a0)
	beq	a5,zero,.L2873
	sd	a3,0(a5)
.L2874:
	ld	a5,0(a0)
	beq	a5,zero,.L2875
	ld	a3,8(a0)
	sd	a3,8(a5)
.L2875:
	ld	a5,16(s0)
	beq	a5,zero,.L2876
	slli	a4,a4,32
	srli	a4,a4,28
	add	a5,a5,a4
	ld	a4,8(a5)
	beq	a0,a4,.L2916
.L2877:
	lw	a4,0(a5)
	addiw	a4,a4,-1
	sw	a4,0(a5)
.L2876:
	call	sqlite3_free@plt
	lw	a5,4(s0)
	addiw	a4,a5,-1
	sw	a4,4(s0)
	bne	a4,zero,.L2870
	mv	a0,s0
	call	sqlite3HashClear
	j	.L2870
.L2891:
	mv	s4,s2
	j	.L2870
.L2915:
	slliw	a5,a4,1
	slli	a4,a5,32
	srli	a4,a4,28
	li	a3,1024
	bleu	a4,a3,.L2882
	li	a5,64
.L2882:
	beq	a2,a5,.L2880
	slli	a5,a5,32
	srli	a0,a5,28
	call	sqlite3Malloc
	mv	s2,a0
	beq	a0,zero,.L2880
	ld	a0,16(s0)
	li	s7,-1640529920
	lla	s8,.LANCHOR2
	call	sqlite3_free@plt
	ld	a5,.LANCHOR1+72
	mv	a0,s2
	sd	s2,16(s0)
	jalr	a5
	srli	a0,a0,4
	slli	a2,a0,32
	sext.w	s3,a0
	srli	a2,a2,32
	slli	a2,a2,4
	sw	s3,0(s0)
	li	a1,0
	mv	a0,s2
	call	memset@plt
	ld	a2,8(s0)
	sd	zero,8(s0)
	addiw	s7,s7,-1615
	beq	a2,zero,.L2888
.L2883:
	ld	a3,24(a2)
	lbu	a4,0(a3)
	addi	a3,a3,1
	beq	a4,zero,.L2893
	li	a5,0
.L2887:
	add	a4,s8,a4
	lbu	a1,320(a4)
	lbu	a4,0(a3)
	addi	a3,a3,1
	addw	a5,a1,a5
	mulw	a5,a5,s7
	bne	a4,zero,.L2887
	remuw	a5,a5,s3
	slli	a5,a5,32
	srli	a5,a5,28
	add	a1,s2,a5
.L2886:
	ld	s9,0(a2)
	mv	a0,s6
	call	insertElement.isra.0
	beq	s9,zero,.L2888
	mv	a2,s9
	j	.L2883
.L2916:
	ld	a4,0(a0)
	sd	a4,8(a5)
	j	.L2877
.L2873:
	sd	a3,8(s0)
	j	.L2874
.L2888:
	lbu	a5,0(s1)
	li	a2,-1640529920
	addi	s1,s1,1
	li	a4,0
	lla	a1,.LANCHOR2
	addiw	a2,a2,-1615
	beq	a5,zero,.L2885
.L2884:
	add	a5,a1,a5
	lbu	a3,320(a5)
	lbu	a5,0(s1)
	addi	s1,s1,1
	addw	a4,a3,a4
	mulw	a4,a4,a2
	bne	a5,zero,.L2884
.L2885:
	lw	a5,0(s0)
	remuw	a4,a4,a5
	sw	a4,12(sp)
	j	.L2880
.L2893:
	mv	a1,s2
	j	.L2886
	.size	sqlite3HashInsert, .-sqlite3HashInsert
	.section	.text.findCollSeqEntry,"ax",@progbits
	.align	1
	.type	findCollSeqEntry, @function
findCollSeqEntry:
	addi	sp,sp,-64
	sd	s4,16(sp)
	addi	s4,a0,512
	sd	s0,48(sp)
	sd	s1,40(sp)
	mv	s0,a0
	mv	s1,a2
	mv	a0,s4
	li	a2,0
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	mv	s3,a1
	call	findElementWithHash
	ld	s2,16(a0)
	beq	s2,zero,.L2930
.L2917:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	jr	ra
.L2930:
	beq	s1,zero,.L2917
	beq	s3,zero,.L2924
	mv	a0,s3
	call	strlen@plt
	slli	a1,a0,34
	srli	a1,a1,34
	addi	s5,a1,1
	addi	a1,a1,121
.L2920:
	mv	a0,s0
	call	sqlite3DbMallocZero
	mv	s1,a0
	beq	a0,zero,.L2917
	li	a4,2
	addi	a5,a0,120
	sb	a4,48(a0)
	li	s6,1
	li	a4,3
	sd	a5,0(a0)
	sd	a5,40(a0)
	sd	a5,80(a0)
	sb	a4,88(a0)
	mv	a1,s3
	sb	s6,8(a0)
	mv	a2,s5
	mv	a0,a5
	call	memcpy@plt
	mv	a1,a0
	mv	a2,s1
	mv	a0,s4
	call	sqlite3HashInsert
	mv	s3,a0
	beq	a0,zero,.L2925
	ld	a5,96(s0)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L2922
	lw	a5,196(s0)
	sb	s6,97(s0)
	ble	a5,zero,.L2923
	sw	s6,352(s0)
.L2923:
	mv	a0,s0
	call	sqlite3OomFault.part.0
.L2922:
	mv	a1,s3
	mv	a0,s0
	call	sqlite3DbFreeNN
	j	.L2917
.L2925:
	mv	s2,s1
	j	.L2917
.L2924:
	li	a1,121
	li	s5,1
	j	.L2920
	.size	findCollSeqEntry, .-findCollSeqEntry
	.section	.text.sqlite3FindFunction,"ax",@progbits
	.align	1
	.type	sqlite3FindFunction, @function
sqlite3FindFunction:
	addi	sp,sp,-96
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
	mv	s6,a1
	mv	s7,a0
	mv	s1,a2
	mv	s2,a3
	mv	s5,a4
	beq	a1,zero,.L2953
	mv	a0,a1
	call	strlen@plt
	slli	a0,a0,34
	addi	s8,s7,488
	srli	s9,a0,34
	li	a2,0
	mv	a1,s6
	mv	a0,s8
	call	findElementWithHash
	ld	s0,16(a0)
	beq	s0,zero,.L2933
.L2977:
	li	s3,0
	li	s4,0
.L2935:
	mv	a0,s0
	mv	a2,s2
	mv	a1,s1
	call	matchQuality
	ble	a0,s3,.L2934
	mv	s4,s0
	mv	s3,a0
.L2934:
	ld	s0,16(s0)
	bne	s0,zero,.L2935
	bne	s5,zero,.L2939
	beq	s4,zero,.L2937
	lw	a5,44(s7)
	andi	a5,a5,2
	beq	a5,zero,.L2941
	lbu	a4,0(s6)
	lla	a5,.LANCHOR2
	mv	a1,s6
	add	a5,a5,a4
	lbu	a0,320(a5)
	li	a5,23
	addw	a0,a0,s9
	remw	a0,a0,a5
	call	sqlite3FunctionSearch
	mv	s0,a0
	beq	a0,zero,.L2941
.L2952:
	li	s3,0
.L2943:
	mv	a0,s0
	mv	a2,s2
	mv	a1,s1
	call	matchQuality
	ble	a0,s3,.L2942
	mv	s4,s0
	mv	s3,a0
.L2942:
	ld	s0,16(s0)
	bne	s0,zero,.L2943
.L2944:
	beq	s4,zero,.L2945
.L2951:
	ld	a5,24(s4)
	beq	a5,zero,.L2975
.L2931:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	ld	s9,8(sp)
	mv	a0,s4
	ld	s4,48(sp)
	addi	sp,sp,96
	jr	ra
.L2939:
	li	a5,5
	bgt	s3,a5,.L2944
.L2938:
	addi	a1,s9,73
	mv	a0,s7
	call	sqlite3DbMallocZero
	mv	s4,a0
	beq	a0,zero,.L2945
	addi	a4,a0,72
	sd	a4,56(a0)
	sb	s1,0(a0)
	sw	s2,4(a0)
	addiw	a2,s9,1
	mv	a0,a4
	mv	a1,s6
	call	memcpy@plt
	lbu	a5,72(s4)
	mv	a4,a0
	beq	a5,zero,.L2946
	lla	a3,.LANCHOR2
.L2947:
	add	a5,a3,a5
	lbu	a5,320(a5)
	addi	a4,a4,1
	sb	a5,-1(a4)
	lbu	a5,0(a4)
	bne	a5,zero,.L2947
	ld	a4,56(s4)
.L2946:
	mv	a2,s4
	mv	a1,a4
	mv	a0,s8
	call	sqlite3HashInsert
	beq	s4,a0,.L2976
	sd	a0,16(s4)
	j	.L2951
.L2941:
	ld	a5,24(s4)
	bne	a5,zero,.L2931
.L2945:
	li	s4,0
	j	.L2931
.L2975:
	bne	s5,zero,.L2931
	j	.L2945
.L2953:
	addi	s8,s7,488
	li	a2,0
	mv	a1,s6
	mv	a0,s8
	call	findElementWithHash
	ld	s0,16(a0)
	li	s9,0
	bne	s0,zero,.L2977
.L2933:
	bne	s5,zero,.L2938
.L2937:
	lbu	a4,0(s6)
	lla	a5,.LANCHOR2
	mv	a1,s6
	add	a5,a5,a4
	lbu	a0,320(a5)
	li	a5,23
	li	s4,0
	addw	a0,a0,s9
	remw	a0,a0,a5
	call	sqlite3FunctionSearch
	mv	s0,a0
	bne	a0,zero,.L2952
	li	s4,0
	j	.L2931
.L2976:
	mv	a1,s4
	mv	a0,s7
	call	sqlite3DbFreeNN
	ld	a5,96(s7)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L2945
	lw	a4,196(s7)
	li	a5,1
	sb	a5,97(s7)
	ble	a4,zero,.L2949
	sw	a5,352(s7)
.L2949:
	mv	a0,s7
	call	sqlite3OomFault.part.0
	li	s4,0
	j	.L2931
	.size	sqlite3FindFunction, .-sqlite3FindFunction
	.section	.text.sqlite3VtabCreateModule,"ax",@progbits
	.align	1
	.type	sqlite3VtabCreateModule, @function
sqlite3VtabCreateModule:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s2,32(sp)
	mv	s3,a1
	mv	s1,a0
	mv	s5,a2
	mv	s4,a3
	mv	s6,a4
	beq	a1,zero,.L2985
	mv	a0,a1
	call	strlen@plt
	slli	s2,a0,34
	srli	s2,s2,34
	addi	a0,s2,41
.L2979:
	call	sqlite3Malloc
	mv	s0,a0
	beq	a0,zero,.L2990
	addi	a5,a0,40
	addiw	a2,s2,1
	mv	a1,s3
	mv	a0,a5
	call	memcpy@plt
	sd	a0,8(s0)
	mv	a1,a0
	mv	a2,s0
	sd	s5,0(s0)
	sd	s4,16(s0)
	sd	s6,24(s0)
	sd	zero,32(s0)
	addi	a0,s1,440
	call	sqlite3HashInsert
	mv	s2,a0
	bne	a0,zero,.L2991
.L2978:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L2991:
	ld	a5,96(s1)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L2983
	lw	a4,196(s1)
	li	a5,1
	sb	a5,97(s1)
	ble	a4,zero,.L2984
	sw	a5,352(s1)
.L2984:
	mv	a0,s1
	call	sqlite3OomFault.part.0
.L2983:
	mv	a1,s2
	mv	a0,s1
	call	sqlite3DbFreeNN
	li	s0,0
	j	.L2978
.L2990:
	ld	a5,96(s1)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L2978
	lw	a4,196(s1)
	li	a5,1
	sb	a5,97(s1)
	ble	a4,zero,.L2982
	sw	a5,352(s1)
.L2982:
	mv	a0,s1
	call	sqlite3OomFault.part.0
	j	.L2978
.L2985:
	li	a0,41
	li	s2,0
	j	.L2979
	.size	sqlite3VtabCreateModule, .-sqlite3VtabCreateModule
	.section	.text.memdbFetch,"ax",@progbits
	.align	1
	.type	memdbFetch, @function
memdbFetch:
	ld	a5,8(a0)
	add	a2,a2,a1
	ble	a2,a5,.L2993
	sd	zero,0(a3)
	li	a0,0
	ret
.L2993:
	lw	a4,40(a0)
	ld	a5,32(a0)
	addiw	a4,a4,1
	sw	a4,40(a0)
	add	a1,a5,a1
	sd	a1,0(a3)
	li	a0,0
	ret
	.size	memdbFetch, .-memdbFetch
	.section	.text.sqlite3PcacheSetPageSize.part.0,"ax",@progbits
	.align	1
	.type	sqlite3PcacheSetPageSize.part.0, @function
sqlite3PcacheSetPageSize.part.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	lw	a4,40(a0)
	lla	s3,.LANCHOR1
	lbu	a2,44(a0)
	ld	a5,216(s3)
	mv	s2,a1
	mv	s0,a0
	addiw	a1,a4,72
	mv	a0,s2
	jalr	a5
	beq	a0,zero,.L2999
	lw	a1,28(s0)
	ld	a4,224(s3)
	mv	s1,a0
	bge	a1,zero,.L2997
	lw	a3,36(s0)
	lw	a2,40(s0)
	neg	a5,a1
	slli	a5,a5,10
	addw	a1,a3,a2
	div	a5,a5,a1
	sext.w	a1,a5
.L2997:
	mv	a0,s1
	jalr	a4
	ld	a0,64(s0)
	beq	a0,zero,.L2998
	ld	a5,272(s3)
	jalr	a5
.L2998:
	sd	s1,64(s0)
	sw	s2,36(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L2999:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,7
	addi	sp,sp,48
	jr	ra
	.size	sqlite3PcacheSetPageSize.part.0, .-sqlite3PcacheSetPageSize.part.0
	.section	.text.sqlite3PcacheMakeClean,"ax",@progbits
	.align	1
	.type	sqlite3PcacheMakeClean, @function
sqlite3PcacheMakeClean:
	addi	sp,sp,-16
	li	a1,1
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	pcacheManageDirtyList
	lhu	a5,52(s0)
	lh	a4,54(s0)
	andi	a5,a5,-15
	ori	a5,a5,1
	sh	a5,52(s0)
	bne	a4,zero,.L3004
	ld	a5,24(s0)
	lbu	a4,44(a5)
	beq	a4,zero,.L3004
	ld	a1,0(s0)
	ld	s0,0(sp)
	ld	ra,8(sp)
	ld	a0,64(a5)
	ld	t1,.LANCHOR1+248
	li	a2,0
	addi	sp,sp,16
	jr	t1
.L3004:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3PcacheMakeClean, .-sqlite3PcacheMakeClean
	.section	.text.pcache1Alloc,"ax",@progbits
	.align	1
	.type	pcache1Alloc, @function
pcache1Alloc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	lla	s0,.LANCHOR0
	lw	a5,332(s0)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	mv	s1,a0
	blt	a5,a0,.L3011
	ld	s2,368(s0)
	beq	s2,zero,.L3011
	lw	a5,376(s0)
	lw	a4,340(s0)
	ld	a2,0(s2)
	addiw	a1,a5,-1
	ld	a3,520(s0)
	sgt	a4,a4,a1
	sd	a2,368(s0)
	sw	a1,376(s0)
	sw	a4,380(s0)
	ble	a0,a3,.L3012
	sd	a0,520(s0)
.L3012:
	ld	a5,392(s0)
	ld	a4,472(s0)
	addi	a5,a5,1
	sd	a5,392(s0)
	ble	a5,a4,.L3010
	sd	a5,472(s0)
.L3010:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L3011:
	mv	a0,s1
	call	sqlite3Malloc
	mv	s2,a0
	beq	a0,zero,.L3010
	ld	a5,.LANCHOR1+72
	jalr	a5
	ld	a5,520(s0)
	ble	s1,a5,.L3014
	sd	s1,520(s0)
.L3014:
	ld	a4,400(s0)
	ld	a5,480(s0)
	add	a0,a0,a4
	sd	a0,400(s0)
	ble	a0,a5,.L3010
	sd	a0,480(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	pcache1Alloc, .-pcache1Alloc
	.section	.text.pcache1Free,"ax",@progbits
	.align	1
	.type	pcache1Free, @function
pcache1Free:
	beq	a0,zero,.L3029
	addi	sp,sp,-32
	sd	s1,8(sp)
	lla	s1,.LANCHOR0
	ld	a5,344(s1)
	sd	s0,16(sp)
	sd	ra,24(sp)
	mv	s0,a0
	bgtu	a5,a0,.L3024
	ld	a5,352(s1)
	bleu	a5,a0,.L3024
	ld	a5,368(s1)
	ld	a3,392(s1)
	sd	a5,0(a0)
	lw	a5,376(s1)
	lw	a4,340(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	addiw	a2,a5,1
	addi	a3,a3,-1
	sgt	a4,a4,a2
	sd	a3,392(s1)
	sd	a0,368(s1)
	sw	a2,376(s1)
	sw	a4,380(s1)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L3024:
	mv	a0,s0
	ld	a5,.LANCHOR1+72
	jalr	a5
	ld	a5,400(s1)
	mv	a4,a0
	mv	a0,s0
	sub	a5,a5,a4
	ld	s0,16(sp)
	ld	ra,24(sp)
	sd	a5,400(s1)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_free@plt
.L3029:
	ret
	.size	pcache1Free, .-pcache1Free
	.section	.text.pcache1FreePage,"ax",@progbits
	.align	1
	.type	pcache1FreePage, @function
pcache1FreePage:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	lhu	a5,20(a0)
	ld	s0,32(a0)
	beq	a5,zero,.L3033
	ld	a5,72(s0)
	sd	a5,24(a0)
	ld	a4,8(s0)
	sd	a0,72(s0)
	lw	a5,0(a4)
	addiw	a5,a5,-1
	sw	a5,0(a4)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L3033:
	ld	a0,0(a0)
	call	pcache1Free
	ld	a4,8(s0)
	lw	a5,0(a4)
	addiw	a5,a5,-1
	sw	a5,0(a4)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	pcache1FreePage, .-pcache1FreePage
	.section	.text.pcache1RemoveFromHash,"ax",@progbits
	.align	1
	.type	pcache1RemoveFromHash, @function
pcache1RemoveFromHash:
	ld	a3,32(a0)
	lw	a5,16(a0)
	lw	a2,60(a3)
	ld	a4,64(a3)
	remuw	a5,a5,a2
	slli	a5,a5,32
	srli	a5,a5,29
	add	a4,a4,a5
	ld	a5,0(a4)
	beq	a5,a0,.L3037
.L3038:
	mv	a4,a5
	ld	a5,24(a5)
	bne	a5,a0,.L3038
	addi	a4,a4,24
.L3037:
	ld	a5,24(a0)
	sd	a5,0(a4)
	lw	a5,56(a3)
	addiw	a5,a5,-1
	sw	a5,56(a3)
	bne	a1,zero,.L3041
	ret
.L3041:
	tail	pcache1FreePage
	.size	pcache1RemoveFromHash, .-pcache1RemoveFromHash
	.section	.text.pcache1Unpin,"ax",@progbits
	.align	1
	.type	pcache1Unpin, @function
pcache1Unpin:
	mv	a5,a0
	mv	a0,a1
	bne	a2,zero,.L3043
	ld	a4,0(a5)
	lw	a2,20(a4)
	lw	a3,8(a4)
	bleu	a2,a3,.L3044
.L3043:
	li	a1,1
	tail	pcache1RemoveFromHash
.L3044:
	addi	a3,a4,24
	sd	a3,48(a1)
	ld	a3,64(a4)
	sd	a3,40(a1)
	sd	a1,48(a3)
	sd	a1,64(a4)
	lw	a4,52(a5)
	addiw	a4,a4,1
	sw	a4,52(a5)
	ret
	.size	pcache1Unpin, .-pcache1Unpin
	.section	.text.pcache1TruncateUnsafe,"ax",@progbits
	.align	1
	.type	pcache1TruncateUnsafe, @function
pcache1TruncateUnsafe:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	lw	s3,44(a0)
	lw	a5,60(a0)
	mv	s1,a0
	subw	a4,s3,a1
	mv	s4,a1
	bgeu	a4,a5,.L3046
	remuw	s2,a1,a5
	remuw	s3,s3,a5
.L3054:
	ld	s0,64(s1)
	slli	a5,s2,32
	srli	a5,a5,29
	add	s0,s0,a5
.L3063:
	ld	a5,0(s0)
	beq	a5,zero,.L3048
.L3064:
	lw	a4,16(a5)
	mv	a0,a5
	bltu	a4,s4,.L3049
	lw	a4,56(s1)
	addiw	a4,a4,-1
	sw	a4,56(s1)
	ld	a4,24(a5)
	sd	a4,0(s0)
	ld	a4,40(a5)
	beq	a4,zero,.L3050
	ld	a3,48(a5)
	sd	a4,40(a3)
	ld	a3,48(a5)
	sd	a3,48(a4)
	ld	a4,32(a5)
	sd	zero,40(a5)
	lw	a5,52(a4)
	addiw	a5,a5,-1
	sw	a5,52(a4)
.L3050:
	call	pcache1FreePage
	ld	a5,0(s0)
	bne	a5,zero,.L3064
.L3048:
	beq	s2,s3,.L3045
	lw	a5,60(s1)
	addiw	s2,s2,1
	remuw	s2,s2,a5
	j	.L3054
.L3049:
	addi	s0,a5,24
	j	.L3063
.L3045:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L3046:
	srliw	s3,a5,1
	srliw	s2,a5,1
	addiw	s3,s3,-1
	j	.L3054
	.size	pcache1TruncateUnsafe, .-pcache1TruncateUnsafe
	.section	.text.pcache1EnforceMaxPage,"ax",@progbits
	.align	1
	.type	pcache1EnforceMaxPage, @function
pcache1EnforceMaxPage:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	ld	s0,0(a0)
	mv	s1,a0
	lw	a4,8(s0)
	lw	a5,20(s0)
	bltu	a4,a5,.L3066
	j	.L3069
.L3070:
	ld	a4,40(a5)
	ld	a3,48(a5)
	sd	a4,40(a3)
	ld	a3,48(a5)
	sd	a3,48(a4)
	ld	a4,32(a5)
	sd	zero,40(a5)
	lw	a5,52(a4)
	addiw	a5,a5,-1
	sw	a5,52(a4)
	call	pcache1RemoveFromHash
	lw	a4,20(s0)
	lw	a5,8(s0)
	bleu	a4,a5,.L3069
.L3066:
	ld	a5,72(s0)
	li	a1,1
	lhu	a4,22(a5)
	mv	a0,a5
	beq	a4,zero,.L3070
.L3069:
	lw	a5,56(s1)
	bne	a5,zero,.L3065
	ld	a0,80(s1)
	beq	a0,zero,.L3065
	call	sqlite3_free@plt
	sd	zero,72(s1)
	sd	zero,80(s1)
.L3065:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	pcache1EnforceMaxPage, .-pcache1EnforceMaxPage
	.section	.text.pcache1Destroy,"ax",@progbits
	.align	1
	.type	pcache1Destroy, @function
pcache1Destroy:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lw	a5,56(a0)
	ld	s1,0(a0)
	mv	s0,a0
	bne	a5,zero,.L3082
.L3077:
	lw	a3,36(s0)
	lw	a5,8(s1)
	lw	a2,12(s1)
	mv	a0,s0
	subw	a3,a5,a3
	sw	a3,8(s1)
	lw	a4,32(s0)
	addiw	a5,a4,10
	addw	a5,a5,a3
	subw	a4,a2,a4
	subw	a5,a5,a2
	sw	a4,12(s1)
	sw	a5,16(s1)
	call	pcache1EnforceMaxPage
	ld	a0,80(s0)
	call	sqlite3_free@plt
	ld	a0,64(s0)
	call	sqlite3_free@plt
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_free@plt
.L3082:
	li	a1,0
	call	pcache1TruncateUnsafe
	j	.L3077
	.size	pcache1Destroy, .-pcache1Destroy
	.section	.text.pcache1Cachesize,"ax",@progbits
	.align	1
	.type	pcache1Cachesize, @function
pcache1Cachesize:
	lw	a4,28(a0)
	bne	a4,zero,.L3085
	ret
.L3085:
	sext.w	a7,a1
	slliw	a2,a7,3
	li	a4,10
	addw	a2,a2,a7
	divuw	a2,a2,a4
	ld	a6,0(a0)
	lw	t3,36(a0)
	lw	a3,8(a6)
	lw	t1,12(a6)
	subw	a3,a3,t3
	addw	a1,a3,a1
	subw	a4,a4,t1
	addw	a4,a4,a1
	sw	a1,8(a6)
	sw	a4,16(a6)
	sw	a7,36(a0)
	sw	a2,40(a0)
	tail	pcache1EnforceMaxPage
	.size	pcache1Cachesize, .-pcache1Cachesize
	.section	.text.pcache1Shrink,"ax",@progbits
	.align	1
	.type	pcache1Shrink, @function
pcache1Shrink:
	lw	a4,28(a0)
	bne	a4,zero,.L3095
	ret
.L3095:
	addi	sp,sp,-32
	sd	s0,16(sp)
	ld	s0,0(a0)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lw	s1,8(s0)
	sw	zero,8(s0)
	call	pcache1EnforceMaxPage
	sw	s1,8(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	pcache1Shrink, .-pcache1Shrink
	.section	.text.pcache1Truncate,"ax",@progbits
	.align	1
	.type	pcache1Truncate, @function
pcache1Truncate:
	lw	a5,44(a0)
	bgeu	a5,a1,.L3102
	ret
.L3102:
	addi	sp,sp,-32
	sd	s0,16(sp)
	mv	s0,a1
	sd	s1,8(sp)
	addiw	s0,s0,-1
	mv	s1,a0
	sd	ra,24(sp)
	call	pcache1TruncateUnsafe
	sw	s0,44(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	pcache1Truncate, .-pcache1Truncate
	.section	.text.pagerLockDb.part.0,"ax",@progbits
	.align	1
	.type	pagerLockDb.part.0, @function
pagerLockDb.part.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lbu	a5,17(a0)
	mv	s0,a0
	mv	s1,a1
	bne	a5,zero,.L3107
	ld	a0,72(a0)
	ld	a5,0(a0)
	ld	a5,56(a5)
	jalr	a5
	bne	a0,zero,.L3108
.L3107:
	lbu	a4,21(s0)
	li	a5,5
	beq	a4,a5,.L3116
.L3105:
	sb	s1,21(s0)
	li	a0,0
.L3108:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L3116:
	li	a5,4
	li	a0,0
	beq	s1,a5,.L3105
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	pagerLockDb.part.0, .-pagerLockDb.part.0
	.section	.text.pager_wait_on_lock,"ax",@progbits
	.align	1
	.type	pager_wait_on_lock, @function
pager_wait_on_lock:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	mv	s0,a0
	mv	s2,a1
	li	s3,5
.L3120:
	lbu	a5,21(s0)
	mv	a1,s2
	mv	a0,s0
	bgt	s2,a5,.L3118
	beq	a5,s3,.L3118
	li	s1,0
.L3119:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	mv	a0,s1
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L3118:
	call	pagerLockDb.part.0
	mv	s1,a0
	bne	a0,s3,.L3119
	ld	a5,224(s0)
	ld	a0,232(s0)
	jalr	a5
	bne	a0,zero,.L3120
	j	.L3119
	.size	pager_wait_on_lock, .-pager_wait_on_lock
	.section	.text.pagerFlushOnCommit.part.0,"ax",@progbits
	.align	1
	.type	pagerFlushOnCommit.part.0, @function
pagerFlushOnCommit.part.0:
	ld	a5,280(a0)
	lw	a0,28(a5)
	bge	a0,zero,.L3125
	lw	a3,36(a5)
	lw	a2,40(a5)
	neg	a4,a0
	slli	a4,a4,10
	addw	a0,a3,a2
	div	a4,a4,a0
	sext.w	a0,a4
.L3125:
	ld	a5,0(a5)
	li	a4,0
	beq	a5,zero,.L3126
.L3127:
	ld	a5,56(a5)
	addiw	a4,a4,1
	bne	a5,zero,.L3127
.L3126:
	beq	a0,zero,.L3128
	li	a5,100
	mul	a4,a4,a5
	div	a4,a4,a0
	li	a0,24
	sext.w	a4,a4
	sgt	a0,a4,a0
.L3128:
	ret
	.size	pagerFlushOnCommit.part.0, .-pagerFlushOnCommit.part.0
	.section	.text.setSectorSize,"ax",@progbits
	.align	1
	.type	setSectorSize, @function
setSectorSize:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lbu	a5,16(a0)
	mv	s0,a0
	bne	a5,zero,.L3137
	ld	a0,72(a0)
	ld	a5,0(a0)
	ld	a5,96(a5)
	jalr	a5
	slli	a5,a0,51
	bge	a5,zero,.L3144
.L3137:
	li	a5,512
	sw	a5,184(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L3144:
	ld	a0,72(s0)
	ld	a5,0(a0)
	ld	a5,88(a5)
	beq	a5,zero,.L3141
	jalr	a5
	li	a4,31
	li	a5,512
	ble	a0,a4,.L3139
	li	a4,65536
	sext.w	a5,a0
	ble	a0,a4,.L3139
	li	a5,65536
.L3139:
	sw	a5,184(s0)
.L3145:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L3141:
	li	a5,4096
	sw	a5,184(s0)
	j	.L3145
	.size	setSectorSize, .-setSectorSize
	.section	.text.pager_write_changecounter.isra.0,"ax",@progbits
	.align	1
	.type	pager_write_changecounter.isra.0, @function
pager_write_changecounter.isra.0:
	lbu	a4,136(a1)
	lbu	a2,139(a1)
	lbu	a5,137(a1)
	lbu	a3,138(a1)
	slliw	a4,a4,24
	or	a4,a4,a2
	slliw	a5,a5,16
	or	a4,a4,a5
	slliw	a5,a3,8
	or	a4,a4,a5
	ld	a1,0(a0)
	addiw	a5,a4,1
	srliw	a2,a5,16
	srliw	a3,a5,8
	srliw	a6,a5,24
	andi	a2,a2,0xff
	andi	a5,a5,0xff
	andi	a3,a3,0xff
	sb	a6,24(a1)
	sb	a2,25(a1)
	sb	a3,26(a1)
	sb	a5,27(a1)
	ld	a4,0(a0)
	sb	a6,92(a4)
	sb	a2,93(a4)
	sb	a3,94(a4)
	sb	a5,95(a4)
	ld	a5,0(a0)
	li	a4,46
	sb	a4,97(a5)
	li	a4,56
	sb	a4,98(a5)
	li	a4,8
	sb	zero,96(a5)
	sb	a4,99(a5)
	ret
	.size	pager_write_changecounter.isra.0, .-pager_write_changecounter.isra.0
	.section	.text.sqlite3PagerUnrefNotNull,"ax",@progbits
	.align	1
	.type	sqlite3PagerUnrefNotNull, @function
sqlite3PagerUnrefNotNull:
	lhu	a4,52(a0)
	andi	a4,a4,32
	beq	a4,zero,.L3148
	ld	a4,40(a0)
	lw	a3,152(a4)
	ld	a2,168(a4)
	addiw	a3,a3,-1
	sw	a3,152(a4)
	sd	a2,32(a0)
	sd	a0,168(a4)
	ret
.L3148:
	tail	sqlite3PcacheRelease
	.size	sqlite3PagerUnrefNotNull, .-sqlite3PagerUnrefNotNull
	.section	.text.moveToParent,"ax",@progbits
	.align	1
	.type	moveToParent, @function
moveToParent:
	lb	a5,84(a0)
	lbu	a3,1(a0)
	sh	zero,70(a0)
	addiw	a4,a5,-1
	mv	a5,a4
	addi	a4,a4,40
	andi	a3,a3,-7
	slli	a4,a4,1
	sb	a3,1(a0)
	add	a4,a0,a4
	slliw	a5,a5,24
	lhu	a3,8(a4)
	sraiw	a5,a5,24
	addi	a4,a5,18
	slli	a4,a4,3
	sb	a5,84(a0)
	sh	a3,86(a0)
	add	a5,a0,a4
	ld	a4,0(a5)
	ld	a5,136(a0)
	sd	a4,136(a0)
	ld	a0,112(a5)
	tail	sqlite3PagerUnrefNotNull
	.size	moveToParent, .-moveToParent
	.section	.text.sqlite3PagerSync,"ax",@progbits
	.align	1
	.type	sqlite3PagerSync, @function
sqlite3PagerSync:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	ld	a0,72(a0)
	ld	a5,0(a0)
	beq	a5,zero,.L3156
	ld	a5,80(a5)
	mv	a2,a1
	li	a1,21
	jalr	a5
	li	a5,12
	mv	a1,a0
	beq	a0,a5,.L3156
	bne	a0,zero,.L3155
.L3156:
	lbu	a5,11(s0)
	li	a1,0
	beq	a5,zero,.L3164
.L3155:
	ld	ra,8(sp)
	ld	s0,0(sp)
	mv	a0,a1
	addi	sp,sp,16
	jr	ra
.L3164:
	lbu	a1,14(s0)
	beq	a1,zero,.L3155
	ld	a0,72(s0)
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3OsSync.part.0
	.size	sqlite3PagerSync, .-sqlite3PagerSync
	.section	.text.pagerExclusiveLock.part.0,"ax",@progbits
	.align	1
	.type	pagerExclusiveLock.part.0, @function
pagerExclusiveLock.part.0:
	addi	sp,sp,-32
	li	a1,4
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	call	pagerLockDb.part.0
	mv	s0,a0
	beq	a0,zero,.L3167
	ld	a0,72(s1)
	ld	a5,0(a0)
	beq	a5,zero,.L3167
	lbu	a4,17(s1)
	beq	a4,zero,.L3174
.L3169:
	lbu	a4,21(s1)
	li	a5,5
	beq	a4,a5,.L3167
	li	a5,1
	sb	a5,21(s1)
.L3167:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L3174:
	ld	a5,64(a5)
	li	a1,1
	jalr	a5
	j	.L3169
	.size	pagerExclusiveLock.part.0, .-pagerExclusiveLock.part.0
	.section	.text.walShmBarrier.isra.0.part.0,"ax",@progbits
	.align	1
	.type	walShmBarrier.isra.0.part.0, @function
walShmBarrier.isra.0.part.0:
	ld	a5,0(a0)
	ld	t1,120(a5)
	jr	t1
	.size	walShmBarrier.isra.0.part.0, .-walShmBarrier.isra.0.part.0
	.section	.text.walIndexWriteHdr,"ax",@progbits
	.align	1
	.type	walIndexWriteHdr, @function
walIndexWriteHdr:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	a4,48(a0)
	lw	a6,76(a0)
	li	a5,3006464
	ld	s1,0(a4)
	addi	a5,a5,536
	li	a4,1
	sb	a4,84(a0)
	mv	s0,a0
	addi	s2,a0,72
	sw	a5,72(a0)
	addi	a4,a0,80
	addw	a6,a6,a5
	addi	a0,a0,112
.L3177:
	lw	a2,0(a4)
	addi	a4,a4,8
	lw	a3,-4(a4)
	addw	a2,a2,a6
	addw	a5,a2,a5
	addw	a3,a3,a5
	addw	a6,a3,a6
	bne	a4,a0,.L3177
	sw	a5,112(s0)
	sw	a6,116(s0)
	li	a2,48
	mv	a1,s2
	addi	a0,s1,48
	call	memcpy@plt
	lbu	a4,63(s0)
	li	a5,2
	beq	a4,a5,.L3178
	ld	a0,8(s0)
	call	walShmBarrier.isra.0.part.0
.L3178:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s2
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	li	a2,48
	addi	sp,sp,32
	tail	memcpy@plt
	.size	walIndexWriteHdr, .-walIndexWriteHdr
	.section	.text.walRestartHdr,"ax",@progbits
	.align	1
	.type	walRestartHdr, @function
walRestartHdr:
	lbu	a4,104(a0)
	lbu	a3,107(a0)
	lbu	a6,105(a0)
	lbu	a2,106(a0)
	slliw	a4,a4,24
	or	a4,a4,a3
	slliw	a6,a6,16
	lw	a3,136(a0)
	ld	a7,48(a0)
	or	a4,a4,a6
	slliw	a2,a2,8
	addi	sp,sp,-32
	or	a4,a4,a2
	sd	ra,24(sp)
	sd	s0,16(sp)
	addiw	a4,a4,1
	ld	s0,0(a7)
	srliw	a6,a4,16
	srliw	a7,a4,24
	srliw	a2,a4,8
	addiw	a3,a3,1
	sw	a3,136(a0)
	sb	a2,106(a0)
	sb	a4,107(a0)
	sw	zero,88(a0)
	sb	a7,104(a0)
	sb	a6,105(a0)
	addi	a4,a0,108
	sb	a1,108(a0)
	srliw	a5,a1,24
	srliw	a2,a1,8
	srliw	a3,a1,16
	sb	a5,3(a4)
	sb	a2,1(a4)
	sb	a3,2(a4)
	sw	a1,12(sp)
	call	walIndexWriteHdr
	sw	zero,96(s0)
	sw	zero,128(s0)
	sw	zero,104(s0)
	li	a5,-1
	sw	a5,108(s0)
	sw	a5,112(s0)
	sw	a5,116(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	walRestartHdr, .-walRestartHdr
	.section	.text.walIndexTryHdr,"ax",@progbits
	.align	1
	.type	walIndexTryHdr, @function
walIndexTryHdr:
	addi	sp,sp,-144
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	ra,136(sp)
	sd	s3,104(sp)
	ld	a5,48(a0)
	mv	s1,sp
	mv	s0,a0
	ld	s3,0(a5)
	mv	s2,a1
	li	a2,48
	mv	a0,s1
	mv	a1,s3
	call	memcpy@plt
	lbu	a4,63(s0)
	li	a5,2
	beq	a4,a5,.L3184
	ld	a0,8(s0)
	call	walShmBarrier.isra.0.part.0
.L3184:
	addi	a5,sp,48
	mv	a0,a5
	li	a2,48
	addi	a1,s3,48
	call	memcpy@plt
	mv	a1,a0
	li	a2,48
	mv	a0,s1
	call	memcmp@plt
	mv	a5,a0
	li	a0,1
	bne	a5,zero,.L3185
	lbu	a5,12(sp)
	beq	a5,zero,.L3185
	lw	a5,0(sp)
	lw	a6,4(sp)
	addi	a4,sp,8
	addi	a1,sp,40
	addw	a6,a6,a5
.L3186:
	lw	a2,0(a4)
	addi	a4,a4,8
	lw	a3,-4(a4)
	addw	a2,a2,a6
	addw	a5,a2,a5
	addw	a3,a3,a5
	addw	a6,a3,a6
	bne	a4,a1,.L3186
	lw	a4,40(sp)
	li	a0,1
	bne	a4,a5,.L3185
	lw	a5,44(sp)
	beq	a5,a6,.L3197
.L3185:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	addi	sp,sp,144
	jr	ra
.L3197:
	addi	s3,s0,72
	li	a2,48
	mv	a1,s1
	mv	a0,s3
	call	memcmp@plt
	beq	a0,zero,.L3185
	li	a5,1
	sw	a5,0(s2)
	li	a2,48
	mv	a1,s1
	mv	a0,s3
	call	memcpy@plt
	lhu	a4,86(s0)
	li	a3,65536
	li	a0,0
	slliw	a5,a4,16
	and	a5,a5,a3
	andi	a4,a4,-512
	or	a5,a5,a4
	sw	a5,56(s0)
	j	.L3185
	.size	walIndexTryHdr, .-walIndexTryHdr
	.section	.text.walLockShared.isra.0.part.0,"ax",@progbits
	.align	1
	.type	walLockShared.isra.0.part.0, @function
walLockShared.isra.0.part.0:
	ld	a5,0(a0)
	li	a3,6
	li	a2,1
	ld	t1,112(a5)
	jr	t1
	.size	walLockShared.isra.0.part.0, .-walLockShared.isra.0.part.0
	.section	.text.walUnlockShared.isra.0.part.0,"ax",@progbits
	.align	1
	.type	walUnlockShared.isra.0.part.0, @function
walUnlockShared.isra.0.part.0:
	ld	a5,0(a0)
	li	a3,5
	li	a2,1
	ld	t1,112(a5)
	jr	t1
	.size	walUnlockShared.isra.0.part.0, .-walUnlockShared.isra.0.part.0
	.section	.text.walLockExclusive.isra.0.part.0,"ax",@progbits
	.align	1
	.type	walLockExclusive.isra.0.part.0, @function
walLockExclusive.isra.0.part.0:
	ld	a5,0(a0)
	li	a3,10
	ld	t1,112(a5)
	jr	t1
	.size	walLockExclusive.isra.0.part.0, .-walLockExclusive.isra.0.part.0
	.section	.text.walBusyLock,"ax",@progbits
	.align	1
	.type	walBusyLock, @function
walBusyLock:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	mv	s1,a0
	mv	s2,a1
	mv	s5,a2
	mv	s4,a3
	mv	s3,a4
	li	s6,5
	j	.L3203
.L3210:
	ld	a0,8(s1)
	call	walLockExclusive.isra.0.part.0
	mv	s0,a0
	mv	a0,s5
	beq	s2,zero,.L3202
	bne	s0,s6,.L3202
	jalr	s2
	beq	a0,zero,.L3202
.L3203:
	lbu	a5,63(s1)
	mv	a2,s3
	mv	a1,s4
	beq	a5,zero,.L3210
	li	s0,0
.L3202:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
	.size	walBusyLock, .-walBusyLock
	.section	.text.walUnlockExclusive.isra.0.part.0,"ax",@progbits
	.align	1
	.type	walUnlockExclusive.isra.0.part.0, @function
walUnlockExclusive.isra.0.part.0:
	ld	a5,0(a0)
	li	a3,9
	ld	t1,112(a5)
	jr	t1
	.size	walUnlockExclusive.isra.0.part.0, .-walUnlockExclusive.isra.0.part.0
	.section	.text.walIndexClose,"ax",@progbits
	.align	1
	.type	walIndexClose, @function
walIndexClose:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	lbu	a4,63(a0)
	li	a5,2
	mv	s0,a0
	mv	s3,a1
	beq	a4,a5,.L3213
	lbu	a5,70(a0)
	beq	a5,zero,.L3216
	lw	a5,40(a0)
	li	s1,0
	ble	a5,zero,.L3216
.L3215:
	ld	a4,48(s0)
	slli	s2,s1,3
	addiw	s1,s1,1
	add	a4,a4,s2
	ld	a0,0(a4)
	call	sqlite3_free@plt
	ld	a5,48(s0)
	add	a5,a5,s2
	sd	zero,0(a5)
	lw	a5,40(s0)
	bgt	a5,s1,.L3215
	lbu	a4,63(s0)
	li	a5,2
	bne	a4,a5,.L3216
.L3212:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L3216:
	ld	a0,8(s0)
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	a5,0(a0)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	t1,128(a5)
	mv	a1,s3
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	t1
.L3213:
	lw	a5,40(a0)
	li	s1,0
	bgt	a5,zero,.L3215
	j	.L3212
	.size	walIndexClose, .-walIndexClose
	.section	.text.pagerOpenWal,"ax",@progbits
	.align	1
	.type	pagerOpenWal, @function
pagerOpenWal:
	addi	sp,sp,-80
	sd	s4,32(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	lbu	s1,8(a0)
	mv	s4,a0
	beq	s1,zero,.L3224
	lbu	a5,21(a0)
	li	a4,3
	bgtu	a5,a4,.L3249
.L3225:
	mv	a0,s4
	call	pagerExclusiveLock.part.0
	mv	s1,a0
	bne	a0,zero,.L3238
	lbu	s1,8(s4)
.L3224:
	ld	s2,0(s4)
	sd	zero,288(s4)
	ld	s5,72(s4)
	lw	a0,4(s2)
	ld	s3,296(s4)
	ld	s6,200(s4)
	addi	a0,a0,144
	call	sqlite3MallocZero
	mv	s0,a0
	beq	a0,zero,.L3236
	li	a5,-1
	addi	a2,a0,144
	sh	a5,60(a0)
	li	a5,257
	sd	s2,0(a0)
	sd	a2,16(a0)
	sd	s5,8(a0)
	sd	s6,32(a0)
	sd	s3,128(a0)
	sh	a5,68(a0)
	beq	s1,zero,.L3228
	li	s1,2
.L3228:
	sb	s1,63(s0)
	ld	a5,40(s2)
	li	a3,524288
	addi	a3,a3,6
	sw	a3,12(sp)
	addi	a4,sp,12
	mv	a1,s3
	mv	a0,s2
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L3229
	lw	a5,12(sp)
	andi	a5,a5,1
	bne	a5,zero,.L3250
.L3230:
	ld	a5,0(s5)
	mv	a0,s5
	ld	a5,96(a5)
	jalr	a5
	andi	a4,a0,1024
	mv	a5,a0
	beq	a4,zero,.L3233
	sb	zero,68(s0)
.L3233:
	slli	a4,a5,51
	bge	a4,zero,.L3231
	sb	zero,69(s0)
.L3231:
	sd	s0,288(s4)
.L3238:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	mv	a0,s1
	ld	s1,56(sp)
	addi	sp,sp,80
	jr	ra
.L3229:
	li	a1,0
	mv	a0,s0
	call	walIndexClose
	ld	s2,16(s0)
	ld	a5,0(s2)
	beq	a5,zero,.L3235
	ld	a5,8(a5)
	mv	a0,s2
	jalr	a5
	sd	zero,0(s2)
.L3235:
	mv	a0,s0
	call	sqlite3_free@plt
	j	.L3238
.L3249:
	li	a4,5
	bne	a5,a4,.L3224
	j	.L3225
.L3250:
	li	a5,1
	sb	a5,66(s0)
	j	.L3230
.L3236:
	li	s1,7
	j	.L3238
	.size	pagerOpenWal, .-pagerOpenWal
	.section	.text.sqlite3WalEndWriteTransaction.part.0,"ax",@progbits
	.align	1
	.type	sqlite3WalEndWriteTransaction.part.0, @function
sqlite3WalEndWriteTransaction.part.0:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lbu	a5,63(a0)
	mv	s0,a0
	bne	a5,zero,.L3252
	ld	a0,8(a0)
	li	a2,1
	li	a1,0
	call	walUnlockExclusive.isra.0.part.0
.L3252:
	sb	zero,64(s0)
	sw	zero,124(s0)
	sb	zero,67(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3WalEndWriteTransaction.part.0, .-sqlite3WalEndWriteTransaction.part.0
	.section	.text.sqlite3WalEndReadTransaction,"ax",@progbits
	.align	1
	.type	sqlite3WalEndReadTransaction, @function
sqlite3WalEndReadTransaction:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lbu	a5,64(a0)
	mv	s0,a0
	beq	a5,zero,.L3255
	call	sqlite3WalEndWriteTransaction.part.0
.L3255:
	lh	a1,60(s0)
	blt	a1,zero,.L3254
	lbu	a5,63(s0)
	bne	a5,zero,.L3257
	ld	a0,8(s0)
	addiw	a1,a1,3
	call	walUnlockShared.isra.0.part.0
.L3257:
	li	a5,-1
	sh	a5,60(s0)
.L3254:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3WalEndReadTransaction, .-sqlite3WalEndReadTransaction
	.section	.text.invalidateIncrblobCursors.isra.0.part.0,"ax",@progbits
	.align	1
	.type	invalidateIncrblobCursors.isra.0.part.0, @function
invalidateIncrblobCursors.isra.0.part.0:
	sb	zero,0(a1)
	ld	a5,16(a0)
	beq	a5,zero,.L3262
	li	a6,1
	j	.L3268
.L3265:
	ld	a5,40(a5)
	beq	a5,zero,.L3262
.L3268:
	lbu	a0,1(a5)
	andi	a0,a0,16
	beq	a0,zero,.L3265
	sb	a6,0(a1)
	lw	a0,80(a5)
	bne	a0,a2,.L3265
	bne	a4,zero,.L3267
	ld	a0,48(a5)
	bne	a0,a3,.L3265
.L3267:
	sb	a6,0(a5)
	ld	a5,40(a5)
	bne	a5,zero,.L3268
.L3262:
	ret
	.size	invalidateIncrblobCursors.isra.0.part.0, .-invalidateIncrblobCursors.isra.0.part.0
	.section	.text.btreeReleaseAllCursorPages.part.0,"ax",@progbits
	.align	1
	.type	btreeReleaseAllCursorPages.part.0, @function
btreeReleaseAllCursorPages.part.0:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	lb	a5,84(a0)
	mv	s1,a0
	ble	a5,zero,.L3274
	li	s0,0
.L3275:
	addi	a5,s0,18
	slli	a5,a5,3
	add	a5,s1,a5
	ld	a5,0(a5)
	addiw	s0,s0,1
	ld	a0,112(a5)
	call	sqlite3PagerUnrefNotNull
	lb	a5,84(s1)
	bgt	a5,s0,.L3275
.L3274:
	ld	a5,136(s1)
	ld	a0,112(a5)
	call	sqlite3PagerUnrefNotNull
	li	a5,-1
	sb	a5,84(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	btreeReleaseAllCursorPages.part.0, .-btreeReleaseAllCursorPages.part.0
	.section	.text.sqlite3VdbeIntValue,"ax",@progbits
	.align	1
	.type	sqlite3VdbeIntValue, @function
sqlite3VdbeIntValue:
	lhu	a4,8(a0)
	andi	a3,a4,36
	bne	a3,zero,.L3284
	andi	a3,a4,8
	bne	a3,zero,.L3285
	andi	a4,a4,18
	li	a5,0
	bne	a4,zero,.L3286
	mv	a0,a5
	ret
.L3285:
	ld	a0,0(a0)
	tail	doubleToInt64
.L3284:
	ld	a5,0(a0)
	mv	a0,a5
	ret
.L3286:
	tail	memIntValue
	.size	sqlite3VdbeIntValue, .-sqlite3VdbeIntValue
	.section	.text.sqlite3_value_int,"ax",@progbits
	.align	1
	.globl	sqlite3_value_int
	.type	sqlite3_value_int, @function
sqlite3_value_int:
	addi	sp,sp,-16
	sd	ra,8(sp)
	call	sqlite3VdbeIntValue
	ld	ra,8(sp)
	sext.w	a0,a0
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_value_int, .-sqlite3_value_int
	.section	.text.sqlite3_value_int64,"ax",@progbits
	.align	1
	.globl	sqlite3_value_int64
	.type	sqlite3_value_int64, @function
sqlite3_value_int64:
	tail	sqlite3VdbeIntValue
	.size	sqlite3_value_int64, .-sqlite3_value_int64
	.section	.text.getIntArg,"ax",@progbits
	.align	1
	.type	getIntArg, @function
getIntArg:
	lw	a5,4(a0)
	lw	a4,0(a0)
	bgt	a4,a5,.L3292
	li	a0,0
	ret
.L3292:
	ld	a4,8(a0)
	addiw	a3,a5,1
	slli	a5,a5,3
	sw	a3,4(a0)
	add	a5,a4,a5
	ld	a0,0(a5)
	tail	sqlite3_value_int64@plt
	.size	getIntArg, .-getIntArg
	.section	.text.sqlite3VdbeBooleanValue.part.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeBooleanValue.part.0, @function
sqlite3VdbeBooleanValue.part.0:
	addi	sp,sp,-16
	sd	ra,8(sp)
	call	sqlite3VdbeRealValue
	fcvt.d.l	fa4,a0
	fmv.d.x	fa5,zero
	ld	ra,8(sp)
	feq.d	a0,fa4,fa5
	addi	sp,sp,16
	xori	a0,a0,1
	jr	ra
	.size	sqlite3VdbeBooleanValue.part.0, .-sqlite3VdbeBooleanValue.part.0
	.section	.text.sqlite3VdbeIntegerAffinity.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeIntegerAffinity.isra.0, @function
sqlite3VdbeIntegerAffinity.isra.0:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	ld	s0,0(a0)
	mv	s1,a1
	mv	a0,s0
	call	doubleToInt64
	beq	s0,a0,.L3298
.L3295:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L3298:
	li	a5,-1
	slli	a4,a5,63
	beq	s0,a4,.L3295
	srli	a5,a5,1
	beq	s0,a5,.L3295
	lhu	a5,0(s1)
	li	a4,16384
	addi	a4,a4,-448
	and	a5,a5,a4
	ori	a5,a5,4
	sh	a5,0(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeIntegerAffinity.isra.0, .-sqlite3VdbeIntegerAffinity.isra.0
	.section	.text.applyNumericAffinity,"ax",@progbits
	.align	1
	.type	applyNumericAffinity, @function
applyNumericAffinity:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	lbu	a3,10(a0)
	lw	a2,12(a0)
	mv	s0,a0
	ld	a0,16(a0)
	mv	s1,a1
	addi	a1,sp,8
	call	sqlite3Atoi64
	beq	a0,zero,.L3310
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L3310:
	ld	s2,8(sp)
	mv	a1,s2
	mv	a0,s2
	call	sqlite3RealSameAsInt
	beq	a0,zero,.L3302
	sd	s2,0(s0)
.L3303:
	lhu	a5,8(s0)
	ori	a5,a5,4
.L3305:
	andi	a5,a5,-3
	sh	a5,8(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L3302:
	lbu	a3,10(s0)
	lw	a2,12(s0)
	ld	a0,16(s0)
	mv	a1,s0
	call	sqlite3Atoi64
	beq	a0,zero,.L3303
	lhu	a5,8(s0)
	ld	a4,8(sp)
	ori	a5,a5,8
	sd	a4,0(s0)
	sh	a5,8(s0)
	beq	s1,zero,.L3305
	addi	a1,s0,8
	mv	a0,s0
	call	sqlite3VdbeIntegerAffinity.isra.0
	lhu	a5,8(s0)
	j	.L3305
	.size	applyNumericAffinity, .-applyNumericAffinity
	.section	.text.sqlite3VdbeEnter.isra.0.part.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeEnter.isra.0.part.0, @function
sqlite3VdbeEnter.isra.0.part.0:
	lw	a6,40(a0)
	ld	t1,32(a0)
	ble	a6,zero,.L3311
	li	a4,0
	li	a5,0
	li	a7,1
	li	a0,1
.L3314:
	sllw	a5,a0,a5
	beq	a4,a7,.L3313
	lw	a3,0(a1)
	slli	a2,a4,5
	add	a2,t1,a2
	and	a5,a3,a5
	sext.w	a5,a5
	beq	a5,zero,.L3313
	ld	a5,8(a2)
	beq	a5,zero,.L3313
	ld	a3,0(a5)
	ld	a5,8(a5)
	sd	a3,8(a5)
.L3313:
	addi	a4,a4,1
	sext.w	a5,a4
	bgt	a6,a5,.L3314
.L3311:
	ret
	.size	sqlite3VdbeEnter.isra.0.part.0, .-sqlite3VdbeEnter.isra.0.part.0
	.section	.text.allocSpace.part.0,"ax",@progbits
	.align	1
	.type	allocSpace.part.0, @function
allocSpace.part.0:
	ld	a4,8(a0)
	addi	a1,a1,7
	andi	a1,a1,-8
	mv	a5,a0
	bgt	a1,a4,.L3323
	ld	a0,0(a0)
	sub	a1,a4,a1
	sd	a1,8(a5)
	add	a0,a0,a1
	ret
.L3323:
	ld	a4,16(a0)
	li	a0,0
	add	a1,a4,a1
	sd	a1,16(a5)
	ret
	.size	allocSpace.part.0, .-allocSpace.part.0
	.section	.text.sqlite3VdbeMakeReady,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMakeReady, @function
sqlite3VdbeMakeReady:
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s5,72(sp)
	sd	ra,120(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	s9,40(sp)
	lw	a4,128(a1)
	lw	a5,56(a1)
	lw	s3,52(a1)
	sw	a4,4(sp)
	ld	s4,0(a0)
	lh	s2,272(a1)
	mv	s1,a1
	mv	s0,a0
	addw	s5,a5,s3
	bne	s3,zero,.L3326
	ble	s5,zero,.L3326
	addiw	s5,a5,1
.L3326:
	lw	a2,144(s0)
	lw	a4,60(s1)
	ld	a3,136(s0)
	slliw	a5,a2,1
	addw	a5,a5,a2
	slliw	a5,a5,3
	addiw	a5,a5,7
	andi	a5,a5,-8
	sext.w	a5,a5
	subw	a4,a4,a5
	andi	a4,a4,-8
	add	a5,a3,a5
	sext.w	a4,a4
	addi	a1,sp,4
	mv	a0,s0
	sd	a5,8(sp)
	sd	a4,16(sp)
	call	resolveP2Values
	lbu	a5,32(s1)
	li	a4,0
	beq	a5,zero,.L3327
	lbu	a4,33(s1)
	snez	a4,a4
.L3327:
	lbu	a5,189(s0)
	slli	a4,a4,7
	andi	a5,a5,127
	or	a5,a5,a4
	sb	a5,189(s0)
	lbu	a4,275(s1)
	beq	a4,zero,.L3328
	li	a3,10
	mv	a4,s5
	blt	s5,a3,.L3353
.L3329:
	sext.w	s5,a4
.L3328:
	slli	s7,s5,3
	sub	s7,s7,s5
	andi	a5,a5,-4
	addi	s9,sp,8
	slli	s7,s7,3
	slli	s6,s2,3
	sb	a5,189(s0)
	mv	a1,s7
	mv	a0,s9
	sub	s6,s6,s2
	sd	zero,24(sp)
	slli	s6,s6,3
	call	allocSpace.part.0
	mv	a1,s6
	sd	a0,104(s0)
	mv	a0,s9
	call	allocSpace.part.0
	lw	a1,4(sp)
	sd	a0,128(s0)
	mv	a0,s9
	slli	a1,a1,3
	call	allocSpace.part.0
	slli	s8,s3,3
	sd	a0,112(s0)
	mv	a1,s8
	mv	a0,s9
	call	allocSpace.part.0
	ld	a1,24(sp)
	sd	a0,120(s0)
	bne	a1,zero,.L3354
.L3331:
	ld	a5,288(s1)
	sd	a5,176(s0)
	sd	zero,288(s1)
	lbu	a4,275(s1)
	lbu	a5,189(s0)
	andi	a4,a4,3
	andi	a5,a5,-13
	slli	a4,a4,2
	or	a5,a5,a4
	sb	a5,189(s0)
	lbu	a5,97(s4)
	beq	a5,zero,.L3337
	sh	zero,32(s0)
	sd	zero,40(s0)
.L3338:
	li	a5,-1
	li	a4,770838528
	addi	a4,a4,-605
	slli	a5,a5,32
	sw	a4,36(s0)
	addi	a5,a5,1
	li	a4,-254
	sh	a4,186(s0)
	sd	a5,48(s0)
	sd	zero,56(s0)
	sw	zero,64(s0)
	sd	zero,80(s0)
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	addi	sp,sp,128
	jr	ra
.L3337:
	sw	s3,44(s0)
	sh	s2,32(s0)
	ld	a5,128(s0)
	ble	s2,zero,.L3343
	addiw	s2,s2,-1
	slli	s2,s2,32
	srli	s2,s2,32
	addi	s2,s2,1
	slli	a4,s2,3
	sub	s2,a4,s2
	slli	s2,s2,3
	add	s2,a5,s2
	li	a4,1
.L3342:
	sd	s4,40(a5)
	sh	a4,8(a5)
	sw	zero,32(a5)
	addi	a5,a5,56
	bne	s2,a5,.L3342
.L3343:
	sw	s5,40(s0)
	ld	a5,104(s0)
	ble	s5,zero,.L3341
	addiw	s5,s5,-1
	slli	s5,s5,32
	srli	s5,s5,32
	addi	s5,s5,1
	slli	a4,s5,3
	sub	s5,a4,s5
	slli	s5,s5,3
	add	s5,a5,s5
	li	a4,128
.L3344:
	sd	s4,40(a5)
	sh	a4,8(a5)
	sw	zero,32(a5)
	addi	a5,a5,56
	bne	a5,s5,.L3344
.L3341:
	ld	a0,120(s0)
	mv	a2,s8
	li	a1,0
	call	memset@plt
	j	.L3338
.L3353:
	li	a4,10
	j	.L3329
.L3354:
	mv	a0,s4
	call	sqlite3DbMallocRawNN
	ld	a4,24(sp)
	sd	a0,240(s0)
	lbu	a5,97(s4)
	sd	a0,8(sp)
	sd	a4,16(sp)
	bne	a5,zero,.L3331
	ld	a5,104(s0)
	beq	a5,zero,.L3355
.L3333:
	ld	a0,128(s0)
	sd	a5,104(s0)
	beq	a0,zero,.L3356
.L3334:
	ld	a5,112(s0)
	sd	a0,128(s0)
	beq	a5,zero,.L3357
.L3335:
	ld	a0,120(s0)
	sd	a5,112(s0)
	beq	a0,zero,.L3358
	sd	a0,120(s0)
	j	.L3331
.L3358:
	mv	a1,s8
	mv	a0,s9
	call	allocSpace.part.0
	sd	a0,120(s0)
	j	.L3331
.L3357:
	lw	a1,4(sp)
	mv	a0,s9
	slli	a1,a1,3
	call	allocSpace.part.0
	mv	a5,a0
	j	.L3335
.L3356:
	mv	a1,s6
	mv	a0,s9
	call	allocSpace.part.0
	j	.L3334
.L3355:
	mv	a1,s7
	mv	a0,s9
	call	allocSpace.part.0
	mv	a5,a0
	j	.L3333
	.size	sqlite3VdbeMakeReady, .-sqlite3VdbeMakeReady
	.section	.text.vdbePmaReaderSeek,"ax",@progbits
	.align	1
	.type	vdbePmaReaderSeek, @function
vdbePmaReaderSeek:
	ld	a5,64(a1)
	beq	a5,zero,.L3360
	sd	zero,64(a1)
.L3360:
	sd	a3,0(a1)
	ld	a5,8(a2)
	sd	a5,8(a1)
	ld	a5,0(a2)
	sd	a5,24(a1)
	ld	a4,16(a0)
	ld	a2,8(a2)
	ld	a4,32(a4)
	lw	a4,172(a4)
	bgt	a2,a4,.L3364
	ld	a4,0(a5)
	li	a5,2
	lw	a4,0(a4)
	ble	a4,a5,.L3364
	sd	zero,64(a1)
.L3362:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	ld	a4,16(a0)
	ld	a5,48(a1)
	lw	s1,12(a4)
	rem	s0,a3,s1
	beq	a5,zero,.L3381
.L3366:
	beq	s0,zero,.L3363
	ld	a3,0(a1)
	ld	a5,8(a1)
	subw	a2,s1,s0
	add	a4,a2,a3
	ble	a4,a5,.L3368
	subw	a2,a5,a3
.L3368:
	ld	a0,24(a1)
	ld	a1,48(a1)
	ld	ra,40(sp)
	ld	a5,0(a0)
	add	a1,a1,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	t1,16(a5)
	addi	sp,sp,48
	jr	t1
.L3364:
	ld	a5,64(a1)
	beq	a5,zero,.L3362
	li	a0,0
	ret
.L3363:
	li	a0,0
.L3365:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L3381:
	mv	a0,s1
	sd	a1,8(sp)
	call	sqlite3Malloc
	ld	a1,8(sp)
	sd	a0,48(a1)
	sw	s1,56(a1)
	bne	a0,zero,.L3366
	li	a0,7
	j	.L3365
	.size	vdbePmaReaderSeek, .-vdbePmaReaderSeek
	.section	.text.memjrnlTruncate,"ax",@progbits
	.align	1
	.type	memjrnlTruncate, @function
memjrnlTruncate:
	bne	a1,zero,.L3391
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	ld	s0,24(a0)
	mv	s1,a0
	beq	s0,zero,.L3384
.L3385:
	mv	a0,s0
	ld	s0,0(s0)
	call	sqlite3_free@plt
	bne	s0,zero,.L3385
.L3384:
	sd	zero,24(s1)
	sw	zero,16(s1)
	sd	zero,40(s1)
	sd	zero,32(s1)
	sd	zero,56(s1)
	sd	zero,48(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L3391:
	li	a0,0
	ret
	.size	memjrnlTruncate, .-memjrnlTruncate
	.section	.text.sqlite3WalkSelect.part.0,"ax",@progbits
	.align	1
	.type	sqlite3WalkSelect.part.0, @function
sqlite3WalkSelect.part.0:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s5,8(sp)
	mv	s0,a0
	ld	a5,16(s0)
	mv	s1,a1
	mv	a1,s1
	mv	a0,s0
	li	s4,1
	jalr	a5
	bne	a0,zero,.L3428
.L3395:
	ld	a1,0(s1)
	mv	a0,s0
	call	sqlite3WalkExprList
	bne	a0,zero,.L3397
	ld	a1,48(s1)
	beq	a1,zero,.L3400
	mv	a0,s0
	call	walkExpr
	bne	a0,zero,.L3397
.L3400:
	ld	a1,56(s1)
	mv	a0,s0
	call	sqlite3WalkExprList
	bne	a0,zero,.L3397
	ld	a1,64(s1)
	beq	a1,zero,.L3403
	mv	a0,s0
	call	walkExpr
	bne	a0,zero,.L3397
.L3403:
	ld	a1,72(s1)
	mv	a0,s0
	call	sqlite3WalkExprList
	mv	s2,a0
	bne	a0,zero,.L3397
	ld	a1,96(s1)
	beq	a1,zero,.L3407
	mv	a0,s0
	call	walkExpr
	bne	a0,zero,.L3397
.L3407:
	ld	a5,0(s0)
	beq	a5,zero,.L3406
	lbu	a5,276(a5)
	bgtu	a5,s4,.L3429
.L3406:
	ld	a3,40(s1)
	lw	a5,0(a3)
	addi	s3,a3,8
	ble	a5,zero,.L3409
	addiw	a5,a5,-1
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a4,a5,3
	sub	a5,a4,a5
	slli	a5,a5,4
	addi	a5,a5,120
	add	s5,a3,a5
	j	.L3414
.L3412:
	addi	s3,s3,112
	beq	s3,s5,.L3409
.L3414:
	ld	a1,40(s3)
	mv	a0,s0
	beq	a1,zero,.L3413
	ld	a5,16(s0)
	beq	a5,zero,.L3413
	call	sqlite3WalkSelect.part.0
	bne	a0,zero,.L3397
.L3413:
	lbu	a5,61(s3)
	andi	a5,a5,4
	beq	a5,zero,.L3412
	ld	a1,96(s3)
	mv	a0,s0
	call	sqlite3WalkExprList
	beq	a0,zero,.L3412
.L3397:
	li	s2,2
.L3423:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	jr	ra
.L3409:
	ld	a5,24(s0)
	beq	a5,zero,.L3417
	mv	a1,s1
	mv	a0,s0
	jalr	a5
.L3417:
	ld	s1,80(s1)
	beq	s1,zero,.L3423
	ld	a5,16(s0)
	mv	a1,s1
	mv	a0,s0
	jalr	a5
	beq	a0,zero,.L3395
.L3428:
	andi	a0,a0,2
	sext.w	s2,a0
	j	.L3423
.L3429:
	ld	a1,120(s1)
	mv	a0,s0
	call	walkWindowList
	beq	a0,zero,.L3406
	j	.L3397
	.size	sqlite3WalkSelect.part.0, .-sqlite3WalkSelect.part.0
	.section	.text.walkExpr,"ax",@progbits
	.align	1
	.type	walkExpr, @function
walkExpr:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	mv	s1,a0
	sd	ra,40(sp)
	ld	a5,8(s1)
	mv	s0,a1
	mv	a1,s0
	mv	a0,s1
	jalr	a5
	mv	s2,a0
	li	s3,8404992
	mv	a0,s1
	bne	s2,zero,.L3461
.L3431:
	lw	a5,4(s0)
	and	a5,a5,s3
	sext.w	a5,a5
	bne	a5,zero,.L3432
	ld	a1,16(s0)
	beq	a1,zero,.L3437
	call	walkExpr
	bne	a0,zero,.L3440
.L3437:
	ld	a5,24(s0)
	beq	a5,zero,.L3462
	mv	s0,a5
	ld	a5,8(s1)
	mv	a1,s0
	mv	a0,s1
	jalr	a5
	mv	s2,a0
	mv	a0,s1
	beq	s2,zero,.L3431
.L3461:
	andi	s2,s2,2
	sext.w	s2,s2
.L3432:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s3,8(sp)
	mv	a0,s2
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L3462:
	lw	a5,4(s0)
	ld	a1,32(s0)
	slli	a4,a5,52
	bge	a4,zero,.L3438
	beq	a1,zero,.L3439
	ld	a4,16(s1)
	beq	a4,zero,.L3439
	mv	a0,s1
	call	sqlite3WalkSelect.part.0
	bne	a0,zero,.L3440
.L3459:
	lw	a5,4(s0)
.L3439:
	slli	a4,a5,39
	bge	a4,zero,.L3432
	ld	a1,64(s0)
	mv	a0,s1
	call	walkWindowList
	beq	a0,zero,.L3432
.L3440:
	li	s2,2
.L3463:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s3,8(sp)
	mv	a0,s2
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L3438:
	beq	a1,zero,.L3439
	mv	a0,s1
	call	sqlite3WalkExprList
	beq	a0,zero,.L3459
	li	s2,2
	j	.L3463
	.size	walkExpr, .-walkExpr
	.section	.text.sqlite3WalkExprList,"ax",@progbits
	.align	1
	.type	sqlite3WalkExprList, @function
sqlite3WalkExprList:
	beq	a1,zero,.L3476
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	lw	a5,0(a1)
	addi	s0,a1,8
	ble	a5,zero,.L3465
	addiw	s1,a5,-1
	slli	s1,s1,32
	srli	s1,s1,27
	addi	s1,s1,40
	mv	s2,a0
	add	s1,a1,s1
.L3467:
	ld	a1,0(s0)
	mv	a0,s2
	addi	s0,s0,32
	beq	a1,zero,.L3469
	call	walkExpr
	bne	a0,zero,.L3479
.L3469:
	bne	s0,s1,.L3467
.L3465:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L3479:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,2
	addi	sp,sp,32
	jr	ra
.L3476:
	li	a0,0
	ret
	.size	sqlite3WalkExprList, .-sqlite3WalkExprList
	.section	.text.selectWindowRewriteEList,"ax",@progbits
	.align	1
	.type	selectWindowRewriteEList, @function
selectWindowRewriteEList:
	addi	sp,sp,-112
	sd	s0,96(sp)
	sd	ra,104(sp)
	ld	a7,0(a5)
	mv	s0,a5
	mv	a5,a0
	sd	a5,48(sp)
	lla	a5,selectWindowRewriteExprCb
	sd	a5,56(sp)
	lla	a5,selectWindowRewriteSelectCb
	mv	a6,a1
	sd	a5,64(sp)
	addi	a0,sp,48
	addi	a5,sp,8
	mv	a1,a3
	sd	a5,88(sp)
	sd	zero,72(sp)
	sd	zero,80(sp)
	sd	zero,40(sp)
	sd	a7,24(sp)
	sd	a6,8(sp)
	sd	a2,16(sp)
	sd	a4,32(sp)
	call	sqlite3WalkExprList
	ld	a5,24(sp)
	sd	a5,0(s0)
	ld	ra,104(sp)
	ld	s0,96(sp)
	addi	sp,sp,112
	jr	ra
	.size	selectWindowRewriteEList, .-selectWindowRewriteEList
	.section	.text.walkWindowList,"ax",@progbits
	.align	1
	.type	walkWindowList, @function
walkWindowList:
	beq	a1,zero,.L3495
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a1
	mv	s1,a0
	j	.L3488
.L3484:
	ld	a1,16(s0)
	call	sqlite3WalkExprList
	mv	a5,a0
	mv	a0,s1
	bne	a5,zero,.L3486
	ld	a1,64(s0)
	beq	a1,zero,.L3489
	call	walkExpr
	bne	a0,zero,.L3486
.L3489:
	ld	s0,56(s0)
	beq	s0,zero,.L3499
.L3488:
	ld	a1,24(s0)
	mv	a0,s1
	call	sqlite3WalkExprList
	mv	a5,a0
	mv	a0,s1
	beq	a5,zero,.L3484
.L3486:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,2
	addi	sp,sp,32
	jr	ra
.L3499:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L3495:
	li	a0,0
	ret
	.size	walkWindowList, .-walkWindowList
	.section	.text.sqlite3ExprImpliesNonNullRow,"ax",@progbits
	.align	1
	.type	sqlite3ExprImpliesNonNullRow, @function
sqlite3ExprImpliesNonNullRow:
	beq	a0,zero,.L3524
	addi	sp,sp,-96
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	ra,88(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	mv	s0,a0
	mv	s1,a1
	li	a2,266240
	li	a3,262144
.L3501:
	lw	a5,4(s0)
	and	a4,a5,a2
	sext.w	a4,a4
	and	a5,a5,a3
	sext.w	a5,a5
	beq	a4,zero,.L3525
	beq	a5,zero,.L3503
	ld	a5,32(s0)
	ld	s0,8(a5)
	bne	s0,zero,.L3501
.L3505:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	li	a0,0
	addi	sp,sp,96
	jr	ra
.L3503:
	ld	s0,16(s0)
	bne	s0,zero,.L3501
	j	.L3505
.L3525:
	lbu	a5,0(s0)
	li	s2,51
	li	s3,44
	mv	a1,s1
	beq	a5,s2,.L3526
.L3507:
	bne	a5,s3,.L3509
	ld	a0,16(s0)
	call	sqlite3ExprImpliesNonNullRow
	bne	a0,zero,.L3512
	ld	s0,24(s0)
	beq	s0,zero,.L3505
.L3523:
	lbu	a5,0(s0)
	mv	a1,s1
	bne	a5,s2,.L3507
.L3526:
	ld	s0,16(s0)
	bne	s0,zero,.L3523
	j	.L3505
.L3509:
	mv	a1,s0
	mv	a0,sp
	lla	a5,impliesNotNullRow
	sw	s1,40(sp)
	sd	a5,8(sp)
	sd	zero,16(sp)
	sd	zero,24(sp)
	sb	zero,36(sp)
	call	walkExpr
	ld	ra,88(sp)
	ld	s0,80(sp)
	lbu	a0,36(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	addi	sp,sp,96
	jr	ra
.L3512:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	li	a0,1
	addi	sp,sp,96
	jr	ra
.L3524:
	li	a0,0
	ret
	.size	sqlite3ExprImpliesNonNullRow, .-sqlite3ExprImpliesNonNullRow
	.section	.text.sqlite3ExprAnalyzeAggregates,"ax",@progbits
	.align	1
	.type	sqlite3ExprAnalyzeAggregates, @function
sqlite3ExprAnalyzeAggregates:
	addi	sp,sp,-64
	lla	a5,analyzeAggregate
	sd	a5,8(sp)
	lla	a5,analyzeAggregatesInSelect
	sd	a5,16(sp)
	lla	a5,analyzeAggregatesInSelectEnd
	sd	ra,56(sp)
	sd	a5,24(sp)
	sw	zero,32(sp)
	sd	a0,40(sp)
	sd	zero,0(sp)
	beq	a1,zero,.L3527
	mv	a0,sp
	call	walkExpr
.L3527:
	ld	ra,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	sqlite3ExprAnalyzeAggregates, .-sqlite3ExprAnalyzeAggregates
	.section	.text.sqlite3ExprAnalyzeAggList,"ax",@progbits
	.align	1
	.type	sqlite3ExprAnalyzeAggList, @function
sqlite3ExprAnalyzeAggList:
	beq	a1,zero,.L3541
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	lw	a5,0(a1)
	mv	s2,a1
	addi	s0,a1,8
	ble	a5,zero,.L3533
	mv	s3,a0
	li	s1,0
.L3535:
	ld	a1,0(s0)
	mv	a0,s3
	addiw	s1,s1,1
	call	sqlite3ExprAnalyzeAggregates
	lw	a5,0(s2)
	addi	s0,s0,32
	bgt	a5,s1,.L3535
.L3533:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L3541:
	ret
	.size	sqlite3ExprAnalyzeAggList, .-sqlite3ExprAnalyzeAggList
	.section	.text.sqlite3RenameExprUnmap,"ax",@progbits
	.align	1
	.type	sqlite3RenameExprUnmap, @function
sqlite3RenameExprUnmap:
	addi	sp,sp,-64
	lla	a5,renameUnmapExprCb
	sd	a5,8(sp)
	lla	a5,renameUnmapSelectCb
	sd	ra,56(sp)
	sd	zero,24(sp)
	sd	a0,0(sp)
	sd	a5,16(sp)
	sd	zero,32(sp)
	sd	zero,40(sp)
	beq	a1,zero,.L3544
	mv	a0,sp
	call	walkExpr
.L3544:
	ld	ra,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	sqlite3RenameExprUnmap, .-sqlite3RenameExprUnmap
	.section	.text.sqlite3ExprCoveredByIndex,"ax",@progbits
	.align	1
	.type	sqlite3ExprCoveredByIndex, @function
sqlite3ExprCoveredByIndex:
	addi	sp,sp,-80
	lla	a5,exprIdxCover
	sd	a5,24(sp)
	mv	a5,sp
	sd	ra,72(sp)
	sd	zero,16(sp)
	sw	a1,8(sp)
	sd	a2,0(sp)
	sd	a5,56(sp)
	sd	zero,32(sp)
	sd	zero,40(sp)
	sd	zero,48(sp)
	beq	a0,zero,.L3552
	mv	a1,a0
	addi	a0,sp,16
	call	walkExpr
	lbu	a0,52(sp)
	ld	ra,72(sp)
	seqz	a0,a0
	addi	sp,sp,80
	jr	ra
.L3552:
	ld	ra,72(sp)
	li	a0,1
	addi	sp,sp,80
	jr	ra
	.size	sqlite3ExprCoveredByIndex, .-sqlite3ExprCoveredByIndex
	.section	.text.sqlite3ExprReferencesUpdatedColumn,"ax",@progbits
	.align	1
	.type	sqlite3ExprReferencesUpdatedColumn, @function
sqlite3ExprReferencesUpdatedColumn:
	addi	sp,sp,-64
	lla	a5,checkConstraintExprNode
	sd	s0,48(sp)
	sd	a5,8(sp)
	sd	ra,56(sp)
	sd	zero,0(sp)
	sd	a1,40(sp)
	sd	zero,16(sp)
	sd	zero,24(sp)
	sd	zero,32(sp)
	mv	s0,a2
	li	a5,0
	beq	a0,zero,.L3555
	mv	a1,a0
	mv	a0,sp
	call	walkExpr
	lbu	a5,36(sp)
.L3555:
	bne	s0,zero,.L3556
	andi	a5,a5,253
.L3556:
	ld	ra,56(sp)
	ld	s0,48(sp)
	snez	a0,a5
	addi	sp,sp,64
	jr	ra
	.size	sqlite3ExprReferencesUpdatedColumn, .-sqlite3ExprReferencesUpdatedColumn
	.section	.text.selectWindowRewriteSelectCb,"ax",@progbits
	.align	1
	.type	selectWindowRewriteSelectCb, @function
selectWindowRewriteSelectCb:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	ld	s0,40(a0)
	ld	s1,32(s0)
	beq	s1,a1,.L3564
	sd	a1,32(s0)
	beq	a1,zero,.L3563
	ld	a5,16(a0)
	beq	a5,zero,.L3563
	call	sqlite3WalkSelect.part.0
.L3563:
	sd	s1,32(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,1
	addi	sp,sp,32
	jr	ra
.L3564:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	selectWindowRewriteSelectCb, .-selectWindowRewriteSelectCb
	.section	.text.resolveAsName.isra.0.part.0,"ax",@progbits
	.align	1
	.type	resolveAsName.isra.0.part.0, @function
resolveAsName.isra.0.part.0:
	lw	t3,0(a0)
	ld	t4,0(a1)
	ble	t3,zero,.L3580
	addi	a7,a0,16
	li	t1,0
	lla	a1,.LANCHOR2
	j	.L3579
.L3574:
	addiw	t1,t1,1
	addi	a7,a7,32
	beq	t1,t3,.L3580
.L3579:
	ld	a4,0(a7)
	beq	a4,zero,.L3574
	mv	a2,t4
	lbu	a5,0(a4)
	lbu	a3,0(a2)
	addi	a4,a4,1
	add	a6,a1,a5
	add	a0,a1,a3
	beq	a5,a3,.L3586
.L3575:
	lbu	a3,320(a6)
	lbu	a5,320(a0)
	bne	a3,a5,.L3574
.L3577:
	lbu	a5,0(a4)
	lbu	a3,1(a2)
	addi	a2,a2,1
	addi	a4,a4,1
	add	a6,a1,a5
	add	a0,a1,a3
	bne	a5,a3,.L3575
.L3586:
	bne	a5,zero,.L3577
	addiw	a0,t1,1
	ret
.L3580:
	li	a0,0
	ret
	.size	resolveAsName.isra.0.part.0, .-resolveAsName.isra.0.part.0
	.section	.text.resolveRemoveWindowsCb,"ax",@progbits
	.align	1
	.type	resolveRemoveWindowsCb, @function
resolveRemoveWindowsCb:
	lw	a5,4(a1)
	slli	a4,a5,39
	bge	a4,zero,.L3588
	ld	a3,40(a0)
	ld	a5,112(a3)
	addi	a3,a3,112
	beq	a5,zero,.L3588
	ld	a2,64(a1)
	j	.L3590
.L3589:
	addi	a3,a4,56
	beq	a5,zero,.L3588
.L3590:
	mv	a4,a5
	ld	a5,56(a5)
	bne	a2,a4,.L3589
	sd	a5,0(a3)
.L3588:
	li	a0,0
	ret
	.size	resolveRemoveWindowsCb, .-resolveRemoveWindowsCb
	.section	.text.heightOfExprList.part.0,"ax",@progbits
	.align	1
	.type	heightOfExprList.part.0, @function
heightOfExprList.part.0:
	lw	a3,0(a0)
	sext.w	a5,a3
	ble	a5,zero,.L3598
	li	a5,0
.L3601:
	slli	a4,a5,5
	add	a4,a0,a4
	ld	a4,8(a4)
	addiw	a5,a5,1
	beq	a4,zero,.L3600
	lw	a4,40(a4)
	lw	a2,0(a1)
	bge	a2,a4,.L3600
	sw	a4,0(a1)
	lw	a3,0(a0)
.L3600:
	sext.w	a4,a3
	bgt	a4,a5,.L3601
.L3598:
	ret
	.size	heightOfExprList.part.0, .-heightOfExprList.part.0
	.section	.text.heightOfSelect,"ax",@progbits
	.align	1
	.type	heightOfSelect, @function
heightOfSelect:
	beq	a0,zero,.L3638
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a0
	mv	s1,a1
.L3614:
	ld	a5,48(s0)
	beq	a5,zero,.L3608
	lw	a5,40(a5)
	lw	a4,0(s1)
	bge	a4,a5,.L3608
	sw	a5,0(s1)
.L3608:
	ld	a5,64(s0)
	beq	a5,zero,.L3609
	lw	a5,40(a5)
	lw	a4,0(s1)
	bge	a4,a5,.L3609
	sw	a5,0(s1)
.L3609:
	ld	a5,96(s0)
	beq	a5,zero,.L3610
	lw	a5,40(a5)
	lw	a4,0(s1)
	bge	a4,a5,.L3610
	sw	a5,0(s1)
.L3610:
	ld	a0,0(s0)
	beq	a0,zero,.L3611
	mv	a1,s1
	call	heightOfExprList.part.0
.L3611:
	ld	a0,56(s0)
	beq	a0,zero,.L3612
	mv	a1,s1
	call	heightOfExprList.part.0
.L3612:
	ld	a0,72(s0)
	beq	a0,zero,.L3613
	mv	a1,s1
	call	heightOfExprList.part.0
.L3613:
	ld	s0,80(s0)
	bne	s0,zero,.L3614
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L3638:
	ret
	.size	heightOfSelect, .-heightOfSelect
	.section	.text.exprSetHeight,"ax",@progbits
	.align	1
	.type	exprSetHeight, @function
exprSetHeight:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	ld	a5,16(a0)
	sw	zero,12(sp)
	mv	s1,a0
	beq	a5,zero,.L3642
	lw	a5,40(a5)
	bgt	a5,zero,.L3659
.L3642:
	ld	a5,24(s1)
	beq	a5,zero,.L3643
	lw	a5,40(a5)
	lw	a4,12(sp)
	blt	a4,a5,.L3660
.L3643:
	lw	a5,4(s1)
	li	s0,4096
	addi	s0,s0,-2048
	and	s0,s0,a5
	ld	a0,32(s1)
	bne	s0,zero,.L3661
.L3644:
	beq	a0,zero,.L3645
	addi	a1,sp,12
	call	heightOfExprList.part.0
	ld	a5,32(s1)
	lw	a4,0(a5)
	ble	a4,zero,.L3646
	addiw	a4,a4,-1
	slli	a4,a4,32
	addi	a3,a5,40
	srli	a4,a4,27
	addi	a5,a5,8
	add	a4,a4,a3
.L3647:
	ld	a3,0(a5)
	addi	a5,a5,32
	lw	a3,4(a3)
	or	s0,s0,a3
	bne	a5,a4,.L3647
	li	a5,2097152
	addi	a5,a5,260
	and	s0,s0,a5
.L3646:
	lw	a5,4(s1)
	or	s0,s0,a5
	sw	s0,4(s1)
.L3645:
	lw	a5,12(sp)
	addiw	a5,a5,1
	sw	a5,40(s1)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L3660:
	sw	a5,12(sp)
	lw	a5,4(s1)
	li	s0,4096
	addi	s0,s0,-2048
	and	s0,s0,a5
	ld	a0,32(s1)
	beq	s0,zero,.L3644
.L3661:
	addi	a1,sp,12
	call	heightOfSelect
	lw	a5,12(sp)
	addiw	a5,a5,1
	sw	a5,40(s1)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L3659:
	sw	a5,12(sp)
	j	.L3642
	.size	exprSetHeight, .-exprSetHeight
	.section	.text.gatherSelectWindowsCallback,"ax",@progbits
	.align	1
	.type	gatherSelectWindowsCallback, @function
gatherSelectWindowsCallback:
	lbu	a4,0(a1)
	li	a5,161
	beq	a4,a5,.L3667
.L3663:
	li	a0,0
	ret
.L3667:
	ld	a5,64(a1)
	beq	a5,zero,.L3663
	ld	a4,40(a0)
	ld	a4,112(a4)
	sd	a4,56(a5)
	ld	a5,40(a0)
	ld	a4,64(a1)
	li	a0,0
	sd	a4,112(a5)
	ret
	.size	gatherSelectWindowsCallback, .-gatherSelectWindowsCallback
	.section	.text.sqlite3ExprIsInteger,"ax",@progbits
	.align	1
	.type	sqlite3ExprIsInteger, @function
sqlite3ExprIsInteger:
	beq	a0,zero,.L3673
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	lw	a4,4(a0)
	mv	a5,a0
	mv	s0,a1
	andi	a4,a4,1024
	bne	a4,zero,.L3682
	lbu	a4,0(a0)
	li	a3,165
	beq	a4,a3,.L3671
	li	a3,166
	li	a0,0
	beq	a4,a3,.L3683
.L3669:
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L3682:
	lw	a5,8(a0)
	li	a0,1
	sw	a5,0(a1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L3683:
	ld	a0,16(a5)
	call	sqlite3ExprIsInteger
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L3671:
	ld	a0,16(a0)
	addi	a1,sp,12
	call	sqlite3ExprIsInteger
	beq	a0,zero,.L3669
	lw	a5,12(sp)
	li	a0,1
	negw	a5,a5
	sw	a5,0(s0)
	j	.L3669
.L3673:
	li	a0,0
	ret
	.size	sqlite3ExprIsInteger, .-sqlite3ExprIsInteger
	.section	.text.sqlite3ExprNeedsNoAffinityChange,"ax",@progbits
	.align	1
	.type	sqlite3ExprNeedsNoAffinityChange, @function
sqlite3ExprNeedsNoAffinityChange:
	li	a5,65
	beq	a1,a5,.L3695
	lbu	a4,0(a0)
	li	a3,1
	addiw	a5,a4,91
	andi	a5,a5,0xff
	bgtu	a5,a3,.L3686
.L3687:
	ld	a0,16(a0)
	lbu	a4,0(a0)
	addiw	a5,a4,91
	andi	a5,a5,0xff
	bleu	a5,a3,.L3687
.L3686:
	li	a5,168
	bne	a4,a5,.L3688
	lbu	a4,54(a0)
.L3688:
	li	a5,146
	beq	a4,a5,.L3695
	bleu	a4,a5,.L3699
	li	a5,147
	beq	a4,a5,.L3692
	li	a5,162
	bne	a4,a5,.L3698
	lh	a5,48(a0)
	li	a0,0
	blt	a5,zero,.L3700
	ret
.L3699:
	li	a5,110
	beq	a4,a5,.L3690
	li	a5,145
	bne	a4,a5,.L3698
	addiw	a5,a1,-67
	andi	a5,a5,253
	seqz	a0,a5
	ret
.L3695:
	li	a0,1
	ret
.L3690:
	addi	a1,a1,-66
	seqz	a0,a1
	ret
.L3692:
	addiw	a1,a1,-67
	andi	a1,a1,0xff
	sltiu	a0,a1,2
	ret
.L3700:
	addiw	a5,a1,-67
	andi	a5,a5,0xff
	sltiu	a0,a5,2
	ret
.L3698:
	li	a0,0
	ret
	.size	sqlite3ExprNeedsNoAffinityChange, .-sqlite3ExprNeedsNoAffinityChange
	.section	.text.updateRangeAffinityStr,"ax",@progbits
	.align	1
	.type	updateRangeAffinityStr, @function
updateRangeAffinityStr:
	beq	a1,zero,.L3714
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s2,32(sp)
	mv	s4,a1
	mv	s5,a0
	mv	s0,a2
	li	s1,0
	li	s3,65
.L3705:
	mv	a1,s1
	mv	a0,s5
	call	sqlite3VectorFieldSubexpr
	lbu	a1,0(s0)
	mv	s2,a0
	addiw	s1,s1,1
	call	sqlite3CompareAffinity
	mv	a5,a0
	mv	a0,s2
	beq	a5,s3,.L3703
	lbu	a1,0(s0)
	call	sqlite3ExprNeedsNoAffinityChange
	beq	a0,zero,.L3704
.L3703:
	sb	s3,0(s0)
.L3704:
	addi	s0,s0,1
	bne	s4,s1,.L3705
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L3714:
	ret
	.size	updateRangeAffinityStr, .-updateRangeAffinityStr
	.section	.rodata.str1.8
	.align	3
.LC27:
	.string	"_ROWID_"
	.align	3
.LC28:
	.string	"ROWID"
	.align	3
.LC29:
	.string	"OID"
	.section	.text.sqlite3IsRowid,"ax",@progbits
	.align	1
	.type	sqlite3IsRowid, @function
sqlite3IsRowid:
	mv	a6,a0
	li	a1,95
	lla	a2,.LC27
	lla	a5,.LANCHOR2
	j	.L3722
.L3718:
	lbu	a3,320(a7)
	lbu	a4,320(a4)
	bne	a3,a4,.L3729
.L3720:
	lbu	a1,0(a2)
	addi	a6,a6,1
.L3722:
	lbu	a3,0(a6)
	sext.w	a4,a1
	addi	a2,a2,1
	add	a7,a5,a3
	add	a4,a5,a4
	bne	a3,a1,.L3718
	bne	a3,zero,.L3720
	li	a0,1
	ret
.L3729:
	mv	a6,a0
	li	a1,82
	lla	a2,.LC28
	j	.L3721
.L3723:
	lbu	a3,320(a7)
	lbu	a4,320(a4)
	bne	a3,a4,.L3731
.L3724:
	lbu	a1,0(a2)
	addi	a6,a6,1
.L3721:
	lbu	a3,0(a6)
	sext.w	a4,a1
	addi	a2,a2,1
	add	a7,a5,a3
	add	a4,a5,a4
	bne	a3,a1,.L3723
	bne	a3,zero,.L3724
	li	a0,1
	ret
.L3731:
	li	a1,79
	lla	a2,.LC29
	j	.L3725
.L3726:
	lbu	a3,320(a6)
	lbu	a4,320(a4)
	bne	a3,a4,.L3733
.L3727:
	lbu	a1,0(a2)
	addi	a0,a0,1
.L3725:
	lbu	a3,0(a0)
	sext.w	a4,a1
	addi	a2,a2,1
	add	a6,a5,a3
	add	a4,a5,a4
	bne	a3,a1,.L3726
	bne	a3,zero,.L3727
	li	a0,1
	ret
.L3733:
	li	a0,0
	ret
	.size	sqlite3IsRowid, .-sqlite3IsRowid
	.section	.text.impliesNotNullRow,"ax",@progbits
	.align	1
	.type	impliesNotNullRow, @function
impliesNotNullRow:
	lw	a5,4(a1)
	mv	a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L3742
	lbu	a5,0(a1)
	li	a3,57
	bgtu	a5,a3,.L3736
	li	a4,18
	li	a0,0
	bgtu	a5,a4,.L3752
.L3735:
	ret
.L3752:
	addiw	a5,a5,-19
	andi	a5,a5,0xff
	li	a4,38
	bgtu	a5,a4,.L3744
	lla	a4,.L3738
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L3738:
	.word	.L3742-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3742-.L3738
	.word	.L3744-.L3738
	.word	.L3742-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3744-.L3738
	.word	.L3742-.L3738
	.word	.L3742-.L3738
	.word	.L3742-.L3738
	.word	.L3737-.L3738
	.word	.L3737-.L3738
	.word	.L3737-.L3738
	.word	.L3737-.L3738
	.word	.L3737-.L3738
	.word	.L3737-.L3738
	.section	.text.impliesNotNullRow
.L3742:
	li	a0,1
	ret
.L3744:
	li	a0,0
	ret
.L3736:
	li	a3,162
	bne	a5,a3,.L3753
	lw	a3,40(a0)
	lw	a5,44(a1)
	li	a0,1
	bne	a3,a5,.L3735
	sb	a0,36(a4)
	li	a0,2
	ret
.L3753:
	li	a0,0
	bgtu	a5,a3,.L3735
	li	a4,149
	li	a0,1
	beq	a5,a4,.L3735
	addiw	a5,a5,96
	andi	a5,a5,0xff
	sgtu	a5,a5,a0
	xori	a5,a5,1
	slli	a0,a5,32
	srli	a0,a0,32
	ret
.L3737:
	ld	a5,16(a1)
	li	a4,162
	lbu	a3,0(a5)
	beq	a3,a4,.L3754
.L3741:
	ld	a5,24(a1)
	li	a4,162
	li	a0,0
	lbu	a3,0(a5)
	bne	a3,a4,.L3735
	ld	a5,64(a5)
	lw	a5,84(a5)
	snez	a0,a5
	ret
.L3754:
	ld	a5,64(a5)
	li	a0,1
	lw	a5,84(a5)
	beq	a5,zero,.L3741
	ret
	.size	impliesNotNullRow, .-impliesNotNullRow
	.section	.text.exprSrcCount,"ax",@progbits
	.align	1
	.type	exprSrcCount, @function
exprSrcCount:
	lbu	a5,0(a1)
	addiw	a5,a5,94
	andi	a5,a5,253
	beq	a5,zero,.L3765
	li	a0,0
	ret
.L3765:
	ld	a0,40(a0)
	ld	a5,0(a0)
	beq	a5,zero,.L3757
	lw	a3,0(a5)
	ble	a3,zero,.L3757
	addiw	a3,a3,-1
	slli	a4,a3,32
	srli	a4,a4,32
	slli	a3,a4,3
	sub	a3,a3,a4
	slli	a3,a3,4
	addi	a4,a5,184
	lw	a2,44(a1)
	addi	a5,a5,72
	add	a3,a3,a4
	j	.L3759
.L3766:
	beq	a3,a5,.L3757
.L3759:
	lw	a4,0(a5)
	addi	a5,a5,112
	bne	a4,a2,.L3766
	lw	a5,8(a0)
	addiw	a5,a5,1
	sw	a5,8(a0)
	li	a0,0
	ret
.L3757:
	lw	a5,12(a0)
	addiw	a5,a5,1
	sw	a5,12(a0)
	li	a0,0
	ret
	.size	exprSrcCount, .-exprSrcCount
	.section	.text.sqlite3ReleaseTempReg.part.0,"ax",@progbits
	.align	1
	.type	sqlite3ReleaseTempReg.part.0, @function
sqlite3ReleaseTempReg.part.0:
	lbu	a5,31(a0)
	li	a4,7
	bgtu	a5,a4,.L3767
	addi	a4,a5,48
	slli	a4,a4,2
	addiw	a5,a5,1
	sb	a5,31(a0)
	add	a0,a0,a4
	sw	a1,12(a0)
.L3767:
	ret
	.size	sqlite3ReleaseTempReg.part.0, .-sqlite3ReleaseTempReg.part.0
	.section	.text.sqlite3GetTempRange,"ax",@progbits
	.align	1
	.type	sqlite3GetTempRange, @function
sqlite3GetTempRange:
	li	a4,1
	mv	a5,a0
	beq	a1,a4,.L3774
	lw	a4,40(a0)
	bgt	a1,a4,.L3773
	lw	a0,44(a0)
	subw	a4,a4,a1
	sw	a4,40(a5)
	addw	a1,a1,a0
	sw	a1,44(a5)
	ret
.L3773:
	lw	a0,56(a0)
	addw	a1,a0,a1
	sw	a1,56(a5)
	addiw	a0,a0,1
	ret
.L3774:
	lbu	a4,31(a0)
	beq	a4,zero,.L3775
	addiw	a4,a4,-1
	andi	a4,a4,0xff
	addi	a0,a4,48
	slli	a0,a0,2
	sb	a4,31(a5)
	add	a5,a5,a0
	lw	a0,12(a5)
	ret
.L3775:
	lw	a4,56(a0)
	addiw	a0,a4,1
	sw	a0,56(a5)
	ret
	.size	sqlite3GetTempRange, .-sqlite3GetTempRange
	.section	.text.sqlite3ReleaseTempRange.part.0,"ax",@progbits
	.align	1
	.type	sqlite3ReleaseTempRange.part.0, @function
sqlite3ReleaseTempRange.part.0:
	beq	a1,zero,.L3776
	tail	sqlite3ReleaseTempReg.part.0
.L3776:
	ret
	.size	sqlite3ReleaseTempRange.part.0, .-sqlite3ReleaseTempRange.part.0
	.section	.text.renameColumnElistNames.part.0,"ax",@progbits
	.align	1
	.type	renameColumnElistNames.part.0, @function
renameColumnElistNames.part.0:
	lw	a5,0(a2)
	ble	a5,zero,.L3792
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	mv	s2,a2
	mv	s4,a0
	mv	s3,a1
	mv	s6,a3
	li	s1,0
	addi	s5,a0,400
	j	.L3779
.L3780:
	lw	a5,0(s2)
	addiw	s1,s1,1
	ble	a5,s1,.L3795
.L3779:
	slli	a5,s1,5
	add	a5,s2,a5
	ld	s0,16(a5)
	mv	a1,s6
	mv	a0,s0
	call	sqlite3_stricmp@plt
	bne	a0,zero,.L3780
	ld	a5,400(s4)
	mv	a7,s5
	bne	a5,zero,.L3782
	j	.L3780
.L3781:
	addi	a7,a4,24
	beq	a5,zero,.L3780
.L3782:
	ld	a6,0(a5)
	mv	a4,a5
	ld	a5,24(a5)
	bne	s0,a6,.L3781
	sd	a5,0(a7)
	ld	a5,0(s3)
	addiw	s1,s1,1
	sd	a5,24(a4)
	lw	a5,8(s3)
	sd	a4,0(s3)
	addiw	a5,a5,1
	sw	a5,8(s3)
	lw	a5,0(s2)
	bgt	a5,s1,.L3779
.L3795:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L3792:
	ret
	.size	renameColumnElistNames.part.0, .-renameColumnElistNames.part.0
	.section	.text.renameColumnIdlistNames.part.0,"ax",@progbits
	.align	1
	.type	renameColumnIdlistNames.part.0, @function
renameColumnIdlistNames.part.0:
	lw	a5,8(a2)
	ble	a5,zero,.L3810
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	mv	s6,a2
	mv	s3,a0
	mv	s2,a1
	mv	s5,a3
	li	s1,0
	addi	s4,a0,400
	j	.L3797
.L3798:
	lw	a5,8(s6)
	addiw	s1,s1,1
	ble	a5,s1,.L3813
.L3797:
	ld	a4,0(s6)
	slli	a5,s1,4
	mv	a1,s5
	add	a5,a4,a5
	ld	s0,0(a5)
	mv	a0,s0
	call	sqlite3_stricmp@plt
	bne	a0,zero,.L3798
	ld	a5,400(s3)
	mv	a3,s4
	bne	a5,zero,.L3800
	j	.L3798
.L3799:
	addi	a3,a4,24
	beq	a5,zero,.L3798
.L3800:
	ld	a6,0(a5)
	mv	a4,a5
	ld	a5,24(a5)
	bne	s0,a6,.L3799
	sd	a5,0(a3)
	ld	a5,0(s2)
	addiw	s1,s1,1
	sd	a5,24(a4)
	lw	a5,8(s2)
	sd	a4,0(s2)
	addiw	a5,a5,1
	sw	a5,8(s2)
	lw	a5,8(s6)
	bgt	a5,s1,.L3797
.L3813:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L3810:
	ret
	.size	renameColumnIdlistNames.part.0, .-renameColumnIdlistNames.part.0
	.section	.text.renameWalkTrigger.isra.0,"ax",@progbits
	.align	1
	.type	renameWalkTrigger.isra.0, @function
renameWalkTrigger.isra.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	mv	s1,a0
	mv	s0,a2
	beq	a1,zero,.L3815
	call	walkExpr
.L3815:
	ld	s0,0(s0)
	beq	s0,zero,.L3814
.L3823:
	ld	a1,16(s0)
	beq	a1,zero,.L3817
	ld	a5,16(s1)
	beq	a5,zero,.L3817
	mv	a0,s1
	call	sqlite3WalkSelect.part.0
.L3817:
	ld	a1,32(s0)
	beq	a1,zero,.L3818
	mv	a0,s1
	call	walkExpr
.L3818:
	ld	a1,40(s0)
	mv	a0,s1
	call	sqlite3WalkExprList
	ld	s2,56(s0)
	beq	s2,zero,.L3820
	ld	a1,0(s2)
	mv	a0,s1
	call	sqlite3WalkExprList
	ld	a1,16(s2)
	mv	a0,s1
	call	sqlite3WalkExprList
	ld	a1,24(s2)
	beq	a1,zero,.L3821
	mv	a0,s1
	call	walkExpr
.L3821:
	ld	a1,8(s2)
	beq	a1,zero,.L3820
	mv	a0,s1
	call	walkExpr
.L3820:
	ld	s0,72(s0)
	bne	s0,zero,.L3823
.L3814:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	renameWalkTrigger.isra.0, .-renameWalkTrigger.isra.0
	.section	.text.exprIdxCover,"ax",@progbits
	.align	1
	.type	exprIdxCover, @function
exprIdxCover:
	lbu	a3,0(a1)
	li	a5,162
	mv	a4,a0
	beq	a3,a5,.L3858
.L3852:
	li	a0,0
.L3848:
	ret
.L3858:
	ld	a5,40(a0)
	lw	a2,44(a1)
	li	a0,0
	lw	a3,8(a5)
	bne	a2,a3,.L3848
	ld	a5,0(a5)
	lh	a1,48(a1)
	lhu	a0,96(a5)
	ld	a5,8(a5)
	beq	a0,zero,.L3849
	li	a3,0
	sext.w	a1,a1
	j	.L3851
.L3850:
	addiw	a3,a3,1
	beq	a3,a0,.L3849
.L3851:
	lh	a2,0(a5)
	addi	a5,a5,2
	bne	a2,a1,.L3850
	slli	a5,a3,48
	bge	a5,zero,.L3852
.L3849:
	li	a5,1
	sb	a5,36(a4)
	li	a0,2
	ret
	.size	exprIdxCover, .-exprIdxCover
	.section	.text.isDupColumn.isra.0,"ax",@progbits
	.align	1
	.type	isDupColumn.isra.0, @function
isDupColumn.isra.0:
	slli	a6,a5,1
	add	a3,a3,a6
	lh	t5,0(a3)
	ble	a2,zero,.L3866
	ld	t3,0(a0)
	addiw	t4,a2,-1
	slli	t4,t4,32
	srli	t4,t4,31
	addi	a3,t3,2
	neg	t0,t3
	slli	t6,a5,3
	add	t4,t4,a3
	slli	t0,t0,2
	sext.w	t5,t5
	lla	a6,.LANCHOR2
	j	.L3865
.L3861:
	addi	t3,t3,2
	beq	t3,t4,.L3866
.L3865:
	lh	a5,0(t3)
	bne	a5,t5,.L3861
	ld	a5,0(a1)
	ld	a2,0(a4)
	slli	a3,t3,2
	add	a5,a5,a3
	add	a5,a5,t0
	add	a2,a2,t6
	ld	a3,0(a5)
	ld	a0,0(a2)
	lbu	a5,0(a3)
	lbu	a2,0(a0)
	addi	a3,a3,1
	add	t1,a6,a5
	add	a7,a6,a2
	beq	a5,a2,.L3869
.L3862:
	lbu	a2,320(t1)
	lbu	a5,320(a7)
	bne	a2,a5,.L3861
.L3863:
	lbu	a5,0(a3)
	lbu	a2,1(a0)
	addi	a0,a0,1
	addi	a3,a3,1
	add	t1,a6,a5
	add	a7,a6,a2
	bne	a5,a2,.L3862
.L3869:
	bne	a5,zero,.L3863
	li	a0,1
	ret
.L3866:
	li	a0,0
	ret
	.size	isDupColumn.isra.0, .-isDupColumn.isra.0
	.section	.text.sqlite3IdListDelete.part.0,"ax",@progbits
	.align	1
	.type	sqlite3IdListDelete.part.0, @function
sqlite3IdListDelete.part.0:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	lw	a3,8(a1)
	ld	a4,0(a1)
	mv	s1,a1
	sext.w	a5,a3
	mv	s2,a0
	ble	a5,zero,.L3871
	li	s0,0
.L3873:
	slli	a5,s0,4
	add	a5,a4,a5
	ld	a1,0(a5)
	mv	a0,s2
	addiw	s0,s0,1
	beq	a1,zero,.L3872
	call	sqlite3DbFreeNN
	lw	a3,8(s1)
	ld	a4,0(s1)
.L3872:
	sext.w	a5,a3
	bgt	a5,s0,.L3873
.L3871:
	beq	a4,zero,.L3874
	mv	a1,a4
	mv	a0,s2
	call	sqlite3DbFreeNN
.L3874:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s1
	mv	a0,s2
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
	.size	sqlite3IdListDelete.part.0, .-sqlite3IdListDelete.part.0
	.section	.text.sqlite3IdListIndex.part.0,"ax",@progbits
	.align	1
	.type	sqlite3IdListIndex.part.0, @function
sqlite3IdListIndex.part.0:
	lw	t4,8(a0)
	ble	t4,zero,.L3896
	ld	t3,0(a0)
	lla	a6,.LANCHOR2
	li	a0,0
.L3889:
	ld	a4,0(t3)
	mv	a2,a1
	lbu	a3,0(a2)
	lbu	a5,0(a4)
	addi	a4,a4,1
	add	a7,a6,a3
	add	t1,a6,a5
	beq	a5,a3,.L3897
.L3885:
	lbu	a3,320(t1)
	lbu	a5,320(a7)
	bne	a3,a5,.L3887
.L3886:
	lbu	a5,0(a4)
	lbu	a3,1(a2)
	addi	a2,a2,1
	addi	a4,a4,1
	add	t1,a6,a5
	add	a7,a6,a3
	bne	a5,a3,.L3885
.L3897:
	bne	a5,zero,.L3886
	ret
.L3887:
	addiw	a0,a0,1
	addi	t3,t3,16
	bne	a0,t4,.L3889
.L3896:
	li	a0,-1
	ret
	.size	sqlite3IdListIndex.part.0, .-sqlite3IdListIndex.part.0
	.section	.text.sqlite3FkRequired.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3FkRequired.isra.0, @function
sqlite3FkRequired.isra.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	ld	a5,48(a0)
	li	s0,0
	slli	a4,a5,49
	bge	a4,zero,.L3899
	ld	a0,0(a1)
	mv	s1,a1
	mv	s2,a2
	beq	a2,zero,.L3925
	ld	s3,32(a1)
	mv	s4,a3
	li	s0,0
	beq	s3,zero,.L3901
.L3906:
	ld	a1,16(s3)
	call	sqlite3_stricmp@plt
	beq	a0,zero,.L3908
	lw	a5,40(s3)
	ble	a5,zero,.L3903
	addiw	a6,a5,-1
	slli	a6,a6,32
	srli	a4,a6,28
	addi	a6,s3,80
	addi	a5,s3,64
	add	a6,a4,a6
.L3905:
	lw	a0,0(a5)
	addi	a5,a5,16
	slli	a4,a0,2
	add	a4,s2,a4
	lw	a4,0(a4)
	bge	a4,zero,.L3914
	lh	a4,68(s1)
	beq	a4,a0,.L3926
.L3904:
	bne	a5,a6,.L3905
.L3903:
	ld	s3,8(s3)
	ld	a0,0(s1)
	bne	s3,zero,.L3906
.L3901:
	ld	a5,112(s1)
	mv	a1,a0
	li	a2,0
	addi	a0,a5,80
	call	findElementWithHash
	ld	s3,16(a0)
	beq	s3,zero,.L3899
.L3909:
	mv	a1,s3
	mv	a3,s4
	mv	a2,s2
	mv	a0,s1
	call	fkParentIsModified
	beq	a0,zero,.L3907
	lbu	a5,46(s3)
	li	s0,1
	bne	a5,zero,.L3908
.L3907:
	ld	s3,24(s3)
	bne	s3,zero,.L3909
.L3899:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L3926:
	beq	s4,zero,.L3904
.L3914:
	ld	s3,8(s3)
	ld	a0,0(s1)
	li	s0,1
	bne	s3,zero,.L3906
	j	.L3901
.L3908:
	li	s0,2
	j	.L3899
.L3925:
	ld	a5,112(a1)
	mv	a1,a0
	li	s0,1
	addi	a0,a5,80
	call	findElementWithHash
	ld	a5,16(a0)
	bne	a5,zero,.L3899
	ld	s0,32(s1)
	snez	s0,s0
	j	.L3899
	.size	sqlite3FkRequired.isra.0, .-sqlite3FkRequired.isra.0
	.section	.text.autoIncBegin.part.0,"ax",@progbits
	.align	1
	.type	autoIncBegin.part.0, @function
autoIncBegin.part.0:
	ld	a4,0(a0)
	lw	a5,44(a4)
	andi	a5,a5,4
	beq	a5,zero,.L3928
	li	a0,0
	ret
.L3928:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	ld	s1,160(a0)
	mv	s0,a1
	beq	s1,zero,.L3956
	ld	a5,32(a4)
	slli	a3,s0,5
	add	a5,a5,a3
	ld	a5,24(a5)
	ld	a5,104(a5)
	beq	a5,zero,.L3931
.L3957:
	lw	a3,64(a5)
	andi	a3,a3,32
	bne	a3,zero,.L3931
	lw	a3,84(a5)
	bne	a3,zero,.L3931
	lh	a3,70(a5)
	li	a5,2
	bne	a3,a5,.L3931
	ld	a5,152(s1)
	bne	a5,zero,.L3933
	j	.L3934
.L3935:
	ld	a5,0(a5)
	beq	a5,zero,.L3934
.L3933:
	ld	a3,8(a5)
	bne	a3,a2,.L3935
	lw	a0,20(a5)
	j	.L3950
.L3931:
	lw	a5,48(a0)
	li	a4,523
	sw	a4,24(a0)
	addiw	a5,a5,1
	sw	a5,48(a0)
.L3955:
	li	a0,0
.L3950:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L3956:
	ld	a5,32(a4)
	slli	a3,s0,5
	mv	s1,a0
	add	a5,a5,a3
	ld	a5,24(a5)
	ld	a5,104(a5)
	bne	a5,zero,.L3957
	j	.L3931
.L3934:
	li	a1,24
	mv	a0,a4
	sd	a2,8(sp)
	call	sqlite3DbMallocRawNN
	ld	a2,8(sp)
	mv	a5,a0
	beq	a0,zero,.L3955
	ld	a4,152(s1)
	sd	a4,0(a5)
	sd	a5,152(s1)
	sd	a2,8(a5)
	sw	s0,16(a5)
	lw	a4,56(s1)
	addiw	a3,a4,2
	sw	a3,20(a5)
	addiw	a4,a4,4
	sw	a4,56(s1)
	lw	a0,20(a5)
	j	.L3950
	.size	autoIncBegin.part.0, .-autoIncBegin.part.0
	.section	.text.checkConstraintExprNode,"ax",@progbits
	.align	1
	.type	checkConstraintExprNode, @function
checkConstraintExprNode:
	lbu	a4,0(a1)
	li	a5,162
	beq	a4,a5,.L3961
.L3959:
	li	a0,0
	ret
.L3961:
	lh	a5,48(a1)
	blt	a5,zero,.L3960
	ld	a4,40(a0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	blt	a5,zero,.L3959
	lbu	a5,36(a0)
	ori	a5,a5,1
	sb	a5,36(a0)
	li	a0,0
	ret
.L3960:
	lbu	a5,36(a0)
	ori	a5,a5,2
	sb	a5,36(a0)
	li	a0,0
	ret
	.size	checkConstraintExprNode, .-checkConstraintExprNode
	.section	.text.setAllPagerFlags.part.0,"ax",@progbits
	.align	1
	.type	setAllPagerFlags.part.0, @function
setAllPagerFlags.part.0:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	lw	a5,40(a0)
	ld	s0,32(a0)
	ble	a5,zero,.L3962
	addiw	s1,a5,-1
	slli	s1,s1,32
	srli	s1,s1,32
	addi	s1,s1,1
	slli	s1,s1,5
	mv	s2,a0
	add	s1,s0,s1
.L3965:
	ld	a5,8(s0)
	beq	a5,zero,.L3964
	ld	a3,8(a5)
	ld	a4,48(s2)
	lbu	a1,16(s0)
	ld	a2,0(a5)
	ld	a0,0(a3)
	andi	a4,a4,56
	sd	a2,8(a3)
	or	a1,a4,a1
	call	sqlite3PagerSetFlags
.L3964:
	addi	s0,s0,32
	bne	s0,s1,.L3965
.L3962:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	setAllPagerFlags.part.0, .-setAllPagerFlags.part.0
	.section	.text.pragmaVtabBestIndex,"ax",@progbits
	.align	1
	.type	pragmaVtabBestIndex, @function
pragmaVtabBestIndex:
	li	a5,1
	sd	a5,64(a1)
	lbu	a5,40(a0)
	beq	a5,zero,.L3991
	lw	a6,0(a1)
	addi	sp,sp,-16
	sd	zero,8(sp)
	ld	a5,8(a1)
	li	a4,0
	li	t1,2
	ble	a6,zero,.L3976
.L3974:
	lbu	a3,5(a5)
	addiw	a4,a4,1
	beq	a3,zero,.L3975
	lbu	a3,4(a5)
	bne	a3,t1,.L3975
	lbu	t3,41(a0)
	lw	a7,0(a5)
	addi	t4,sp,16
	subw	a3,a7,t3
	slli	a3,a3,2
	add	a3,t4,a3
	blt	a7,t3,.L3975
	sw	a4,-8(a3)
.L3975:
	addi	a5,a5,12
	bne	a4,a6,.L3974
	lw	a5,8(sp)
	beq	a5,zero,.L3976
	ld	a4,32(a1)
	addiw	a5,a5,-1
	slli	a5,a5,3
	add	a4,a4,a5
	li	a2,1
	sw	a2,0(a4)
	ld	a3,32(a1)
	lw	a4,12(sp)
	add	a5,a3,a5
	sb	a2,4(a5)
	beq	a4,zero,.L3973
	ld	a5,32(a1)
	addiw	a4,a4,-1
	li	a3,20
	slli	a4,a4,3
	sd	a3,64(a1)
	sd	a3,72(a1)
	add	a5,a5,a4
	li	a3,2
	sw	a3,0(a5)
	ld	a5,32(a1)
	add	a4,a5,a4
	sb	a2,4(a4)
.L3973:
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L3976:
	li	a5,-2147483648
	xori	a5,a5,-1
	sd	a5,64(a1)
	sd	a5,72(a1)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L3991:
	li	a0,0
	ret
	.size	pragmaVtabBestIndex, .-pragmaVtabBestIndex
	.section	.text.sqlite3SchemaToIndex.part.0,"ax",@progbits
	.align	1
	.type	sqlite3SchemaToIndex.part.0, @function
sqlite3SchemaToIndex.part.0:
	ld	a4,32(a0)
	li	a0,0
	ld	a5,24(a4)
	beq	a1,a5,.L3997
.L3996:
	addiw	a0,a0,1
	slli	a5,a0,5
	add	a5,a4,a5
	ld	a5,24(a5)
	bne	a5,a1,.L3996
	ret
.L3997:
	ret
	.size	sqlite3SchemaToIndex.part.0, .-sqlite3SchemaToIndex.part.0
	.section	.text.columnIndex.isra.0,"ax",@progbits
	.align	1
	.type	columnIndex.isra.0, @function
columnIndex.isra.0:
	ble	a1,zero,.L4012
	mv	t4,a0
	lla	a7,.LANCHOR2
	li	a0,0
.L4005:
	ld	a4,0(t4)
	mv	a6,a2
	lbu	a3,0(a6)
	lbu	a5,0(a4)
	addi	a4,a4,1
	add	t1,a7,a3
	add	t3,a7,a5
	beq	a5,a3,.L4013
.L4001:
	lbu	a3,320(t3)
	lbu	a5,320(t1)
	bne	a3,a5,.L4003
.L4002:
	lbu	a5,0(a4)
	lbu	a3,1(a6)
	addi	a6,a6,1
	addi	a4,a4,1
	add	t3,a7,a5
	add	t1,a7,a3
	bne	a5,a3,.L4001
.L4013:
	bne	a5,zero,.L4002
	ret
.L4003:
	addiw	a0,a0,1
	addi	t4,t4,32
	bne	a0,a1,.L4005
.L4012:
	li	a0,-1
	ret
	.size	columnIndex.isra.0, .-columnIndex.isra.0
	.section	.text.sqlite3KeyInfoUnref.part.0,"ax",@progbits
	.align	1
	.type	sqlite3KeyInfoUnref.part.0, @function
sqlite3KeyInfoUnref.part.0:
	mv	a1,a0
	ld	a0,16(a0)
	tail	sqlite3DbFreeNN
	.size	sqlite3KeyInfoUnref.part.0, .-sqlite3KeyInfoUnref.part.0
	.section	.text.freeP4,"ax",@progbits
	.align	1
	.type	freeP4, @function
freeP4:
	addiw	a5,a1,17
	sext.w	a3,a5
	li	a4,10
	bgtu	a3,a4,.L4015
	slli	a5,a5,32
	srli	a5,a5,32
	lla	a4,.L4018
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L4018:
	.word	.L4017-.L4018
	.word	.L4023-.L4018
	.word	.L4017-.L4018
	.word	.L4017-.L4018
	.word	.L4017-.L4018
	.word	.L4022-.L4018
	.word	.L4021-.L4018
	.word	.L4015-.L4018
	.word	.L4020-.L4018
	.word	.L4019-.L4018
	.word	.L4017-.L4018
	.section	.text.freeP4
.L4022:
	ld	a5,664(a0)
	beq	a5,zero,.L4031
.L4015:
	ret
.L4017:
	beq	a2,zero,.L4015
.L4024:
	mv	a1,a2
	tail	sqlite3DbFreeNN
.L4023:
	mv	a1,a2
	tail	freeP4FuncCtx
.L4021:
	ld	a5,664(a0)
	beq	a5,zero,.L4032
	mv	a1,a2
	tail	freeP4Mem
.L4020:
	ld	a5,664(a0)
	bne	a5,zero,.L4015
	beq	a2,zero,.L4015
	lw	a5,0(a2)
	addiw	a4,a5,-1
	sw	a4,0(a2)
	bne	a4,zero,.L4015
	mv	a0,a2
	tail	sqlite3KeyInfoUnref.part.0
.L4019:
	lw	a5,4(a2)
	andi	a5,a5,16
	bne	a5,zero,.L4024
	ret
.L4031:
	mv	a0,a2
	tail	sqlite3VtabUnlock
.L4032:
	mv	a0,a2
	tail	sqlite3ValueFree
	.size	freeP4, .-freeP4
	.section	.text.vdbeFreeOpArray,"ax",@progbits
	.align	1
	.type	vdbeFreeOpArray, @function
vdbeFreeOpArray:
	beq	a1,zero,.L4033
	addi	sp,sp,-48
	sd	s0,32(sp)
	slli	s0,a2,1
	add	s0,s0,a2
	slli	s0,s0,3
	addi	s0,s0,-24
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	add	s0,a1,s0
	mv	s1,a1
	mv	s3,a0
	bgtu	a1,s0,.L4035
	li	s2,-6
	j	.L4037
.L4036:
	addi	s0,s0,-24
	bgtu	s1,s0,.L4035
.L4037:
	lb	a1,1(s0)
	bge	a1,s2,.L4036
	ld	a2,16(s0)
	mv	a0,s3
	addi	s0,s0,-24
	call	freeP4
	bleu	s1,s0,.L4037
.L4035:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	mv	a1,s1
	mv	a0,s3
	ld	s1,24(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
.L4033:
	ret
	.size	vdbeFreeOpArray, .-vdbeFreeOpArray
	.section	.text.sqlite3SelectPrep,"ax",@progbits
	.align	1
	.type	sqlite3SelectPrep, @function
sqlite3SelectPrep:
	ld	a5,0(a0)
	lbu	a5,97(a5)
	bne	a5,zero,.L4053
	addi	sp,sp,-96
	sd	s1,72(sp)
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	lw	a5,12(a1)
	mv	s1,a1
	andi	a5,a5,128
	beq	a5,zero,.L4056
.L4042:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	addi	sp,sp,96
	jr	ra
.L4056:
	lbu	a5,34(a0)
	lla	s4,sqlite3ExprWalkNoop
	sd	s4,8(sp)
	sd	a0,0(sp)
	mv	s0,a0
	mv	s2,a2
	mv	s3,sp
	bne	a5,zero,.L4057
.L4046:
	lla	a5,selectExpander
	sd	a5,16(sp)
	mv	a1,s1
	lla	a5,selectPopWith
	mv	a0,s3
	sd	a5,24(sp)
	sb	zero,36(sp)
	call	sqlite3WalkSelect.part.0
	lw	a5,48(s0)
	bne	a5,zero,.L4042
	ld	a5,0(s0)
	lbu	a5,97(a5)
	bne	a5,zero,.L4042
	lla	a5,resolveExprStep
	sd	a5,8(sp)
	mv	a1,s1
	lla	a5,resolveSelectStep
	mv	a0,s3
	sd	a5,16(sp)
	sd	zero,24(sp)
	sd	s0,0(sp)
	sd	s2,40(sp)
	call	sqlite3WalkSelect.part.0
	lw	a5,48(s0)
	bne	a5,zero,.L4042
	ld	a5,0(s0)
	lbu	a5,97(a5)
	bne	a5,zero,.L4042
	lla	a5,sqlite3SelectWalkNoop
	sd	a5,16(sp)
	mv	a1,s1
	lla	a5,selectAddSubqueryTypeInfo
	mv	a0,s3
	sd	a5,24(sp)
	sd	s4,8(sp)
	sd	s0,0(sp)
	call	sqlite3WalkSelect.part.0
	j	.L4042
.L4053:
	ret
.L4057:
	lla	a5,convertCompoundSelectToSubquery
	mv	a0,s3
	sd	a5,16(sp)
	sd	zero,24(sp)
	call	sqlite3WalkSelect.part.0
	j	.L4046
	.size	sqlite3SelectPrep, .-sqlite3SelectPrep
	.section	.text.sqlite3TriggerList.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3TriggerList.isra.0, @function
sqlite3TriggerList.isra.0:
	ld	a5,32(a0)
	ld	a4,56(a5)
	bne	a1,zero,.L4071
	ld	a5,112(a2)
	beq	a4,a5,.L4061
	ld	a7,64(a4)
	beq	a7,zero,.L4061
	li	a0,0
	lla	a6,.LANCHOR2
	j	.L4068
.L4062:
	ld	a7,0(a7)
	beq	a7,zero,.L4067
.L4080:
	ld	a5,112(a2)
.L4068:
	ld	t4,16(a7)
	ld	a4,48(t4)
	bne	a4,a5,.L4062
	ld	a4,8(t4)
	ld	a1,0(a2)
	lbu	a5,0(a4)
	lbu	a3,0(a1)
	addi	a4,a4,1
	add	t3,a6,a5
	add	t1,a6,a3
	beq	a5,a3,.L4078
.L4063:
	lbu	a3,320(t3)
	lbu	a5,320(t1)
	bne	a3,a5,.L4062
.L4065:
	lbu	a5,0(a4)
	lbu	a3,1(a1)
	addi	a1,a1,1
	addi	a4,a4,1
	add	t3,a6,a5
	add	t1,a6,a3
	bne	a5,a3,.L4063
.L4078:
	bne	a5,zero,.L4065
	beq	a0,zero,.L4079
.L4070:
	sd	a0,64(t4)
	ld	a7,0(a7)
	mv	a0,t4
	bne	a7,zero,.L4080
.L4067:
	beq	a0,zero,.L4061
	ret
.L4061:
	ld	a0,104(a2)
	ret
.L4071:
	li	a0,0
	ret
.L4079:
	ld	a0,104(a2)
	j	.L4070
	.size	sqlite3TriggerList.isra.0, .-sqlite3TriggerList.isra.0
	.section	.text.checkColumnOverlap.part.0,"ax",@progbits
	.align	1
	.type	checkColumnOverlap.part.0, @function
checkColumnOverlap.part.0:
	lw	a5,0(a1)
	ble	a5,zero,.L4084
	addi	sp,sp,-32
	sd	s1,8(sp)
	addiw	s1,a5,-1
	slli	s1,s1,32
	srli	s1,s1,27
	addi	a5,a1,48
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s2,a0
	addi	s0,a1,16
	add	s1,s1,a5
	j	.L4083
.L4092:
	beq	s0,s1,.L4091
.L4083:
	ld	a1,0(s0)
	mv	a0,s2
	addi	s0,s0,32
	call	sqlite3IdListIndex.part.0
	blt	a0,zero,.L4092
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,1
	addi	sp,sp,32
	jr	ra
.L4091:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L4084:
	li	a0,0
	ret
	.size	checkColumnOverlap.part.0, .-checkColumnOverlap.part.0
	.section	.text.sqlite3TriggersExist,"ax",@progbits
	.align	1
	.type	sqlite3TriggersExist, @function
sqlite3TriggersExist:
	addi	sp,sp,-64
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	mv	a5,a0
	ld	a0,0(a0)
	mv	s3,a4
	ld	a7,48(a0)
	slli	a4,a7,45
	blt	a4,zero,.L4124
.L4094:
	beq	s3,zero,.L4100
	sw	zero,0(s3)
.L4100:
	li	s5,0
.L4093:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	mv	a0,s5
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L4124:
	mv	a6,a1
	lbu	a1,202(a5)
	mv	s1,a2
	mv	a2,a6
	mv	s2,a3
	call	sqlite3TriggerList.isra.0
	mv	s5,a0
	beq	a0,zero,.L4094
	mv	s0,a0
	li	s4,0
	j	.L4097
.L4095:
	ld	s0,64(s0)
	beq	s0,zero,.L4125
.L4097:
	lbu	a5,16(s0)
	bne	a5,s1,.L4095
	ld	a0,32(s0)
	mv	a1,s2
	beq	a0,zero,.L4096
	beq	s2,zero,.L4096
	call	checkColumnOverlap.part.0
	beq	a0,zero,.L4095
.L4096:
	lbu	a5,17(s0)
	ld	s0,64(s0)
	or	s4,s4,a5
	bne	s0,zero,.L4097
.L4125:
	beq	s3,zero,.L4098
	sw	s4,0(s3)
.L4098:
	bne	s4,zero,.L4093
	j	.L4100
	.size	sqlite3TriggersExist, .-sqlite3TriggersExist
	.section	.text.sqlite3VtabSavepoint.part.0,"ax",@progbits
	.align	1
	.type	sqlite3VtabSavepoint.part.0, @function
sqlite3VtabSavepoint.part.0:
	addi	sp,sp,-80
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s8,0(sp)
	mv	s2,a2
	mv	s6,a0
	mv	s7,a1
	li	s1,0
	li	s3,1
	addiw	s5,a2,1
	li	s4,2
.L4127:
	lw	a3,436(s6)
.L4146:
	sext.w	a5,a3
	ble	a5,s1,.L4148
.L4136:
	ld	a4,472(s6)
	slli	a5,s1,3
	addiw	s1,s1,1
	add	a5,a4,a5
	ld	s0,0(a5)
	ld	a0,16(s0)
	beq	a0,zero,.L4146
	ld	a5,8(s0)
	ld	a5,0(a5)
	lw	a4,0(a5)
	ble	a4,s3,.L4146
	lw	a4,24(s0)
	addiw	a4,a4,1
	sw	a4,24(s0)
	beq	s7,zero,.L4129
	beq	s7,s4,.L4130
	ld	a5,168(a5)
.L4132:
	beq	a5,zero,.L4147
	lw	a4,32(s0)
	ble	a4,s2,.L4147
	mv	a1,s2
	jalr	a5
	mv	s8,a0
	mv	a0,s0
	call	sqlite3VtabUnlock
	beq	s8,zero,.L4127
.L4135:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	mv	a0,s8
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
.L4147:
	mv	a0,s0
	call	sqlite3VtabUnlock
	lw	a3,436(s6)
	sext.w	a5,a3
	bgt	a5,s1,.L4136
.L4148:
	li	s8,0
	j	.L4135
.L4130:
	ld	a5,176(a5)
	j	.L4132
.L4129:
	ld	a5,160(a5)
	sw	s5,32(s0)
	j	.L4132
	.size	sqlite3VtabSavepoint.part.0, .-sqlite3VtabSavepoint.part.0
	.section	.text.disableTerm.isra.0,"ax",@progbits
	.align	1
	.type	disableTerm.isra.0, @function
disableTerm.isra.0:
	lhu	a5,18(a2)
	li	a3,0
	andi	a4,a5,4
	beq	a4,zero,.L4150
	j	.L4171
.L4155:
	beq	a3,zero,.L4152
	beq	t1,zero,.L4152
	ori	a6,a5,512
.L4152:
	lw	a5,24(a2)
	sh	a6,18(a2)
	addiw	a3,a3,1
	slli	a4,a5,6
	blt	a5,zero,.L4149
	ld	a5,8(a2)
	ld	a2,32(a5)
	add	a2,a2,a4
	lbu	a5,22(a2)
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	sb	a5,22(a2)
	bne	a5,zero,.L4149
	lhu	a5,18(a2)
	andi	a4,a5,4
	bne	a4,zero,.L4149
.L4150:
	lw	a4,0(a0)
	andi	t1,a5,1024
	ori	a6,a5,4
	beq	a4,zero,.L4154
	ld	a4,0(a2)
	lw	a4,4(a4)
	andi	a4,a4,1
	beq	a4,zero,.L4149
.L4154:
	ld	a4,0(a1)
	ld	a7,56(a2)
	and	a4,a4,a7
	beq	a4,zero,.L4155
.L4149:
	ret
.L4171:
	ret
	.size	disableTerm.isra.0, .-disableTerm.isra.0
	.section	.text.whereLikeOptimizationStringFixup.isra.0.part.0,"ax",@progbits
	.align	1
	.type	whereLikeOptimizationStringFixup.isra.0.part.0, @function
whereLikeOptimizationStringFixup.isra.0.part.0:
	ld	a5,0(a0)
	lbu	a4,97(a5)
	lla	a5,.LANCHOR0+568
	bne	a4,zero,.L4173
	lw	a4,144(a0)
	ld	a5,136(a0)
	addiw	a3,a4,-1
	slli	a4,a3,1
	add	a4,a4,a3
	slli	a4,a4,3
	add	a5,a5,a4
.L4173:
	lw	a4,0(a1)
	srliw	a4,a4,1
	sw	a4,12(a5)
	lbu	a4,0(a1)
	andi	a4,a4,1
	sh	a4,2(a5)
	ret
	.size	whereLikeOptimizationStringFixup.isra.0.part.0, .-whereLikeOptimizationStringFixup.isra.0.part.0
	.section	.text.translateColumnToCopy.isra.0,"ax",@progbits
	.align	1
	.type	translateColumnToCopy.isra.0, @function
translateColumnToCopy.isra.0:
	lw	a7,144(a1)
	mv	t1,a2
	bge	a2,zero,.L4176
	addiw	t1,a7,-1
.L4176:
	ld	t3,0(a1)
	lla	a6,.LANCHOR0+568
	lbu	t3,97(t3)
	bne	t3,zero,.L4177
	ld	a6,136(a1)
	slli	a1,t1,1
	add	a1,a1,t1
	slli	a1,a1,3
	add	a6,a6,a1
.L4177:
	lbu	a1,97(a0)
	bne	a1,zero,.L4175
	bge	a2,a7,.L4175
	addiw	a7,a7,-1
	subw	a1,a7,a2
	slli	a1,a1,32
	srli	a1,a1,32
	addi	a2,a1,1
	slli	a1,a2,1
	add	a1,a1,a2
	slli	a1,a1,3
	add	a1,a6,a1
	li	a0,90
	li	a7,128
	li	t5,73
	li	t4,120
	li	t3,78
	j	.L4183
.L4181:
	beq	a2,a7,.L4187
.L4180:
	addi	a6,a6,24
	beq	a6,a1,.L4175
.L4183:
	lw	a2,4(a6)
	bne	a2,a3,.L4180
	lbu	a2,0(a6)
	bne	a2,a0,.L4181
	lw	a2,8(a6)
	lw	t1,12(a6)
	sb	t3,0(a6)
	addw	a2,a2,a4
	sw	a2,4(a6)
	sw	t1,8(a6)
	sw	zero,12(a6)
	addi	a6,a6,24
	bne	a6,a1,.L4183
.L4175:
	ret
.L4187:
	beq	a5,zero,.L4182
	sb	t4,0(a6)
	sw	a5,4(a6)
	j	.L4180
.L4182:
	sb	t5,0(a6)
	sw	zero,4(a6)
	sw	zero,12(a6)
	j	.L4180
	.size	translateColumnToCopy.isra.0, .-translateColumnToCopy.isra.0
	.section	.text.whereLoopClearUnion,"ax",@progbits
	.align	1
	.type	whereLoopClearUnion, @function
whereLoopClearUnion:
	lw	a4,40(a1)
	li	a5,16384
	addi	a5,a5,1024
	and	a5,a4,a5
	beq	a5,zero,.L4211
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	andi	a5,a4,1024
	mv	s0,a1
	bne	a5,zero,.L4214
.L4190:
	slli	a5,a4,49
	bge	a5,zero,.L4188
	ld	a1,32(s0)
	beq	a1,zero,.L4188
	ld	a5,32(a1)
	beq	a5,zero,.L4191
	mv	a1,a5
	sd	a0,8(sp)
	call	sqlite3DbFreeNN
	ld	a1,32(s0)
	ld	a0,8(sp)
.L4191:
	call	sqlite3DbFreeNN
	sd	zero,32(s0)
.L4188:
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L4214:
	lbu	a5,28(a1)
	beq	a5,zero,.L4190
	ld	a0,32(a1)
	call	sqlite3_free@plt
	sb	zero,28(s0)
	sd	zero,32(s0)
	j	.L4188
.L4211:
	ret
	.size	whereLoopClearUnion, .-whereLoopClearUnion
	.section	.text.whereLoopClear,"ax",@progbits
	.align	1
	.type	whereLoopClear, @function
whereLoopClear:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s0,a1
	ld	a1,56(a1)
	addi	s2,s0,72
	mv	s1,a0
	beq	a1,s2,.L4216
	call	sqlite3DbFreeNN
.L4216:
	mv	a1,s0
	mv	a0,s1
	call	whereLoopClearUnion
	li	a5,3
	sd	s2,56(s0)
	sh	zero,44(s0)
	sh	a5,48(s0)
	sw	zero,40(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	whereLoopClear, .-whereLoopClear
	.section	.text.whereLoopOutputAdjust.isra.0,"ax",@progbits
	.align	1
	.type	whereLoopOutputAdjust.isra.0, @function
whereLoopOutputAdjust.isra.0:
	addi	sp,sp,-112
	sd	s2,80(sp)
	sd	s7,40(sp)
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s8,32(sp)
	sd	s9,24(sp)
	sd	s10,16(sp)
	ld	s5,0(a2)
	ld	a5,8(a2)
	mv	s2,a2
	ld	s0,0(a1)
	lh	a2,22(a2)
	or	s5,s5,a5
	mv	s7,a3
	ble	a0,zero,.L4229
	addiw	s1,a0,-1
	slli	s1,s1,32
	srli	s1,s1,32
	addi	s1,s1,1
	slli	s1,s1,6
	mv	s3,a1
	not	s5,s5
	add	s1,s0,s1
	li	s6,0
	li	s8,-1
	addi	s10,sp,12
	li	s9,2
	j	.L4225
.L4220:
	addi	s0,s0,64
	beq	s0,s1,.L4219
.L4225:
	lhu	a5,18(s0)
	sext.w	s4,s6
	andi	a5,a5,2
	bne	a5,zero,.L4219
	ld	a5,56(s0)
	ld	a4,8(s2)
	and	a4,a5,a4
	beq	a4,zero,.L4220
	and	a5,s5,a5
	bne	a5,zero,.L4220
	lhu	a0,44(s2)
	addiw	a0,a0,-1
	sext.w	a4,a0
	beq	a4,s8,.L4221
	ld	a5,56(s2)
	slli	a3,a4,3
	slli	a4,a0,32
	srli	a4,a4,32
	addi	a0,a5,-8
	add	a0,a0,a3
	slli	a4,a4,3
	add	a5,a5,a3
	sub	a0,a0,a4
.L4223:
	ld	a4,0(a5)
	addi	a5,a5,-8
	beq	a4,zero,.L4222
	beq	a4,s0,.L4220
	lw	a4,24(a4)
	slli	a6,a4,6
	blt	a4,zero,.L4222
	ld	a4,0(s3)
	add	a4,a4,a6
	beq	s0,a4,.L4220
.L4222:
	bne	a5,a0,.L4223
.L4221:
	lh	a5,16(s0)
	ble	a5,zero,.L4246
	addiw	a2,a2,-1
	slliw	a2,a2,16
	sraiw	a2,a2,16
	sh	a2,22(s2)
	lhu	a5,20(s0)
	andi	a5,a5,130
	beq	a5,zero,.L4220
	ld	a5,0(s0)
	mv	a1,s10
	ld	a0,24(a5)
	call	sqlite3ExprIsInteger
	li	a5,20
	beq	a0,zero,.L4224
	lw	a4,12(sp)
	addiw	a4,a4,1
	bgtu	a4,s9,.L4224
	li	a5,10
.L4224:
	sw	a5,12(sp)
	lh	a2,22(s2)
	ble	a5,s4,.L4220
	slliw	s6,a5,16
	sraiw	s6,s6,16
	mv	s4,a5
	j	.L4220
.L4229:
	li	s4,0
	li	s6,0
.L4219:
	subw	s4,s7,s4
	bge	s4,a2,.L4218
	subw	s6,s7,s6
	sh	s6,22(s2)
.L4218:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	ld	s10,16(sp)
	addi	sp,sp,112
	jr	ra
.L4246:
	addw	a2,a5,a2
	slliw	a2,a2,16
	sraiw	a2,a2,16
	sh	a2,22(s2)
	j	.L4220
	.size	whereLoopOutputAdjust.isra.0, .-whereLoopOutputAdjust.isra.0
	.section	.text.keywordCode.part.0,"ax",@progbits
	.align	1
	.type	keywordCode.part.0, @function
keywordCode.part.0:
	add	a5,a0,a1
	lbu	t6,0(a0)
	lbu	a5,-1(a5)
	lla	t5,.LANCHOR2
	add	a4,t5,t6
	add	a5,t5,a5
	lbu	a3,320(a5)
	lbu	a5,320(a4)
	slliw	a4,a3,1
	slliw	a5,a5,2
	addw	a4,a4,a3
	xor	a5,a1,a5
	xor	a5,a5,a4
	li	a4,127
	remw	a5,a5,a4
	li	a4,-1
	add	a5,t5,a5
	lbu	a6,2008(a5)
	addiw	a6,a6,-1
	beq	a6,a4,.L4247
	lla	t0,.LANCHOR4
	lla	t4,.LANCHOR2+648
	li	t2,-1
.L4253:
	add	a5,t5,a6
	lbu	a5,1560(a5)
	beq	a5,a1,.L4256
.L4249:
	add	a6,t0,a6
	lbu	a6,-1816(a6)
	addiw	a6,a6,-1
	bne	a6,t2,.L4253
.L4247:
	ret
.L4256:
	slli	a5,a6,1
	add	a5,t5,a5
	lhu	t3,1280(a5)
	beq	a1,zero,.L4251
	mv	a3,t6
	li	a5,0
	li	a7,0
	j	.L4250
.L4252:
	sext.w	a7,a5
	ble	a1,a7,.L4251
	lbu	a3,0(a3)
.L4250:
	add	a4,t3,a5
	add	a4,t4,a4
	lbu	t1,0(a4)
	addi	a5,a5,1
	andi	a4,a3,223
	add	a3,a0,a5
	beq	t1,a4,.L4252
	bgt	a1,a7,.L4249
.L4251:
	add	a6,t0,a6
	lbu	a5,-1960(a6)
	sw	a5,0(a2)
	ret
	.size	keywordCode.part.0, .-keywordCode.part.0
	.section	.text.identPut,"ax",@progbits
	.align	1
	.type	identPut, @function
identPut:
	addi	sp,sp,-96
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s4,48(sp)
	sd	s6,32(sp)
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s3,56(sp)
	sd	s5,40(sp)
	sd	s7,24(sp)
	lw	s0,0(a1)
	lbu	a3,0(a2)
	mv	s6,a1
	mv	s1,a2
	mv	s2,a0
	add	s4,a0,s0
	beq	a3,zero,.L4262
	mv	s3,a2
	mv	s5,s4
	mv	a4,a3
	li	a1,0
	lla	a2,.LANCHOR2
	li	a0,95
.L4261:
	add	a5,a2,a4
	lbu	a5,64(a5)
	andi	a5,a5,6
	bne	a5,zero,.L4259
	bne	a4,a0,.L4260
.L4259:
	addiw	a1,a1,1
	add	s3,s1,a1
	lbu	a4,0(s3)
	bne	a4,zero,.L4261
.L4260:
	add	a2,a2,a3
	lbu	a5,64(a2)
	andi	a5,a5,4
	beq	a5,zero,.L4263
.L4262:
	li	a5,34
	sb	a5,0(s4)
	lbu	a5,0(s1)
	addiw	s0,s0,1
	add	s4,s2,s0
	li	a1,1
	mv	s5,s4
	beq	a5,zero,.L4265
.L4264:
	mv	a3,s1
	li	a4,0
	li	a2,34
	j	.L4270
.L4273:
	addiw	a4,a4,1
	add	a3,s1,a4
	mv	s0,a5
	lbu	a5,0(a3)
	add	s4,s2,s0
	beq	a5,zero,.L4292
.L4270:
	sb	a5,0(s4)
	lbu	a3,0(a3)
	addiw	a5,s0,1
	add	s5,s2,a5
	bne	a3,a2,.L4273
	addiw	a4,a4,1
	sb	a2,0(s5)
	add	a3,s1,a4
	lbu	a5,0(a3)
	addiw	s0,s0,2
	add	s5,s2,s0
	add	s4,s2,s0
	bne	a5,zero,.L4270
.L4292:
	bne	a1,zero,.L4265
.L4268:
	sb	zero,0(s5)
	sw	s0,0(s6)
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	addi	sp,sp,96
	jr	ra
.L4265:
	addiw	s0,s0,1
	li	a5,34
	sb	a5,0(s5)
	add	s5,s2,s0
	j	.L4268
.L4263:
	li	s7,59
	sw	s7,12(sp)
	li	a5,1
	ble	a1,a5,.L4266
	addi	a2,sp,12
	mv	a0,s1
	call	keywordCode.part.0
	lw	a5,12(sp)
	bne	a5,s7,.L4262
	lbu	a5,0(s3)
	bne	a5,zero,.L4262
	lbu	a3,0(s1)
	j	.L4267
.L4266:
	lbu	a5,0(s3)
	bne	a5,zero,.L4262
	beq	a1,zero,.L4262
.L4267:
	mv	a5,a3
	beq	a3,zero,.L4268
	li	a1,0
	j	.L4264
	.size	identPut, .-identPut
	.section	.text.sqlite3_keyword_check,"ax",@progbits
	.align	1
	.globl	sqlite3_keyword_check
	.type	sqlite3_keyword_check, @function
sqlite3_keyword_check:
	addi	sp,sp,-32
	li	a5,59
	sw	a5,12(sp)
	sd	ra,24(sp)
	li	a5,1
	ble	a1,a5,.L4295
	addi	a2,sp,12
	call	keywordCode.part.0
	lw	a0,12(sp)
	ld	ra,24(sp)
	addi	a0,a0,-59
	snez	a0,a0
	addi	sp,sp,32
	jr	ra
.L4295:
	ld	ra,24(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_keyword_check, .-sqlite3_keyword_check
	.section	.text.sqlite3GetToken,"ax",@progbits
	.align	1
	.type	sqlite3GetToken, @function
sqlite3GetToken:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	lbu	a4,0(a0)
	lla	a6,.LANCHOR4
	li	a3,28
	add	a5,a6,a4
	lbu	a7,-1672(a5)
	bgtu	a7,a3,.L4298
	lla	a3,.L4300
	slli	a5,a7,2
	add	a5,a5,a3
	lw	a5,0(a5)
	sext.w	a2,a4
	add	a5,a5,a3
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L4300:
	.word	.L4326-.L4300
	.word	.L4325-.L4300
	.word	.L4399-.L4300
	.word	.L4323-.L4300
	.word	.L4322-.L4300
	.word	.L4322-.L4300
	.word	.L4321-.L4300
	.word	.L4320-.L4300
	.word	.L4319-.L4300
	.word	.L4318-.L4300
	.word	.L4317-.L4300
	.word	.L4316-.L4300
	.word	.L4315-.L4300
	.word	.L4314-.L4300
	.word	.L4313-.L4300
	.word	.L4312-.L4300
	.word	.L4311-.L4300
	.word	.L4310-.L4300
	.word	.L4309-.L4300
	.word	.L4308-.L4300
	.word	.L4307-.L4300
	.word	.L4306-.L4300
	.word	.L4305-.L4300
	.word	.L4304-.L4300
	.word	.L4303-.L4300
	.word	.L4302-.L4300
	.word	.L4301-.L4300
	.word	.L4298-.L4300
	.word	.L4299-.L4300
	.section	.text.sqlite3GetToken
.L4399:
	li	a5,1
	li	s0,1
	lla	a4,.LANCHOR2
.L4324:
	add	a5,a0,a5
	j	.L4445
.L4371:
	addiw	s0,s0,1
	add	a5,a0,s0
.L4445:
	lbu	a5,0(a5)
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,70
	bne	a5,zero,.L4371
.L4395:
	li	a5,59
.L4447:
	sw	a5,0(a1)
.L4401:
	ld	ra,8(sp)
	mv	a0,s0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L4298:
	li	a5,175
	sw	a5,0(a1)
.L4446:
	li	s0,1
	j	.L4401
.L4322:
	li	a5,148
	sw	a5,0(a1)
	lbu	a4,1(a0)
	li	s0,1
	sext.w	a5,a4
	beq	a4,zero,.L4365
	lla	a4,.LANCHOR2
	j	.L4367
.L4450:
	addiw	a2,s0,1
	add	a5,a0,a2
	lbu	a3,0(a5)
	sext.w	a5,a3
	beq	a3,zero,.L4449
	mv	s0,a2
.L4367:
	add	a5,a4,a5
	lbu	a5,64(a5)
	addiw	a3,s0,-1
	andi	a5,a5,70
	bne	a5,zero,.L4450
	bne	a3,zero,.L4401
.L4365:
	li	a5,175
	j	.L4447
.L4304:
	li	a5,26
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4305:
	li	a5,104
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4306:
	li	a5,102
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4307:
	li	a5,100
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4308:
	li	a5,1
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4309:
	li	a5,23
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4310:
	li	a5,22
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4311:
	lbu	a4,1(a0)
	li	a5,42
	bne	a4,a5,.L4340
	lbu	a5,2(a0)
	li	s0,3
	li	a3,42
	sext.w	a4,a5
	li	a2,47
	bne	a5,zero,.L4342
	j	.L4340
.L4343:
	sext.w	a4,a5
	beq	a5,zero,.L4382
	addiw	s0,s0,1
.L4342:
	add	a5,a0,s0
	lbu	a5,0(a5)
	bne	a4,a3,.L4343
	bne	a5,a2,.L4343
	addiw	s0,s0,1
.L4382:
	li	a5,174
	sw	a5,0(a1)
	j	.L4401
.L4299:
	li	a5,175
	sw	a5,0(a1)
	li	s0,0
	j	.L4401
.L4301:
	li	a5,134
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4302:
	li	a5,107
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4303:
	li	a5,96
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4325:
	lbu	a5,1(a0)
	li	s0,1
	li	a3,1
	add	a4,a6,a5
	lbu	a4,-1672(a4)
	bgtu	a4,s0,.L4451
.L4333:
	mv	a2,s0
	addiw	s0,s0,1
	add	a5,a0,s0
	lbu	a5,0(a5)
	add	a4,a6,a5
	lbu	a4,-1672(a4)
	bleu	a4,a3,.L4333
	lla	a4,.LANCHOR2
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,70
	beq	a5,zero,.L4370
	addiw	s0,a2,2
	mv	a5,s0
	j	.L4324
.L4326:
	lbu	a5,1(a0)
	li	a4,39
	bne	a5,a4,.L4399
	li	a4,146
	sw	a4,0(a1)
	lbu	a2,2(a0)
	lla	a4,.LANCHOR2
	add	a3,a4,a2
	lbu	a3,64(a3)
	andi	a3,a3,8
	beq	a3,zero,.L4373
	li	s0,2
.L4374:
	addiw	s0,s0,1
	add	a3,a0,s0
	lbu	a2,0(a3)
	add	a5,a4,a2
	lbu	a5,64(a5)
	andi	a5,a5,8
	bne	a5,zero,.L4374
	li	a5,39
	beq	a2,a5,.L4452
.L4375:
	li	a5,175
	sw	a5,0(a1)
	lbu	a5,0(a3)
	li	a4,39
	beq	a5,zero,.L4401
.L4377:
	beq	a5,a4,.L4383
	addiw	s0,s0,1
	add	a5,a0,s0
	lbu	a5,0(a5)
	bne	a5,zero,.L4377
	j	.L4401
.L4323:
	li	a5,147
	sw	a5,0(a1)
	lbu	a5,0(a0)
	li	a4,48
	beq	a5,a4,.L4453
	lla	a4,.LANCHOR2
	add	a5,a4,a5
	lbu	a5,64(a5)
	li	s0,0
	andi	a3,a5,4
	beq	a3,zero,.L4358
.L4360:
	addiw	s0,s0,1
	add	a5,a0,s0
	lbu	a5,0(a5)
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a3,a5,4
	bne	a3,zero,.L4360
.L4358:
	andi	a5,a5,70
	beq	a5,zero,.L4401
	li	a3,175
.L4361:
	addiw	s0,s0,1
	sw	a3,0(a1)
	add	a5,a0,s0
	lbu	a5,0(a5)
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,70
	bne	a5,zero,.L4361
	j	.L4401
.L4314:
	lbu	a5,1(a0)
	li	a4,61
	beq	a5,a4,.L4454
	li	a4,62
	beq	a5,a4,.L4455
	li	a5,54
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4315:
	lbu	a5,1(a0)
	li	a4,61
	beq	a5,a4,.L4456
	li	a4,62
	beq	a5,a4,.L4351
	li	a4,60
	beq	a5,a4,.L4457
	li	a5,56
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4312:
	lbu	a4,1(a0)
	li	a5,61
	bne	a4,a5,.L4298
.L4351:
	li	a5,52
	sw	a5,0(a1)
	li	s0,2
	j	.L4401
.L4318:
	li	a5,93
	li	s0,1
	li	a4,93
	bne	a2,a5,.L4327
	j	.L4395
.L4362:
	addiw	s0,s0,1
	beq	a5,a4,.L4395
.L4327:
	add	a5,a0,s0
	lbu	a5,0(a5)
	bne	a5,zero,.L4362
	li	a5,175
	j	.L4447
.L4319:
	lbu	a3,1(a0)
	li	a5,1
	li	a6,1
	bne	a3,zero,.L4329
	j	.L4330
.L4391:
	mv	a5,s0
.L4353:
	add	a3,a0,a5
	lbu	a3,0(a3)
	mv	a6,a5
	beq	a3,zero,.L4330
.L4329:
	addiw	s0,a5,1
	bne	a2,a3,.L4391
	add	a6,a0,a6
	lbu	a3,1(a6)
	bne	a3,a4,.L4354
	addiw	a5,a5,2
	j	.L4353
.L4313:
	li	a5,53
	sw	a5,0(a1)
	lbu	a4,1(a0)
	li	a5,61
	li	s0,2
	beq	a4,a5,.L4401
	li	s0,1
	j	.L4401
.L4320:
	lbu	a5,1(a0)
	lla	a4,.LANCHOR2
	li	s0,1
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,1
	beq	a5,zero,.L4382
.L4331:
	addiw	s0,s0,1
	add	a5,a0,s0
	lbu	a5,0(a5)
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,1
	bne	a5,zero,.L4331
	j	.L4382
.L4321:
	li	a5,148
	sw	a5,0(a1)
	lbu	a5,1(a0)
	lla	a4,.LANCHOR2
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,4
	beq	a5,zero,.L4446
	li	s0,1
.L4364:
	addiw	s0,s0,1
	add	a5,a0,s0
	lbu	a5,0(a5)
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,4
	bne	a5,zero,.L4364
	j	.L4401
.L4316:
	lbu	a4,1(a0)
	li	a5,45
	beq	a4,a5,.L4458
	li	a5,101
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4317:
	lbu	a4,1(a0)
	li	a5,124
	beq	a4,a5,.L4352
	li	a5,97
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4340:
	li	a5,103
	sw	a5,0(a1)
	li	s0,1
	j	.L4401
.L4449:
	mv	a3,s0
	mv	s0,a2
	bne	a3,zero,.L4401
	j	.L4365
.L4370:
	li	a5,59
	sw	a5,0(a1)
	ble	s0,a3,.L4401
	mv	a2,a1
	mv	a1,s0
	call	keywordCode.part.0
	j	.L4401
.L4330:
	li	a4,175
	sw	a4,0(a1)
	mv	s0,a5
	j	.L4401
.L4453:
	lbu	a5,1(a0)
	li	a4,88
	andi	a5,a5,223
	beq	a5,a4,.L4356
	li	s0,0
	lla	a4,.LANCHOR2
	j	.L4360
.L4354:
	li	a5,39
	bne	a2,a5,.L4395
	li	a5,110
	sw	a5,0(a1)
	j	.L4401
.L4352:
	li	a5,105
	sw	a5,0(a1)
	li	s0,2
	j	.L4401
.L4458:
	lbu	a5,2(a0)
	li	s0,2
	li	a4,10
	beq	a5,zero,.L4382
.L4337:
	beq	a5,a4,.L4382
	addiw	s0,s0,1
	add	a5,a0,s0
	lbu	a5,0(a5)
	bne	a5,zero,.L4337
	j	.L4382
.L4356:
	lbu	a5,2(a0)
	lla	a4,.LANCHOR2
	li	s0,0
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,8
	beq	a5,zero,.L4360
	lbu	a5,3(a0)
	li	s0,3
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,8
	beq	a5,zero,.L4401
.L4359:
	addiw	s0,s0,1
	add	a5,a0,s0
	lbu	a5,0(a5)
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,8
	bne	a5,zero,.L4359
	j	.L4401
.L4455:
	li	a5,99
	sw	a5,0(a1)
	li	s0,2
	j	.L4401
.L4457:
	li	a5,98
	sw	a5,0(a1)
	li	s0,2
	j	.L4401
.L4456:
	li	a5,55
	sw	a5,0(a1)
	li	s0,2
	j	.L4401
.L4454:
	li	a5,57
	sw	a5,0(a1)
	li	s0,2
	j	.L4401
.L4451:
	lla	a4,.LANCHOR2
	add	a5,a4,a5
	lbu	a5,64(a5)
	andi	a5,a5,70
	bne	a5,zero,.L4398
	li	a5,59
	sw	a5,0(a1)
	j	.L4401
.L4400:
	li	s0,2
.L4383:
	add	a0,a0,s0
	lbu	a5,0(a0)
	beq	a5,zero,.L4401
	addiw	s0,s0,1
	j	.L4401
.L4452:
	andi	a5,s0,1
	bne	a5,zero,.L4375
	addiw	s0,s0,1
	j	.L4401
.L4398:
	li	a5,2
	li	s0,2
	j	.L4324
.L4373:
	beq	a2,a5,.L4400
	addi	a3,a0,2
	li	s0,2
	j	.L4375
	.size	sqlite3GetToken, .-sqlite3GetToken
	.section	.text.getToken,"ax",@progbits
	.align	1
	.type	getToken, @function
getToken:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	ld	s0,0(a0)
	mv	s3,a0
	addi	s2,sp,12
	li	s1,174
.L4460:
	mv	a0,s0
	mv	a1,s2
	call	sqlite3GetToken
	lw	a5,12(sp)
	add	s0,s0,a0
	beq	a5,s1,.L4460
	li	a3,59
	beq	a5,a3,.L4461
	addiw	a4,a5,-110
	li	a2,1
	bleu	a4,a2,.L4463
	addiw	a4,a5,-156
	bleu	a4,a2,.L4463
	li	a4,94
	ble	a5,a4,.L4466
.L4461:
	sd	s0,0(s3)
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	mv	a0,a5
	addi	sp,sp,64
	jr	ra
.L4466:
	slli	a2,a5,1
	lla	a4,.LANCHOR4
	add	a4,a4,a2
	lhu	a4,-1416(a4)
	bne	a4,a3,.L4461
.L4463:
	li	a5,59
	j	.L4461
	.size	getToken, .-getToken
	.section	.text.functionDestroy.isra.0,"ax",@progbits
	.align	1
	.type	functionDestroy.isra.0, @function
functionDestroy.isra.0:
	beq	a1,zero,.L4472
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lw	a5,0(a1)
	mv	s0,a1
	addiw	a4,a5,-1
	sw	a4,0(a1)
	bne	a4,zero,.L4467
	mv	s1,a0
	ld	a5,8(a1)
	ld	a0,16(a1)
	jalr	a5
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
.L4467:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L4472:
	ret
	.size	functionDestroy.isra.0, .-functionDestroy.isra.0
	.section	.text.connectionIsBusy.part.0,"ax",@progbits
	.align	1
	.type	connectionIsBusy.part.0, @function
connectionIsBusy.part.0:
	lw	a4,40(a0)
	ble	a4,zero,.L4479
	ld	a5,32(a0)
	addiw	a3,a4,-1
	slli	a3,a3,32
	addi	a4,a5,40
	srli	a3,a3,27
	addi	a5,a5,8
	add	a3,a3,a4
.L4478:
	ld	a4,0(a5)
	addi	a5,a5,32
	beq	a4,zero,.L4477
	lw	a4,24(a4)
	bne	a4,zero,.L4480
.L4477:
	bne	a5,a3,.L4478
.L4479:
	li	a0,0
	ret
.L4480:
	li	a0,1
	ret
	.size	connectionIsBusy.part.0, .-connectionIsBusy.part.0
	.section	.rodata.str1.8
	.align	3
.LC30:
	.string	"unknown error"
	.align	3
.LC31:
	.string	"abort due to ROLLBACK"
	.align	3
.LC32:
	.string	"another row available"
	.align	3
.LC33:
	.string	"no more rows available"
	.section	.text.sqlite3ErrStr,"ax",@progbits
	.align	1
	.type	sqlite3ErrStr, @function
sqlite3ErrStr:
	li	a4,101
	mv	a5,a0
	beq	a0,a4,.L4487
	li	a4,516
	lla	a0,.LC31
	beq	a5,a4,.L4485
	li	a4,100
	lla	a0,.LC32
	beq	a5,a4,.L4485
	andi	a5,a5,0xff
	li	a4,28
	lla	a0,.LC30
	bgt	a5,a4,.L4485
	slli	a5,a5,3
	lla	a4,.LANCHOR3
	add	a5,a4,a5
	ld	a0,1872(a5)
	beq	a0,zero,.L4491
.L4485:
	ret
.L4487:
	lla	a0,.LC33
	ret
.L4491:
	lla	a0,.LC30
	ret
	.size	sqlite3ErrStr, .-sqlite3ErrStr
	.section	.text.sqlite3_errstr,"ax",@progbits
	.align	1
	.globl	sqlite3_errstr
	.type	sqlite3_errstr, @function
sqlite3_errstr:
	tail	sqlite3ErrStr
	.size	sqlite3_errstr, .-sqlite3_errstr
	.section	.text.sqliteDefaultBusyCallback,"ax",@progbits
	.align	1
	.type	sqliteDefaultBusyCallback, @function
sqliteDefaultBusyCallback:
	li	a5,1000
	addiw	a1,a1,1
	mulw	a1,a1,a5
	lw	a5,632(a0)
	bgt	a1,a5,.L4495
	addi	sp,sp,-16
	sd	ra,8(sp)
	ld	a0,0(a0)
	li	a1,999424
	addi	a1,a1,576
	ld	a5,112(a0)
	jalr	a5
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
.L4495:
	li	a0,0
	ret
	.size	sqliteDefaultBusyCallback, .-sqliteDefaultBusyCallback
	.section	.text.sqlite3_busy_timeout,"ax",@progbits
	.align	1
	.globl	sqlite3_busy_timeout
	.type	sqlite3_busy_timeout, @function
sqlite3_busy_timeout:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	ble	a1,zero,.L4501
	mv	s1,a1
	mv	a2,a0
	lla	a1,sqliteDefaultBusyCallback
	mv	s0,a0
	call	sqlite3_busy_handler@plt
	li	a5,1
	sw	s1,632(s0)
	sb	a5,556(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L4501:
	li	a2,0
	li	a1,0
	call	sqlite3_busy_handler@plt
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_busy_timeout, .-sqlite3_busy_timeout
	.section	.text.sqlite3_wal_autocheckpoint,"ax",@progbits
	.align	1
	.globl	sqlite3_wal_autocheckpoint
	.type	sqlite3_wal_autocheckpoint, @function
sqlite3_wal_autocheckpoint:
	addi	sp,sp,-16
	sd	ra,8(sp)
	ble	a1,zero,.L4505
	mv	a2,a1
	lla	a1,sqlite3WalDefaultHook
	call	sqlite3_wal_hook@plt
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L4505:
	li	a2,0
	li	a1,0
	call	sqlite3_wal_hook@plt
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_wal_autocheckpoint, .-sqlite3_wal_autocheckpoint
	.section	.text.nodeOverwriteCell.isra.0,"ax",@progbits
	.align	1
	.type	nodeOverwriteCell.isra.0, @function
nodeOverwriteCell.isra.0:
	mulw	a1,a1,a5
	ld	a6,0(a4)
	srai	a5,a6,8
	srli	t5,a6,56
	srai	t4,a6,48
	srai	t3,a6,40
	srai	t1,a6,32
	srai	a7,a6,24
	addiw	a1,a1,4
	add	a3,a3,a1
	srai	a1,a6,16
	sb	t5,0(a3)
	sb	t4,1(a3)
	sb	t3,2(a3)
	sb	t1,3(a3)
	sb	a7,4(a3)
	sb	a1,5(a3)
	sb	a5,6(a3)
	sb	a6,7(a3)
	lbu	a5,0(a0)
	addi	a3,a3,8
	beq	a5,zero,.L4509
	addi	a4,a4,8
	li	a1,0
.L4510:
	lw	a5,0(a4)
	addiw	a1,a1,1
	addi	a3,a3,4
	srliw	t1,a5,24
	srliw	a7,a5,16
	srliw	a6,a5,8
	sb	t1,-4(a3)
	sb	a7,-3(a3)
	sb	a6,-2(a3)
	sb	a5,-1(a3)
	lbu	a5,0(a0)
	addi	a4,a4,4
	bgt	a5,a1,.L4510
.L4509:
	li	a5,1
	sw	a5,0(a2)
	ret
	.size	nodeOverwriteCell.isra.0, .-nodeOverwriteCell.isra.0
	.section	.text.nodeInsertCell,"ax",@progbits
	.align	1
	.type	nodeInsertCell, @function
nodeInsertCell:
	addi	sp,sp,-48
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	lw	s0,32(a0)
	lbu	a6,39(a0)
	ld	a3,24(a1)
	addiw	s0,s0,-4
	divw	s0,s0,a6
	lbu	s1,2(a3)
	lbu	a5,3(a3)
	slliw	s1,s1,8
	addw	s3,s1,a5
	bgt	s0,s3,.L4518
.L4516:
	sub	a0,s0,s3
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	seqz	a0,a0
	addi	sp,sp,48
	jr	ra
.L4518:
	mv	s2,a1
	mv	a4,a2
	mv	a5,s3
	addi	a2,a1,20
	addi	a0,a0,37
	mv	a1,a6
	call	nodeOverwriteCell.isra.0
	ld	a5,24(s2)
	addiw	s1,s3,1
	sraiw	a4,s1,8
	sb	a4,2(a5)
	sb	s1,3(a5)
	li	a5,1
	sw	a5,20(s2)
	j	.L4516
	.size	nodeInsertCell, .-nodeInsertCell
	.section	.text.freeCursorConstraints.isra.0.part.0,"ax",@progbits
	.align	1
	.type	freeCursorConstraints.isra.0.part.0, @function
freeCursorConstraints.isra.0.part.0:
	addi	sp,sp,-48
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	lw	a4,0(a0)
	mv	s3,a0
	mv	s2,a1
	sext.w	a5,a4
	ld	a0,0(a1)
	ble	a5,zero,.L4520
	li	s0,0
.L4523:
	slli	a5,s0,1
	add	a5,a5,s0
	slli	a5,a5,3
	add	a5,a0,a5
	ld	s1,16(a5)
	addiw	s0,s0,1
	beq	s1,zero,.L4521
	ld	a5,32(s1)
	beq	a5,zero,.L4522
	ld	a0,24(s1)
	jalr	a5
.L4522:
	mv	a0,s1
	call	sqlite3_free@plt
	lw	a4,0(s3)
	ld	a0,0(s2)
.L4521:
	sext.w	a5,a4
	bgt	a5,s0,.L4523
.L4520:
	call	sqlite3_free@plt
	sd	zero,0(s2)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	freeCursorConstraints.isra.0.part.0, .-freeCursorConstraints.isra.0.part.0
	.section	.text.nodeRowidIndex.isra.0,"ax",@progbits
	.align	1
	.type	nodeRowidIndex.isra.0, @function
nodeRowidIndex.isra.0:
	addi	sp,sp,-64
	lbu	a5,2(a1)
	sd	s2,32(sp)
	lbu	s2,3(a1)
	slliw	a5,a5,8
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	addw	s2,a5,s2
	beq	s2,zero,.L4536
	lbu	s5,39(a0)
	mv	s3,a1
	mv	s4,a2
	mv	s6,a3
	li	s1,4
	li	s0,0
	j	.L4535
.L4534:
	addiw	s0,s0,1
	addw	s1,s5,s1
	beq	s2,s0,.L4536
.L4535:
	add	a0,s3,s1
	call	readInt64
	bne	a0,s4,.L4534
	sw	s0,0(s6)
	li	a0,0
	j	.L4533
.L4536:
	li	a0,267
.L4533:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
	.size	nodeRowidIndex.isra.0, .-nodeRowidIndex.isra.0
	.section	.text.cellArea.isra.0,"ax",@progbits
	.align	1
	.type	cellArea.isra.0, @function
cellArea.isra.0:
	li	a5,4
	beq	a0,a5,.L4545
	bgtu	a0,a5,.L4541
	li	a5,2
	beq	a0,a5,.L4546
	li	a4,3
	li	a5,1
	bne	a0,a4,.L4544
.L4543:
	lw	a0,28(a1)
	lw	a4,24(a1)
	sub	a0,a0,a4
	mul	a0,a0,a5
.L4542:
	lw	a5,20(a1)
	lw	a4,16(a1)
	sub	a5,a5,a4
	mul	a5,a5,a0
.L4544:
	lw	a0,12(a1)
	lw	a4,8(a1)
	sub	a0,a0,a4
	mul	a0,a0,a5
	ret
.L4541:
	li	a4,5
	li	a5,1
	bne	a0,a4,.L4544
	lw	a5,40(a1)
	lw	a0,44(a1)
	lw	a4,32(a1)
	sub	a0,a0,a5
	lw	a5,36(a1)
	sub	a5,a5,a4
	mul	a5,a5,a0
	j	.L4543
.L4546:
	li	a0,1
	j	.L4542
.L4545:
	lw	a5,36(a1)
	lw	a4,32(a1)
	li	a0,1
	sub	a5,a5,a4
	mul	a5,a5,a0
	j	.L4543
	.size	cellArea.isra.0, .-cellArea.isra.0
	.section	.text.cellUnion.isra.0,"ax",@progbits
	.align	1
	.type	cellUnion.isra.0, @function
cellUnion.isra.0:
	li	a4,0
	bne	a1,zero,.L4550
.L4553:
	slli	a1,a4,2
	add	a7,a2,a1
	add	a1,a3,a1
	lw	t1,8(a7)
	lw	a1,8(a1)
	addiw	a5,a4,1
	slli	a5,a5,2
	sext.w	t3,t1
	sext.w	t4,a1
	add	a6,a2,a5
	addiw	a4,a4,2
	add	a5,a3,a5
	ble	t4,t3,.L4551
	mv	a1,t1
.L4551:
	sw	a1,8(a7)
	lw	a1,8(a6)
	lw	a5,8(a5)
	sext.w	a7,a1
	sext.w	t1,a5
	bge	t1,a7,.L4552
	mv	a5,a1
.L4552:
	sw	a5,8(a6)
	lbu	a5,0(a0)
	bgt	a5,a4,.L4553
	ret
.L4550:
	slli	a1,a4,2
	add	a7,a2,a1
	add	a1,a3,a1
	lw	t1,8(a7)
	lw	a1,8(a1)
	addiw	a5,a4,1
	slli	a5,a5,2
	sext.w	t3,t1
	sext.w	t4,a1
	add	a6,a2,a5
	addiw	a4,a4,2
	add	a5,a3,a5
	ble	t4,t3,.L4555
	mv	a1,t1
.L4555:
	sw	a1,8(a7)
	lw	a1,8(a6)
	lw	a5,8(a5)
	sext.w	a7,a1
	sext.w	t1,a5
	bge	t1,a7,.L4556
	mv	a5,a1
.L4556:
	sw	a5,8(a6)
	lbu	a5,0(a0)
	bgt	a5,a4,.L4550
	ret
	.size	cellUnion.isra.0, .-cellUnion.isra.0
	.section	.text.fixBoundingBox,"ax",@progbits
	.align	1
	.type	fixBoundingBox, @function
fixBoundingBox:
	addi	sp,sp,-176
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	sd	s6,112(sp)
	ld	s6,0(a1)
	beq	s6,zero,.L4569
	ld	a5,24(a1)
	addi	s4,sp,16
	li	a2,0
	lbu	s3,2(a5)
	lbu	a5,3(a5)
	mv	a3,s4
	slliw	s3,s3,8
	mv	s0,a0
	addw	s3,s3,a5
	mv	s1,a1
	call	nodeGetCell
	li	a5,1
	sw	a5,12(sp)
	li	a2,1
	addi	s5,s0,37
	addi	s2,sp,64
	ble	s3,a2,.L4566
.L4565:
	mv	a1,s1
	mv	a0,s0
	mv	a3,s2
	call	nodeGetCell
	lbu	a1,38(s0)
	mv	a2,s4
	mv	a3,s2
	mv	a0,s5
	call	cellUnion.isra.0
	lw	a5,12(sp)
	addiw	a2,a5,1
	sw	a2,12(sp)
	blt	a2,s3,.L4565
.L4566:
	ld	a2,8(s1)
	ld	a5,0(s1)
	sd	a2,16(sp)
	bne	a5,zero,.L4574
	li	a5,-1
	sw	a5,12(sp)
.L4568:
	lbu	a1,39(s0)
	ld	a3,24(s6)
	addi	a0,s0,37
	mv	a4,s4
	addi	a2,s6,20
	call	nodeOverwriteCell.isra.0
	mv	a1,s6
	mv	a0,s0
	call	fixBoundingBox
.L4561:
	ld	ra,168(sp)
	ld	s0,160(sp)
	ld	s1,152(sp)
	ld	s2,144(sp)
	ld	s3,136(sp)
	ld	s4,128(sp)
	ld	s5,120(sp)
	ld	s6,112(sp)
	addi	sp,sp,176
	jr	ra
.L4569:
	li	a0,0
	j	.L4561
.L4574:
	ld	a1,24(a5)
	addi	a3,sp,12
	mv	a0,s0
	call	nodeRowidIndex.isra.0
	bne	a0,zero,.L4561
	lw	a5,12(sp)
	j	.L4568
	.size	fixBoundingBox, .-fixBoundingBox
	.section	.text.AdjustTree,"ax",@progbits
	.align	1
	.type	AdjustTree, @function
AdjustTree:
	addi	sp,sp,-144
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	s6,80(sp)
	sd	s7,72(sp)
	sd	s8,64(sp)
	ld	s1,0(a1)
	beq	s1,zero,.L4585
	mv	s5,a2
	ld	a2,8(a1)
	ld	a1,24(s1)
	mv	s2,a0
	addi	s7,sp,12
	addi	s8,a0,37
	mv	a3,s7
	mv	a0,s2
	call	nodeRowidIndex.isra.0
	li	s3,1000
	addi	s4,sp,16
	mv	s0,a0
	bne	a0,zero,.L4578
.L4598:
	lw	a2,12(sp)
	mv	a1,s1
	mv	a0,s2
	mv	a3,s4
	call	nodeGetCell
	lbu	a0,37(s2)
	lbu	a1,38(s2)
	beq	a0,zero,.L4579
	addi	a4,s5,12
	addi	a5,sp,28
	j	.L4583
.L4597:
	lw	a2,0(a4)
	lw	a3,0(a5)
	bgt	a2,a3,.L4581
	addi	a4,a4,8
	addi	a5,a5,8
	bge	s0,a0,.L4579
.L4583:
	lw	a2,-4(a4)
	lw	a3,-4(a5)
	addiw	s0,s0,2
	bge	a2,a3,.L4597
.L4581:
	mv	a3,s5
	mv	a2,s4
	mv	a0,s8
	call	cellUnion.isra.0
	lw	a5,12(sp)
	ld	a3,24(s1)
	lbu	a1,39(s2)
	mv	a4,s4
	addi	a2,s1,20
	mv	a0,s8
	call	nodeOverwriteCell.isra.0
.L4579:
	ld	a5,0(s1)
	beq	a5,zero,.L4585
	addiw	s3,s3,-1
	mv	a1,s1
	beq	s3,zero,.L4578
	mv	s1,a5
	ld	a2,8(a1)
	ld	a1,24(s1)
	mv	a3,s7
	mv	a0,s2
	call	nodeRowidIndex.isra.0
	mv	s0,a0
	beq	a0,zero,.L4598
.L4578:
	li	a0,267
.L4593:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	addi	sp,sp,144
	jr	ra
.L4585:
	li	a0,0
	j	.L4593
	.size	AdjustTree, .-AdjustTree
	.section	.text.memdbOpen,"ax",@progbits
	.align	1
	.type	memdbOpen, @function
memdbOpen:
	andi	a5,a3,256
	bne	a5,zero,.L4600
	ld	a0,32(a0)
	ld	t1,40(a0)
	jr	t1
.L4600:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a2
	addi	a0,s1,8
	li	a2,48
	li	a1,0
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s2,a4
	mv	s0,a3
	call	memset@plt
	li	a5,3
	sw	a5,44(s1)
	ori	s0,s0,128
	sw	s0,0(s2)
	lla	a5,.LANCHOR3+304
	sd	a5,0(s1)
	ld	a5,.LANCHOR1+408
	sd	a5,24(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	memdbOpen, .-memdbOpen
	.section	.text.sqlite3RenameTokenMap.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3RenameTokenMap.isra.0, @function
sqlite3RenameTokenMap.isra.0:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a1
	li	a1,32
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s0,a2
	mv	s2,a3
	call	sqlite3DbMallocZero
	beq	a0,zero,.L4604
	sd	s0,0(a0)
	ld	a5,0(s2)
	sd	a5,8(a0)
	ld	a5,8(s2)
	sd	a5,16(a0)
	ld	a5,0(s1)
	sd	a5,24(a0)
	sd	a0,0(s1)
.L4604:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3RenameTokenMap.isra.0, .-sqlite3RenameTokenMap.isra.0
	.section	.text.triggerStepAllocate,"ax",@progbits
	.align	1
	.type	triggerStepAllocate, @function
triggerStepAllocate:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	ra,72(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	ld	s6,0(a0)
	mv	s1,a2
	lwu	a2,8(a2)
	mv	s2,a0
	mv	s4,a1
	mv	a0,s6
	addi	a1,a2,89
	mv	s3,a3
	mv	s5,a4
	call	sqlite3DbMallocZero
	mv	s0,a0
	beq	a0,zero,.L4609
	lwu	a2,8(s1)
	ld	a1,0(s1)
	addi	s7,a0,88
	mv	a0,s7
	call	memcpy@plt
	mv	a0,s7
	call	sqlite3Dequote
	mv	a2,s5
	sd	s7,24(s0)
	sb	s4,0(s0)
	mv	a1,s3
	mv	a0,s6
	call	triggerSpanDup
	sd	a0,64(s0)
	lbu	a4,276(s2)
	li	a5,1
	bgtu	a4,a5,.L4614
.L4609:
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	jr	ra
.L4614:
	ld	a2,24(s0)
	ld	a0,0(s2)
	mv	a3,s1
	addi	a1,s2,400
	call	sqlite3RenameTokenMap.isra.0
	j	.L4609
	.size	triggerStepAllocate, .-triggerStepAllocate
	.section	.text.sqlite3PagerOpenWal,"ax",@progbits
	.align	1
	.type	sqlite3PagerOpenWal, @function
sqlite3PagerOpenWal:
	lbu	a5,16(a0)
	beq	a5,zero,.L4632
	li	a5,1
	sw	a5,0(a1)
	li	a0,0
	ret
.L4632:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	a5,288(a0)
	mv	s0,a0
	beq	a5,zero,.L4633
	li	a5,1
	sw	a5,0(a1)
	li	a0,0
.L4617:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L4633:
	lbu	a5,17(a0)
	li	a0,14
	bne	a5,zero,.L4617
	lbu	a5,8(s0)
	bne	a5,zero,.L4618
	ld	a5,72(s0)
	li	a4,1
	ld	a5,0(a5)
	lw	a3,0(a5)
	ble	a3,a4,.L4617
	ld	a5,104(a5)
	beq	a5,zero,.L4617
.L4618:
	ld	s1,80(s0)
	ld	a5,0(s1)
	beq	a5,zero,.L4619
	ld	a5,8(a5)
	mv	a0,s1
	jalr	a5
	sd	zero,0(s1)
.L4619:
	mv	a0,s0
	call	pagerOpenWal
	bne	a0,zero,.L4617
	li	a5,5
	sb	a5,9(s0)
	sb	zero,20(s0)
	j	.L4617
	.size	sqlite3PagerOpenWal, .-sqlite3PagerOpenWal
	.section	.text.vdbeSorterOpenTempFile.isra.0,"ax",@progbits
	.align	1
	.type	vdbeSorterOpenTempFile.isra.0, @function
vdbeSorterOpenTempFile.isra.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	ld	a0,0(a0)
	li	a3,4096
	mv	a2,a1
	mv	s0,a1
	addi	a4,sp,4
	addi	a3,a3,30
	li	a1,0
	call	sqlite3OsOpenMalloc
	sw	a0,4(sp)
	bne	a0,zero,.L4635
	ld	a5,0(s0)
	sd	zero,8(sp)
	ld	a4,0(a5)
	beq	a4,zero,.L4635
	ld	a4,80(a4)
	addi	a2,sp,8
	li	a1,18
	mv	a0,a5
	jalr	a4
	lw	a0,4(sp)
.L4635:
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	vdbeSorterOpenTempFile.isra.0, .-vdbeSorterOpenTempFile.isra.0
	.section	.text.vdbeSorterSort.isra.0,"ax",@progbits
	.align	1
	.type	vdbeSorterSort.isra.0, @function
vdbeSorterSort.isra.0:
	addi	sp,sp,-80
	sd	s3,40(sp)
	sd	s5,24(sp)
	sd	s7,8(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s4,32(sp)
	sd	s6,16(sp)
	ld	a5,24(a0)
	ld	a4,16(a0)
	mv	s3,a0
	mv	s5,a1
	mv	s7,a2
	beq	a5,zero,.L4675
.L4642:
	lbu	a4,92(a4)
	li	a3,1
	ld	s0,0(s5)
	lla	a5,vdbeSorterCompareInt
	beq	a4,a3,.L4645
	li	a3,2
	lla	a5,vdbeSorterCompare
	beq	a4,a3,.L4676
.L4645:
	sd	a5,64(s3)
	li	a0,512
	call	sqlite3MallocZero
	mv	s4,a0
	beq	a0,zero,.L4646
	beq	s0,zero,.L4647
	ld	a5,0(s7)
	beq	a5,zero,.L4648
.L4679:
	beq	a5,s0,.L4677
	lw	s6,8(s0)
	sd	zero,8(s0)
	ld	a2,0(s4)
	add	s6,a5,s6
	beq	a2,zero,.L4678
.L4650:
	mv	s1,s4
	li	s2,0
.L4654:
	mv	a1,s0
	mv	a0,s3
	call	vdbeSorterMerge
	addiw	s2,s2,1
	slli	a5,s2,3
	sd	zero,0(s1)
	add	s1,s4,a5
	ld	a2,0(s1)
	mv	s0,a0
	bne	a2,zero,.L4654
	sd	s0,0(s1)
	beq	s6,zero,.L4647
.L4655:
	mv	s0,s6
.L4682:
	ld	a5,0(s7)
	bne	a5,zero,.L4679
.L4648:
	ld	s6,8(s0)
	sd	zero,8(s0)
	ld	a2,0(s4)
	bne	a2,zero,.L4650
	mv	s1,s4
	sd	s0,0(s1)
	bne	s6,zero,.L4655
	j	.L4647
.L4677:
	sd	zero,8(s0)
	ld	a2,0(s4)
	beq	a2,zero,.L4680
	li	s6,0
	j	.L4650
.L4647:
	ld	s0,0(s4)
.L4651:
	addi	s1,s4,8
	addi	s2,s4,512
	li	a5,0
.L4659:
	mv	a1,a5
	mv	a2,s0
	mv	a0,s3
	beq	s0,zero,.L4657
	beq	a5,zero,.L4664
	call	vdbeSorterMerge
	mv	a5,a0
.L4657:
	beq	s2,s1,.L4658
.L4681:
	ld	s0,0(s1)
	addi	s1,s1,8
	j	.L4659
.L4664:
	mv	a5,s0
	bne	s2,s1,.L4681
.L4658:
	sd	a5,0(s5)
	mv	a0,s4
	call	sqlite3_free@plt
	ld	a5,24(s3)
	lbu	a0,19(a5)
.L4672:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	jr	ra
.L4678:
	sd	s0,0(s4)
	mv	s0,s6
	j	.L4682
.L4676:
	lla	a5,vdbeSorterCompareText
	j	.L4645
.L4675:
	ld	a0,40(a4)
	call	sqlite3VdbeAllocUnpackedRecord
	sd	a0,24(s3)
	beq	a0,zero,.L4646
	ld	a5,16(s3)
	ld	a5,40(a5)
	lhu	a5,6(a5)
	sh	a5,16(a0)
	ld	a5,24(s3)
	sb	zero,19(a5)
	ld	a4,16(s3)
	j	.L4642
.L4680:
	sd	s0,0(s4)
	j	.L4651
.L4646:
	li	a0,7
	j	.L4672
	.size	vdbeSorterSort.isra.0, .-vdbeSorterSort.isra.0
	.section	.text.vdbeSorterListToPMA,"ax",@progbits
	.align	1
	.type	vdbeSorterListToPMA, @function
vdbeSorterListToPMA:
	addi	sp,sp,-112
	sd	s0,96(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	ra,104(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s5,56(sp)
	ld	a4,16(a0)
	ld	a5,72(a0)
	mv	s0,sp
	mv	s4,a0
	ld	a0,32(a4)
	sd	zero,0(sp)
	sd	zero,8(s0)
	sd	zero,16(s0)
	sd	zero,24(s0)
	sd	zero,32(s0)
	sd	zero,40(s0)
	mv	s3,a1
	beq	a5,zero,.L4684
.L4687:
	addi	a2,s3,8
	mv	a1,s3
	mv	a0,s4
	call	vdbeSorterSort.isra.0
	beq	a0,zero,.L4702
.L4686:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	addi	sp,sp,112
	jr	ra
.L4702:
	ld	a5,16(s4)
	ld	s5,72(s4)
	ld	s1,80(s4)
	lw	s2,12(a5)
	sd	zero,0(sp)
	sd	zero,8(s0)
	mv	a0,s2
	sd	zero,16(s0)
	sd	zero,24(s0)
	sd	zero,32(s0)
	sd	zero,40(s0)
	call	sqlite3Malloc
	sd	a0,8(sp)
	beq	a0,zero,.L4703
	rem	a4,s1,s2
	sw	s2,16(sp)
	sd	s5,40(sp)
	sext.w	a5,a4
	sub	s1,s1,a4
	sw	a5,20(sp)
	sw	a5,24(sp)
	sd	s1,32(sp)
.L4689:
	lw	a5,56(s4)
	mv	a0,s0
	addiw	a5,a5,1
	sw	a5,56(s4)
	lw	a1,16(s3)
	call	vdbePmaWriteVarint
	ld	s1,0(s3)
.L4701:
	beq	s1,zero,.L4690
.L4704:
	lw	a1,0(s1)
	mv	a0,s0
	mv	s2,s1
	ld	s1,8(s1)
	call	vdbePmaWriteVarint
	lw	a2,0(s2)
	addi	a1,s2,16
	mv	a0,s0
	call	vdbePmaWriteBlob
	ld	a5,8(s3)
	bne	a5,zero,.L4701
	mv	a0,s2
	call	sqlite3_free@plt
	bne	s1,zero,.L4704
.L4690:
	sd	zero,0(s3)
	addi	a1,s4,80
	mv	a0,s0
	call	vdbePmaWriterFinish
	j	.L4686
.L4684:
	addi	a1,s4,72
	call	vdbeSorterOpenTempFile.isra.0
	beq	a0,zero,.L4687
	j	.L4686
.L4703:
	li	a5,7
	sw	a5,0(sp)
	j	.L4689
	.size	vdbeSorterListToPMA, .-vdbeSorterListToPMA
	.section	.text.pcache1ResizeHash.isra.0,"ax",@progbits
	.align	1
	.type	pcache1ResizeHash.isra.0, @function
pcache1ResizeHash.isra.0:
	addi	sp,sp,-48
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	lw	s0,0(a0)
	li	a5,256
	mv	s2,a0
	slliw	s0,s0,1
	sext.w	a4,s0
	mv	s3,a1
	bgeu	a4,a5,.L4706
	li	s0,256
.L4706:
	slli	a0,s0,32
	srli	a0,a0,29
	call	sqlite3MallocZero
	mv	s1,a0
	beq	a0,zero,.L4705
	lw	a3,0(s2)
	ld	a0,0(s3)
	sext.w	a5,a3
	beq	a5,zero,.L4708
	li	a6,0
.L4711:
	slli	a5,a6,32
	srli	a5,a5,29
	add	a5,a0,a5
	ld	a4,0(a5)
	beq	a4,zero,.L4709
.L4710:
	lw	a5,16(a4)
	mv	a3,a4
	ld	a4,24(a4)
	remuw	a5,a5,s0
	slli	a5,a5,32
	srli	a5,a5,29
	add	a5,s1,a5
	ld	a2,0(a5)
	sd	a2,24(a3)
	sd	a3,0(a5)
	bne	a4,zero,.L4710
	ld	a0,0(s3)
	lw	a3,0(s2)
.L4709:
	addiw	a6,a6,1
	sext.w	a5,a3
	bgtu	a5,a6,.L4711
.L4708:
	call	sqlite3_free@plt
	sd	s1,0(s3)
	sw	s0,0(s2)
.L4705:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	pcache1ResizeHash.isra.0, .-pcache1ResizeHash.isra.0
	.section	.text.pcache1FetchStage2,"ax",@progbits
	.align	1
	.type	pcache1FetchStage2, @function
pcache1FetchStage2:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	li	a4,1
	ld	s2,0(a0)
	lw	a5,56(a0)
	mv	s0,a0
	mv	s1,a1
	beq	a2,a4,.L4770
.L4725:
	lw	a4,60(s0)
	bleu	a4,a5,.L4771
.L4731:
	lw	a5,28(s0)
	beq	a5,zero,.L4732
	ld	a0,72(s2)
	lhu	a5,22(a0)
	beq	a5,zero,.L4772
.L4732:
	ld	a0,72(s0)
	beq	a0,zero,.L4773
.L4738:
	ld	a5,24(a0)
	sd	a5,72(s0)
	sd	zero,24(a0)
.L4745:
	ld	a4,8(s0)
	lw	a5,0(a4)
	addiw	a5,a5,1
	sw	a5,0(a4)
.L4737:
	lw	a5,60(s0)
	lw	a4,56(s0)
	remuw	a5,s1,a5
	addiw	a4,a4,1
	sw	a4,56(s0)
	sw	s1,16(a0)
	ld	a4,64(s0)
	ld	a3,8(a0)
	slli	a5,a5,32
	srli	a5,a5,29
	add	a4,a4,a5
	ld	a4,0(a4)
	sd	s0,32(a0)
	sd	zero,40(a0)
	sd	a4,24(a0)
	sd	zero,0(a3)
	ld	a4,64(s0)
	add	a5,a4,a5
	sd	a0,0(a5)
	lw	a5,44(s0)
	bgeu	a5,s1,.L4724
	sw	s1,44(s0)
.L4724:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L4772:
	lw	a5,56(s0)
	lw	a4,36(s0)
	addiw	a5,a5,1
	bgeu	a5,a4,.L4733
	lla	a4,.LANCHOR0
	lw	a5,336(a4)
	beq	a5,zero,.L4734
	lw	a5,16(s0)
	lw	a2,20(s0)
	lw	a3,332(a4)
	addw	a5,a5,a2
	bgt	a5,a3,.L4734
	lw	a5,380(a4)
	beq	a5,zero,.L4732
.L4733:
	li	a1,0
	sd	a0,8(sp)
	call	pcache1RemoveFromHash
	ld	a0,8(sp)
	ld	a5,40(a0)
	ld	a4,48(a0)
	sd	a5,40(a4)
	ld	a4,48(a0)
	sd	a4,48(a5)
	ld	a4,32(a0)
	sd	zero,40(a0)
	lw	a5,52(a4)
	addiw	a5,a5,-1
	sw	a5,52(a4)
	ld	a5,32(a0)
	lw	a4,24(s0)
	lw	a3,24(a5)
	beq	a3,a4,.L4736
	call	pcache1FreePage
	j	.L4732
.L4770:
	lw	a2,52(a0)
	lw	a4,16(s2)
	subw	a3,a5,a2
	bleu	a4,a3,.L4728
	lw	a4,40(a0)
	bleu	a4,a3,.L4728
	lla	a4,.LANCHOR0
	lw	a1,336(a4)
	beq	a1,zero,.L4729
	lw	a1,16(a0)
	lw	a6,20(a0)
	lw	a0,332(a4)
	addw	a1,a1,a6
	bgt	a1,a0,.L4729
	lw	a4,380(a4)
.L4730:
	beq	a4,zero,.L4725
	bgeu	a2,a3,.L4725
.L4728:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L4771:
	addi	a1,s0,64
	addi	a0,s0,60
	call	pcache1ResizeHash.isra.0
	j	.L4731
.L4773:
	lw	a5,56(s0)
	lw	a0,24(s0)
	bne	a5,zero,.L4739
	lw	a5,.LANCHOR0+328
	beq	a5,zero,.L4739
	lw	a4,36(s0)
	li	a3,2
	bleu	a4,a3,.L4739
	ble	a5,zero,.L4740
	mul	a5,a0,a5
.L4741:
	slli	a4,a4,32
	srli	a4,a4,32
	mul	a0,a4,a0
	ble	a0,a5,.L4742
	mv	a0,a5
.L4742:
	call	sqlite3Malloc
	sd	a0,80(s0)
	mv	s2,a0
	beq	a0,zero,.L4743
	ld	a5,.LANCHOR1+72
	jalr	a5
	lw	a5,24(s0)
	li	a3,1
	divw	a5,a0,a5
.L4744:
	lw	a0,16(s0)
	addiw	a5,a5,-1
	add	a0,s2,a0
	addi	a4,a0,56
	sd	s2,0(a0)
	sd	a4,8(a0)
	sw	a3,20(a0)
	ld	a4,72(s0)
	sd	zero,48(a0)
	sd	a4,24(a0)
	lw	a4,24(s0)
	sd	a0,72(s0)
	add	s2,s2,a4
	bne	a5,zero,.L4744
	j	.L4738
.L4743:
	ld	a0,72(s0)
	bne	a0,zero,.L4738
	lw	a0,24(s0)
.L4739:
	call	pcache1Alloc
	lw	a4,16(s0)
	mv	a5,a0
	add	a0,a0,a4
	beq	a5,zero,.L4728
	addi	a4,a0,56
	sd	a5,0(a0)
	sd	a4,8(a0)
	sw	zero,20(a0)
	j	.L4745
.L4729:
	lw	a4,560(a4)
	j	.L4730
.L4734:
	lw	a5,560(a4)
	beq	a5,zero,.L4732
	j	.L4733
.L4736:
	lw	a4,28(a5)
	lw	a3,28(s0)
	lw	a5,20(s2)
	subw	a4,a4,a3
	subw	a5,a5,a4
	sw	a5,20(s2)
	j	.L4737
.L4740:
	neg	a5,a5
	slli	a5,a5,10
	j	.L4741
	.size	pcache1FetchStage2, .-pcache1FetchStage2
	.section	.text.pcache1Fetch,"ax",@progbits
	.align	1
	.type	pcache1Fetch, @function
pcache1Fetch:
	lw	a5,60(a0)
	ld	a3,64(a0)
	mv	a4,a0
	remuw	a5,a1,a5
	slli	a5,a5,32
	srli	a5,a5,29
	add	a5,a3,a5
	ld	a0,0(a5)
	bne	a0,zero,.L4775
	j	.L4776
.L4777:
	ld	a0,24(a0)
	beq	a0,zero,.L4776
.L4775:
	lw	a5,16(a0)
	bne	a5,a1,.L4777
	ld	a5,40(a0)
	beq	a5,zero,.L4787
	ld	a4,48(a0)
	sd	a5,40(a4)
	ld	a4,48(a0)
	sd	a4,48(a5)
	ld	a4,32(a0)
	sd	zero,40(a0)
	lw	a5,52(a4)
	addiw	a5,a5,-1
	sw	a5,52(a4)
	ret
.L4787:
	ret
.L4776:
	beq	a2,zero,.L4788
	mv	a0,a4
	tail	pcache1FetchStage2
.L4788:
	li	a0,0
	ret
	.size	pcache1Fetch, .-pcache1Fetch
	.section	.text.pcache1Create,"ax",@progbits
	.align	1
	.type	pcache1Create, @function
pcache1Create:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	lla	s1,.LANCHOR0
	lw	a5,324(s1)
	mv	s4,a0
	mv	s3,a1
	slliw	a0,a5,2
	addw	a0,a0,a5
	slliw	a0,a0,4
	addiw	a0,a0,88
	mv	s2,a2
	call	sqlite3MallocZero
	mv	s0,a0
	beq	a0,zero,.L4789
	lw	a5,324(s1)
	lla	s1,.LANCHOR0+240
	beq	a5,zero,.L4791
	li	a5,10
	addi	s1,a0,88
	sw	a5,104(a0)
.L4791:
	lhu	a5,46(s1)
	bne	a5,zero,.L4792
	addi	a5,s1,24
	li	a4,1
	sh	a4,46(s1)
	sd	a5,64(s1)
	sd	a5,72(s1)
.L4792:
	addw	a5,s4,s3
	addiw	a5,a5,56
	snez	a4,s2
	sd	s1,0(s0)
	sw	s4,16(s0)
	sw	s3,20(s0)
	sw	a5,24(s0)
	sw	a4,28(s0)
	addi	a1,s0,64
	addi	a0,s0,60
	call	pcache1ResizeHash.isra.0
	bne	s2,zero,.L4801
	addi	a5,s0,48
	sd	a5,8(s0)
	lw	a5,60(s0)
	beq	a5,zero,.L4802
.L4789:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L4801:
	li	a5,10
	sw	a5,32(s0)
	lw	a4,12(s1)
	lw	a5,8(s1)
	addi	a3,s1,20
	addiw	a2,a4,10
	subw	a5,a5,a4
	sw	a2,12(s1)
	sw	a5,16(s1)
	lw	a5,60(s0)
	sd	a3,8(s0)
	bne	a5,zero,.L4789
.L4802:
	mv	a0,s0
	call	pcache1Destroy
	li	s0,0
	j	.L4789
	.size	pcache1Create, .-pcache1Create
	.section	.text.sqlite3PagerLookup.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3PagerLookup.isra.0, @function
sqlite3PagerLookup.isra.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	ld	a5,0(a0)
	mv	s0,a0
	li	a2,0
	ld	a0,64(a5)
	ld	a5,.LANCHOR1+240
	mv	s1,a1
	jalr	a5
	beq	a0,zero,.L4803
	mv	a2,a0
	ld	a0,0(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3PcacheFetchFinish
.L4803:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3PagerLookup.isra.0, .-sqlite3PagerLookup.isra.0
	.section	.text.btreePageLookup,"ax",@progbits
	.align	1
	.type	btreePageLookup, @function
btreePageLookup:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	ld	a0,0(a0)
	mv	s0,a1
	addi	a0,a0,280
	call	sqlite3PagerLookup.isra.0
	beq	a0,zero,.L4809
	mv	a5,a0
	ld	a0,16(a0)
	lw	a4,4(a0)
	beq	a4,s0,.L4806
	ld	a3,8(a5)
	li	a4,1
	sd	a5,112(a0)
	sd	a3,80(a0)
	sd	s1,72(a0)
	sw	s0,4(a0)
	li	a5,100
	beq	s0,a4,.L4808
	li	a5,0
.L4808:
	sb	a5,9(a0)
.L4806:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L4809:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	btreePageLookup, .-btreePageLookup
	.section	.text.sqlite3PcacheTruncate,"ax",@progbits
	.align	1
	.type	sqlite3PcacheTruncate, @function
sqlite3PcacheTruncate:
	addi	sp,sp,-32
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s2,a0
	ld	a0,64(a0)
	beq	a0,zero,.L4812
	ld	s0,0(s2)
	mv	s1,a1
	beq	s0,zero,.L4814
.L4816:
	lw	a5,48(s0)
	mv	a0,s0
	ld	s0,56(s0)
	bgtu	a5,s1,.L4826
	bne	s0,zero,.L4816
.L4827:
	ld	a0,64(s2)
.L4814:
	beq	s1,zero,.L4817
	addiw	a1,s1,1
	lla	s0,.LANCHOR1
.L4818:
	ld	t1,264(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	t1
.L4826:
	call	sqlite3PcacheMakeClean
	bne	s0,zero,.L4816
	j	.L4827
.L4817:
	lw	a5,24(s2)
	beq	a5,zero,.L4820
	lla	s0,.LANCHOR1
	ld	a5,240(s0)
	li	a2,0
	li	a1,1
	jalr	a5
	beq	a0,zero,.L4828
	lw	a2,36(s2)
	ld	a0,0(a0)
	li	a1,0
	call	memset@plt
	ld	a0,64(s2)
	li	a1,2
	j	.L4818
.L4812:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L4820:
	lla	s0,.LANCHOR1
	ld	t1,264(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a1,1
	addi	sp,sp,32
	jr	t1
.L4828:
	ld	a0,64(s2)
	li	a1,1
	j	.L4818
	.size	sqlite3PcacheTruncate, .-sqlite3PcacheTruncate
	.section	.text.pager_reset,"ax",@progbits
	.align	1
	.type	pager_reset, @function
pager_reset:
	lw	a4,132(a0)
	ld	a5,112(a0)
	addiw	a4,a4,1
	sw	a4,132(a0)
	beq	a5,zero,.L4830
	li	a4,1
.L4831:
	sw	a4,24(a5)
	ld	a5,64(a5)
	bne	a5,zero,.L4831
.L4830:
	ld	a0,280(a0)
	li	a1,0
	tail	sqlite3PcacheTruncate
	.size	pager_reset, .-pager_reset
	.section	.text.pager_unlock,"ax",@progbits
	.align	1
	.type	pager_unlock, @function
pager_unlock:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s0,a0
	ld	a0,64(a0)
	call	sqlite3BitvecDestroy
	mv	a0,s0
	sd	zero,64(s0)
	call	releaseAllSavepoints
	ld	a0,288(s0)
	beq	a0,zero,.L4837
	call	sqlite3WalEndReadTransaction
	sb	zero,20(s0)
.L4838:
	lw	a5,44(s0)
	beq	a5,zero,.L4847
	lbu	a5,16(s0)
	beq	a5,zero,.L4865
	ld	a5,80(s0)
	ld	a5,0(a5)
	seqz	a5,a5
	sb	a5,20(s0)
.L4849:
	lla	a5,getPageNormal
	sw	zero,44(s0)
	sd	a5,264(s0)
.L4847:
	sd	zero,96(s0)
	sd	zero,104(s0)
	sb	zero,23(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L4837:
	lbu	a5,8(s0)
	bne	a5,zero,.L4838
	ld	a0,72(s0)
	ld	a5,0(a0)
	beq	a5,zero,.L4839
	ld	a5,96(a5)
	jalr	a5
	li	a5,4096
	addi	a5,a5,-2048
	and	a0,a0,a5
	sext.w	a0,a0
	beq	a0,zero,.L4840
	lbu	a5,9(s0)
	li	a4,1
	andi	a5,a5,5
	beq	a5,a4,.L4841
.L4840:
	ld	s1,80(s0)
	ld	a5,0(s1)
	beq	a5,zero,.L4841
.L4850:
	ld	a5,8(a5)
	mv	a0,s1
	jalr	a5
	sd	zero,0(s1)
.L4841:
	ld	a0,72(s0)
	ld	a5,0(a0)
	beq	a5,zero,.L4843
	lbu	a4,17(s0)
	bne	a4,zero,.L4844
	ld	a5,64(a5)
	li	a1,0
	jalr	a5
	lbu	a4,21(s0)
	li	a5,5
	beq	a4,a5,.L4845
	sb	zero,21(s0)
.L4845:
	beq	a0,zero,.L4843
	lbu	a4,20(s0)
	li	a5,6
	bne	a4,a5,.L4843
	li	a5,5
	sb	a5,21(s0)
.L4843:
	sb	zero,22(s0)
	sb	zero,20(s0)
	j	.L4838
.L4865:
	mv	a0,s0
	call	pager_reset
	sb	zero,22(s0)
	sb	zero,20(s0)
	j	.L4849
.L4839:
	ld	s1,80(s0)
	ld	a5,0(s1)
	bne	a5,zero,.L4850
	j	.L4843
.L4844:
	lbu	a4,21(s0)
	li	a5,5
	beq	a4,a5,.L4843
	sb	zero,21(s0)
	j	.L4843
	.size	pager_unlock, .-pager_unlock
	.section	.text.sqlite3PagerSetPagesize,"ax",@progbits
	.align	1
	.type	sqlite3PagerSetPagesize, @function
sqlite3PagerSetPagesize:
	addi	sp,sp,-96
	sd	s0,80(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	ra,88(sp)
	sd	s1,72(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	lbu	a5,19(a0)
	lw	a4,188(a0)
	mv	s0,a0
	mv	s3,a1
	mv	s2,a2
	beq	a5,zero,.L4867
	lw	a5,28(a0)
	bne	a5,zero,.L4898
.L4867:
	ld	a5,280(s0)
	lw	a5,24(a5)
	bne	a5,zero,.L4898
	lw	s4,0(s3)
	beq	s4,zero,.L4898
	beq	s4,a4,.L4868
	lbu	a5,20(s0)
	sd	zero,8(sp)
	beq	a5,zero,.L4874
	ld	a0,72(s0)
	ld	a5,0(a0)
	beq	a5,zero,.L4874
	ld	a5,48(a5)
	addi	a1,sp,8
	li	s5,0
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L4872
.L4874:
	addiw	a0,s4,8
	call	pcache1Alloc
	mv	s5,a0
	beq	a0,zero,.L4899
	slli	s6,s4,32
	srli	s6,s6,32
	add	a5,a0,s6
	sb	zero,0(a5)
	sb	zero,1(a5)
	sb	zero,2(a5)
	sb	zero,3(a5)
	sb	zero,4(a5)
	sb	zero,5(a5)
	sb	zero,6(a5)
	sb	zero,7(a5)
	mv	a0,s0
	call	pager_reset
	ld	a0,280(s0)
	sext.w	s7,s4
	lw	a5,36(a0)
	beq	a5,zero,.L4876
	mv	a1,s7
	call	sqlite3PcacheSetPageSize.part.0
	mv	s1,a0
	bne	a0,zero,.L4872
.L4876:
	ld	a0,272(s0)
	call	pcache1Free
	ld	a5,8(sp)
	sd	s5,272(s0)
	sw	s7,188(s0)
	addi	a5,a5,-1
	add	a5,a5,s6
	div	a5,a5,s6
	sw	a5,28(s0)
	sw	s4,0(s3)
.L4868:
	blt	s2,zero,.L4878
.L4900:
	slliw	a2,s2,16
	sraiw	a2,a2,16
.L4879:
	sh	a2,178(s0)
	li	s1,0
.L4877:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	mv	a0,s1
	ld	s1,72(sp)
	addi	sp,sp,96
	jr	ra
.L4898:
	sw	a4,0(s3)
	bge	s2,zero,.L4900
.L4878:
	lh	a2,178(s0)
	j	.L4879
.L4899:
	li	s1,7
.L4872:
	mv	a0,s5
	call	pcache1Free
	lw	a5,188(s0)
	sw	a5,0(s3)
	j	.L4877
	.size	sqlite3PagerSetPagesize, .-sqlite3PagerSetPagesize
	.section	.text.sqlite3BtreeSetPageSize,"ax",@progbits
	.align	1
	.type	sqlite3BtreeSetPageSize, @function
sqlite3BtreeSetPageSize:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	ld	s0,8(a0)
	ld	a4,0(a0)
	li	a0,8
	lhu	a5,38(s0)
	sd	a4,8(s0)
	andi	a5,a5,2
	bne	a5,zero,.L4902
	mv	s1,a2
	mv	s2,a3
	blt	a2,zero,.L4915
	li	a5,65536
	addiw	a4,a1,-512
	addi	a5,a5,-512
	bgtu	a4,a5,.L4905
.L4916:
	addiw	a5,a1,-1
	and	a5,a1,a5
	sext.w	a5,a5
	bne	a5,zero,.L4905
	ld	a0,128(s0)
	sw	a1,48(s0)
	beq	a0,zero,.L4905
	addi	a0,a0,-4
	sd	a0,128(s0)
	call	pcache1Free
	sd	zero,128(s0)
.L4905:
	ld	a0,0(s0)
	mv	a2,s1
	addi	a1,s0,48
	call	sqlite3PagerSetPagesize
	lw	a2,48(s0)
	slli	s1,s1,48
	srli	s1,s1,48
	subw	s1,a2,s1
	sw	s1,52(s0)
	beq	s2,zero,.L4902
	lhu	a5,38(s0)
	ori	a5,a5,2
	sh	a5,38(s0)
.L4902:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L4915:
	lw	s1,48(s0)
	lw	a2,52(s0)
	li	a5,65536
	addiw	a4,a1,-512
	addi	a5,a5,-512
	subw	s1,s1,a2
	bgtu	a4,a5,.L4905
	j	.L4916
	.size	sqlite3BtreeSetPageSize, .-sqlite3BtreeSetPageSize
	.section	.text.readJournalHdr,"ax",@progbits
	.align	1
	.type	readJournalHdr, @function
readJournalHdr:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	ld	s0,96(a0)
	lwu	a5,184(a0)
	mv	s3,a0
	mv	s1,a3
	mv	s2,a4
	beq	s0,zero,.L4918
	addi	s0,s0,-1
	div	s0,s0,a5
	addi	s0,s0,1
	mul	s0,s0,a5
.L4918:
	sd	s0,96(s3)
	add	a5,s0,a5
	bgt	a5,a2,.L4923
	beq	a1,zero,.L4937
.L4921:
	ld	a0,80(s3)
	mv	a3,s0
	li	a2,8
	ld	a5,0(a0)
	addi	a1,sp,8
	ld	a5,16(a5)
	jalr	a5
	bne	a0,zero,.L4920
	ld	a4,8(sp)
	ld	a5,.LC11
	bne	a4,a5,.L4923
.L4924:
	ld	a0,80(s3)
	mv	a2,s1
	addi	a1,s0,8
	call	read32bits
	bne	a0,zero,.L4920
	ld	a0,80(s3)
	addi	a2,s3,52
	addi	a1,s0,12
	call	read32bits
	beq	a0,zero,.L4938
.L4920:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	addi	sp,sp,64
	jr	ra
.L4937:
	ld	a5,104(s3)
	bne	a5,s0,.L4921
	j	.L4924
.L4923:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	li	a0,101
	addi	sp,sp,64
	jr	ra
.L4938:
	ld	a0,80(s3)
	mv	a2,s2
	addi	a1,s0,16
	call	read32bits
	bne	a0,zero,.L4920
	ld	a4,96(s3)
	beq	a4,zero,.L4939
.L4925:
	lwu	a5,184(s3)
	add	a5,a5,a4
	sd	a5,96(s3)
	j	.L4920
.L4939:
	ld	a0,80(s3)
	addi	a2,sp,4
	addi	a1,s0,20
	call	read32bits
	bne	a0,zero,.L4920
	ld	a0,80(s3)
	mv	s1,sp
	mv	a2,s1
	addi	a1,s0,24
	call	read32bits
	bne	a0,zero,.L4920
	lw	a5,0(sp)
	bne	a5,zero,.L4927
	lw	a5,188(s3)
	sw	a5,0(sp)
.L4927:
	li	a4,511
	li	a0,101
	bleu	a5,a4,.L4920
	lw	a4,4(sp)
	li	a3,65536
	addi	a2,a3,-32
	addiw	a1,a4,-32
	bgtu	a1,a2,.L4920
	bgtu	a5,a3,.L4920
	addiw	a2,a5,-1
	addiw	a3,a4,-1
	and	a5,a5,a2
	and	a4,a4,a3
	or	a5,a5,a4
	sext.w	a5,a5
	bne	a5,zero,.L4920
	li	a2,-1
	mv	a1,s1
	mv	a0,s3
	call	sqlite3PagerSetPagesize
	lw	a5,4(sp)
	ld	a4,96(s3)
	sw	a5,184(s3)
	j	.L4925
	.size	readJournalHdr, .-readJournalHdr
	.section	.text.pager_end_transaction,"ax",@progbits
	.align	1
	.type	pager_end_transaction, @function
pager_end_transaction:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	lbu	a4,20(a0)
	li	a5,1
	mv	s0,a0
	mv	s3,a1
	mv	s2,a2
	bgtu	a4,a5,.L4941
	lbu	a4,21(a0)
	li	a0,0
	bleu	a4,a5,.L5002
.L4941:
	mv	a0,s0
	call	releaseAllSavepoints
	ld	s1,80(s0)
	ld	a5,0(s1)
	beq	a5,zero,.L5075
	lla	a4,.LANCHOR3+152
	beq	a5,a4,.L5078
	lbu	a4,9(s0)
	li	a3,3
	beq	a4,a3,.L5079
	li	a3,1
	beq	a4,a3,.L4952
	lbu	a3,8(s0)
	beq	a3,zero,.L4953
	li	a3,5
	beq	a4,a3,.L4953
.L4952:
	ld	a4,96(s0)
	beq	s3,zero,.L4954
	beq	a4,zero,.L5074
.L4958:
	ld	s3,200(s0)
.L4956:
	ld	a5,32(a5)
	mv	a0,s1
	li	a1,0
	jalr	a5
	mv	s1,a0
	beq	s1,zero,.L5080
.L4961:
	sd	zero,96(s0)
.L4951:
	ld	a0,64(s0)
	call	sqlite3BitvecDestroy
	sd	zero,64(s0)
	sw	zero,48(s0)
	beq	s1,zero,.L4944
	ld	a0,288(s0)
	bne	a0,zero,.L5081
	lbu	a5,8(s0)
	bne	a5,zero,.L4985
.L4987:
	ld	a5,72(s0)
	li	a0,0
	ld	a4,0(a5)
	beq	a4,zero,.L4989
	lbu	a3,17(s0)
	bne	a3,zero,.L4990
	ld	a4,64(a4)
	li	a1,1
	mv	a0,a5
	jalr	a4
.L4990:
	lbu	a4,21(s0)
	li	a5,5
	beq	a4,a5,.L4989
	li	a5,1
	sb	a5,21(s0)
.L4989:
	sb	zero,22(s0)
.L4986:
	li	a5,1
	sb	a5,20(s0)
	sb	zero,23(s0)
	bne	s1,zero,.L5077
.L5002:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	addi	sp,sp,64
	jr	ra
.L4954:
	lbu	a3,16(s0)
	beq	a3,zero,.L4957
	bne	a4,zero,.L4958
.L5075:
	ld	a0,64(s0)
	call	sqlite3BitvecDestroy
	sd	zero,64(s0)
	sw	zero,48(s0)
.L4944:
	lbu	a5,19(s0)
	bne	a5,zero,.L4970
	lbu	a5,16(s0)
	beq	a5,zero,.L4970
	beq	s2,zero,.L4971
	ld	a5,72(s0)
	ld	a5,0(a5)
	beq	a5,zero,.L4971
	mv	a0,s0
	call	pagerFlushOnCommit.part.0
	beq	a0,zero,.L4971
.L4970:
	ld	s1,280(s0)
	ld	a0,0(s1)
	beq	a0,zero,.L4972
.L4973:
	call	sqlite3PcacheMakeClean
	ld	a0,0(s1)
	bne	a0,zero,.L4973
.L5076:
	ld	s1,280(s0)
.L4972:
	lw	a1,28(s0)
	mv	a0,s1
	call	sqlite3PcacheTruncate
	ld	a0,288(s0)
	beq	a0,zero,.L4976
	lbu	a5,64(a0)
	beq	a5,zero,.L4977
	call	sqlite3WalEndWriteTransaction.part.0
.L4977:
	beq	s2,zero,.L4981
.L4983:
	ld	a0,72(s0)
	ld	a5,0(a0)
	beq	a5,zero,.L4981
	ld	a5,80(a5)
	li	a2,0
	li	a1,22
	jalr	a5
	li	a5,12
	mv	s1,a0
	beq	a0,a5,.L4981
	lbu	a5,8(s0)
	li	a0,0
	bne	a5,zero,.L4986
.L4984:
	ld	s2,288(s0)
	beq	s2,zero,.L4987
	lbu	a5,63(s2)
	li	a0,0
	beq	a5,zero,.L4986
	lh	a1,60(s2)
	ld	a0,8(s2)
	sb	zero,63(s2)
	addiw	a1,a1,3
	call	walLockShared.isra.0.part.0
	beq	a0,zero,.L4988
	li	a5,1
	sb	a5,63(s2)
	li	a0,0
	j	.L4986
.L4981:
	lbu	a5,8(s0)
	li	s1,0
	beq	a5,zero,.L4984
.L4991:
	li	a5,1
	sb	a5,20(s0)
	sb	zero,23(s0)
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	li	a0,0
	addi	sp,sp,64
	jr	ra
.L5081:
	lbu	a5,64(a0)
	beq	a5,zero,.L4994
	call	sqlite3WalEndWriteTransaction.part.0
.L4994:
	lbu	a5,8(s0)
	beq	a5,zero,.L4984
.L4985:
	li	a5,1
	sb	a5,20(s0)
	sb	zero,23(s0)
.L5077:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	mv	a0,s1
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
.L5078:
	mv	a0,s1
	call	memjrnlClose
	sd	zero,0(s1)
	ld	a0,64(s0)
	call	sqlite3BitvecDestroy
	sd	zero,64(s0)
	sw	zero,48(s0)
	j	.L4944
.L5074:
	ld	a0,64(s0)
	sd	zero,96(s0)
	call	sqlite3BitvecDestroy
	sd	zero,64(s0)
	sw	zero,48(s0)
	j	.L4944
.L4971:
	ld	a3,280(s0)
	ld	a5,0(a3)
	beq	a5,zero,.L4975
.L4974:
	lhu	a4,52(a5)
	andi	a4,a4,-13
	sh	a4,52(a5)
	ld	a5,56(a5)
	bne	a5,zero,.L4974
.L4975:
	ld	a5,8(a3)
	sd	a5,16(a3)
	j	.L5076
.L5079:
	ld	a4,96(s0)
	beq	a4,zero,.L5075
	ld	a5,32(a5)
	mv	a0,s1
	li	a1,0
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L4961
	lbu	a5,12(s0)
	beq	a5,zero,.L5074
	lbu	a1,14(s0)
	beq	a1,zero,.L5074
	ld	a0,80(s0)
	call	sqlite3OsSync.part.0
	mv	s1,a0
	j	.L4961
.L4976:
	beq	s2,zero,.L4979
	lw	a1,28(s0)
	lw	a5,36(s0)
	bleu	a5,a1,.L4983
	mv	a0,s0
	call	pager_truncate
	mv	s1,a0
	bne	a0,zero,.L4994
	j	.L4983
.L4953:
	ld	a5,8(a5)
	lbu	s3,16(s0)
	mv	a0,s1
	jalr	a5
	sd	zero,0(s1)
	bne	s3,zero,.L5075
	ld	a0,0(s0)
	lbu	a2,13(s0)
	ld	a1,216(s0)
	ld	a5,48(a0)
	jalr	a5
	mv	s1,a0
	j	.L4951
.L4979:
	lbu	a5,8(s0)
	bne	a5,zero,.L4991
	li	s1,0
	j	.L4987
.L4988:
	lbu	a5,63(s2)
	beq	a5,zero,.L4987
	j	.L4986
.L4957:
	beq	a4,zero,.L5074
	ld	s3,200(s0)
	beq	s3,zero,.L4956
	ld	a5,24(a5)
	mv	a0,s1
	li	a3,0
	li	a2,28
	lla	a1,.LANCHOR4-1224
	jalr	a5
	mv	s1,a0
	bne	s1,zero,.L4961
.L5080:
	lbu	a5,11(s0)
	beq	a5,zero,.L4962
.L4965:
	ble	s3,zero,.L5074
	ld	a0,80(s0)
	addi	a1,sp,8
	ld	a5,0(a0)
	ld	a5,48(a5)
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L4961
	ld	a5,8(sp)
	ble	a5,s3,.L5074
	ld	a0,80(s0)
	mv	a1,s3
	ld	a5,0(a0)
	ld	a5,32(a5)
	jalr	a5
	mv	s1,a0
	j	.L4961
.L4962:
	lbu	a1,14(s0)
	ld	a0,80(s0)
	ori	a1,a1,16
	call	sqlite3OsSync.part.0
	mv	s1,a0
	beq	a0,zero,.L4965
	j	.L4961
	.size	pager_end_transaction, .-pager_end_transaction
	.section	.text.vdbePmaReaderClear,"ax",@progbits
	.align	1
	.type	vdbePmaReaderClear, @function
vdbePmaReaderClear:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s0,a0
	ld	a0,32(a0)
	call	sqlite3_free@plt
	ld	a0,48(s0)
	call	sqlite3_free@plt
	ld	s1,72(s0)
	beq	s1,zero,.L5083
	ld	a0,8(s1)
	call	vdbeMergeEngineFree
	mv	a0,s1
	call	sqlite3_free@plt
.L5083:
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	li	a2,80
	li	a1,0
	addi	sp,sp,32
	tail	memset@plt
	.size	vdbePmaReaderClear, .-vdbePmaReaderClear
	.section	.text.vdbeMergeEngineFree,"ax",@progbits
	.align	1
	.type	vdbeMergeEngineFree, @function
vdbeMergeEngineFree:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	beq	a0,zero,.L5089
	lw	a5,0(a0)
	ble	a5,zero,.L5089
	li	s0,0
.L5090:
	ld	a0,24(s1)
	slli	a5,s0,2
	add	a5,a5,s0
	slli	a5,a5,4
	add	a0,a0,a5
	call	vdbePmaReaderClear
	lw	a5,0(s1)
	addiw	s0,s0,1
	bgt	a5,s0,.L5090
.L5089:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_free@plt
	.size	vdbeMergeEngineFree, .-vdbeMergeEngineFree
	.section	.text.vdbeIncrMergerNew,"ax",@progbits
	.align	1
	.type	vdbeIncrMergerNew, @function
vdbeIncrMergerNew:
	addi	sp,sp,-32
	sd	s0,16(sp)
	mv	s0,a0
	li	a0,72
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s1,a2
	sd	ra,24(sp)
	mv	s2,a1
	call	sqlite3MallocZero
	sd	a0,0(s1)
	beq	a0,zero,.L5097
	sd	s2,8(a0)
	sd	s0,0(a0)
	ld	a5,16(s0)
	lw	a3,4(a5)
	lw	a4,8(a5)
	srliw	a5,a3,31
	addw	a5,a5,a3
	sraiw	a2,a5,1
	addiw	a3,a4,9
	mv	a5,a2
	blt	a2,a3,.L5101
.L5098:
	sw	a5,24(a0)
	ld	a4,96(s0)
	li	a0,0
	add	a5,a4,a5
	sd	a5,96(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L5101:
	sext.w	a5,a3
	j	.L5098
.L5097:
	mv	a0,s2
	call	vdbeMergeEngineFree
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,7
	addi	sp,sp,32
	jr	ra
	.size	vdbeIncrMergerNew, .-vdbeIncrMergerNew
	.section	.text.btreeCursor,"ax",@progbits
	.align	1
	.type	btreeCursor, @function
btreeCursor:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	ld	s1,8(a0)
	mv	s0,a0
	bne	a2,zero,.L5123
	li	a5,1
	beq	a1,a5,.L5124
	sext.w	a2,a1
	li	a5,-1
	sw	a2,80(a4)
	sb	a5,84(a4)
.L5122:
	sd	a3,128(a4)
	sd	s0,8(a4)
	sd	s1,32(a4)
	sb	zero,1(a4)
	li	a5,2
.L5109:
	sb	a5,2(a4)
	ld	a5,16(s1)
	beq	a5,zero,.L5106
.L5108:
	lw	a3,80(a5)
	bne	a3,a2,.L5107
	lbu	a3,1(a5)
	ori	a3,a3,32
	sb	a3,1(a5)
	lbu	a3,1(a4)
	ori	a3,a3,32
	sb	a3,1(a4)
.L5107:
	ld	a5,40(a5)
	bne	a5,zero,.L5108
	ld	a5,16(s1)
.L5106:
	sd	a5,40(a4)
	sd	a4,16(s1)
	li	a5,1
	sb	a5,0(a4)
	li	a0,0
.L5116:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
.L5123:
	ld	a5,128(s1)
	beq	a5,zero,.L5125
.L5104:
	li	a5,1
	beq	a1,a5,.L5126
	sext.w	a2,a1
	li	a1,-1
	sb	a5,1(a4)
	sw	a2,80(a4)
	sb	a1,84(a4)
	sd	a3,128(a4)
	sd	s0,8(a4)
	sd	s1,32(a4)
	li	a5,0
	j	.L5109
.L5126:
	lw	a2,60(s1)
	li	a5,-1
	sb	a5,84(a4)
	snez	a5,a2
	sw	a5,80(a4)
	snez	a2,a2
	sd	a3,128(a4)
	sd	s0,8(a4)
	sd	s1,32(a4)
	sb	a1,1(a4)
	li	a5,0
	j	.L5109
.L5125:
	lw	a0,48(s1)
	sd	a4,24(sp)
	sd	a3,16(sp)
	sd	a1,8(sp)
	call	pcache1Alloc
	mv	a5,a0
	sd	a0,128(s1)
	li	a0,7
	beq	a5,zero,.L5116
	sb	zero,0(a5)
	sb	zero,1(a5)
	sb	zero,2(a5)
	sb	zero,3(a5)
	sb	zero,4(a5)
	sb	zero,5(a5)
	sb	zero,6(a5)
	sb	zero,7(a5)
	ld	a5,128(s1)
	ld	a1,8(sp)
	ld	a3,16(sp)
	addi	a5,a5,4
	ld	a4,24(sp)
	sd	a5,128(s1)
	j	.L5104
.L5124:
	lw	a2,60(s1)
	li	a5,-1
	sb	a5,84(a4)
	snez	a5,a2
	sw	a5,80(a4)
	snez	a2,a2
	j	.L5122
	.size	btreeCursor, .-btreeCursor
	.section	.text.renameWalkWith.isra.0.part.0,"ax",@progbits
	.align	1
	.type	renameWalkWith.isra.0.part.0, @function
renameWalkWith.isra.0.part.0:
	ld	a5,0(a1)
	lw	a4,0(a5)
	ble	a4,zero,.L5139
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	ra,120(sp)
	sd	s2,96(sp)
	mv	s4,a1
	mv	s3,a0
	li	s1,0
	addi	s5,sp,8
	addi	s0,sp,16
.L5130:
	addi	a4,s1,1
	slli	a4,a4,5
	add	a5,a5,a4
	ld	s2,0(a5)
	ld	a0,0(s3)
	mv	a2,s5
	mv	a1,s2
	sd	a0,8(sp)
	sd	zero,0(s0)
	sd	zero,8(s0)
	sd	zero,16(s0)
	sd	zero,24(s0)
	sd	zero,32(s0)
	sd	zero,40(s0)
	call	sqlite3SelectPrep
	addiw	s1,s1,1
	mv	a1,s2
	mv	a0,s3
	beq	s2,zero,.L5129
	ld	a5,16(s3)
	beq	a5,zero,.L5129
	call	sqlite3WalkSelect.part.0
.L5129:
	ld	a5,0(s4)
	lw	a4,0(a5)
	bgt	a4,s1,.L5130
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	addi	sp,sp,128
	jr	ra
.L5139:
	ret
	.size	renameWalkWith.isra.0.part.0, .-renameWalkWith.isra.0.part.0
	.section	.text.renameTableSelectCb,"ax",@progbits
	.align	1
	.type	renameTableSelectCb, @function
renameTableSelectCb:
	ld	a7,40(a1)
	beq	a7,zero,.L5151
	lw	t4,0(a7)
	sext.w	a5,t4
	ble	a5,zero,.L5150
	ld	t1,40(a0)
	li	a4,0
	j	.L5149
.L5146:
	addiw	a4,a4,1
	sext.w	a5,t4
	ble	a5,a4,.L5150
.L5149:
	slli	a5,a4,3
	sub	a5,a5,a4
	slli	a5,a5,4
	add	a5,a7,a5
	ld	a2,40(a5)
	ld	a3,16(t1)
	bne	a2,a3,.L5146
	ld	a6,0(a0)
	ld	t3,24(a5)
	ld	a5,400(a6)
	addi	a6,a6,400
	bne	a5,zero,.L5148
	j	.L5146
.L5147:
	addi	a6,a3,24
	beq	a5,zero,.L5146
.L5148:
	ld	a2,0(a5)
	mv	a3,a5
	ld	a5,24(a5)
	bne	t3,a2,.L5147
	sd	a5,0(a6)
	ld	a5,0(t1)
	addiw	a4,a4,1
	sd	a5,24(a3)
	lw	a5,8(t1)
	sd	a3,0(t1)
	addiw	a5,a5,1
	sw	a5,8(t1)
	lw	t4,0(a7)
	sext.w	a5,t4
	bgt	a5,a4,.L5149
.L5150:
	ld	a5,104(a1)
	beq	a5,zero,.L5160
	addi	sp,sp,-16
	addi	a1,a1,104
	sd	ra,8(sp)
	call	renameWalkWith.isra.0.part.0
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L5160:
	li	a0,0
	ret
.L5151:
	li	a0,2
	ret
	.size	renameTableSelectCb, .-renameTableSelectCb
	.section	.text.renameColumnSelectCb,"ax",@progbits
	.align	1
	.type	renameColumnSelectCb, @function
renameColumnSelectCb:
	ld	a5,104(a1)
	beq	a5,zero,.L5167
	addi	sp,sp,-16
	addi	a1,a1,104
	sd	ra,8(sp)
	call	renameWalkWith.isra.0.part.0
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L5167:
	li	a0,0
	ret
	.size	renameColumnSelectCb, .-renameColumnSelectCb
	.section	.text.releaseMemArray.part.0,"ax",@progbits
	.align	1
	.type	releaseMemArray.part.0, @function
releaseMemArray.part.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	ld	s3,40(a0)
	slli	s1,a1,3
	sub	s1,s1,a1
	ld	a5,664(s3)
	slli	s1,s1,3
	mv	s0,a0
	add	s1,a0,s1
	beq	a5,zero,.L5190
.L5173:
	lw	a5,32(s0)
	beq	a5,zero,.L5172
	ld	a1,24(s0)
	mv	a0,s3
	beq	a1,zero,.L5172
	call	sqlite3DbFreeNN
.L5172:
	addi	s0,s0,56
	bgtu	s1,s0,.L5173
.L5170:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L5190:
	li	s2,8192
	addi	s2,s2,1024
	li	s4,128
	j	.L5171
.L5175:
	lw	a5,32(s0)
	bne	a5,zero,.L5191
.L5176:
	sh	s4,8(s0)
	addi	s0,s0,56
	bleu	s1,s0,.L5170
.L5171:
	lhu	a5,8(s0)
	and	a5,s2,a5
	beq	a5,zero,.L5175
	mv	a0,s0
	call	vdbeMemClear
	j	.L5176
.L5191:
	ld	a1,24(s0)
	mv	a0,s3
	call	sqlite3DbFreeNN
	sw	zero,32(s0)
	j	.L5176
	.size	releaseMemArray.part.0, .-releaseMemArray.part.0
	.section	.text.sqlite3VdbeSetNumCols,"ax",@progbits
	.align	1
	.type	sqlite3VdbeSetNumCols, @function
sqlite3VdbeSetNumCols:
	addi	sp,sp,-48
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s4,0(sp)
	lhu	a5,184(a0)
	ld	s1,0(a0)
	mv	s2,a0
	mv	s3,a1
	beq	a5,zero,.L5194
	ld	a0,152(a0)
	beq	a0,zero,.L5194
	slliw	a1,a5,2
	addw	a1,a1,a5
	call	releaseMemArray.part.0
	ld	a1,152(s2)
	beq	a1,zero,.L5194
	mv	a0,s1
	call	sqlite3DbFreeNN
.L5194:
	slliw	s0,s3,2
	addw	s4,s0,s3
	slli	a1,s4,3
	sub	a1,a1,s4
	sh	s3,184(s2)
	slli	a1,a1,3
	mv	a0,s1
	call	sqlite3DbMallocRawNN
	sd	a0,152(s2)
	beq	a0,zero,.L5192
	ble	s4,zero,.L5192
	addiw	s0,s4,-1
	slli	a5,s0,32
	srli	a5,a5,32
	addi	s0,a5,1
	slli	a5,s0,3
	sub	a5,a5,s0
	slli	a5,a5,3
	add	a5,a0,a5
	li	a4,1
.L5197:
	sd	s1,40(a0)
	sh	a4,8(a0)
	sw	zero,32(a0)
	addi	a0,a0,56
	bne	a5,a0,.L5197
.L5192:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3VdbeSetNumCols, .-sqlite3VdbeSetNumCols
	.section	.text.sqlite3VdbeClearObject,"ax",@progbits
	.align	1
	.type	sqlite3VdbeClearObject, @function
sqlite3VdbeClearObject:
	addi	sp,sp,-48
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	ld	a5,152(a1)
	mv	s3,a1
	mv	s2,a0
	beq	a5,zero,.L5210
	lhu	a4,184(a1)
	slliw	a1,a4,2
	addw	a1,a1,a4
	bne	a1,zero,.L5246
.L5210:
	ld	s0,272(s3)
	beq	s0,zero,.L5211
.L5212:
	ld	a1,0(s0)
	lw	a2,8(s0)
	mv	s1,s0
	mv	a0,s2
	ld	s0,40(s0)
	call	vdbeFreeOpArray
	mv	a1,s1
	mv	a0,s2
	call	sqlite3DbFreeNN
	bne	s0,zero,.L5212
.L5211:
	lw	a4,36(s3)
	li	a5,381480960
	addi	a5,a5,-1371
	beq	a4,a5,.L5214
	ld	a0,128(s3)
	beq	a0,zero,.L5215
	lh	a1,32(s3)
	beq	a1,zero,.L5215
	call	releaseMemArray.part.0
.L5215:
	ld	a1,176(s3)
	beq	a1,zero,.L5216
	mv	a0,s2
	call	sqlite3DbFreeNN
.L5216:
	ld	a1,240(s3)
	beq	a1,zero,.L5214
	mv	a0,s2
	call	sqlite3DbFreeNN
.L5214:
	ld	a1,136(s3)
	lw	a2,144(s3)
	mv	a0,s2
	call	vdbeFreeOpArray
	ld	a1,152(s3)
	beq	a1,zero,.L5218
	mv	a0,s2
	call	sqlite3DbFreeNN
.L5218:
	ld	a1,232(s3)
	beq	a1,zero,.L5209
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s3,8(sp)
	mv	a0,s2
	ld	s2,16(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
.L5246:
	mv	a0,a5
	call	releaseMemArray.part.0
	j	.L5210
.L5209:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3VdbeClearObject, .-sqlite3VdbeClearObject
	.section	.text.sqlite3VdbeDelete,"ax",@progbits
	.align	1
	.type	sqlite3VdbeDelete, @function
sqlite3VdbeDelete:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	s1,0(a0)
	mv	s0,a0
	mv	a1,a0
	mv	a0,s1
	call	sqlite3VdbeClearObject
	ld	a5,8(s0)
	beq	a5,zero,.L5248
	ld	a4,16(s0)
	sd	a4,16(a5)
.L5249:
	ld	a5,16(s0)
	beq	a5,zero,.L5250
	ld	a4,8(s0)
	sd	a4,8(a5)
.L5250:
	li	a5,1443282944
	addi	a5,a5,968
	sw	a5,36(s0)
	sd	zero,0(s0)
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
.L5248:
	ld	a5,16(s0)
	sd	a5,8(s1)
	j	.L5249
	.size	sqlite3VdbeDelete, .-sqlite3VdbeDelete
	.section	.text.sqlite3_stmt_status,"ax",@progbits
	.align	1
	.globl	sqlite3_stmt_status
	.type	sqlite3_stmt_status, @function
sqlite3_stmt_status:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	li	a5,99
	mv	s0,a0
	beq	a1,a5,.L5262
	slli	a1,a1,2
	add	s0,a0,a1
	lw	a0,200(s0)
	beq	a2,zero,.L5257
	sw	zero,200(s0)
.L5257:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L5262:
	ld	s1,0(a0)
	addi	a5,sp,12
	mv	a1,a0
	sd	a5,664(s1)
	mv	a0,s1
	sw	zero,12(sp)
	call	sqlite3VdbeClearObject
	mv	a0,s1
	mv	a1,s0
	call	sqlite3DbFreeNN
	sd	zero,664(s1)
	ld	ra,40(sp)
	ld	s0,32(sp)
	lw	a0,12(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_stmt_status, .-sqlite3_stmt_status
	.section	.text.sqlite3VdbeAppendP4,"ax",@progbits
	.align	1
	.type	sqlite3VdbeAppendP4, @function
sqlite3VdbeAppendP4:
	mv	a4,a0
	ld	a0,0(a0)
	mv	a3,a2
	lbu	a5,97(a0)
	bne	a5,zero,.L5265
	lw	a2,144(a4)
	ld	a4,136(a4)
	slli	a5,a2,1
	add	a5,a5,a2
	slli	a5,a5,3
	addi	a5,a5,-24
	add	a5,a4,a5
	sb	a3,1(a5)
	sd	a1,16(a5)
	ret
.L5265:
	mv	a2,a1
	mv	a1,a3
	tail	freeP4
	.size	sqlite3VdbeAppendP4, .-sqlite3VdbeAppendP4
	.section	.text.sqlite3VdbeChangeToNoop.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeChangeToNoop.isra.0, @function
sqlite3VdbeChangeToNoop.isra.0:
	lbu	a5,97(a0)
	beq	a5,zero,.L5273
	li	a0,0
	ret
.L5273:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	ld	s0,0(a1)
	slli	a5,a2,1
	add	a2,a5,a2
	slli	a2,a2,3
	add	s0,s0,a2
	ld	a2,16(s0)
	lb	a1,1(s0)
	call	freeP4
	li	a5,170
	sd	zero,16(s0)
	sh	a5,0(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
	.size	sqlite3VdbeChangeToNoop.isra.0, .-sqlite3VdbeChangeToNoop.isra.0
	.section	.text.columnMem,"ax",@progbits
	.align	1
	.type	columnMem, @function
columnMem:
	beq	a0,zero,.L5277
	ld	a5,160(a0)
	beq	a5,zero,.L5276
	lhu	a4,184(a0)
	bleu	a4,a1,.L5276
	slli	a0,a1,3
	sub	a0,a0,a1
	slli	a0,a0,3
	add	a0,a5,a0
	ret
.L5276:
	addi	sp,sp,-16
	sd	ra,8(sp)
	ld	a0,0(a0)
	li	a5,25
	li	a1,25
	sw	a5,80(a0)
	call	sqlite3ErrorFinish
	ld	ra,8(sp)
	lla	a0,.LANCHOR4-1192
	addi	sp,sp,16
	jr	ra
.L5277:
	lla	a0,.LANCHOR4-1192
	ret
	.size	columnMem, .-columnMem
	.section	.text.sqlite3_str_finish,"ax",@progbits
	.align	1
	.globl	sqlite3_str_finish
	.type	sqlite3_str_finish, @function
sqlite3_str_finish:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	beq	a0,zero,.L5286
	lla	a5,.LANCHOR1+432
	mv	s0,a0
	li	s1,0
	beq	a0,a5,.L5284
	call	sqlite3StrAccumFinish
	mv	s1,a0
	mv	a0,s0
	call	sqlite3_free@plt
.L5284:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L5286:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,0
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_str_finish, .-sqlite3_str_finish
	.section	.text.memdbRead,"ax",@progbits
	.align	1
	.type	memdbRead, @function
memdbRead:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	mv	s1,a0
	ld	a0,8(a0)
	add	a4,a2,a3
	mv	s0,a3
	mv	a5,a1
	bgt	a4,a0,.L5294
	ld	a1,32(s1)
	mv	a0,a5
	li	s2,0
	add	a1,a1,a3
	call	memcpy@plt
.L5291:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L5294:
	li	a1,0
	mv	a0,a5
	call	memset@plt
	ld	a2,8(s1)
	li	s2,522
	bge	s0,a2,.L5291
	ld	a1,32(s1)
	sub	a2,a2,s0
	add	a1,a1,s0
	call	memcpy@plt
	j	.L5291
	.size	memdbRead, .-memdbRead
	.section	.text.walWriteOneFrame.isra.0,"ax",@progbits
	.align	1
	.type	walWriteOneFrame.isra.0, @function
walWriteOneFrame.isra.0:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	mv	s0,a0
	ld	a0,0(a0)
	mv	s1,a1
	addi	s3,sp,8
	mv	a1,a2
	mv	s2,a4
	mv	a2,a3
	mv	a4,s3
	mv	a3,s1
	call	walEncodeFrame
	mv	a3,s2
	li	a2,24
	mv	a1,s3
	mv	a0,s0
	call	walWriteToLog
	bne	a0,zero,.L5296
	lw	a2,28(s0)
	addi	a3,s2,24
	mv	a1,s1
	mv	a0,s0
	call	walWriteToLog
.L5296:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	addi	sp,sp,80
	jr	ra
	.size	walWriteOneFrame.isra.0, .-walWriteOneFrame.isra.0
	.section	.text.sqlite3CollapseDatabaseArray,"ax",@progbits
	.align	1
	.type	sqlite3CollapseDatabaseArray, @function
sqlite3CollapseDatabaseArray:
	addi	sp,sp,-48
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	lw	a3,40(a0)
	li	a5,2
	mv	s3,a0
	sext.w	a4,a3
	ble	a4,a5,.L5299
	li	s2,2
	li	s1,2
.L5304:
	ld	a5,32(s3)
	slli	s0,s1,5
	slli	a4,s2,5
	add	s0,a5,s0
	add	a5,a5,a4
	ld	a4,8(s0)
	beq	a4,zero,.L5315
	bge	s2,s1,.L5303
	ld	a3,24(s0)
	ld	a1,0(s0)
	ld	a2,16(s0)
	sd	a4,8(a5)
	sd	a1,0(a5)
	sd	a2,16(a5)
	sd	a3,24(a5)
	lw	a3,40(s3)
.L5303:
	addiw	s2,s2,1
.L5302:
	addiw	s1,s1,1
	sext.w	a5,a3
	bgt	a5,s1,.L5304
	sw	s2,40(s3)
	li	a5,2
	ble	s2,a5,.L5306
.L5298:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L5315:
	ld	a1,0(s0)
	mv	a0,s3
	beq	a1,zero,.L5301
	call	sqlite3DbFreeNN
.L5301:
	sd	zero,0(s0)
	lw	a3,40(s3)
	j	.L5302
.L5299:
	sw	a5,40(a0)
.L5306:
	ld	s1,32(s3)
	addi	s0,s3,560
	beq	s1,s0,.L5298
	mv	a1,s1
	li	a2,64
	mv	a0,s0
	call	memcpy@plt
	mv	a1,s1
	mv	a0,s3
	call	sqlite3DbFreeNN
	sd	s0,32(s3)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3CollapseDatabaseArray, .-sqlite3CollapseDatabaseArray
	.section	.text.sqlite3SrcListIndexedBy.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3SrcListIndexedBy.isra.0, @function
sqlite3SrcListIndexedBy.isra.0:
	beq	a1,zero,.L5326
	lw	a5,8(a2)
	beq	a5,zero,.L5326
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lw	s1,0(a1)
	li	a4,1
	mv	s0,a1
	addiw	s1,s1,-1
	bne	a5,a4,.L5318
	ld	a5,0(a2)
	bne	a5,zero,.L5318
	slli	a1,s1,3
	sub	a1,a1,s1
	slli	a1,a1,4
	add	s0,s0,a1
	lbu	a5,69(s0)
	ori	a5,a5,1
	sb	a5,69(s0)
	j	.L5316
.L5326:
	ret
.L5318:
	ld	a0,0(a0)
	mv	a1,a2
	call	sqlite3NameFromToken
	slli	a1,s1,3
	sub	a1,a1,s1
	slli	a1,a1,4
	add	s0,s0,a1
	lbu	a5,69(s0)
	sd	a0,104(s0)
	ori	a5,a5,2
	sb	a5,69(s0)
.L5316:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3SrcListIndexedBy.isra.0, .-sqlite3SrcListIndexedBy.isra.0
	.section	.text.sqlite3ExprListSetName.part.0,"ax",@progbits
	.align	1
	.type	sqlite3ExprListSetName.part.0, @function
sqlite3ExprListSetName.part.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	mv	s3,a2
	lw	a5,0(a1)
	mv	s0,a1
	lwu	a2,8(a2)
	ld	a1,0(s3)
	mv	s2,a0
	ld	a0,0(a0)
	addiw	s1,a5,-1
	mv	s4,a3
	call	sqlite3DbStrNDup
	slli	a5,s1,5
	add	s0,s0,a5
	sd	a0,16(s0)
	bne	s4,zero,.L5336
.L5330:
	lbu	a4,276(s2)
	li	a5,1
	bgtu	a4,a5,.L5337
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L5337:
	ld	a2,16(s0)
	ld	s0,32(sp)
	ld	a0,0(s2)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s4,0(sp)
	mv	a3,s3
	addi	a1,s2,400
	ld	s3,8(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	tail	sqlite3RenameTokenMap.isra.0
.L5336:
	call	sqlite3Dequote
	j	.L5330
	.size	sqlite3ExprListSetName.part.0, .-sqlite3ExprListSetName.part.0
	.section	.text.sqlite3VdbeMemShallowCopy,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemShallowCopy, @function
sqlite3VdbeMemShallowCopy:
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L5343
	addi	sp,sp,-32
	sd	s2,0(sp)
	mv	s2,a2
	li	a2,24
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a1
	mv	s0,a0
	call	memcpy@plt
	lhu	a5,8(s1)
	slli	a4,a5,52
	blt	a4,zero,.L5338
	lhu	a2,8(s0)
	li	a5,-8192
	addi	a5,a5,1023
	and	a2,a2,a5
	or	a2,a2,s2
	sh	a2,8(s0)
.L5338:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L5343:
	tail	vdbeClrCopy
	.size	sqlite3VdbeMemShallowCopy, .-sqlite3VdbeMemShallowCopy
	.section	.text.vdbeClrCopy,"ax",@progbits
	.align	1
	.type	vdbeClrCopy, @function
vdbeClrCopy:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s0,a0
	mv	s1,a1
	mv	s2,a2
	call	vdbeMemClearExternAndSetNull
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a2,s2
	mv	a1,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3VdbeMemShallowCopy
	.size	vdbeClrCopy, .-vdbeClrCopy
	.section	.text.sqlite3VdbeRecordUnpack.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeRecordUnpack.isra.0, @function
sqlite3VdbeRecordUnpack.isra.0:
	addi	sp,sp,-112
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s10,16(sp)
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s6,48(sp)
	sd	s7,40(sp)
	sd	s8,32(sp)
	sd	s9,24(sp)
	sb	zero,18(a4)
	lbu	s8,0(a3)
	ld	s0,8(a4)
	mv	s3,a4
	slliw	a5,s8,24
	sraiw	a5,a5,24
	mv	s2,a3
	mv	s4,a0
	mv	s5,a1
	mv	s10,a2
	blt	a5,zero,.L5347
	sext.w	s8,s8
	sw	s8,8(sp)
	li	s9,1
.L5348:
	li	s1,0
	bleu	s8,s9,.L5350
	sext.w	s6,s10
	li	s1,0
	addi	s7,sp,12
	bleu	s8,s10,.L5356
	j	.L5350
.L5364:
	sw	a1,12(sp)
.L5352:
	lbu	a4,0(s4)
	slli	a0,s8,32
	srli	a0,a0,32
	sb	a4,10(s0)
	ld	a4,0(s5)
	mv	a2,s0
	sw	zero,32(s0)
	sd	a4,40(s0)
	sd	zero,16(s0)
	add	a0,s2,a0
	addw	s9,a5,s9
	call	sqlite3VdbeSerialGet
	addiw	s1,s1,1
	lhu	a5,16(s3)
	slli	s1,s1,48
	srli	s1,s1,48
	addw	s8,a0,s8
	addi	a4,s0,56
	bleu	a5,s1,.L5355
	lw	a5,8(sp)
	bleu	a5,s9,.L5355
	bgtu	s8,s6,.L5358
	mv	s0,a4
.L5356:
	slli	a0,s9,32
	srli	a0,a0,32
	add	a0,s2,a0
	lbu	a1,0(a0)
	li	a5,1
	slliw	a4,a1,24
	sraiw	a4,a4,24
	sext.w	a1,a1
	bge	a4,zero,.L5364
	mv	a1,s7
	call	sqlite3GetVarint32
	lw	a1,12(sp)
	sext.w	a5,a0
	j	.L5352
.L5355:
	bleu	s8,s6,.L5350
.L5358:
	beq	s1,zero,.L5350
	lhu	a3,-48(a4)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a3
	bne	a5,zero,.L5365
	li	a5,1
	sh	a5,-48(a4)
.L5350:
	sh	s1,16(s3)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	ld	s10,16(sp)
	addi	sp,sp,112
	jr	ra
.L5347:
	addi	a1,sp,8
	mv	a0,a3
	call	sqlite3GetVarint32
	sext.w	s9,a0
	lw	s8,8(sp)
	j	.L5348
.L5365:
	mv	a0,s0
	call	vdbeMemClearExternAndSetNull
	j	.L5350
	.size	sqlite3VdbeRecordUnpack.isra.0, .-sqlite3VdbeRecordUnpack.isra.0
	.section	.text.resizeIndexObject.part.0,"ax",@progbits
	.align	1
	.type	resizeIndexObject.part.0, @function
resizeIndexObject.part.0:
	slliw	a5,a2,1
	addw	a5,a5,a2
	addi	sp,sp,-32
	slliw	a5,a5,2
	sd	s0,16(sp)
	mv	s0,a1
	subw	a1,a5,a2
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	mv	s1,a2
	call	sqlite3DbMallocZero
	beq	a0,zero,.L5368
	lhu	a2,96(s0)
	ld	a1,64(s0)
	mv	s2,a0
	slli	a2,a2,3
	call	memcpy@plt
	lhu	a2,96(s0)
	ld	a1,8(s0)
	slli	a5,s1,3
	add	a5,s2,a5
	sd	s2,64(s0)
	mv	a0,a5
	slli	a2,a2,1
	call	memcpy@plt
	lhu	a2,96(s0)
	ld	a1,56(s0)
	slli	a4,s1,1
	add	a4,a0,a4
	sd	a0,8(s0)
	mv	a0,a4
	call	memcpy@plt
	lbu	a5,99(s0)
	sd	a0,56(s0)
	sh	s1,96(s0)
	ori	a5,a5,16
	sb	a5,99(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L5368:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,7
	addi	sp,sp,32
	jr	ra
	.size	resizeIndexObject.part.0, .-resizeIndexObject.part.0
	.section	.text.whereLoopResize.part.0,"ax",@progbits
	.align	1
	.type	whereLoopResize.part.0, @function
whereLoopResize.part.0:
	addi	sp,sp,-48
	sd	s1,24(sp)
	addiw	s1,a2,7
	andi	s1,s1,-8
	sd	s0,32(sp)
	mv	s0,a1
	slli	a1,s1,3
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	mv	s3,a0
	call	sqlite3DbMallocRawNN
	beq	a0,zero,.L5373
	lhu	a2,48(s0)
	ld	a1,56(s0)
	mv	s2,a0
	slli	a2,a2,3
	call	memcpy@plt
	ld	a1,56(s0)
	addi	a5,s0,72
	beq	a1,a5,.L5372
	mv	a0,s3
	call	sqlite3DbFreeNN
.L5372:
	sd	s2,56(s0)
	sh	s1,48(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L5373:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,7
	addi	sp,sp,48
	jr	ra
	.size	whereLoopResize.part.0, .-whereLoopResize.part.0
	.section	.text.whereLoopInsert,"ax",@progbits
	.align	1
	.type	whereLoopInsert, @function
whereLoopInsert:
	lw	a5,44(a0)
	ld	a4,32(a0)
	beq	a5,zero,.L5432
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	ld	s2,0(a0)
	addiw	a5,a5,-1
	mv	s1,a1
	ld	a3,0(s2)
	ld	s3,0(a3)
	sw	a5,44(a0)
	beq	a4,zero,.L5378
	lhu	a5,44(a1)
	bne	a5,zero,.L5379
.L5431:
	li	a0,0
.L5377:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L5378:
	lw	a5,40(a1)
	andi	a5,a5,512
	beq	a5,zero,.L5383
	ld	s0,80(s2)
	beq	s0,zero,.L5383
	lbu	s4,16(a1)
	j	.L5386
.L5433:
	lh	a5,20(s0)
	sh	a5,20(s1)
	lhu	a5,22(s0)
	addiw	a5,a5,-1
	sh	a5,22(s1)
.L5384:
	ld	s0,64(s0)
	beq	s0,zero,.L5383
.L5386:
	lbu	a5,16(s0)
	bne	a5,s4,.L5384
	lw	a5,40(s0)
	mv	a1,s1
	mv	a0,s0
	andi	a5,a5,512
	beq	a5,zero,.L5384
	call	whereLoopCheaperProperSubset
	mv	a5,a0
	mv	a1,s0
	mv	a0,s1
	bne	a5,zero,.L5433
	call	whereLoopCheaperProperSubset
	beq	a0,zero,.L5384
	lh	a5,20(s0)
	sh	a5,20(s1)
	lhu	a5,22(s0)
	addiw	a5,a5,1
	sh	a5,22(s1)
	ld	s0,64(s0)
	bne	s0,zero,.L5386
.L5383:
	mv	a1,s1
	addi	a0,s2,80
	call	whereLoopFindLesser
	mv	s0,a0
	beq	a0,zero,.L5431
	ld	s4,0(a0)
	beq	s4,zero,.L5434
	ld	a5,64(s4)
	addi	s0,s4,64
	bne	a5,zero,.L5389
	j	.L5388
.L5435:
	ld	s2,0(s0)
	mv	a1,s2
	beq	s2,zero,.L5388
	ld	a5,64(s2)
	sd	a5,0(s0)
	call	whereLoopClear
	mv	a1,s2
	mv	a0,s3
	call	sqlite3DbFreeNN
	ld	a5,0(s0)
	beq	a5,zero,.L5388
.L5389:
	mv	a0,s0
	mv	a1,s1
	call	whereLoopFindLesser
	mv	s0,a0
	mv	a0,s3
	bne	s0,zero,.L5435
.L5388:
	mv	a1,s4
	mv	a0,s3
	call	whereLoopClearUnion
	lhu	a2,44(s1)
	lhu	a5,48(s4)
	bge	a5,a2,.L5390
	mv	a1,s4
	mv	a0,s3
	call	whereLoopResize.part.0
	bne	a0,zero,.L5436
.L5390:
	li	a2,48
	mv	a1,s1
	mv	a0,s4
	call	memcpy@plt
	lhu	a2,44(s4)
	ld	a1,56(s1)
	ld	a0,56(s4)
	slli	a2,a2,3
	call	memcpy@plt
	lw	a5,40(s1)
	andi	a4,a5,1024
	beq	a4,zero,.L5392
	sb	zero,28(s1)
	li	a0,0
.L5391:
	lw	a5,40(s4)
	andi	a5,a5,1024
	bne	a5,zero,.L5377
	ld	a5,32(s4)
	beq	a5,zero,.L5377
	lbu	a5,99(a5)
	li	a4,3
	andi	a5,a5,3
	bne	a5,a4,.L5377
	sd	zero,32(s4)
	j	.L5377
.L5432:
	li	a0,101
	beq	a4,zero,.L5429
	sh	zero,0(a4)
	ret
.L5429:
	ret
.L5379:
	lh	a3,22(a1)
	lh	a2,20(a1)
	ld	a1,0(a1)
	mv	a0,a4
	call	whereOrInsert
	j	.L5431
.L5392:
	slli	a4,a5,49
	li	a0,0
	bge	a4,zero,.L5391
	sd	zero,32(s1)
	j	.L5391
.L5434:
	li	a1,96
	mv	a0,s3
	call	sqlite3DbMallocRawNN
	sd	a0,0(s0)
	mv	s4,a0
	beq	a0,zero,.L5394
	addi	a5,a0,72
	sd	a5,56(a0)
	li	a5,3
	sh	zero,44(a0)
	sh	a5,48(a0)
	sw	zero,40(a0)
	sd	zero,64(a0)
	j	.L5388
.L5436:
	li	a2,16
	li	a1,0
	addi	a0,s4,24
	call	memset@plt
	li	a0,7
	j	.L5391
.L5394:
	li	a0,7
	j	.L5377
	.size	whereLoopInsert, .-whereLoopInsert
	.section	.text.exprINAffinity.isra.0,"ax",@progbits
	.align	1
	.type	exprINAffinity.isra.0, @function
exprINAffinity.isra.0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	ld	s5,16(a1)
	li	a3,168
	mv	a5,a1
	lbu	a4,0(s5)
	bne	a4,a3,.L5438
	lbu	a4,54(s5)
.L5438:
	li	a3,169
	beq	a4,a3,.L5457
	li	a3,131
	li	a1,2
	li	s3,1
	bne	a4,a3,.L5440
	ld	a4,32(s5)
	ld	a4,0(a4)
	lw	s3,0(a4)
	addiw	a1,s3,1
.L5440:
	lw	a4,4(a5)
	li	s4,0
	slli	a3,a4,52
	bge	a3,zero,.L5441
	ld	s4,32(a5)
.L5441:
	call	sqlite3DbMallocRaw
	mv	s2,a0
	beq	a0,zero,.L5437
	li	s1,0
	li	s0,0
	bgt	s3,zero,.L5443
	j	.L5446
.L5458:
	ld	a5,0(s4)
	add	s0,a5,s0
	ld	a0,8(s0)
	call	sqlite3CompareAffinity
	add	a5,s2,s1
	addi	s1,s1,1
	sb	a0,0(a5)
	sext.w	s0,s1
	ble	s3,s0,.L5446
.L5443:
	mv	a1,s0
	mv	a0,s5
	call	sqlite3VectorFieldSubexpr
	call	sqlite3ExprAffinity
	slli	s0,s0,5
	add	a5,s2,s1
	mv	a1,a0
	bne	s4,zero,.L5458
	addi	s1,s1,1
	sb	a0,0(a5)
	sext.w	s0,s1
	bgt	s3,s0,.L5443
.L5446:
	add	s3,s2,s3
	sb	zero,0(s3)
.L5437:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	jr	ra
.L5457:
	ld	a4,32(s5)
	lw	s3,0(a4)
	addiw	a1,s3,1
	j	.L5440
	.size	exprINAffinity.isra.0, .-exprINAffinity.isra.0
	.section	.text.termCanDriveIndex,"ax",@progbits
	.align	1
	.type	termCanDriveIndex, @function
termCanDriveIndex:
	lw	a3,28(a0)
	lw	a4,64(a1)
	bne	a3,a4,.L5463
	lhu	a3,20(a0)
	mv	a5,a0
	li	a0,0
	andi	a4,a3,130
	beq	a4,zero,.L5474
	lbu	a4,60(a1)
	andi	a4,a4,8
	beq	a4,zero,.L5461
	ld	a4,0(a5)
	lw	a4,4(a4)
	andi	a4,a4,1
	bne	a4,zero,.L5461
	andi	a3,a3,128
	bne	a3,zero,.L5474
.L5461:
	ld	a4,48(a5)
	li	a0,0
	and	a2,a2,a4
	bne	a2,zero,.L5474
	lw	a4,40(a5)
	blt	a4,zero,.L5474
	ld	a3,32(a1)
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	ld	a0,0(a5)
	ld	a5,8(a3)
	slli	a4,a4,5
	add	a4,a5,a4
	lbu	s0,25(a4)
	call	comparisonAffinity
	mv	a5,a0
	li	a4,65
	li	a0,1
	beq	a5,a4,.L5460
	li	a4,66
	sgtu	a0,s0,a4
	bne	a5,a4,.L5460
	addi	a0,s0,-66
	seqz	a0,a0
.L5460:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L5463:
	li	a0,0
	ret
.L5474:
	ret
	.size	termCanDriveIndex, .-termCanDriveIndex
	.section	.text.sqlite3_transfer_bindings,"ax",@progbits
	.align	1
	.globl	sqlite3_transfer_bindings
	.type	sqlite3_transfer_bindings, @function
sqlite3_transfer_bindings:
	lh	a4,32(a1)
	lh	a5,32(a0)
	bne	a4,a5,.L5483
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	lw	a4,268(a1)
	mv	s1,a0
	mv	s3,a1
	beq	a4,zero,.L5479
	lbu	a5,189(a1)
	andi	a5,a5,-4
	ori	a5,a5,1
	sb	a5,189(a1)
	lh	a5,32(a0)
.L5479:
	lw	a4,268(s1)
	beq	a4,zero,.L5480
	lbu	a4,189(s1)
	andi	a4,a4,-4
	ori	a4,a4,1
	sb	a4,189(s1)
.L5480:
	li	s0,0
	li	s2,0
	ble	a5,zero,.L5482
.L5481:
	ld	a1,128(s1)
	ld	a0,128(s3)
	addiw	s2,s2,1
	add	a1,a1,s0
	add	a0,a0,s0
	call	sqlite3VdbeMemMove
	lh	a5,32(s1)
	addi	s0,s0,56
	bgt	a5,s2,.L5481
.L5482:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L5483:
	li	a0,1
	ret
	.size	sqlite3_transfer_bindings, .-sqlite3_transfer_bindings
	.section	.text.vdbePmaReadBlob.part.0,"ax",@progbits
	.align	1
	.type	vdbePmaReadBlob.part.0, @function
vdbePmaReadBlob.part.0:
	addi	sp,sp,-96
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s6,32(sp)
	sd	ra,88(sp)
	sd	s2,64(sp)
	sd	s5,40(sp)
	sd	s7,24(sp)
	ld	a3,0(a0)
	lw	s5,56(a0)
	mv	s0,a0
	mv	s3,a1
	rem	s6,a3,s5
	mv	s4,a2
	sext.w	s1,s6
	bne	s6,zero,.L5498
	ld	a5,8(a0)
	sub	a4,a5,a3
	bge	s5,a4,.L5518
.L5499:
	ld	a0,24(s0)
	ld	a1,48(s0)
	mv	a2,s5
	ld	a5,0(a0)
	ld	a5,16(a5)
	jalr	a5
	bne	a0,zero,.L5500
	lw	s5,56(s0)
.L5498:
	subw	s7,s5,s1
	blt	s7,s3,.L5501
	ld	a5,48(s0)
	li	a0,0
	add	s6,a5,s6
	sd	s6,0(s4)
	ld	a1,0(s0)
	add	s3,a1,s3
	sd	s3,0(s0)
.L5500:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	addi	sp,sp,96
	jr	ra
.L5501:
	lw	s2,16(s0)
	ld	a0,32(s0)
	ble	s3,s2,.L5502
	slli	s2,s2,1
	li	a5,128
	blt	s2,a5,.L5519
.L5517:
	bge	s2,s3,.L5520
.L5505:
	slli	s2,s2,1
	blt	s2,s3,.L5505
.L5520:
	mv	a1,s2
	call	sqlite3Realloc
	beq	a0,zero,.L5512
	sw	s2,16(s0)
	sd	a0,32(s0)
.L5502:
	ld	a1,48(s0)
	mv	a2,s7
	addw	s1,s1,s3
	add	a1,a1,s6
	call	memcpy@plt
	ld	a2,0(s0)
	subw	s1,s1,s5
	addi	s5,sp,8
	add	a2,a2,s7
	sd	a2,0(s0)
	ble	s1,zero,.L5511
.L5506:
	lw	s2,56(s0)
	mv	a2,s5
	mv	a0,s0
	ble	s2,s1,.L5507
	mv	s2,s1
.L5507:
	ld	a5,64(s0)
	mv	a1,s2
	beq	a5,zero,.L5508
	ld	a4,0(s0)
	add	a1,a5,a4
	add	a4,s2,a4
	sd	a1,8(sp)
	sd	a4,0(s0)
.L5509:
	ld	a0,32(s0)
	subw	a5,s3,s1
	mv	a2,s2
	subw	s1,s1,s2
	add	a0,a0,a5
	call	memcpy@plt
	bgt	s1,zero,.L5506
.L5511:
	ld	a5,32(s0)
	li	a0,0
	sd	a5,0(s4)
	j	.L5500
.L5518:
	subw	s5,a5,a3
	j	.L5499
.L5508:
	call	vdbePmaReadBlob.part.0
	bne	a0,zero,.L5500
	ld	a1,8(sp)
	j	.L5509
.L5519:
	li	s2,128
	j	.L5517
.L5512:
	li	a0,7
	j	.L5500
	.size	vdbePmaReadBlob.part.0, .-vdbePmaReadBlob.part.0
	.section	.text.vdbePmaReadVarint,"ax",@progbits
	.align	1
	.type	vdbePmaReadVarint, @function
vdbePmaReadVarint:
	addi	sp,sp,-80
	sd	s1,56(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	ld	a5,64(a0)
	mv	s1,a0
	ld	a0,0(a0)
	beq	a5,zero,.L5522
.L5533:
	add	a0,a5,a0
	call	sqlite3GetVarint
	ld	a5,0(s1)
	mv	a4,a0
	li	a0,0
	add	a5,a5,a4
	sd	a5,0(s1)
.L5523:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	addi	sp,sp,80
	jr	ra
.L5522:
	lw	a4,56(s1)
	mv	s2,a1
	rem	a0,a0,a4
	beq	a0,zero,.L5530
	subw	a4,a4,a0
	li	a3,8
	li	s0,0
	bgt	a4,a3,.L5534
.L5524:
	addi	s3,sp,8
	j	.L5529
.L5535:
	ld	a4,0(s1)
	add	a5,a5,a4
	addi	a4,a4,1
	sd	a5,8(sp)
	sd	a4,0(s1)
.L5526:
	lbu	a5,0(a5)
	andi	a4,s0,15
	addi	a3,sp,32
	add	a4,a3,a4
	sb	a5,-16(a4)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addiw	s0,s0,1
	bge	a5,zero,.L5528
	ld	a5,64(s1)
.L5529:
	mv	a2,s3
	li	a1,1
	mv	a0,s1
	bne	a5,zero,.L5535
	call	vdbePmaReadBlob.part.0
	bne	a0,zero,.L5523
	ld	a5,8(sp)
	j	.L5526
.L5528:
	mv	a1,s2
	addi	a0,sp,16
	call	sqlite3GetVarint
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	li	a0,0
	addi	sp,sp,80
	jr	ra
.L5530:
	li	s0,0
	j	.L5524
.L5534:
	ld	a5,48(s1)
	j	.L5533
	.size	vdbePmaReadVarint, .-vdbePmaReadVarint
	.section	.text.sqlite3VdbeChangeP4,"ax",@progbits
	.align	1
	.type	sqlite3VdbeChangeP4, @function
sqlite3VdbeChangeP4:
	ld	a5,0(a0)
	mv	a4,a2
	lbu	a6,97(a5)
	bne	a6,zero,.L5548
	blt	a1,zero,.L5549
	ld	a2,136(a0)
	slli	a5,a1,1
	add	a1,a5,a1
	slli	a1,a1,3
	add	a1,a2,a1
	bge	a3,zero,.L5541
.L5551:
	lbu	a5,1(a1)
	bne	a5,zero,.L5541
	li	a5,-3
	beq	a3,a5,.L5550
	beq	a4,zero,.L5536
	sd	a4,16(a1)
	sb	a3,1(a1)
	li	a5,-12
	bne	a3,a5,.L5536
	lw	a5,24(a4)
	addiw	a5,a5,1
	sw	a5,24(a4)
.L5536:
	ret
.L5549:
	lw	a5,144(a0)
	ld	a2,136(a0)
	addiw	a1,a5,-1
	slli	a5,a1,1
	add	a1,a5,a1
	slli	a1,a1,3
	add	a1,a2,a1
	blt	a3,zero,.L5551
.L5541:
	mv	a2,a4
	tail	vdbeChangeP4Full
.L5548:
	li	a4,-12
	beq	a3,a4,.L5536
	mv	a1,a3
	mv	a0,a5
	tail	freeP4
.L5550:
	sw	a4,16(a1)
	sb	a3,1(a1)
	ret
	.size	sqlite3VdbeChangeP4, .-sqlite3VdbeChangeP4
	.section	.text.vdbeChangeP4Full,"ax",@progbits
	.align	1
	.type	vdbeChangeP4Full, @function
vdbeChangeP4Full:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s1,a1
	lb	a1,1(a1)
	mv	s3,a0
	mv	s2,a2
	mv	s0,a3
	bne	a1,zero,.L5562
	blt	s0,zero,.L5563
.L5554:
	mv	a2,s0
	bne	s0,zero,.L5556
	beq	s2,zero,.L5557
	mv	a0,s2
	call	strlen@plt
	slli	s0,a0,34
	srli	a2,s0,34
.L5556:
	ld	a0,0(s3)
	mv	a1,s2
	call	sqlite3DbStrNDup
	li	a5,-7
	sd	a0,16(s1)
	sb	a5,1(s1)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L5562:
	ld	a2,16(s1)
	ld	a0,0(a0)
	call	freeP4
	sb	zero,1(s1)
	sd	zero,16(s1)
	bge	s0,zero,.L5554
.L5563:
	ld	a1,136(s3)
	mv	a3,s0
	ld	s0,32(sp)
	sub	s1,s1,a1
	srai	s1,s1,3
	ld	a1,.LC34
	mulw	a1,s1,a1
	ld	ra,40(sp)
	ld	s1,24(sp)
	mv	a2,s2
	mv	a0,s3
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	tail	sqlite3VdbeChangeP4
.L5557:
	li	a2,0
	j	.L5556
	.size	vdbeChangeP4Full, .-vdbeChangeP4Full
	.section	.text.sqlite3DecOrHexToI64,"ax",@progbits
	.align	1
	.type	sqlite3DecOrHexToI64, @function
sqlite3DecOrHexToI64:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lbu	a4,0(a0)
	li	a5,48
	mv	s0,a0
	mv	s1,a1
	bne	a4,a5,.L5565
	lbu	a5,1(a0)
	li	a3,88
	andi	a5,a5,223
	beq	a5,a3,.L5582
.L5565:
	mv	a0,s0
	call	strlen@plt
	slli	a2,a0,34
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s1
	ld	s1,8(sp)
	li	a3,1
	srli	a2,a2,34
	addi	sp,sp,32
	tail	sqlite3Atoi64
.L5582:
	lbu	a5,2(a0)
	bne	a5,a4,.L5566
	li	a0,2
	li	a3,48
.L5567:
	addiw	a0,a0,1
	add	a5,s0,a0
	lbu	a4,0(a5)
	beq	a4,a3,.L5567
.L5568:
	lla	a1,.LANCHOR2
	add	a3,a1,a4
	lbu	a3,64(a3)
	sext.w	a4,a4
	andi	a3,a3,8
	beq	a3,zero,.L5569
	mv	a6,a0
	li	a2,0
.L5570:
	sraiw	a5,a4,6
	andi	a3,a5,1
	slliw	a5,a3,3
	addiw	a6,a6,1
	addw	a5,a5,a3
	add	a7,s0,a6
	addw	a5,a5,a4
	lbu	a4,0(a7)
	andi	a5,a5,15
	slli	a2,a2,4
	add	a3,a1,a4
	lbu	a3,64(a3)
	add	a2,a5,a2
	andi	a5,a3,8
	bne	a5,zero,.L5570
	sd	a2,0(s1)
	lbu	a5,0(a7)
	bne	a5,zero,.L5573
	subw	a0,a6,a0
	li	a5,16
	ble	a0,a5,.L5574
.L5573:
	li	a0,2
.L5580:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L5569:
	sd	zero,0(s1)
	lbu	a5,0(a5)
	bne	a5,zero,.L5573
.L5574:
	li	a0,0
	j	.L5580
.L5566:
	lbu	a4,2(a0)
	addi	a5,a0,2
	li	a0,2
	j	.L5568
	.size	sqlite3DecOrHexToI64, .-sqlite3DecOrHexToI64
	.section	.text.sqlite3_uri_int64,"ax",@progbits
	.align	1
	.globl	sqlite3_uri_int64
	.type	sqlite3_uri_int64, @function
sqlite3_uri_int64:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	mv	s0,a2
	call	sqlite3_uri_parameter@plt
	beq	a0,zero,.L5586
	addi	a1,sp,8
	call	sqlite3DecOrHexToI64
	beq	a0,zero,.L5588
.L5586:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L5588:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	a0,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_uri_int64, .-sqlite3_uri_int64
	.section	.text.getSafetyLevel,"ax",@progbits
	.align	1
	.type	getSafetyLevel, @function
getSafetyLevel:
	addi	sp,sp,-112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s7,40(sp)
	sd	s8,32(sp)
	sd	s9,24(sp)
	sd	s10,16(sp)
	lbu	a4,0(a0)
	lla	a5,.LANCHOR2
	add	a5,a5,a4
	lbu	a5,64(a5)
	andi	a5,a5,4
	bne	a5,zero,.L5599
	mv	s3,a0
	mv	s5,a1
	mv	s4,a2
	call	strlen@plt
	slli	s1,a0,34
	srli	s1,s1,34
	li	a5,2
	li	s0,0
	lla	s8,.LANCHOR4-1136
	lla	s7,.LANCHOR4-1104
	lla	s6,.LANCHOR4-1096
	li	s9,1
	li	s10,7
	lla	s2,.LANCHOR4-1088
	beq	a5,s1,.L5592
.L5594:
	add	a5,s2,s0
	beq	s0,s10,.L5591
	lbu	a5,1(a5)
	addi	s0,s0,1
	bne	a5,s1,.L5594
.L5592:
	add	a5,s7,s0
	lbu	a0,0(a5)
	mv	a2,s1
	mv	a1,s3
	add	a0,s8,a0
	call	sqlite3_strnicmp@plt
	add	a5,s6,s0
	bne	a0,zero,.L5594
	lbu	a5,0(a5)
	beq	s5,zero,.L5597
	bgtu	a5,s9,.L5594
.L5597:
	mv	s4,a5
.L5591:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	ld	s10,16(sp)
	mv	a0,s4
	ld	s4,64(sp)
	addi	sp,sp,112
	jr	ra
.L5599:
	addi	a1,sp,12
	sw	zero,12(sp)
	call	sqlite3GetInt32
	lbu	s4,12(sp)
	j	.L5591
	.size	getSafetyLevel, .-getSafetyLevel
	.section	.text.sqlite3_uri_boolean,"ax",@progbits
	.align	1
	.globl	sqlite3_uri_boolean
	.type	sqlite3_uri_boolean, @function
sqlite3_uri_boolean:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a2
	call	sqlite3_uri_parameter@plt
	snez	a2,s0
	beq	a0,zero,.L5604
	li	a1,1
	call	getSafetyLevel
	ld	ra,8(sp)
	ld	s0,0(sp)
	sext.w	a0,a0
	snez	a0,a0
	addi	sp,sp,16
	jr	ra
.L5604:
	ld	ra,8(sp)
	ld	s0,0(sp)
	sext.w	a0,a2
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_uri_boolean, .-sqlite3_uri_boolean
	.section	.text.sqlite3VtabImportErrmsg.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3VtabImportErrmsg.isra.0, @function
sqlite3VtabImportErrmsg.isra.0:
	ld	a5,0(a2)
	beq	a5,zero,.L5615
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	mv	s1,a1
	ld	a1,0(a1)
	ld	s2,0(a0)
	mv	s0,a2
	beq	a1,zero,.L5607
	mv	a0,s2
	call	sqlite3DbFreeNN
	ld	a5,0(s0)
.L5607:
	mv	a1,a5
	mv	a0,s2
	call	sqlite3DbStrDup
	sd	a0,0(s1)
	ld	a0,0(s0)
	call	sqlite3_free@plt
	sd	zero,0(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L5615:
	ret
	.size	sqlite3VtabImportErrmsg.isra.0, .-sqlite3VtabImportErrmsg.isra.0
	.section	.text.sqlite3ColumnType.isra.0.part.0,"ax",@progbits
	.align	1
	.type	sqlite3ColumnType.isra.0.part.0, @function
sqlite3ColumnType.isra.0.part.0:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	strlen@plt
	addi	a0,a0,1
	ld	ra,8(sp)
	add	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3ColumnType.isra.0.part.0, .-sqlite3ColumnType.isra.0.part.0
	.section	.rodata.str1.8
	.align	3
.LC35:
	.string	"INTEGER"
	.section	.text.columnTypeImpl,"ax",@progbits
	.align	1
	.type	columnTypeImpl, @function
columnTypeImpl:
	addi	sp,sp,-144
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	ra,136(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	lbu	a5,0(a1)
	sd	zero,0(sp)
	sd	zero,8(sp)
	sd	zero,16(sp)
	li	a6,131
	mv	s0,a0
	mv	s1,a2
	mv	s5,a3
	mv	s4,a4
	beq	a5,a6,.L5621
	li	a2,162
	li	s2,0
	bne	a5,a2,.L5622
	ld	a0,8(a0)
	lh	a4,48(a1)
	lw	t1,0(a0)
.L5632:
	ble	t1,zero,.L5623
	lw	t3,44(a1)
	addi	a5,a0,72
	li	a6,0
	j	.L5624
.L5625:
	addiw	a6,a6,1
	beq	t1,a6,.L5623
.L5624:
	lw	a7,0(a5)
	addi	a5,a5,112
	bne	a7,t3,.L5625
	slli	a5,a6,3
	sub	a5,a5,a6
	slli	a5,a5,4
	add	a5,a0,a5
	ld	s3,40(a5)
	beq	s3,zero,.L5632
	ld	s2,48(a5)
	beq	s2,zero,.L5657
	blt	a4,zero,.L5638
	ld	a5,0(s2)
	lw	a3,0(a5)
	ble	a3,a4,.L5638
	ld	a3,40(s2)
	slli	a4,a4,5
	add	a4,a5,a4
	ld	a1,8(a4)
	sd	a3,32(sp)
	sd	s0,48(sp)
	ld	a5,0(s0)
	addi	a4,sp,16
	addi	a3,sp,8
	mv	a2,sp
	addi	a0,sp,24
	sd	a5,24(sp)
	call	columnTypeImpl
	mv	s2,a0
.L5622:
	beq	s1,zero,.L5620
	ld	a5,0(sp)
	sd	a5,0(s1)
	ld	a5,8(sp)
	sd	a5,0(s5)
	ld	a5,16(sp)
	sd	a5,0(s4)
.L5620:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	mv	a0,s2
	ld	s2,112(sp)
	addi	sp,sp,144
	jr	ra
.L5623:
	ld	s0,24(s0)
	beq	s0,zero,.L5638
	ld	a0,8(s0)
	lw	t1,0(a0)
	j	.L5632
.L5621:
	ld	a5,32(a1)
	ld	a6,0(a0)
	addi	a4,sp,16
	ld	a2,0(a5)
	ld	a5,40(a5)
	addi	a3,sp,8
	ld	a1,8(a2)
	addi	a0,sp,24
	mv	a2,sp
	sd	a5,32(sp)
	sd	s0,48(sp)
	sd	a6,24(sp)
	call	columnTypeImpl
	mv	s2,a0
	j	.L5622
.L5657:
	blt	a4,zero,.L5658
.L5627:
	ld	a5,8(s3)
	slli	a4,a4,5
	add	a4,a5,a4
	ld	a0,0(a4)
	lbu	a5,27(a4)
	sd	a0,16(sp)
	andi	a5,a5,4
	beq	a5,zero,.L5628
	call	sqlite3ColumnType.isra.0.part.0
	mv	s2,a0
.L5628:
	ld	a5,0(s3)
	sd	a5,8(sp)
	ld	a5,0(s0)
	beq	a5,zero,.L5622
	ld	a1,112(s3)
	beq	a1,zero,.L5622
	ld	s0,0(a5)
	mv	a0,s0
	call	sqlite3SchemaToIndex.part.0
	ld	a5,32(s0)
	slli	a4,a0,5
	add	a5,a5,a4
	ld	a5,0(a5)
	sd	a5,0(sp)
	j	.L5622
.L5638:
	li	s2,0
	j	.L5622
.L5658:
	lh	a4,68(s3)
	bge	a4,zero,.L5627
	lla	a5,.LC19
	sd	a5,16(sp)
	lla	s2,.LC35
	j	.L5628
	.size	columnTypeImpl, .-columnTypeImpl
	.section	.text.sqlite3_value_numeric_type,"ax",@progbits
	.align	1
	.globl	sqlite3_value_numeric_type
	.type	sqlite3_value_numeric_type, @function
sqlite3_value_numeric_type:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_value_type@plt
	li	a5,3
	beq	a0,a5,.L5662
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L5662:
	mv	a0,s0
	li	a1,0
	call	applyNumericAffinity
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_value_type@plt
	.size	sqlite3_value_numeric_type, .-sqlite3_value_numeric_type
	.section	.text.estLog.part.0,"ax",@progbits
	.align	1
	.type	estLog.part.0, @function
estLog.part.0:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	__clzdi2@plt
	li	a5,60
	subw	a5,a5,a0
	srl	s0,s0,a5
	andi	s0,s0,7
	lla	a4,.LANCHOR2
	slli	s0,s0,1
	add	s0,a4,s0
	slliw	a0,a5,2
	lhu	a4,1776(s0)
	addw	a0,a0,a5
	slliw	a0,a0,1
	ld	ra,8(sp)
	ld	s0,0(sp)
	addiw	a0,a0,-3
	addw	a0,a0,a4
	slliw	a0,a0,16
	sraiw	a0,a0,16
	addi	sp,sp,16
	jr	ra
	.size	estLog.part.0, .-estLog.part.0
	.section	.rodata.str1.8
	.align	3
.LC36:
	.string	"unordered*"
	.align	3
.LC37:
	.string	"sz=[0-9]*"
	.align	3
.LC38:
	.string	"noskipscan*"
	.section	.text.decodeIntArray.isra.0,"ax",@progbits
	.align	1
	.type	decodeIntArray.isra.0, @function
decodeIntArray.isra.0:
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	s2,96(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	s9,40(sp)
	sd	s10,32(sp)
	sd	s11,24(sp)
	mv	s0,a0
	lbu	a0,0(a0)
	mv	s2,a3
	beq	a0,zero,.L5666
	addiw	a1,a1,-1
	slli	s10,a1,32
	srli	s10,s10,31
	addi	a5,a2,2
	mv	s8,a2
	add	s10,s10,a5
	li	s6,47
	li	s7,57
	li	s9,7
	lla	s3,.LANCHOR2
	li	s4,60
	li	s5,1
	li	s11,32
.L5667:
	sext.w	a3,a0
	li	a4,0
	bgt	a0,s6,.L5675
	j	.L5690
.L5669:
	lbu	a0,1(s0)
	addw	a4,a2,a5
	addi	s0,s0,1
	sext.w	a3,a0
	ble	a0,s6,.L5668
.L5675:
	slliw	a5,a4,2
	addw	a5,a5,a4
	addiw	a2,a0,-48
	slliw	a5,a5,1
	ble	a3,s7,.L5669
.L5668:
	slli	s1,a4,32
	srli	s1,s1,32
	bleu	s1,s9,.L5711
	mv	a0,s1
	call	__clzdi2@plt
	subw	a0,s4,a0
	slliw	a5,a0,2
	addw	a5,a5,a0
	slliw	a5,a5,1
	addiw	a5,a5,30
	slliw	a5,a5,16
	srl	s1,s1,a0
	sraiw	a5,a5,16
.L5673:
	andi	a4,s1,7
	slli	a4,a4,1
	add	a4,s3,a4
	lhu	a4,1776(a4)
	addw	a5,a4,a5
	slliw	a5,a5,16
	sraiw	a5,a5,16
.L5671:
	sh	a5,0(s8)
	lbu	a0,0(s0)
	beq	a0,s11,.L5712
.L5674:
	beq	a0,zero,.L5666
	addi	s8,s8,2
	bne	s10,s8,.L5667
.L5666:
	lbu	a5,99(s2)
	andi	a5,a5,-69
	sb	a5,99(s2)
	lbu	a5,0(s0)
	beq	a5,zero,.L5665
	lla	s1,.LC36
	mv	a1,s0
	mv	a0,s1
	lla	s4,.LC37
	lla	s6,.LC38
	addi	s5,sp,12
	li	s3,7
	lla	s7,.LANCHOR2
	li	s9,60
	li	s8,1
	call	sqlite3_strglob@plt
	bne	a0,zero,.L5677
.L5714:
	lbu	a5,99(s2)
	ori	a5,a5,4
	sb	a5,99(s2)
.L5685:
	lbu	a5,0(s0)
	beq	a5,zero,.L5665
	li	a4,32
.L5678:
	beq	a5,a4,.L5713
	lbu	a5,1(s0)
	addi	s0,s0,1
	bne	a5,zero,.L5678
.L5665:
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	ld	s11,24(sp)
	addi	sp,sp,128
	jr	ra
.L5712:
	lbu	a0,1(s0)
	addi	s0,s0,1
	j	.L5674
.L5713:
	lbu	a4,0(s0)
	li	a3,32
	bne	a4,a5,.L5687
.L5686:
	lbu	a4,1(s0)
	addi	s0,s0,1
	beq	a4,a3,.L5686
.L5687:
	beq	a4,zero,.L5665
	mv	a1,s0
	mv	a0,s1
	call	sqlite3_strglob@plt
	beq	a0,zero,.L5714
.L5677:
	mv	a1,s0
	mv	a0,s4
	call	sqlite3_strglob@plt
	bne	a0,zero,.L5680
	mv	a1,s5
	addi	a0,s0,3
	sw	zero,12(sp)
	call	sqlite3GetInt32
	lw	s10,12(sp)
	bgtu	s10,s3,.L5681
	li	a5,0
	bleu	s10,s8,.L5682
	li	a4,40
.L5683:
	addiw	a3,a4,-10
	mv	a5,a4
	slli	s10,s10,1
	slliw	a4,a3,16
	sraiw	a4,a4,16
	bleu	s10,s3,.L5683
	addiw	a5,a5,-20
	slliw	a4,a5,16
	andi	a5,s10,7
	slli	a5,a5,1
	add	a5,s7,a5
	lhu	a5,1776(a5)
	sraiw	a4,a4,16
	addw	a5,a5,a4
	slliw	a5,a5,16
	sraiw	a5,a5,16
.L5682:
	sh	a5,92(s2)
	j	.L5685
.L5711:
	bleu	s1,s5,.L5690
	li	a4,40
.L5672:
	addiw	a3,a4,-10
	mv	a5,a4
	slli	s1,s1,1
	slliw	a4,a3,16
	sraiw	a4,a4,16
	bleu	s1,s9,.L5672
	addiw	a5,a5,-20
	slliw	a5,a5,16
	sraiw	a5,a5,16
	j	.L5673
.L5680:
	mv	a1,s0
	mv	a0,s6
	call	sqlite3_strglob@plt
	bne	a0,zero,.L5685
	lbu	a5,99(s2)
	ori	a5,a5,64
	sb	a5,99(s2)
	j	.L5685
.L5690:
	li	a5,0
	j	.L5671
.L5681:
	mv	a0,s10
	call	__clzdi2@plt
	subw	a5,s9,a0
	slliw	a4,a5,2
	srl	s10,s10,a5
	addw	a4,a4,a5
	andi	a5,s10,7
	slli	a5,a5,1
	slliw	a4,a4,1
	add	a5,s7,a5
	lhu	a5,1776(a5)
	addiw	a4,a4,30
	slliw	a4,a4,16
	sraiw	a4,a4,16
	addw	a5,a5,a4
	slliw	a5,a5,16
	sraiw	a5,a5,16
	sh	a5,92(s2)
	j	.L5685
	.size	decodeIntArray.isra.0, .-decodeIntArray.isra.0
	.section	.text.analysisLoader,"ax",@progbits
	.align	1
	.type	analysisLoader, @function
analysisLoader:
	beq	a2,zero,.L5746
	addi	sp,sp,-144
	sd	s0,128(sp)
	sd	ra,136(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	ld	a1,0(a2)
	mv	s0,a2
	beq	a1,zero,.L5732
	ld	a5,16(a2)
	beq	a5,zero,.L5732
	ld	a2,8(a0)
	mv	s1,a0
	ld	a0,0(a0)
	call	sqlite3FindTable
	mv	s2,a0
	beq	a0,zero,.L5732
	ld	a1,8(s0)
	beq	a1,zero,.L5723
	ld	a0,0(s0)
	call	sqlite3_stricmp@plt
	bne	a0,zero,.L5721
	ld	s1,16(s2)
	li	a4,2
	bne	s1,zero,.L5722
	j	.L5723
.L5724:
	ld	s1,40(s1)
	beq	s1,zero,.L5723
.L5722:
	lbu	a5,99(s1)
	andi	a5,a5,3
	bne	a5,a4,.L5724
	ld	a0,16(s0)
.L5726:
	lbu	a5,99(s1)
	lhu	a1,94(s1)
	ld	a2,16(s1)
	andi	a5,a5,-5
	sb	a5,99(s1)
	mv	a3,s1
	addiw	a1,a1,1
	call	decodeIntArray.isra.0
	lbu	a5,99(s1)
	ld	a4,72(s1)
	ori	a5,a5,-128
	sb	a5,99(s1)
	beq	a4,zero,.L5749
.L5732:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	li	a0,0
	addi	sp,sp,144
	jr	ra
.L5723:
	ld	a0,16(s0)
.L5720:
	lh	a5,74(s2)
	mv	a3,sp
	addi	a2,s2,72
	li	a1,1
	sh	a5,92(sp)
	call	decodeIntArray.isra.0
	lw	a5,64(s2)
	lh	a4,92(sp)
	li	a0,0
	ori	a5,a5,16
	sh	a4,74(s2)
	sw	a5,64(s2)
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	addi	sp,sp,144
	jr	ra
.L5721:
	ld	a2,8(s1)
	ld	a0,0(s1)
	ld	a1,8(s0)
	call	sqlite3FindIndex
	mv	s1,a0
	ld	a0,16(s0)
	bne	s1,zero,.L5726
	j	.L5720
.L5746:
	li	a0,0
	ret
.L5749:
	ld	a4,16(s1)
	lw	a5,64(s2)
	lh	a4,0(a4)
	ori	a5,a5,16
	sw	a5,64(s2)
	sh	a4,72(s2)
	j	.L5732
	.size	analysisLoader, .-analysisLoader
	.section	.text.sqlite3_bind_double.part.0,"ax",@progbits
	.align	1
	.type	sqlite3_bind_double.part.0, @function
sqlite3_bind_double.part.0:
	slli	a5,a1,3
	ld	a4,128(a0)
	sub	a0,a5,a1
	slli	a0,a0,3
	addi	a0,a0,-56
	add	a0,a4,a0
	lhu	a5,8(a0)
	li	a4,8192
	addi	a4,a4,1024
	and	a4,a4,a5
	bne	a4,zero,.L5752
	li	a5,4
	sd	a2,0(a0)
	sh	a5,8(a0)
	ret
.L5752:
	mv	a1,a2
	tail	vdbeReleaseAndSetInt64
	.size	sqlite3_bind_double.part.0, .-sqlite3_bind_double.part.0
	.set	sqlite3_bind_int64.part.0,sqlite3_bind_double.part.0
	.section	.text.sqlite3_result_int64,"ax",@progbits
	.align	1
	.globl	sqlite3_result_int64
	.type	sqlite3_result_int64, @function
sqlite3_result_int64:
	tail	sqlite3_result_double.localalias
	.size	sqlite3_result_int64, .-sqlite3_result_int64
	.section	.text.last_insert_rowid,"ax",@progbits
	.align	1
	.type	last_insert_rowid, @function
last_insert_rowid:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	call	sqlite3_context_db_handle@plt
	call	sqlite3_last_insert_rowid@plt
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_int64@plt
	.size	last_insert_rowid, .-last_insert_rowid
	.section	.text.noopStepFunc,"ax",@progbits
	.align	1
	.type	noopStepFunc, @function
noopStepFunc:
	ret
	.size	noopStepFunc, .-noopStepFunc
	.section	.text.memjrnlSync,"ax",@progbits
	.align	1
	.type	memjrnlSync, @function
memjrnlSync:
	li	a0,0
	ret
	.size	memjrnlSync, .-memjrnlSync
	.section	.text.sqlite3SelectWalkNoop,"ax",@progbits
	.align	1
	.type	sqlite3SelectWalkNoop, @function
sqlite3SelectWalkNoop:
	li	a0,0
	ret
	.size	sqlite3SelectWalkNoop, .-sqlite3SelectWalkNoop
	.section	.text.noopValueFunc,"ax",@progbits
	.align	1
	.type	noopValueFunc, @function
noopValueFunc:
	ret
	.size	noopValueFunc, .-noopValueFunc
	.section	.text.sqlite3MemShutdown,"ax",@progbits
	.align	1
	.type	sqlite3MemShutdown, @function
sqlite3MemShutdown:
	ret
	.size	sqlite3MemShutdown, .-sqlite3MemShutdown
	.section	.text.jsonEachDisconnect,"ax",@progbits
	.align	1
	.type	jsonEachDisconnect, @function
jsonEachDisconnect:
	addi	sp,sp,-16
	sd	ra,8(sp)
	call	sqlite3_free@plt
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	jsonEachDisconnect, .-jsonEachDisconnect
	.section	.text.sqlite3BitvecSet,"ax",@progbits
	.align	1
	.type	sqlite3BitvecSet, @function
sqlite3BitvecSet:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	beq	a0,zero,.L5793
	lw	a5,0(a0)
	li	s5,4096
	addi	s5,s5,-128
	mv	s0,a0
	addiw	s4,a1,-1
	bgtu	a5,s5,.L5766
	j	.L5767
.L5780:
	mv	s0,a5
	lw	a5,0(s0)
	bleu	a5,s5,.L5767
.L5766:
	lw	s1,8(s0)
	beq	s1,zero,.L5794
	divuw	s3,s4,s1
	slli	s3,s3,32
	srli	s3,s3,32
	slli	s2,s3,3
	add	s2,s0,s2
	ld	a5,16(s2)
	remuw	s4,s4,s1
	bne	a5,zero,.L5780
	li	a0,512
	call	sqlite3MallocZero
	beq	a0,zero,.L5769
	sw	s1,0(a0)
	sd	a0,16(s2)
	mv	s0,a0
	lw	a5,0(s0)
	bgtu	a5,s5,.L5766
.L5767:
	srliw	a5,s4,3
	add	s0,s0,a5
	lbu	a4,16(s0)
	andi	s4,s4,7
	li	a5,1
	sllw	s4,a5,s4
	or	s4,s4,a4
	sb	s4,16(s0)
	li	s2,0
	j	.L5785
.L5794:
	li	a5,124
	remuw	a5,s4,a5
	addiw	s1,s4,1
	mv	s4,s1
	li	a2,124
	slli	a4,a5,32
	srli	a4,a4,32
	addi	a4,a4,4
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a4,0(a4)
	bne	a4,zero,.L5776
	lw	a4,4(s0)
	li	a3,122
	bgtu	a4,a3,.L5773
	slli	a3,a5,32
	srli	a3,a3,32
.L5772:
	addi	a3,a3,4
	addiw	a4,a4,1
	slli	a3,a3,2
	sw	a4,4(s0)
	add	s0,s0,a3
	sw	s4,0(s0)
.L5793:
	li	s2,0
.L5785:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	jr	ra
.L5796:
	bne	a5,a2,.L5775
	li	a5,0
.L5775:
	slli	a3,a5,32
	srli	a3,a3,32
	addi	a4,a3,4
	slli	a4,a4,2
	add	a4,s0,a4
	lw	a4,0(a4)
	beq	a4,zero,.L5795
.L5776:
	addiw	a5,a5,1
	bne	s1,a4,.L5796
	j	.L5793
.L5795:
	lw	a4,4(s0)
	li	a5,61
	bleu	a4,a5,.L5772
.L5773:
	li	a0,496
	call	sqlite3Malloc
	mv	s4,a0
	li	s2,7
	beq	a0,zero,.L5785
	addi	s2,s0,16
	mv	a1,s2
	li	a2,496
	call	memcpy@plt
	li	a2,496
	li	a1,0
	mv	a0,s2
	call	memset@plt
	lwu	a5,0(s0)
	li	a4,62
	mv	a1,s1
	addi	a5,a5,61
	divu	a5,a5,a4
	mv	a0,s0
	mv	s1,s4
	addi	s3,s4,496
	sw	a5,8(s0)
	call	sqlite3BitvecSet
	mv	s2,a0
.L5778:
	lw	a1,0(s1)
	addi	s1,s1,4
	bne	a1,zero,.L5797
	bne	s3,s1,.L5778
.L5798:
	mv	a0,s4
	call	sqlite3_free@plt
	j	.L5785
.L5797:
	mv	a0,s0
	call	sqlite3BitvecSet
	or	s2,a0,s2
	sext.w	s2,s2
	bne	s3,s1,.L5778
	j	.L5798
.L5769:
	addi	a5,s3,2
	slli	a5,a5,3
	add	s0,s0,a5
	sd	zero,0(s0)
	li	s2,7
	j	.L5785
	.size	sqlite3BitvecSet, .-sqlite3BitvecSet
	.section	.text.addToSavepointBitvecs.isra.0,"ax",@progbits
	.align	1
	.type	addToSavepointBitvecs.isra.0, @function
addToSavepointBitvecs.isra.0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	lw	a3,0(a1)
	sext.w	a5,a3
	ble	a5,zero,.L5803
	mv	s2,a1
	mv	s4,a0
	mv	s1,a2
	li	s3,0
	li	s0,0
	j	.L5802
.L5801:
	sext.w	a5,a3
	ble	a5,s0,.L5800
.L5802:
	ld	a4,0(s4)
	slli	a5,s0,1
	add	a5,a5,s0
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,24(a5)
	addiw	s0,s0,1
	bltu	a4,s1,.L5801
	ld	a0,16(a5)
	mv	a1,s1
	call	sqlite3BitvecSet
	lw	a3,0(s2)
	or	s3,a0,s3
	sext.w	s3,s3
	sext.w	a5,a3
	bgt	a5,s0,.L5802
.L5800:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s4,0(sp)
	mv	a0,s3
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L5803:
	li	s3,0
	j	.L5800
	.size	addToSavepointBitvecs.isra.0, .-addToSavepointBitvecs.isra.0
	.section	.text.pagerAddPageToRollbackJournal,"ax",@progbits
	.align	1
	.type	pagerAddPageToRollbackJournal, @function
pagerAddPageToRollbackJournal:
	addi	sp,sp,-80
	sd	s2,48(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	ld	s3,40(a0)
	ld	s1,8(a0)
	mv	s2,a0
	lw	a5,188(s3)
	ld	s4,96(s3)
	lw	s0,52(s3)
	addiw	a5,a5,-200
	ble	a5,zero,.L5807
.L5808:
	add	a4,s1,a5
	lbu	a4,0(a4)
	addiw	a5,a5,-200
	addw	s0,a4,s0
	bgt	a5,zero,.L5808
.L5807:
	lhu	a3,52(s2)
	lhu	a5,48(s2)
	lw	a4,48(s2)
	ori	a3,a3,8
	sh	a3,52(s2)
	srli	a3,a5,8
	ld	a0,80(s3)
	andi	a3,a3,255
	slliw	a5,a5,8
	or	a5,a5,a3
	srliw	a3,a4,24
	srliw	a4,a4,16
	sb	a3,8(sp)
	sb	a4,9(sp)
	sh	a5,10(sp)
	ld	a5,0(a0)
	addi	s5,sp,8
	mv	a3,s4
	ld	a5,24(a5)
	li	a2,4
	mv	a1,s5
	jalr	a5
	bne	a0,zero,.L5809
	ld	a0,80(s3)
	lw	a2,188(s3)
	addi	s4,s4,4
	ld	a5,0(a0)
	mv	a3,s4
	mv	a1,s1
	ld	a5,24(a5)
	jalr	a5
	bne	a0,zero,.L5809
	srli	a5,s0,8
	ld	a0,80(s3)
	andi	a4,a5,255
	slli	a5,s0,8
	or	a5,a5,a4
	srliw	a4,s0,24
	srliw	s0,s0,16
	lw	a3,188(s3)
	sb	a4,8(sp)
	sb	s0,9(sp)
	sh	a5,10(sp)
	ld	a5,0(a0)
	add	a3,a3,s4
	li	a2,4
	ld	a5,24(a5)
	mv	a1,s5
	jalr	a5
	bne	a0,zero,.L5809
	lw	a3,188(s3)
	ld	a4,96(s3)
	lw	a5,48(s3)
	addiw	a3,a3,8
	add	a4,a4,a3
	addiw	a5,a5,1
	sd	a4,96(s3)
	sw	a5,48(s3)
	lw	a1,48(s2)
	ld	a0,64(s3)
	call	sqlite3BitvecSet
	lw	a2,48(s2)
	mv	s0,a0
	addi	a1,s3,128
	addi	a0,s3,120
	call	addToSavepointBitvecs.isra.0
	or	a0,s0,a0
	sext.w	a0,a0
.L5809:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	addi	sp,sp,80
	jr	ra
	.size	pagerAddPageToRollbackJournal, .-pagerAddPageToRollbackJournal
	.section	.text.sqlite3VdbeSorterReset,"ax",@progbits
	.align	1
	.type	sqlite3VdbeSorterReset, @function
sqlite3VdbeSorterReset:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	mv	s5,a0
	ld	a0,24(a1)
	mv	s0,a1
	call	vdbeMergeEngineFree
	lbu	a5,91(s0)
	sd	zero,24(s0)
	beq	a5,zero,.L5813
	addi	s4,s0,96
	li	s1,0
	li	s3,104
.L5819:
	mul	a5,s1,s3
	add	a5,s0,a5
	ld	a1,120(a5)
	beq	a1,zero,.L5814
	mv	a0,s5
	call	sqlite3DbFreeNN
.L5814:
	mul	a5,s1,s3
	add	a5,s0,a5
	ld	s2,128(a5)
	beq	s2,zero,.L5815
.L5816:
	mv	a0,s2
	ld	s2,8(s2)
	call	sqlite3_free@plt
	bne	s2,zero,.L5816
.L5815:
	mul	a5,s1,s3
	add	a5,s0,a5
	ld	a0,168(a5)
	beq	a0,zero,.L5817
	call	sqlite3OsCloseFree
.L5817:
	mul	a5,s1,s3
	add	a5,s0,a5
	ld	a0,184(a5)
	beq	a0,zero,.L5818
	call	sqlite3OsCloseFree
.L5818:
	mv	a0,s4
	li	a2,104
	li	a1,0
	call	memset@plt
	mul	a5,s1,s3
	addiw	s1,s1,1
	addi	s4,s4,104
	add	a5,s0,a5
	sd	s0,112(a5)
	lbu	a5,91(s0)
	bgt	a5,s1,.L5819
.L5813:
	ld	a5,64(s0)
	beq	a5,zero,.L5848
.L5820:
	ld	a1,48(s0)
	sd	zero,56(s0)
	sw	zero,72(s0)
	sb	zero,88(s0)
	sw	zero,80(s0)
	sw	zero,8(s0)
	beq	a1,zero,.L5822
	mv	a0,s5
	call	sqlite3DbFreeNN
.L5822:
	sd	zero,48(s0)
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L5848:
	ld	s1,56(s0)
	beq	s1,zero,.L5820
.L5821:
	mv	a0,s1
	ld	s1,8(s1)
	call	sqlite3_free@plt
	bne	s1,zero,.L5821
	j	.L5820
	.size	sqlite3VdbeSorterReset, .-sqlite3VdbeSorterReset
	.section	.text.apiOomError,"ax",@progbits
	.align	1
	.type	apiOomError, @function
apiOomError:
	addi	sp,sp,-16
	sd	ra,8(sp)
	lbu	a5,97(a0)
	beq	a5,zero,.L5850
	lw	a5,196(a0)
	bne	a5,zero,.L5850
	lw	a5,360(a0)
	sb	zero,97(a0)
	sw	zero,352(a0)
	addiw	a5,a5,-1
	sw	a5,360(a0)
.L5850:
	li	a5,7
	sw	a5,80(a0)
	li	a1,7
	call	sqlite3ErrorFinish
	ld	ra,8(sp)
	li	a0,7
	addi	sp,sp,16
	jr	ra
	.size	apiOomError, .-apiOomError
	.section	.text.columnMallocFailure,"ax",@progbits
	.align	1
	.type	columnMallocFailure, @function
columnMallocFailure:
	beq	a0,zero,.L5864
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	ld	a0,0(a0)
	lbu	a5,97(a0)
	bne	a5,zero,.L5857
	lw	a5,56(s0)
	li	a4,4096
	addi	a4,a4,-1014
	beq	a5,a4,.L5857
	lw	a0,84(a0)
	and	a0,a5,a0
	sw	a0,56(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L5857:
	call	apiOomError
	sw	a0,56(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L5864:
	ret
	.size	columnMallocFailure, .-columnMallocFailure
	.section	.text.sqlite3_column_double,"ax",@progbits
	.align	1
	.globl	sqlite3_column_double
	.type	sqlite3_column_double, @function
sqlite3_column_double:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	columnMem
	call	sqlite3_value_double@plt
	mv	s0,a0
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_double, .-sqlite3_column_double
	.section	.text.sqlite3_column_int,"ax",@progbits
	.align	1
	.globl	sqlite3_column_int
	.type	sqlite3_column_int, @function
sqlite3_column_int:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	columnMem
	call	sqlite3_value_int@plt
	mv	s0,a0
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_int, .-sqlite3_column_int
	.section	.text.sqlite3_column_int64,"ax",@progbits
	.align	1
	.globl	sqlite3_column_int64
	.type	sqlite3_column_int64, @function
sqlite3_column_int64:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	columnMem
	call	sqlite3_value_int64@plt
	mv	s0,a0
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_int64, .-sqlite3_column_int64
	.section	.text.sqlite3_column_value,"ax",@progbits
	.align	1
	.globl	sqlite3_column_value
	.type	sqlite3_column_value, @function
sqlite3_column_value:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	call	columnMem
	lhu	a5,8(a0)
	mv	s0,a0
	slli	a4,a5,52
	bge	a4,zero,.L5874
	li	a4,-4096
	addi	a4,a4,2047
	and	a5,a5,a4
	li	a4,4096
	or	a5,a5,a4
	sh	a5,8(a0)
.L5874:
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_value, .-sqlite3_column_value
	.section	.text.sqlite3_column_type,"ax",@progbits
	.align	1
	.globl	sqlite3_column_type
	.type	sqlite3_column_type, @function
sqlite3_column_type:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	columnMem
	call	sqlite3_value_type@plt
	mv	s0,a0
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_type, .-sqlite3_column_type
	.section	.text.sqlite3RowSetDelete,"ax",@progbits
	.align	1
	.type	sqlite3RowSetDelete, @function
sqlite3RowSetDelete:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	s1,0(a0)
	mv	s0,a0
	beq	s1,zero,.L5882
.L5883:
	mv	a1,s1
	ld	a0,8(s0)
	ld	s1,0(s1)
	call	sqlite3DbFreeNN
	bne	s1,zero,.L5883
.L5882:
	li	a5,65536
	sd	zero,0(s0)
	sd	zero,16(s0)
	sd	zero,24(s0)
	sd	zero,40(s0)
	sw	a5,48(s0)
	ld	a0,8(s0)
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
	.size	sqlite3RowSetDelete, .-sqlite3RowSetDelete
	.section	.text.sqlite3SrcListDelete,"ax",@progbits
	.align	1
	.type	sqlite3SrcListDelete, @function
sqlite3SrcListDelete:
	beq	a1,zero,.L5889
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	lw	a5,0(a1)
	mv	s3,a1
	mv	s1,a0
	addi	s0,a1,8
	li	s2,0
	bgt	a5,zero,.L5891
	j	.L5900
.L5896:
	ld	a1,32(s0)
	mv	a0,s1
	call	sqlite3DeleteTable
	ld	a1,40(s0)
	beq	a1,zero,.L5897
	li	a2,1
	mv	a0,s1
	call	clearSelect
.L5897:
	ld	a1,72(s0)
	beq	a1,zero,.L5898
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L5898:
	ld	a1,80(s0)
	beq	a1,zero,.L5899
	mv	a0,s1
	call	sqlite3IdListDelete.part.0
.L5899:
	lw	a5,0(s3)
	addiw	s2,s2,1
	addi	s0,s0,112
	ble	a5,s2,.L5900
.L5891:
	ld	a1,8(s0)
	beq	a1,zero,.L5892
	mv	a0,s1
	call	sqlite3DbFreeNN
.L5892:
	ld	a1,16(s0)
	beq	a1,zero,.L5893
	mv	a0,s1
	call	sqlite3DbFreeNN
.L5893:
	ld	a1,24(s0)
	beq	a1,zero,.L5894
	mv	a0,s1
	call	sqlite3DbFreeNN
.L5894:
	lbu	a5,61(s0)
	andi	a4,a5,2
	beq	a4,zero,.L5895
	ld	a1,96(s0)
	beq	a1,zero,.L5895
	mv	a0,s1
	call	sqlite3DbFreeNN
	lbu	a5,61(s0)
.L5895:
	andi	a5,a5,4
	beq	a5,zero,.L5896
	ld	a1,96(s0)
	mv	a0,s1
	call	sqlite3ExprListDelete
	j	.L5896
.L5900:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	mv	a1,s3
	mv	a0,s1
	ld	s3,8(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
.L5889:
	ret
	.size	sqlite3SrcListDelete, .-sqlite3SrcListDelete
	.section	.text.clearSelect,"ax",@progbits
	.align	1
	.type	clearSelect, @function
clearSelect:
	beq	a1,zero,.L5968
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	mv	s3,a1
	mv	s1,a0
	mv	s4,a2
.L5943:
	ld	a1,0(s3)
	mv	a0,s1
	mv	s0,s3
	ld	s3,80(s3)
	call	sqlite3ExprListDelete
	ld	a1,40(s0)
	mv	a0,s1
	call	sqlite3SrcListDelete
	ld	a1,48(s0)
	beq	a1,zero,.L5936
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L5936:
	ld	a1,56(s0)
	mv	a0,s1
	call	sqlite3ExprListDelete
	ld	a1,64(s0)
	beq	a1,zero,.L5937
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L5937:
	ld	a1,72(s0)
	mv	a0,s1
	call	sqlite3ExprListDelete
	ld	a1,96(s0)
	beq	a1,zero,.L5938
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L5938:
	ld	s2,120(s0)
	beq	s2,zero,.L5939
.L5940:
	mv	a1,s2
	ld	s2,56(s2)
	mv	a0,s1
	call	sqlite3WindowDelete
	bne	s2,zero,.L5940
.L5939:
	ld	a1,104(s0)
	beq	a1,zero,.L5941
	mv	a0,s1
	call	sqlite3WithDelete.part.0
.L5941:
	bne	s4,zero,.L5971
.L5942:
	li	s4,1
	bne	s3,zero,.L5943
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L5971:
	mv	a1,s0
	mv	a0,s1
	call	sqlite3DbFreeNN
	j	.L5942
.L5968:
	ret
	.size	clearSelect, .-clearSelect
	.section	.text.sqlite3ExprDeleteNN,"ax",@progbits
	.align	1
	.type	sqlite3ExprDeleteNN, @function
sqlite3ExprDeleteNN:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lw	a5,4(a1)
	li	a4,8404992
	mv	s0,a1
	and	a4,a5,a4
	mv	s1,a0
	bne	a4,zero,.L5973
	ld	a1,16(a1)
	beq	a1,zero,.L5974
	lbu	a4,0(s0)
	li	a5,170
	bne	a4,a5,.L5996
.L5974:
	ld	a1,24(s0)
	beq	a1,zero,.L5975
.L5999:
	mv	a0,s1
	call	sqlite3ExprDeleteNN
	lw	a5,4(s0)
.L5976:
	slli	a4,a5,39
	blt	a4,zero,.L5997
.L5973:
	slli	a4,a5,47
	bge	a4,zero,.L5978
	ld	a1,8(s0)
	beq	a1,zero,.L5978
	mv	a0,s1
	call	sqlite3DbFreeNN
	lw	a5,4(s0)
.L5978:
	slli	a4,a5,36
	bge	a4,zero,.L5998
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L5975:
	lw	a5,4(s0)
	ld	a1,32(s0)
	slli	a4,a5,52
	bge	a4,zero,.L5977
	beq	a1,zero,.L5976
	li	a2,1
	mv	a0,s1
	call	clearSelect
	lw	a5,4(s0)
	j	.L5976
.L5998:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
.L5996:
	call	sqlite3ExprDeleteNN
	ld	a1,24(s0)
	bne	a1,zero,.L5999
	j	.L5975
.L5997:
	ld	a1,64(s0)
	mv	a0,s1
	call	sqlite3WindowDelete
	lw	a5,4(s0)
	j	.L5973
.L5977:
	mv	a0,s1
	call	sqlite3ExprListDelete
	lw	a5,4(s0)
	j	.L5976
	.size	sqlite3ExprDeleteNN, .-sqlite3ExprDeleteNN
	.section	.text.exprListDeleteNN,"ax",@progbits
	.align	1
	.type	exprListDeleteNN, @function
exprListDeleteNN:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	lw	s2,0(a1)
	mv	s3,a1
	mv	s1,a0
	addi	s0,a1,8
.L6004:
	ld	a1,0(s0)
	addiw	s2,s2,-1
	mv	a0,s1
	beq	a1,zero,.L6001
	call	sqlite3ExprDeleteNN
.L6001:
	ld	a1,8(s0)
	mv	a0,s1
	beq	a1,zero,.L6002
	call	sqlite3DbFreeNN
.L6002:
	ld	a1,16(s0)
	mv	a0,s1
	addi	s0,s0,32
	beq	a1,zero,.L6003
	call	sqlite3DbFreeNN
.L6003:
	bgt	s2,zero,.L6004
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	mv	a1,s3
	mv	a0,s1
	ld	s3,8(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
	.size	exprListDeleteNN, .-exprListDeleteNN
	.section	.text.sqlite3ExprListDelete,"ax",@progbits
	.align	1
	.type	sqlite3ExprListDelete, @function
sqlite3ExprListDelete:
	beq	a1,zero,.L6016
	tail	exprListDeleteNN
.L6016:
	ret
	.size	sqlite3ExprListDelete, .-sqlite3ExprListDelete
	.section	.text.sqlite3ParserReset,"ax",@progbits
	.align	1
	.type	sqlite3ParserReset, @function
sqlite3ParserReset:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	a1,80(a0)
	ld	s1,0(a0)
	mv	s0,a0
	beq	a1,zero,.L6019
	mv	a0,s1
	call	sqlite3DbFreeNN
.L6019:
	ld	a1,88(s0)
	beq	a1,zero,.L6020
	mv	a0,s1
	call	exprListDeleteNN
.L6020:
	beq	s1,zero,.L6021
	lbu	a4,36(s0)
	lw	a5,360(s1)
	subw	a5,a5,a4
	sw	a5,360(s1)
.L6021:
	sb	zero,36(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3ParserReset, .-sqlite3ParserReset
	.section	.text.sqlite3WindowAssemble.isra.0.part.0,"ax",@progbits
	.align	1
	.type	sqlite3WindowAssemble.isra.0.part.0, @function
sqlite3WindowAssemble.isra.0.part.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	mv	s0,a2
	ld	a0,0(a0)
	beq	a1,zero,.L6033
	call	exprListDeleteNN
	ld	a0,0(s1)
.L6033:
	beq	s0,zero,.L6032
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	exprListDeleteNN
.L6032:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3WindowAssemble.isra.0.part.0, .-sqlite3WindowAssemble.isra.0.part.0
	.section	.text.sqlite3WindowAssemble.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3WindowAssemble.isra.0, @function
sqlite3WindowAssemble.isra.0:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	mv	a1,a2
	beq	s0,zero,.L6040
	sd	a2,16(s0)
	sd	a3,24(s0)
	beq	a4,zero,.L6041
	lwu	a2,8(a4)
	ld	a1,0(a4)
	ld	a0,0(a0)
	call	sqlite3DbStrNDup
	sd	a0,8(s0)
.L6041:
	ld	ra,8(sp)
	mv	a0,s0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L6040:
	mv	a2,a3
	call	sqlite3WindowAssemble.isra.0.part.0
	ld	ra,8(sp)
	mv	a0,s0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3WindowAssemble.isra.0, .-sqlite3WindowAssemble.isra.0
	.section	.text.sqlite3WindowDelete,"ax",@progbits
	.align	1
	.type	sqlite3WindowDelete, @function
sqlite3WindowDelete:
	beq	a1,zero,.L6046
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a1
	ld	a1,64(a1)
	mv	s1,a0
	beq	a1,zero,.L6048
	call	sqlite3ExprDeleteNN
.L6048:
	ld	a1,16(s0)
	beq	a1,zero,.L6049
	mv	a0,s1
	call	exprListDeleteNN
.L6049:
	ld	a1,24(s0)
	beq	a1,zero,.L6050
	mv	a0,s1
	call	exprListDeleteNN
.L6050:
	ld	a1,48(s0)
	beq	a1,zero,.L6051
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L6051:
	ld	a1,40(s0)
	beq	a1,zero,.L6052
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L6052:
	ld	a1,0(s0)
	beq	a1,zero,.L6053
	mv	a0,s1
	call	sqlite3DbFreeNN
.L6053:
	ld	a1,8(s0)
	beq	a1,zero,.L6054
	mv	a0,s1
	call	sqlite3DbFreeNN
.L6054:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
.L6046:
	ret
	.size	sqlite3WindowDelete, .-sqlite3WindowDelete
	.section	.text.sqlite3UpsertDelete,"ax",@progbits
	.align	1
	.type	sqlite3UpsertDelete, @function
sqlite3UpsertDelete:
	beq	a1,zero,.L6079
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a1
	ld	a1,0(a1)
	mv	s1,a0
	beq	a1,zero,.L6081
	call	exprListDeleteNN
.L6081:
	ld	a1,8(s0)
	beq	a1,zero,.L6082
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L6082:
	ld	a1,16(s0)
	beq	a1,zero,.L6083
	mv	a0,s1
	call	exprListDeleteNN
.L6083:
	ld	a1,24(s0)
	beq	a1,zero,.L6084
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L6084:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
.L6079:
	ret
	.size	sqlite3UpsertDelete, .-sqlite3UpsertDelete
	.section	.text.sqlite3FreeIndex,"ax",@progbits
	.align	1
	.type	sqlite3FreeIndex, @function
sqlite3FreeIndex:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a1
	ld	a1,72(a1)
	mv	s1,a0
	beq	a1,zero,.L6101
	call	sqlite3ExprDeleteNN
.L6101:
	ld	a1,80(s0)
	beq	a1,zero,.L6102
	mv	a0,s1
	call	exprListDeleteNN
.L6102:
	ld	a1,32(s0)
	beq	a1,zero,.L6103
	mv	a0,s1
	call	sqlite3DbFreeNN
.L6103:
	lbu	a5,99(s0)
	andi	a5,a5,16
	beq	a5,zero,.L6104
	ld	a1,64(s0)
	beq	a1,zero,.L6104
	mv	a0,s1
	call	sqlite3DbFreeNN
.L6104:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
	.size	sqlite3FreeIndex, .-sqlite3FreeIndex
	.section	.text.sqlite3DeleteColumnNames.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3DeleteColumnNames.isra.0, @function
sqlite3DeleteColumnNames.isra.0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	ld	s0,0(a1)
	beq	s0,zero,.L6121
	lh	a5,0(a2)
	mv	s1,a0
	mv	s3,a2
	ble	a5,zero,.L6124
	mv	s4,a1
	li	s2,0
.L6128:
	ld	a1,0(s0)
	addiw	s2,s2,1
	mv	a0,s1
	beq	a1,zero,.L6125
	call	sqlite3DbFreeNN
.L6125:
	ld	a1,8(s0)
	mv	a0,s1
	beq	a1,zero,.L6126
	call	sqlite3ExprDeleteNN
.L6126:
	ld	a1,16(s0)
	mv	a0,s1
	addi	s0,s0,32
	beq	a1,zero,.L6127
	call	sqlite3DbFreeNN
.L6127:
	lh	a5,0(s3)
	bgt	a5,s2,.L6128
	ld	s0,0(s4)
	bne	s0,zero,.L6124
.L6121:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L6124:
	mv	a1,s0
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	mv	a0,s1
	ld	s1,24(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
	.size	sqlite3DeleteColumnNames.isra.0, .-sqlite3DeleteColumnNames.isra.0
	.section	.text.sqlite3WhereClauseClear,"ax",@progbits
	.align	1
	.type	sqlite3WhereClauseClear, @function
sqlite3WhereClauseClear:
	addi	sp,sp,-48
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	ld	a4,0(a0)
	lw	a5,20(a0)
	ld	s0,32(a0)
	ld	a4,0(a4)
	addiw	a5,a5,-1
	mv	s2,a0
	ld	s3,0(a4)
	slli	a4,a5,32
	blt	a4,zero,.L6145
	slli	s1,a5,32
	srli	s1,s1,32
	addi	s1,s1,1
	slli	s1,s1,6
	add	s1,s0,s1
	j	.L6151
.L6147:
	bne	a5,zero,.L6172
.L6149:
	addi	s0,s0,64
	beq	s0,s1,.L6173
.L6151:
	lhu	a5,18(s0)
	andi	a4,a5,1
	beq	a4,zero,.L6146
	ld	a1,0(s0)
	mv	a0,s3
	beq	a1,zero,.L6146
	call	sqlite3ExprDeleteNN
	lhu	a5,18(s0)
.L6146:
	andi	a4,a5,16
	andi	a5,a5,32
	beq	a4,zero,.L6147
.L6172:
	ld	s4,40(s0)
	mv	a0,s4
	call	sqlite3WhereClauseClear
	mv	a1,s4
	mv	a0,s3
	beq	s4,zero,.L6149
	addi	s0,s0,64
	call	sqlite3DbFreeNN
	bne	s0,s1,.L6151
.L6173:
	ld	s0,32(s2)
.L6145:
	addi	s2,s2,40
	beq	s0,s2,.L6144
	beq	s0,zero,.L6144
	mv	a1,s0
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s4,0(sp)
	mv	a0,s3
	ld	s3,8(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
.L6144:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3WhereClauseClear, .-sqlite3WhereClauseClear
	.section	.text.whereInfoFree,"ax",@progbits
	.align	1
	.type	whereInfoFree, @function
whereInfoFree:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	lbu	a5,66(a1)
	mv	s1,a1
	mv	s2,a0
	beq	a5,zero,.L6175
	li	s4,4096
	li	s0,0
	li	s3,88
	addi	s4,s4,-2048
.L6177:
	mul	a5,s0,s3
	addiw	s0,s0,1
	add	a5,s1,a5
	ld	a4,992(a5)
	beq	a4,zero,.L6176
	lw	a4,40(a4)
	and	a4,s4,a4
	beq	a4,zero,.L6176
	ld	a1,984(a5)
	mv	a0,s2
	beq	a1,zero,.L6176
	call	sqlite3DbFreeNN
.L6176:
	lbu	a5,66(s1)
	bgt	a5,s0,.L6177
.L6175:
	addi	a0,s1,104
	call	sqlite3WhereClauseClear
	ld	s0,80(s1)
	beq	s0,zero,.L6178
.L6179:
	ld	a5,64(s0)
	mv	a1,s0
	mv	a0,s2
	sd	a5,80(s1)
	call	whereLoopClear
	mv	a1,s0
	mv	a0,s2
	call	sqlite3DbFreeNN
	ld	s0,80(s1)
	bne	s0,zero,.L6179
.L6178:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	mv	a1,s1
	mv	a0,s2
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
	.size	whereInfoFree, .-whereInfoFree
	.section	.text.sqlite3UpsertNew,"ax",@progbits
	.align	1
	.type	sqlite3UpsertNew, @function
sqlite3UpsertNew:
	addi	sp,sp,-64
	sd	s4,16(sp)
	mv	s4,a1
	li	a1,64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	mv	s5,a0
	mv	s3,a2
	mv	s2,a3
	mv	s1,a4
	call	sqlite3DbMallocRaw
	mv	s0,a0
	beq	a0,zero,.L6215
	sd	s4,0(a0)
	sd	s3,8(a0)
	sd	s2,16(a0)
	sd	s1,24(a0)
	sd	zero,32(a0)
.L6198:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L6215:
	beq	s4,zero,.L6200
	mv	a1,s4
	mv	a0,s5
	call	exprListDeleteNN
.L6200:
	beq	s3,zero,.L6201
	mv	a1,s3
	mv	a0,s5
	call	sqlite3ExprDeleteNN
.L6201:
	beq	s2,zero,.L6202
	mv	a1,s2
	mv	a0,s5
	call	exprListDeleteNN
.L6202:
	beq	s1,zero,.L6204
	mv	a1,s1
	mv	a0,s5
	call	sqlite3ExprDeleteNN
	j	.L6198
.L6204:
	li	s0,0
	j	.L6198
	.size	sqlite3UpsertNew, .-sqlite3UpsertNew
	.section	.text.sqlite3ExprUnmapAndDelete,"ax",@progbits
	.align	1
	.type	sqlite3ExprUnmapAndDelete, @function
sqlite3ExprUnmapAndDelete:
	beq	a1,zero,.L6216
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lbu	a4,276(a0)
	li	a5,1
	mv	s0,a1
	mv	s1,a0
	bgtu	a4,a5,.L6222
	mv	a1,s0
	ld	s0,16(sp)
	ld	a0,0(s1)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3ExprDeleteNN
.L6222:
	call	sqlite3RenameExprUnmap
	mv	a1,s0
	ld	s0,16(sp)
	ld	a0,0(s1)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3ExprDeleteNN
.L6216:
	ret
	.size	sqlite3ExprUnmapAndDelete, .-sqlite3ExprUnmapAndDelete
	.section	.text.sqlite3WindowOffsetExpr,"ax",@progbits
	.align	1
	.type	sqlite3WindowOffsetExpr, @function
sqlite3WindowOffsetExpr:
	addi	sp,sp,-80
	lla	a5,exprNodeIsConstant
	sd	s2,48(sp)
	sd	a5,8(sp)
	li	s2,1
	lla	a5,sqlite3SelectWalkFail
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sb	s2,36(sp)
	sd	a5,16(sp)
	sw	zero,40(sp)
	beq	a1,zero,.L6224
	mv	s1,a0
	mv	a0,sp
	mv	s0,a1
	call	walkExpr
	lbu	a5,36(sp)
	bne	a5,zero,.L6227
	lbu	a5,276(s1)
	bgtu	a5,s2,.L6229
.L6226:
	ld	a0,0(s1)
	mv	a1,s0
	call	sqlite3ExprDeleteNN
	ld	a0,0(s1)
	li	a3,0
	li	a2,0
	li	a1,114
	call	sqlite3ExprAlloc
.L6223:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	addi	sp,sp,80
	jr	ra
.L6229:
	mv	a1,s0
	mv	a0,s1
	call	sqlite3RenameExprUnmap
	j	.L6226
.L6224:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	li	a0,0
	addi	sp,sp,80
	jr	ra
.L6227:
	mv	a0,s0
	j	.L6223
	.size	sqlite3WindowOffsetExpr, .-sqlite3WindowOffsetExpr
	.section	.text.whereClauseInsert,"ax",@progbits
	.align	1
	.type	whereClauseInsert, @function
whereClauseInsert:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	lw	s4,20(a0)
	lw	a5,24(a0)
	ld	s3,32(a0)
	mv	s1,a0
	mv	s0,a1
	mv	s5,a2
	bge	s4,a5,.L6266
	addiw	a5,s4,1
	slli	s2,s4,6
	sw	a5,20(s1)
	add	s2,s3,s2
	beq	s0,zero,.L6238
.L6270:
	lw	a5,4(s0)
	slli	a4,a5,45
	li	a5,1
	blt	a4,zero,.L6267
.L6265:
	sh	a5,16(s2)
	li	a1,266240
	li	a3,262144
.L6248:
	lw	a5,4(s0)
	and	a4,a5,a1
	sext.w	a4,a4
	and	a5,a5,a3
	sext.w	a5,a5
	beq	a4,zero,.L6245
	beq	a5,zero,.L6246
	ld	a5,32(s0)
	ld	s0,8(a5)
	bne	s0,zero,.L6248
.L6249:
	li	s0,0
.L6245:
	sd	s0,0(s2)
	sh	s5,18(s2)
	sd	s1,8(s2)
	li	a2,44
	li	a1,0
	addi	a0,s2,20
	call	memset@plt
.L6263:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s5,8(sp)
	mv	a0,s4
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L6246:
	ld	s0,16(s0)
	bne	s0,zero,.L6248
	j	.L6249
.L6267:
	lw	s3,44(s0)
	li	a5,7
	bgtu	s3,a5,.L6240
	li	a4,1
	li	a5,-270
	bleu	s3,a4,.L6265
	li	a4,40
	li	a2,7
.L6242:
	addiw	a3,a4,-10
	mv	a5,a4
	slli	s3,s3,1
	slliw	a4,a3,16
	sraiw	a4,a4,16
	bleu	s3,a2,.L6242
	addiw	a5,a5,-20
	slliw	a5,a5,16
	sraiw	a5,a5,16
	j	.L6243
.L6266:
	ld	a4,0(a0)
	slli	a1,a5,7
	ld	a5,0(a4)
	ld	s2,0(a5)
	mv	a0,s2
	call	sqlite3DbMallocRawNN
	sd	a0,32(s1)
	beq	a0,zero,.L6268
	lw	a2,20(s1)
	mv	a1,s3
	slli	a2,a2,6
	call	memcpy@plt
	addi	a5,s1,40
	beq	s3,a5,.L6235
	mv	a1,s3
	mv	a0,s2
	call	sqlite3DbFreeNN
.L6235:
	ld	s3,32(s1)
	beq	s2,zero,.L6236
	ld	a5,400(s2)
	bgtu	a5,s3,.L6236
	ld	a5,408(s2)
	bgtu	a5,s3,.L6269
.L6236:
	mv	a0,s3
	ld	a5,.LANCHOR1+72
	jalr	a5
	ld	s3,32(s1)
.L6237:
	lw	s4,20(s1)
	srli	a5,a0,6
	sw	a5,24(s1)
	addiw	a5,s4,1
	slli	s2,s4,6
	sw	a5,20(s1)
	add	s2,s3,s2
	bne	s0,zero,.L6270
.L6238:
	li	a5,1
	sh	a5,16(s2)
	li	s0,0
	j	.L6245
.L6240:
	mv	a0,s3
	call	__clzdi2@plt
	li	a5,60
	subw	a0,a5,a0
	slliw	a5,a0,2
	addw	a5,a5,a0
	slliw	a5,a5,1
	addiw	a5,a5,30
	slliw	a5,a5,16
	srl	s3,s3,a0
	sraiw	a5,a5,16
.L6243:
	andi	s3,s3,7
	lla	a4,.LANCHOR2
	slli	s3,s3,1
	add	s3,a4,s3
	lhu	a4,1776(s3)
	addiw	a5,a5,-270
	addw	a5,a5,a4
	slliw	a5,a5,16
	sraiw	a5,a5,16
	j	.L6265
.L6268:
	andi	s5,s5,1
	beq	s5,zero,.L6233
	beq	s0,zero,.L6233
	mv	a1,s0
	mv	a0,s2
	call	sqlite3ExprDeleteNN
.L6233:
	sd	s3,32(s1)
	li	s4,0
	j	.L6263
.L6269:
	lhu	a0,364(s2)
	j	.L6237
	.size	whereClauseInsert, .-whereClauseInsert
	.section	.text.sqlite3WhereSplit,"ax",@progbits
	.align	1
	.type	sqlite3WhereSplit, @function
sqlite3WhereSplit:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	mv	s4,a0
	mv	s3,a2
	li	s2,266240
	li	s1,262144
.L6278:
	beq	a1,zero,.L6273
	mv	s0,a1
.L6272:
	lw	a5,4(s0)
	and	a4,a5,s2
	sext.w	a4,a4
	and	a5,a5,s1
	sext.w	a5,a5
	beq	a4,zero,.L6290
	beq	a5,zero,.L6274
	ld	a5,32(s0)
	ld	s0,8(a5)
	bne	s0,zero,.L6272
.L6273:
	sb	s3,16(s4)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L6274:
	ld	s0,16(s0)
	bne	s0,zero,.L6272
	j	.L6273
.L6290:
	sb	s3,16(s4)
	lbu	a5,0(s0)
	bne	a5,s3,.L6291
	ld	a1,16(s0)
	mv	a2,s3
	mv	a0,s4
	call	sqlite3WhereSplit
	ld	a1,24(s0)
	j	.L6278
.L6291:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	mv	a0,s4
	ld	s4,0(sp)
	li	a2,0
	addi	sp,sp,48
	tail	whereClauseInsert
	.size	sqlite3WhereSplit, .-sqlite3WhereSplit
	.section	.text.sqlite3WithDelete.part.0,"ax",@progbits
	.align	1
	.type	sqlite3WithDelete.part.0, @function
sqlite3WithDelete.part.0:
	addi	sp,sp,-48
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	lw	a5,0(a1)
	mv	s2,a1
	mv	s3,a0
	ble	a5,zero,.L6293
	li	s0,0
.L6297:
	slli	s1,s0,5
	add	a5,s2,s1
	ld	a1,24(a5)
	mv	a0,s3
	beq	a1,zero,.L6294
	call	exprListDeleteNN
.L6294:
	addi	a5,s0,1
	slli	a5,a5,5
	add	a5,s2,a5
	ld	a1,0(a5)
	addiw	s0,s0,1
	li	a2,1
	mv	a0,s3
	beq	a1,zero,.L6295
	call	clearSelect
.L6295:
	add	s1,s2,s1
	ld	a1,16(s1)
	mv	a0,s3
	beq	a1,zero,.L6296
	call	sqlite3DbFreeNN
.L6296:
	lw	a5,0(s2)
	bgt	a5,s0,.L6297
.L6293:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	mv	a1,s2
	mv	a0,s3
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
	.size	sqlite3WithDelete.part.0, .-sqlite3WithDelete.part.0
	.section	.text.sqlite3DeleteTriggerStep,"ax",@progbits
	.align	1
	.type	sqlite3DeleteTriggerStep, @function
sqlite3DeleteTriggerStep:
	beq	a1,zero,.L6337
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s2,a1
	mv	s1,a0
.L6316:
	ld	a1,32(s2)
	mv	s0,s2
	ld	s2,72(s2)
	beq	a1,zero,.L6311
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L6311:
	ld	a1,40(s0)
	beq	a1,zero,.L6312
	mv	a0,s1
	call	exprListDeleteNN
.L6312:
	ld	a1,16(s0)
	beq	a1,zero,.L6313
	li	a2,1
	mv	a0,s1
	call	clearSelect
.L6313:
	ld	a1,48(s0)
	beq	a1,zero,.L6314
	mv	a0,s1
	call	sqlite3IdListDelete.part.0
.L6314:
	ld	a1,56(s0)
	mv	a0,s1
	call	sqlite3UpsertDelete
	ld	a1,64(s0)
	beq	a1,zero,.L6315
	mv	a0,s1
	call	sqlite3DbFreeNN
.L6315:
	mv	a1,s0
	mv	a0,s1
	call	sqlite3DbFreeNN
	bne	s2,zero,.L6316
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L6337:
	ret
	.size	sqlite3DeleteTriggerStep, .-sqlite3DeleteTriggerStep
	.section	.text.sqlite3DeleteTrigger.part.0,"ax",@progbits
	.align	1
	.type	sqlite3DeleteTrigger.part.0, @function
sqlite3DeleteTrigger.part.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a1
	ld	a1,56(a1)
	mv	s1,a0
	call	sqlite3DeleteTriggerStep
	ld	a1,0(s0)
	beq	a1,zero,.L6341
	mv	a0,s1
	call	sqlite3DbFreeNN
.L6341:
	ld	a1,8(s0)
	beq	a1,zero,.L6342
	mv	a0,s1
	call	sqlite3DbFreeNN
.L6342:
	ld	a1,24(s0)
	beq	a1,zero,.L6343
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L6343:
	ld	a1,32(s0)
	beq	a1,zero,.L6344
	mv	a0,s1
	call	sqlite3IdListDelete.part.0
.L6344:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
	.size	sqlite3DeleteTrigger.part.0, .-sqlite3DeleteTrigger.part.0
	.section	.text.fkTriggerDelete,"ax",@progbits
	.align	1
	.type	fkTriggerDelete, @function
fkTriggerDelete:
	beq	a1,zero,.L6358
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	ld	s2,56(a1)
	mv	s0,a1
	mv	s1,a0
	ld	a1,32(s2)
	beq	a1,zero,.L6360
	call	sqlite3ExprDeleteNN
.L6360:
	ld	a1,40(s2)
	beq	a1,zero,.L6361
	mv	a0,s1
	call	exprListDeleteNN
.L6361:
	ld	a1,16(s2)
	beq	a1,zero,.L6362
	li	a2,1
	mv	a0,s1
	call	clearSelect
.L6362:
	ld	a1,24(s0)
	beq	a1,zero,.L6363
	mv	a0,s1
	call	sqlite3ExprDeleteNN
.L6363:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3DbFreeNN
.L6358:
	ret
	.size	fkTriggerDelete, .-fkTriggerDelete
	.section	.text.deleteTable,"ax",@progbits
	.align	1
	.type	deleteTable, @function
deleteTable:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	ld	s1,16(a1)
	mv	s2,a1
	mv	s0,a0
	bne	s1,zero,.L6380
	j	.L6385
.L6449:
	ld	a5,664(s0)
	beq	a5,zero,.L6383
.L6384:
	mv	a1,s3
	mv	a0,s0
	call	sqlite3FreeIndex
	beq	s1,zero,.L6385
.L6380:
	mv	s3,s1
	ld	s1,40(s1)
	bne	s0,zero,.L6449
.L6383:
	lw	a5,84(s2)
	bne	a5,zero,.L6384
	ld	a0,48(s3)
	ld	a1,0(s3)
	li	a2,0
	addi	a0,a0,32
	call	sqlite3HashInsert
	mv	a1,s3
	mv	a0,s0
	call	sqlite3FreeIndex
	bne	s1,zero,.L6380
.L6385:
	ld	s1,32(s2)
	beq	s1,zero,.L6382
	beq	s0,zero,.L6388
.L6450:
	ld	a5,664(s0)
	beq	a5,zero,.L6388
.L6389:
	ld	a1,48(s1)
	mv	a0,s0
	call	fkTriggerDelete
	ld	a1,56(s1)
	mv	a0,s0
	call	fkTriggerDelete
	ld	s3,8(s1)
	mv	a1,s1
	mv	a0,s0
	call	sqlite3DbFreeNN
	beq	s3,zero,.L6382
	mv	s1,s3
	bne	s0,zero,.L6450
.L6388:
	ld	a5,32(s1)
	ld	a2,24(s1)
	beq	a5,zero,.L6390
	sd	a2,24(a5)
.L6391:
	ld	a5,24(s1)
	beq	a5,zero,.L6389
	ld	a4,32(s1)
	sd	a4,32(a5)
	j	.L6389
.L6382:
	addi	a1,s2,8
	addi	a2,s2,70
	mv	a0,s0
	call	sqlite3DeleteColumnNames.isra.0
	ld	a1,0(s2)
	beq	a1,zero,.L6387
	mv	a0,s0
	call	sqlite3DbFreeNN
.L6387:
	ld	a1,40(s2)
	beq	a1,zero,.L6395
	mv	a0,s0
	call	sqlite3DbFreeNN
.L6395:
	ld	a1,24(s2)
	beq	a1,zero,.L6396
	li	a2,1
	mv	a0,s0
	call	clearSelect
.L6396:
	ld	a1,48(s2)
	mv	a0,s0
	call	sqlite3ExprListDelete
	beq	s0,zero,.L6397
	ld	a5,664(s0)
	beq	a5,zero,.L6397
.L6400:
	ld	a4,88(s2)
	beq	a4,zero,.L6404
	lw	a3,84(s2)
	sext.w	a5,a3
	ble	a5,zero,.L6405
	li	s1,0
	li	s3,1
.L6407:
	slli	a5,s1,3
	add	a5,a4,a5
	beq	s1,s3,.L6406
	ld	a1,0(a5)
	mv	a0,s0
	beq	a1,zero,.L6406
	call	sqlite3DbFreeNN
	lw	a3,84(s2)
	ld	a4,88(s2)
.L6406:
	addiw	s1,s1,1
	sext.w	a5,a3
	bgt	a5,s1,.L6407
	bne	a4,zero,.L6405
.L6404:
	mv	a0,s0
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s3,8(sp)
	mv	a1,s2
	ld	s2,16(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
.L6397:
	ld	a5,96(s2)
	sd	zero,96(s2)
.L6448:
	beq	a5,zero,.L6400
	ld	a4,0(a5)
	mv	a3,a5
	ld	a5,40(a5)
	beq	a4,zero,.L6451
	ld	a2,480(a4)
	sd	a2,40(a3)
	sd	a3,480(a4)
	j	.L6448
.L6451:
	sd	a3,96(s2)
	sd	zero,40(a3)
	j	.L6448
.L6390:
	beq	a2,zero,.L6392
	ld	a1,16(a2)
.L6393:
	ld	a0,112(s2)
	addi	a0,a0,80
	call	sqlite3HashInsert
	j	.L6391
.L6405:
	mv	a1,a4
	mv	a0,s0
	call	sqlite3DbFreeNN
	j	.L6404
.L6392:
	ld	a1,16(s1)
	j	.L6393
	.size	deleteTable, .-deleteTable
	.section	.text.sqlite3DeleteTable,"ax",@progbits
	.align	1
	.type	sqlite3DeleteTable, @function
sqlite3DeleteTable:
	beq	a1,zero,.L6452
	beq	a0,zero,.L6455
	ld	a5,664(a0)
	beq	a5,zero,.L6455
.L6457:
	tail	deleteTable
.L6455:
	lw	a5,60(a1)
	addiw	a4,a5,-1
	sw	a4,60(a1)
	beq	a4,zero,.L6457
.L6452:
	ret
	.size	sqlite3DeleteTable, .-sqlite3DeleteTable
	.section	.text.sqlite3_db_status,"ax",@progbits
	.align	1
	.globl	sqlite3_db_status
	.type	sqlite3_db_status, @function
sqlite3_db_status:
	li	a5,12
	bgtu	a1,a5,.L6507
	addi	sp,sp,-112
	sd	s2,80(sp)
	sd	s3,72(sp)
	mv	s2,a3
	mv	s3,a2
	slli	a3,a1,2
	lla	a2,.L6467
	add	a3,a3,a2
	lw	a5,0(a3)
	sd	s0,96(sp)
	sd	s1,88(sp)
	add	a5,a5,a2
	sd	ra,104(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s7,40(sp)
	sd	s8,32(sp)
	sd	s9,24(sp)
	sd	s10,16(sp)
	mv	s1,a1
	mv	s0,a0
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L6467:
	.word	.L6474-.L6467
	.word	.L6468-.L6467
	.word	.L6473-.L6467
	.word	.L6472-.L6467
	.word	.L6471-.L6467
	.word	.L6471-.L6467
	.word	.L6471-.L6467
	.word	.L6470-.L6467
	.word	.L6470-.L6467
	.word	.L6470-.L6467
	.word	.L6469-.L6467
	.word	.L6468-.L6467
	.word	.L6466-.L6467
	.section	.text.sqlite3_db_status
.L6466:
	li	s1,10
.L6470:
	lw	a0,40(s0)
	sext.w	a5,a0
	ble	a5,zero,.L6514
	addiw	s1,s1,-7
	li	a2,0
	li	a5,0
	slli	s1,s1,2
.L6505:
	ld	a1,32(s0)
	slli	a3,a5,5
	add	a1,a1,a3
	ld	a3,8(a1)
	beq	a3,zero,.L6504
	ld	a3,8(a3)
	ld	a3,0(a3)
	add	a3,a3,s1
	lw	a1,240(a3)
	addw	a2,a1,a2
	beq	a4,zero,.L6504
	sw	zero,240(a3)
	lw	a0,40(s0)
.L6504:
	addiw	a5,a5,1
	sext.w	a3,a0
	bgt	a3,a5,.L6505
.L6503:
	sw	zero,0(s2)
	sw	a2,0(s3)
	li	a0,0
.L6465:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	ld	s10,16(sp)
	addi	sp,sp,112
	jr	ra
.L6471:
	addiw	s1,a1,-4
	slli	s1,s1,2
	sw	zero,0(s3)
	add	s0,a0,s1
	lw	a5,372(s0)
	sw	a5,0(s2)
	beq	a4,zero,.L6562
	sw	zero,372(s0)
.L6562:
	li	a0,0
	j	.L6465
.L6468:
	lw	a4,40(a0)
	li	a5,0
	ble	a4,zero,.L6486
.L6475:
	ld	a4,32(s0)
	slli	a3,a5,5
	add	a4,a4,a3
	ld	a4,8(a4)
	beq	a4,zero,.L6485
	ld	a3,8(a4)
	ld	a4,0(a4)
	sd	a4,8(a3)
.L6485:
	lw	a4,40(s0)
	addiw	a5,a5,1
	blt	a5,a4,.L6475
	ble	a4,zero,.L6486
	li	s5,0
	li	s9,0
	lla	s10,.LANCHOR1
	li	s6,11
.L6489:
	ld	a5,32(s0)
	slli	a4,s5,5
	add	a5,a5,a4
	ld	s8,8(a5)
	beq	s8,zero,.L6487
	ld	a4,8(s8)
	ld	a5,232(s10)
	ld	s7,0(a4)
	ld	a3,280(s7)
	lw	a4,188(s7)
	lhu	s4,176(s7)
	ld	a0,64(a3)
	addw	s4,s4,a4
	addiw	s4,s4,112
	jalr	a5
	mulw	s4,s4,a0
	ld	a5,72(s10)
	mv	a0,s7
	jalr	a5
	lw	a5,188(s7)
	addw	a5,a5,a0
	addw	a5,a5,s4
	mv	s4,a5
	beq	s1,s6,.L6564
.L6488:
	addw	s9,a5,s9
.L6487:
	lw	a5,40(s0)
	addiw	s5,s5,1
	bgt	a5,s5,.L6489
.L6476:
	sw	s9,0(s3)
	sw	zero,0(s2)
	li	a0,0
	j	.L6465
.L6564:
	ld	a5,8(s8)
	lw	a5,96(a5)
	divw	a5,s4,a5
	j	.L6488
.L6472:
	ld	s1,8(a0)
	addi	a5,sp,12
	sw	zero,12(sp)
	sd	a5,664(a0)
	beq	s1,zero,.L6513
.L6502:
	mv	a1,s1
	mv	a0,s0
	call	sqlite3VdbeClearObject
	mv	a1,s1
	mv	a0,s0
	call	sqlite3DbFreeNN
	ld	s1,16(s1)
	bne	s1,zero,.L6502
.L6563:
	lw	a5,12(sp)
.L6501:
	sd	zero,664(s0)
	sw	zero,0(s2)
	sw	a5,0(s3)
	li	a0,0
	j	.L6465
.L6474:
	ld	a5,384(a0)
	li	a3,0
	beq	a5,zero,.L6477
.L6478:
	ld	a5,0(a5)
	addiw	a3,a3,1
	bne	a5,zero,.L6478
.L6477:
	ld	a5,392(s0)
	li	a2,0
	beq	a5,zero,.L6479
.L6480:
	ld	a5,0(a5)
	addiw	a2,a2,1
	bne	a5,zero,.L6480
.L6479:
	lw	a1,368(s0)
	subw	a5,a1,a3
	beq	s2,zero,.L6481
	sw	a5,0(s2)
	lw	a5,368(s0)
	subw	a5,a5,a3
.L6481:
	subw	a2,a5,a2
	sw	a2,0(s3)
	beq	a4,zero,.L6562
	ld	a5,392(s0)
	beq	a5,zero,.L6562
.L6484:
	mv	a4,a5
	ld	a5,0(a5)
	bne	a5,zero,.L6484
	ld	a5,384(s0)
	mv	a0,s1
	sd	a5,0(a4)
	ld	a5,392(s0)
	sd	zero,392(s0)
	sd	a5,384(s0)
	j	.L6465
.L6473:
	lw	a5,40(a0)
	sw	zero,12(sp)
	ble	a5,zero,.L6513
	li	a5,0
.L6492:
	ld	a4,32(s0)
	slli	a3,a5,5
	add	a4,a4,a3
	ld	a4,8(a4)
	beq	a4,zero,.L6491
	ld	a3,8(a4)
	ld	a4,0(a4)
	sd	a4,8(a3)
.L6491:
	lw	a4,40(s0)
	addiw	a5,a5,1
	blt	a5,a4,.L6492
	addi	a5,sp,12
	sd	a5,664(s0)
	ble	a4,zero,.L6513
	li	s5,0
	lla	s6,.LANCHOR1
	j	.L6494
.L6498:
	lw	a5,40(s0)
	addiw	s5,s5,1
	ble	a5,s5,.L6563
.L6494:
	ld	a5,32(s0)
	slli	a4,s5,5
	add	a5,a5,a4
	ld	s4,24(a5)
	beq	s4,zero,.L6498
	ld	a5,80(s6)
	li	a0,32
	jalr	a5
	lw	a2,60(s4)
	lw	a5,12(s4)
	lw	a3,36(s4)
	lw	a4,84(s4)
	addw	a5,a5,a2
	addw	a5,a5,a3
	addw	a5,a5,a4
	mulw	a5,a5,a0
	lw	a0,12(sp)
	addw	a5,a0,a5
	sw	a5,12(sp)
	ld	a0,24(s4)
	call	sqlite3_msize@plt
	lw	a5,12(sp)
	addw	a5,a5,a0
	sw	a5,12(sp)
	ld	a0,72(s4)
	call	sqlite3_msize@plt
	lw	a5,12(sp)
	addw	a5,a5,a0
	sw	a5,12(sp)
	ld	a0,48(s4)
	call	sqlite3_msize@plt
	lw	a5,12(sp)
	addw	a5,a5,a0
	sw	a5,12(sp)
	ld	a0,96(s4)
	call	sqlite3_msize@plt
	lw	a5,12(sp)
	addw	a5,a5,a0
	sw	a5,12(sp)
	ld	s1,64(s4)
	beq	s1,zero,.L6500
.L6496:
	ld	a1,16(s1)
	beq	a1,zero,.L6499
	mv	a0,s0
	call	sqlite3DeleteTrigger.part.0
.L6499:
	ld	s1,0(s1)
	bne	s1,zero,.L6496
.L6500:
	ld	s1,16(s4)
	beq	s1,zero,.L6498
.L6497:
	ld	a1,16(s1)
	mv	a0,s0
	call	sqlite3DeleteTable
	ld	s1,0(s1)
	bne	s1,zero,.L6497
	j	.L6498
.L6469:
	sw	zero,0(s2)
	ld	a4,656(a0)
	li	a5,1
	bgt	a4,zero,.L6506
	ld	a5,648(a0)
	sgt	a5,a5,zero
.L6506:
	sw	a5,0(s3)
	li	a0,0
	j	.L6465
.L6514:
	li	a2,0
	j	.L6503
.L6513:
	li	a5,0
	j	.L6501
.L6486:
	li	s9,0
	j	.L6476
.L6507:
	li	a0,1
	ret
	.size	sqlite3_db_status, .-sqlite3_db_status
	.section	.text.sqlite3SchemaClear,"ax",@progbits
	.align	1
	.type	sqlite3SchemaClear, @function
sqlite3SchemaClear:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	ra,72(sp)
	ld	a3,56(a0)
	ld	a4,64(a0)
	ld	a5,72(a0)
	ld	a6,8(a0)
	ld	a1,16(a0)
	ld	a2,24(a0)
	sd	zero,56(a0)
	sd	zero,64(a0)
	sd	zero,72(a0)
	mv	s1,a0
	addi	a0,a0,32
	sd	a6,0(sp)
	sd	a1,8(sp)
	sd	a2,16(sp)
	sd	a3,24(sp)
	sd	a4,32(sp)
	sd	a5,40(sp)
	call	sqlite3HashClear
	ld	s0,32(sp)
	beq	s0,zero,.L6566
.L6568:
	ld	a1,16(s0)
	li	a0,0
	beq	a1,zero,.L6567
	call	sqlite3DeleteTrigger.part.0
.L6567:
	ld	s0,0(s0)
	bne	s0,zero,.L6568
.L6566:
	addi	a0,sp,24
	call	sqlite3HashClear
	ld	s0,8(sp)
	sd	zero,8(s1)
	sd	zero,16(s1)
	sd	zero,24(s1)
	beq	s0,zero,.L6569
.L6573:
	ld	a4,16(s0)
	li	a0,0
	mv	a1,a4
	beq	a4,zero,.L6571
	lw	a5,60(a4)
	addiw	a5,a5,-1
	sw	a5,60(a4)
	bne	a5,zero,.L6571
	call	deleteTable
.L6571:
	ld	s0,0(s0)
	bne	s0,zero,.L6573
.L6569:
	mv	a0,sp
	call	sqlite3HashClear
	addi	a0,s1,80
	call	sqlite3HashClear
	lhu	a5,114(s1)
	sd	zero,104(s1)
	andi	a4,a5,1
	beq	a4,zero,.L6574
	lw	a4,4(s1)
	addiw	a4,a4,1
	sw	a4,4(s1)
.L6574:
	andi	a5,a5,-10
	sh	a5,114(s1)
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	addi	sp,sp,80
	jr	ra
	.size	sqlite3SchemaClear, .-sqlite3SchemaClear
	.section	.text.sqlite3ResetOneSchema.part.0,"ax",@progbits
	.align	1
	.type	sqlite3ResetOneSchema.part.0, @function
sqlite3ResetOneSchema.part.0:
	lw	a3,40(a0)
	sext.w	a5,a3
	ble	a5,zero,.L6599
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	li	s0,0
	j	.L6593
.L6592:
	sext.w	a5,a3
	ble	a5,s0,.L6602
.L6593:
	ld	a4,32(s1)
	slli	a5,s0,5
	addiw	s0,s0,1
	add	a5,a4,a5
	ld	a0,24(a5)
	lhu	a5,114(a0)
	andi	a5,a5,8
	beq	a5,zero,.L6592
	call	sqlite3SchemaClear
	lw	a3,40(s1)
	sext.w	a5,a3
	bgt	a5,s0,.L6593
.L6602:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6599:
	ret
	.size	sqlite3ResetOneSchema.part.0, .-sqlite3ResetOneSchema.part.0
	.section	.text.sqlite3ResetOneSchema,"ax",@progbits
	.align	1
	.type	sqlite3ResetOneSchema, @function
sqlite3ResetOneSchema:
	blt	a1,zero,.L6604
	ld	a5,32(a0)
	slli	a1,a1,5
	add	a1,a5,a1
	ld	a4,24(a1)
	lhu	a5,114(a4)
	ori	a5,a5,8
	sh	a5,114(a4)
	ld	a5,32(a0)
	ld	a4,56(a5)
	lhu	a5,114(a4)
	ori	a5,a5,8
	sh	a5,114(a4)
	lw	a5,44(a0)
	andi	a5,a5,-17
	sw	a5,44(a0)
.L6604:
	lw	a5,72(a0)
	bne	a5,zero,.L6603
	tail	sqlite3ResetOneSchema.part.0
.L6603:
	ret
	.size	sqlite3ResetOneSchema, .-sqlite3ResetOneSchema
	.section	.text.sqlite3ResetAllSchemasOfConnection,"ax",@progbits
	.align	1
	.type	sqlite3ResetAllSchemasOfConnection, @function
sqlite3ResetAllSchemasOfConnection:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lw	a4,40(a0)
	mv	s0,a0
	li	a5,0
	ble	a4,zero,.L6611
.L6607:
	ld	a3,32(s0)
	slli	a4,a5,5
	addiw	a5,a5,1
	add	a4,a3,a4
	ld	a4,8(a4)
	beq	a4,zero,.L6610
	ld	a3,8(a4)
	ld	a4,0(a4)
	sd	a4,8(a3)
.L6610:
	lw	a4,40(s0)
	blt	a5,a4,.L6607
	ble	a4,zero,.L6611
	li	s1,0
	j	.L6614
.L6613:
	lhu	a5,114(a0)
	ori	a5,a5,8
	sh	a5,114(a0)
.L6612:
	lw	a5,40(s0)
	addiw	s1,s1,1
	ble	a5,s1,.L6611
.L6614:
	ld	a5,32(s0)
	slli	a4,s1,5
	add	a5,a5,a4
	ld	a0,24(a5)
	beq	a0,zero,.L6612
	lw	a5,72(s0)
	bne	a5,zero,.L6613
	call	sqlite3SchemaClear
	lw	a5,40(s0)
	addiw	s1,s1,1
	bgt	a5,s1,.L6614
.L6611:
	lw	a5,44(s0)
	mv	a0,s0
	andi	a5,a5,-18
	sw	a5,44(s0)
	call	sqlite3VtabUnlockList
	lw	a5,72(s0)
	beq	a5,zero,.L6628
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6628:
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3CollapseDatabaseArray
	.size	sqlite3ResetAllSchemasOfConnection, .-sqlite3ResetAllSchemasOfConnection
	.section	.text.yy_destructor.isra.0,"ax",@progbits
	.align	1
	.type	yy_destructor.isra.0, @function
yy_destructor.isra.0:
	addiw	a1,a1,-195
	slli	a4,a1,48
	srli	a4,a4,48
	li	a5,104
	bgtu	a4,a5,.L6669
	mv	a1,a4
	slli	a1,a1,2
	lla	a4,.L6632
	add	a1,a1,a4
	lw	a5,0(a1)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L6632:
	.word	.L6641-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6633-.L6632
	.word	.L6633-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6634-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6634-.L6632
	.word	.L6634-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6640-.L6632
	.word	.L6641-.L6632
	.word	.L6641-.L6632
	.word	.L6642-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6634-.L6632
	.word	.L6640-.L6632
	.word	.L6633-.L6632
	.word	.L6634-.L6632
	.word	.L6633-.L6632
	.word	.L6634-.L6632
	.word	.L6669-.L6632
	.word	.L6636-.L6632
	.word	.L6641-.L6632
	.word	.L6634-.L6632
	.word	.L6634-.L6632
	.word	.L6669-.L6632
	.word	.L6640-.L6632
	.word	.L6640-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6633-.L6632
	.word	.L6639-.L6632
	.word	.L6634-.L6632
	.word	.L6640-.L6632
	.word	.L6639-.L6632
	.word	.L6669-.L6632
	.word	.L6634-.L6632
	.word	.L6669-.L6632
	.word	.L6639-.L6632
	.word	.L6669-.L6632
	.word	.L6635-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6634-.L6632
	.word	.L6633-.L6632
	.word	.L6634-.L6632
	.word	.L6633-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6633-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6637-.L6632
	.word	.L6669-.L6632
	.word	.L6638-.L6632
	.word	.L6669-.L6632
	.word	.L6633-.L6632
	.word	.L6637-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6633-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6669-.L6632
	.word	.L6636-.L6632
	.word	.L6635-.L6632
	.word	.L6635-.L6632
	.word	.L6635-.L6632
	.word	.L6634-.L6632
	.word	.L6633-.L6632
	.word	.L6669-.L6632
	.word	.L6631-.L6632
	.word	.L6631-.L6632
	.word	.L6631-.L6632
	.section	.text.yy_destructor.isra.0
.L6641:
	ld	a1,0(a2)
	bne	a1,zero,.L6673
.L6669:
	ret
.L6634:
	ld	a1,0(a2)
	beq	a1,zero,.L6669
	ld	a0,0(a0)
	tail	exprListDeleteNN
.L6633:
	ld	a1,0(a2)
	beq	a1,zero,.L6669
.L6671:
	ld	a0,0(a0)
	tail	sqlite3ExprDeleteNN
.L6640:
	ld	a1,0(a2)
	ld	a0,0(a0)
	tail	sqlite3SrcListDelete
.L6635:
	ld	a1,0(a2)
	ld	a0,0(a0)
	tail	sqlite3WindowDelete
.L6639:
	ld	a1,0(a2)
	beq	a1,zero,.L6669
.L6672:
	ld	a0,0(a0)
	tail	sqlite3IdListDelete.part.0
.L6631:
	ld	a1,0(a3)
	bne	a1,zero,.L6671
	j	.L6669
.L6636:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	ld	s0,0(a2)
	ld	s1,0(a0)
	beq	s0,zero,.L6629
.L6645:
	mv	a1,s0
	ld	s0,56(s0)
	mv	a0,s1
	call	sqlite3WindowDelete
	bne	s0,zero,.L6645
.L6629:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6637:
	ld	a1,0(a2)
	ld	a0,0(a0)
	tail	sqlite3DeleteTriggerStep
.L6642:
	ld	a1,0(a2)
	beq	a1,zero,.L6669
	ld	a0,0(a0)
	tail	sqlite3WithDelete.part.0
.L6638:
	ld	a1,0(a3)
	bne	a1,zero,.L6672
	j	.L6669
.L6673:
	ld	a0,0(a0)
	li	a2,1
	tail	clearSelect
	.size	yy_destructor.isra.0, .-yy_destructor.isra.0
	.section	.text.dupedExprNodeSize,"ax",@progbits
	.align	1
	.type	dupedExprNodeSize, @function
dupedExprNodeSize:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lw	a5,4(a0)
	li	s0,72
	beq	a1,zero,.L6675
	lbu	a3,0(a0)
	li	a4,170
	beq	a3,a4,.L6675
	slli	a4,a5,39
	bge	a4,zero,.L6687
.L6675:
	andi	a5,a5,1024
	bne	a5,zero,.L6676
	ld	a0,8(a0)
	beq	a0,zero,.L6676
	call	strlen@plt
	slli	a0,a0,34
	srli	a0,a0,34
	addiw	s0,s0,1
	addw	s0,s0,a0
.L6676:
	ld	ra,8(sp)
	addiw	a0,s0,7
	ld	s0,0(sp)
	andi	a0,a0,-8
	sext.w	a0,a0
	addi	sp,sp,16
	jr	ra
.L6687:
	ld	a4,16(a0)
	li	s0,44
	bne	a4,zero,.L6675
	ld	a4,32(a0)
	bne	a4,zero,.L6675
	li	s0,16
	j	.L6675
	.size	dupedExprNodeSize, .-dupedExprNodeSize
	.section	.text.dupedExprSize,"ax",@progbits
	.align	1
	.type	dupedExprSize, @function
dupedExprSize:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	beq	a0,zero,.L6692
	mv	s0,a0
	mv	s2,a1
	andi	s4,a1,1
	li	s3,0
.L6691:
	mv	a1,s2
	mv	a0,s0
	call	dupedExprNodeSize
	mv	a1,s2
	mv	s1,a0
	beq	s4,zero,.L6695
	ld	a0,16(s0)
	call	dupedExprSize
	ld	s0,24(s0)
	addw	a0,a0,s1
	addw	s3,a0,s3
	bne	s0,zero,.L6691
.L6689:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s4,0(sp)
	mv	a0,s3
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L6695:
	addw	s3,a0,s3
	j	.L6689
.L6692:
	li	s3,0
	j	.L6689
	.size	dupedExprSize, .-dupedExprSize
	.section	.text.sqlite3ExprAddCollateString,"ax",@progbits
	.align	1
	.type	sqlite3ExprAddCollateString, @function
sqlite3ExprAddCollateString:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	a2,0(sp)
	mv	s0,a1
	beq	a2,zero,.L6699
	mv	s1,a0
	mv	a0,a2
	call	strlen@plt
	slli	a5,a0,34
	srli	a5,a5,34
	sw	a5,8(sp)
	bne	a5,zero,.L6707
.L6699:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L6707:
	ld	a0,0(s1)
	li	a3,0
	mv	a2,sp
	li	a1,106
	call	sqlite3ExprAlloc
	beq	a0,zero,.L6699
	lw	a5,4(a0)
	li	a4,4096
	addi	a4,a4,256
	or	a5,a5,a4
	sd	s0,16(a0)
	sw	a5,4(a0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3ExprAddCollateString, .-sqlite3ExprAddCollateString
	.section	.text.exprTableRegister.isra.0,"ax",@progbits
	.align	1
	.type	exprTableRegister.isra.0, @function
exprTableRegister.isra.0:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s5,24(sp)
	sd	ra,72(sp)
	sd	s4,32(sp)
	ld	s4,0(a0)
	mv	s2,a0
	mv	s5,a1
	mv	s3,a2
	mv	s1,a3
	mv	a2,sp
	li	a3,0
	li	a1,168
	mv	a0,s4
	mv	s0,a4
	sd	zero,0(sp)
	sw	zero,8(sp)
	call	sqlite3ExprAlloc
	beq	a0,zero,.L6708
	sext.w	a5,s0
	blt	s0,zero,.L6710
	lh	a4,0(s3)
	beq	a4,a5,.L6710
	ld	a5,0(s5)
	addiw	s1,s1,1
	slli	a4,s0,5
	addw	s0,s1,s0
	add	a5,a5,a4
	sw	s0,44(a0)
	lbu	a4,25(a5)
	sb	a4,1(a0)
	ld	a2,16(a5)
	beq	a2,zero,.L6716
.L6711:
	mv	a1,a0
	mv	a0,s2
	call	sqlite3ExprAddCollateString
.L6708:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	addi	sp,sp,80
	jr	ra
.L6710:
	li	a5,68
	sw	s1,44(a0)
	sb	a5,1(a0)
	j	.L6708
.L6716:
	ld	a5,16(s4)
	ld	a2,0(a5)
	j	.L6711
	.size	exprTableRegister.isra.0, .-exprTableRegister.isra.0
	.section	.text.vdbePmaReaderNext,"ax",@progbits
	.align	1
	.type	vdbePmaReaderNext, @function
vdbePmaReaderNext:
	addi	sp,sp,-144
	sd	s2,112(sp)
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	s6,80(sp)
	sd	s7,72(sp)
	ld	a4,0(a0)
	ld	a5,8(a0)
	sd	zero,8(sp)
	mv	s2,a0
	blt	a4,a5,.L6718
	ld	s0,72(a0)
	beq	s0,zero,.L6719
	ld	a5,0(s0)
	ld	s3,16(s0)
	ld	s6,8(s0)
	ld	a5,16(a5)
	addi	s4,sp,16
	ld	s5,56(s0)
	lw	s1,12(a5)
	sd	zero,16(sp)
	sd	zero,8(s4)
	mv	a0,s1
	sd	zero,16(s4)
	sd	zero,24(s4)
	sd	zero,32(s4)
	sd	zero,40(s4)
	call	sqlite3Malloc
	sd	a0,24(sp)
	beq	a0,zero,.L6751
	rem	a5,s3,s1
	sw	s1,32(sp)
	sd	s5,56(sp)
	sext.w	a4,a5
	sub	a5,s3,a5
	sw	a4,36(sp)
	sw	a4,40(sp)
	sd	a5,48(sp)
.L6721:
	addi	s7,sp,4
.L6726:
	ld	a3,16(s6)
	ld	s1,24(s6)
	lw	a2,4(a3)
	slli	a3,a2,2
	add	a3,a3,a2
	slli	a3,a3,4
	add	s1,s1,a3
	ld	a3,24(s1)
	lw	s5,20(s1)
	beq	a3,zero,.L6722
	add	a5,s5,a5
	srli	a3,s5,7
	add	a4,a5,a4
	li	a5,1
	beq	a3,zero,.L6723
.L6724:
	srli	a3,a3,7
	addiw	a5,a5,1
	bne	a3,zero,.L6724
.L6723:
	lw	a3,24(s0)
	add	a5,a4,a5
	add	a4,a3,s3
	bgt	a5,a4,.L6722
	mv	a1,s5
	mv	a0,s4
	call	vdbePmaWriteVarint
	ld	a1,40(s1)
	mv	a2,s5
	mv	a0,s4
	call	vdbePmaWriteBlob
	ld	a0,8(s0)
	mv	a1,s7
	call	vdbeMergeEngineStep
	mv	s1,a0
	bne	a0,zero,.L6725
	ld	a5,48(sp)
	lw	a4,40(sp)
	j	.L6726
.L6722:
	addi	a1,s0,64
	mv	a0,s4
	call	vdbePmaWriterFinish
	ld	a4,56(s0)
	ld	a5,64(s0)
	ld	a3,16(s0)
	sd	a4,40(s0)
	sd	a5,48(s0)
	mv	s1,a0
	beq	a5,a3,.L6752
	bne	a0,zero,.L6730
	lw	a5,28(s0)
	bne	a5,zero,.L6719
	ld	a0,0(s0)
	addi	a2,s0,40
	mv	a1,s2
	call	vdbePmaReaderSeek
	mv	s1,a0
	bne	a0,zero,.L6735
.L6718:
	addi	a1,sp,8
	mv	a0,s2
	call	vdbePmaReadVarint
	mv	s1,a0
	bne	a0,zero,.L6735
	lw	a1,8(sp)
	ld	a5,64(s2)
	sw	a1,20(s2)
	beq	a5,zero,.L6732
	ld	a4,0(s2)
	add	a5,a5,a4
	add	a1,a1,a4
	sd	a5,40(s2)
	sd	a1,0(s2)
.L6735:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	mv	a0,s1
	ld	s1,120(sp)
	addi	sp,sp,144
	jr	ra
.L6752:
	li	a5,1
	sw	a5,28(s0)
	bne	a0,zero,.L6730
.L6719:
	li	s1,0
.L6730:
	mv	a0,s2
	call	vdbePmaReaderClear
	j	.L6735
.L6751:
	li	a3,7
	ld	a5,48(sp)
	lw	a4,40(sp)
	sw	a3,16(sp)
	j	.L6721
.L6732:
	addi	a2,s2,40
	mv	a0,s2
	call	vdbePmaReadBlob.part.0
	mv	s1,a0
	j	.L6735
.L6725:
	addi	a1,s0,64
	mv	a0,s4
	call	vdbePmaWriterFinish
	ld	a3,56(s0)
	ld	a5,64(s0)
	ld	a4,16(s0)
	sd	a3,40(s0)
	sd	a5,48(s0)
	bne	a4,a5,.L6730
	li	a5,1
	sw	a5,28(s0)
	j	.L6730
	.size	vdbePmaReaderNext, .-vdbePmaReaderNext
	.section	.text.vdbeMergeEngineStep,"ax",@progbits
	.align	1
	.type	vdbeMergeEngineStep, @function
vdbeMergeEngineStep:
	addi	sp,sp,-96
	sd	s0,80(sp)
	sd	s2,64(sp)
	sd	ra,88(sp)
	sd	s1,72(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	ld	a5,16(a0)
	mv	s2,a0
	ld	a0,24(a0)
	lw	s1,4(a5)
	ld	s3,8(s2)
	mv	s0,a1
	slli	a5,s1,2
	add	a5,a5,s1
	slli	a5,a5,4
	add	a0,a0,a5
	call	vdbePmaReaderNext
	bne	a0,zero,.L6754
	lw	a3,0(s2)
	li	a2,65536
	addi	a2,a2,-2
	and	a2,s1,a2
	ori	a1,s1,1
	ld	a5,24(s2)
	addw	a3,a3,s1
	slli	a4,a2,2
	slli	s6,a1,2
	add	a4,a4,a2
	add	s6,s6,a1
	srliw	s1,a3,31
	slli	a4,a4,4
	slli	s6,s6,4
	addw	s1,s1,a3
	sw	zero,12(sp)
	li	a2,1
	add	s7,a5,a4
	add	s6,a5,s6
	sraiw	s1,s1,1
	ble	a3,a2,.L6775
	ld	s4,.LC39
	addi	s5,sp,12
	j	.L6763
.L6758:
	ld	a6,64(s3)
	lw	a5,20(s6)
	ld	a4,40(s6)
	lw	a3,20(s7)
	ld	a2,40(s7)
	mv	a1,s5
	mv	a0,s3
	jalr	a6
	blt	a0,zero,.L6774
	bne	a0,zero,.L6761
	bltu	s7,s6,.L6774
.L6761:
	ld	a5,24(s7)
	beq	a5,zero,.L6776
	ld	a5,24(s2)
	sw	zero,12(sp)
.L6757:
	sub	a5,s6,a5
	srai	a5,a5,4
	mul	a5,a5,s4
	ld	a2,16(s2)
	slli	a3,s1,2
	xori	a4,s1,1
	add	a3,a2,a3
	slli	a4,a4,2
	srai	s1,s1,1
	sw	a5,0(a3)
	ld	a3,16(s2)
	ld	a5,24(s2)
	add	a4,a3,a4
	lw	a2,0(a4)
	slli	a4,a2,2
	add	a4,a4,a2
	slli	a4,a4,4
	add	s7,a5,a4
	beq	s1,zero,.L6755
.L6763:
	ld	a4,24(s7)
	beq	a4,zero,.L6757
	ld	a4,24(s6)
	bne	a4,zero,.L6758
.L6760:
	sub	a5,s7,a5
	srai	a5,a5,4
	mul	a5,a5,s4
	ld	a2,16(s2)
	slli	a3,s1,2
	xori	a4,s1,1
	add	a3,a2,a3
	slli	a4,a4,2
	srai	s1,s1,1
	sw	a5,0(a3)
	ld	a3,16(s2)
	ld	a5,24(s2)
	add	a4,a3,a4
	lw	a2,0(a4)
	sw	zero,12(sp)
	slli	a4,a2,2
	add	a4,a4,a2
	slli	a4,a4,4
	add	s6,a5,a4
	bne	s1,zero,.L6763
.L6755:
	lw	a3,4(a3)
	slli	a4,a3,2
	add	a4,a4,a3
	slli	a4,a4,4
	add	a5,a5,a4
	ld	a5,24(a5)
	seqz	a5,a5
	sw	a5,0(s0)
	ld	a5,24(s3)
	lbu	a0,19(a5)
.L6754:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	addi	sp,sp,96
	jr	ra
.L6774:
	ld	a5,24(s2)
	j	.L6760
.L6775:
	ld	a3,16(s2)
	j	.L6755
.L6776:
	ld	a5,24(s2)
	j	.L6757
	.size	vdbeMergeEngineStep, .-vdbeMergeEngineStep
	.section	.text.vdbeMergeEngineLevel0,"ax",@progbits
	.align	1
	.type	vdbeMergeEngineLevel0, @function
vdbeMergeEngineLevel0:
	addi	sp,sp,-128
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s9,40(sp)
	sd	s10,32(sp)
	mv	s8,a3
	ld	a3,0(a2)
	mv	s3,a0
	mv	a0,a1
	sd	a3,8(sp)
	mv	s6,a1
	mv	s7,a2
	call	vdbeMergeEngineNew
	sd	a0,0(s8)
	ld	a3,8(sp)
	mv	s2,a0
	beq	a0,zero,.L6785
	ble	s6,zero,.L6786
	addi	s4,s3,72
	li	s1,0
	li	s5,0
	addi	s9,sp,24
.L6782:
	ld	s10,24(s2)
	mv	a2,s4
	mv	a0,s3
	add	s10,s10,s1
	mv	a1,s10
	call	vdbePmaReaderSeek
	mv	s0,a0
	beq	a0,zero,.L6794
	ld	a3,8(s10)
.L6778:
	mv	a0,s2
	sd	a3,8(sp)
	call	vdbeMergeEngineFree
	ld	a3,8(sp)
	sd	zero,0(s8)
.L6779:
	sd	a3,0(s7)
	ld	ra,120(sp)
	mv	a0,s0
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	addi	sp,sp,128
	jr	ra
.L6794:
	mv	a1,s9
	mv	a0,s10
	sd	zero,24(sp)
	call	vdbePmaReadVarint
	ld	a3,0(s10)
	ld	a5,24(sp)
	mv	s0,a0
	addiw	s5,s5,1
	add	a3,a3,a5
	sd	a3,8(s10)
	mv	a0,s10
	bne	s0,zero,.L6778
	call	vdbePmaReaderNext
	ld	a3,8(s10)
	mv	s0,a0
	beq	s6,s5,.L6781
	addi	s1,s1,80
	beq	a0,zero,.L6782
	j	.L6778
.L6781:
	beq	a0,zero,.L6779
	j	.L6778
.L6785:
	li	s0,7
	j	.L6778
.L6786:
	li	s0,0
	j	.L6779
	.size	vdbeMergeEngineLevel0, .-vdbeMergeEngineLevel0
	.section	.text.vdbeMergeEngineInit.isra.0,"ax",@progbits
	.align	1
	.type	vdbeMergeEngineInit.isra.0, @function
vdbeMergeEngineInit.isra.0:
	addi	sp,sp,-96
	sd	s1,72(sp)
	sd	s4,48(sp)
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	lw	a3,0(a1)
	sd	a0,8(a1)
	mv	s4,a1
	mv	s1,a0
	ble	a3,zero,.L6796
	addiw	a5,a3,-1
	slli	a5,a5,32
	srli	a5,a5,32
	addi	a5,a5,1
	slli	s6,a5,2
	add	a5,s6,a5
	slli	s6,a5,4
	li	s3,0
.L6798:
	ld	s0,24(s4)
	add	s0,s0,s3
	ld	s2,72(s0)
	addi	s3,s3,80
	beq	s2,zero,.L6802
	ld	s5,0(s2)
	ld	a1,8(s2)
	ld	a5,16(s5)
	mv	a0,s5
	ld	s8,32(a5)
	call	vdbeMergeEngineInit.isra.0
	beq	a0,zero,.L6820
.L6800:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	addi	sp,sp,96
	jr	ra
.L6820:
	ld	a5,88(s5)
	lw	s7,24(s2)
	beq	a5,zero,.L6821
.L6801:
	sd	a5,56(s2)
	ld	a5,96(s5)
	mv	a0,s0
	sd	a5,16(s2)
	add	a5,s7,a5
	sd	a5,96(s5)
	call	vdbePmaReaderNext
	bne	a0,zero,.L6800
.L6802:
	bne	s6,s3,.L6798
	lw	a3,0(s4)
.L6796:
	addiw	s2,a3,-1
	ble	s2,zero,.L6803
	slli	s3,s2,2
	addi	s5,sp,12
	j	.L6808
.L6822:
	sext.w	s6,s0
	addiw	s0,s0,1
.L6805:
	ld	a4,24(s4)
	slli	a2,s6,2
	slli	a5,s0,2
	add	a2,a2,s6
	add	a5,a5,s0
	slli	a2,a2,4
	slli	a5,a5,4
	add	a2,a4,a2
	add	a4,a4,a5
	ld	a5,24(a2)
	mv	a1,s5
	beq	a5,zero,.L6806
	ld	a5,24(a4)
	beq	a5,zero,.L6809
	ld	a0,8(s4)
	lw	a5,20(a4)
	lw	a3,20(a2)
	ld	a4,40(a4)
	ld	a6,64(a0)
	ld	a2,40(a2)
	sw	zero,12(sp)
	jalr	a6
	ble	a0,zero,.L6809
.L6806:
	ld	a5,16(s4)
	addiw	s2,s2,-1
	add	a5,a5,s3
	sw	s0,0(a5)
	addi	s3,s3,-4
	beq	s2,zero,.L6803
.L6823:
	lw	a3,0(s4)
.L6808:
	srliw	a5,a3,31
	slliw	a4,s2,1
	addw	a5,a5,a3
	slli	a4,a4,32
	sraiw	a5,a5,1
	srli	a4,a4,32
	subw	s0,s2,a5
	slli	a4,a4,2
	slliw	s0,s0,1
	ble	a5,s2,.L6822
	ld	a5,16(s4)
	add	a4,a5,a4
	lw	s6,0(a4)
	lw	s0,4(a4)
	j	.L6805
.L6809:
	ld	a5,16(s4)
	mv	s0,s6
	addiw	s2,s2,-1
	add	a5,a5,s3
	sw	s0,0(a5)
	addi	s3,s3,-4
	bne	s2,zero,.L6823
.L6803:
	ld	a5,24(s1)
	lbu	a0,19(a5)
	j	.L6800
.L6821:
	addi	a1,s5,88
	mv	a0,s8
	call	vdbeSorterOpenTempFile.isra.0
	sd	zero,96(s5)
	bne	a0,zero,.L6800
	ld	a5,88(s5)
	j	.L6801
	.size	vdbeMergeEngineInit.isra.0, .-vdbeMergeEngineInit.isra.0
	.section	.text.sqlite3KeyInfoAlloc,"ax",@progbits
	.align	1
	.type	sqlite3KeyInfoAlloc, @function
sqlite3KeyInfoAlloc:
	addi	sp,sp,-48
	sd	s2,16(sp)
	addw	s2,a1,a2
	sd	s1,24(sp)
	slliw	s1,s2,3
	addw	s1,s1,s2
	addiw	s1,s1,-8
	sd	s4,0(sp)
	mv	s4,a1
	addi	a1,s1,40
	sd	s0,32(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s3,a0
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L6825
	sext.w	a5,s2
	addi	a5,a5,4
	slli	a5,a5,3
	add	a5,a0,a5
	sd	a5,24(a0)
	sh	s4,6(a0)
	sh	s2,8(a0)
	lbu	a5,94(s3)
	mv	a2,s1
	sd	s3,16(a0)
	sb	a5,4(a0)
	li	a5,1
	sw	a5,0(a0)
	li	a1,0
	addi	a0,a0,40
	call	memset@plt
.L6824:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L6825:
	ld	a5,96(s3)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L6824
	lw	a4,196(s3)
	li	a5,1
	sb	a5,97(s3)
	ble	a4,zero,.L6827
	sw	a5,352(s3)
.L6827:
	mv	a0,s3
	call	sqlite3OomFault.part.0
	j	.L6824
	.size	sqlite3KeyInfoAlloc, .-sqlite3KeyInfoAlloc
	.section	.text.sqlite3ExprSimplifiedAndOr.part.0,"ax",@progbits
	.align	1
	.type	sqlite3ExprSimplifiedAndOr.part.0, @function
sqlite3ExprSimplifiedAndOr.part.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	s1,24(a0)
	li	a4,1
	mv	s0,a0
	lbu	a5,0(s1)
	addiw	a5,a5,-43
	andi	a5,a5,0xff
	bleu	a5,a4,.L6840
.L6830:
	ld	a0,16(s0)
	li	a4,1
	lbu	a5,0(a0)
	addiw	a5,a5,-43
	andi	a5,a5,0xff
	bleu	a5,a4,.L6841
.L6831:
	lw	a4,4(a0)
	li	a5,268435456
	addi	a2,a5,1
	and	a3,a4,a2
	beq	a3,a5,.L6832
	lw	a3,4(s1)
	li	a1,536870912
	addi	a6,a1,1
	and	a7,a3,a6
	beq	a7,a1,.L6832
	and	a3,a3,a2
	beq	a3,a5,.L6835
	and	a4,a4,a6
	beq	a4,a1,.L6835
	mv	s1,s0
.L6829:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6832:
	lbu	a4,0(s0)
	li	a5,44
	beq	a4,a5,.L6829
.L6837:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	s1,a0
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6835:
	lbu	a4,0(s0)
	li	a5,44
	beq	a4,a5,.L6837
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6841:
	call	sqlite3ExprSimplifiedAndOr.part.0
	j	.L6831
.L6840:
	mv	a0,s1
	call	sqlite3ExprSimplifiedAndOr.part.0
	mv	s1,a0
	j	.L6830
	.size	sqlite3ExprSimplifiedAndOr.part.0, .-sqlite3ExprSimplifiedAndOr.part.0
	.section	.text.subjournalPageIfRequired,"ax",@progbits
	.align	1
	.type	subjournalPageIfRequired, @function
subjournalPageIfRequired:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	ld	s3,40(a0)
	lw	s4,48(a0)
	lw	a5,128(s3)
	ble	a5,zero,.L6854
	addiw	a5,a5,-1
	slli	a5,a5,32
	srli	a5,a5,32
	ld	s0,120(s3)
	slli	s1,a5,1
	add	s1,s1,a5
	slli	s1,s1,4
	addi	a5,s0,64
	mv	s2,a0
	addi	s0,s0,16
	add	s1,s1,a5
	j	.L6846
.L6844:
	addi	s0,s0,48
	beq	s1,s0,.L6854
.L6846:
	lw	a5,8(s0)
	bltu	a5,s4,.L6844
	ld	a0,0(s0)
	mv	a1,s4
	call	sqlite3BitvecTestNotNull
	bne	a0,zero,.L6844
	lbu	a5,9(s3)
	li	a4,2
	beq	a5,a4,.L6853
	ld	s0,88(s3)
	ld	a4,0(s0)
	beq	a4,zero,.L6860
.L6847:
	lw	s1,188(s3)
	lwu	a3,56(s3)
	srli	a5,s4,8
	addiw	s1,s1,4
	mul	s1,s1,a3
	andi	a4,a5,255
	slli	a5,s4,8
	or	a5,a5,a4
	srliw	a4,s4,24
	srliw	s4,s4,16
	sb	a4,8(sp)
	sb	s4,9(sp)
	sh	a5,10(sp)
	ld	a5,0(s0)
	mv	a0,s0
	mv	a3,s1
	ld	a5,24(a5)
	li	a2,4
	addi	a1,sp,8
	ld	s0,8(s2)
	jalr	a5
	bne	a0,zero,.L6856
	ld	a0,88(s3)
	lw	a2,188(s3)
	addi	a3,s1,4
	ld	a5,0(a0)
	mv	a1,s0
	ld	a5,24(a5)
	jalr	a5
	bne	a0,zero,.L6856
.L6853:
	lw	a5,56(s3)
	addi	a1,s3,128
	addi	a0,s3,120
	addiw	a5,a5,1
	sw	a5,56(s3)
	lw	a2,48(s2)
	call	addToSavepointBitvecs.isra.0
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L6854:
	li	a0,0
.L6856:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L6860:
	li	a4,4
	ld	s4,0(s3)
	beq	a5,a4,.L6848
	lbu	a5,25(s3)
	bne	a5,zero,.L6848
	lw	s1,.LANCHOR1+40
	li	a2,88
	li	a1,0
	mv	a0,s0
	call	memset@plt
	bne	s1,zero,.L6851
	ld	a5,40(s4)
	li	a3,8192
	li	a4,0
	addi	a3,a3,30
	mv	a2,s0
	li	a1,0
	mv	a0,s4
	jalr	a5
	bne	a0,zero,.L6856
.L6859:
	ld	s0,88(s3)
	lw	s4,48(s2)
	j	.L6847
.L6848:
	li	a2,72
	li	a1,0
	addi	a0,s0,16
	call	memset@plt
	li	s1,-1
	li	a5,1016
.L6850:
	sw	a5,8(s0)
	lla	a5,.LANCHOR3+152
	sd	a5,0(s0)
	li	a5,8192
	addi	a5,a5,30
	sw	s1,12(s0)
	sw	a5,64(s0)
	sd	s4,72(s0)
	j	.L6859
.L6851:
	ble	s1,zero,.L6855
	mv	a5,s1
	j	.L6850
.L6855:
	li	a5,1016
	j	.L6850
	.size	subjournalPageIfRequired, .-subjournalPageIfRequired
	.section	.text.sqlite3WhereExprUsageNN,"ax",@progbits
	.align	1
	.type	sqlite3WhereExprUsageNN, @function
sqlite3WhereExprUsageNN:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	a4,0(a1)
	li	a5,1
	slli	a5,a5,35
	addi	a5,a5,255
	and	a5,a4,a5
	li	a4,162
	mv	s2,a1
	mv	s0,a0
	beq	a5,a4,.L6901
	lw	a5,4(a1)
	li	a4,8404992
	li	s1,0
	and	a5,a5,a4
	bne	a5,zero,.L6861
	lbu	a3,0(a1)
	li	a4,171
	mv	s1,a5
	beq	a3,a4,.L6902
.L6866:
	ld	a1,16(s2)
	beq	a1,zero,.L6869
	mv	a0,s0
	call	sqlite3WhereExprUsageNN
	or	s1,s1,a0
.L6869:
	ld	a1,24(s2)
	beq	a1,zero,.L6870
	mv	a0,s0
	call	sqlite3WhereExprUsageNN
	or	s1,s1,a0
.L6871:
	lbu	a4,0(s2)
	li	a5,161
	beq	a4,a5,.L6903
.L6861:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6870:
	lw	a5,4(s2)
	slli	a4,a5,52
	bge	a4,zero,.L6872
	andi	a5,a5,32
	beq	a5,zero,.L6873
	li	a5,1
	sw	a5,0(s0)
.L6873:
	ld	a1,32(s2)
	mv	a0,s0
	call	exprSelectUsage
	lbu	a4,0(s2)
	li	a5,161
	or	s1,s1,a0
	bne	a4,a5,.L6861
.L6903:
	ld	a5,64(s2)
	beq	a5,zero,.L6861
	ld	a1,16(a5)
	beq	a1,zero,.L6874
	mv	a0,s0
	call	sqlite3WhereExprListUsage.part.0
	ld	a5,64(s2)
	or	s1,s1,a0
.L6874:
	ld	a1,24(a5)
	beq	a1,zero,.L6861
	mv	a0,s0
	call	sqlite3WhereExprListUsage.part.0
	or	s1,s1,a0
	j	.L6861
.L6901:
	lw	a3,4(a0)
	lw	a2,44(a1)
	ble	a3,zero,.L6876
	addi	a0,a0,8
	li	a5,0
	j	.L6865
.L6864:
	addiw	a5,a5,1
	beq	a5,a3,.L6876
.L6865:
	lw	a4,0(a0)
	addi	a0,a0,4
	bne	a4,a2,.L6864
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,1
	sll	s1,s1,a5
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6902:
	lw	a2,4(a0)
	lw	a1,44(a1)
	ble	a2,zero,.L6866
	addi	a5,a0,8
	li	a4,0
	j	.L6868
.L6867:
	addiw	a4,a4,1
	beq	a4,a2,.L6904
.L6868:
	lw	a3,0(a5)
	addi	a5,a5,4
	bne	a3,a1,.L6867
	li	a5,1
	sll	s1,a5,a4
	j	.L6866
.L6872:
	ld	a1,32(s2)
	beq	a1,zero,.L6871
	mv	a0,s0
	call	sqlite3WhereExprListUsage.part.0
	or	s1,s1,a0
	j	.L6871
.L6876:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,0
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L6904:
	li	s1,0
	j	.L6866
	.size	sqlite3WhereExprUsageNN, .-sqlite3WhereExprUsageNN
	.section	.text.sqlite3WhereExprListUsage.part.0,"ax",@progbits
	.align	1
	.type	sqlite3WhereExprListUsage.part.0, @function
sqlite3WhereExprListUsage.part.0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	lw	a4,0(a1)
	sext.w	a5,a4
	ble	a5,zero,.L6909
	mv	s1,a1
	mv	s2,a0
	li	s3,0
	li	s0,0
.L6908:
	slli	a5,s0,5
	add	a5,s1,a5
	ld	a1,8(a5)
	mv	a0,s2
	addiw	s0,s0,1
	beq	a1,zero,.L6907
	call	sqlite3WhereExprUsageNN
	lw	a4,0(s1)
	or	s3,s3,a0
.L6907:
	sext.w	a5,a4
	bgt	a5,s0,.L6908
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	mv	a0,s3
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L6909:
	ld	ra,40(sp)
	ld	s0,32(sp)
	li	s3,0
	ld	s1,24(sp)
	ld	s2,16(sp)
	mv	a0,s3
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3WhereExprListUsage.part.0, .-sqlite3WhereExprListUsage.part.0
	.section	.text.exprSelectUsage,"ax",@progbits
	.align	1
	.type	exprSelectUsage, @function
exprSelectUsage:
	addi	sp,sp,-64
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	li	s2,0
	beq	a1,zero,.L6915
	mv	s0,a1
	mv	s4,a0
	li	s2,0
.L6927:
	ld	a1,0(s0)
	ld	s6,40(s0)
	beq	a1,zero,.L6917
	mv	a0,s4
	call	sqlite3WhereExprListUsage.part.0
	or	s2,s2,a0
.L6917:
	ld	a1,56(s0)
	beq	a1,zero,.L6918
	mv	a0,s4
	call	sqlite3WhereExprListUsage.part.0
	or	s2,s2,a0
.L6918:
	ld	a1,72(s0)
	beq	a1,zero,.L6919
	mv	a0,s4
	call	sqlite3WhereExprListUsage.part.0
	or	s2,s2,a0
.L6919:
	ld	a1,48(s0)
	beq	a1,zero,.L6920
	mv	a0,s4
	call	sqlite3WhereExprUsageNN
	or	s2,s2,a0
.L6920:
	ld	a1,64(s0)
	beq	a1,zero,.L6921
	mv	a0,s4
	call	sqlite3WhereExprUsageNN
	or	s2,s2,a0
.L6921:
	bne	s6,zero,.L6959
.L6922:
	ld	s0,80(s0)
	bne	s0,zero,.L6927
.L6915:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	jr	ra
.L6959:
	lw	a5,0(s6)
	ble	a5,zero,.L6922
	li	s5,0
.L6926:
	slli	s1,s5,3
	sub	s3,s1,s5
	slli	s3,s3,4
	add	s3,s6,s3
	ld	a1,48(s3)
	mv	a0,s4
	call	exprSelectUsage
	ld	a1,80(s3)
	mv	a5,a0
	mv	s3,a5
	mv	a0,s4
	beq	a1,zero,.L6923
	call	sqlite3WhereExprUsageNN
	or	s3,s3,a0
.L6923:
	sub	s1,s1,s5
	slli	s1,s1,4
	add	s1,s6,s1
	ld	a5,64(s1)
	addiw	s5,s5,1
	or	s2,s2,s3
	slli	a4,a5,21
	bge	a4,zero,.L6924
	ld	a1,104(s1)
	mv	a0,s4
	beq	a1,zero,.L6924
	call	sqlite3WhereExprListUsage.part.0
	or	s2,s2,a0
.L6924:
	lw	a5,0(s6)
	bgt	a5,s5,.L6926
	j	.L6922
	.size	exprSelectUsage, .-exprSelectUsage
	.section	.text.exprDup,"ax",@progbits
	.align	1
	.type	exprDup, @function
exprDup:
	addi	sp,sp,-96
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s5,40(sp)
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s4,48(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	mv	s2,a3
	mv	s5,a0
	mv	s1,a1
	mv	s3,a2
	beq	a3,zero,.L6961
	ld	s0,0(a3)
	li	s7,134217728
	sd	s0,8(sp)
.L6962:
	beq	s0,zero,.L6960
	lw	s4,4(s1)
	andi	a5,s4,1024
	sext.w	a5,a5
	beq	s3,zero,.L6965
	lbu	a3,0(s1)
	li	a4,170
	beq	a3,a4,.L6991
	slli	a4,s4,39
	bge	a4,zero,.L7018
.L6991:
	li	s4,0
	li	s8,72
.L6966:
	bne	a5,zero,.L7016
.L6984:
	ld	a0,8(s1)
	beq	a0,zero,.L7016
	call	strlen@plt
	slli	s6,a0,34
	srli	s6,s6,34
	addi	s6,s6,1
	j	.L6985
.L6965:
	beq	a5,zero,.L6986
.L7017:
	slli	a5,s4,49
	li	s6,0
	blt	a5,zero,.L7019
.L6968:
	li	a5,8192
	and	s4,s4,a5
	bne	s4,zero,.L7020
	li	a2,72
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	li	s8,72
.L6967:
	lw	a5,4(s0)
	li	a4,-134307840
	addi	a4,a4,-1
	and	a5,a5,a4
	or	a5,a5,s7
	or	a5,a5,s4
	sext.w	a5,a5
	sw	a5,4(s0)
	bne	s6,zero,.L7021
.L6971:
	lw	a3,4(s1)
	li	a2,8404992
	or	a4,a3,a5
	and	a4,a4,a2
	bne	a4,zero,.L6972
	slli	a5,a3,52
	ld	a1,32(s1)
	mv	a2,s3
	mv	a0,s5
	blt	a5,zero,.L7022
	call	sqlite3ExprListDup
	lw	a5,4(s0)
	sd	a0,32(s0)
.L6972:
	li	a4,16801792
	and	a5,a5,a4
	beq	a5,zero,.L6974
	mv	a1,s3
	mv	a0,s1
	call	dupedExprNodeSize
	ld	a5,8(sp)
	li	a4,8404992
	add	a5,a5,a0
	sd	a5,8(sp)
	lw	a5,4(s0)
	and	a5,a5,a4
	bne	a5,zero,.L6975
	ld	a1,16(s1)
	beq	a1,zero,.L6976
	addi	a3,sp,8
	li	a2,1
	mv	a0,s5
	call	exprDup
	mv	a1,a0
.L6976:
	sd	a1,16(s0)
	ld	a1,24(s1)
	beq	a1,zero,.L6977
	addi	a3,sp,8
	li	a2,1
	mv	a0,s5
	call	exprDup
	mv	a1,a0
.L6977:
	sd	a1,24(s0)
.L6975:
	lw	a5,4(s1)
	slli	a4,a5,39
	bge	a4,zero,.L6978
	ld	a2,64(s1)
	mv	a1,s0
	mv	a0,s5
	call	sqlite3WindowDup
	sd	a0,64(s0)
.L6978:
	beq	s2,zero,.L6960
	ld	a5,8(sp)
	sd	a5,0(s2)
.L6960:
	ld	ra,88(sp)
	mv	a0,s0
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	addi	sp,sp,96
	jr	ra
.L7016:
	li	s6,0
.L6985:
	mv	a2,s8
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	j	.L6967
.L6974:
	lw	a5,4(s1)
	li	a4,8404992
	and	a5,a5,a4
	bne	a5,zero,.L6960
	lbu	a4,0(s0)
	li	a5,170
	ld	a1,16(s1)
	beq	a4,a5,.L6982
	beq	a1,zero,.L6982
	li	a3,0
	li	a2,0
	mv	a0,s5
	call	exprDup
	mv	a1,a0
.L6982:
	sd	a1,16(s0)
	ld	a1,24(s1)
	beq	a1,zero,.L6983
	li	a3,0
	li	a2,0
	mv	a0,s5
	call	exprDup
	mv	a1,a0
.L6983:
	sd	a1,24(s0)
	j	.L6960
.L7021:
	ld	a0,8(sp)
	mv	a2,s6
	add	a0,a0,s8
	sd	a0,8(s0)
	ld	a1,8(s1)
	call	memcpy@plt
	lw	a5,4(s0)
	j	.L6971
.L6986:
	ld	a0,8(s1)
	beq	a0,zero,.L7017
	call	strlen@plt
	slli	s6,a0,34
	srli	s6,s6,34
	slli	a5,s4,49
	addi	s6,s6,1
	bge	a5,zero,.L6968
.L7019:
	li	a2,16
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	li	a2,56
	li	a5,16
.L6969:
	ld	a0,8(sp)
	li	a1,0
	li	s4,0
	add	a0,a0,a5
	call	memset@plt
	li	s8,72
	j	.L6967
.L7022:
	call	sqlite3SelectDup
	lw	a5,4(s0)
	sd	a0,32(s0)
	j	.L6972
.L7018:
	ld	a4,16(s1)
	li	s4,8192
	li	s8,44
	bne	a4,zero,.L6966
	ld	a4,32(s1)
	bne	a4,zero,.L6966
	li	s4,16384
	li	s8,16
	beq	a5,zero,.L6984
	j	.L7016
.L6961:
	mv	a1,a2
	mv	a0,s1
	call	dupedExprSize
	mv	a1,a0
	mv	a0,s5
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	sd	a0,8(sp)
	li	s7,0
	j	.L6962
.L7020:
	li	a2,44
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	li	a2,28
	li	a5,44
	j	.L6969
	.size	exprDup, .-exprDup
	.section	.text.sqlite3ExprListDup,"ax",@progbits
	.align	1
	.type	sqlite3ExprListDup, @function
sqlite3ExprListDup:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
	beq	a1,zero,.L7024
	mv	s2,a1
	mv	s0,a0
	mv	s3,a2
	beq	a0,zero,.L7025
	ld	a5,400(a0)
	bleu	a5,a1,.L7046
.L7025:
	mv	a0,s2
	ld	a5,.LANCHOR1+72
	jalr	a5
	mv	a1,a0
.L7026:
	mv	a0,s0
	call	sqlite3DbMallocRawNN
	mv	s4,a0
	beq	a0,zero,.L7024
	lw	a5,0(s2)
	addi	s7,a0,8
	addi	s8,s2,8
	sw	a5,0(a0)
	lw	a5,0(s2)
	ble	a5,zero,.L7023
	li	s6,0
	li	s1,0
	li	s5,170
	j	.L7031
.L7028:
	call	exprDup
	sd	a0,0(s7)
	lbu	a5,0(s9)
	beq	a5,s5,.L7047
.L7029:
	ld	a1,8(s8)
	mv	a0,s0
	addi	s7,s7,32
	call	sqlite3DbStrDup
	sd	a0,-24(s7)
	ld	a1,16(s8)
	mv	a0,s0
	addi	s8,s8,32
	call	sqlite3DbStrDup
	lbu	a5,-7(s7)
	sd	a0,-16(s7)
	lbu	a4,-8(s8)
	andi	a3,a5,-2
	sb	a3,-7(s7)
	sb	a4,-8(s7)
	ld	a4,-8(s8)
	andi	a5,a5,-4
	addiw	s1,s1,1
	srli	a4,a4,8
	andi	a4,a4,2
	or	a5,a5,a4
	sb	a5,-7(s7)
	ld	a4,-8(s8)
	andi	a5,a5,-9
	srli	a4,a4,8
	andi	a4,a4,8
	or	a5,a5,a4
	sb	a5,-7(s7)
	lw	a5,-4(s8)
	sw	a5,-4(s7)
	lw	a5,0(s2)
	ble	a5,s1,.L7023
.L7031:
	ld	s9,0(s8)
	li	a3,0
	mv	a2,s3
	mv	a0,s0
	mv	a1,s9
	bne	s9,zero,.L7028
	sd	zero,0(s7)
	j	.L7029
.L7047:
	beq	a0,zero,.L7029
	lh	a5,48(a0)
	bne	a5,zero,.L7030
	ld	s6,24(a0)
	sd	s6,16(a0)
	j	.L7029
.L7024:
	li	s4,0
.L7023:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	ld	s9,8(sp)
	mv	a0,s4
	ld	s4,48(sp)
	addi	sp,sp,96
	jr	ra
.L7030:
	sd	s6,16(a0)
	j	.L7029
.L7046:
	ld	a5,408(a0)
	bleu	a5,a1,.L7025
	lhu	a1,364(a0)
	j	.L7026
	.size	sqlite3ExprListDup, .-sqlite3ExprListDup
	.section	.text.sqlite3WindowDup,"ax",@progbits
	.align	1
	.type	sqlite3WindowDup, @function
sqlite3WindowDup:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	beq	a2,zero,.L7051
	mv	s3,a1
	li	a1,136
	mv	s1,a2
	mv	s2,a0
	call	sqlite3DbMallocZero
	mv	s0,a0
	beq	a0,zero,.L7051
	ld	a1,0(s1)
	mv	a0,s2
	call	sqlite3DbStrDup
	sd	a0,0(s0)
	ld	a1,64(s1)
	beq	a1,zero,.L7052
	li	a3,0
	li	a2,0
	mv	a0,s2
	call	exprDup
	mv	a1,a0
.L7052:
	sd	a1,64(s0)
	ld	a5,72(s1)
	li	a2,0
	mv	a0,s2
	sd	a5,72(s0)
	ld	a1,16(s1)
	call	sqlite3ExprListDup
	sd	a0,16(s0)
	ld	a1,24(s1)
	li	a2,0
	mv	a0,s2
	call	sqlite3ExprListDup
	sd	a0,24(s0)
	lbu	a5,32(s1)
	sb	a5,32(s0)
	lbu	a5,34(s1)
	sb	a5,34(s0)
	lbu	a5,33(s1)
	sb	a5,33(s0)
	lbu	a5,36(s1)
	sb	a5,36(s0)
	ld	a1,40(s1)
	beq	a1,zero,.L7053
	li	a3,0
	li	a2,0
	mv	a0,s2
	call	exprDup
	mv	a1,a0
.L7053:
	sd	a1,40(s0)
	ld	a1,48(s1)
	beq	a1,zero,.L7054
	li	a3,0
	li	a2,0
	mv	a0,s2
	call	exprDup
	mv	a1,a0
.L7054:
	sd	a1,48(s0)
	sd	s3,104(s0)
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L7051:
	li	s0,0
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3WindowDup, .-sqlite3WindowDup
	.section	.text.sqlite3SelectDup,"ax",@progbits
	.align	1
	.type	sqlite3SelectDup, @function
sqlite3SelectDup:
	addi	sp,sp,-176
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	sd	s6,112(sp)
	sd	s7,104(sp)
	sd	s8,96(sp)
	sd	s9,88(sp)
	sd	s10,80(sp)
	sd	s11,72(sp)
	sd	zero,8(sp)
	beq	a1,zero,.L7084
	mv	s1,a1
	mv	s2,a0
	mv	s5,a2
	addi	s7,sp,8
	li	s0,0
	addi	s8,sp,16
.L7083:
	li	a1,128
	mv	a0,s2
	call	sqlite3DbMallocRawNN
	mv	s3,s0
	mv	s0,a0
	beq	a0,zero,.L7107
	ld	a1,0(s1)
	mv	a2,s5
	mv	a0,s2
	call	sqlite3ExprListDup
	sd	a0,0(s0)
	ld	a1,40(s1)
	mv	a2,s5
	mv	a0,s2
	call	sqlite3SrcListDup
	sd	a0,40(s0)
	ld	a1,48(s1)
	beq	a1,zero,.L7071
	li	a3,0
	mv	a2,s5
	mv	a0,s2
	call	exprDup
	mv	a1,a0
.L7071:
	sd	a1,48(s0)
	ld	a1,56(s1)
	mv	a2,s5
	mv	a0,s2
	call	sqlite3ExprListDup
	sd	a0,56(s0)
	ld	a1,64(s1)
	beq	a1,zero,.L7072
	li	a3,0
	mv	a2,s5
	mv	a0,s2
	call	exprDup
	mv	a1,a0
.L7072:
	sd	a1,64(s0)
	ld	a1,72(s1)
	mv	a2,s5
	mv	a0,s2
	call	sqlite3ExprListDup
	sd	a0,72(s0)
	lbu	a5,8(s1)
	sd	s3,88(s0)
	sd	zero,80(s0)
	sb	a5,8(s0)
	ld	a1,96(s1)
	beq	a1,zero,.L7073
	li	a3,0
	mv	a2,s5
	mv	a0,s2
	call	exprDup
	mv	a1,a0
.L7073:
	sd	a1,96(s0)
	sd	zero,16(s0)
	lw	a5,12(s1)
	li	a4,-1
	sw	a4,28(s0)
	andi	a5,a5,-33
	sw	a4,32(s0)
	sw	a5,12(s0)
	lh	a5,10(s1)
	sh	a5,10(s0)
	ld	s9,104(s1)
	beq	s9,zero,.L7076
	lw	a1,0(s9)
	mv	a0,s2
	addiw	a1,a1,-1
	slli	a1,a1,5
	addi	a1,a1,48
	call	sqlite3DbMallocZero
	mv	s4,a0
	beq	a0,zero,.L7076
	lw	a4,0(s9)
	sw	a4,0(a0)
	lw	a4,0(s9)
	ble	a4,zero,.L7075
	li	s11,0
.L7077:
	addi	s3,s11,1
	slli	s3,s3,5
	add	a4,s9,s3
	ld	a1,0(a4)
	li	a2,0
	mv	a0,s2
	call	sqlite3SelectDup
	slli	s6,s11,5
	add	s3,s4,s3
	sd	a0,0(s3)
	add	s10,s9,s6
	ld	a1,24(s10)
	li	a2,0
	mv	a0,s2
	call	sqlite3ExprListDup
	add	s3,s4,s6
	sd	a0,24(s3)
	ld	a1,16(s10)
	mv	a0,s2
	addiw	s11,s11,1
	call	sqlite3DbStrDup
	sd	a0,16(s3)
	lw	a4,0(s9)
	bgt	a4,s11,.L7077
.L7075:
	sd	s4,104(s0)
	sd	zero,112(s0)
	ld	s3,120(s1)
	sd	zero,16(sp)
	beq	s3,zero,.L7078
	mv	s4,s8
	j	.L7080
.L7079:
	ld	s3,56(s3)
	addi	s4,a0,56
	beq	s3,zero,.L7081
.L7080:
	mv	a2,s3
	li	a1,0
	mv	a0,s2
	call	sqlite3WindowDup
	sd	a0,0(s4)
	bne	a0,zero,.L7079
.L7081:
	ld	s3,16(sp)
.L7078:
	sd	s3,120(s0)
	ld	a5,112(s1)
	beq	a5,zero,.L7082
	lla	a5,gatherSelectWindowsCallback
	sd	a5,24(sp)
	mv	a1,s0
	lla	a5,gatherSelectWindowsSelectCallback
	mv	a0,s8
	sd	a5,32(sp)
	sd	zero,40(sp)
	sd	zero,16(sp)
	sd	s0,56(sp)
	call	sqlite3WalkSelect.part.0
.L7082:
	lw	a5,24(s1)
	sw	a5,24(s0)
	sd	s0,0(s7)
	ld	s1,80(s1)
	addi	s7,s0,80
	bne	s1,zero,.L7083
.L7107:
	ld	a0,8(sp)
.L7068:
	ld	ra,168(sp)
	ld	s0,160(sp)
	ld	s1,152(sp)
	ld	s2,144(sp)
	ld	s3,136(sp)
	ld	s4,128(sp)
	ld	s5,120(sp)
	ld	s6,112(sp)
	ld	s7,104(sp)
	ld	s8,96(sp)
	ld	s9,88(sp)
	ld	s10,80(sp)
	ld	s11,72(sp)
	addi	sp,sp,176
	jr	ra
.L7076:
	li	s4,0
	j	.L7075
.L7084:
	li	a0,0
	j	.L7068
	.size	sqlite3SelectDup, .-sqlite3SelectDup
	.section	.text.sqlite3SrcListDup,"ax",@progbits
	.align	1
	.type	sqlite3SrcListDup, @function
sqlite3SrcListDup:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	beq	a1,zero,.L7112
	lw	a5,0(a1)
	mv	s4,a1
	mv	s3,a0
	mv	s6,a2
	li	a1,120
	ble	a5,zero,.L7111
	addiw	a5,a5,-1
	slliw	a1,a5,3
	subw	a1,a1,a5
	slliw	a1,a1,4
	addiw	a1,a1,120
.L7111:
	mv	a0,s3
	call	sqlite3DbMallocRawNN
	mv	s5,a0
	beq	a0,zero,.L7112
	lw	a5,0(s4)
	sw	a5,4(a0)
	sw	a5,0(a0)
	lw	a5,0(s4)
	ble	a5,zero,.L7108
	li	s7,0
	j	.L7117
.L7113:
	sub	a5,s1,s7
	slli	a5,a5,4
	add	s0,s5,a5
	add	a5,s4,a5
	ld	a3,112(a5)
	lbu	a4,69(s0)
	sd	a3,112(s0)
	andi	a4,a4,4
	bne	a4,zero,.L7136
.L7114:
	sub	s0,s1,s7
	slli	s0,s0,4
	add	s2,s4,s0
	ld	a4,40(s2)
	add	a5,s5,s0
	mv	a2,s6
	sd	a4,40(a5)
	mv	a0,s3
	beq	a4,zero,.L7115
	lw	a5,60(a4)
	addiw	a5,a5,1
	sw	a5,60(a4)
.L7115:
	ld	a1,48(s2)
	add	s0,s5,s0
	call	sqlite3SelectDup
	sd	a0,48(s0)
	ld	a1,80(s2)
	li	a3,0
	mv	a2,s6
	mv	a0,s3
	beq	a1,zero,.L7116
	call	exprDup
	mv	a1,a0
.L7116:
	sub	s1,s1,s7
	slli	s1,s1,4
	add	s0,s5,s1
	sd	a1,80(s0)
	add	s1,s4,s1
	ld	a1,88(s1)
	mv	a0,s3
	addiw	s7,s7,1
	call	sqlite3IdListDup
	sd	a0,88(s0)
	ld	a5,96(s1)
	sd	a5,96(s0)
	lw	a5,0(s4)
	ble	a5,s7,.L7108
.L7117:
	slli	s1,s7,3
	sub	s0,s1,s7
	slli	s0,s0,4
	add	s2,s4,s0
	ld	a5,8(s2)
	add	s0,s5,s0
	mv	a0,s3
	sd	a5,8(s0)
	ld	a1,16(s2)
	call	sqlite3DbStrDup
	sd	a0,16(s0)
	ld	a1,24(s2)
	mv	a0,s3
	call	sqlite3DbStrDup
	sd	a0,24(s0)
	ld	a1,32(s2)
	mv	a0,s3
	call	sqlite3DbStrDup
	sd	a0,32(s0)
	lw	a5,68(s2)
	sw	a5,68(s0)
	lw	a4,72(s2)
	lbu	a5,69(s0)
	sw	a4,72(s0)
	lw	a4,56(s2)
	andi	a5,a5,2
	sw	a4,56(s0)
	lw	a4,60(s2)
	sw	a4,60(s0)
	beq	a5,zero,.L7113
	ld	a1,104(s2)
	mv	a0,s3
	call	sqlite3DbStrDup
	sd	a0,104(s0)
	j	.L7113
.L7136:
	ld	a1,104(a5)
	mv	a2,s6
	mv	a0,s3
	call	sqlite3ExprListDup
	sd	a0,104(s0)
	j	.L7114
.L7112:
	li	s5,0
.L7108:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	mv	a0,s5
	ld	s5,24(sp)
	addi	sp,sp,80
	jr	ra
	.size	sqlite3SrcListDup, .-sqlite3SrcListDup
	.section	.text.resolveAlias,"ax",@progbits
	.align	1
	.type	resolveAlias, @function
resolveAlias:
	addi	sp,sp,-112
	slli	a2,a2,5
	sd	s0,96(sp)
	sd	ra,104(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	add	a1,a1,a2
	ld	a1,8(a1)
	mv	s0,a3
	beq	a1,zero,.L7139
	ld	s5,0(a0)
	mv	s2,a0
	li	a3,0
	li	a2,0
	mv	a0,s5
	mv	s3,a4
	mv	s4,a5
	call	exprDup
	mv	s1,a0
	beq	a0,zero,.L7139
	lbu	a4,0(s3)
	li	a5,71
	bne	a4,a5,.L7151
.L7141:
	lbu	a4,0(s0)
	li	a5,106
	beq	a4,a5,.L7152
.L7142:
	lw	a5,4(s0)
	li	a4,134217728
	mv	a1,s0
	or	a5,a5,a4
	sw	a5,4(s0)
	mv	a0,s5
	call	sqlite3ExprDeleteNN
	li	a2,72
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	lw	a5,4(s0)
	andi	a5,a5,1024
	beq	a5,zero,.L7153
.L7143:
	mv	a1,s1
	mv	a0,s5
	call	sqlite3DbFreeNN
.L7139:
	lw	a5,4(s0)
	li	a4,4194304
	or	a5,a5,a4
	sw	a5,4(s0)
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	addi	sp,sp,112
	jr	ra
.L7153:
	ld	a1,8(s0)
	beq	a1,zero,.L7143
	mv	a0,s5
	call	sqlite3DbStrDup
	lw	a5,4(s0)
	li	a4,65536
	sd	a0,8(s0)
	or	a5,a5,a4
	sw	a5,4(s0)
	j	.L7143
.L7151:
	ble	s4,zero,.L7141
	mv	a0,sp
	sd	zero,40(a0)
	sd	zero,0(sp)
	sw	s4,40(sp)
	lla	a5,incrAggDepth
	mv	a1,s1
	sd	zero,16(a0)
	sd	zero,24(a0)
	sd	zero,32(a0)
	sd	a5,8(sp)
	call	walkExpr
	lbu	a4,0(s0)
	li	a5,106
	bne	a4,a5,.L7142
.L7152:
	ld	a2,8(s0)
	mv	a1,s1
	mv	a0,s2
	call	sqlite3ExprAddCollateString
	mv	s1,a0
	j	.L7142
	.size	resolveAlias, .-resolveAlias
	.section	.text.propagateConstantExprRewrite,"ax",@progbits
	.align	1
	.type	propagateConstantExprRewrite, @function
propagateConstantExprRewrite:
	lbu	a3,0(a1)
	li	a5,162
	bne	a3,a5,.L7159
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lw	a3,4(a1)
	mv	a4,a0
	mv	s0,a1
	andi	a3,a3,8
	li	a0,0
	sext.w	a5,a3
	bne	a3,zero,.L7155
	ld	a6,40(a4)
	lw	a3,8(a6)
	ble	a3,zero,.L7161
	ld	a7,16(a6)
	slliw	a3,a3,1
.L7158:
	slli	a4,a5,3
	add	a4,a7,a4
	ld	a4,0(a4)
	sext.w	a2,a5
	addiw	a5,a5,2
	beq	s0,a4,.L7156
	lw	a0,44(a4)
	lw	a1,44(s0)
	bne	a0,a1,.L7156
	lh	a1,48(a4)
	lh	a4,48(s0)
	bne	a1,a4,.L7156
	lw	a5,12(a6)
	li	a4,-8388608
	addi	a4,a4,-1
	addiw	a5,a5,1
	sw	a5,12(a6)
	lw	a5,4(s0)
	addi	a2,a2,1
	slli	a2,a2,3
	and	a5,a5,a4
	ori	a5,a5,8
	sw	a5,4(s0)
	ld	a5,16(a6)
	add	a2,a5,a2
	ld	a1,0(a2)
	beq	a1,zero,.L7157
	ld	a5,0(a6)
	li	a3,0
	li	a2,0
	ld	a0,0(a5)
	call	exprDup
	mv	a1,a0
.L7157:
	sd	a1,16(s0)
	li	a0,1
.L7155:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7159:
	li	a0,0
	ret
.L7156:
	bne	a3,a5,.L7158
.L7161:
	li	a0,1
	j	.L7155
	.size	propagateConstantExprRewrite, .-propagateConstantExprRewrite
	.section	.text.sqlite3_memory_alarm,"ax",@progbits
	.align	1
	.globl	sqlite3_memory_alarm
	.type	sqlite3_memory_alarm, @function
sqlite3_memory_alarm:
	li	a0,0
	ret
	.size	sqlite3_memory_alarm, .-sqlite3_memory_alarm
	.section	.text.sqlite3_os_end,"ax",@progbits
	.align	1
	.globl	sqlite3_os_end
	.type	sqlite3_os_end, @function
sqlite3_os_end:
	li	a0,0
	ret
	.size	sqlite3_os_end, .-sqlite3_os_end
	.section	.text.sqlite3_enable_load_extension,"ax",@progbits
	.align	1
	.globl	sqlite3_enable_load_extension
	.type	sqlite3_enable_load_extension, @function
sqlite3_enable_load_extension:
	ld	a5,48(a0)
	beq	a1,zero,.L7173
	li	a4,196608
	or	a5,a5,a4
	sd	a5,48(a0)
	li	a0,0
	ret
.L7173:
	li	a4,-196608
	addi	a4,a4,-1
	and	a5,a5,a4
	sd	a5,48(a0)
	li	a0,0
	ret
	.size	sqlite3_enable_load_extension, .-sqlite3_enable_load_extension
	.section	.text.sqlite3_config,"ax",@progbits
	.align	1
	.globl	sqlite3_config
	.type	sqlite3_config, @function
sqlite3_config:
	addi	sp,sp,-112
	sd	s1,24(sp)
	lla	s1,.LANCHOR1
	sd	s0,32(sp)
	lw	s0,356(s1)
	sd	ra,40(sp)
	sd	a1,56(sp)
	sd	a2,64(sp)
	sd	a3,72(sp)
	sd	a4,80(sp)
	sd	a5,88(sp)
	sd	a6,96(sp)
	sd	a7,104(sp)
	bne	s0,zero,.L7205
	addi	a4,sp,56
	addiw	a5,a0,-4
	sd	a4,8(sp)
	sext.w	a3,a5
	li	a4,25
	bgtu	a3,a4,.L7178
	slli	a5,a5,32
	srli	a5,a5,32
	lla	a4,.L7180
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L7180:
	.word	.L7196-.L7180
	.word	.L7195-.L7180
	.word	.L7178-.L7180
	.word	.L7194-.L7180
	.word	.L7178-.L7180
	.word	.L7193-.L7180
	.word	.L7178-.L7180
	.word	.L7178-.L7180
	.word	.L7178-.L7180
	.word	.L7192-.L7180
	.word	.L7177-.L7180
	.word	.L7178-.L7180
	.word	.L7190-.L7180
	.word	.L7189-.L7180
	.word	.L7188-.L7180
	.word	.L7187-.L7180
	.word	.L7186-.L7180
	.word	.L7178-.L7180
	.word	.L7185-.L7180
	.word	.L7178-.L7180
	.word	.L7184-.L7180
	.word	.L7183-.L7180
	.word	.L7182-.L7180
	.word	.L7181-.L7180
	.word	.L7178-.L7180
	.word	.L7179-.L7180
	.section	.text.sqlite3_config
.L7195:
	ld	a5,48(s1)
	beq	a5,zero,.L7206
.L7197:
	ld	a5,8(sp)
	ld	t1,48(s1)
	ld	a7,56(s1)
	ld	a5,0(a5)
	ld	a6,64(s1)
	ld	a0,72(s1)
	ld	a1,80(s1)
	ld	a2,88(s1)
	ld	a3,96(s1)
	ld	a4,104(s1)
	sd	t1,0(a5)
	sd	a7,8(a5)
	sd	a6,16(a5)
	sd	a0,24(a5)
	sd	a1,32(a5)
	sd	a2,40(a5)
	sd	a3,48(a5)
	sd	a4,56(a5)
.L7177:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,112
	jr	ra
.L7178:
	li	s0,1
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,112
	jr	ra
.L7205:
	li	a0,155648
	addi	a0,a0,-51
	call	sqlite3MisuseError
	mv	s0,a0
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,112
	jr	ra
.L7179:
	ld	a5,8(sp)
	ld	a5,0(a5)
	sd	a5,408(s1)
	j	.L7177
.L7181:
	ld	a5,8(sp)
	lw	a5,0(a5)
	sw	a5,20(s1)
	j	.L7177
.L7182:
	ld	a5,8(sp)
	lw	a5,0(a5)
	sw	a5,40(s1)
	j	.L7177
.L7183:
	ld	a5,8(sp)
	lw	a5,0(a5)
	sw	a5,352(s1)
	j	.L7177
.L7184:
	ld	a5,8(sp)
	li	a4,264
	ld	a5,0(a5)
	sw	a4,0(a5)
	j	.L7177
.L7185:
	sd	zero,.LANCHOR1+320,a5
	sd	zero,.LANCHOR1+312,a5
	j	.L7177
.L7186:
	ld	a5,8(sp)
	lw	a5,0(a5)
	sw	a5,16(s1)
	j	.L7177
.L7187:
	ld	a5,200(s1)
	beq	a5,zero,.L7207
.L7199:
	ld	a4,8(sp)
	lla	a5,.LANCHOR1+184
	lla	a6,.LANCHOR1+280
	ld	a4,0(a4)
.L7200:
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	sd	a0,0(a4)
	sd	a1,8(a4)
	sd	a2,16(a4)
	sd	a3,24(a4)
	addi	a5,a5,32
	addi	a4,a4,32
	bne	a5,a6,.L7200
.L7204:
	ld	a5,0(a5)
	sd	a5,0(a4)
	j	.L7177
.L7188:
	ld	a5,8(sp)
	lla	a4,.LANCHOR1+184
	ld	a5,0(a5)
	addi	a6,a5,96
.L7198:
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	sd	a0,0(a4)
	sd	a1,8(a4)
	sd	a2,16(a4)
	sd	a3,24(a4)
	addi	a5,a5,32
	addi	a4,a4,32
	bne	a5,a6,.L7198
	j	.L7204
.L7189:
	ld	a5,8(sp)
	lw	a5,0(a5)
	sw	a5,12(s1)
	j	.L7177
.L7190:
	ld	a5,8(sp)
	ld	a4,0(a5)
	ld	a5,8(a5)
	sd	a4,392(s1)
	sd	a5,400(s1)
	j	.L7177
.L7192:
	ld	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,8(a5)
	sw	a4,32(s1)
	sw	a5,36(s1)
	j	.L7177
.L7193:
	ld	a5,8(sp)
	lw	a5,0(a5)
	sw	a5,0(s1)
	j	.L7177
.L7194:
	ld	a5,8(sp)
	ld	a3,0(a5)
	lw	a4,8(a5)
	lw	a5,16(a5)
	sd	a3,328(s1)
	sw	a4,336(s1)
	sw	a5,340(s1)
	j	.L7177
.L7196:
	ld	a5,8(sp)
	ld	a5,0(a5)
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	ld	a5,56(a5)
	sd	a7,48(s1)
	sd	a6,56(s1)
	sd	a0,64(s1)
	sd	a1,72(s1)
	sd	a2,80(s1)
	sd	a3,88(s1)
	sd	a4,96(s1)
	sd	a5,104(s1)
	j	.L7177
.L7207:
	lla	a1,.LANCHOR5-1928
	li	a0,18
	call	sqlite3_config@plt
	j	.L7199
.L7206:
	lla	a1,.LANCHOR5-1992
	li	a0,4
	call	sqlite3_config@plt
	j	.L7197
	.size	sqlite3_config, .-sqlite3_config
	.section	.text.sqlite3_initialize,"ax",@progbits
	.align	1
	.globl	sqlite3_initialize
	.type	sqlite3_initialize, @function
sqlite3_initialize:
	addi	sp,sp,-32
	sd	s0,16(sp)
	lla	s0,.LANCHOR1
	sd	s1,8(sp)
	lw	s1,356(s0)
	sd	ra,24(sp)
	bne	s1,zero,.L7229
	lw	a4,368(s0)
	li	a5,1
	sw	a5,364(s0)
	beq	a4,zero,.L7210
	ld	a4,384(s0)
	sw	a5,368(s0)
	beq	a4,zero,.L7230
	li	a4,0
.L7212:
	lw	a5,376(s0)
	lw	a3,360(s0)
	addiw	a2,a5,1
	sw	a2,376(s0)
	or	a4,a4,a3
	beq	a4,zero,.L7251
.L7217:
	sw	a5,376(s0)
	bgt	a5,zero,.L7233
	sd	zero,.LANCHOR1+384,a5
.L7233:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7210:
	ld	a5,48(s0)
	beq	a5,zero,.L7252
.L7213:
	sd	zero,.LANCHOR0+552,a4
	sd	zero,.LANCHOR0+560,a4
	ld	a5,328(s0)
	li	a4,8
	sd	a4,.LANCHOR0+544,a3
	beq	a5,zero,.L7214
	lw	a4,336(s0)
	li	a5,511
	ble	a4,a5,.L7214
	lw	a5,340(s0)
	bgt	a5,zero,.L7215
.L7214:
	sd	zero,.LANCHOR1+328,a5
	sw	zero,.LANCHOR1+336,a5
.L7215:
	ld	a5,88(s0)
	ld	a0,104(s0)
	jalr	a5
	bne	a0,zero,.L7253
	ld	a5,384(s0)
	li	a4,1
	sw	a4,368(s0)
	lw	a4,356(s0)
	bne	a5,zero,.L7212
	li	a5,8
	sd	a5,384(s0)
.L7257:
	lw	a5,376(s0)
	lw	a3,360(s0)
	addiw	a2,a5,1
	sw	a2,376(s0)
	or	a4,a4,a3
	bne	a4,zero,.L7217
.L7251:
	li	a5,1
	li	a2,184
	li	a1,0
	lla	a0,.LANCHOR0+40
	sw	a5,360(s0)
	call	memset@plt
	li	a1,3
	lla	a0,.LANCHOR6
	call	sqlite3InsertBuiltinFuncs
	li	a1,15
	lla	a0,.LANCHOR6+216
	call	sqlite3InsertBuiltinFuncs
	li	a1,3
	lla	a0,.LANCHOR6+1296
	call	sqlite3InsertBuiltinFuncs
	li	a1,57
	lla	a0,aBuiltinFunc.22459
	call	sqlite3InsertBuiltinFuncs
	lw	a5,372(s0)
	beq	a5,zero,.L7254
.L7218:
	li	a5,1
	li	a0,10
	sw	a5,372(s0)
	call	sqlite3_malloc@plt
	beq	a0,zero,.L7255
	call	sqlite3_free@plt
	call	sqlite3_os_init@plt
	mv	s1,a0
	bne	a0,zero,.L7220
	li	a1,1
	lla	a0,.LANCHOR6+1512
	call	sqlite3_vfs_register@plt
	mv	s1,a0
	beq	a0,zero,.L7256
.L7220:
	lw	a5,376(s0)
	sw	zero,.LANCHOR1+360,a4
	addiw	a5,a5,-1
	j	.L7217
.L7229:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,0
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7253:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	s1,a0
	sd	zero,.LANCHOR0+544,a5
	sd	zero,.LANCHOR0+552,a5
	sd	zero,.LANCHOR0+560,a5
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7230:
	li	a5,8
	li	a4,0
	sd	a5,384(s0)
	j	.L7257
.L7252:
	lla	a1,.LANCHOR5-1992
	li	a0,4
	call	sqlite3_config@plt
	j	.L7213
.L7254:
	ld	a5,200(s0)
	beq	a5,zero,.L7258
.L7219:
	ld	a0,192(s0)
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L7220
	j	.L7218
.L7255:
	li	s1,7
	j	.L7220
.L7256:
	lla	a2,.LANCHOR0
	lw	a5,320(a2)
	beq	a5,zero,.L7221
	ld	t1,328(s0)
	beq	t1,zero,.L7224
	lw	a5,340(s0)
	bne	a5,zero,.L7259
.L7224:
	sw	zero,.LANCHOR0+332,a5
	li	a5,1
	slli	a5,a5,32
	sd	a5,336(a2)
	sd	t1,344(a2)
	sd	zero,.LANCHOR0+368,a5
	sd	zero,.LANCHOR0+376,a5
.L7223:
	sd	t1,352(a2)
.L7221:
	li	a5,1
	sw	a5,356(s0)
	j	.L7220
.L7259:
	lw	a0,336(s0)
	addiw	a7,a5,-1
	sw	a5,376(a2)
	andi	a0,a0,-8
	sw	a0,332(a2)
	sw	a5,336(a2)
	li	a3,90
	sext.w	a4,a7
	ble	a5,a3,.L7260
	li	a5,10
	sw	a5,340(a2)
	sd	t1,344(a2)
	sw	zero,.LANCHOR0+380,a5
.L7228:
	mv	a5,t1
	li	a3,0
	li	a6,-1
	j	.L7226
.L7231:
	mv	a5,a1
.L7226:
	sd	a3,0(a5)
	sd	a5,368(a2)
	addiw	a4,a4,-1
	add	a1,a5,a0
	mv	a3,a5
	bne	a4,a6,.L7231
	slli	a5,a7,32
	srli	a5,a5,32
	addi	a5,a5,1
	mul	a0,a5,a0
	add	t1,t1,a0
	j	.L7223
.L7258:
	lla	a1,.LANCHOR5-1928
	li	a0,18
	call	sqlite3_config@plt
	ld	a5,200(s0)
	j	.L7219
.L7260:
	li	a3,10
	divw	a5,a5,a3
	sd	t1,344(a2)
	sw	zero,.LANCHOR0+380,a3
	addiw	a5,a5,1
	sw	a5,340(a2)
	j	.L7228
	.size	sqlite3_initialize, .-sqlite3_initialize
	.section	.text.sqlite3_vfs_find,"ax",@progbits
	.align	1
	.globl	sqlite3_vfs_find
	.type	sqlite3_vfs_find, @function
sqlite3_vfs_find:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	call	sqlite3_initialize@plt
	bne	a0,zero,.L7264
	ld	s0,.LANCHOR0
	beq	s0,zero,.L7261
	bne	s1,zero,.L7263
	j	.L7261
.L7276:
	ld	s0,16(s0)
	beq	s0,zero,.L7261
.L7263:
	ld	a1,24(s0)
	mv	a0,s1
	call	strcmp@plt
	bne	a0,zero,.L7276
.L7261:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7264:
	li	s0,0
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_vfs_find, .-sqlite3_vfs_find
	.section	.text.sqlite3_sleep,"ax",@progbits
	.align	1
	.globl	sqlite3_sleep
	.type	sqlite3_sleep, @function
sqlite3_sleep:
	addi	sp,sp,-32
	sd	s0,16(sp)
	mv	s0,a0
	li	a0,0
	sd	ra,24(sp)
	sd	s1,8(sp)
	call	sqlite3_vfs_find@plt
	beq	a0,zero,.L7279
	li	s1,1000
	mulw	a1,s1,s0
	ld	a5,112(a0)
	jalr	a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	divw	a0,a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7279:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_sleep, .-sqlite3_sleep
	.section	.text.sqlite3_vfs_register,"ax",@progbits
	.align	1
	.globl	sqlite3_vfs_register
	.type	sqlite3_vfs_register, @function
sqlite3_vfs_register:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s1,a0
	mv	s2,a1
	call	sqlite3_initialize@plt
	mv	s0,a0
	beq	a0,zero,.L7287
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7287:
	mv	a0,s1
	call	vfsUnlink
	lla	a4,.LANCHOR0
	ld	a5,0(a4)
	bne	s2,zero,.L7284
	beq	a5,zero,.L7284
	ld	a4,16(a5)
	mv	a0,s0
	sd	a4,16(s1)
	sd	s1,16(a5)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7284:
	sd	a5,16(s1)
	sd	s1,0(a4)
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_vfs_register, .-sqlite3_vfs_register
	.section	.text.sqlite3_os_init,"ax",@progbits
	.align	1
	.globl	sqlite3_os_init
	.type	sqlite3_os_init, @function
sqlite3_os_init:
	li	a1,1
	lla	a0,.LANCHOR6+1512
	tail	sqlite3_vfs_register@plt
	.size	sqlite3_os_init, .-sqlite3_os_init
	.section	.text.sqlite3_vfs_unregister,"ax",@progbits
	.align	1
	.globl	sqlite3_vfs_unregister
	.type	sqlite3_vfs_unregister, @function
sqlite3_vfs_unregister:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	call	sqlite3_initialize@plt
	mv	s0,a0
	bne	a0,zero,.L7290
	mv	a0,s1
	call	vfsUnlink
.L7290:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_vfs_unregister, .-sqlite3_vfs_unregister
	.section	.text.sqlite3_malloc,"ax",@progbits
	.align	1
	.globl	sqlite3_malloc
	.type	sqlite3_malloc, @function
sqlite3_malloc:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_initialize@plt
	bne	a0,zero,.L7292
	ble	s0,zero,.L7292
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3Malloc
.L7292:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_malloc, .-sqlite3_malloc
	.section	.text.memjrnlWrite,"ax",@progbits
	.align	1
	.type	memjrnlWrite, @function
memjrnlWrite:
	addi	sp,sp,-192
	sd	s2,160(sp)
	sd	s5,136(sp)
	sd	s6,128(sp)
	sd	s7,120(sp)
	sd	ra,184(sp)
	sd	s0,176(sp)
	sd	s1,168(sp)
	sd	s3,152(sp)
	sd	s4,144(sp)
	sd	s8,112(sp)
	sd	s9,104(sp)
	lw	a5,12(a0)
	mv	s2,a0
	mv	s7,a1
	mv	s5,a2
	mv	s6,a3
	ble	a5,zero,.L7298
	add	a4,a2,a3
	bgt	a4,a5,.L7299
.L7298:
	ble	s5,zero,.L7312
	ld	s0,32(s2)
	mv	s4,s5
	j	.L7311
.L7324:
	sd	a0,0(s3)
.L7310:
	mv	s3,a0
	sd	a0,40(s2)
.L7308:
	addi	a0,s3,8
	mv	a1,s7
	mv	a2,s0
	add	a0,a0,s1
	call	memcpy@plt
	ld	s1,32(s2)
	subw	s4,s4,s0
	add	s7,s7,s0
	add	s0,s0,s1
	sd	s0,32(s2)
	ble	s4,zero,.L7312
.L7311:
	lw	a5,8(s2)
	ld	s3,40(s2)
	rem	s1,s0,a5
	addiw	a0,a5,8
	subw	a4,a5,s1
	mv	a5,a4
	ble	a4,s4,.L7307
	mv	a5,s4
.L7307:
	sext.w	s0,a5
	bne	s1,zero,.L7308
	call	sqlite3_malloc@plt
	beq	a0,zero,.L7315
	sd	zero,0(a0)
	bne	s3,zero,.L7324
	sd	a0,24(s2)
	j	.L7310
.L7312:
	addw	s5,s6,s5
	sw	s5,16(s2)
	li	s0,0
.L7322:
	ld	ra,184(sp)
	mv	a0,s0
	ld	s0,176(sp)
	ld	s1,168(sp)
	ld	s2,160(sp)
	ld	s3,152(sp)
	ld	s4,144(sp)
	ld	s5,136(sp)
	ld	s6,128(sp)
	ld	s7,120(sp)
	ld	s8,112(sp)
	ld	s9,104(sp)
	addi	sp,sp,192
	jr	ra
.L7315:
	li	s0,4096
	addi	s0,s0,-1014
	j	.L7322
.L7299:
	ld	s0,72(a0)
	ld	s1,80(a0)
	ld	t3,0(a0)
	ld	t1,8(a0)
	ld	a7,16(a0)
	ld	a6,40(a0)
	ld	a3,48(a0)
	ld	a4,56(a0)
	ld	a5,64(a0)
	ld	s8,24(a0)
	ld	s9,32(a0)
	li	a2,88
	li	a1,0
	lw	s3,64(a0)
	sd	t3,8(sp)
	sd	t1,16(sp)
	sd	a7,24(sp)
	sd	a6,48(sp)
	sd	a3,56(sp)
	sd	a4,64(sp)
	sd	a5,72(sp)
	sd	s0,80(sp)
	lw	s4,8(a0)
	sd	s8,32(sp)
	sd	s9,40(sp)
	sd	s1,88(sp)
	call	memset@plt
	ld	a6,40(s0)
	li	a5,557056
	addi	a5,a5,-129
	mv	a0,s0
	li	a4,0
	and	a3,s3,a5
	mv	a2,s2
	mv	a1,s1
	jalr	a6
	mv	s0,a0
	bne	a0,zero,.L7302
	beq	s8,zero,.L7303
	mv	s3,s8
	li	s1,0
	j	.L7305
.L7325:
	ld	s3,0(s3)
	beq	s3,zero,.L7306
.L7305:
	add	a5,s4,s1
	mv	a3,s1
	addi	a1,s3,8
	mv	a0,s2
	bge	s9,a5,.L7304
	subw	s4,s9,s1
.L7304:
	ld	a5,0(s2)
	mv	a2,s4
	add	s1,s1,s4
	ld	a5,24(a5)
	jalr	a5
	mv	s0,a0
	beq	a0,zero,.L7325
.L7302:
	ld	a5,0(s2)
	beq	a5,zero,.L7314
	ld	a5,8(a5)
	mv	a0,s2
	jalr	a5
.L7314:
	ld	a5,8(sp)
	sd	a5,0(s2)
	ld	a5,16(sp)
	sd	a5,8(s2)
	ld	a5,24(sp)
	sd	a5,16(s2)
	ld	a5,32(sp)
	sd	a5,24(s2)
	ld	a5,40(sp)
	sd	a5,32(s2)
	ld	a5,48(sp)
	sd	a5,40(s2)
	ld	a5,56(sp)
	sd	a5,48(s2)
	ld	a5,64(sp)
	sd	a5,56(s2)
	ld	a5,72(sp)
	sd	a5,64(s2)
	ld	a5,80(sp)
	sd	a5,72(s2)
	ld	a5,88(sp)
	sd	a5,80(s2)
	j	.L7322
.L7306:
	mv	a0,s8
	ld	s8,0(s8)
	call	sqlite3_free@plt
	bne	s8,zero,.L7306
.L7303:
	ld	a5,0(s2)
	ld	s0,176(sp)
	ld	ra,184(sp)
	ld	s1,168(sp)
	ld	s3,152(sp)
	ld	s4,144(sp)
	ld	s8,112(sp)
	ld	s9,104(sp)
	ld	t1,24(a5)
	mv	a3,s6
	mv	a2,s5
	ld	s6,128(sp)
	ld	s5,136(sp)
	mv	a1,s7
	mv	a0,s2
	ld	s7,120(sp)
	ld	s2,160(sp)
	addi	sp,sp,192
	jr	t1
	.size	memjrnlWrite, .-memjrnlWrite
	.section	.text.pragmaVtabOpen,"ax",@progbits
	.align	1
	.type	pragmaVtabOpen, @function
pragmaVtabOpen:
	addi	sp,sp,-32
	sd	s2,0(sp)
	mv	s2,a0
	li	a0,40
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a1
	call	sqlite3_malloc@plt
	beq	a0,zero,.L7328
	mv	s0,a0
	li	a2,32
	li	a1,0
	addi	a0,a0,8
	call	memset@plt
	sd	s2,0(s0)
	sd	s0,0(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L7328:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,7
	addi	sp,sp,32
	jr	ra
	.size	pragmaVtabOpen, .-pragmaVtabOpen
	.section	.text.jsonEachOpenEach,"ax",@progbits
	.align	1
	.type	jsonEachOpenEach, @function
jsonEachOpenEach:
	addi	sp,sp,-32
	li	a0,96
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a1
	call	sqlite3_malloc@plt
	beq	a0,zero,.L7332
	mv	s0,a0
	li	a2,96
	li	a1,0
	call	memset@plt
	sd	s0,0(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L7332:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,7
	addi	sp,sp,32
	jr	ra
	.size	jsonEachOpenEach, .-jsonEachOpenEach
	.section	.text.jsonEachOpenTree,"ax",@progbits
	.align	1
	.type	jsonEachOpenTree, @function
jsonEachOpenTree:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	call	jsonEachOpenEach
	bne	a0,zero,.L7335
	ld	a5,0(s0)
	li	a4,1
	sb	a4,25(a5)
.L7335:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	jsonEachOpenTree, .-jsonEachOpenTree
	.section	.text.sqlite3_malloc64,"ax",@progbits
	.align	1
	.globl	sqlite3_malloc64
	.type	sqlite3_malloc64, @function
sqlite3_malloc64:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_initialize@plt
	bne	a0,zero,.L7338
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3Malloc
.L7338:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_malloc64, .-sqlite3_malloc64
	.section	.text.sqlite3_str_new,"ax",@progbits
	.align	1
	.globl	sqlite3_str_new
	.type	sqlite3_str_new, @function
sqlite3_str_new:
	addi	sp,sp,-16
	sd	s0,0(sp)
	mv	s0,a0
	li	a0,32
	sd	ra,8(sp)
	call	sqlite3_malloc64@plt
	beq	a0,zero,.L7343
	beq	s0,zero,.L7344
	lw	a5,124(s0)
.L7342:
	sd	zero,8(a0)
	sd	zero,0(a0)
	sw	zero,16(a0)
	sw	a5,20(a0)
	sw	zero,24(a0)
	sh	zero,28(a0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7344:
	li	a5,1000001536
	addi	a5,a5,-1536
	j	.L7342
.L7343:
	ld	ra,8(sp)
	ld	s0,0(sp)
	lla	a0,.LANCHOR1+432
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_str_new, .-sqlite3_str_new
	.section	.text.nodeNew.isra.0,"ax",@progbits
	.align	1
	.type	nodeNew.isra.0, @function
nodeNew.isra.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s2,a0
	lw	a0,0(a0)
	mv	s3,a1
	mv	s1,a2
	addi	a0,a0,40
	call	sqlite3_malloc64@plt
	mv	s0,a0
	beq	a0,zero,.L7346
	lw	a2,0(s2)
	li	a1,0
	addi	a2,a2,40
	call	memset@plt
	li	a4,1
	addi	a5,s0,40
	sd	a5,24(s0)
	sw	a4,16(s0)
	lw	a5,0(s3)
	addiw	a5,a5,1
	sw	a5,0(s3)
	sd	s1,0(s0)
	sw	a4,20(s0)
	beq	s1,zero,.L7346
	lw	a5,16(s1)
	addiw	a5,a5,1
	sw	a5,16(s1)
.L7346:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	nodeNew.isra.0, .-nodeNew.isra.0
	.section	.text.rtreeOpen,"ax",@progbits
	.align	1
	.type	rtreeOpen, @function
rtreeOpen:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a0
	li	a0,296
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s2,a1
	call	sqlite3_malloc64@plt
	mv	s0,a0
	beq	a0,zero,.L7356
	li	a2,296
	li	a1,0
	call	memset@plt
	sd	s1,0(s0)
	lw	a5,80(s1)
	li	a0,0
	addiw	a5,a5,1
	sw	a5,80(s1)
	sd	s0,0(s2)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7356:
	sd	s0,0(s2)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,7
	addi	sp,sp,32
	jr	ra
	.size	rtreeOpen, .-rtreeOpen
	.section	.text.sqlite3_realloc,"ax",@progbits
	.align	1
	.globl	sqlite3_realloc
	.type	sqlite3_realloc, @function
sqlite3_realloc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	mv	s0,a1
	call	sqlite3_initialize@plt
	bne	a0,zero,.L7359
	not	a1,s0
	srai	a1,a1,63
	and	a1,s0,a1
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	sext.w	a1,a1
	addi	sp,sp,32
	tail	sqlite3Realloc
.L7359:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_realloc, .-sqlite3_realloc
	.section	.text.sqlite3_realloc64,"ax",@progbits
	.align	1
	.globl	sqlite3_realloc64
	.type	sqlite3_realloc64, @function
sqlite3_realloc64:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a0
	mv	s1,a1
	call	sqlite3_initialize@plt
	bne	a0,zero,.L7363
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3Realloc
.L7363:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_realloc64, .-sqlite3_realloc64
	.section	.text.dbReallocFinish,"ax",@progbits
	.align	1
	.type	dbReallocFinish, @function
dbReallocFinish:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	lbu	a5,97(a0)
	bne	a5,zero,.L7371
	ld	a5,400(a0)
	mv	s1,a1
	mv	s0,a0
	mv	a1,a2
	bgtu	a5,s1,.L7368
	ld	a5,408(a0)
	bleu	a5,s1,.L7368
	call	sqlite3DbMallocRawNN
	mv	s2,a0
	beq	a0,zero,.L7365
	lhu	a2,364(s0)
	mv	a1,s1
	call	memcpy@plt
	mv	a1,s1
	mv	a0,s0
	call	sqlite3DbFreeNN
.L7365:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7368:
	mv	a0,s1
	call	sqlite3_realloc64@plt
	mv	s2,a0
	bne	a0,zero,.L7365
	ld	a5,96(s0)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L7371
	lw	a4,196(s0)
	li	a5,1
	sb	a5,97(s0)
	ble	a4,zero,.L7372
	sw	a5,352(s0)
.L7372:
	mv	a0,s0
	call	sqlite3OomFault.part.0
	j	.L7365
.L7371:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s2,0
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	dbReallocFinish, .-dbReallocFinish
	.section	.text.sqlite3DbRealloc,"ax",@progbits
	.align	1
	.type	sqlite3DbRealloc, @function
sqlite3DbRealloc:
	mv	a5,a0
	beq	a1,zero,.L7378
	ld	a4,400(a0)
	bgtu	a4,a1,.L7376
	ld	a4,408(a0)
	bleu	a4,a1,.L7376
	lhu	a4,364(a0)
	bgeu	a4,a2,.L7377
.L7376:
	mv	a0,a5
	tail	dbReallocFinish
.L7377:
	mv	a0,a1
	ret
.L7378:
	mv	a1,a2
	tail	sqlite3DbMallocRawNN
	.size	sqlite3DbRealloc, .-sqlite3DbRealloc
	.section	.text.sqlite3DbReallocOrFree,"ax",@progbits
	.align	1
	.type	sqlite3DbReallocOrFree, @function
sqlite3DbReallocOrFree:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s2,a0
	mv	s1,a1
	call	sqlite3DbRealloc
	mv	s0,a0
	beq	a0,zero,.L7385
.L7379:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7385:
	beq	s1,zero,.L7379
	mv	a0,s2
	mv	a1,s1
	call	sqlite3DbFreeNN
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3DbReallocOrFree, .-sqlite3DbReallocOrFree
	.section	.text.sqlite3VdbeMemGrow,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemGrow, @function
sqlite3VdbeMemGrow:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	lw	a5,32(a0)
	mv	s0,a0
	mv	s1,a1
	ld	a0,40(a0)
	mv	s2,a2
	ble	a5,zero,.L7387
	ld	a1,24(s0)
	beq	a2,zero,.L7388
	ld	a5,16(s0)
	beq	a5,a1,.L7414
.L7388:
	call	sqlite3DbFreeNN
	ld	a0,40(s0)
.L7387:
	mv	a1,s1
	call	sqlite3DbMallocRaw
	sd	a0,24(s0)
	beq	a0,zero,.L7415
.L7390:
	ld	a5,40(s0)
	beq	a5,zero,.L7394
	ld	a4,400(a5)
	bleu	a4,a0,.L7416
.L7394:
	ld	a5,.LANCHOR1+72
	jalr	a5
.L7395:
	sw	a0,32(s0)
	beq	s2,zero,.L7396
	ld	a1,16(s0)
	beq	a1,zero,.L7396
	lw	a2,12(s0)
	ld	a0,24(s0)
	call	memcpy@plt
.L7396:
	lhu	a5,8(s0)
	andi	a4,a5,1024
	bne	a4,zero,.L7417
.L7397:
	ld	a3,24(s0)
	li	a4,-8192
	addi	a4,a4,1023
	and	a5,a5,a4
	sd	a3,16(s0)
	sh	a5,8(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L7417:
	ld	a5,48(s0)
	ld	a0,16(s0)
	jalr	a5
	lhu	a5,8(s0)
	j	.L7397
.L7416:
	ld	a4,408(a5)
	bleu	a4,a0,.L7394
	lhu	a0,364(a5)
	j	.L7395
.L7414:
	mv	a2,s1
	mv	a1,a5
	call	sqlite3DbReallocOrFree
	sd	a0,24(s0)
	sd	a0,16(s0)
	li	s2,0
	bne	a0,zero,.L7390
.L7415:
	lhu	a4,8(s0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L7418
	li	a5,1
	sh	a5,8(s0)
.L7392:
	sd	zero,16(s0)
	sw	zero,32(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,7
	addi	sp,sp,32
	jr	ra
.L7418:
	mv	a0,s0
	call	vdbeMemClearExternAndSetNull
	j	.L7392
	.size	sqlite3VdbeMemGrow, .-sqlite3VdbeMemGrow
	.section	.text.sqlite3VdbeMemExpandBlob,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemExpandBlob, @function
sqlite3VdbeMemExpandBlob:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lw	a1,12(a0)
	lw	a5,0(a0)
	mv	s0,a0
	addw	a1,a1,a5
	bgt	a1,zero,.L7420
	lhu	a5,8(a0)
	li	s1,0
	andi	a5,a5,16
	beq	a5,zero,.L7421
	li	a1,1
.L7420:
	li	a2,1
	mv	a0,s0
	call	sqlite3VdbeMemGrow
	mv	s1,a0
	bne	a0,zero,.L7423
	lw	a5,12(s0)
	ld	a0,16(s0)
	lw	a2,0(s0)
	li	a1,0
	add	a0,a0,a5
	call	memset@plt
	lw	a4,12(s0)
	lw	a3,0(s0)
	lhu	a5,8(s0)
	addw	a4,a4,a3
	li	a3,-16384
	addi	a3,a3,-513
	and	a5,a5,a3
	sw	a4,12(s0)
	sh	a5,8(s0)
.L7421:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7423:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,7
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeMemExpandBlob, .-sqlite3VdbeMemExpandBlob
	.section	.text.computeNumericType,"ax",@progbits
	.align	1
	.type	computeNumericType, @function
computeNumericType:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	lhu	a5,8(a0)
	mv	s0,a0
	slli	a4,a5,49
	blt	a4,zero,.L7437
.L7427:
	lbu	a3,10(s0)
	lw	a2,12(s0)
	ld	a0,16(s0)
	mv	a1,s0
	call	sqlite3Atoi64
	lbu	a3,10(s0)
	lw	a2,12(s0)
	beq	a0,zero,.L7428
	ld	a0,16(s0)
	addi	a1,sp,8
	call	sqlite3Atoi64
	li	a5,1
	ble	a0,a5,.L7436
.L7431:
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	a0,8
	addi	sp,sp,32
	jr	ra
.L7428:
	ld	a0,16(s0)
	addi	a1,sp,8
	call	sqlite3Atoi64
	bne	a0,zero,.L7431
.L7436:
	ld	a5,8(sp)
	li	a0,4
	sd	a5,0(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L7437:
	call	sqlite3VdbeMemExpandBlob
	j	.L7427
	.size	computeNumericType, .-computeNumericType
	.section	.text.vdbeMemAddTerminator,"ax",@progbits
	.align	1
	.type	vdbeMemAddTerminator, @function
vdbeMemAddTerminator:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lw	a1,12(a0)
	li	a2,1
	mv	s0,a0
	addiw	a1,a1,3
	call	sqlite3VdbeMemGrow
	bne	a0,zero,.L7440
	lw	a4,12(s0)
	ld	a5,16(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
	lw	a4,12(s0)
	ld	a5,16(s0)
	add	a5,a5,a4
	sb	zero,1(a5)
	lw	a4,12(s0)
	ld	a5,16(s0)
	add	a5,a5,a4
	sb	zero,2(a5)
	lhu	a5,8(s0)
	ori	a5,a5,512
	sh	a5,8(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7440:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,7
	addi	sp,sp,16
	jr	ra
	.size	vdbeMemAddTerminator, .-vdbeMemAddTerminator
	.section	.text.sqlite3VdbeMemMakeWriteable,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemMakeWriteable, @function
sqlite3VdbeMemMakeWriteable:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a5,8(a0)
	mv	s0,a0
	andi	a4,a5,18
	beq	a4,zero,.L7443
	slli	a4,a5,49
	blt	a4,zero,.L7444
.L7448:
	lw	a5,32(s0)
	beq	a5,zero,.L7445
	ld	a4,16(s0)
	ld	a5,24(s0)
	beq	a4,a5,.L7458
.L7445:
	mv	a0,s0
	call	vdbeMemAddTerminator
	bne	a0,zero,.L7447
.L7458:
	lhu	a5,8(s0)
.L7443:
	li	a4,-4096
	addi	a4,a4,-1
	and	a5,a5,a4
	sh	a5,8(s0)
	li	a0,0
.L7447:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7444:
	call	sqlite3VdbeMemExpandBlob
	mv	a5,a0
	li	a0,7
	beq	a5,zero,.L7448
	j	.L7447
	.size	sqlite3VdbeMemMakeWriteable, .-sqlite3VdbeMemMakeWriteable
	.section	.text.sqlite3_value_dup,"ax",@progbits
	.align	1
	.globl	sqlite3_value_dup
	.type	sqlite3_value_dup, @function
sqlite3_value_dup:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	beq	a0,zero,.L7471
	mv	s1,a0
	li	a0,56
	call	sqlite3_malloc@plt
	mv	s0,a0
	beq	a0,zero,.L7471
	li	a2,56
	li	a1,0
	call	memset@plt
	li	a2,24
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	lhu	a5,8(s0)
	andi	a4,a5,18
	bne	a4,zero,.L7463
	andi	a5,a5,-1025
	sh	a5,8(s0)
.L7459:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7463:
	li	a4,-4096
	addi	a4,a4,1023
	and	a5,a5,a4
	li	a4,4096
	or	a5,a5,a4
	sh	a5,8(s0)
	mv	a0,s0
	call	sqlite3VdbeMemMakeWriteable
	beq	a0,zero,.L7459
	mv	a0,s0
	call	sqlite3ValueFree
.L7471:
	li	s0,0
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_value_dup, .-sqlite3_value_dup
	.section	.rodata.str1.8
	.align	3
.LC40:
	.string	"RtreeMatchArg"
	.section	.text.geomCallback,"ax",@progbits
	.align	1
	.type	geomCallback, @function
geomCallback:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	sd	s2,32(sp)
	mv	s0,a1
	addiw	s5,a1,-1
	mv	s4,a0
	mv	s3,a2
	call	sqlite3_user_data@plt
	sext.w	s1,s5
	addi	a5,s0,8
	add	s1,s1,a5
	slli	s1,s1,3
	mv	s6,a0
	mv	a0,s1
	call	sqlite3_malloc64@plt
	beq	a0,zero,.L7482
	sw	s1,0(a0)
	ld	a1,0(s6)
	ld	a2,8(s6)
	ld	a3,16(s6)
	ld	a4,24(s6)
	addi	a5,s0,7
	slli	a5,a5,3
	add	a5,a0,a5
	sd	a1,8(a0)
	sd	a2,16(a0)
	sd	a3,24(a0)
	sd	a4,32(a0)
	sd	a5,48(a0)
	sw	s0,40(a0)
	mv	s2,a0
	ble	s0,zero,.L7474
	slli	s5,s5,32
	srli	s5,s5,29
	li	s0,0
	li	s6,0
	j	.L7477
.L7475:
	ld	a0,0(s3)
	addi	s3,s3,8
	call	sqlite3_value_int64@plt
	add	a5,s2,s0
	sd	a0,56(a5)
	beq	s0,s5,.L7476
.L7483:
	ld	a5,48(s2)
	addi	s0,s0,8
.L7477:
	ld	a0,0(s3)
	add	s1,a5,s0
	call	sqlite3_value_dup@plt
	sd	a0,0(s1)
	ld	a5,48(s2)
	add	a5,a5,s0
	ld	a5,0(a5)
	bne	a5,zero,.L7475
	ld	a0,0(s3)
	li	s6,1
	addi	s3,s3,8
	call	sqlite3_value_int64@plt
	add	a5,s2,s0
	sd	a0,56(a5)
	bne	s0,s5,.L7483
.L7476:
	beq	s6,zero,.L7474
	mv	a0,s4
	call	sqlite3_result_error_nomem@plt
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	tail	rtreeMatchArgFree
.L7474:
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a1,s2
	mv	a0,s4
	ld	s2,32(sp)
	ld	s4,16(sp)
	lla	a3,rtreeMatchArgFree
	lla	a2,.LC40
	addi	sp,sp,64
	tail	sqlite3_result_pointer@plt
.L7482:
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a0,s4
	ld	s4,16(sp)
	addi	sp,sp,64
	tail	sqlite3_result_error_nomem@plt
	.size	geomCallback, .-geomCallback
	.section	.text.sqlite3VdbeMemCopy,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemCopy, @function
sqlite3VdbeMemCopy:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	mv	s0,a0
	mv	s1,a1
	bne	a5,zero,.L7494
.L7485:
	li	a2,24
	mv	a1,s1
	mv	a0,s0
	call	memcpy@plt
	lhu	a5,8(s0)
	andi	a4,a5,-1025
	slli	a4,a4,48
	srli	a4,a4,48
	sh	a4,8(s0)
	andi	a5,a5,18
	beq	a5,zero,.L7486
	lhu	a5,8(s1)
	slli	a3,a5,52
	bge	a3,zero,.L7495
.L7486:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L7494:
	call	vdbeMemClearExternAndSetNull
	j	.L7485
.L7495:
	li	a5,4096
	or	a4,a4,a5
	sh	a4,8(s0)
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3VdbeMemMakeWriteable
	.size	sqlite3VdbeMemCopy, .-sqlite3VdbeMemCopy
	.section	.text.sqlite3_result_value,"ax",@progbits
	.align	1
	.globl	sqlite3_result_value
	.type	sqlite3_result_value, @function
sqlite3_result_value:
	ld	a0,0(a0)
	tail	sqlite3VdbeMemCopy
	.size	sqlite3_result_value, .-sqlite3_result_value
	.section	.text.sqlite3VdbeGetBoundValue.constprop.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeGetBoundValue.constprop.0, @function
sqlite3VdbeGetBoundValue.constprop.0:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	beq	a0,zero,.L7499
	slli	a5,a1,3
	ld	s1,128(a0)
	sub	a5,a5,a1
	slli	a5,a5,3
	addi	a5,a5,-56
	add	s1,s1,a5
	lhu	a5,8(s1)
	li	s0,0
	andi	a5,a5,1
	beq	a5,zero,.L7505
.L7497:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7505:
	ld	s2,0(a0)
	li	a1,56
	mv	a0,s2
	call	sqlite3DbMallocZero
	mv	s0,a0
	beq	a0,zero,.L7497
	li	a5,1
	sd	s2,40(a0)
	mv	a1,s1
	sh	a5,8(a0)
	call	sqlite3VdbeMemCopy
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7499:
	li	s0,0
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeGetBoundValue.constprop.0, .-sqlite3VdbeGetBoundValue.constprop.0
	.section	.text.createAggContext.isra.0,"ax",@progbits
	.align	1
	.type	createAggContext.isra.0, @function
createAggContext.isra.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s0,a1
	ble	a2,zero,.L7517
	lw	a5,32(a1)
	mv	s1,a2
	mv	s2,a0
	blt	a5,a2,.L7518
	ld	a0,24(a1)
	sd	a0,16(a1)
.L7512:
	li	a5,8192
	sh	a5,8(s0)
	ld	a5,0(s2)
	sd	a5,0(s0)
	beq	a0,zero,.L7506
	mv	a2,s1
	li	a1,0
	call	memset@plt
	ld	a0,16(s0)
.L7506:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7517:
	lhu	a4,8(a1)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L7519
	li	a5,1
	sh	a5,8(a1)
.L7509:
	sd	zero,16(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L7518:
	li	a2,0
	mv	a1,s1
	mv	a0,s0
	call	sqlite3VdbeMemGrow
	ld	a0,16(s0)
	j	.L7512
.L7519:
	mv	a0,a1
	call	vdbeMemClearExternAndSetNull
	j	.L7509
	.size	createAggContext.isra.0, .-createAggContext.isra.0
	.section	.text.sqlite3_aggregate_context,"ax",@progbits
	.align	1
	.globl	sqlite3_aggregate_context
	.type	sqlite3_aggregate_context, @function
sqlite3_aggregate_context:
	ld	a5,16(a0)
	lhu	a4,8(a5)
	slli	a3,a4,50
	bge	a3,zero,.L7522
	ld	a0,16(a5)
	ret
.L7522:
	mv	a2,a1
	addi	a0,a0,8
	mv	a1,a5
	tail	createAggContext.isra.0
	.size	sqlite3_aggregate_context, .-sqlite3_aggregate_context
	.section	.text.last_valueInvFunc,"ax",@progbits
	.align	1
	.type	last_valueInvFunc, @function
last_valueInvFunc:
	addi	sp,sp,-16
	li	a1,16
	sd	ra,8(sp)
	sd	s0,0(sp)
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7523
	lw	a5,8(a0)
	mv	s0,a0
	addiw	a4,a5,-1
	sw	a4,8(a0)
	beq	a4,zero,.L7528
.L7523:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7528:
	ld	a0,0(a0)
	call	sqlite3_value_free@plt
	sd	zero,0(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	last_valueInvFunc, .-last_valueInvFunc
	.section	.text.ntileInvFunc,"ax",@progbits
	.align	1
	.type	ntileInvFunc, @function
ntileInvFunc:
	addi	sp,sp,-16
	li	a1,24
	sd	ra,8(sp)
	call	sqlite3_aggregate_context@plt
	ld	a5,16(a0)
	addi	a5,a5,1
	sd	a5,16(a0)
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	ntileInvFunc, .-ntileInvFunc
	.section	.text.ntileValueFunc,"ax",@progbits
	.align	1
	.type	ntileValueFunc, @function
ntileValueFunc:
	addi	sp,sp,-16
	li	a1,24
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7531
	ld	a5,8(a0)
	ble	a5,zero,.L7531
	ld	a3,0(a0)
	ld	a1,16(a0)
	div	a4,a3,a5
	sext.w	a4,a4
	beq	a4,zero,.L7540
	mul	a5,a5,a4
	addiw	a2,a4,1
	sub	a5,a3,a5
	mul	a3,a2,a5
	blt	a1,a3,.L7541
	sub	a1,a1,a3
	div	a1,a1,a4
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	a5,a5,1
	addi	sp,sp,16
	add	a1,a1,a5
	tail	sqlite3_result_int64@plt
.L7531:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7541:
	div	a1,a1,a2
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	addi	a1,a1,1
	tail	sqlite3_result_int64@plt
.L7540:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	a1,a1,1
	addi	sp,sp,16
	tail	sqlite3_result_int64@plt
	.size	ntileValueFunc, .-ntileValueFunc
	.section	.text.cume_distValueFunc,"ax",@progbits
	.align	1
	.type	cume_distValueFunc, @function
cume_distValueFunc:
	addi	sp,sp,-16
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7542
	ld	a1,8(a0)
	ld	a5,16(a0)
	mv	a0,s0
	ld	s0,0(sp)
	div	a1,a1,a5
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_double@plt
.L7542:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	cume_distValueFunc, .-cume_distValueFunc
	.section	.text.percent_rankInvFunc,"ax",@progbits
	.align	1
	.type	percent_rankInvFunc, @function
percent_rankInvFunc:
	addi	sp,sp,-16
	li	a1,24
	sd	ra,8(sp)
	call	sqlite3_aggregate_context@plt
	ld	a5,8(a0)
	addi	a5,a5,1
	sd	a5,8(a0)
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	percent_rankInvFunc, .-percent_rankInvFunc
	.section	.text.cume_distInvFunc,"ax",@progbits
	.align	1
	.type	cume_distInvFunc, @function
cume_distInvFunc:
	tail	percent_rankInvFunc
	.size	cume_distInvFunc, .-cume_distInvFunc
	.section	.text.percent_rankValueFunc,"ax",@progbits
	.align	1
	.type	percent_rankValueFunc, @function
percent_rankValueFunc:
	addi	sp,sp,-16
	li	a1,24
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7548
	ld	a1,8(a0)
	ld	a5,16(a0)
	li	a4,1
	sd	a1,0(a0)
	ble	a5,a4,.L7550
	addi	a5,a5,-1
	div	a1,a1,a5
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_double@plt
.L7550:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a1,0
	addi	sp,sp,16
	tail	sqlite3_result_double@plt
.L7548:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	percent_rankValueFunc, .-percent_rankValueFunc
	.section	.text.percent_rankStepFunc,"ax",@progbits
	.align	1
	.type	percent_rankStepFunc, @function
percent_rankStepFunc:
	addi	sp,sp,-16
	li	a1,24
	sd	ra,8(sp)
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7553
	ld	a5,16(a0)
	addi	a5,a5,1
	sd	a5,16(a0)
.L7553:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	percent_rankStepFunc, .-percent_rankStepFunc
	.section	.text.cume_distStepFunc,"ax",@progbits
	.align	1
	.type	cume_distStepFunc, @function
cume_distStepFunc:
	tail	percent_rankStepFunc
	.size	cume_distStepFunc, .-cume_distStepFunc
	.section	.text.rankValueFunc,"ax",@progbits
	.align	1
	.type	rankValueFunc, @function
rankValueFunc:
	addi	sp,sp,-32
	li	a1,24
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7560
	ld	a1,0(a0)
	mv	s0,a0
	mv	a0,s1
	call	sqlite3_result_int64@plt
	sd	zero,0(s0)
.L7560:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	rankValueFunc, .-rankValueFunc
	.section	.text.rankStepFunc,"ax",@progbits
	.align	1
	.type	rankStepFunc, @function
rankStepFunc:
	addi	sp,sp,-16
	li	a1,24
	sd	ra,8(sp)
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7566
	ld	a5,8(a0)
	ld	a4,0(a0)
	addi	a5,a5,1
	sd	a5,8(a0)
	bne	a4,zero,.L7566
	sd	a5,0(a0)
.L7566:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	rankStepFunc, .-rankStepFunc
	.section	.text.dense_rankValueFunc,"ax",@progbits
	.align	1
	.type	dense_rankValueFunc, @function
dense_rankValueFunc:
	addi	sp,sp,-16
	li	a1,24
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7571
	ld	a5,8(a0)
	ld	a1,0(a0)
	beq	a5,zero,.L7573
	addi	a1,a1,1
	sd	a1,0(a0)
	sd	zero,8(a0)
.L7573:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_int64@plt
.L7571:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	dense_rankValueFunc, .-dense_rankValueFunc
	.section	.text.dense_rankStepFunc,"ax",@progbits
	.align	1
	.type	dense_rankStepFunc, @function
dense_rankStepFunc:
	addi	sp,sp,-16
	li	a1,24
	sd	ra,8(sp)
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7578
	li	a5,1
	sd	a5,8(a0)
.L7578:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	dense_rankStepFunc, .-dense_rankStepFunc
	.section	.text.row_numberValueFunc,"ax",@progbits
	.align	1
	.type	row_numberValueFunc, @function
row_numberValueFunc:
	addi	sp,sp,-16
	li	a1,8
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	li	a1,0
	beq	a0,zero,.L7585
	ld	a1,0(a0)
.L7585:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_int64@plt
	.size	row_numberValueFunc, .-row_numberValueFunc
	.section	.text.row_numberStepFunc,"ax",@progbits
	.align	1
	.type	row_numberStepFunc, @function
row_numberStepFunc:
	addi	sp,sp,-16
	li	a1,8
	sd	ra,8(sp)
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7590
	ld	a5,0(a0)
	addi	a5,a5,1
	sd	a5,0(a0)
.L7590:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	row_numberStepFunc, .-row_numberStepFunc
	.section	.text.countInverse,"ax",@progbits
	.align	1
	.type	countInverse, @function
countInverse:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a1
	li	a1,8
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s2,a2
	call	sqlite3_aggregate_context@plt
	mv	s0,a0
	bne	s1,zero,.L7597
.L7600:
	beq	s0,zero,.L7596
	ld	a5,0(s0)
	addi	a5,a5,-1
	sd	a5,0(s0)
.L7596:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7597:
	ld	a0,0(s2)
	call	sqlite3_value_type@plt
	li	a5,5
	bne	a0,a5,.L7600
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	countInverse, .-countInverse
	.section	.text.countFinalize,"ax",@progbits
	.align	1
	.type	countFinalize, @function
countFinalize:
	addi	sp,sp,-16
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	li	a1,0
	beq	a0,zero,.L7604
	ld	a1,0(a0)
.L7604:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_int64@plt
	.size	countFinalize, .-countFinalize
	.section	.text.countStep,"ax",@progbits
	.align	1
	.type	countStep, @function
countStep:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a1
	li	a1,8
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s2,a2
	call	sqlite3_aggregate_context@plt
	mv	s0,a0
	bne	s1,zero,.L7610
.L7613:
	beq	s0,zero,.L7609
	ld	a5,0(s0)
	addi	a5,a5,1
	sd	a5,0(s0)
.L7609:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7610:
	ld	a0,0(s2)
	call	sqlite3_value_type@plt
	li	a5,5
	bne	a0,a5,.L7613
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	countStep, .-countStep
	.section	.text.avgFinalize,"ax",@progbits
	.align	1
	.type	avgFinalize, @function
avgFinalize:
	addi	sp,sp,-16
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7616
	ld	a5,16(a0)
	bgt	a5,zero,.L7622
.L7616:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7622:
	ld	a1,0(a0)
	mv	a0,s0
	ld	s0,0(sp)
	div	a1,a1,a5
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_double@plt
	.size	avgFinalize, .-avgFinalize
	.section	.text.totalFinalize,"ax",@progbits
	.align	1
	.type	totalFinalize, @function
totalFinalize:
	addi	sp,sp,-16
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	li	a1,0
	beq	a0,zero,.L7624
	ld	a1,0(a0)
.L7624:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_double@plt
	.size	totalFinalize, .-totalFinalize
	.section	.text.sumInverse,"ax",@progbits
	.align	1
	.type	sumInverse, @function
sumInverse:
	addi	sp,sp,-32
	li	a1,32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a2
	call	sqlite3_aggregate_context@plt
	mv	s0,a0
	ld	a0,0(s1)
	call	sqlite3_value_numeric_type@plt
	beq	s0,zero,.L7629
	li	a5,5
	beq	a0,a5,.L7629
	ld	a5,16(s0)
	li	a4,1
	addi	a5,a5,-1
	sd	a5,16(s0)
	bne	a0,a4,.L7631
	lbu	a5,25(s0)
	ld	a0,0(s1)
	beq	a5,zero,.L7637
	call	sqlite3_value_double@plt
	ld	a5,0(s0)
	sub	a5,a5,a0
	sd	a5,0(s0)
.L7629:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7631:
	ld	a0,0(s1)
	call	sqlite3_value_double@plt
	ld	a5,0(s0)
	sub	a5,a5,a0
	sd	a5,0(s0)
	j	.L7629
.L7637:
	call	sqlite3_value_int64@plt
	ld	a4,0(s0)
	ld	a5,8(s0)
	sub	a4,a4,a0
	sub	a0,a5,a0
	sd	a4,0(s0)
	sd	a0,8(s0)
	j	.L7629
	.size	sumInverse, .-sumInverse
	.section	.text.sumStep,"ax",@progbits
	.align	1
	.type	sumStep, @function
sumStep:
	addi	sp,sp,-32
	li	a1,32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	mv	s1,a2
	call	sqlite3_aggregate_context@plt
	mv	s0,a0
	ld	a0,0(s1)
	call	sqlite3_value_numeric_type@plt
	beq	s0,zero,.L7638
	li	a5,5
	beq	a0,a5,.L7638
	ld	a5,16(s0)
	li	s2,1
	addi	a5,a5,1
	sd	a5,16(s0)
	beq	a0,s2,.L7648
	ld	a0,0(s1)
	call	sqlite3_value_double@plt
	ld	a5,0(s0)
	sb	s2,25(s0)
	add	a5,a5,a0
	sd	a5,0(s0)
.L7638:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7648:
	ld	a0,0(s1)
	call	sqlite3_value_int64@plt
	ld	a4,0(s0)
	lbu	a5,25(s0)
	lbu	a3,24(s0)
	add	a4,a4,a0
	sd	a4,0(s0)
	or	a5,a5,a3
	andi	a5,a5,0xff
	bne	a5,zero,.L7638
	ld	a5,8(s0)
	add	a4,a0,a5
	xor	a5,a0,a5
	not	a5,a5
	xor	a0,a4,a0
	and	a0,a0,a5
	sd	a4,8(s0)
	bge	a0,zero,.L7638
	li	a5,257
	sh	a5,24(s0)
	j	.L7638
	.size	sumStep, .-sumStep
	.section	.text.jsonGroupInverse,"ax",@progbits
	.align	1
	.type	jsonGroupInverse, @function
jsonGroupInverse:
	addi	sp,sp,-16
	li	a1,0
	sd	ra,8(sp)
	call	sqlite3_aggregate_context@plt
	bne	a0,zero,.L7660
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
.L7660:
	ld	a4,8(a0)
	li	a6,0
	li	a2,1
	li	a1,44
	li	a7,34
	li	t1,92
.L7651:
	add	a5,a4,a2
	lbu	a5,0(a5)
	beq	a5,a1,.L7661
.L7654:
	addiw	a3,a2,1
	bne	a5,a7,.L7652
.L7662:
	mv	a2,a3
	add	a5,a4,a2
	lbu	a5,0(a5)
	xori	a6,a6,1
	bne	a5,a1,.L7654
.L7661:
	beq	a6,zero,.L7655
.L7656:
	addiw	a2,a2,1
	add	a5,a4,a2
	lbu	a5,0(a5)
	beq	a5,a1,.L7656
	addiw	a3,a2,1
	beq	a5,a7,.L7662
.L7652:
	bne	a5,t1,.L7657
	addiw	a2,a2,2
	j	.L7651
.L7657:
	mv	a2,a3
	j	.L7651
.L7655:
	ld	a5,24(a0)
	addi	a1,a2,1
	add	a1,a4,a1
	sub	a2,a5,a2
	sd	a2,24(a0)
	ld	ra,8(sp)
	addi	a2,a2,-1
	addi	a0,a4,1
	addi	sp,sp,16
	tail	memmove@plt
	.size	jsonGroupInverse, .-jsonGroupInverse
	.section	.text.first_valueStepFunc,"ax",@progbits
	.align	1
	.type	first_valueStepFunc, @function
first_valueStepFunc:
	addi	sp,sp,-32
	li	a1,16
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s2,a0
	mv	s1,a2
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7663
	ld	a5,8(a0)
	mv	s0,a0
	beq	a5,zero,.L7668
.L7663:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7668:
	ld	a0,0(s1)
	call	sqlite3_value_dup@plt
	sd	a0,8(s0)
	bne	a0,zero,.L7663
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	sqlite3_result_error_nomem@plt
	.size	first_valueStepFunc, .-first_valueStepFunc
	.section	.text.last_valueStepFunc,"ax",@progbits
	.align	1
	.type	last_valueStepFunc, @function
last_valueStepFunc:
	addi	sp,sp,-32
	li	a1,16
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s2,a0
	mv	s1,a2
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7669
	mv	s0,a0
	ld	a0,0(a0)
	call	sqlite3_value_free@plt
	ld	a0,0(s1)
	call	sqlite3_value_dup@plt
	sd	a0,0(s0)
	beq	a0,zero,.L7676
	lw	a5,8(s0)
	addiw	a5,a5,1
	sw	a5,8(s0)
.L7669:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7676:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	sqlite3_result_error_nomem@plt
	.size	last_valueStepFunc, .-last_valueStepFunc
	.section	.text.first_valueFinalizeFunc,"ax",@progbits
	.align	1
	.type	first_valueFinalizeFunc, @function
first_valueFinalizeFunc:
	addi	sp,sp,-32
	li	a1,16
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7677
	ld	a1,8(a0)
	mv	s0,a0
	beq	a1,zero,.L7677
	mv	a0,s1
	call	sqlite3_result_value@plt
	ld	a0,8(s0)
	call	sqlite3_value_free@plt
	sd	zero,8(s0)
.L7677:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	first_valueFinalizeFunc, .-first_valueFinalizeFunc
	.section	.text.nth_valueFinalizeFunc,"ax",@progbits
	.align	1
	.type	nth_valueFinalizeFunc, @function
nth_valueFinalizeFunc:
	addi	sp,sp,-32
	li	a1,0
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7686
	ld	a1,8(a0)
	mv	s0,a0
	beq	a1,zero,.L7686
	mv	a0,s1
	call	sqlite3_result_value@plt
	ld	a0,8(s0)
	call	sqlite3_value_free@plt
	sd	zero,8(s0)
.L7686:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	nth_valueFinalizeFunc, .-nth_valueFinalizeFunc
	.section	.text.last_valueValueFunc,"ax",@progbits
	.align	1
	.type	last_valueValueFunc, @function
last_valueValueFunc:
	addi	sp,sp,-16
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7695
	ld	a1,0(a0)
	beq	a1,zero,.L7695
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_value@plt
.L7695:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	last_valueValueFunc, .-last_valueValueFunc
	.section	.text.last_valueFinalizeFunc,"ax",@progbits
	.align	1
	.type	last_valueFinalizeFunc, @function
last_valueFinalizeFunc:
	addi	sp,sp,-32
	li	a1,16
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s1,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7704
	ld	a1,0(a0)
	mv	s0,a0
	beq	a1,zero,.L7704
	mv	a0,s1
	call	sqlite3_result_value@plt
	ld	a0,0(s0)
	call	sqlite3_value_free@plt
	sd	zero,0(s0)
.L7704:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	last_valueFinalizeFunc, .-last_valueFinalizeFunc
	.section	.text.minMaxValueFinalize,"ax",@progbits
	.align	1
	.type	minMaxValueFinalize, @function
minMaxValueFinalize:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a1
	li	a1,0
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s2,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7713
	lhu	a5,8(a0)
	mv	s0,a0
	bne	a5,zero,.L7727
	bne	s1,zero,.L7713
.L7718:
	lw	a5,32(s0)
	beq	a5,zero,.L7713
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	vdbeMemClear
.L7727:
	mv	a1,a0
	mv	a0,s2
	call	sqlite3_result_value@plt
	beq	s1,zero,.L7728
.L7713:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7728:
	lhu	a4,8(s0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	beq	a5,zero,.L7718
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	vdbeMemClear
	.size	minMaxValueFinalize, .-minMaxValueFinalize
	.section	.text.minMaxValue,"ax",@progbits
	.align	1
	.type	minMaxValue, @function
minMaxValue:
	li	a1,1
	tail	minMaxValueFinalize
	.size	minMaxValue, .-minMaxValue
	.section	.text.minMaxFinalize,"ax",@progbits
	.align	1
	.type	minMaxFinalize, @function
minMaxFinalize:
	li	a1,0
	tail	minMaxValueFinalize
	.size	minMaxFinalize, .-minMaxFinalize
	.section	.text.sqlite3VdbeMemSetStr,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemSetStr, @function
sqlite3VdbeMemSetStr:
	addi	sp,sp,-80
	sd	s7,8(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	mv	s7,a0
	beq	a1,zero,.L7787
	ld	s4,40(a0)
	mv	s1,a1
	mv	s0,a2
	mv	s2,a3
	mv	s3,a4
	beq	s4,zero,.L7788
	lw	s5,124(s4)
	bne	a3,zero,.L7789
	li	s6,16
	blt	a2,zero,.L7790
.L7737:
	li	a5,-1
	beq	s3,a5,.L7791
.L7744:
	lhu	a4,8(s7)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L7755
	lw	a5,32(s7)
	bne	a5,zero,.L7755
	sd	s1,16(s7)
	lla	a5,sqlite3MallocSize
	beq	s3,a5,.L7792
.L7757:
	sd	s3,48(s7)
	li	a5,1024
	beq	s3,zero,.L7793
.L7761:
	or	s6,a5,s6
.L7760:
	sw	s0,12(s7)
	sh	s6,8(s7)
	mv	a5,s2
	bne	s2,zero,.L7762
	li	a5,1
.L7762:
	sb	a5,10(s7)
	li	a0,0
	blt	s5,s0,.L7786
.L7781:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	jr	ra
.L7789:
	li	s6,2
	bge	a2,zero,.L7737
	li	a5,1
	li	s6,514
	bne	a3,a5,.L7767
.L7738:
	mv	a0,s1
	call	strlen@plt
	slli	s0,a0,33
	li	a5,-1
	srli	s0,s0,33
	li	s6,514
	bne	s3,a5,.L7744
	sext.w	s3,s0
	li	s6,514
.L7765:
	addiw	s3,s3,1
.L7763:
	blt	s5,s0,.L7794
	li	a5,32
	sext.w	a1,s3
	bgeu	s3,a5,.L7751
	li	a1,32
.L7751:
	lw	a5,32(s7)
	blt	a5,a1,.L7795
	lhu	a5,8(s7)
	ld	a0,24(s7)
	andi	a5,a5,45
	sd	a0,16(s7)
	sh	a5,8(s7)
.L7753:
	slli	a2,s3,32
	srli	a2,a2,32
	mv	a1,s1
	call	memcpy@plt
	sw	s0,12(s7)
	sh	s6,8(s7)
	mv	a5,s2
	bne	s2,zero,.L7754
	li	a5,1
.L7754:
	sb	a5,10(s7)
	li	a0,0
	j	.L7781
.L7755:
	mv	a0,s7
	call	vdbeMemClear
	lla	a5,sqlite3MallocSize
	sd	s1,16(s7)
	bne	s3,a5,.L7757
.L7792:
	ld	a5,40(s7)
	sd	s1,24(s7)
	beq	a5,zero,.L7758
	ld	a4,400(a5)
	bgtu	a4,s1,.L7758
	ld	a4,408(a5)
	bleu	a4,s1,.L7758
	lhu	a0,364(a5)
	sw	a0,32(s7)
	j	.L7760
.L7788:
	bne	a3,zero,.L7796
	blt	a2,zero,.L7770
	li	s5,1000001536
	li	s6,16
	addi	s5,s5,-1536
	j	.L7737
.L7790:
	li	s6,528
.L7767:
	bge	s5,zero,.L7739
	li	a5,-1
	li	s0,0
	bne	s3,a5,.L7744
.L7749:
	ld	a5,296(s4)
	beq	a5,zero,.L7786
	lw	a4,48(a5)
	li	a3,18
	sw	a3,24(a5)
	addiw	a4,a4,1
	sw	a4,48(a5)
.L7786:
	li	a0,18
	j	.L7781
.L7796:
	blt	a2,zero,.L7797
	li	s5,1000001536
	li	s6,2
	addi	s5,s5,-1536
	j	.L7737
.L7793:
	li	a5,4096
	addi	a5,a5,-2048
	j	.L7761
.L7770:
	li	s5,1000001536
	li	s6,528
	addi	s5,s5,-1536
.L7739:
	li	s0,0
	j	.L7742
.L7746:
	addiw	s0,s0,2
	bgt	s0,s5,.L7745
.L7742:
	add	a2,s1,s0
	lbu	a5,1(a2)
	lbu	a4,0(a2)
	or	a5,a5,a4
	andi	a5,a5,0xff
	bne	a5,zero,.L7746
.L7745:
	li	a5,-1
	bne	s3,a5,.L7744
	li	a5,1
	sext.w	s3,s0
	beq	s2,a5,.L7765
	addiw	s3,s3,2
	j	.L7763
.L7787:
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L7798
	li	a5,1
	sh	a5,8(a0)
	li	a0,0
	j	.L7781
.L7758:
	mv	a0,s1
	ld	a5,.LANCHOR1+72
	jalr	a5
	sw	a0,32(s7)
	j	.L7760
.L7791:
	sext.w	s3,s0
	j	.L7763
.L7798:
	call	vdbeMemClearExternAndSetNull
	li	a0,0
	j	.L7781
.L7797:
	li	s5,1000001536
	li	a5,1
	addi	s5,s5,-1536
	li	s6,514
	beq	a3,a5,.L7738
	j	.L7739
.L7794:
	bne	s4,zero,.L7749
	li	a0,18
	j	.L7781
.L7795:
	li	a2,0
	mv	a0,s7
	call	sqlite3VdbeMemGrow
	mv	a5,a0
	li	a0,7
	bne	a5,zero,.L7781
	ld	a0,16(s7)
	j	.L7753
	.size	sqlite3VdbeMemSetStr, .-sqlite3VdbeMemSetStr
	.section	.text.sqlite3VdbeTransferError,"ax",@progbits
	.align	1
	.type	sqlite3VdbeTransferError, @function
sqlite3VdbeTransferError:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	ld	s1,0(a0)
	ld	a5,168(a0)
	lw	s2,56(a0)
	mv	s0,a0
	ld	a0,344(s1)
	beq	a5,zero,.L7800
	lbu	a5,98(s1)
	addiw	a5,a5,1
	sb	a5,98(s1)
	beq	a0,zero,.L7813
.L7812:
	ld	a1,168(s0)
	li	a4,-1
	li	a3,1
	li	a2,-1
	call	sqlite3VdbeMemSetStr
.L7806:
	lbu	a5,98(s1)
	addiw	a5,a5,-1
	sb	a5,98(s1)
.L7803:
	sw	s2,80(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7800:
	beq	a0,zero,.L7803
	lhu	a4,8(a0)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L7814
	li	a5,1
	sh	a5,8(a0)
	sw	s2,80(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7814:
	call	vdbeMemClearExternAndSetNull
	j	.L7803
.L7813:
	li	a1,56
	mv	a0,s1
	call	sqlite3DbMallocZero
	beq	a0,zero,.L7802
	li	a5,1
	sh	a5,8(a0)
	sd	s1,40(a0)
	sd	a0,344(s1)
	j	.L7812
.L7802:
	sd	zero,344(s1)
	j	.L7806
	.size	sqlite3VdbeTransferError, .-sqlite3VdbeTransferError
	.section	.text.sqlite3_result_error,"ax",@progbits
	.align	1
	.globl	sqlite3_result_error
	.type	sqlite3_result_error, @function
sqlite3_result_error:
	mv	a5,a0
	ld	a0,0(a0)
	li	a4,1
	sw	a4,36(a5)
	li	a3,1
	li	a4,-1
	tail	sqlite3VdbeMemSetStr
	.size	sqlite3_result_error, .-sqlite3_result_error
	.section	.rodata.str1.8
	.align	3
.LC41:
	.string	"integer overflow"
	.section	.text.absFunc,"ax",@progbits
	.align	1
	.type	absFunc, @function
absFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_type@plt
	li	a5,1
	beq	a0,a5,.L7817
	li	a5,5
	beq	a0,a5,.L7818
	ld	a0,0(s0)
	call	sqlite3_value_double@plt
	srai	a1,a0,63
	ld	s0,16(sp)
	ld	ra,24(sp)
	xor	a5,a1,a0
	mv	a0,s1
	ld	s1,8(sp)
	sub	a1,a5,a1
	addi	sp,sp,32
	tail	sqlite3_result_double@plt
.L7817:
	ld	a0,0(s0)
	call	sqlite3_value_int64@plt
	mv	a1,a0
	bge	a0,zero,.L7820
	li	a5,-1
	slli	a5,a5,63
	beq	a0,a5,.L7824
	neg	a1,a0
.L7820:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_result_int64@plt
.L7818:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_result_null@plt
.L7824:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	li	a2,-1
	lla	a1,.LC41
	addi	sp,sp,32
	tail	sqlite3_result_error@plt
	.size	absFunc, .-absFunc
	.section	.rodata.str1.8
	.align	3
.LC42:
	.string	"argument of ntile must be a positive integer"
	.section	.text.ntileStepFunc,"ax",@progbits
	.align	1
	.type	ntileStepFunc, @function
ntileStepFunc:
	addi	sp,sp,-32
	li	a1,24
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s2,a0
	mv	s1,a2
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7825
	ld	a5,0(a0)
	mv	s0,a0
	beq	a5,zero,.L7834
.L7827:
	addi	a5,a5,1
	sd	a5,0(s0)
.L7825:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7834:
	ld	a0,0(s1)
	call	sqlite3_value_int64@plt
	sd	a0,8(s0)
	ble	a0,zero,.L7828
	ld	a5,0(s0)
	j	.L7827
.L7828:
	li	a2,-1
	lla	a1,.LC42
	mv	a0,s2
	call	sqlite3_result_error@plt
	ld	a5,0(s0)
	j	.L7827
	.size	ntileStepFunc, .-ntileStepFunc
	.section	.text.sumFinalize,"ax",@progbits
	.align	1
	.type	sumFinalize, @function
sumFinalize:
	addi	sp,sp,-16
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7835
	ld	a5,16(a0)
	ble	a5,zero,.L7835
	lbu	a5,24(a0)
	bne	a5,zero,.L7843
	lbu	a5,25(a0)
	beq	a5,zero,.L7838
	ld	a1,0(a0)
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_double@plt
.L7835:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7838:
	ld	a1,8(a0)
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_int64@plt
.L7843:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a2,-1
	lla	a1,.LC41
	addi	sp,sp,16
	tail	sqlite3_result_error@plt
	.size	sumFinalize, .-sumFinalize
	.section	.rodata.str1.8
	.align	3
.LC43:
	.string	"second argument to nth_value must be a positive integer"
	.section	.text.nth_valueStepFunc,"ax",@progbits
	.align	1
	.type	nth_valueStepFunc, @function
nth_valueStepFunc:
	addi	sp,sp,-32
	li	a1,16
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s2,a0
	mv	s1,a2
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7844
	mv	s0,a0
	ld	a0,8(s1)
	call	sqlite3_value_numeric_type@plt
	li	a5,1
	beq	a0,a5,.L7847
	li	a5,2
	beq	a0,a5,.L7848
.L7849:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	li	a2,-1
	lla	a1,.LC43
	addi	sp,sp,32
	tail	sqlite3_result_error@plt
.L7848:
	ld	a0,8(s1)
	call	sqlite3_value_double@plt
.L7850:
	ble	a0,zero,.L7849
	ld	a5,0(s0)
	addi	a5,a5,1
	sd	a5,0(s0)
	bne	a5,a0,.L7844
	ld	a0,0(s1)
	call	sqlite3_value_dup@plt
	sd	a0,8(s0)
	beq	a0,zero,.L7853
.L7844:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7847:
	ld	a0,8(s1)
	call	sqlite3_value_int64@plt
	j	.L7850
.L7853:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	sqlite3_result_error_nomem@plt
	.size	nth_valueStepFunc, .-nth_valueStepFunc
	.section	.text.sqlite3_result_error_code,"ax",@progbits
	.align	1
	.globl	sqlite3_result_error_code
	.type	sqlite3_result_error_code, @function
sqlite3_result_error_code:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	li	a5,-1
	beq	a1,zero,.L7855
	mv	a5,a1
.L7855:
	ld	s0,0(a0)
	sw	a5,36(a0)
	lhu	a5,8(s0)
	andi	a5,a5,1
	bne	a5,zero,.L7860
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7860:
	mv	a0,a1
	call	sqlite3ErrStr
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a4,0
	li	a3,1
	li	a2,-1
	addi	sp,sp,16
	tail	sqlite3VdbeMemSetStr
	.size	sqlite3_result_error_code, .-sqlite3_result_error_code
	.section	.text.zeroblobFunc,"ax",@progbits
	.align	1
	.type	zeroblobFunc, @function
zeroblobFunc:
	addi	sp,sp,-16
	sd	s0,0(sp)
	mv	s0,a0
	ld	a0,0(a2)
	sd	ra,8(sp)
	call	sqlite3_value_int64@plt
	not	a1,a0
	srai	a1,a1,63
	and	a1,a0,a1
	mv	a0,s0
	call	sqlite3_result_zeroblob64@plt
	bne	a0,zero,.L7865
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7865:
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_error_code@plt
	.size	zeroblobFunc, .-zeroblobFunc
	.section	.rodata.str1.8
	.align	3
.LC44:
	.string	"string or blob too big"
	.section	.text.sqlite3_result_error_toobig,"ax",@progbits
	.align	1
	.globl	sqlite3_result_error_toobig
	.type	sqlite3_result_error_toobig, @function
sqlite3_result_error_toobig:
	mv	a5,a0
	ld	a0,0(a0)
	li	a4,18
	sw	a4,36(a5)
	li	a3,1
	li	a4,0
	li	a2,-1
	lla	a1,.LC44
	tail	sqlite3VdbeMemSetStr
	.size	sqlite3_result_error_toobig, .-sqlite3_result_error_toobig
	.section	.text.invokeValueDestructor,"ax",@progbits
	.align	1
	.type	invokeValueDestructor, @function
invokeValueDestructor:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a2
	beq	a1,zero,.L7868
	li	a5,-1
	beq	a1,a5,.L7868
	jalr	a1
.L7868:
	beq	s0,zero,.L7869
	mv	a0,s0
	call	sqlite3_result_error_toobig@plt
.L7869:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,18
	addi	sp,sp,16
	jr	ra
	.size	invokeValueDestructor, .-invokeValueDestructor
	.section	.text.contextMalloc,"ax",@progbits
	.align	1
	.type	contextMalloc, @function
contextMalloc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	mv	s0,a1
	call	sqlite3_context_db_handle@plt
	lw	a5,124(a0)
	blt	a5,s0,.L7881
	mv	a0,s0
	call	sqlite3Malloc
	mv	s0,a0
	beq	a0,zero,.L7882
.L7877:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7881:
	mv	a0,s1
	call	sqlite3_result_error_toobig@plt
	li	s0,0
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L7882:
	mv	a0,s1
	call	sqlite3_result_error_nomem@plt
	j	.L7877
	.size	contextMalloc, .-contextMalloc
	.section	.text.setResultStrOrError,"ax",@progbits
	.align	1
	.type	setResultStrOrError, @function
setResultStrOrError:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	ld	a0,0(a0)
	call	sqlite3VdbeMemSetStr
	li	a5,18
	beq	a0,a5,.L7886
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7886:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_error_toobig@plt
	.size	setResultStrOrError, .-setResultStrOrError
	.section	.text.sqlite3_result_blob,"ax",@progbits
	.align	1
	.globl	sqlite3_result_blob
	.type	sqlite3_result_blob, @function
sqlite3_result_blob:
	mv	a4,a3
	li	a3,0
	tail	setResultStrOrError
	.size	sqlite3_result_blob, .-sqlite3_result_blob
	.section	.text.statInit,"ax",@progbits
	.align	1
	.type	statInit, @function
statInit:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	mv	s1,a0
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_int@plt
	mv	s2,a0
	ld	a0,8(s0)
	addiw	s0,s2,1
	andi	s0,s0,-2
	call	sqlite3_value_int@plt
	mv	s3,a0
	mv	a0,s1
	call	sqlite3_context_db_handle@plt
	sext.w	s0,s0
	addiw	a1,s0,11
	slliw	a1,a1,3
	mv	s4,a0
	call	sqlite3DbMallocZero
	beq	a0,zero,.L7891
	addi	a5,a0,88
	slli	s0,s0,2
	add	s0,a5,s0
	sd	s4,80(a0)
	sw	zero,0(a0)
	sw	s2,8(a0)
	sw	s3,12(a0)
	sd	a5,32(a0)
	sd	s0,24(a0)
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	mv	a1,a0
	mv	a0,s1
	ld	s1,24(sp)
	lla	a3,stat4Destructor
	li	a2,88
	addi	sp,sp,48
	tail	sqlite3_result_blob@plt
.L7891:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	mv	a0,s1
	ld	s1,24(sp)
	addi	sp,sp,48
	tail	sqlite3_result_error_nomem@plt
	.size	statInit, .-statInit
	.section	.text.sqlite3_result_text,"ax",@progbits
	.align	1
	.globl	sqlite3_result_text
	.type	sqlite3_result_text, @function
sqlite3_result_text:
	mv	a4,a3
	li	a3,1
	tail	setResultStrOrError
	.size	sqlite3_result_text, .-sqlite3_result_text
	.section	.text.sourceidFunc,"ax",@progbits
	.align	1
	.type	sourceidFunc, @function
sourceidFunc:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_sourceid@plt
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a3,0
	li	a2,-1
	addi	sp,sp,16
	tail	sqlite3_result_text@plt
	.size	sourceidFunc, .-sourceidFunc
	.section	.text.typeofFunc,"ax",@progbits
	.align	1
	.type	typeofFunc, @function
typeofFunc:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	ld	a0,0(a2)
	call	sqlite3_value_type@plt
	addiw	a5,a0,-1
	slli	a5,a5,3
	lla	a0,.LANCHOR5
	add	a5,a0,a5
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	ld	a1,-1824(a5)
	li	a3,0
	li	a2,-1
	addi	sp,sp,16
	tail	sqlite3_result_text@plt
	.size	typeofFunc, .-typeofFunc
	.section	.text.versionFunc,"ax",@progbits
	.align	1
	.type	versionFunc, @function
versionFunc:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_libversion@plt
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a3,0
	li	a2,-1
	addi	sp,sp,16
	tail	sqlite3_result_text@plt
	.size	versionFunc, .-versionFunc
	.section	.text.compileoptiongetFunc,"ax",@progbits
	.align	1
	.type	compileoptiongetFunc, @function
compileoptiongetFunc:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	ld	a0,0(a2)
	call	sqlite3_value_int@plt
	call	sqlite3_compileoption_get@plt
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a3,0
	li	a2,-1
	addi	sp,sp,16
	tail	sqlite3_result_text@plt
	.size	compileoptiongetFunc, .-compileoptiongetFunc
	.section	.text.groupConcatValue,"ax",@progbits
	.align	1
	.type	groupConcatValue, @function
groupConcatValue:
	addi	sp,sp,-16
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7901
	lbu	a5,28(a0)
	li	a4,18
	beq	a5,a4,.L7906
	li	a4,7
	beq	a5,a4,.L7907
	call	sqlite3_str_value@plt
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a3,-1
	li	a2,-1
	addi	sp,sp,16
	tail	sqlite3_result_text@plt
.L7901:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7907:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_error_nomem@plt
.L7906:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_error_toobig@plt
	.size	groupConcatValue, .-groupConcatValue
	.section	.text.groupConcatFinalize,"ax",@progbits
	.align	1
	.type	groupConcatFinalize, @function
groupConcatFinalize:
	addi	sp,sp,-16
	li	a1,0
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L7908
	lbu	a5,28(a0)
	li	a4,18
	beq	a5,a4,.L7913
	li	a4,7
	beq	a5,a4,.L7914
	call	sqlite3StrAccumFinish
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	la	a3,sqlite3_free
	li	a2,-1
	addi	sp,sp,16
	tail	sqlite3_result_text@plt
.L7908:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L7914:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_error_nomem@plt
.L7913:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_error_toobig@plt
	.size	groupConcatFinalize, .-groupConcatFinalize
	.section	.text.pragmaVtabColumn,"ax",@progbits
	.align	1
	.type	pragmaVtabColumn, @function
pragmaVtabColumn:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	ld	a5,0(a0)
	mv	s0,a1
	lbu	a4,41(a5)
	ble	a4,a2,.L7916
	ld	a0,8(a0)
	mv	a1,a2
	call	sqlite3_column_value@plt
	mv	a1,a0
	mv	a0,s0
	call	sqlite3_result_value@plt
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L7916:
	subw	a2,a2,a4
	addi	a2,a2,2
	slli	a2,a2,3
	add	a2,a0,a2
	ld	a1,8(a2)
	mv	a0,s0
	li	a3,-1
	li	a2,-1
	call	sqlite3_result_text@plt
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	pragmaVtabColumn, .-pragmaVtabColumn
	.section	.text.sqlite3_result_blob64,"ax",@progbits
	.align	1
	.globl	sqlite3_result_blob64
	.type	sqlite3_result_blob64, @function
sqlite3_result_blob64:
	li	a6,-2147483648
	mv	a5,a2
	xori	a6,a6,-1
	mv	a2,a0
	mv	a7,a1
	mv	a4,a3
	bleu	a5,a6,.L7920
	mv	a1,a3
	mv	a0,a7
	tail	invokeValueDestructor
.L7920:
	li	a3,0
	sext.w	a2,a5
	tail	setResultStrOrError
	.size	sqlite3_result_blob64, .-sqlite3_result_blob64
	.section	.text.sqlite3_result_text64,"ax",@progbits
	.align	1
	.globl	sqlite3_result_text64
	.type	sqlite3_result_text64, @function
sqlite3_result_text64:
	mv	a5,a4
	li	a7,4
	mv	a6,a1
	mv	a4,a3
	bne	a5,a7,.L7922
	li	a5,2
.L7922:
	li	a3,-2147483648
	xori	a3,a3,-1
	bleu	a2,a3,.L7923
	mv	a2,a0
	mv	a1,a4
	mv	a0,a6
	tail	invokeValueDestructor
.L7923:
	mv	a3,a5
	sext.w	a2,a2
	mv	a1,a6
	tail	setResultStrOrError
	.size	sqlite3_result_text64, .-sqlite3_result_text64
	.section	.text.charFunc,"ax",@progbits
	.align	1
	.type	charFunc, @function
charFunc:
	addi	sp,sp,-80
	slliw	a5,a1,2
	sd	s5,24(sp)
	mv	s5,a0
	addiw	a0,a5,1
	sd	s0,64(sp)
	sd	s7,8(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s6,16(sp)
	sd	s8,0(sp)
	mv	s0,a1
	mv	s7,a2
	call	sqlite3_malloc64@plt
	beq	a0,zero,.L7925
	mv	s2,a0
	li	a2,0
	ble	s0,zero,.L7927
	addiw	s0,s0,-1
	slli	s0,s0,32
	srli	s0,s0,32
	li	s3,2097152
	slli	s0,s0,3
	addi	a5,s7,8
	addi	s4,s3,-128
	add	s0,s0,a5
	mv	s8,a0
	li	s1,1114112
	addi	s3,s3,-2048
	li	s6,2031616
	j	.L7933
.L7942:
	sext.w	a3,a0
	and	a5,a3,s4
	bne	a5,zero,.L7929
	sb	a0,0(s8)
	addi	s8,s8,1
.L7930:
	addi	s7,s7,8
	beq	s0,s7,.L7941
.L7933:
	ld	a0,0(s7)
	call	sqlite3_value_int64@plt
	bltu	a0,s1,.L7942
	li	a5,189
	li	a4,191
	li	a2,15
.L7928:
	andi	a2,a2,15
	addiw	a2,a2,-32
	sb	a2,0(s8)
	sb	a4,1(s8)
	sb	a5,2(s8)
	addi	s7,s7,8
	addi	s8,s8,3
	bne	s0,s7,.L7933
.L7941:
	sub	a2,s8,s2
.L7927:
	ld	s0,64(sp)
	ld	ra,72(sp)
	ld	s1,56(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	mv	a1,s2
	mv	a0,s5
	ld	s2,48(sp)
	ld	s5,24(sp)
	li	a4,1
	la	a3,sqlite3_free
	addi	sp,sp,80
	tail	sqlite3_result_text64@plt
.L7929:
	srliw	a5,a3,6
	slliw	a5,a5,24
	and	a4,a3,s3
	sraiw	a5,a5,24
	bne	a4,zero,.L7943
	andi	a4,a5,31
	andi	a5,a0,63
	addiw	a4,a4,-64
	addiw	a5,a5,-128
	sb	a4,0(s8)
	sb	a5,1(s8)
	addi	s8,s8,2
	j	.L7930
.L7925:
	ld	s0,64(sp)
	ld	ra,72(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	mv	a0,s5
	ld	s5,24(sp)
	addi	sp,sp,80
	tail	sqlite3_result_error_nomem@plt
.L7943:
	and	a1,a3,s6
	srliw	a2,a3,12
	andi	a4,a5,63
	slliw	a2,a2,24
	andi	a5,a0,63
	sext.w	a1,a1
	sraiw	a2,a2,24
	ori	a4,a4,128
	ori	a5,a5,128
	beq	a1,zero,.L7928
	srliw	a3,a3,18
	andi	a2,a2,63
	addiw	a3,a3,-16
	addiw	a2,a2,-128
	sb	a3,0(s8)
	sb	a2,1(s8)
	sb	a4,2(s8)
	sb	a5,3(s8)
	addi	s8,s8,4
	j	.L7930
	.size	charFunc, .-charFunc
	.section	.text.jsonResult.part.0,"ax",@progbits
	.align	1
	.type	jsonResult.part.0, @function
jsonResult.part.0:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lbu	a5,32(a0)
	mv	s0,a0
	ld	a1,8(s0)
	ld	a0,0(a0)
	ld	a2,24(s0)
	li	a3,-1
	bne	a5,zero,.L7945
	la	a3,sqlite3_free
.L7945:
	li	a4,1
	call	sqlite3_result_text64@plt
	addi	a5,s0,34
	sd	a5,8(s0)
	li	a5,100
	sd	a5,16(s0)
	li	a5,1
	sd	zero,24(s0)
	sb	a5,32(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	jsonResult.part.0, .-jsonResult.part.0
	.section	.text.sqlite3VdbeSetColName.part.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeSetColName.part.0, @function
sqlite3VdbeSetColName.part.0:
	lhu	a5,184(a0)
	mv	a6,a1
	ld	a0,152(a0)
	mulw	a5,a5,a2
	mv	a1,a3
	li	a2,-1
	li	a3,1
	addw	a5,a5,a6
	slli	a6,a5,3
	sub	a5,a6,a5
	slli	a5,a5,3
	add	a0,a0,a5
	tail	sqlite3VdbeMemSetStr
	.size	sqlite3VdbeSetColName.part.0, .-sqlite3VdbeSetColName.part.0
	.section	.text.setPragmaResultColumnNames,"ax",@progbits
	.align	1
	.type	setPragmaResultColumnNames, @function
setPragmaResultColumnNames:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	lbu	s3,11(a1)
	mv	s0,a1
	mv	s1,a0
	li	a1,1
	beq	s3,zero,.L7952
	andi	a1,s3,0xff
.L7952:
	mv	a0,s1
	call	sqlite3VdbeSetNumCols
	bne	s3,zero,.L7953
	ld	a5,0(s1)
	lbu	a5,97(a5)
	bne	a5,zero,.L7951
	ld	a3,0(s0)
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	mv	a0,s1
	ld	s1,24(sp)
	li	a4,0
	li	a2,0
	li	a1,0
	addi	sp,sp,48
	tail	sqlite3VdbeSetColName.part.0
.L7953:
	lbu	s2,10(s0)
	sext.w	s3,s3
	li	s0,0
	lla	s4,.LANCHOR5
.L7956:
	ld	a4,0(s1)
	slli	a5,s2,3
	mv	a1,s0
	lbu	a3,97(a4)
	add	a5,s4,a5
	addiw	s0,s0,1
	li	a4,0
	li	a2,0
	mv	a0,s1
	bne	a3,zero,.L7955
	ld	a3,-1784(a5)
	call	sqlite3VdbeSetColName.part.0
.L7955:
	addiw	s2,s2,1
	bne	s0,s3,.L7956
.L7951:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
	.size	setPragmaResultColumnNames, .-setPragmaResultColumnNames
	.section	.text.sqlite3TableLock,"ax",@progbits
	.align	1
	.type	sqlite3TableLock, @function
sqlite3TableLock:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	ld	s2,160(a0)
	mv	s0,a1
	mv	s1,a2
	mv	s3,a3
	mv	s4,a4
	beq	s2,zero,.L7976
.L7961:
	li	a5,1
	beq	s0,a5,.L7960
	ld	a4,0(a0)
	slli	a5,s0,5
	ld	a4,32(a4)
	add	a5,a4,a5
	ld	a5,8(a5)
	lbu	a5,17(a5)
	beq	a5,zero,.L7960
	lw	a4,136(s2)
	ld	a1,144(s2)
	ble	a4,zero,.L7965
	addiw	a0,a4,-1
	slli	a0,a0,32
	srli	a0,a0,32
	slli	a6,a0,1
	add	a6,a6,a0
	slli	a0,a6,3
	addi	a6,a1,24
	mv	a5,a1
	add	a6,a0,a6
	j	.L7967
.L7966:
	addi	a5,a5,24
	beq	a6,a5,.L7965
.L7967:
	lw	a0,0(a5)
	bne	a0,s0,.L7966
	lw	a2,4(a5)
	bne	a2,s1,.L7966
	lbu	a4,8(a5)
	or	s3,s3,a4
	snez	s3,s3
	sb	s3,8(a5)
.L7960:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L7965:
	addiw	a4,a4,1
	slliw	a2,a4,1
	ld	a0,0(s2)
	addw	a2,a2,a4
	slliw	a2,a2,3
	call	sqlite3DbReallocOrFree
	sd	a0,144(s2)
	beq	a0,zero,.L7968
	lw	a4,136(s2)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	addiw	a4,a4,1
	sw	a4,136(s2)
	add	a0,a0,a5
	sw	s0,0(a0)
	sw	s1,4(a0)
	sb	s3,8(a0)
	sd	s4,16(a0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L7976:
	mv	s2,a0
	j	.L7961
.L7968:
	ld	a0,0(s2)
	sw	zero,136(s2)
	li	a4,16777216
	ld	a5,96(a0)
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L7960
	lw	a4,196(a0)
	li	a5,1
	sb	a5,97(a0)
	ble	a4,zero,.L7969
	sw	a5,352(a0)
.L7969:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	tail	sqlite3OomFault.part.0
	.size	sqlite3TableLock, .-sqlite3TableLock
	.section	.text.resizeResolveLabel.isra.0,"ax",@progbits
	.align	1
	.type	resizeResolveLabel.isra.0, @function
resizeResolveLabel.isra.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	lw	a5,68(a0)
	mv	s0,a0
	li	s2,10
	mv	s3,a1
	ld	a1,80(a0)
	ld	a0,0(a0)
	subw	a3,s2,a5
	mv	s1,a2
	slli	a2,a3,2
	mv	s2,a3
	call	sqlite3DbReallocOrFree
	sd	a0,80(s0)
	beq	a0,zero,.L7981
	sw	s2,72(s0)
	lw	a4,0(s3)
	slli	a5,s1,2
	add	a0,a0,a5
	sw	a4,0(a0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L7981:
	sw	zero,72(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	resizeResolveLabel.isra.0, .-resizeResolveLabel.isra.0
	.section	.text.sqlite3VdbeResolveLabel,"ax",@progbits
	.align	1
	.type	sqlite3VdbeResolveLabel, @function
sqlite3VdbeResolveLabel:
	mv	a5,a0
	ld	a0,24(a0)
	not	a2,a1
	lw	a4,72(a0)
	lw	a3,68(a0)
	addw	a4,a4,a3
	blt	a4,zero,.L7984
	ld	a1,80(a0)
	lw	a5,144(a5)
	slli	a2,a2,2
	add	a2,a1,a2
	sw	a5,0(a2)
	ret
.L7984:
	addi	a1,a5,144
	tail	resizeResolveLabel.isra.0
	.size	sqlite3VdbeResolveLabel, .-sqlite3VdbeResolveLabel
	.section	.text.constInsert,"ax",@progbits
	.align	1
	.type	constInsert, @function
constInsert:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s0,a0
	lw	a0,8(a0)
	ld	a7,16(s0)
	mv	s1,a1
	mv	s2,a2
	ble	a0,zero,.L7986
	lw	t1,44(a1)
	slliw	a6,a0,1
	li	a5,0
.L7989:
	slli	a4,a5,3
	add	a4,a7,a4
	ld	a4,0(a4)
	addiw	a5,a5,2
	lw	a3,44(a4)
	beq	a3,t1,.L7997
	bne	a6,a5,.L7989
.L7986:
	ld	a4,0(s0)
	addiw	a5,a0,1
	sw	a5,8(s0)
	ld	a0,0(a4)
	slliw	a5,a5,1
	slli	a2,a5,3
	mv	a1,a7
	call	sqlite3DbReallocOrFree
	sd	a0,16(s0)
	beq	a0,zero,.L7998
	lw	a5,4(s2)
	andi	a5,a5,8
	bne	a5,zero,.L7999
.L7991:
	lw	a5,8(s0)
	slliw	a5,a5,1
	slli	a5,a5,3
	add	a0,a0,a5
	sd	s1,-16(a0)
	lw	a5,8(s0)
	ld	a4,16(s0)
	slliw	a5,a5,1
	slli	a5,a5,3
	add	a5,a4,a5
	sd	s2,-8(a5)
.L7985:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L7997:
	lh	a3,48(a4)
	lh	a4,48(s1)
	beq	a3,a4,.L7985
	bne	a6,a5,.L7989
	j	.L7986
.L7999:
	ld	s2,16(s2)
	j	.L7991
.L7998:
	sw	zero,8(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	constInsert, .-constInsert
	.section	.text.growOpArray.isra.0,"ax",@progbits
	.align	1
	.type	growOpArray.isra.0, @function
growOpArray.isra.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	lw	a5,148(a0)
	ld	s2,24(a0)
	mv	s0,a0
	slli	a2,a5,1
	bne	a5,zero,.L8001
	li	a2,42
.L8001:
	ld	a0,0(s2)
	lw	a5,144(a0)
	blt	a5,a2,.L8020
	slli	a5,a2,1
	ld	a1,136(s0)
	add	a2,a5,a2
	slli	a2,a2,3
	call	sqlite3DbRealloc
	mv	s1,a0
	beq	a0,zero,.L8019
	ld	a5,0(s2)
	beq	a5,zero,.L8007
	ld	a4,400(a5)
	bgtu	a4,a0,.L8007
	ld	a4,408(a5)
	bleu	a4,a0,.L8007
	lhu	a0,364(a5)
	j	.L8008
.L8020:
	ld	a5,96(a0)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L8019
	lw	a4,196(a0)
	li	a5,1
	sb	a5,97(a0)
	ble	a4,zero,.L8005
	sw	a5,352(a0)
.L8005:
	call	sqlite3OomFault.part.0
.L8019:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,7
	addi	sp,sp,32
	jr	ra
.L8007:
	mv	a0,s1
	ld	a5,.LANCHOR1+72
	jalr	a5
.L8008:
	li	a5,24
	divu	a5,a0,a5
	sw	a0,60(s2)
	sd	s1,136(s0)
	li	a0,0
	sw	a5,148(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	growOpArray.isra.0, .-growOpArray.isra.0
	.section	.text.growOp3,"ax",@progbits
	.align	1
	.type	growOp3, @function
growOp3:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	mv	s0,a0
	mv	s1,a1
	mv	s2,a2
	mv	s3,a3
	mv	s4,a4
	call	growOpArray.isra.0
	beq	a0,zero,.L8024
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	li	a0,1
	addi	sp,sp,48
	jr	ra
.L8024:
	mv	a0,s0
	ld	s0,32(sp)
	ld	ra,40(sp)
	mv	a4,s4
	mv	a3,s3
	ld	s4,0(sp)
	ld	s3,8(sp)
	mv	a2,s2
	mv	a1,s1
	ld	s2,16(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	tail	sqlite3VdbeAddOp3
	.size	growOp3, .-growOp3
	.section	.text.sqlite3VdbeAddOp3,"ax",@progbits
	.align	1
	.type	sqlite3VdbeAddOp3, @function
sqlite3VdbeAddOp3:
	lw	a7,144(a0)
	lw	a5,148(a0)
	mv	a6,a0
	mv	t1,a4
	ble	a5,a7,.L8027
	ld	a5,136(a0)
	slli	a0,a7,1
	add	a0,a0,a7
	addiw	a4,a7,1
	slli	a0,a0,3
	add	a5,a5,a0
	sw	a4,144(a6)
	sb	a1,0(a5)
	sh	zero,2(a5)
	sw	a2,4(a5)
	sw	a3,8(a5)
	sw	t1,12(a5)
	sd	zero,16(a5)
	sb	zero,1(a5)
	mv	a0,a7
	ret
.L8027:
	tail	growOp3
	.size	sqlite3VdbeAddOp3, .-sqlite3VdbeAddOp3
	.section	.text.sqlite3VdbeCreate,"ax",@progbits
	.align	1
	.type	sqlite3VdbeCreate, @function
sqlite3VdbeCreate:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	ld	s2,0(a0)
	mv	s1,a0
	li	a1,288
	mv	a0,s2
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L8028
	li	a2,152
	li	a1,0
	addi	a0,a0,136
	call	memset@plt
	sd	s2,0(s0)
	ld	a5,8(s2)
	beq	a5,zero,.L8030
	sd	s0,8(a5)
	ld	a5,8(s2)
.L8030:
	sd	a5,16(s0)
	sd	zero,8(s0)
	li	a5,381480960
	sd	s0,8(s2)
	addi	a5,a5,-1371
	sw	a5,36(s0)
	sd	s1,24(s0)
	sd	s0,16(s1)
	li	a4,0
	li	a3,1
	li	a2,0
	li	a1,61
	mv	a0,s0
	call	sqlite3VdbeAddOp3
.L8028:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeCreate, .-sqlite3VdbeCreate
	.section	.text.sqlite3GetVdbe.part.0,"ax",@progbits
	.align	1
	.type	sqlite3GetVdbe.part.0, @function
sqlite3GetVdbe.part.0:
	ld	a5,160(a0)
	beq	a5,zero,.L8040
.L8039:
	tail	sqlite3VdbeCreate
.L8040:
	ld	a5,0(a0)
	lhu	a5,92(a5)
	andi	a5,a5,8
	bne	a5,zero,.L8039
	li	a5,1
	sb	a5,35(a0)
	tail	sqlite3VdbeCreate
	.size	sqlite3GetVdbe.part.0, .-sqlite3GetVdbe.part.0
	.section	.text.finalizeAggFunctions.isra.0,"ax",@progbits
	.align	1
	.type	finalizeAggFunctions.isra.0, @function
finalizeAggFunctions.isra.0:
	lw	a5,0(a2)
	ble	a5,zero,.L8049
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s3,a2
	mv	s2,a0
	mv	s0,a1
	li	s1,0
.L8044:
	ld	a5,0(s0)
	lw	a2,16(s0)
	li	a4,0
	ld	a5,32(a5)
	li	a1,157
	mv	a0,s2
	addiw	s1,s1,1
	li	a3,0
	beq	a5,zero,.L8043
	lw	a3,0(a5)
.L8043:
	call	sqlite3VdbeAddOp3
	ld	a1,8(s0)
	li	a2,-8
	mv	a0,s2
	call	sqlite3VdbeAppendP4
	lw	a5,0(s3)
	addi	s0,s0,24
	bgt	a5,s1,.L8044
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L8049:
	ret
	.size	finalizeAggFunctions.isra.0, .-finalizeAggFunctions.isra.0
	.section	.text.sqlite3VdbeAddOp4Int,"ax",@progbits
	.align	1
	.type	sqlite3VdbeAddOp4Int, @function
sqlite3VdbeAddOp4Int:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s0,a0
	mv	s1,a5
	sd	ra,24(sp)
	call	sqlite3VdbeAddOp3
	ld	a5,0(s0)
	lbu	a5,97(a5)
	bne	a5,zero,.L8053
	ld	a4,136(s0)
	slli	a5,a0,1
	add	a5,a5,a0
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,-3
	sb	a4,1(a5)
	sw	s1,16(a5)
.L8053:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeAddOp4Int, .-sqlite3VdbeAddOp4Int
	.section	.text.sqlite3VdbeLoadString,"ax",@progbits
	.align	1
	.type	sqlite3VdbeLoadString, @function
sqlite3VdbeLoadString:
	addi	sp,sp,-32
	sd	s2,0(sp)
	mv	a3,a1
	mv	s2,a2
	li	a4,0
	li	a2,0
	li	a1,110
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	sqlite3VdbeAddOp3
	mv	s0,a0
	mv	a2,s2
	mv	a1,a0
	li	a3,0
	mv	a0,s1
	call	sqlite3VdbeChangeP4
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeLoadString, .-sqlite3VdbeLoadString
	.section	.text.returnSingleText.part.0,"ax",@progbits
	.align	1
	.type	returnSingleText.part.0, @function
returnSingleText.part.0:
	addi	sp,sp,-16
	mv	a2,a1
	li	a1,1
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3VdbeLoadString
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a4,0
	li	a3,1
	li	a2,1
	li	a1,81
	addi	sp,sp,16
	tail	sqlite3VdbeAddOp3
	.size	returnSingleText.part.0, .-returnSingleText.part.0
	.section	.text.sqlite3HaltConstraint,"ax",@progbits
	.align	1
	.type	sqlite3HaltConstraint, @function
sqlite3HaltConstraint:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	ld	s0,16(a0)
	mv	s2,a0
	mv	s5,a1
	mv	s1,a2
	mv	s3,a3
	mv	s4,a4
	mv	s6,a5
	bne	s0,zero,.L8060
	call	sqlite3GetVdbe.part.0
	mv	s0,a0
.L8060:
	li	a5,2
	beq	s1,a5,.L8066
.L8061:
	li	a4,0
	mv	a3,s1
	mv	a2,s5
	li	a1,69
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	mv	a3,s4
	mv	a2,s3
	mv	a0,s0
	call	sqlite3VdbeChangeP4
	lw	a4,144(s0)
	ble	a4,zero,.L8059
	ld	a3,136(s0)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	sh	s6,-22(a5)
.L8059:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L8066:
	ld	a5,160(s2)
	beq	a5,zero,.L8067
.L8062:
	li	a4,1
	sb	a4,33(a5)
	j	.L8061
.L8067:
	mv	a5,s2
	j	.L8062
	.size	sqlite3HaltConstraint, .-sqlite3HaltConstraint
	.section	.text.sqlite3Savepoint,"ax",@progbits
	.align	1
	.type	sqlite3Savepoint, @function
sqlite3Savepoint:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	mv	s0,a0
	ld	a0,0(a0)
	mv	s3,a1
	mv	a1,a2
	call	sqlite3NameFromToken
	beq	a0,zero,.L8068
	ld	s2,16(s0)
	mv	s1,a0
	beq	s2,zero,.L8072
.L8070:
	mv	a2,s3
	li	a3,0
	li	a1,0
	mv	a0,s2
	li	a4,0
	call	sqlite3VdbeAddOp3
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s3,8(sp)
	mv	a1,a0
	mv	a2,s1
	mv	a0,s2
	ld	s1,24(sp)
	ld	s2,16(sp)
	li	a3,-7
	addi	sp,sp,48
	tail	sqlite3VdbeChangeP4
.L8072:
	mv	a0,s0
	call	sqlite3GetVdbe.part.0
	mv	s2,a0
	bne	a0,zero,.L8070
	ld	a0,0(s0)
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	mv	a1,s1
	ld	s1,24(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
.L8068:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3Savepoint, .-sqlite3Savepoint
	.section	.text.sqlite3TableAffinity,"ax",@progbits
	.align	1
	.type	sqlite3TableAffinity, @function
sqlite3TableAffinity:
	addi	sp,sp,-64
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s4,16(sp)
	ld	s1,40(a1)
	mv	s2,a0
	mv	s3,a2
	beq	s1,zero,.L8095
.L8074:
	mv	a0,s1
	call	strlen@plt
	slli	a5,a0,34
	srli	a3,a5,34
	beq	a5,zero,.L8073
	beq	s3,zero,.L8085
	mv	a2,s3
	li	a1,91
	li	a4,0
	mv	a0,s2
	sd	a3,8(sp)
	call	sqlite3VdbeAddOp3
	ld	a3,8(sp)
	mv	a1,a0
	mv	a2,s1
.L8094:
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	tail	sqlite3VdbeChangeP4
.L8073:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L8085:
	mv	a2,s1
	li	a1,-1
	j	.L8094
.L8095:
	lh	a0,70(a1)
	ld	s4,0(s2)
	mv	s0,a1
	addiw	a0,a0,1
	call	sqlite3Malloc
	mv	s1,a0
	beq	a0,zero,.L8075
	lh	a5,70(s0)
	mv	a2,a0
	li	a3,0
	li	a4,0
	ble	a5,zero,.L8096
.L8081:
	ld	a5,8(s0)
	addi	a2,a2,1
	mv	a1,a4
	add	a5,a5,a3
	lbu	a5,25(a5)
	addiw	a4,a4,1
	addi	a3,a3,32
	sb	a5,-1(a2)
	lh	a5,70(s0)
	bgt	a5,a4,.L8081
	add	a5,s1,a4
	mv	a2,s1
	li	a0,65
.L8083:
	sb	zero,0(a5)
	beq	a5,a2,.L8082
	addi	a5,a5,-1
	sub	a3,a5,a4
	add	a3,a3,a1
	lbu	a3,1(a3)
	beq	a3,a0,.L8083
.L8082:
	sd	s1,40(s0)
	j	.L8074
.L8075:
	ld	a5,96(s4)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L8073
	lw	a4,196(s4)
	li	a5,1
	sb	a5,97(s4)
	ble	a4,zero,.L8080
	sw	a5,352(s4)
.L8080:
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	mv	a0,s4
	ld	s4,16(sp)
	addi	sp,sp,64
	tail	sqlite3OomFault.part.0
.L8096:
	sb	zero,0(a0)
	sd	s1,40(s0)
	j	.L8074
	.size	sqlite3TableAffinity, .-sqlite3TableAffinity
	.section	.text.sqlite3VdbeAddParseSchemaOp,"ax",@progbits
	.align	1
	.type	sqlite3VdbeAddParseSchemaOp, @function
sqlite3VdbeAddParseSchemaOp:
	addi	sp,sp,-32
	sd	s1,8(sp)
	li	a4,0
	mv	s1,a2
	li	a3,0
	mv	a2,a1
	li	a1,141
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s0,a0
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,-7
	mv	a2,s1
	mv	a0,s0
	call	sqlite3VdbeChangeP4
	ld	a1,0(s0)
	lw	a5,40(a1)
	ble	a5,zero,.L8097
	lw	a4,192(s0)
	li	a5,0
	li	a7,1
	li	a6,1
.L8100:
	sllw	a2,a7,a5
	or	a4,a4,a2
	sext.w	a4,a4
	sw	a4,192(s0)
	slli	a0,a5,5
	beq	a5,a6,.L8099
	ld	a3,32(a1)
	add	a3,a3,a0
	ld	a3,8(a3)
	lbu	a3,17(a3)
	beq	a3,zero,.L8099
	lw	a3,196(s0)
	or	a2,a3,a2
	sw	a2,196(s0)
.L8099:
	lw	a3,40(a1)
	addiw	a5,a5,1
	bgt	a3,a5,.L8100
.L8097:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3VdbeAddParseSchemaOp, .-sqlite3VdbeAddParseSchemaOp
	.section	.text.codeApplyAffinity.isra.0,"ax",@progbits
	.align	1
	.type	codeApplyAffinity.isra.0, @function
codeApplyAffinity.isra.0:
	beq	a3,zero,.L8122
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s1,a3
	mv	s2,a0
	mv	s0,a2
	li	a4,65
	bgt	a2,zero,.L8109
	j	.L8107
.L8112:
	addiw	s0,s0,-1
	addiw	a1,a1,1
	addi	s1,s1,1
	beq	s0,zero,.L8107
.L8109:
	lbu	a5,0(s1)
	beq	a5,a4,.L8112
	li	a5,1
	beq	s0,a5,.L8110
	addi	a5,s0,-1
	add	a5,s1,a5
	li	a3,65
	li	a2,1
	j	.L8111
.L8114:
	addiw	s0,s0,-1
	beq	s0,a2,.L8110
.L8111:
	lbu	a4,0(a5)
	addi	a5,a5,-1
	beq	a4,a3,.L8114
.L8110:
	mv	a3,s0
	mv	a2,a1
	mv	a0,s2
	li	a1,91
	li	a4,0
	call	sqlite3VdbeAddOp3
	mv	a3,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,a0
	mv	a2,s1
	mv	a0,s2
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	sqlite3VdbeChangeP4
.L8107:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8122:
	ret
	.size	codeApplyAffinity.isra.0, .-codeApplyAffinity.isra.0
	.section	.text.sqlite3VdbeMultiLoad,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMultiLoad, @function
sqlite3VdbeMultiLoad:
	addi	sp,sp,-128
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	lbu	t1,0(a2)
	sd	a5,104(sp)
	addi	a5,sp,88
	sd	a3,88(sp)
	sd	a4,96(sp)
	sd	a6,112(sp)
	sd	a7,120(sp)
	sd	a5,8(sp)
	mv	s1,a0
	mv	s2,a1
	beq	t1,zero,.L8132
	mv	s3,a2
	li	s0,0
	li	s4,115
	li	s5,105
	j	.L8131
.L8127:
	bne	t1,s5,.L8125
	ld	a5,8(sp)
	addiw	s0,s0,1
	lw	a2,0(a5)
	addi	a5,a5,8
	sd	a5,8(sp)
	call	sqlite3VdbeAddOp3
	add	a5,s3,s0
	lbu	t1,0(a5)
	beq	t1,zero,.L8126
.L8131:
	addw	a3,s2,s0
	li	a4,0
	li	a1,70
	mv	a0,s1
	bne	t1,s4,.L8127
	ld	a5,8(sp)
	li	a2,0
	li	a1,73
	ld	s6,0(a5)
	addi	a5,a5,8
	sd	a5,8(sp)
	beq	s6,zero,.L8128
	li	a1,110
.L8128:
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,0
	mv	a2,s6
	mv	a0,s1
	call	sqlite3VdbeChangeP4
	addiw	s0,s0,1
	add	a5,s3,s0
	lbu	t1,0(a5)
	bne	t1,zero,.L8131
.L8126:
	li	a4,0
	mv	a3,s0
	mv	a2,s2
	li	a1,81
	mv	a0,s1
	call	sqlite3VdbeAddOp3
.L8130:
.L8125:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,128
	jr	ra
.L8132:
	li	s0,0
	j	.L8126
	.size	sqlite3VdbeMultiLoad, .-sqlite3VdbeMultiLoad
	.section	.text.loadAnalysis,"ax",@progbits
	.align	1
	.type	loadAnalysis, @function
loadAnalysis:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	ld	a5,16(a0)
	mv	s0,a1
	beq	a5,zero,.L8141
.L8138:
	mv	a2,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a4,0
	li	a3,0
	li	a1,142
	mv	a0,a5
	addi	sp,sp,16
	tail	sqlite3VdbeAddOp3
.L8141:
	call	sqlite3GetVdbe.part.0
	mv	a5,a0
	bne	a0,zero,.L8138
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	loadAnalysis, .-loadAnalysis
	.section	.text.sqlite3SetHasNullFlag,"ax",@progbits
	.align	1
	.type	sqlite3SetHasNullFlag, @function
sqlite3SetHasNullFlag:
	addi	sp,sp,-48
	mv	a3,a2
	sd	s2,16(sp)
	sd	s3,8(sp)
	mv	s2,a1
	mv	s3,a2
	li	a4,0
	li	a2,0
	li	a1,70
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	mv	s0,a0
	call	sqlite3VdbeAddOp3
	li	a4,0
	li	a3,0
	mv	a2,s2
	li	a1,36
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	s1,a0
	mv	a4,s3
	li	a3,0
	mv	a2,s2
	li	a1,90
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a5,144(s0)
	ble	a5,zero,.L8143
	ld	a3,136(s0)
	slli	a4,a5,1
	add	a5,a4,a5
	slli	a5,a5,3
	add	a5,a3,a5
	li	a4,128
	sh	a4,-22(a5)
	lw	a5,144(s0)
.L8143:
	bge	s1,zero,.L8144
	addiw	s1,a5,-1
.L8144:
	ld	a3,0(s0)
	lla	a4,.LANCHOR0+568
	lbu	a3,97(a3)
	bne	a3,zero,.L8145
	ld	a4,136(s0)
	slli	a3,s1,1
	add	s1,a3,s1
	slli	s1,s1,3
	add	a4,a4,s1
.L8145:
	sw	a5,8(a4)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3SetHasNullFlag, .-sqlite3SetHasNullFlag
	.section	.text.sqlite3ChangeCookie.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3ChangeCookie.isra.0, @function
sqlite3ChangeCookie.isra.0:
	ld	a5,32(a0)
	slli	a4,a2,5
	mv	a0,a1
	add	a5,a5,a4
	ld	a5,24(a5)
	li	a3,1
	li	a1,95
	lw	a4,0(a5)
	addiw	a4,a4,1
	tail	sqlite3VdbeAddOp3
	.size	sqlite3ChangeCookie.isra.0, .-sqlite3ChangeCookie.isra.0
	.section	.text.renameReloadSchema,"ax",@progbits
	.align	1
	.type	renameReloadSchema, @function
renameReloadSchema:
	ld	a5,16(a0)
	beq	a5,zero,.L8154
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s0,a0
	ld	a0,0(a0)
	mv	a2,a1
	mv	s1,a1
	mv	a1,a5
	call	sqlite3ChangeCookie.isra.0
	ld	a0,16(s0)
	li	a2,0
	mv	a1,s1
	call	sqlite3VdbeAddParseSchemaOp
	li	a5,1
	bne	s1,a5,.L8157
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L8157:
	ld	a0,16(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	li	a2,0
	li	a1,1
	addi	sp,sp,32
	tail	sqlite3VdbeAddParseSchemaOp
.L8154:
	ret
	.size	renameReloadSchema, .-renameReloadSchema
	.section	.text.codeOffset.part.0,"ax",@progbits
	.align	1
	.type	codeOffset.part.0, @function
codeOffset.part.0:
	mv	a3,a2
	li	a4,1
	mv	a2,a1
	li	a1,47
	tail	sqlite3VdbeAddOp3
	.size	codeOffset.part.0, .-codeOffset.part.0
	.section	.text.windowCheckValue,"ax",@progbits
	.align	1
	.type	windowCheckValue, @function
windowCheckValue:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	ld	s0,16(a0)
	mv	s1,a0
	mv	s3,a1
	mv	s2,a2
	bne	s0,zero,.L8160
	call	sqlite3GetVdbe.part.0
	mv	s0,a0
.L8160:
	lbu	a5,31(s1)
	beq	a5,zero,.L8171
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s1)
	add	a5,s1,a4
	lw	s4,12(a5)
.L8162:
	li	a4,0
	mv	a3,s4
	li	a2,0
	li	a1,70
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	li	a5,2
	ble	s2,a5,.L8163
	lbu	a5,31(s1)
	beq	a5,zero,.L8172
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s1)
	add	a5,s1,a4
	lw	s5,12(a5)
.L8165:
	li	a4,0
	mv	a3,s5
	li	a2,0
	li	a1,110
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,-1
	lla	a2,.LC12
	mv	a0,s0
	call	sqlite3VdbeChangeP4
	lw	a3,144(s0)
	mv	a4,s3
	mv	a2,s5
	addiw	a3,a3,2
	li	a1,57
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a3,144(s0)
	ble	a3,zero,.L8166
	ld	a4,136(s0)
	slli	a5,a3,1
	add	a3,a5,a3
	slli	a3,a3,3
	add	a3,a4,a3
	li	a5,83
	sh	a5,-22(a3)
	lw	a3,144(s0)
.L8166:
	slli	a4,s2,2
	lla	a5,.LANCHOR4
	add	a5,a5,a4
	lw	a1,-1080(a5)
	mv	a4,s3
	addiw	a3,a3,2
	mv	a2,s4
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,160(s1)
	beq	a5,zero,.L8173
.L8167:
	li	a4,1
	li	a2,1
	li	a1,69
	sb	a4,33(a5)
	li	a3,2
	li	a4,0
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lla	a2,.LANCHOR5
	slli	s2,s2,3
	add	s2,a2,s2
	ld	a1,-1408(s2)
	li	a2,-1
	mv	a0,s0
	call	sqlite3VdbeAppendP4
	beq	s4,zero,.L8159
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s5,8(sp)
	mv	a1,s4
	mv	a0,s1
	ld	s4,16(sp)
	ld	s1,40(sp)
	addi	sp,sp,64
	tail	sqlite3ReleaseTempReg.part.0
.L8172:
	lw	a5,56(s1)
	addiw	s5,a5,1
	sw	s5,56(s1)
	j	.L8165
.L8159:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L8171:
	lw	a5,56(s1)
	addiw	s4,a5,1
	sw	s4,56(s1)
	j	.L8162
.L8163:
	lw	a3,144(s0)
	li	a4,0
	mv	a2,s3
	addiw	a3,a3,2
	li	a1,15
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a3,144(s0)
	j	.L8166
.L8173:
	mv	a5,s1
	j	.L8167
	.size	windowCheckValue, .-windowCheckValue
	.section	.text.windowAggFinal.isra.0,"ax",@progbits
	.align	1
	.type	windowAggFinal.isra.0, @function
windowAggFinal.isra.0:
	addi	sp,sp,-64
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	ld	s1,16(a0)
	mv	s2,a1
	mv	s3,a2
	bne	s1,zero,.L8175
	call	sqlite3GetVdbe.part.0
	mv	s1,a0
.L8175:
	mv	s0,s2
	li	s4,4096
	li	s5,87
	lla	s6,.LANCHOR0+568
	beq	s2,zero,.L8174
.L8176:
	lw	a5,124(s2)
	bne	a5,zero,.L8177
	ld	a5,72(s0)
	lw	a5,4(a5)
	and	a5,a5,s4
	sext.w	a5,a5
	beq	a5,zero,.L8177
	lbu	a5,33(s0)
	beq	a5,s5,.L8177
	lw	a3,88(s0)
	li	a4,0
	li	a2,0
	li	a1,73
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	lw	a2,92(s0)
	li	a4,0
	li	a3,0
	li	a1,32
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	lw	a4,88(s0)
	lw	a2,92(s0)
	li	a3,0
	li	a1,90
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	lw	a4,144(s1)
	addiw	a3,a4,-2
	bge	a3,zero,.L8178
	addiw	a3,a4,-1
.L8178:
	ld	a2,0(s1)
	mv	a5,s6
	lbu	a2,97(a2)
	beq	a2,zero,.L8195
.L8179:
	sw	a4,8(a5)
.L8180:
	ld	s0,56(s0)
	bne	s0,zero,.L8176
.L8174:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L8177:
	lw	a3,96(s0)
	bne	a3,zero,.L8180
	ld	a5,104(s0)
	ld	a5,32(a5)
	beq	a5,zero,.L8181
	lw	a3,0(a5)
.L8181:
	lw	a2,84(s0)
	beq	s3,zero,.L8182
	li	a4,0
	li	a1,157
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	ld	a1,72(s0)
	mv	a0,s1
	li	a2,-8
	call	sqlite3VdbeAppendP4
	lw	a3,88(s0)
	lw	a2,84(s0)
	li	a4,0
	li	a1,78
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	lw	a3,84(s0)
	li	a4,0
	li	a2,0
	li	a1,73
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	j	.L8180
.L8182:
	lw	a4,88(s0)
	li	a1,156
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	ld	a1,72(s0)
	li	a2,-8
	mv	a0,s1
	call	sqlite3VdbeAppendP4
	j	.L8180
.L8195:
	ld	a5,136(s1)
	slli	a2,a3,1
	add	a3,a2,a3
	slli	a3,a3,3
	add	a5,a5,a3
	j	.L8179
	.size	windowAggFinal.isra.0, .-windowAggFinal.isra.0
	.section	.text.windowReadPeerValues.isra.0,"ax",@progbits
	.align	1
	.type	windowReadPeerValues.isra.0, @function
windowReadPeerValues.isra.0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	ld	s4,24(a1)
	beq	s4,zero,.L8196
	ld	s2,16(a0)
	mv	s0,a1
	mv	s1,a2
	mv	s5,a3
	beq	s2,zero,.L8207
	ld	a5,16(s0)
	lw	s3,112(s0)
	beq	a5,zero,.L8199
.L8208:
	lw	a5,0(a5)
	addw	s3,a5,s3
.L8199:
	lw	a5,0(s4)
	ble	a5,zero,.L8196
	li	s0,0
.L8201:
	addw	a4,s5,s0
	addw	a3,s3,s0
	mv	a2,s1
	li	a1,90
	mv	a0,s2
	call	sqlite3VdbeAddOp3
	lw	a5,0(s4)
	addiw	s0,s0,1
	bgt	a5,s0,.L8201
.L8196:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L8207:
	call	sqlite3GetVdbe.part.0
	ld	a5,16(s0)
	lw	s3,112(s0)
	mv	s2,a0
	bne	a5,zero,.L8208
	j	.L8199
	.size	windowReadPeerValues.isra.0, .-windowReadPeerValues.isra.0
	.section	.text.windowCodeRangeTest,"ax",@progbits
	.align	1
	.type	windowCodeRangeTest, @function
windowCodeRangeTest:
	addi	sp,sp,-112
	sd	s2,80(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s8,32(sp)
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s3,72(sp)
	sd	s7,40(sp)
	sd	s9,24(sp)
	sd	s10,16(sp)
	ld	s1,0(a0)
	mv	s2,a0
	mv	s4,a1
	ld	s0,16(s1)
	mv	s6,a3
	mv	s8,a4
	mv	s5,a5
	bne	s0,zero,.L8210
	mv	a0,s1
	sd	a2,8(sp)
	call	sqlite3GetVdbe.part.0
	ld	a2,8(sp)
	mv	s0,a0
.L8210:
	lw	a3,56(s1)
	lbu	a0,31(s1)
	addiw	s7,a3,1
	beq	a0,zero,.L8220
	addiw	a5,a0,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s1)
	add	a4,s1,a4
	lw	s3,12(a4)
	beq	a5,zero,.L8230
	addiw	a0,a0,-2
	andi	a0,a0,0xff
	addi	a5,a0,48
	slli	a5,a5,2
	sb	a0,31(s1)
	add	a5,s1,a5
	lw	s9,12(a5)
.L8213:
	sw	s7,56(s1)
	ld	a1,8(s2)
	li	s10,100
	ld	a5,24(a1)
	lbu	a5,32(a5)
	beq	a5,zero,.L8214
	li	a5,54
	beq	s4,a5,.L8222
	li	a5,57
	li	s10,101
	beq	s4,a5,.L8223
	li	s4,57
.L8214:
	ld	a0,0(s2)
	mv	a3,s3
	call	windowReadPeerValues.isra.0
	ld	a1,8(s2)
	ld	a0,0(s2)
	mv	a3,s9
	mv	a2,s8
	call	windowReadPeerValues.isra.0
	li	a4,0
	mv	a3,s7
	li	a2,0
	li	a1,110
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,-1
	lla	a2,.LC12
	mv	a0,s0
	call	sqlite3VdbeChangeP4
	mv	a4,s3
	li	a3,0
	mv	a2,s7
	li	a1,57
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a4,s3
	mv	s2,a0
	mv	a3,s3
	mv	a2,s6
	mv	a1,s10
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a4,144(s0)
	bge	s2,zero,.L8215
	addiw	s2,a4,-1
.L8215:
	ld	a5,0(s0)
	lla	a0,.LANCHOR0+568
	lbu	a5,97(a5)
	beq	a5,zero,.L8231
.L8216:
	sw	a4,8(a0)
	mv	a3,s5
	mv	a4,s3
	mv	a2,s9
	mv	a1,s4
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a4,144(s0)
	ble	a4,zero,.L8217
	ld	a3,136(s0)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	li	a4,128
	sh	a4,-22(a5)
.L8217:
	beq	s3,zero,.L8218
	mv	a1,s3
	mv	a0,s1
	call	sqlite3ReleaseTempReg.part.0
.L8218:
	beq	s9,zero,.L8209
	ld	s0,96(sp)
	ld	ra,104(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s10,16(sp)
	mv	a1,s9
	mv	a0,s1
	ld	s9,24(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	tail	sqlite3ReleaseTempReg.part.0
.L8209:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	ld	s10,16(sp)
	addi	sp,sp,112
	jr	ra
.L8231:
	ld	a0,136(s0)
	slli	a5,s2,1
	add	s2,a5,s2
	slli	s2,s2,3
	add	a0,a0,s2
	j	.L8216
.L8223:
	li	s4,55
	j	.L8214
.L8220:
	mv	s3,s7
.L8211:
	addiw	s9,s7,1
	addiw	s7,s7,2
	j	.L8213
.L8222:
	li	s10,101
	li	s4,56
	j	.L8214
.L8230:
	mv	s7,a3
	j	.L8211
	.size	windowCodeRangeTest, .-windowCodeRangeTest
	.section	.text.generateOutputSubroutine.isra.0,"ax",@progbits
	.align	1
	.type	generateOutputSubroutine.isra.0, @function
generateOutputSubroutine.isra.0:
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	sd	s9,40(sp)
	sd	s10,32(sp)
	sd	s11,24(sp)
	mv	s0,a0
	lw	a0,68(a0)
	ld	s1,16(s0)
	mv	s7,a1
	addiw	s2,a0,-1
	lw	s9,144(s1)
	sw	s2,68(s0)
	mv	s8,a2
	mv	s4,a3
	mv	s5,a4
	mv	s3,a5
	mv	s6,a6
	bne	a7,zero,.L8279
.L8233:
	ld	a5,0(s0)
	lbu	a5,97(a5)
	bne	a5,zero,.L8259
	lw	a1,0(s8)
	bgt	a1,zero,.L8280
	lbu	a5,0(s3)
	li	a4,12
	beq	a5,a4,.L8239
.L8284:
	bgtu	a5,a4,.L8240
	li	a4,10
	beq	a5,a4,.L8241
	li	a4,11
	bne	a5,a4,.L8243
	lbu	a5,31(s0)
	beq	a5,zero,.L8281
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s0)
	add	a5,s0,a4
	lw	s8,12(a5)
.L8254:
	lw	s10,0(s5)
	lw	a2,0(s4)
	ld	s11,16(s3)
	mv	a4,s8
	mv	a3,s10
	li	a1,92
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	mv	a3,s10
	mv	a2,s11
	mv	a0,s1
	call	sqlite3VdbeChangeP4
	lw	a5,0(s5)
	lw	a4,0(s4)
	lw	a2,4(s3)
	mv	a3,s8
	li	a1,132
	mv	a0,s1
	call	sqlite3VdbeAddOp4Int
.L8278:
	beq	s8,zero,.L8252
	mv	a1,s8
	mv	a0,s0
	call	sqlite3ReleaseTempReg.part.0
	lw	a2,0(s7)
	beq	a2,zero,.L8257
.L8283:
	lw	a3,136(sp)
	li	a4,0
	li	a1,49
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	j	.L8257
.L8240:
	li	a4,13
	bne	a5,a4,.L8243
	lw	a3,8(s3)
	lw	a4,0(s5)
	beq	a3,zero,.L8282
.L8256:
	lw	a2,0(s4)
	ld	a0,16(s0)
	li	a1,77
	call	sqlite3VdbeAddOp3
	lw	a2,4(s3)
	li	a4,0
	li	a3,0
	li	a1,14
	mv	a0,s1
	call	sqlite3VdbeAddOp3
.L8252:
	lw	a2,0(s7)
	bne	a2,zero,.L8283
.L8257:
	mv	a1,s2
	mv	a0,s1
	call	sqlite3VdbeResolveLabel
	li	a4,0
	li	a3,0
	mv	a2,s6
	li	a1,66
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	j	.L8237
.L8280:
	mv	a2,s2
	mv	a0,s1
	call	codeOffset.part.0
	lbu	a5,0(s3)
	li	a4,12
	bne	a5,a4,.L8284
.L8239:
	lbu	a5,31(s0)
	beq	a5,zero,.L8285
	addiw	a4,a5,-1
	andi	a4,a4,0xff
	addi	a3,a4,48
	slli	a3,a3,2
	sb	a4,31(s0)
	add	a3,s0,a3
	lw	s8,12(a3)
	beq	a4,zero,.L8286
	addiw	a5,a5,-2
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s0)
	add	a5,s0,a4
	lw	s10,12(a5)
.L8248:
	lw	a3,0(s5)
	lw	a2,0(s4)
	mv	a4,s8
	li	a1,92
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	lw	a2,4(s3)
	li	a1,121
	li	a4,0
	mv	a3,s10
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	lw	a2,4(s3)
	mv	a4,s10
	mv	a3,s8
	li	a1,122
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	lw	a4,144(s1)
	ble	a4,zero,.L8249
	ld	a3,136(s1)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	li	a4,8
	sh	a4,-22(a5)
.L8249:
	beq	s10,zero,.L8278
	mv	a1,s10
	mv	a0,s0
	call	sqlite3ReleaseTempReg.part.0
	j	.L8278
.L8259:
	li	s9,0
.L8237:
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s10,32(sp)
	ld	s11,24(sp)
	mv	a0,s9
	ld	s9,40(sp)
	addi	sp,sp,128
	jr	ra
.L8279:
	li	a4,0
	li	a3,0
	mv	a2,a7
	li	a1,20
	mv	a0,s1
	mv	s11,a7
	call	sqlite3VdbeAddOp3
	ld	a3,128(sp)
	lw	a2,0(s4)
	lw	a4,0(s5)
	mv	a5,a0
	addiw	s10,s11,1
	beq	a3,zero,.L8234
	lw	a3,0(a3)
	ld	a1,128(sp)
	addiw	a3,a3,1
	sw	a3,0(a1)
.L8234:
	mv	a3,s10
	li	a1,87
	mv	a0,s1
	sd	a5,8(sp)
	call	sqlite3VdbeAddOp3
	ld	a2,128(sp)
	mv	a1,a0
	li	a3,-9
	sd	a0,0(sp)
	mv	a0,s1
	call	sqlite3VdbeChangeP4
	ld	a1,0(sp)
	mv	a3,s2
	mv	a0,s1
	addiw	a4,a1,2
	mv	a2,a4
	li	a1,16
	call	sqlite3VdbeAddOp3
	ld	a5,8(sp)
	lw	a3,144(s1)
	blt	a5,zero,.L8287
	ld	a2,0(s1)
	lla	a4,.LANCHOR0+568
	lbu	a2,97(a2)
	beq	a2,zero,.L8288
.L8236:
	sw	a3,8(a4)
	lw	a4,0(s5)
	lw	a2,0(s4)
	mv	a3,s10
	addiw	a4,a4,-1
	li	a1,78
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	li	a4,0
	mv	a3,s11
	li	a2,1
	li	a1,70
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	j	.L8233
.L8241:
	lw	a3,4(s3)
	lw	a2,0(s4)
	ld	a0,16(s0)
	li	a4,1
	li	a1,77
	call	sqlite3VdbeAddOp3
	j	.L8252
.L8243:
	lw	a3,0(s5)
	lw	a2,0(s4)
	li	a4,0
	li	a1,81
	mv	a0,s1
	call	sqlite3VdbeAddOp3
	j	.L8252
.L8288:
	ld	a4,136(s1)
	slli	a0,a5,1
	add	a5,a0,a5
	slli	a5,a5,3
	add	a4,a4,a5
	j	.L8236
.L8287:
	ld	a2,0(s1)
	addiw	a5,a3,-1
	lla	a4,.LANCHOR0+568
	lbu	a2,97(a2)
	bne	a2,zero,.L8236
	j	.L8288
.L8281:
	lw	a5,56(s0)
	addiw	s8,a5,1
	sw	s8,56(s0)
	j	.L8254
.L8285:
	lw	s8,56(s0)
	addiw	s8,s8,1
	mv	a5,s8
.L8246:
	addiw	s10,a5,1
	sw	s10,56(s0)
	j	.L8248
.L8282:
	mv	a1,a4
	mv	a0,s0
	call	sqlite3GetTempRange
	sw	a0,8(s3)
	lw	a5,0(s5)
	mv	a3,a0
	sw	a5,12(s3)
	lw	a4,0(s5)
	j	.L8256
.L8286:
	lw	a5,56(s0)
	j	.L8246
	.size	generateOutputSubroutine.isra.0, .-generateOutputSubroutine.isra.0
	.section	.text.codeDistinct,"ax",@progbits
	.align	1
	.type	codeDistinct, @function
codeDistinct:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s3,24(sp)
	sd	s5,8(sp)
	lbu	a5,31(a0)
	mv	s2,a3
	ld	s3,16(a0)
	mv	s0,a0
	mv	s4,a1
	mv	a3,a2
	mv	s1,a4
	beq	a5,zero,.L8295
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(a0)
	add	a5,a0,a4
	lw	s5,12(a5)
.L8291:
	mv	a5,s2
	li	a1,29
	mv	a4,s1
	mv	a2,s4
	mv	a0,s3
	call	sqlite3VdbeAddOp4Int
	mv	a4,s5
	mv	a3,s2
	mv	a2,s1
	li	a1,92
	mv	a0,s3
	call	sqlite3VdbeAddOp3
	mv	a4,s1
	mv	a5,s2
	mv	a3,s5
	mv	a2,s4
	li	a1,132
	mv	a0,s3
	call	sqlite3VdbeAddOp4Int
	lw	a4,144(s3)
	ble	a4,zero,.L8292
	ld	a3,136(s3)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	li	a4,16
	sh	a4,-22(a5)
.L8292:
	beq	s5,zero,.L8289
	mv	a0,s0
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	mv	a1,s5
	ld	s5,8(sp)
	addi	sp,sp,64
	tail	sqlite3ReleaseTempReg.part.0
.L8289:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L8295:
	lw	a5,56(a0)
	addiw	s5,a5,1
	sw	s5,56(s0)
	j	.L8291
	.size	codeDistinct, .-codeDistinct
	.section	.text.sqlite3WhereEnd,"ax",@progbits
	.align	1
	.type	sqlite3WhereEnd, @function
sqlite3WhereEnd:
	addi	sp,sp,-160
	sd	s6,96(sp)
	sd	s8,80(sp)
	sd	ra,152(sp)
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	s2,128(sp)
	sd	s3,120(sp)
	sd	s4,112(sp)
	sd	s5,104(sp)
	sd	s7,88(sp)
	sd	s9,72(sp)
	sd	s10,64(sp)
	sd	s11,56(sp)
	ld	a4,0(a0)
	lbu	t1,66(a0)
	li	a5,-1
	ld	s7,16(a4)
	sd	a4,16(sp)
	ld	a4,0(a4)
	addiw	s6,t1,-1
	ld	s5,8(a0)
	sd	a4,8(sp)
	mv	s8,a0
	beq	s6,a5,.L8333
	li	s4,4096
	li	s0,88
	li	s3,170
	lla	s1,.LANCHOR0+568
	addi	s4,s4,-2048
.L8297:
	mul	a5,s6,s0
	add	a5,s8,a5
	lbu	a4,965(a5)
	ld	s2,992(a5)
	beq	a4,s3,.L8300
	lbu	a4,71(s8)
	li	a3,2
	li	s11,0
	beq	a4,a3,.L8417
.L8301:
	mul	s9,s6,s0
	mv	a0,s7
	add	s9,s8,s9
	lw	a1,944(s9)
	call	sqlite3VdbeResolveLabel
	lbu	a4,966(s9)
	lw	a3,972(s9)
	lw	a2,968(s9)
	lbu	a1,965(s9)
	mv	a0,s7
	call	sqlite3VdbeAddOp3
	lw	a4,144(s7)
	ble	a4,zero,.L8305
	ld	a3,136(s7)
	slli	a5,a4,1
	lbu	a2,967(s9)
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	sh	a2,-22(a5)
.L8305:
	beq	s11,zero,.L8306
	lw	a4,144(s7)
	bge	s11,zero,.L8307
	addiw	s11,a4,-1
.L8307:
	ld	a3,0(s7)
	mv	a5,s1
	lbu	a3,97(a3)
	bne	a3,zero,.L8308
	ld	a5,136(s7)
	slli	a0,s11,1
	add	t3,a0,s11
	slli	t3,t3,3
	add	a5,a5,t3
.L8308:
	sw	a4,8(a5)
.L8306:
	lw	a5,40(s2)
	and	a5,s4,a5
	beq	a5,zero,.L8312
	mul	s9,s6,s0
	add	s9,s8,s9
	lw	a5,976(s9)
	bgt	a5,zero,.L8418
.L8312:
	mul	s9,s6,s0
	mv	a0,s7
	add	s9,s8,s9
	lw	a1,932(s9)
	call	sqlite3VdbeResolveLabel
	lw	a3,940(s9)
	bne	a3,zero,.L8419
.L8311:
	mul	a5,s6,s0
	add	a5,s8,a5
	lw	a3,960(a5)
	bne	a3,zero,.L8420
.L8324:
	mul	s9,s6,s0
	add	s9,s8,s9
	lw	a2,920(s9)
	bne	a2,zero,.L8421
.L8325:
	addiw	s6,s6,-1
	li	a5,-1
	bne	s6,a5,.L8297
.L8333:
	lw	a1,56(s8)
	mv	a0,s7
	addi	s0,s8,920
	call	sqlite3VdbeResolveLabel
	lbu	a5,66(s8)
	li	s3,0
	beq	a5,zero,.L8299
	li	s4,90
	li	s6,128
	li	s1,21
	li	s2,-121
.L8298:
	lbu	a2,44(s0)
	slli	a1,a2,3
	sub	a5,a1,a2
	slli	a5,a5,4
	add	a5,s5,a5
	lbu	a4,69(a5)
	andi	a4,a4,16
	bne	a4,zero,.L8422
	ld	a3,72(s0)
	lw	a4,40(a3)
	andi	a5,a4,576
	beq	a5,zero,.L8336
	ld	a0,32(a3)
.L8337:
	beq	a0,zero,.L8335
	lbu	a5,69(s8)
	beq	a5,zero,.L8340
	ld	a5,24(a0)
	lw	a5,64(a5)
	andi	a5,a5,32
	beq	a5,zero,.L8335
.L8340:
	ld	a5,8(sp)
	lbu	a5,97(a5)
	beq	a5,zero,.L8423
.L8335:
	lbu	a5,66(s8)
	addiw	s3,s3,1
	addi	s0,s0,88
	bgt	a5,s3,.L8298
.L8299:
	lw	a5,60(s8)
	ld	a4,16(sp)
	ld	a0,8(sp)
	mv	a1,s8
	sw	a5,188(a4)
	ld	s0,144(sp)
	ld	ra,152(sp)
	ld	s1,136(sp)
	ld	s2,128(sp)
	ld	s3,120(sp)
	ld	s4,112(sp)
	ld	s5,104(sp)
	ld	s6,96(sp)
	ld	s7,88(sp)
	ld	s8,80(sp)
	ld	s9,72(sp)
	ld	s10,64(sp)
	ld	s11,56(sp)
	addi	sp,sp,160
	tail	whereInfoFree
.L8336:
	slli	a5,a4,50
	bge	a5,zero,.L8335
	ld	a0,56(s0)
	j	.L8337
.L8421:
	lw	s10,40(s2)
	li	a4,0
	li	a3,0
	li	a1,47
	mv	a0,s7
	call	sqlite3VdbeAddOp3
	andi	a5,s10,64
	mv	s2,a0
	beq	a5,zero,.L8424
.L8326:
	andi	a5,s10,512
	bne	a5,zero,.L8327
	slli	a5,s10,50
	bge	a5,zero,.L8328
	mul	a5,s6,s0
	add	a5,s8,a5
	ld	a5,976(a5)
	beq	a5,zero,.L8328
.L8327:
	mul	a5,s6,s0
	li	a4,0
	li	a3,0
	li	a1,129
	mv	a0,s7
	add	a5,s8,a5
	lw	a2,928(a5)
	call	sqlite3VdbeAddOp3
.L8328:
	mul	a5,s6,s0
	li	a4,66
	add	a5,s8,a5
	lbu	a2,965(a5)
	lw	a3,948(a5)
	beq	a2,a4,.L8425
	li	a4,0
	li	a2,0
	li	a1,11
	mv	a0,s7
	call	sqlite3VdbeAddOp3
.L8330:
	lw	a4,144(s7)
	bge	s2,zero,.L8331
	addiw	s2,a4,-1
.L8331:
	ld	a3,0(s7)
	mv	a5,s1
	lbu	a3,97(a3)
	bne	a3,zero,.L8332
	ld	a5,136(s7)
	slli	a0,s2,1
	add	s2,a0,s2
	slli	s2,s2,3
	add	a5,a5,s2
.L8332:
	sw	a4,8(a5)
	j	.L8325
.L8420:
	lw	a2,956(a5)
	li	a4,0
	li	a1,49
	srliw	a2,a2,1
	mv	a0,s7
	call	sqlite3VdbeAddOp3
	j	.L8324
.L8419:
	li	a4,0
	li	a2,0
	li	a1,11
	mv	a0,s7
	call	sqlite3VdbeAddOp3
	lw	a5,940(s9)
	lw	a3,144(s7)
	bge	a5,zero,.L8320
	addiw	a5,a3,-1
.L8320:
	ld	a2,0(s7)
	mv	a4,s1
	lbu	a2,97(a2)
	bne	a2,zero,.L8321
	ld	a4,136(s7)
	slli	a2,a5,1
	add	a5,a2,a5
	slli	a5,a5,3
	add	a4,a4,a5
.L8321:
	mul	a5,s6,s0
	sw	a3,8(a4)
	add	a5,s8,a5
	lw	a5,940(a5)
	addiw	a5,a5,-2
	bge	a5,zero,.L8322
	addiw	a5,a3,-1
.L8322:
	ld	a2,0(s7)
	mv	a4,s1
	lbu	a2,97(a2)
	bne	a2,zero,.L8323
	ld	a4,136(s7)
	slli	a2,a5,1
	add	a5,a2,a5
	slli	a5,a5,3
	add	a4,a4,a5
.L8323:
	sw	a3,8(a4)
	j	.L8311
.L8417:
	lbu	a4,66(s8)
	addiw	a4,a4,-1
	bne	a4,s6,.L8301
	lw	a4,40(s2)
	andi	a4,a4,512
	beq	a4,zero,.L8301
	ld	a4,32(s2)
	lb	a3,99(a4)
	bge	a3,zero,.L8301
	lhu	a3,30(s2)
	sext.w	s11,a3
	beq	a3,zero,.L8301
	ld	a4,16(a4)
	slli	a3,a3,1
	li	a2,35
	add	a3,a4,a3
	lh	a4,0(a3)
	bgt	a4,a2,.L8426
	li	s11,0
	j	.L8301
.L8300:
	lw	a1,944(a5)
	mv	a0,s7
	call	sqlite3VdbeResolveLabel
	j	.L8306
.L8422:
	lw	a4,64(a5)
	ld	a5,16(sp)
	lw	a3,4(s0)
	lw	a2,32(s0)
	ld	a1,16(a5)
	ld	a0,0(a5)
	li	a5,0
	call	translateColumnToCopy.isra.0
	j	.L8335
.L8425:
	lw	a2,968(a5)
	li	a4,0
	li	a1,12
	mv	a0,s7
	call	sqlite3VdbeAddOp3
	j	.L8330
.L8424:
	lw	a2,924(s9)
	li	a4,0
	li	a3,0
	li	a1,129
	mv	a0,s7
	call	sqlite3VdbeAddOp3
	j	.L8326
.L8418:
	lw	a1,936(s9)
	mv	a0,s7
	call	sqlite3VdbeResolveLabel
	lw	a5,976(s9)
	ld	s11,984(s9)
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,2
	addi	a4,a4,-20
	add	s11,s11,a4
	ble	a5,zero,.L8312
	addiw	a5,a5,-1
	slli	a5,a5,32
	srli	a5,a5,32
	not	s10,a5
	slli	s10,s10,2
	addi	a5,a5,1
	sub	a5,s10,a5
	slli	s10,a5,2
	add	s10,s11,s10
	j	.L8319
.L8316:
	lw	a3,4(s11)
	lw	a2,0(s11)
	li	a4,0
	mv	a0,s7
	call	sqlite3VdbeAddOp3
.L8315:
	lw	a5,4(s11)
	lw	a2,144(s7)
	addiw	a5,a5,-1
	bge	a5,zero,.L8317
	addiw	a5,a2,-1
.L8317:
	ld	a3,0(s7)
	mv	a4,s1
	lbu	a3,97(a3)
	bne	a3,zero,.L8318
	ld	a4,136(s7)
	slli	a3,a5,1
	add	a5,a3,a5
	slli	a5,a5,3
	add	a4,a4,a5
.L8318:
	sw	a2,8(a4)
	addi	s11,s11,-20
	beq	s11,s10,.L8312
.L8319:
	lw	a5,4(s11)
	lw	a3,144(s7)
	addiw	a5,a5,1
	bge	a5,zero,.L8313
	addiw	a5,a3,-1
.L8313:
	ld	a2,0(s7)
	mv	a4,s1
	lbu	a2,97(a2)
	bne	a2,zero,.L8314
	ld	a4,136(s7)
	slli	a2,a5,1
	add	a5,a2,a5
	slli	a5,a5,3
	add	a4,a4,a5
.L8314:
	sw	a3,8(a4)
	lbu	a1,16(s11)
	beq	a1,s3,.L8315
	lw	a5,12(s11)
	beq	a5,zero,.L8316
	lw	a4,8(s11)
	lw	a2,928(s9)
	li	a1,26
	addiw	a3,a3,2
	mv	a0,s7
	call	sqlite3VdbeAddOp4Int
	lbu	a1,16(s11)
	j	.L8316
.L8423:
	lw	t1,32(s0)
	lw	a5,144(s7)
	mv	a3,t1
	blt	t1,zero,.L8427
	ld	t3,0(s7)
	lla	a4,.LANCHOR0+568
	lbu	t3,97(t3)
	beq	t3,zero,.L8428
.L8342:
	bge	t1,a5,.L8335
	addiw	a3,a5,-1
	subw	a3,a3,t1
	slli	a3,a3,32
	srli	a3,a3,32
	addi	a3,a3,1
	sub	a5,a1,a2
	slli	a2,a3,1
	slli	a5,a5,4
	add	a2,a2,a3
	add	a5,s5,a5
	slli	a2,a2,3
	ld	t4,40(a5)
	add	a2,a4,a2
	li	t3,2
	j	.L8354
.L8353:
	bne	a5,s1,.L8343
	lw	a5,8(s0)
	sw	a5,4(a4)
.L8343:
	addi	a4,a4,24
	beq	a4,a2,.L8335
.L8354:
	lw	a3,4(a4)
	lw	a5,4(s0)
	bne	a3,a5,.L8343
	lbu	a5,0(a4)
	beq	a5,s4,.L8429
	bne	a5,s6,.L8353
	lw	a5,8(s0)
	sb	s2,0(a4)
	sw	a5,4(a4)
	j	.L8343
.L8428:
	ld	t3,136(s7)
	slli	a4,a3,1
	add	a4,a4,a3
	slli	a4,a4,3
	add	a4,t3,a4
	j	.L8342
.L8427:
	ld	t3,0(s7)
	addiw	a3,a5,-1
	lla	a4,.LANCHOR0+568
	lbu	t3,97(t3)
	bne	t3,zero,.L8342
	j	.L8428
.L8429:
	lw	a5,64(t4)
	lw	t1,8(a4)
	andi	a5,a5,32
	bne	a5,zero,.L8345
	slliw	t1,t1,16
	sraiw	t1,t1,16
.L8346:
	lhu	t5,96(a0)
	ld	a5,8(a0)
	beq	t5,zero,.L8343
	li	a3,0
	sext.w	t1,t1
	j	.L8352
.L8350:
	addiw	a3,a3,1
	addi	a5,a5,2
	beq	a3,t5,.L8343
.L8352:
	lh	a1,0(a5)
	bne	a1,t1,.L8350
	slliw	a5,a3,16
	slli	a1,a3,48
	sraiw	a5,a5,16
	blt	a1,zero,.L8343
	sw	a5,8(a4)
	lw	a5,8(s0)
	sw	a5,4(a4)
	j	.L8343
.L8345:
	ld	a5,16(t4)
	bne	a5,zero,.L8347
	j	.L8348
.L8349:
	ld	a5,40(a5)
	beq	a5,zero,.L8348
.L8347:
	lbu	a3,99(a5)
	andi	a3,a3,3
	bne	a3,t3,.L8349
	ld	a5,8(a5)
	slli	t1,t1,1
	add	t1,a5,t1
	lh	t1,0(t1)
	j	.L8346
.L8426:
	ld	a4,16(sp)
	li	s10,0
	sd	a5,32(sp)
	lw	s9,56(a4)
	addiw	a4,s9,1
	mv	s9,a4
	sd	a4,40(sp)
.L8302:
	sd	a5,24(sp)
	ld	a5,32(sp)
	addw	a4,s9,s10
	mv	a3,s10
	lw	a2,928(a5)
	li	a1,90
	mv	a0,s7
	call	sqlite3VdbeAddOp3
	addiw	s10,s10,1
	ld	a5,24(sp)
	bne	s11,s10,.L8302
	ld	a2,16(sp)
	li	a3,4
	li	a1,22
	lw	a4,56(a2)
	addiw	a4,a4,1
	addw	a4,a4,s10
	sw	a4,56(a2)
	lbu	a5,965(a5)
	beq	a5,a3,.L8303
	li	a1,25
.L8303:
	mul	a5,s6,s0
	ld	a4,40(sp)
	li	a3,0
	mv	a0,s7
	add	a5,s8,a5
	lw	a2,928(a5)
	call	sqlite3VdbeAddOp3
	ld	a5,0(s7)
	mv	s11,a0
	lbu	a5,97(a5)
	bne	a5,zero,.L8304
	ld	a4,136(s7)
	slli	a5,a0,1
	add	a5,a5,a0
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,-3
	sb	a4,1(a5)
	sw	s10,16(a5)
.L8304:
	mul	a5,s6,s0
	li	a4,0
	li	a2,1
	li	a1,11
	mv	a0,s7
	add	a5,s8,a5
	lw	a3,972(a5)
	call	sqlite3VdbeAddOp3
	j	.L8301
.L8348:
	ld	a5,8(zero)
	ebreak
	.size	sqlite3WhereEnd, .-sqlite3WhereEnd
	.section	.text.generateSortTail.isra.0,"ax",@progbits
	.align	1
	.type	generateSortTail.isra.0, @function
generateSortTail.isra.0:
	addi	sp,sp,-192
	sd	s1,168(sp)
	sd	s3,152(sp)
	sd	s5,136(sp)
	sd	s8,112(sp)
	sd	ra,184(sp)
	sd	s0,176(sp)
	sd	s2,160(sp)
	sd	s4,144(sp)
	sd	s6,128(sp)
	sd	s7,120(sp)
	sd	s9,104(sp)
	sd	s10,96(sp)
	sd	s11,88(sp)
	mv	s3,a0
	lw	a0,68(a0)
	mv	s1,a3
	lw	a3,28(a3)
	addiw	a0,a0,-1
	sw	a0,68(s3)
	lbu	s6,0(a5)
	sd	a5,32(sp)
	lw	a5,4(a5)
	ld	s7,0(a1)
	sd	a3,0(sp)
	sd	a5,56(sp)
	lw	a3,20(s1)
	sext.w	a5,a0
	sd	a5,24(sp)
	sext.w	a5,s6
	sd	a2,40(sp)
	sd	a5,64(sp)
	ld	s0,16(s3)
	ld	s2,0(s1)
	mv	s8,a4
	addi	s5,s7,8
	bne	a3,zero,.L8496
.L8431:
	addiw	a5,s6,-9
	andi	a5,a5,0xff
	li	a4,1
	lw	s9,12(s1)
	bleu	a5,a4,.L8432
	li	a5,13
	sext.w	a4,s6
	beq	a4,a5,.L8432
	lbu	a5,31(s3)
	beq	a5,zero,.L8497
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s3)
	add	a4,s3,a4
	lw	a4,12(a4)
	li	a3,12
	sd	a4,8(sp)
	sext.w	a4,s6
	beq	a4,a3,.L8438
.L8437:
	li	a5,14
	sext.w	a4,s6
	bne	a4,a5,.L8439
	lbu	a5,31(s3)
.L8438:
	beq	a5,zero,.L8498
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s3)
	add	a5,s3,a4
	lw	s4,12(a5)
	li	s10,-1
	li	s8,0
	j	.L8434
.L8432:
	ld	a5,32(sp)
	addiw	s10,s8,-1
	sd	zero,8(sp)
	lw	s4,8(a5)
.L8434:
	lw	a3,0(s2)
	lw	a4,8(s1)
	lbu	a2,36(s1)
	subw	a5,a3,a4
	addiw	s2,a5,1
	andi	a2,a2,1
	sd	a5,16(sp)
	mv	a4,s2
	beq	a2,zero,.L8441
	lw	a3,56(s3)
	lw	s2,52(s3)
	addw	a6,a4,s8
	addiw	a5,a3,1
	addiw	a3,s2,1
	sw	a5,56(s3)
	sw	a3,52(s3)
	lw	a3,20(s1)
	sd	a5,48(sp)
	bne	a3,zero,.L8499
	ld	a3,48(sp)
	mv	a4,a6
	mv	a2,s2
	li	a1,116
	mv	a0,s0
	call	sqlite3VdbeAddOp3
.L8443:
	ld	a3,0(sp)
	li	a1,34
	li	a4,0
	mv	a2,s9
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,40(sp)
	lw	a1,0(a5)
	addiw	a5,a0,1
	sd	a5,40(sp)
	ble	a1,zero,.L8446
	ld	a2,24(sp)
	mv	a0,s0
	call	codeOffset.part.0
.L8446:
	ld	a3,48(sp)
	mv	a4,s2
	mv	a2,s9
	li	a1,126
	mv	a0,s0
	call	sqlite3VdbeAddOp3
.L8447:
	ld	a5,16(sp)
	addiw	s11,a5,-1
	ble	s8,zero,.L8448
.L8506:
	addiw	a3,s8,-1
	slli	a3,a3,32
	addi	a4,s7,68
	srli	a3,a3,27
	addi	s7,s7,36
	add	a3,a3,a4
.L8450:
	lhu	a4,0(s7)
	addi	s7,s7,32
	bne	a4,zero,.L8449
	addiw	s11,s11,1
.L8449:
	bne	a3,s7,.L8450
.L8451:
	li	s7,-1
	j	.L8459
.L8500:
	addiw	a3,a4,-1
	mv	a2,s2
	addw	a4,s4,s10
	li	a1,90
	addiw	s10,s10,-1
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	beq	s10,s7,.L8460
.L8459:
	slli	a4,s10,5
	add	a4,s5,a4
	lhu	a4,28(a4)
	mv	a3,s11
	bne	a4,zero,.L8500
	addw	a4,s4,s10
	mv	a2,s2
	addiw	s10,s10,-1
	li	a1,90
	mv	a0,s0
	addiw	s11,s11,-1
	call	sqlite3VdbeAddOp3
	bne	s10,s7,.L8459
.L8460:
	li	a5,11
	beq	s6,a5,.L8452
.L8507:
	bgtu	s6,a5,.L8453
	li	a5,10
	bne	s6,a5,.L8455
.L8461:
	ld	a5,8(sp)
	bne	a5,zero,.L8467
.L8463:
	ld	a1,24(sp)
	mv	a0,s0
	call	sqlite3VdbeResolveLabel
	lbu	a5,36(s1)
	ld	a3,40(sp)
	li	a4,0
	andi	a5,a5,1
	mv	a2,s9
	beq	a5,zero,.L8472
	li	a1,3
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a2,16(s1)
	bne	a2,zero,.L8501
.L8474:
	mv	a0,s0
	ld	s0,176(sp)
	ld	a1,0(sp)
	ld	ra,184(sp)
	ld	s1,168(sp)
	ld	s2,160(sp)
	ld	s3,152(sp)
	ld	s4,144(sp)
	ld	s5,136(sp)
	ld	s6,128(sp)
	ld	s7,120(sp)
	ld	s8,112(sp)
	ld	s9,104(sp)
	ld	s10,96(sp)
	ld	s11,88(sp)
	addi	sp,sp,192
	tail	sqlite3VdbeResolveLabel
.L8499:
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,17
	mv	a0,s0
	sd	a6,72(sp)
	call	sqlite3VdbeAddOp3
	ld	a6,72(sp)
	ld	a3,48(sp)
	mv	s11,a0
	mv	a4,a6
	mv	a2,s2
	li	a1,116
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	beq	s11,zero,.L8443
	lw	a2,144(s0)
	blt	s11,zero,.L8502
	ld	a3,0(s0)
	lla	a4,.LANCHOR0+568
	lbu	a3,97(a3)
	beq	a3,zero,.L8503
.L8445:
	sw	a2,8(a4)
	j	.L8443
.L8453:
	andi	s6,s6,253
	li	a5,12
	beq	s6,a5,.L8504
.L8455:
	ld	a4,64(sp)
	li	a5,9
	beq	a4,a5,.L8505
	ld	a5,32(sp)
	li	a4,0
	li	a3,0
	lw	a2,4(a5)
	li	a1,14
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,8(sp)
	beq	a5,zero,.L8463
.L8467:
	beq	s4,zero,.L8469
.L8509:
	mv	a1,s4
	mv	a0,s3
	call	sqlite3ReleaseTempReg.part.0
.L8469:
	ld	a1,8(sp)
	mv	a0,s3
	call	sqlite3ReleaseTempReg.part.0
	j	.L8463
.L8472:
	li	a1,5
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a2,16(s1)
	beq	a2,zero,.L8474
.L8501:
	li	a4,0
	li	a3,0
	li	a1,66
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	j	.L8474
.L8441:
	ld	a3,0(sp)
	li	a1,35
	li	a4,0
	mv	a2,s9
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,40(sp)
	sd	s2,16(sp)
	mv	s2,s9
	lw	a1,0(a5)
	addiw	a5,a0,1
	sd	a5,40(sp)
	ble	a1,zero,.L8447
	ld	a2,24(sp)
	mv	a0,s0
	call	codeOffset.part.0
	ld	a5,16(sp)
	addiw	s11,a5,-1
	bgt	s8,zero,.L8506
.L8448:
	bge	s10,zero,.L8451
	li	a5,11
	bne	s6,a5,.L8507
.L8452:
	ld	a5,32(sp)
	ld	s5,8(sp)
	mv	a3,s8
	ld	s2,16(a5)
	mv	a4,s5
	mv	a2,s4
	li	a1,92
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	mv	a3,s8
	mv	a2,s2
	mv	a0,s0
	call	sqlite3VdbeChangeP4
	ld	a2,56(sp)
	mv	a5,s8
	mv	a4,s4
	mv	a3,s5
	li	a1,132
	mv	a0,s0
	call	sqlite3VdbeAddOp4Int
	beq	s5,zero,.L8463
	li	a5,1
	beq	s8,a5,.L8508
	lw	a5,40(s3)
	bge	a5,s8,.L8469
	sw	s8,40(s3)
	sw	s4,44(s3)
	j	.L8469
.L8496:
	lw	a2,16(s1)
	li	a4,0
	li	a1,12
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a3,0(sp)
	li	a1,11
	li	a4,0
	li	a2,0
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a1,20(s1)
	mv	a0,s0
	call	sqlite3VdbeResolveLabel
	j	.L8431
.L8504:
	ld	a3,16(sp)
	mv	a2,s2
	mv	a4,s4
	li	a1,90
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	s5,8(sp)
	ld	s2,56(sp)
	li	a1,121
	li	a4,0
	mv	a3,s5
	mv	a2,s2
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a4,s5
	mv	a3,s4
	mv	a2,s2
	li	a1,122
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a4,144(s0)
	ble	a4,zero,.L8461
	ld	a3,136(s0)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	li	a4,8
	sh	a4,-22(a5)
	j	.L8461
.L8503:
	ld	a4,136(s0)
	slli	a3,s11,1
	add	a7,a3,s11
	slli	a7,a7,3
	add	a4,a4,a7
	sw	a2,8(a4)
	j	.L8443
.L8502:
	ld	a3,0(s0)
	addiw	s11,a2,-1
	lla	a4,.LANCHOR0+568
	lbu	a3,97(a3)
	bne	a3,zero,.L8445
	j	.L8503
.L8497:
	lw	s10,56(s3)
	li	a5,12
	addiw	a4,s10,1
	sw	a4,56(s3)
	sd	a4,8(sp)
	sext.w	a4,s6
	bne	a4,a5,.L8437
	ld	a5,8(sp)
.L8436:
	addiw	s4,a5,1
	sw	s4,56(s3)
	li	s10,-1
	li	s8,0
	j	.L8434
.L8505:
	ld	a5,32(sp)
	li	a4,0
	mv	a3,s8
	lw	a2,8(a5)
	li	a1,81
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,8(sp)
	beq	a5,zero,.L8463
	beq	s4,zero,.L8469
	j	.L8509
.L8439:
	mv	a1,s8
	mv	a0,s3
	call	sqlite3GetTempRange
	mv	s4,a0
	addiw	s10,s8,-1
	j	.L8434
.L8508:
	mv	a1,s4
	mv	a0,s3
	call	sqlite3ReleaseTempRange.part.0
	j	.L8469
.L8498:
	lw	a5,56(s3)
	j	.L8436
	.size	generateSortTail.isra.0, .-generateSortTail.isra.0
	.section	.text.sqlite3CompleteInsertion,"ax",@progbits
	.align	1
	.type	sqlite3CompleteInsertion, @function
sqlite3CompleteInsertion:
	addi	sp,sp,-144
	sd	s0,128(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s6,80(sp)
	sd	s7,72(sp)
	sd	s11,40(sp)
	sd	ra,136(sp)
	sd	s1,120(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	s8,64(sp)
	sd	s9,56(sp)
	sd	s10,48(sp)
	ld	s10,16(a0)
	sd	a2,8(sp)
	sd	a4,16(sp)
	sd	a7,24(sp)
	lw	s11,144(sp)
	mv	s6,a0
	mv	s3,a1
	mv	s2,a3
	mv	s0,a5
	mv	s7,a6
	bne	s10,zero,.L8511
	call	sqlite3GetVdbe.part.0
	mv	s10,a0
.L8511:
	ld	s8,16(s3)
	beq	s8,zero,.L8531
	snez	s1,s11
	slliw	s1,s1,4
	andi	s1,s1,0xff
	andi	s5,s7,2
	ori	a5,s1,1
	or	a5,s5,a5
	sd	a5,0(sp)
	li	s5,0
	li	s4,2
	j	.L8522
.L8550:
	lhu	a5,94(s8)
.L8520:
	li	a1,132
	mv	a0,s10
	call	sqlite3VdbeAddOp4Int
	lw	a4,144(s10)
	ble	a4,zero,.L8516
	ld	a3,136(s10)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	sh	s9,-22(a5)
.L8516:
	ld	s8,40(s8)
	addiw	s5,s5,1
	beq	s8,zero,.L8512
.L8522:
	slli	a5,s5,2
	add	s9,s0,a5
	lw	a3,0(s9)
	beq	a3,zero,.L8516
	ld	a4,72(s8)
	beq	a4,zero,.L8517
	lw	a1,144(s10)
	mv	a2,a3
	li	a4,0
	addiw	a3,a1,2
	mv	a0,s10
	li	a1,50
	call	sqlite3VdbeAddOp3
	lw	a3,0(s9)
.L8517:
	lbu	a5,99(s8)
	mv	s9,s1
	andi	a4,a5,3
	beq	a4,s4,.L8549
.L8518:
	andi	a5,a5,8
	addw	a2,s2,s5
	addiw	a4,a3,1
	bne	a5,zero,.L8550
	lhu	a5,96(s8)
	j	.L8520
.L8549:
	lw	a4,64(s3)
	andi	a4,a4,32
	beq	a4,zero,.L8518
	ld	s9,0(sp)
	j	.L8518
.L8531:
	li	s5,0
.L8512:
	lw	a5,64(s3)
	andi	a5,a5,32
	bne	a5,zero,.L8510
	lbu	a5,30(s6)
	li	s1,0
	beq	a5,zero,.L8551
.L8525:
	ld	a5,24(sp)
	beq	a5,zero,.L8527
.L8553:
	ori	s1,s1,8
.L8527:
	beq	s11,zero,.L8528
	ori	s1,s1,16
.L8528:
	slli	a7,s5,2
	add	a7,s0,a7
	lw	a3,0(a7)
	ld	a4,16(sp)
	ld	a2,8(sp)
	li	a1,122
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	lbu	a5,30(s6)
	beq	a5,zero,.L8552
	lw	a4,144(s10)
	ble	a4,zero,.L8510
.L8554:
	ld	a3,136(s10)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	sh	s1,-22(a5)
.L8510:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	ld	s9,56(sp)
	ld	s10,48(sp)
	ld	s11,40(sp)
	addi	sp,sp,144
	jr	ra
.L8551:
	li	s1,33
	beq	s7,zero,.L8525
	ld	a5,24(sp)
	ori	s7,s7,1
	andi	s1,s7,0xff
	beq	a5,zero,.L8527
	j	.L8553
.L8552:
	li	a2,-6
	mv	a1,s3
	mv	a0,s10
	call	sqlite3VdbeAppendP4
	lw	a4,144(s10)
	bgt	a4,zero,.L8554
	j	.L8510
	.size	sqlite3CompleteInsertion, .-sqlite3CompleteInsertion
	.section	.text.integrityCheckResultRow,"ax",@progbits
	.align	1
	.type	integrityCheckResultRow, @function
integrityCheckResultRow:
	addi	sp,sp,-32
	li	a4,0
	li	a3,1
	li	a2,3
	li	a1,81
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s0,a0
	call	sqlite3VdbeAddOp3
	lw	a3,144(s0)
	li	a4,1
	li	a2,1
	addiw	a3,a3,2
	li	a1,47
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	s1,a0
	li	a4,0
	mv	a0,s0
	li	a3,0
	li	a2,0
	li	a1,69
	call	sqlite3VdbeAddOp3
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	integrityCheckResultRow, .-integrityCheckResultRow
	.section	.text.sqlite3VdbeAddOp4Dup8.constprop.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeAddOp4Dup8.constprop.0, @function
sqlite3VdbeAddOp4Dup8.constprop.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s2,a0
	ld	a0,0(a0)
	mv	s3,a1
	li	a1,8
	mv	s1,a2
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L8558
	lbu	a7,0(s1)
	lbu	a6,1(s1)
	lbu	a0,2(s1)
	lbu	a1,3(s1)
	lbu	a2,4(s1)
	lbu	a3,5(s1)
	lbu	a4,6(s1)
	lbu	a5,7(s1)
	sb	a7,0(s0)
	sb	a6,1(s0)
	sb	a0,2(s0)
	sb	a1,3(s0)
	sb	a2,4(s0)
	sb	a3,5(s0)
	sb	a4,6(s0)
	sb	a5,7(s0)
.L8558:
	mv	a3,s3
	li	a4,0
	li	a2,0
	li	a1,71
	mv	a0,s2
	call	sqlite3VdbeAddOp3
	mv	s1,a0
	mv	a2,s0
	mv	a1,a0
	li	a3,-14
	mv	a0,s2
	call	sqlite3VdbeChangeP4
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	mv	a0,s1
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3VdbeAddOp4Dup8.constprop.0, .-sqlite3VdbeAddOp4Dup8.constprop.0
	.section	.text.returnSingleInt,"ax",@progbits
	.align	1
	.type	returnSingleInt, @function
returnSingleInt:
	addi	sp,sp,-32
	sd	a1,8(sp)
	addi	a2,sp,8
	li	a1,1
	sd	ra,24(sp)
	sd	s0,16(sp)
	mv	s0,a0
	call	sqlite3VdbeAddOp4Dup8.constprop.0
	mv	a0,s0
	li	a4,0
	li	a3,1
	li	a2,1
	li	a1,81
	call	sqlite3VdbeAddOp3
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	returnSingleInt, .-returnSingleInt
	.section	.text.sqlite3VdbeAddOpList.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeAddOpList.isra.0, @function
sqlite3VdbeAddOpList.isra.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	lw	a4,144(a0)
	lw	a5,148(a0)
	mv	s1,a0
	addw	a3,a4,a1
	mv	s2,a1
	mv	s0,a2
	bgt	a3,a5,.L8576
.L8566:
	addiw	a3,s2,-1
	ld	a5,136(s1)
	slli	a0,a4,1
	slli	a3,a3,32
	add	a0,a0,a4
	srli	a3,a3,32
	slli	a0,a0,3
	addi	a3,a3,1
	add	a0,a5,a0
	slli	a3,a3,2
	add	a3,s0,a3
	mv	a5,a0
	lla	a6,.LANCHOR4
.L8569:
	lbu	a4,0(s0)
	sb	a4,0(a5)
	lb	a4,1(s0)
	sw	a4,4(a5)
	lb	a2,2(s0)
	sw	a2,8(a5)
	lbu	a4,0(s0)
	add	a4,a6,a4
	lbu	a4,-1056(a4)
	andi	a4,a4,1
	beq	a4,zero,.L8568
	lb	a4,2(s0)
	ble	a4,zero,.L8568
	lw	a4,144(s1)
	addw	a2,a4,a2
	sw	a2,8(a5)
.L8568:
	lb	a4,3(s0)
	sb	zero,1(a5)
	sd	zero,16(a5)
	sw	a4,12(a5)
	sh	zero,2(a5)
	addi	s0,s0,4
	addi	a5,a5,24
	bne	s0,a3,.L8569
	lw	a1,144(s1)
	addw	s2,a1,s2
	sw	s2,144(s1)
.L8565:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8576:
	call	growOpArray.isra.0
	bne	a0,zero,.L8570
	lw	a4,144(s1)
	j	.L8566
.L8570:
	li	a0,0
	j	.L8565
	.size	sqlite3VdbeAddOpList.isra.0, .-sqlite3VdbeAddOpList.isra.0
	.section	.text.sqlite3ArrayAllocate,"ax",@progbits
	.align	1
	.type	sqlite3ArrayAllocate, @function
sqlite3ArrayAllocate:
	addi	sp,sp,-64
	sd	s0,48(sp)
	lw	s0,0(a3)
	sd	s1,40(sp)
	sd	s2,32(sp)
	addi	a5,s0,-1
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s3,24(sp)
	sd	s5,8(sp)
	sw	s0,0(a4)
	and	a5,a5,s0
	mv	s2,a3
	mv	s4,a1
	mv	s1,a2
	bne	a5,zero,.L8581
	mv	s5,a4
	bne	s0,zero,.L8585
	mv	a1,s4
	call	sqlite3DbRealloc
	mv	s3,a0
	beq	a0,zero,.L8586
.L8578:
	mul	s0,s0,s1
	mv	a2,s1
	li	a1,0
	add	a0,s3,s0
	call	memset@plt
	lw	a5,0(s2)
	addiw	a5,a5,1
	sw	a5,0(s2)
.L8577:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	mv	a0,s3
	ld	s3,24(sp)
	addi	sp,sp,64
	jr	ra
.L8585:
	mul	a2,s0,a2
	mv	a1,s4
	slli	a2,a2,1
	call	sqlite3DbRealloc
	mv	s3,a0
	bne	a0,zero,.L8578
.L8586:
	li	a5,-1
	sw	a5,0(s5)
	mv	s3,s4
	j	.L8577
.L8581:
	mv	s3,a1
	j	.L8578
	.size	sqlite3ArrayAllocate, .-sqlite3ArrayAllocate
	.section	.text.sqlite3IdListAppend,"ax",@progbits
	.align	1
	.type	sqlite3IdListAppend, @function
sqlite3IdListAppend:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s4,16(sp)
	ld	s4,0(a0)
	mv	s2,a0
	mv	s3,a2
	mv	s0,a1
	beq	a1,zero,.L8599
.L8588:
	ld	a1,0(s0)
	addi	a4,sp,12
	addi	a3,s0,8
	li	a2,16
	mv	a0,s4
	call	sqlite3ArrayAllocate
	sd	a0,0(s0)
	lw	s1,12(sp)
	mv	a5,a0
	blt	s1,zero,.L8600
	slli	s1,s1,4
	mv	a1,s3
	mv	a0,s4
	add	s1,a5,s1
	call	sqlite3NameFromToken
	sd	a0,0(s1)
	lbu	a4,276(s2)
	li	a5,1
	bleu	a4,a5,.L8589
	lw	a4,12(sp)
	ld	a5,0(s0)
	slli	a4,a4,4
	add	a5,a5,a4
	ld	a2,0(a5)
	beq	a2,zero,.L8589
	ld	a0,0(s2)
	mv	a3,s3
	addi	a1,s2,400
	call	sqlite3RenameTokenMap.isra.0
.L8589:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L8599:
	li	a1,16
	mv	a0,s4
	call	sqlite3DbMallocZero
	mv	s0,a0
	bne	a0,zero,.L8588
	j	.L8589
.L8600:
	mv	a1,s0
	mv	a0,s4
	call	sqlite3IdListDelete.part.0
	li	s0,0
	j	.L8589
	.size	sqlite3IdListAppend, .-sqlite3IdListAppend
	.section	.text.sqlite3ExprListAppend.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3ExprListAppend.isra.0, @function
sqlite3ExprListAppend.isra.0:
	addi	sp,sp,-48
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	mv	s2,a0
	mv	s3,a2
	beq	a1,zero,.L8612
	lw	a5,0(a1)
	mv	s1,a1
	addiw	a4,a5,-1
	and	a4,a5,a4
	sext.w	a4,a4
	beq	a4,zero,.L8605
	slli	s2,a5,5
	addi	a0,s2,16
	addiw	a5,a5,1
	mv	s0,a1
.L8604:
	sw	a5,0(s0)
	li	a2,24
	li	a1,0
	add	a0,s0,a0
	add	s2,s0,s2
	call	memset@plt
	sd	s3,8(s2)
.L8601:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L8605:
	slli	a5,a5,6
	addi	a2,a5,8
	call	sqlite3DbRealloc
	mv	s0,a0
	beq	a0,zero,.L8606
	lw	a5,0(a0)
	slli	s2,a5,5
	addi	a0,s2,16
	addiw	a5,a5,1
	j	.L8604
.L8612:
	li	a1,40
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L8603
	sw	zero,0(a0)
	li	a5,1
	li	a0,16
	li	s2,0
	j	.L8604
.L8606:
	beq	s3,zero,.L8609
	mv	a1,s3
	mv	a0,s2
	call	sqlite3ExprDeleteNN
.L8609:
	mv	a1,s1
	mv	a0,s2
	call	exprListDeleteNN
	j	.L8601
.L8603:
	beq	s3,zero,.L8601
	mv	a1,s3
	mv	a0,s2
	call	sqlite3ExprDeleteNN
	j	.L8601
	.size	sqlite3ExprListAppend.isra.0, .-sqlite3ExprListAppend.isra.0
	.section	.text.sqlite3AddCheckConstraint,"ax",@progbits
	.align	1
	.type	sqlite3AddCheckConstraint, @function
sqlite3AddCheckConstraint:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	s1,312(a0)
	mv	s0,a0
	mv	a2,a1
	ld	a0,0(a0)
	beq	s1,zero,.L8614
	lbu	a4,276(s0)
	li	a5,1
	beq	a4,a5,.L8614
	lbu	a4,180(a0)
	ld	a5,32(a0)
	slli	a4,a4,5
	add	a5,a5,a4
	ld	a5,8(a5)
	ld	a5,8(a5)
	lhu	a5,38(a5)
	andi	a5,a5,1
	beq	a5,zero,.L8628
.L8614:
	beq	a2,zero,.L8613
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	mv	a1,a2
	addi	sp,sp,32
	tail	sqlite3ExprDeleteNN
.L8628:
	ld	a1,48(s1)
	call	sqlite3ExprListAppend.isra.0
	sd	a0,48(s1)
	lw	a5,104(s0)
	beq	a5,zero,.L8613
	bne	a0,zero,.L8629
.L8613:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L8629:
	addi	a2,s0,96
	mv	a1,a0
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	li	a3,1
	addi	sp,sp,32
	tail	sqlite3ExprListSetName.part.0
	.size	sqlite3AddCheckConstraint, .-sqlite3AddCheckConstraint
	.section	.text.selectWindowRewriteExprCb,"ax",@progbits
	.align	1
	.type	selectWindowRewriteExprCb, @function
selectWindowRewriteExprCb:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	ld	s1,40(a0)
	lbu	a5,0(a1)
	mv	a2,a0
	ld	a4,32(s1)
	mv	s0,a1
	beq	a4,zero,.L8631
	li	a4,162
	bne	a5,a4,.L8637
	ld	a5,8(s1)
	lw	a1,0(a5)
	ble	a1,zero,.L8634
	lw	a0,44(s0)
	addi	a5,a5,72
	li	a4,0
	j	.L8636
.L8658:
	beq	a1,a4,.L8637
.L8636:
	lw	a3,0(a5)
	addiw	a4,a4,1
	addi	a5,a5,112
	bne	a3,a0,.L8658
.L8635:
	ld	s2,0(a2)
	li	a3,0
	mv	a1,s0
	ld	a0,0(s2)
	li	a2,0
	call	exprDup
	mv	a2,a0
	ld	a1,16(s1)
	ld	a0,0(s2)
	call	sqlite3ExprListAppend.isra.0
	sd	a0,16(s1)
	beq	a0,zero,.L8637
	lw	a5,4(s0)
	li	a4,134217728
	mv	a1,s0
	or	a5,a5,a4
	sw	a5,4(s0)
	ld	a0,0(s2)
	call	sqlite3ExprDeleteNN
	mv	a0,s0
	li	a2,72
	li	a1,0
	call	memset@plt
	li	a5,-94
	sb	a5,0(s0)
	ld	a5,16(s1)
	li	a0,0
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sh	a5,48(s0)
	ld	a5,0(s1)
	lw	a5,80(a5)
	sw	a5,44(s0)
	ld	a5,24(s1)
	sd	a5,64(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8634:
	bne	a1,zero,.L8635
.L8637:
	li	a0,0
.L8633:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8631:
	li	a4,161
	bne	a5,a4,.L8659
	lw	a5,4(a1)
	slli	a4,a5,39
	bge	a4,zero,.L8637
	ld	a5,0(s1)
	beq	a5,zero,.L8635
	ld	a4,64(a1)
.L8639:
	beq	a4,a5,.L8641
	ld	a5,56(a5)
	bne	a5,zero,.L8639
	j	.L8635
.L8659:
	addiw	a5,a5,94
	andi	a5,a5,0xff
	li	a4,1
	li	a0,0
	bleu	a5,a4,.L8635
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8641:
	li	a0,1
	j	.L8633
	.size	selectWindowRewriteExprCb, .-selectWindowRewriteExprCb
	.section	.text.exprListAppendList,"ax",@progbits
	.align	1
	.type	exprListAppendList, @function
exprListAppendList:
	addi	sp,sp,-96
	sd	s0,80(sp)
	sd	ra,88(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
	mv	s0,a1
	beq	a2,zero,.L8661
	mv	s1,a2
	mv	s2,a0
	mv	s3,a3
	li	s4,0
	beq	a1,zero,.L8662
	lw	s4,0(a1)
.L8662:
	lw	a5,0(s1)
	ble	a5,zero,.L8661
	li	s6,-805306368
	li	s9,0
	li	s5,147
	li	s7,114
	addi	s6,s6,-1025
.L8668:
	slli	s8,s9,5
	add	a5,s1,s8
	ld	a2,8(a5)
	ld	a0,0(s2)
	beq	a2,zero,.L8663
	mv	a1,a2
	li	a3,0
	li	a2,0
	call	exprDup
	mv	a2,a0
	beq	s3,zero,.L8682
	beq	a0,zero,.L8682
	lbu	a5,0(a0)
	beq	a5,s5,.L8666
.L8682:
	ld	a0,0(s2)
.L8663:
	mv	a1,s0
	call	sqlite3ExprListAppend.isra.0
	mv	s0,a0
	beq	a0,zero,.L8667
	add	s8,s1,s8
	lbu	a4,32(s8)
	addw	a5,s4,s9
	slli	a5,a5,5
	add	a5,a0,a5
	sb	a4,32(a5)
.L8667:
	lw	a5,0(s1)
	addiw	s9,s9,1
	bgt	a5,s9,.L8668
.L8661:
	ld	ra,88(sp)
	mv	a0,s0
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	ld	s9,8(sp)
	addi	sp,sp,96
	jr	ra
.L8666:
	lw	a5,4(a0)
	sb	s7,0(a0)
	and	a5,a5,s6
	sw	a5,4(a0)
	j	.L8682
	.size	exprListAppendList, .-exprListAppendList
	.section	.text.sqlite3SelectNew,"ax",@progbits
	.align	1
	.type	sqlite3SelectNew, @function
sqlite3SelectNew:
	addi	sp,sp,-224
	sd	s0,208(sp)
	sd	s1,200(sp)
	sd	s2,192(sp)
	sd	s3,184(sp)
	sd	s4,176(sp)
	sd	s5,168(sp)
	sd	s6,160(sp)
	sd	s7,152(sp)
	sd	s8,144(sp)
	sd	ra,216(sp)
	mv	s1,a0
	ld	a0,0(a0)
	mv	s3,a1
	li	a1,128
	mv	s2,a2
	mv	s7,a3
	mv	s6,a4
	mv	s5,a5
	mv	s4,a6
	mv	s8,a7
	call	sqlite3DbMallocRawNN
	addi	s0,sp,16
	beq	a0,zero,.L8684
	mv	s0,a0
.L8684:
	beq	s3,zero,.L8693
.L8685:
	li	a5,-125
	sb	a5,8(s0)
	sd	s3,0(s0)
	sw	s8,12(s0)
	sd	zero,16(s0)
	lw	a2,132(s1)
	li	a5,-1
	addiw	a2,a2,1
	sw	a2,132(s1)
	sw	a2,24(s0)
	sw	a5,28(s0)
	sw	a5,32(s0)
	sh	zero,10(s0)
	beq	s2,zero,.L8694
.L8686:
	ld	a5,224(sp)
	sd	s2,40(s0)
	sd	s7,48(s0)
	sd	s6,56(s0)
	sd	s5,64(s0)
	sd	s4,72(s0)
	sd	zero,80(s0)
	sd	zero,88(s0)
	sd	a5,96(s0)
	sd	zero,104(s0)
	sd	zero,112(s0)
	sd	zero,120(s0)
	ld	a0,0(s1)
	lbu	a5,97(a0)
	bne	a5,zero,.L8695
.L8683:
	ld	ra,216(sp)
	mv	a0,s0
	ld	s0,208(sp)
	ld	s1,200(sp)
	ld	s2,192(sp)
	ld	s3,184(sp)
	ld	s4,176(sp)
	ld	s5,168(sp)
	ld	s6,160(sp)
	ld	s7,152(sp)
	ld	s8,144(sp)
	addi	sp,sp,224
	jr	ra
.L8693:
	ld	a0,0(s1)
	li	a3,0
	li	a1,172
	mv	a2,sp
	sd	zero,0(sp)
	sw	zero,8(sp)
	call	sqlite3ExprAlloc
	mv	a2,a0
	ld	a0,0(s1)
	li	a1,0
	call	sqlite3ExprListAppend.isra.0
	mv	s3,a0
	j	.L8685
.L8694:
	ld	a0,0(s1)
	li	a1,120
	call	sqlite3DbMallocZero
	mv	s2,a0
	j	.L8686
.L8695:
	addi	a2,sp,16
	sub	a2,s0,a2
	mv	a1,s0
	snez	a2,a2
	call	clearSelect
	li	s0,0
	j	.L8683
	.size	sqlite3SelectNew, .-sqlite3SelectNew
	.section	.text.growVTrans,"ax",@progbits
	.align	1
	.type	growVTrans, @function
growVTrans:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	lw	a2,436(a0)
	li	s0,5
	remw	s0,a2,s0
	beq	s0,zero,.L8701
	li	s0,0
.L8697:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8701:
	ld	a1,472(a0)
	addi	a2,a2,5
	slli	a2,a2,3
	mv	s1,a0
	call	sqlite3DbRealloc
	mv	s2,a0
	beq	a0,zero,.L8699
	lw	a0,436(s1)
	li	a2,40
	li	a1,0
	slli	a0,a0,3
	add	a0,s2,a0
	call	memset@plt
	sd	s2,472(s1)
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8699:
	li	s0,7
	j	.L8697
	.size	growVTrans, .-growVTrans
	.section	.text.sqlite3StrAccumEnlarge.part.0,"ax",@progbits
	.align	1
	.type	sqlite3StrAccumEnlarge.part.0, @function
sqlite3StrAccumEnlarge.part.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lw	a4,20(a0)
	mv	s0,a0
	beq	a4,zero,.L8729
	lbu	a5,29(a0)
	mv	s1,a1
	li	a3,0
	andi	a5,a5,4
	beq	a5,zero,.L8705
	ld	a3,8(a0)
.L8705:
	lwu	a2,24(s0)
	addiw	a5,s1,1
	slli	a4,a4,32
	add	a5,a5,a2
	srli	a4,a4,32
	add	a2,a2,a5
	bgt	a2,a4,.L8730
.L8706:
	ld	a0,0(s0)
	sw	a2,16(s0)
	slli	a2,a2,32
	srli	a2,a2,32
	beq	a0,zero,.L8708
	mv	a1,a3
	call	sqlite3DbRealloc
	mv	a5,a0
.L8709:
	beq	a5,zero,.L8710
	lbu	a4,29(s0)
	andi	a4,a4,4
	bne	a4,zero,.L8711
	lw	a2,24(s0)
	bne	a2,zero,.L8731
.L8711:
	ld	a4,0(s0)
	sd	a5,8(s0)
	beq	a4,zero,.L8712
	ld	a3,400(a4)
	bgtu	a3,a5,.L8712
	ld	a3,408(a4)
	bgtu	a3,a5,.L8732
.L8712:
	mv	a0,a5
	ld	a5,.LANCHOR1+72
	jalr	a5
.L8713:
	lbu	a5,29(s0)
	sw	a0,16(s0)
	ori	a5,a5,4
	sb	a5,29(s0)
.L8704:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L8730:
	mv	a2,a5
	ble	a5,a4,.L8706
	mv	a0,s0
	call	sqlite3_str_reset@plt
	lw	a5,20(s0)
	li	a4,18
	sb	a4,28(s0)
	bne	a5,zero,.L8733
.L8707:
	mv	a0,s0
	call	setStrAccumError.part.0
	ld	ra,24(sp)
	ld	s0,16(sp)
	li	s1,0
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L8729:
	li	a5,18
	sb	a5,28(a0)
	call	setStrAccumError.part.0
	lw	s1,16(s0)
	lw	a1,24(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	addiw	s1,s1,-1
	subw	s1,s1,a1
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L8708:
	mv	a1,a2
	mv	a0,a3
	call	sqlite3_realloc64@plt
	mv	a5,a0
	j	.L8709
.L8732:
	lhu	a0,364(a4)
	j	.L8713
.L8731:
	ld	a1,8(s0)
	slli	a2,a2,32
	mv	a0,a5
	srli	a2,a2,32
	call	memcpy@plt
	mv	a5,a0
	j	.L8711
.L8710:
	mv	a0,s0
	call	sqlite3_str_reset@plt
	lw	a5,20(s0)
	li	a4,7
	sb	a4,28(s0)
	li	s1,0
	beq	a5,zero,.L8704
	mv	a0,s0
	call	sqlite3_str_reset@plt
	j	.L8704
.L8733:
	mv	a0,s0
	call	sqlite3_str_reset@plt
	j	.L8707
	.size	sqlite3StrAccumEnlarge.part.0, .-sqlite3StrAccumEnlarge.part.0
	.section	.text.sqlite3_str_appendchar,"ax",@progbits
	.align	1
	.globl	sqlite3_str_appendchar
	.type	sqlite3_str_appendchar, @function
sqlite3_str_appendchar:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lw	a5,24(a0)
	lwu	a3,16(a0)
	mv	s0,a0
	slli	a6,a5,32
	srli	a6,a6,32
	add	a7,a6,a1
	mv	s1,a2
	blt	a7,a3,.L8735
	lbu	a5,28(a0)
	bne	a5,zero,.L8734
	call	sqlite3StrAccumEnlarge.part.0
	ble	a0,zero,.L8734
	lw	a5,24(s0)
	addiw	a3,a0,-1
	slli	a6,a5,32
	srli	a6,a6,32
.L8739:
	sext.w	a3,a3
	j	.L8738
.L8742:
	lw	a5,24(s0)
	addiw	a3,a3,-1
	slli	a6,a5,32
	srli	a6,a6,32
.L8738:
	ld	a4,8(s0)
	addiw	a5,a5,1
	sw	a5,24(s0)
	add	a5,a4,a6
	sb	s1,0(a5)
	bgt	a3,zero,.L8742
.L8734:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L8735:
	addiw	a3,a1,-1
	bgt	a1,zero,.L8739
	j	.L8734
	.size	sqlite3_str_appendchar, .-sqlite3_str_appendchar
	.section	.text.enlargeAndAppend,"ax",@progbits
	.align	1
	.type	enlargeAndAppend, @function
enlargeAndAppend:
	lbu	a5,28(a0)
	bne	a5,zero,.L8748
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a1
	mv	a1,a2
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s0,a0
	call	sqlite3StrAccumEnlarge.part.0
	mv	s2,a0
	bgt	a0,zero,.L8751
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8751:
	lwu	a5,24(s0)
	ld	a0,8(s0)
	mv	a2,s2
	mv	a1,s1
	add	a0,a0,a5
	call	memcpy@plt
	lw	a0,24(s0)
	addw	a0,a0,s2
	sw	a0,24(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L8748:
	ret
	.size	enlargeAndAppend, .-enlargeAndAppend
	.section	.text.sqlite3_str_append,"ax",@progbits
	.align	1
	.globl	sqlite3_str_append
	.type	sqlite3_str_append, @function
sqlite3_str_append:
	lw	a3,24(a0)
	lw	t1,16(a0)
	mv	a5,a0
	addw	a7,a2,a3
	bleu	t1,a7,.L8755
	bne	a2,zero,.L8756
	ret
.L8756:
	ld	a0,8(a0)
	slli	a3,a3,32
	srli	a3,a3,32
	sw	a7,24(a5)
	add	a0,a0,a3
	tail	memcpy@plt
.L8755:
	tail	enlargeAndAppend
	.size	sqlite3_str_append, .-sqlite3_str_append
	.section	.text.sqlite3_str_appendall,"ax",@progbits
	.align	1
	.globl	sqlite3_str_appendall
	.type	sqlite3_str_appendall, @function
sqlite3_str_appendall:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s0,a1
	mv	s1,a0
	beq	a1,zero,.L8759
	mv	a0,a1
	call	strlen@plt
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	slli	a2,a0,34
	mv	a0,s1
	ld	s1,8(sp)
	srli	a2,a2,34
	addi	sp,sp,32
	tail	sqlite3_str_append@plt
.L8759:
	mv	a1,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	li	a2,0
	addi	sp,sp,32
	tail	sqlite3_str_append@plt
	.size	sqlite3_str_appendall, .-sqlite3_str_appendall
	.section	.rodata.str1.8
	.align	3
.LC45:
	.string	"NULL"
	.align	3
.LC46:
	.string	"(NULL)"
	.align	3
.LC47:
	.string	"%"
	.align	3
.LC49:
	.string	"."
	.section	.text.sqlite3_str_vappendf,"ax",@progbits
	.align	1
	.globl	sqlite3_str_vappendf
	.type	sqlite3_str_vappendf, @function
sqlite3_str_vappendf:
	addi	sp,sp,-240
	sd	s0,224(sp)
	sd	s1,216(sp)
	sd	s5,184(sp)
	sd	ra,232(sp)
	sd	s2,208(sp)
	sd	s3,200(sp)
	sd	s4,192(sp)
	sd	s6,176(sp)
	sd	s7,168(sp)
	sd	s8,160(sp)
	sd	s9,152(sp)
	sd	s10,144(sp)
	sd	s11,136(sp)
	lbu	s2,29(a0)
	sd	zero,0(sp)
	mv	s1,a0
	andi	s2,s2,2
	mv	s0,a1
	mv	s5,a2
	beq	s2,zero,.L8762
	ld	a5,0(a2)
	li	s2,1
	addi	s5,a2,8
	sd	a5,0(sp)
.L8762:
	lbu	a5,0(s0)
	li	s8,0
	beq	a5,zero,.L8761
	lla	s7,.L8770
	li	s11,47
.L8911:
	li	a4,37
	bne	a5,a4,.L9065
	lbu	a5,1(s0)
	addi	s0,s0,1
	beq	a5,zero,.L9066
.L8926:
	li	a6,0
	li	a1,0
	li	t3,0
	li	s3,0
	li	a2,0
	li	s4,0
	li	s10,0
	li	s6,-1
	li	s9,76
	li	t4,42
.L8767:
	addiw	a4,a5,-32
	sext.w	a0,a4
	bgtu	a0,s9,.L8961
	slli	a4,a4,32
	srli	a4,a4,30
	add	a4,a4,s7
	lw	a4,0(a4)
	add	a4,a4,s7
	jr	a4
	.section	.rodata
	.align	2
	.align	2
.L8770:
	.word	.L8780-.L8770
	.word	.L8779-.L8770
	.word	.L8961-.L8770
	.word	.L8778-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8777-.L8770
	.word	.L8776-.L8770
	.word	.L8775-.L8770
	.word	.L8774-.L8770
	.word	.L8773-.L8770
	.word	.L8961-.L8770
	.word	.L8772-.L8770
	.word	.L8771-.L8770
	.word	.L8771-.L8770
	.word	.L8771-.L8770
	.word	.L8771-.L8770
	.word	.L8771-.L8770
	.word	.L8771-.L8770
	.word	.L8771-.L8770
	.word	.L8771-.L8770
	.word	.L8771-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8961-.L8770
	.word	.L8769-.L8770
	.section	.text.sqlite3_str_vappendf
.L8777:
	bne	s2,zero,.L9067
	lw	s10,0(s5)
	addi	s5,s5,8
.L8790:
	blt	s10,zero,.L9068
.L8791:
	lbu	a5,1(s0)
	li	a4,46
	addi	s0,s0,1
	beq	a5,a4,.L8767
	li	a4,108
	beq	a5,a4,.L8767
.L8961:
	li	t6,0
.L8768:
	li	a0,100
	lla	a4,.LANCHOR4-874
	li	s9,0
	li	t4,19
	beq	a0,a5,.L9069
.L8800:
	addiw	s9,s9,1
	beq	s9,t4,.L8761
	lbu	a0,0(a4)
	addi	a4,a4,6
	bne	a0,a5,.L8800
.L9069:
	slli	t4,s9,1
	add	a5,t4,s9
	lla	t5,.LANCHOR4
	slli	a5,a5,1
	add	a5,t5,a5
	lbu	a4,-877(a5)
	li	a5,16
	bgtu	a4,a5,.L8761
	lla	t0,.L8803
	slli	a0,a4,2
	add	a0,a0,t0
	lw	a5,0(a0)
	add	a5,a5,t0
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L8803:
	.word	.L8804-.L8803
	.word	.L8813-.L8803
	.word	.L8813-.L8803
	.word	.L8813-.L8803
	.word	.L8812-.L8803
	.word	.L8811-.L8803
	.word	.L8811-.L8803
	.word	.L8810-.L8803
	.word	.L8809-.L8803
	.word	.L8805-.L8803
	.word	.L8805-.L8803
	.word	.L8808-.L8803
	.word	.L8807-.L8803
	.word	.L8806-.L8803
	.word	.L8805-.L8803
	.word	.L8804-.L8803
	.word	.L8802-.L8803
	.section	.text.sqlite3_str_vappendf
.L8771:
	lbu	a4,1(s0)
	addiw	s10,a5,-48
	mv	t0,s10
	addi	a0,s0,1
	sext.w	a5,a4
	li	t5,57
	bgt	a4,s11,.L8783
	j	.L9070
.L8786:
	addiw	t6,a4,-48
	slliw	a5,t0,2
	lbu	a4,1(a0)
	addw	a5,a5,t0
	slliw	a5,a5,1
	addi	s0,a0,1
	addw	t0,t6,a5
	mv	t6,s0
	sext.w	a5,a4
	ble	a4,s11,.L9071
	mv	a0,s0
.L8783:
	addi	t6,a0,-1
	ble	a5,t5,.L8786
	li	a3,-2147483648
	xori	a3,a3,-1
	li	a4,108
	and	s10,t0,a3
	bne	a5,a4,.L8788
	mv	s0,a0
.L8781:
	lbu	a5,1(t6)
	bne	a5,zero,.L8767
	j	.L8961
.L8769:
	lbu	a5,1(s0)
	li	a4,108
	bne	a5,a4,.L9072
	lbu	a5,2(s0)
	li	t6,2
	addi	s0,s0,2
	j	.L8768
.L8772:
	mv	t6,s0
	li	a1,1
	addi	s0,s0,1
	j	.L8781
.L8773:
	lbu	a5,1(s0)
	bne	a5,t4,.L9073
	bne	s2,zero,.L9074
	lw	s6,0(s5)
	addi	s5,s5,8
.L8797:
	blt	s6,zero,.L9075
.L8798:
	lbu	a5,2(s0)
	addi	s0,s0,2
.L8799:
	li	a4,108
	bne	a5,a4,.L8961
	addi	t6,s0,-1
	j	.L8781
.L8774:
	mv	t6,s0
	li	s4,1
	addi	s0,s0,1
	j	.L8781
.L8778:
	mv	t6,s0
	li	s3,1
	addi	s0,s0,1
	j	.L8781
.L8779:
	mv	t6,s0
	li	t3,1
	addi	s0,s0,1
	j	.L8781
.L8780:
	mv	t6,s0
	li	a2,32
	addi	s0,s0,1
	j	.L8781
.L8775:
	mv	t6,s0
	li	a6,44
	addi	s0,s0,1
	j	.L8781
.L8776:
	mv	t6,s0
	li	a2,43
	addi	s0,s0,1
	j	.L8781
.L8805:
	li	a5,14
	li	t1,34
	beq	a4,a5,.L8885
	li	t1,39
.L8885:
	bne	s2,zero,.L9076
	ld	t6,0(s5)
	addi	s5,s5,8
	beq	t6,zero,.L9077
.L8888:
	mv	a6,t6
	beq	s6,zero,.L9078
.L8922:
	li	a1,0
	li	s9,0
	li	t4,192
	li	a0,128
	j	.L8891
.L8892:
	beq	t3,zero,.L8893
	andi	a5,a5,192
	beq	a5,t4,.L9079
.L8893:
	addiw	s6,s6,-1
	addiw	s9,s9,1
	beq	s6,zero,.L8895
.L8891:
	add	a2,a6,s9
	lbu	a5,0(a2)
	beq	a5,zero,.L8895
	bne	t1,a5,.L8892
	addiw	s6,s6,-1
	addiw	a1,a1,1
	addiw	s9,s9,1
	bne	s6,zero,.L8891
.L8895:
	addw	a1,s9,a1
	addiw	a1,a1,3
	beq	t6,zero,.L8897
	li	a5,10
	beq	a4,a5,.L9080
.L8897:
	li	a5,70
	bgt	a1,a5,.L8914
	ble	s9,zero,.L9081
	li	t6,0
	addi	s8,sp,56
	li	t4,0
.L8900:
	mv	a5,t4
	li	a4,0
	j	.L8903
.L8958:
	addi	a4,a4,1
	sext.w	a1,a4
	mv	a5,a0
	ble	s9,a1,.L9082
.L8903:
	add	a2,a6,a4
	lbu	a1,0(a2)
	add	a2,s8,a5
	addiw	a0,a5,1
	sb	a1,0(a2)
	add	a2,s8,a0
	bne	t1,a1,.L8958
	addi	a4,a4,1
	addiw	a5,a5,2
	sb	t1,0(a2)
	sext.w	a1,a4
	add	a2,s8,a5
	bgt	s9,a1,.L8903
.L9082:
	beq	t4,zero,.L8904
	addiw	a5,a5,1
	mv	a4,a5
.L8901:
	sb	t1,0(a2)
	add	a2,s8,a4
.L8904:
	sb	zero,0(a2)
.L8880:
	bne	t3,zero,.L8877
.L9061:
	subw	s10,s10,a5
.L8849:
	ble	s10,zero,.L8908
	beq	s4,zero,.L9083
	mv	a2,a5
	mv	a1,s8
	mv	a0,s1
	sd	t6,8(sp)
	call	sqlite3_str_append@plt
	li	a2,32
	mv	a1,s10
	mv	a0,s1
	call	sqlite3_str_appendchar@plt
	ld	t6,8(sp)
.L8910:
	beq	t6,zero,.L8852
	ld	a0,0(s1)
	mv	a1,t6
	call	sqlite3DbFreeNN
.L8852:
	lbu	a5,1(s0)
	addi	s0,s0,1
	bne	a5,zero,.L8911
.L8761:
	ld	ra,232(sp)
	ld	s0,224(sp)
	ld	s1,216(sp)
	ld	s2,208(sp)
	ld	s3,200(sp)
	ld	s4,192(sp)
	ld	s5,184(sp)
	ld	s6,176(sp)
	ld	s7,168(sp)
	ld	s8,160(sp)
	ld	s9,152(sp)
	ld	s10,144(sp)
	ld	s11,136(sp)
	addi	sp,sp,240
	jr	ra
.L8813:
	bne	s2,zero,.L9084
	addi	s5,s5,8
	li	t6,0
.L9060:
	li	a5,0
	j	.L8849
.L8804:
	li	a6,0
.L8802:
	add	a5,t4,s9
	slli	a5,a5,1
	add	a5,t5,a5
	lbu	a5,-878(a5)
	andi	a5,a5,1
	beq	a5,zero,.L8819
	bne	s2,zero,.L8817
	addi	a5,s5,8
	mv	a0,a5
	bne	t6,zero,.L8823
	lw	s8,0(s5)
	blt	s8,zero,.L8824
.L9056:
	mv	s5,a5
.L8827:
	snez	a5,s8
	neg	a5,a5
	and	s3,s3,a5
.L8826:
	beq	a1,zero,.L8833
	snez	a5,a2
	subw	a1,s10,a5
	mv	a5,a1
	bge	a1,s6,.L8834
	mv	a5,s6
.L8834:
	sext.w	s6,a5
.L8833:
	li	a5,36
	ble	s6,a5,.L8936
	addi	a1,s6,10
	beq	a6,zero,.L8836
	li	a5,3
	divw	a5,s6,a5
	add	a1,a1,a5
.L8836:
	mv	a0,s1
	sd	t4,40(sp)
	sd	a4,32(sp)
	sd	a6,24(sp)
	sd	a2,16(sp)
	sd	a1,8(sp)
	call	printfTempBuf
	beq	a0,zero,.L8761
	ld	a1,8(sp)
	ld	a4,32(sp)
	mv	t6,a0
	sext.w	t3,a1
	addi	a5,t3,-1
	add	a1,a0,a5
	li	a0,15
	ld	a2,16(sp)
	ld	a6,24(sp)
	ld	t4,40(sp)
	lla	t5,.LANCHOR4
	mv	a5,a1
	beq	a4,a0,.L9085
.L8838:
	add	a4,t4,s9
	slli	a4,a4,1
	add	a4,t5,a4
	lbu	t0,-876(a4)
	lbu	a0,-879(a4)
	add	t0,t5,t0
.L8840:
	remu	a4,s8,a0
	addi	a5,a5,-1
	mv	t3,s8
	add	a4,t0,a4
	lbu	a4,-744(a4)
	divu	s8,s8,a0
	sb	a4,0(a5)
	bgeu	t3,a0,.L8840
	subw	a4,a1,a5
	ble	s6,a4,.L8940
	addiw	s8,s6,-1
	subw	s8,s8,a4
	slli	s8,s8,32
	srli	s8,s8,32
	not	s8,s8
	sext.w	s6,s6
	add	s8,a5,s8
	li	a4,48
.L8842:
	addi	a5,a5,-1
	sb	a4,0(a5)
	bne	a5,s8,.L8842
	mv	a4,s6
	bne	a6,zero,.L9086
.L8843:
	beq	a2,zero,.L8846
	sb	a2,-1(s8)
	addi	s8,s8,-1
.L8846:
	beq	s3,zero,.L8847
	add	a5,t4,s9
	slli	a5,a5,1
	add	a5,t5,a5
	lbu	a2,-875(a5)
	bne	a2,zero,.L9087
.L8847:
	subw	a5,a1,s8
	subw	s10,s10,a5
	j	.L8849
.L8811:
	bne	s2,zero,.L9088
	ld	t6,0(s5)
	addi	s5,s5,8
	beq	t6,zero,.L8945
	li	a5,6
	bne	a4,a5,.L8946
	lw	a5,24(s1)
	bne	a5,zero,.L8949
	lw	a5,20(s1)
	beq	a5,zero,.L8949
	bne	s10,zero,.L8949
	li	a5,-1
	mv	s8,t6
	bne	s6,a5,.L8866
	lbu	a5,28(s1)
	bne	a5,zero,.L8867
	ld	a5,0(s1)
	sd	t6,8(s1)
	beq	a5,zero,.L8868
	ld	a4,400(a5)
	bgtu	a4,t6,.L8868
	ld	a4,408(a5)
	bleu	a4,t6,.L8868
	lhu	a5,364(a5)
.L8869:
	sw	a5,16(s1)
	mv	a0,t6
	sd	t6,8(sp)
	call	strlen@plt
	lbu	a5,29(s1)
	ld	t6,8(sp)
	li	a4,-2147483648
	xori	a4,a4,-1
	and	a4,a0,a4
	ori	a5,a5,4
	mv	a1,t6
	sw	a4,24(s1)
	sb	a5,29(s1)
	li	a2,0
	mv	a0,s1
	call	sqlite3_str_append@plt
	ld	t6,8(sp)
	mv	s8,t6
	j	.L8852
.L8809:
	bne	s2,zero,.L9089
	lw	a5,0(s5)
	li	a4,127
	addi	s5,s5,8
	bleu	a5,a4,.L9090
	srliw	a4,a5,6
	andi	a3,a5,63
	slliw	a4,a4,24
	li	a2,2047
	sraiw	a4,a4,24
	ori	a3,a3,128
	bgtu	a5,a2,.L8859
	addiw	a4,a4,-64
	sb	a4,56(sp)
	sb	a3,57(sp)
	li	a5,2
	addi	s8,sp,56
.L8855:
	li	a4,1
	bgt	s6,a4,.L9091
	bgt	s10,zero,.L8918
.L9098:
	subw	s10,s10,a5
	li	t6,0
	j	.L8849
.L8806:
	add	a5,t4,s9
	slli	a5,a5,1
	add	a5,t5,a5
	lbu	a6,-878(a5)
	andi	a6,a6,1
	beq	a6,zero,.L8816
	li	a6,0
	addi	a5,s5,8
	bne	s2,zero,.L8817
.L8823:
	ld	s8,0(s5)
	mv	s5,a5
.L8821:
	bge	s8,zero,.L8827
	li	a5,-1
	slli	a5,a5,63
	li	a2,45
	beq	s8,a5,.L8826
	mv	a0,s5
.L8824:
	neg	s8,s8
	mv	s5,a0
	li	a2,45
	j	.L8826
.L8807:
	lbu	a5,29(s1)
	andi	a5,a5,1
	beq	a5,zero,.L8761
	lw	s10,8(s5)
	ld	s9,0(s5)
	addi	s5,s5,16
	slli	s6,s10,3
	sub	a5,s6,s10
	slli	a5,a5,4
	add	a5,s9,a5
	ld	a1,16(a5)
	beq	a1,zero,.L8907
	mv	a0,s1
	call	sqlite3_str_appendall@plt
	li	a2,1
	lla	a1,.LC49
	mv	a0,s1
	call	sqlite3_str_append@plt
.L8907:
	sub	a5,s6,s10
	slli	a5,a5,4
	add	a5,s9,a5
	ld	a1,24(a5)
	mv	a0,s1
	call	sqlite3_str_appendall@plt
	li	a2,0
	mv	a1,s8
	mv	a0,s1
	call	sqlite3_str_append@plt
	j	.L8852
.L8808:
	lbu	a5,29(s1)
	andi	a5,a5,1
	beq	a5,zero,.L8761
	ld	a5,0(s5)
	addi	s5,s5,8
	beq	a5,zero,.L8851
	lw	a2,8(a5)
	bne	a2,zero,.L9092
.L8851:
	li	a2,0
	mv	a1,s8
	mv	a0,s1
	call	sqlite3_str_append@plt
	j	.L8852
.L8812:
	bne	s2,zero,.L8851
	ld	a5,0(s5)
	lw	a4,24(s1)
	li	a2,0
	mv	a1,s8
	sw	a4,0(a5)
	mv	a0,s1
	addi	s5,s5,8
	call	sqlite3_str_append@plt
	j	.L8852
.L8810:
	li	a5,37
	sb	a5,56(sp)
	addiw	s10,s10,-1
	li	t6,0
	li	a5,1
	addi	s8,sp,56
	j	.L8849
.L9065:
	mv	s6,s0
	j	.L8765
.L9093:
	beq	a5,a4,.L8764
.L8765:
	lbu	a5,1(s6)
	addi	s6,s6,1
	bne	a5,zero,.L9093
.L8764:
	subw	a2,s6,s0
	mv	a1,s0
	mv	a0,s1
	call	sqlite3_str_append@plt
	lbu	a5,0(s6)
	beq	a5,zero,.L8761
	mv	s8,s0
	mv	s0,s6
	lbu	a5,1(s0)
	addi	s0,s0,1
	bne	a5,zero,.L8926
.L9066:
	li	a2,1
	lla	a1,.LC47
	mv	a0,s1
	call	sqlite3_str_append@plt
	j	.L8761
.L9071:
	li	a3,-2147483648
	xori	a3,a3,-1
	li	a4,46
	and	s10,t0,a3
	bne	a5,a4,.L8961
.L8785:
	mv	s0,t6
	mv	t6,a0
	j	.L8781
.L9073:
	addiw	a0,a5,-48
	li	t6,9
	addi	s0,s0,1
	li	a4,0
	li	t5,9
	li	s6,0
	bgtu	a0,t6,.L8799
.L8794:
	lbu	a0,1(s0)
	slliw	s6,a4,2
	addw	s6,s6,a4
	slliw	s6,s6,1
	addw	a5,s6,a5
	addiw	t6,a0,-48
	addiw	a4,a5,-48
	addi	s0,s0,1
	sext.w	a5,a0
	bleu	t6,t5,.L8794
	li	a3,-2147483648
	xori	a3,a3,-1
	and	s6,a4,a3
	j	.L8799
.L9068:
	li	a5,-2147483648
	beq	s10,a5,.L8930
	negw	s10,s10
	li	s4,1
	j	.L8791
.L9067:
	ld	a0,0(sp)
	sd	a6,32(sp)
	sd	a1,24(sp)
	sd	t3,16(sp)
	sd	a2,8(sp)
	call	getIntArg
	ld	a2,8(sp)
	ld	t3,16(sp)
	ld	a1,24(sp)
	ld	a6,32(sp)
	sext.w	s10,a0
	li	t4,42
	j	.L8790
.L9072:
	addi	s0,s0,1
	li	t6,1
	j	.L8768
.L9083:
	mv	a1,s10
	mv	a0,s1
	li	a2,32
	sd	t6,16(sp)
	sd	a5,8(sp)
	call	sqlite3_str_appendchar@plt
	ld	a5,8(sp)
	mv	a1,s8
	mv	a0,s1
	mv	a2,a5
	call	sqlite3_str_append@plt
	ld	t6,16(sp)
	j	.L8910
.L9075:
	li	a5,-2147483648
	beq	s6,a5,.L8932
	negw	s6,s6
	j	.L8798
.L9074:
	ld	a0,0(sp)
	sd	a6,32(sp)
	sd	a1,24(sp)
	sd	t3,16(sp)
	sd	a2,8(sp)
	call	getIntArg
	ld	a2,8(sp)
	ld	t3,16(sp)
	ld	a1,24(sp)
	ld	a6,32(sp)
	sext.w	s6,a0
	li	t4,42
	j	.L8797
.L8930:
	li	s4,1
	li	s10,0
	j	.L8791
.L8819:
	bne	s2,zero,.L8828
	addi	a5,s5,8
	bne	t6,zero,.L8832
	lwu	s8,0(s5)
	li	a2,0
	j	.L9056
.L9086:
	li	a5,3
	addiw	a4,a4,-1
	divw	t3,a4,a5
	remw	a4,a4,a5
	sub	s8,s8,t3
	addiw	a5,a4,1
	beq	t3,zero,.L8843
	li	a4,0
.L8845:
	addw	a0,t3,a4
	add	a0,s8,a0
	lbu	t0,0(a0)
	add	a0,s8,a4
	addiw	a5,a5,-1
	sb	t0,0(a0)
	addiw	a0,a4,1
	bne	a5,zero,.L8844
	add	a0,s8,a0
	sb	a6,0(a0)
	addiw	t3,t3,-1
	addiw	a0,a4,2
	beq	t3,zero,.L8843
	li	a5,3
.L8844:
	mv	a4,a0
	j	.L8845
.L8816:
	bne	s2,zero,.L8828
	mv	a6,s2
	addi	a5,s5,8
.L8832:
	ld	s8,0(s5)
	li	a2,0
	mv	s5,a5
	j	.L8827
.L8828:
	ld	a0,0(sp)
	sd	t4,32(sp)
	sd	a4,24(sp)
	sd	a6,16(sp)
	sd	a1,8(sp)
	call	getIntArg
	ld	a1,8(sp)
	ld	a6,16(sp)
	ld	a4,24(sp)
	ld	t4,32(sp)
	mv	s8,a0
	li	a2,0
	lla	t5,.LANCHOR4
	j	.L8827
.L8817:
	ld	a0,0(sp)
	sd	t4,40(sp)
	sd	a4,32(sp)
	sd	a6,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	call	getIntArg
	ld	a2,8(sp)
	ld	a1,16(sp)
	ld	a6,24(sp)
	ld	a4,32(sp)
	ld	t4,40(sp)
	mv	s8,a0
	lla	t5,.LANCHOR4
	j	.L8821
.L8936:
	li	a5,69
	addi	a0,sp,56
	add	a1,a0,a5
	li	a0,15
	li	t6,0
	mv	a5,a1
	bne	a4,a0,.L8838
.L9085:
	li	a4,10
	remu	a5,s8,a4
	li	a0,3
	bgtu	a5,a0,.L8939
	divu	a0,s8,a4
	li	t3,1
	remu	a4,a0,a4
	beq	a4,t3,.L8939
	slliw	a4,a5,1
	addiw	a4,a4,1
	slli	a5,a5,1
	add	a4,t5,a4
	add	a5,t5,a5
	lbu	a0,-760(a4)
	lbu	a4,-760(a5)
	j	.L8839
.L8939:
	li	a4,116
	li	a0,104
.L8839:
	sb	a0,-1(a1)
	addi	a5,a1,-2
	sb	a4,-2(a1)
	j	.L8838
.L8870:
	addiw	a2,s6,-1
	mv	a5,s8
	li	a6,191
	li	a1,128
	li	a0,-1
	beq	s6,zero,.L9094
.L8872:
	lbu	a4,0(a5)
	beq	a4,zero,.L9057
	addi	a3,a5,1
	bgtu	a4,a6,.L9095
.L8954:
	mv	a5,a3
.L8874:
	addiw	a2,a2,-1
	bne	a2,a0,.L8872
.L9057:
	subw	a5,a5,s8
.L8877:
	bne	s10,zero,.L8881
.L9101:
	negw	s10,a5
	j	.L8849
.L8932:
	li	s6,-1
	j	.L8798
.L9079:
	lbu	a5,1(a2)
	andi	a5,a5,192
	bne	a5,a0,.L8893
.L8894:
	addiw	s9,s9,1
	add	a5,a6,s9
	lbu	a5,1(a5)
	andi	a5,a5,192
	beq	a5,a0,.L8894
	j	.L8893
.L9070:
	li	a4,46
	beq	a5,a4,.L9096
.L8788:
	mv	s0,a0
	li	t6,0
	j	.L8768
.L9087:
	add	t5,t5,a2
	lbu	a4,-704(t5)
	lla	a5,.LANCHOR4-704
	add	a5,a5,a2
	beq	a4,zero,.L8847
.L8848:
	sb	a4,-1(s8)
	lbu	a4,1(a5)
	addi	a5,a5,1
	addi	s8,s8,-1
	bne	a4,zero,.L8848
	j	.L8847
.L8914:
	mv	a0,s1
	sd	a6,24(sp)
	sd	t1,16(sp)
	sd	t3,8(sp)
	call	printfTempBuf
	ld	t3,8(sp)
	ld	t1,16(sp)
	ld	a6,24(sp)
	mv	s8,a0
	beq	a0,zero,.L8761
	mv	t6,a0
	li	t4,0
	mv	a2,a0
	li	a5,0
	bgt	s9,zero,.L8900
	sb	zero,0(a2)
	j	.L8880
.L9096:
	mv	a0,s0
	addi	t6,s0,1
	j	.L8785
.L9091:
	subw	a1,s10,s6
	addiw	s10,a1,1
	addiw	s6,s6,-1
	ble	s10,a4,.L8863
	beq	s4,zero,.L9097
.L8863:
	mv	a2,a5
	mv	a1,s8
	mv	a0,s1
	sd	a5,8(sp)
	addiw	s6,s6,-1
	call	sqlite3_str_append@plt
	ld	a5,8(sp)
	bne	s6,zero,.L8863
	ble	s10,zero,.L9098
.L8918:
	addiw	a4,a5,-1
	li	t6,0
	j	.L8882
.L9090:
	sb	a5,56(sp)
	addi	s8,sp,56
	li	a5,1
	j	.L8855
.L9089:
	ld	a0,0(sp)
	call	getTextArg
	beq	a0,zero,.L8854
	lbu	a5,0(a0)
	li	a4,192
	sb	a5,56(sp)
	andi	a5,a5,192
	beq	a5,a4,.L9099
	li	a5,1
	addi	s8,sp,56
	j	.L8855
.L9088:
	ld	a0,0(sp)
	sd	t3,8(sp)
	call	getTextArg
	ld	t3,8(sp)
	mv	s8,a0
	li	t6,0
	beq	a0,zero,.L8945
.L8865:
	li	a5,-1
	beq	s6,a5,.L8867
.L8866:
	bne	t3,zero,.L8870
	mv	a4,s8
	li	a5,0
	bne	s6,zero,.L8878
	j	.L9060
.L8879:
	addiw	a5,a5,1
	addi	a4,a4,1
	beq	s6,a5,.L9061
.L8878:
	lbu	a3,0(a4)
	bne	a3,zero,.L8879
	subw	s10,s10,a5
	j	.L8849
.L8867:
	mv	a0,s8
	sd	t6,16(sp)
	sd	t3,8(sp)
	call	strlen@plt
	ld	t3,8(sp)
	li	a5,-2147483648
	xori	a5,a5,-1
	ld	t6,16(sp)
	and	a5,a0,a5
	beq	t3,zero,.L9061
	j	.L8877
.L9076:
	ld	a0,0(sp)
	sd	a4,24(sp)
	sd	t1,16(sp)
	sd	t3,8(sp)
	call	getTextArg
	mv	t6,a0
	ld	t3,8(sp)
	ld	t1,16(sp)
	ld	a4,24(sp)
	bne	t6,zero,.L8888
.L9077:
	li	a5,10
	lla	a6,.LC45
	beq	a4,a5,.L8889
	lla	a6,.LC46
.L8889:
	addi	a2,sp,56
	li	a5,0
	mv	s8,a2
	bne	s6,zero,.L8922
	sb	zero,0(a2)
	j	.L8880
.L9084:
	ld	a3,0(sp)
	li	t6,0
	lw	a5,4(a3)
	lw	a4,0(a3)
	ble	a4,a5,.L9060
	ld	a4,8(a3)
	addiw	a2,a5,1
	slli	a5,a5,3
	add	a5,a4,a5
	sw	a2,4(a3)
	ld	a0,0(a5)
	li	t6,0
	li	a5,0
	sd	t6,16(sp)
	sd	a5,8(sp)
	call	sqlite3_value_double@plt
	ld	a5,8(sp)
	ld	t6,16(sp)
	j	.L8849
.L9092:
	ld	a1,0(a5)
	mv	a0,s1
	call	sqlite3_str_append@plt
	li	a2,0
	mv	a1,s8
	mv	a0,s1
	call	sqlite3_str_append@plt
	j	.L8852
.L8881:
	addiw	a4,a5,-1
	blt	a4,zero,.L9061
.L8882:
	add	a2,s8,a4
	lbu	a2,0(a2)
	li	a0,128
	li	a1,-1
	andi	a2,a2,192
	addiw	a4,a4,-1
	beq	a2,a0,.L9100
.L8883:
	beq	a4,a1,.L9061
.L9064:
	add	a2,s8,a4
	lbu	a2,0(a2)
	addiw	a4,a4,-1
	andi	a2,a2,192
	bne	a2,a0,.L8883
.L9100:
	addiw	s10,s10,1
	bne	a4,a1,.L9064
	j	.L9061
.L8946:
	mv	s8,t6
	li	t6,0
	j	.L8865
.L8949:
	mv	s8,t6
	j	.L8865
.L8940:
	mv	s8,a5
	beq	a6,zero,.L8843
	j	.L9086
.L8945:
	lla	s8,.LC12
	j	.L8865
.L9095:
	lbu	a5,1(a5)
	andi	a5,a5,192
	bne	a5,a1,.L8954
	mv	a5,a3
.L8875:
	lbu	a4,1(a5)
	addi	a5,a5,1
	andi	a4,a4,192
	beq	a4,a1,.L8875
	j	.L8874
.L9080:
	li	a5,70
	bgt	a1,a5,.L8915
	li	t6,0
	addi	s8,sp,56
.L8916:
	sb	t1,0(s8)
	li	t4,1
	bgt	s9,zero,.L8900
.L8921:
	addi	a2,s8,1
	li	a4,2
	li	a5,2
	j	.L8901
.L8859:
	srliw	a2,a5,12
	andi	a4,a4,63
	slliw	a2,a2,24
	li	a1,65536
	sraiw	a2,a2,24
	ori	a4,a4,128
	bgeu	a5,a1,.L8860
	addiw	a2,a2,-32
	sb	a2,56(sp)
	sb	a4,57(sp)
	sb	a3,58(sp)
	li	a5,3
	addi	s8,sp,56
	j	.L8855
.L8915:
	mv	a0,s1
	sd	a6,24(sp)
	sd	t1,16(sp)
	sd	t3,8(sp)
	call	printfTempBuf
	mv	s8,a0
	beq	a0,zero,.L8761
	ld	a6,24(sp)
	ld	t1,16(sp)
	ld	t3,8(sp)
	mv	t6,a0
	j	.L8916
.L8854:
	sb	zero,56(sp)
	li	a5,1
	addi	s8,sp,56
	j	.L8855
.L8860:
	srliw	a5,a5,18
	andi	a5,a5,7
	andi	a2,a2,63
	addiw	a5,a5,-16
	addiw	a2,a2,-128
	sb	a5,56(sp)
	sb	a2,57(sp)
	sb	a4,58(sp)
	sb	a3,59(sp)
	li	a5,4
	addi	s8,sp,56
	j	.L8855
.L9097:
	li	a2,32
	mv	a0,s1
	sd	a5,8(sp)
	call	sqlite3_str_appendchar@plt
	ld	a5,8(sp)
	li	s10,0
	j	.L8863
.L9099:
	addi	s8,sp,56
	mv	a2,s8
	li	a4,1
	li	t1,128
	li	a6,4
.L8856:
	add	a5,a0,a4
	lbu	a1,0(a5)
	sext.w	a5,a4
	andi	t3,a1,192
	bne	t3,t1,.L8855
	sb	a1,1(a2)
	addi	a4,a4,1
	addi	a2,a2,1
	bne	a4,a6,.L8856
	li	a5,4
	j	.L8855
.L9078:
	li	a5,10
	beq	a4,a5,.L8919
	addi	a2,sp,56
	li	a5,0
	li	t6,0
	mv	s8,a2
	sb	zero,0(a2)
	j	.L8880
.L9094:
	li	a5,0
	beq	s10,zero,.L9101
	j	.L8881
.L8919:
	sb	t1,56(sp)
	li	t6,0
	addi	s8,sp,56
	j	.L8921
.L8868:
	mv	a0,t6
	ld	a5,.LANCHOR1+72
	sd	t6,8(sp)
	jalr	a5
	ld	t6,8(sp)
	mv	a5,a0
	j	.L8869
.L9081:
	addi	a2,sp,56
	li	t6,0
	mv	s8,a2
	li	a5,0
	sb	zero,0(a2)
	j	.L8880
.L8908:
	mv	a2,a5
	mv	a1,s8
	mv	a0,s1
	sd	t6,8(sp)
	call	sqlite3_str_append@plt
	ld	t6,8(sp)
	j	.L8910
	.size	sqlite3_str_vappendf, .-sqlite3_str_vappendf
	.section	.text.sqlite3_vsnprintf,"ax",@progbits
	.align	1
	.globl	sqlite3_vsnprintf
	.type	sqlite3_vsnprintf, @function
sqlite3_vsnprintf:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	mv	s0,a1
	ble	a0,zero,.L9103
	mv	a5,a0
	mv	a1,a2
	mv	a0,sp
	mv	a2,a3
	sw	a5,16(sp)
	sd	s0,8(sp)
	sd	zero,0(sp)
	sw	zero,20(sp)
	sw	zero,24(sp)
	sh	zero,28(sp)
	call	sqlite3_str_vappendf@plt
	lwu	a5,24(sp)
	add	a5,s0,a5
	sb	zero,0(a5)
.L9103:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_vsnprintf, .-sqlite3_vsnprintf
	.section	.text.sqlite3_snprintf,"ax",@progbits
	.align	1
	.globl	sqlite3_snprintf
	.type	sqlite3_snprintf, @function
sqlite3_snprintf:
	addi	sp,sp,-80
	addi	t1,sp,40
	sd	a3,40(sp)
	mv	a3,t1
	sd	ra,24(sp)
	sd	a4,48(sp)
	sd	a5,56(sp)
	sd	a6,64(sp)
	sd	a7,72(sp)
	sd	t1,8(sp)
	call	sqlite3_vsnprintf@plt
	ld	ra,24(sp)
	addi	sp,sp,80
	jr	ra
	.size	sqlite3_snprintf, .-sqlite3_snprintf
	.section	.rodata.str1.8
	.align	3
.LC50:
	.string	"%s"
	.section	.text.memdbFullPathname,"ax",@progbits
	.align	1
	.type	memdbFullPathname, @function
memdbFullPathname:
	mv	a5,a3
	addi	sp,sp,-16
	mv	a0,a2
	mv	a3,a1
	lla	a2,.LC50
	mv	a1,a5
	sd	ra,8(sp)
	call	sqlite3_snprintf@plt
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	memdbFullPathname, .-memdbFullPathname
	.section	.text.sqlite3_log,"ax",@progbits
	.align	1
	.globl	sqlite3_log
	.type	sqlite3_log, @function
sqlite3_log:
	addi	sp,sp,-352
	sd	s1,280(sp)
	sd	ra,296(sp)
	sd	s0,288(sp)
	sd	s2,272(sp)
	sd	s3,264(sp)
	lla	s1,.LANCHOR1
	ld	t1,392(s1)
	sd	a2,304(sp)
	sd	a3,312(sp)
	sd	a4,320(sp)
	sd	a5,328(sp)
	sd	a6,336(sp)
	sd	a7,344(sp)
	beq	t1,zero,.L9109
	addi	s2,sp,8
	addi	a5,sp,40
	addi	a2,sp,304
	mv	s0,a0
	sd	a5,16(sp)
	mv	a0,s2
	li	a5,210
	sd	a2,0(sp)
	sd	a5,24(sp)
	sd	zero,8(sp)
	sw	zero,32(sp)
	sh	zero,36(sp)
	call	sqlite3_str_vappendf@plt
	ld	s3,400(s1)
	mv	a0,s2
	ld	s1,392(s1)
	call	sqlite3StrAccumFinish
	mv	a2,a0
	mv	a1,s0
	mv	a0,s3
	jalr	s1
.L9109:
	ld	ra,296(sp)
	ld	s0,288(sp)
	ld	s1,280(sp)
	ld	s2,272(sp)
	ld	s3,264(sp)
	addi	sp,sp,352
	jr	ra
	.size	sqlite3_log, .-sqlite3_log
	.section	.rodata.str1.8
	.align	3
.LC51:
	.string	"misuse"
	.align	3
.LC52:
	.string	"%s at line %d of [%.10s]"
	.section	.text.sqlite3MisuseError,"ax",@progbits
	.align	1
	.type	sqlite3MisuseError, @function
sqlite3MisuseError:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	call	sqlite3_sourceid@plt
	addi	a4,a0,20
	mv	a3,s0
	li	a0,21
	lla	a2,.LC51
	lla	a1,.LC52
	call	sqlite3_log@plt
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,21
	addi	sp,sp,16
	jr	ra
	.size	sqlite3MisuseError, .-sqlite3MisuseError
	.section	.text.sqlite3_status64,"ax",@progbits
	.align	1
	.globl	sqlite3_status64
	.type	sqlite3_status64, @function
sqlite3_status64:
	li	a5,9
	bgtu	a0,a5,.L9122
	lla	a5,.LANCHOR0
	slli	a4,a0,3
	addi	a0,a0,10
	add	a4,a5,a4
	slli	a0,a0,3
	ld	a4,384(a4)
	add	a0,a5,a0
	ld	a5,384(a0)
	sd	a4,0(a1)
	sd	a5,0(a2)
	beq	a3,zero,.L9119
	sd	a4,384(a0)
.L9119:
	li	a0,0
	ret
.L9122:
	li	a0,20480
	addi	a0,a0,268
	tail	sqlite3MisuseError
	.size	sqlite3_status64, .-sqlite3_status64
	.section	.text.sqlite3_status,"ax",@progbits
	.align	1
	.globl	sqlite3_status
	.type	sqlite3_status, @function
sqlite3_status:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	mv	s0,a2
	mv	s1,a1
	addi	a2,sp,8
	mv	a1,sp
	sd	ra,40(sp)
	sd	zero,0(sp)
	sd	zero,8(sp)
	call	sqlite3_status64@plt
	bne	a0,zero,.L9124
	ld	a5,0(sp)
	sw	a5,0(s1)
	ld	a5,8(sp)
	sw	a5,0(s0)
.L9124:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_status, .-sqlite3_status
	.section	.text.sqlite3_memory_used,"ax",@progbits
	.align	1
	.globl	sqlite3_memory_used
	.type	sqlite3_memory_used, @function
sqlite3_memory_used:
	addi	sp,sp,-32
	addi	a2,sp,8
	mv	a1,sp
	li	a3,0
	li	a0,0
	sd	ra,24(sp)
	call	sqlite3_status64@plt
	ld	ra,24(sp)
	ld	a0,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_memory_used, .-sqlite3_memory_used
	.section	.text.sqlite3_memory_highwater,"ax",@progbits
	.align	1
	.globl	sqlite3_memory_highwater
	.type	sqlite3_memory_highwater, @function
sqlite3_memory_highwater:
	addi	sp,sp,-32
	mv	a3,a0
	addi	a2,sp,8
	mv	a1,sp
	li	a0,0
	sd	ra,24(sp)
	call	sqlite3_status64@plt
	ld	ra,24(sp)
	ld	a0,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_memory_highwater, .-sqlite3_memory_highwater
	.section	.text.createModule,"ax",@progbits
	.align	1
	.type	createModule, @function
createModule:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s4,0(sp)
	mv	s0,a0
	mv	s4,a2
	addi	a0,a0,440
	li	a2,0
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s3,a1
	mv	s2,a3
	mv	s1,a4
	call	findElementWithHash
	ld	a5,16(a0)
	beq	a5,zero,.L9131
	li	a0,135168
	addi	a0,a0,-215
	call	sqlite3MisuseError
	lbu	a5,97(s0)
	bne	a5,zero,.L9134
	li	a5,4096
	addi	a5,a5,-1014
	beq	a0,a5,.L9134
	lw	s0,84(s0)
	and	a0,a0,s0
	sext.w	s0,a0
.L9133:
	beq	s0,zero,.L9136
	beq	s1,zero,.L9136
	mv	a0,s2
	jalr	s1
.L9136:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L9134:
	mv	a0,s0
	call	apiOomError
	mv	s0,a0
	j	.L9133
.L9131:
	mv	a4,s1
	mv	a3,s2
	mv	a2,s4
	mv	a1,s3
	mv	a0,s0
	call	sqlite3VtabCreateModule
	lbu	a5,97(s0)
	bne	a5,zero,.L9134
	lw	s0,84(s0)
	li	a0,0
	and	a0,a0,s0
	sext.w	s0,a0
	j	.L9133
	.size	createModule, .-createModule
	.section	.text.sqlite3_create_module,"ax",@progbits
	.align	1
	.globl	sqlite3_create_module
	.type	sqlite3_create_module, @function
sqlite3_create_module:
	li	a4,0
	tail	createModule
	.size	sqlite3_create_module, .-sqlite3_create_module
	.section	.text.sqlite3_create_module_v2,"ax",@progbits
	.align	1
	.globl	sqlite3_create_module_v2
	.type	sqlite3_create_module_v2, @function
sqlite3_create_module_v2:
	tail	createModule
	.size	sqlite3_create_module_v2, .-sqlite3_create_module_v2
	.section	.text.sqlite3_vtab_config,"ax",@progbits
	.align	1
	.globl	sqlite3_vtab_config
	.type	sqlite3_vtab_config, @function
sqlite3_vtab_config:
	addi	sp,sp,-96
	addi	t1,sp,48
	sd	s1,24(sp)
	sd	a5,72(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	a2,48(sp)
	sd	a3,56(sp)
	sd	a4,64(sp)
	sd	a6,80(sp)
	sd	a7,88(sp)
	sd	t1,8(sp)
	li	a5,1
	mv	s1,a0
	bne	a1,a5,.L9147
	ld	a5,464(a0)
	beq	a5,zero,.L9155
	ld	a5,0(a5)
	lw	a4,0(t1)
	li	s0,0
	sb	a4,28(a5)
.L9150:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,96
	jr	ra
.L9147:
	li	a0,135168
	addi	a0,a0,945
	call	sqlite3MisuseError
	mv	s0,a0
	beq	s0,zero,.L9150
.L9156:
	sw	s0,80(s1)
	mv	a0,s1
	mv	a1,s0
	call	sqlite3ErrorFinish
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,96
	jr	ra
.L9155:
	li	a0,135168
	addi	a0,a0,937
	call	sqlite3MisuseError
	mv	s0,a0
	beq	s0,zero,.L9150
	j	.L9156
	.size	sqlite3_vtab_config, .-sqlite3_vtab_config
	.section	.rodata.str1.8
	.align	3
.LC53:
	.string	"database corruption"
	.section	.text.sqlite3CorruptError,"ax",@progbits
	.align	1
	.type	sqlite3CorruptError, @function
sqlite3CorruptError:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	call	sqlite3_sourceid@plt
	addi	a4,a0,20
	mv	a3,s0
	li	a0,11
	lla	a2,.LC53
	lla	a1,.LC52
	call	sqlite3_log@plt
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,11
	addi	sp,sp,16
	jr	ra
	.size	sqlite3CorruptError, .-sqlite3CorruptError
	.section	.text.decodeFlags,"ax",@progbits
	.align	1
	.type	decodeFlags, @function
decodeFlags:
	sraiw	a5,a1,3
	li	a2,1
	subw	a4,a2,a5
	slliw	a4,a4,2
	sb	a4,10(a0)
	srai	a3,a1,3
	lla	a4,cellSizePtr
	mv	a5,a0
	sb	a3,8(a0)
	sd	a4,120(a0)
	andi	a1,a1,-9
	li	a0,5
	ld	a4,72(a5)
	beq	a1,a0,.L9165
	li	a3,2
	bne	a1,a3,.L9164
	lla	a3,btreeParseCellPtrIndex
	sh	zero,2(a5)
	sd	a3,128(a5)
	lhu	a3,40(a4)
	li	a0,0
	sh	a3,14(a5)
	lhu	a3,42(a4)
	sh	a3,16(a5)
	lbu	a4,37(a4)
	sb	a4,11(a5)
	ret
.L9164:
	li	a0,65536
	addi	a0,a0,-409
	tail	sqlite3CorruptError
.L9165:
	li	a1,1
	sb	a1,2(a5)
	bne	a3,zero,.L9166
	lla	a3,cellSizePtrNoPayload
	sd	a3,120(a5)
	lla	a3,btreeParseCellPtrNoPayload
	sb	zero,3(a5)
	sd	a3,128(a5)
.L9162:
	lhu	a3,44(a4)
	li	a0,0
	sh	a3,14(a5)
	lhu	a3,46(a4)
	sh	a3,16(a5)
	lbu	a4,37(a4)
	sb	a4,11(a5)
	ret
.L9166:
	lla	a3,btreeParseCellPtr
	sb	a2,3(a5)
	sd	a3,128(a5)
	j	.L9162
	.size	decodeFlags, .-decodeFlags
	.section	.text.zeroPage,"ax",@progbits
	.align	1
	.type	zeroPage, @function
zeroPage:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s5,8(sp)
	ld	s3,72(a0)
	ld	s2,80(a0)
	lbu	s1,9(a0)
	lhu	a5,38(s3)
	mv	s0,a0
	mv	s4,a1
	andi	a5,a5,12
	add	a3,s2,s1
	bne	a5,zero,.L9176
.L9168:
	slliw	a4,s1,16
	sb	s4,0(a3)
	andi	a5,s4,8
	sraiw	a4,a4,16
	li	a2,12
	beq	a5,zero,.L9169
	li	a2,8
.L9169:
	addi	a5,s1,1
	add	a5,s2,a5
	sb	zero,0(a5)
	sb	zero,1(a5)
	sb	zero,2(a5)
	sb	zero,3(a5)
	sb	zero,7(a3)
	lw	a5,52(s3)
	add	s5,a4,a2
	mv	a1,s4
	srliw	a5,a5,8
	sb	a5,5(a3)
	lw	a5,52(s3)
	mv	a0,s0
	sb	a5,6(a3)
	lw	a5,52(s3)
	subw	a5,a5,s5
	slliw	a5,a5,16
	srliw	a5,a5,16
	sw	a5,20(s0)
	call	decodeFlags
	sh	s5,18(s0)
	lwu	a5,52(s3)
	lbu	a3,10(s0)
	add	a4,s2,s5
	add	a5,s2,a5
	add	s2,s2,a3
	sd	a5,88(s0)
	sd	a4,96(s0)
	sd	s2,104(s0)
	sb	zero,12(s0)
	lw	a5,48(s3)
	sh	zero,24(s0)
	addiw	a5,a5,-1
	sh	a5,26(s0)
	li	a5,1
	sb	a5,0(s0)
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L9176:
	lw	a2,52(s3)
	mv	a0,a3
	li	a1,0
	subw	a2,a2,s1
	slli	a2,a2,32
	srli	a2,a2,32
	call	memset@plt
	mv	a3,a0
	j	.L9168
	.size	zeroPage, .-zeroPage
	.section	.text.btreeCellSizeCheck,"ax",@progbits
	.align	1
	.type	btreeCellSizeCheck, @function
btreeCellSizeCheck:
	addi	sp,sp,-80
	sd	s2,48(sp)
	sd	s6,16(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s7,8(sp)
	lhu	a5,24(a0)
	lhu	s1,18(a0)
	ld	a3,72(a0)
	lbu	a4,8(a0)
	slliw	s2,a5,1
	lw	s4,52(a3)
	ld	s3,80(a0)
	mv	s6,a0
	addw	s2,s2,s1
	beq	a4,zero,.L9178
	addiw	s5,s4,-4
.L9179:
	beq	a5,zero,.L9185
	add	s1,s3,s1
	li	s7,0
	j	.L9184
.L9193:
	blt	s5,s0,.L9181
	ld	a5,120(s6)
	addi	s1,s1,2
	jalr	a5
	addw	s0,a0,s0
	bgt	s0,s4,.L9192
	lhu	a5,24(s6)
	ble	a5,s7,.L9185
.L9184:
	lbu	s0,0(s1)
	lbu	a5,1(s1)
	mv	a0,s6
	slliw	s0,s0,8
	or	s0,s0,a5
	sext.w	s0,s0
	add	a1,s3,s0
	addiw	s7,s7,1
	ble	s2,s0,.L9193
.L9181:
	li	a0,65536
	addi	a0,a0,-296
.L9191:
	ld	s0,64(sp)
	ld	ra,72(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	tail	sqlite3CorruptError
.L9178:
	addiw	s5,s4,-5
	j	.L9179
.L9185:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	li	a0,0
	addi	sp,sp,80
	jr	ra
.L9192:
	li	a0,65536
	addi	a0,a0,-291
	j	.L9191
	.size	btreeCellSizeCheck, .-btreeCellSizeCheck
	.section	.text.btreeInitPage,"ax",@progbits
	.align	1
	.type	btreeInitPage, @function
btreeInitPage:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	lbu	a5,9(a0)
	ld	s1,80(a0)
	ld	s2,72(a0)
	mv	s0,a0
	add	s1,s1,a5
	lbu	a1,0(s1)
	call	decodeFlags
	bne	a0,zero,.L9200
	lbu	a3,10(s0)
	lbu	a5,9(s0)
	lw	a2,48(s2)
	addi	a4,a3,8
	addw	a5,a5,a3
	addiw	a5,a5,8
	add	a4,s1,a4
	addiw	a2,a2,-1
	sh	a5,18(s0)
	sh	a2,26(s0)
	sb	zero,12(s0)
	sd	a4,96(s0)
	lwu	a4,52(s2)
	ld	a5,80(s0)
	add	a4,a5,a4
	add	a5,a5,a3
	sd	a4,88(s0)
	sd	a5,104(s0)
	lbu	a5,3(s1)
	lbu	a4,4(s1)
	li	a3,6
	slliw	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,48
	srli	a5,a5,48
	sh	a5,24(s0)
	lw	a4,48(s2)
	addiw	a4,a4,-8
	divuw	a4,a4,a3
	bltu	a4,a5,.L9201
	li	a5,-1
	sw	a5,20(s0)
	li	a5,1
	sb	a5,0(s0)
	ld	a5,8(s2)
	ld	a5,48(a5)
	slli	a4,a5,42
	blt	a4,zero,.L9202
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L9200:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,65536
	addi	a0,a0,-259
	addi	sp,sp,32
	tail	sqlite3CorruptError
.L9201:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,65536
	addi	a0,a0,-245
	addi	sp,sp,32
	tail	sqlite3CorruptError
.L9202:
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	btreeCellSizeCheck
	.size	btreeInitPage, .-btreeInitPage
	.section	.text.pageReinit,"ax",@progbits
	.align	1
	.type	pageReinit, @function
pageReinit:
	ld	a5,16(a0)
	lbu	a4,0(a5)
	beq	a4,zero,.L9203
	sb	zero,0(a5)
	lh	a3,54(a0)
	li	a4,1
	bgt	a3,a4,.L9207
.L9203:
	ret
.L9207:
	mv	a0,a5
	tail	btreeInitPage
	.size	pageReinit, .-pageReinit
	.section	.text.ptrmapGet,"ax",@progbits
	.align	1
	.type	ptrmapGet, @function
ptrmapGet:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	li	a5,1
	mv	s0,a1
	mv	s2,a2
	mv	s3,a3
	li	s4,0
	bleu	a1,a5,.L9209
	lw	a4,52(a0)
	li	a3,5
	addiw	a5,a1,-2
	divuw	a4,a4,a3
	lw	a2,48(a0)
	li	a3,1073741824
	addiw	a4,a4,1
	divuw	a5,a5,a4
	divuw	a3,a3,a2
	mulw	a5,a5,a4
	addiw	a4,a3,1
	addiw	s4,a5,2
	beq	a4,s4,.L9218
.L9209:
	ld	a0,0(a0)
	li	a3,0
	addi	a2,sp,8
	ld	a5,264(a0)
	mv	a1,s4
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L9210
	subw	a1,s0,s4
	ld	a0,8(sp)
	slliw	s0,a1,2
	addw	s0,s0,a1
	addiw	s0,s0,-5
	ld	a5,8(a0)
	blt	s0,zero,.L9219
	add	a4,a5,s0
	lbu	a4,0(a4)
	sb	a4,0(s2)
	beq	s3,zero,.L9212
	addi	s0,s0,1
	add	s0,a5,s0
	lbu	a5,0(s0)
	lbu	a2,3(s0)
	lbu	a3,1(s0)
	lbu	a4,2(s0)
	slliw	a5,a5,24
	or	a5,a5,a2
	slliw	a3,a3,16
	or	a5,a5,a3
	slliw	a4,a4,8
	or	a5,a5,a4
	sw	a5,0(s3)
.L9212:
	call	sqlite3PagerUnrefNotNull
	lbu	a5,0(s2)
	li	a4,4
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	bgtu	a5,a4,.L9220
.L9210:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	mv	a0,s1
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
.L9218:
	addiw	s4,a5,3
	j	.L9209
.L9220:
	li	a0,65536
	addi	a0,a0,-1189
	call	sqlite3CorruptError
	mv	s1,a0
	j	.L9210
.L9219:
	call	sqlite3PagerUnrefNotNull
	li	a0,65536
	addi	a0,a0,-1197
	call	sqlite3CorruptError
	mv	s1,a0
	j	.L9210
	.size	ptrmapGet, .-ptrmapGet
	.section	.text.getOverflowPage,"ax",@progbits
	.align	1
	.type	getOverflowPage, @function
getOverflowPage:
	addi	sp,sp,-80
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s3,40(sp)
	lbu	a5,33(a0)
	sd	zero,8(sp)
	mv	s2,a0
	mv	s5,a1
	mv	s4,a2
	mv	s1,a3
	beq	a5,zero,.L9222
	lw	a5,48(a0)
	li	a7,1073741824
	addiw	s0,a1,1
	divuw	a7,a7,a5
	li	a3,1
	li	a2,5
	addiw	a7,a7,1
.L9223:
	addiw	a4,s0,-2
	li	a6,0
	bleu	s0,a3,.L9224
	lw	a5,52(s2)
	divuw	a5,a5,a2
	addiw	a5,a5,1
	divuw	a4,a4,a5
	mulw	a5,a4,a5
	addiw	a6,a5,2
	beq	a6,a7,.L9252
.L9224:
	beq	s0,a6,.L9225
	bne	s0,a7,.L9253
.L9225:
	addiw	s0,s0,1
	j	.L9223
.L9252:
	addiw	a6,a5,3
	j	.L9224
.L9253:
	lw	a5,60(s2)
	bgeu	a5,s0,.L9254
.L9222:
	seqz	a3,s4
	slli	a3,a3,1
	addi	a2,sp,8
	mv	a1,s5
	mv	a0,s2
	call	btreeGetPage
	mv	s3,a0
	bne	a0,zero,.L9227
	ld	a2,8(sp)
	ld	a4,80(a2)
	lbu	a5,0(a4)
	lbu	a1,3(a4)
	lbu	a3,1(a4)
	lbu	a4,2(a4)
	slliw	a5,a5,24
	or	a5,a5,a1
	slliw	a3,a3,16
	or	a5,a5,a3
	slliw	a4,a4,8
	or	a5,a5,a4
	sw	a5,0(s1)
	beq	s4,zero,.L9233
	sd	a2,0(s4)
.L9243:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	mv	a0,s3
	ld	s3,40(sp)
	addi	sp,sp,80
	jr	ra
.L9227:
	sw	zero,0(s1)
	ld	a5,8(sp)
	beq	s4,zero,.L9236
	sd	a5,0(s4)
.L9237:
	li	a5,101
	bne	s3,a5,.L9243
.L9235:
	li	s3,0
	j	.L9243
.L9254:
	addi	a3,sp,4
	addi	a2,sp,3
	mv	a1,s0
	mv	a0,s2
	call	ptrmapGet
	mv	s3,a0
	bne	a0,zero,.L9227
	lbu	a4,3(sp)
	li	a5,4
	bne	a4,a5,.L9222
	lw	a5,4(sp)
	bne	a5,s5,.L9222
	sw	s0,0(s1)
	ld	a5,8(sp)
	beq	s4,zero,.L9255
	sd	a5,0(s4)
	li	s3,0
	j	.L9243
.L9236:
	beq	a5,zero,.L9237
.L9238:
	ld	a0,112(a5)
	call	sqlite3PagerUnrefNotNull
	j	.L9237
.L9233:
	ld	a0,112(a2)
	call	sqlite3PagerUnrefNotNull
	j	.L9243
.L9255:
	beq	a5,zero,.L9235
	li	s3,101
	j	.L9238
	.size	getOverflowPage, .-getOverflowPage
	.section	.text.btreeGetUnusedPage,"ax",@progbits
	.align	1
	.type	btreeGetUnusedPage, @function
btreeGetUnusedPage:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a2
	call	btreeGetPage
	bne	a0,zero,.L9257
	ld	a5,0(s0)
	li	a3,1
	ld	a4,112(a5)
	lh	a2,54(a4)
	bgt	a2,a3,.L9261
	sb	zero,0(a5)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L9257:
	sd	zero,0(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L9261:
	mv	a0,a4
	call	sqlite3PagerUnrefNotNull
	sd	zero,0(s0)
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a0,65536
	addi	a0,a0,-2
	addi	sp,sp,16
	tail	sqlite3CorruptError
	.size	btreeGetUnusedPage, .-btreeGetUnusedPage
	.section	.text.getAndInitPage,"ax",@progbits
	.align	1
	.type	getAndInitPage, @function
getAndInitPage:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	lw	a5,60(a0)
	mv	s0,a3
	bltu	a5,a1,.L9286
	mv	s2,a0
	ld	a0,0(a0)
	mv	s4,a2
	mv	a3,a4
	ld	a5,264(a0)
	addi	a2,sp,8
	mv	s3,a1
	jalr	a5
	mv	s1,a0
	bne	a0,zero,.L9264
	ld	a5,8(sp)
	ld	a0,16(a5)
	sd	a0,0(s4)
	lbu	a4,0(a0)
	beq	a4,zero,.L9265
.L9271:
	beq	s0,zero,.L9267
	ld	a5,0(s4)
	lhu	a4,24(a5)
	beq	a4,zero,.L9272
	lbu	a4,2(a5)
	lbu	a5,85(s0)
	beq	a4,a5,.L9267
.L9272:
	li	a0,65536
	addi	a0,a0,-68
	call	sqlite3CorruptError
	ld	a5,0(s4)
	mv	s1,a0
	beq	a5,zero,.L9274
.L9273:
	ld	a0,112(a5)
	call	sqlite3PagerUnrefNotNull
.L9264:
	beq	s0,zero,.L9267
.L9274:
	lbu	a5,84(s0)
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	addi	a4,a5,18
	slli	a4,a4,3
	sb	a5,84(s0)
	add	a5,s0,a4
	ld	a5,0(a5)
	sd	a5,136(s0)
.L9267:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	mv	a0,s1
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
.L9265:
	lw	a3,4(a0)
	beq	a3,s3,.L9268
	ld	a2,8(a5)
	li	a3,1
	sd	a5,112(a0)
	sd	a2,80(a0)
	sd	s2,72(a0)
	sw	s3,4(a0)
	bne	s3,a3,.L9269
	li	a4,100
.L9269:
	sb	a4,9(a0)
	ld	a0,0(s4)
.L9268:
	call	btreeInitPage
	beq	a0,zero,.L9271
.L9270:
	ld	a5,0(s4)
	mv	s1,a0
	bne	a5,zero,.L9273
	bne	s0,zero,.L9274
	j	.L9267
.L9286:
	li	a0,65536
	addi	a0,a0,-89
	call	sqlite3CorruptError
	mv	s1,a0
	bne	s0,zero,.L9274
	j	.L9267
	.size	getAndInitPage, .-getAndInitPage
	.section	.text.moveToChild,"ax",@progbits
	.align	1
	.type	moveToChild, @function
moveToChild:
	lb	a5,84(a0)
	li	a4,18
	mv	a3,a0
	bgt	a5,a4,.L9289
	lbu	a2,1(a0)
	lhu	a6,86(a0)
	addi	a4,a5,40
	andi	a2,a2,-7
	slli	a4,a4,1
	sh	zero,70(a0)
	sb	a2,1(a0)
	add	a4,a0,a4
	ld	a0,32(a0)
	sh	a6,8(a4)
	ld	a2,136(a3)
	addi	a4,a5,18
	slli	a4,a4,3
	add	a4,a3,a4
	sd	a2,0(a4)
	lbu	a4,2(a3)
	addiw	a5,a5,1
	sh	zero,86(a3)
	sb	a5,84(a3)
	addi	a2,a3,136
	tail	getAndInitPage
.L9289:
	li	a0,69632
	addi	a0,a0,-1304
	tail	sqlite3CorruptError
	.size	moveToChild, .-moveToChild
	.section	.text.moveToRightmost,"ax",@progbits
	.align	1
	.type	moveToRightmost, @function
moveToRightmost:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	j	.L9291
.L9293:
	lbu	a3,9(a4)
	ld	a5,80(a4)
	addi	a4,a3,8
	add	a5,a5,a4
	lbu	a1,0(a5)
	lbu	a3,3(a5)
	lbu	a4,1(a5)
	lbu	a5,2(a5)
	slliw	a1,a1,24
	or	a1,a1,a3
	slliw	a4,a4,16
	or	a1,a1,a4
	slliw	a5,a5,8
	or	a1,a1,a5
	sh	a2,86(s0)
	sext.w	a1,a1
	call	moveToChild
	bne	a0,zero,.L9292
.L9291:
	ld	a4,136(s0)
	mv	a0,s0
	lbu	a5,8(a4)
	lhu	a2,24(a4)
	beq	a5,zero,.L9293
	addiw	a2,a2,-1
	sh	a2,86(s0)
	li	a0,0
.L9292:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	moveToRightmost, .-moveToRightmost
	.section	.text.moveToLeftmost,"ax",@progbits
	.align	1
	.type	moveToLeftmost, @function
moveToLeftmost:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
.L9296:
	ld	a4,136(s0)
	mv	a0,s0
	lbu	a5,8(a4)
	bne	a5,zero,.L9300
	lhu	a2,86(s0)
	ld	a3,96(a4)
	lhu	a1,26(a4)
	slliw	a2,a2,1
	add	a3,a3,a2
	lbu	a5,0(a3)
	lbu	a3,1(a3)
	ld	a4,80(a4)
	slliw	a5,a5,8
	or	a5,a5,a3
	and	a5,a5,a1
	add	a5,a4,a5
	lbu	a1,0(a5)
	lbu	a3,3(a5)
	lbu	a4,1(a5)
	lbu	a5,2(a5)
	slliw	a1,a1,24
	or	a1,a1,a3
	slliw	a4,a4,16
	or	a1,a1,a4
	slliw	a5,a5,8
	or	a1,a1,a5
	sext.w	a1,a1
	call	moveToChild
	beq	a0,zero,.L9296
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L9300:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	moveToLeftmost, .-moveToLeftmost
	.section	.text.moveToRoot,"ax",@progbits
	.align	1
	.type	moveToRoot, @function
moveToRoot:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lb	a4,84(a0)
	mv	s0,a0
	blt	a4,zero,.L9302
	ld	a5,136(a0)
	bne	a4,zero,.L9326
.L9303:
	lbu	a4,0(a5)
	beq	a4,zero,.L9312
	ld	a4,128(s0)
	lbu	a3,2(a5)
	seqz	a4,a4
	beq	a4,a3,.L9305
.L9312:
	li	a0,69632
	addi	a0,a0,-1166
.L9327:
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3CorruptError
.L9304:
	addi	a5,a5,18
	slli	a5,a5,3
	add	a5,s0,a5
	ld	a5,0(a5)
.L9326:
	ld	a0,112(a5)
	call	sqlite3PagerUnrefNotNull
	lbu	a5,84(s0)
	addiw	a5,a5,-1
	slliw	a5,a5,24
	sraiw	a5,a5,24
	sb	a5,84(s0)
	bne	a5,zero,.L9304
	ld	a5,144(s0)
	sd	a5,136(s0)
.L9305:
	lbu	a4,1(s0)
	sh	zero,86(s0)
	sh	zero,70(s0)
	andi	a4,a4,-15
	sb	a4,1(s0)
	lhu	a4,24(a5)
	bne	a4,zero,.L9328
	lbu	a4,8(a5)
	bne	a4,zero,.L9314
	lw	a3,4(a5)
	li	a4,1
	beq	a3,a4,.L9315
	li	a0,69632
	addi	a0,a0,-1153
	j	.L9327
.L9302:
	lw	a1,80(a0)
	beq	a1,zero,.L9314
	lbu	a5,0(a0)
	li	a4,2
	bleu	a5,a4,.L9309
	li	a4,4
	beq	a5,a4,.L9329
	ld	a0,24(a0)
	call	sqlite3_free@plt
	lw	a1,80(s0)
	li	a5,1
	sd	zero,24(s0)
	sb	a5,0(s0)
.L9309:
	ld	a5,8(s0)
	lbu	a4,2(s0)
	li	a3,0
	ld	a0,8(a5)
	addi	a2,s0,136
	call	getAndInitPage
	bne	a0,zero,.L9330
	ld	a5,136(s0)
	sb	zero,84(s0)
	lbu	a4,2(a5)
	sb	a4,85(s0)
	j	.L9303
.L9328:
	sb	zero,0(s0)
	li	a0,0
.L9308:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L9330:
	li	a5,1
	sb	a5,0(s0)
	j	.L9308
.L9329:
	lw	a0,4(a0)
	j	.L9308
.L9314:
	li	a5,1
	sb	a5,0(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,16
	addi	sp,sp,16
	jr	ra
.L9315:
	lbu	a4,9(a5)
	ld	a5,80(a5)
	mv	a0,s0
	addi	a4,a4,8
	add	a5,a5,a4
	lbu	a1,0(a5)
	lbu	a3,3(a5)
	lbu	a4,1(a5)
	lbu	a5,2(a5)
	slliw	a1,a1,24
	sb	zero,0(s0)
	ld	s0,0(sp)
	or	a1,a1,a3
	slliw	a4,a4,16
	ld	ra,8(sp)
	or	a1,a1,a4
	slliw	a5,a5,8
	or	a1,a1,a5
	sext.w	a1,a1
	addi	sp,sp,16
	tail	moveToChild
	.size	moveToRoot, .-moveToRoot
	.section	.text.sqlite3BtreeLast,"ax",@progbits
	.align	1
	.type	sqlite3BtreeLast, @function
sqlite3BtreeLast:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lbu	a5,0(a0)
	mv	s0,a0
	mv	s1,a1
	bne	a5,zero,.L9332
	lbu	a5,1(a0)
	andi	a5,a5,8
	bne	a5,zero,.L9340
.L9332:
	mv	a0,s0
	call	moveToRoot
	beq	a0,zero,.L9341
	li	a5,16
	beq	a0,a5,.L9342
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9340:
	ld	ra,24(sp)
	ld	s0,16(sp)
	sw	zero,0(a1)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L9341:
	sw	zero,0(s1)
	mv	a0,s0
	call	moveToRightmost
	lbu	a5,1(s0)
	bne	a0,zero,.L9335
	ori	a5,a5,8
	sb	a5,1(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9342:
	li	a5,1
	sw	a5,0(s1)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L9335:
	andi	a5,a5,-9
	sb	a5,1(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3BtreeLast, .-sqlite3BtreeLast
	.section	.text.sqlite3BtreeCursor,"ax",@progbits
	.align	1
	.type	sqlite3BtreeCursor, @function
sqlite3BtreeCursor:
	ble	a1,zero,.L9345
	ld	a6,0(a0)
	ld	a5,8(a0)
	sd	a6,8(a5)
	tail	btreeCursor
.L9345:
	li	a0,69632
	addi	a0,a0,-1937
	tail	sqlite3CorruptError
	.size	sqlite3BtreeCursor, .-sqlite3BtreeCursor
	.section	.text.btreeComputeFreeSpace,"ax",@progbits
	.align	1
	.type	btreeComputeFreeSpace, @function
btreeComputeFreeSpace:
	lbu	a7,9(a0)
	ld	t1,80(a0)
	ld	t3,72(a0)
	lbu	a6,10(a0)
	add	a3,t1,a7
	lbu	a4,5(a3)
	lbu	t5,6(a3)
	lbu	a5,1(a3)
	lbu	t4,2(a3)
	lhu	a2,24(a0)
	slliw	a4,a4,8
	lbu	a1,7(a3)
	or	a4,a4,t5
	lw	t3,52(t3)
	addw	a6,a6,a7
	slliw	a5,a5,8
	addiw	a4,a4,-1
	addiw	a6,a6,8
	slliw	a3,a2,1
	or	a5,a5,t4
	slli	a4,a4,48
	addw	t0,a6,a3
	srli	a4,a4,48
	addiw	a1,a1,1
	sext.w	a5,a5
	mv	a6,t0
	sext.w	t6,t3
	addw	a1,a1,a4
	beq	a5,zero,.L9347
	addiw	t5,t6,-4
	ble	t0,a5,.L9348
	li	a0,65536
	addi	a0,a0,-358
	tail	sqlite3CorruptError
.L9349:
	lbu	a4,2(a2)
	lbu	a3,0(a2)
	lbu	t4,3(a2)
	lbu	a7,1(a2)
	slliw	a4,a4,8
	or	a4,a4,t4
	slliw	a3,a3,8
	addw	a2,a5,a4
	or	a5,a3,a7
	sext.w	a3,a5
	addiw	a7,a2,3
	mv	a5,a3
	addw	a1,a1,a4
	bgeu	a7,a3,.L9359
.L9348:
	add	a2,t1,a5
	bge	t5,a5,.L9349
	li	a0,65536
	addi	a0,a0,-353
	tail	sqlite3CorruptError
.L9359:
	bne	a3,zero,.L9360
	bltu	t3,a2,.L9361
.L9347:
	bgt	a1,t6,.L9351
	blt	a1,t0,.L9351
	subw	a1,a1,a6
	slliw	a1,a1,16
	srliw	a1,a1,16
	sw	a1,20(a0)
	li	a0,0
	ret
.L9351:
	li	a0,65536
	addi	a0,a0,-327
	tail	sqlite3CorruptError
.L9361:
	li	a0,65536
	addi	a0,a0,-339
	tail	sqlite3CorruptError
.L9360:
	li	a0,65536
	addi	a0,a0,-343
	tail	sqlite3CorruptError
	.size	btreeComputeFreeSpace, .-btreeComputeFreeSpace
	.section	.text.freeSpace,"ax",@progbits
	.align	1
	.type	freeSpace, @function
freeSpace:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	mv	s1,a0
	lbu	a0,9(a0)
	ld	t4,80(s1)
	mv	s0,a2
	addi	a4,a0,1
	add	a4,t4,a4
	lbu	a3,1(a4)
	sext.w	s2,a2
	addw	t2,a1,a2
	sext.w	t5,a1
	add	a2,a1,a2
	addiw	t0,a0,1
	addi	t1,a0,1
	bne	a3,zero,.L9365
	lbu	a5,0(a4)
	bne	a5,zero,.L9365
	mv	t6,t1
	li	t1,0
.L9364:
	addi	a6,a0,5
	add	a6,t4,a6
	addi	a3,a0,6
	lbu	a5,0(a6)
	add	a3,t4,a3
	lbu	a4,0(a3)
	slliw	a5,a5,8
	or	a5,a5,a4
	slli	a5,a5,48
	srli	a5,a5,48
	bgtu	t5,a5,.L9376
	bltu	t5,a5,.L9377
	sext.w	a4,t6
	beq	t0,a4,.L9378
.L9377:
	li	a0,65536
	addi	a0,a0,-482
.L9389:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	tail	sqlite3CorruptError
.L9367:
	sext.w	a7,t3
	bgt	a6,a3,.L9390
.L9365:
	add	a4,t4,t1
	lbu	a5,0(a4)
	lbu	a3,1(a4)
	mv	t3,t1
	slliw	a5,a5,8
	or	a5,a5,a3
	mv	t6,t1
	slli	t1,a5,48
	srli	t1,t1,48
	slliw	a5,a5,16
	addiw	a6,t3,4
	sext.w	a3,t1
	sraiw	a5,a5,16
	bgtu	t5,t1,.L9367
	ld	a4,72(s1)
	lw	a6,52(a4)
	addiw	a4,a6,-4
	bltu	a4,a3,.L9391
	beq	t1,zero,.L9388
	addiw	a4,t2,3
	bltu	a4,a3,.L9388
	bltu	a3,a2,.L9392
	add	a3,t4,t1
	lbu	a4,2(a3)
	lbu	a2,3(a3)
	slliw	a4,a4,8
	or	a4,a4,a2
	addw	a2,a4,t1
	bltu	a6,a2,.L9393
	lbu	a4,0(a3)
	lbu	a6,1(a3)
	subw	t1,a2,a1
	slliw	a4,a4,8
	or	a4,a4,a6
	slli	s0,t1,48
	subw	a3,a5,t2
	slli	t1,a4,48
	andi	a5,a3,0xff
	srli	s0,s0,48
	srli	t1,t1,48
	sext.w	a7,t3
	j	.L9366
.L9390:
	li	a5,0
	bne	t1,zero,.L9394
.L9366:
	sext.w	a4,t0
	bge	a4,a7,.L9373
	add	a4,t4,t3
	lbu	a3,2(a4)
	lbu	a6,3(a4)
	slliw	a4,a3,8
	or	a4,a4,a6
	addw	a3,a4,a7
	addiw	a4,a3,3
	blt	a4,t5,.L9373
	blt	t5,a3,.L9395
	addw	a5,a1,a5
	subw	s0,a2,t6
	subw	a7,a5,a3
	slli	s0,s0,48
	andi	a5,a7,0xff
	srli	s0,s0,48
	mv	a1,t6
.L9373:
	addi	a4,a0,7
	add	a4,t4,a4
	lbu	a3,0(a4)
	bltu	a3,a5,.L9396
	subw	a5,a3,a5
	sb	a5,0(a4)
	sext.w	t5,a1
	j	.L9364
.L9376:
	add	a4,t4,t6
	srliw	a5,a1,8
	sb	a5,0(a4)
	sb	a1,1(a4)
	ld	a4,72(s1)
	srli	s4,t1,8
	andi	s3,t1,0xff
	lhu	a4,38(a4)
	add	t4,t4,a1
	andi	a4,a4,12
	bne	a4,zero,.L9397
.L9380:
	srliw	a4,s0,8
	sb	s4,0(t4)
	sb	s3,1(t4)
	sb	a4,2(t4)
	sb	s0,3(t4)
	lw	a5,20(s1)
	li	a0,0
	addw	s2,a5,s2
	sw	s2,20(s1)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L9388:
	sext.w	a7,t3
	li	a5,0
	j	.L9366
.L9378:
	add	a0,t4,a0
	srliw	a5,t1,8
	andi	s3,t1,0xff
	sb	a5,1(a0)
	sb	s3,2(a0)
	srliw	a5,a2,8
	sb	a5,0(a6)
	sb	a2,0(a3)
	ld	a4,72(s1)
	srli	s4,t1,8
	add	t4,t4,a1
	lhu	a4,38(a4)
	andi	a4,a4,12
	beq	a4,zero,.L9380
.L9397:
	mv	a0,t4
	mv	a2,s0
	li	a1,0
	call	memset@plt
	mv	t4,a0
	j	.L9380
.L9391:
	li	a0,65536
	addi	a0,a0,-524
	j	.L9389
.L9396:
	li	a0,65536
	addi	a0,a0,-490
	j	.L9389
.L9394:
	li	a0,65536
	addi	a0,a0,-529
	j	.L9389
.L9392:
	li	a0,65536
	addi	a0,a0,-512
	j	.L9389
.L9395:
	li	a0,65536
	addi	a0,a0,-496
	j	.L9389
.L9393:
	li	a0,65536
	addi	a0,a0,-509
	j	.L9389
	.size	freeSpace, .-freeSpace
	.section	.text.pageFreeArray.isra.0,"ax",@progbits
	.align	1
	.type	pageFreeArray.isra.0, @function
pageFreeArray.isra.0:
	addi	sp,sp,-112
	sd	s7,40(sp)
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s8,32(sp)
	sd	s9,24(sp)
	sd	s10,16(sp)
	sd	s11,8(sp)
	mv	s7,a0
	ld	a0,72(a0)
	lbu	a5,10(s7)
	lbu	s2,9(s7)
	ld	s10,80(s7)
	lwu	s6,52(a0)
	addw	s2,s2,a5
	addiw	s2,s2,8
	addw	a5,a1,a2
	add	s6,s10,s6
	add	s2,s10,s2
	ble	a5,a1,.L9404
	addiw	a2,a2,-1
	slli	a2,a2,32
	srli	a2,a2,32
	addi	s4,a1,1
	add	s4,s4,a2
	mv	s5,a3
	mv	s11,a4
	slli	s0,a1,1
	slli	s4,s4,1
	li	s9,0
	li	a2,0
	li	a3,0
.L9406:
	ld	a5,0(s5)
	slli	a1,s0,2
	add	a5,a5,a1
	ld	s1,0(a5)
	bltu	s1,s2,.L9401
	bleu	s6,s1,.L9401
	ld	a5,0(s11)
	addiw	s9,s9,1
	add	a5,a5,s0
	lhu	a5,0(a5)
	add	s8,s1,a5
	sext.w	s3,a5
	beq	s8,a3,.L9402
	sub	a1,a3,s10
	slli	a2,a2,48
	slli	a1,a1,48
	srli	a2,a2,48
	srli	a1,a1,48
	mv	a0,s7
	beq	a3,zero,.L9403
	call	freeSpace
.L9403:
	bltu	s6,s8,.L9404
.L9405:
	mv	a2,s3
	mv	a3,s1
.L9401:
	addi	s0,s0,2
	bne	s4,s0,.L9406
	beq	a3,zero,.L9400
	sub	a1,a3,s10
	slli	a2,a2,48
	slli	a1,a1,48
	srli	a2,a2,48
	srli	a1,a1,48
	mv	a0,s7
	call	freeSpace
.L9400:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s10,16(sp)
	ld	s11,8(sp)
	mv	a0,s9
	ld	s9,24(sp)
	addi	sp,sp,112
	jr	ra
.L9402:
	addw	s3,s3,a2
	j	.L9405
.L9404:
	li	s9,0
	j	.L9400
	.size	pageFreeArray.isra.0, .-pageFreeArray.isra.0
	.section	.text.dropCell.part.0,"ax",@progbits
	.align	1
	.type	dropCell.part.0, @function
dropCell.part.0:
	addi	sp,sp,-64
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	ld	s1,96(a0)
	slliw	a5,a1,1
	mv	s2,a1
	add	s1,s1,a5
	lbu	a4,1(s1)
	lbu	a5,0(s1)
	ld	a1,72(a0)
	slli	a4,a4,8
	or	a5,a4,a5
	slli	a5,a5,8
	srli	a4,a4,8
	or	a5,a5,a4
	lw	a4,52(a1)
	slli	a1,a5,48
	srli	a1,a1,48
	addw	a5,a1,a2
	mv	s3,a3
	bgtu	a5,a4,.L9421
	slli	a2,a2,48
	srli	a2,a2,48
	ld	s5,80(a0)
	lbu	s4,9(a0)
	mv	s0,a0
	call	freeSpace
	bne	a0,zero,.L9422
	lhu	a2,24(s0)
	addiw	a2,a2,-1
	slli	a2,a2,48
	srli	a2,a2,48
	sh	a2,24(s0)
	bne	a2,zero,.L9419
	addi	a5,s4,1
	add	a5,s5,a5
	sb	zero,0(a5)
	sb	zero,1(a5)
	sb	zero,2(a5)
	sb	zero,3(a5)
	add	s4,s5,s4
	sb	zero,7(s4)
	ld	a5,72(s0)
	lw	a5,52(a5)
	srliw	a5,a5,8
	sb	a5,5(s4)
	ld	a5,72(s0)
	lw	a5,52(a5)
	sb	a5,6(s4)
	ld	a5,72(s0)
	lbu	a3,9(s0)
	lbu	a4,10(s0)
	lw	a5,52(a5)
	addiw	a5,a5,-8
	subw	a5,a5,a3
	subw	a5,a5,a4
	sw	a5,20(s0)
.L9415:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L9422:
	sw	a0,0(s3)
	j	.L9415
.L9421:
	li	a0,69632
	addi	a0,a0,258
	call	sqlite3CorruptError
	sw	a0,0(s3)
	j	.L9415
.L9419:
	subw	a2,a2,s2
	slliw	a2,a2,1
	addi	a1,s1,2
	mv	a0,s1
	call	memmove@plt
	lhu	a5,24(s0)
	add	s4,s5,s4
	srliw	a5,a5,8
	sb	a5,3(s4)
	lhu	a5,24(s0)
	sb	a5,4(s4)
	lw	a5,20(s0)
	addiw	a5,a5,2
	sw	a5,20(s0)
	j	.L9415
	.size	dropCell.part.0, .-dropCell.part.0
	.section	.text.pageFindSlot,"ax",@progbits
	.align	1
	.type	pageFindSlot, @function
pageFindSlot:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lbu	t4,9(a0)
	ld	a7,80(a0)
	ld	a0,72(a0)
	addi	t3,t4,1
	add	a4,a7,t3
	lbu	a5,0(a4)
	lbu	a3,1(a4)
	lw	t5,52(a0)
	slliw	a5,a5,8
	or	a5,a5,a3
	subw	t5,t5,a1
	mv	s0,a2
	sext.w	a3,a5
	sext.w	a2,t5
	j	.L9424
.L9430:
	lbu	a5,0(a4)
	lbu	t1,0(a6)
	slliw	a5,a5,8
	or	a5,a5,t1
	subw	t1,a5,a1
	sext.w	a5,a5
	add	a5,a3,a5
	bge	t1,zero,.L9437
	lbu	a4,0(a0)
	lbu	a0,1(a0)
	mv	t3,a3
	slliw	a4,a4,8
	or	a4,a4,a0
	sext.w	a4,a4
	bge	a5,a4,.L9438
	mv	a3,a4
.L9424:
	addi	a4,a3,2
	addi	a5,a3,3
	add	a4,a7,a4
	add	a0,a7,a3
	add	a6,a7,a5
	ble	a3,a2,.L9430
	addiw	a1,a1,-4
	addw	a1,a1,t5
	li	s1,0
	blt	a1,a3,.L9439
.L9423:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9437:
	li	a5,3
	bgt	t1,a5,.L9426
	addi	t4,t4,7
	add	t4,a7,t4
	lbu	a4,0(t4)
	li	a5,57
	li	s1,0
	bgtu	a4,a5,.L9423
	add	a5,a7,a3
	lbu	a4,0(a5)
	add	t3,a7,t3
	addw	a3,a3,t1
	sb	a4,0(t3)
	lbu	a5,1(a5)
	add	s1,a7,a3
	sb	a5,1(t3)
	lbu	a5,0(t4)
	addw	t1,a5,t1
	sb	t1,0(t4)
.L9441:
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9438:
	li	s1,0
	beq	a4,zero,.L9423
	li	a0,65536
	addi	a0,a0,-674
	call	sqlite3CorruptError
	sw	a0,0(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9426:
	addw	a3,a3,t1
	bgt	a3,a2,.L9440
	sraiw	a5,t1,8
	sb	a5,0(a4)
	sb	t1,0(a6)
	add	s1,a7,a3
	j	.L9441
.L9439:
	li	a0,65536
	addi	a0,a0,-667
	call	sqlite3CorruptError
	sw	a0,0(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9440:
	li	a0,65536
	addi	a0,a0,-688
	call	sqlite3CorruptError
	sw	a0,0(s0)
	li	s1,0
	j	.L9423
	.size	pageFindSlot, .-pageFindSlot
	.section	.text.defragmentPage,"ax",@progbits
	.align	1
	.type	defragmentPage, @function
defragmentPage:
	addi	sp,sp,-176
	sd	s2,144(sp)
	sd	s9,88(sp)
	sd	s10,80(sp)
	sd	s11,72(sp)
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s3,136(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	sd	s6,112(sp)
	sd	s7,104(sp)
	sd	s8,96(sp)
	lbu	a2,9(a0)
	ld	a4,72(a0)
	lhu	a5,24(a0)
	ld	s3,80(a0)
	lhu	s1,18(a0)
	lw	s5,52(a4)
	addi	s10,a2,7
	add	a3,s3,s10
	slliw	s9,a5,1
	lbu	a4,0(a3)
	sd	a3,56(sp)
	addw	a3,s9,s1
	sext.w	s2,a3
	mv	s11,a0
	addiw	a0,s5,-4
	sd	a2,40(sp)
	sw	s2,52(sp)
	sd	a0,8(sp)
	sext.w	a3,a5
	bgt	a4,a1,.L9443
	add	a4,s3,a2
	lbu	s0,1(a4)
	lbu	a2,2(a4)
	slliw	s0,s0,8
	or	s0,s0,a2
	sext.w	s0,s0
	bgt	s0,a0,.L9479
	bne	s0,zero,.L9480
.L9443:
	beq	a3,zero,.L9466
	addiw	a5,a5,-1
	slli	a5,a5,32
	add	s8,s3,s1
	srli	a5,a5,32
	addi	s6,s8,2
	slli	a5,a5,1
	add	a5,s6,a5
	sd	a5,16(sp)
	ld	a5,40(sp)
	mv	s4,s3
	mv	s9,s5
	add	a5,s3,a5
	li	s1,0
	sd	a5,32(sp)
	j	.L9463
.L9461:
	mv	a2,t4
	mv	a1,s6
	add	a0,s3,s10
	call	memcpy@plt
.L9462:
	ld	a5,16(sp)
	beq	s8,a5,.L9456
	mv	s9,s10
.L9463:
	lbu	a5,1(s8)
	lbu	s0,0(s8)
	mv	a0,s11
	slli	a5,a5,8
	or	s0,a5,s0
	slli	s0,s0,8
	srli	a5,a5,8
	or	s0,s0,a5
	slli	s0,s0,48
	srli	s0,s0,48
	add	s6,s4,s0
	mv	a1,s6
	sext.w	s7,s0
	bgt	s2,s0,.L9457
	ld	a5,8(sp)
	bgt	s7,a5,.L9457
	ld	a5,120(s11)
	jalr	a5
	subw	s10,s9,a0
	sext.w	a3,a0
	mv	t4,a0
	sraiw	a2,s10,8
	addw	a3,s7,a3
	bgt	s2,s10,.L9459
	bgt	a3,s5,.L9459
	sb	a2,0(s8)
	sb	s10,1(s8)
	addi	s8,s8,2
	bne	s1,zero,.L9461
	sd	a0,24(sp)
	beq	s7,s10,.L9462
	ld	a5,32(sp)
	ld	a3,72(s11)
	lbu	a2,5(a5)
	ld	a3,0(a3)
	lbu	a1,6(a5)
	slliw	a2,a2,8
	ld	s1,272(a3)
	or	a2,a2,a1
	sext.w	a0,a2
	add	a1,s3,a0
	subw	a2,s9,a2
	add	a0,s1,a0
	call	memcpy@plt
	ld	t4,24(sp)
	add	s6,s1,s0
	mv	s4,s1
	j	.L9461
.L9457:
	li	a0,65536
	addi	a0,a0,-769
.L9478:
	ld	s0,160(sp)
	ld	ra,168(sp)
	ld	s1,152(sp)
	ld	s2,144(sp)
	ld	s3,136(sp)
	ld	s4,128(sp)
	ld	s5,120(sp)
	ld	s6,112(sp)
	ld	s7,104(sp)
	ld	s8,96(sp)
	ld	s9,88(sp)
	ld	s10,80(sp)
	ld	s11,72(sp)
	addi	sp,sp,176
	tail	sqlite3CorruptError
.L9459:
	li	a0,65536
	addi	a0,a0,-763
	j	.L9478
.L9480:
	add	a2,s3,s0
	lbu	s4,0(a2)
	lbu	a1,1(a2)
	li	a0,65536
	slliw	s4,s4,8
	or	s4,s4,a1
	ld	a1,8(sp)
	sext.w	s4,s4
	addi	a0,a0,-814
	bgt	s4,a1,.L9478
	beq	s4,zero,.L9446
	add	a1,s3,s4
	lbu	a0,0(a1)
	bne	a0,zero,.L9443
	lbu	a1,1(a1)
	bne	a1,zero,.L9443
.L9446:
	lbu	s8,5(a4)
	lbu	s6,2(a2)
	lbu	a4,6(a4)
	lbu	a5,3(a2)
	slliw	s8,s8,8
	slliw	s6,s6,8
	or	s8,s8,a4
	or	s6,s6,a5
	li	a0,65536
	sext.w	s8,s8
	sext.w	s6,s6
	addi	a0,a0,-806
	ble	s0,s8,.L9478
	addw	a1,s0,s6
	bne	s4,zero,.L9481
	li	a0,65536
	li	s7,0
	addi	a0,a0,-797
	blt	s5,a1,.L9478
.L9451:
	addw	s10,s6,s8
	subw	a2,s0,s8
	add	a1,s3,s8
	add	a0,s3,s10
	call	memmove@plt
	add	a0,s3,s2
	add	a4,s3,s1
	bgtu	a0,a4,.L9452
	j	.L9477
.L9482:
	sb	a2,0(a4)
	sb	a7,1(a4)
.L9455:
	addi	a4,a4,2
	bleu	a0,a4,.L9477
.L9452:
	lbu	a2,1(a4)
	lbu	a3,0(a4)
	slli	a2,a2,8
	or	a3,a2,a3
	slli	a3,a3,8
	srli	a2,a2,8
	or	a3,a3,a2
	slli	a3,a3,48
	srli	a3,a3,48
	sext.w	a1,a3
	addw	a2,s6,a1
	addw	a7,a3,s6
	sraiw	a2,a2,8
	bgt	s0,a3,.L9482
	addw	a2,s7,a1
	sraiw	a2,a2,8
	addw	a3,a3,s7
	ble	s4,a1,.L9455
	sb	a2,0(a4)
	sb	a3,1(a4)
	j	.L9455
.L9479:
	li	a0,65536
	addi	a0,a0,-817
	j	.L9478
.L9466:
	mv	s10,s5
.L9456:
	ld	a5,56(sp)
	li	a4,0
	sb	zero,0(a5)
.L9453:
	lw	a5,52(sp)
	lw	a3,20(s11)
	addw	a4,s10,a4
	subw	a4,a4,a5
	beq	a4,a3,.L9464
	li	a0,65536
	addi	a0,a0,-742
	j	.L9478
.L9464:
	ld	a5,40(sp)
	sraiw	a4,s10,8
	add	a0,s3,s2
	add	s11,s3,a5
	lw	a5,52(sp)
	sb	s10,6(s11)
	sb	a4,5(s11)
	sb	zero,1(s11)
	sb	zero,2(s11)
	subw	a2,s10,a5
	li	a1,0
	call	memset@plt
	ld	ra,168(sp)
	ld	s0,160(sp)
	ld	s1,152(sp)
	ld	s2,144(sp)
	ld	s3,136(sp)
	ld	s4,128(sp)
	ld	s5,120(sp)
	ld	s6,112(sp)
	ld	s7,104(sp)
	ld	s8,96(sp)
	ld	s9,88(sp)
	ld	s10,80(sp)
	ld	s11,72(sp)
	li	a0,0
	addi	sp,sp,176
	jr	ra
.L9481:
	li	a0,65536
	addi	a0,a0,-803
	blt	s4,a1,.L9478
	add	a5,s3,s4
	lbu	s7,2(a5)
	lbu	a5,3(a5)
	slliw	s7,s7,8
	or	s7,s7,a5
	addw	a5,s4,s7
	sext.w	s7,s7
	ble	a5,s5,.L9450
	li	a0,65536
	addi	a0,a0,-801
	j	.L9478
.L9477:
	ld	a5,56(sp)
	lbu	a4,0(a5)
	j	.L9453
.L9450:
	addw	a0,a1,s7
	subw	a2,s4,a1
	add	a0,s3,a0
	add	a1,s3,a1
	call	memmove@plt
	addw	s6,s6,s7
	j	.L9451
	.size	defragmentPage, .-defragmentPage
	.section	.text.rebuildPage,"ax",@progbits
	.align	1
	.type	rebuildPage, @function
rebuildPage:
	addi	sp,sp,-160
	sd	s0,144(sp)
	sd	s2,128(sp)
	sd	s3,120(sp)
	sd	s4,112(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	sd	ra,152(sp)
	sd	s1,136(sp)
	sd	s5,104(sp)
	sd	s8,80(sp)
	sd	s9,72(sp)
	sd	s10,64(sp)
	sd	s11,56(sp)
	lbu	a5,9(a3)
	ld	s9,80(a3)
	mv	s4,a3
	addi	s7,a5,5
	ld	a3,72(a3)
	add	a4,s9,s7
	addi	s6,a5,6
	sd	a5,16(sp)
	sd	a4,24(sp)
	lbu	a5,0(a4)
	add	a4,s9,s6
	lbu	a6,0(a4)
	sd	a4,32(sp)
	lw	a4,52(a3)
	ld	a3,0(a3)
	slliw	a5,a5,8
	or	a5,a5,a6
	ld	a3,272(a3)
	sd	a2,40(sp)
	sext.w	a5,a5
	sd	a3,8(sp)
	ld	s11,96(s4)
	mv	s0,a1
	mv	s7,a0
	add	s3,s9,a4
	addw	s2,a1,a2
	bltu	a4,a5,.L9494
	add	a0,a3,a5
	add	a1,s9,a5
	subw	a4,a4,a5
.L9484:
	slli	a2,a4,32
	srli	a2,a2,32
	call	memcpy@plt
	lw	a5,80(s7)
	bgt	a5,s0,.L9495
	addi	a5,s7,84
	li	s5,0
	li	a3,6
.L9486:
	lw	a4,0(a5)
	addiw	s5,s5,1
	addi	a5,a5,4
	bgt	a4,s0,.L9485
	bne	s5,a3,.L9486
.L9485:
	addi	a5,s5,4
	slli	a5,a5,3
	add	a5,s7,a5
	ld	s1,0(a5)
	mv	s10,s3
.L9487:
	ld	a2,16(s7)
	ld	a4,24(s7)
	slli	a3,s0,3
	slli	a5,s0,1
	add	a3,a2,a3
	add	a5,a4,a5
	ld	a1,0(a3)
	lhu	a2,0(a5)
	add	a5,a1,a2
	bltu	a1,s9,.L9488
	sub	a4,a1,s9
	bgeu	a1,s3,.L9488
	bltu	s3,a5,.L9499
	ld	a5,8(sp)
	add	a1,a5,a4
.L9490:
	sub	s10,s10,a2
	sub	a5,s10,s9
	srai	a3,a5,8
	andi	s6,a3,0xff
	andi	s8,a5,0xff
	sb	s6,0(s11)
	sb	s8,1(s11)
	addi	s11,s11,2
	mv	a0,s10
	addiw	s0,s0,1
	bltu	s10,s11,.L9500
	call	memcpy@plt
	addi	a5,s5,20
	slli	a5,a5,2
	add	a5,s7,a5
	ble	s2,s0,.L9492
	lw	a5,0(a5)
	bgt	a5,s0,.L9487
	addiw	s5,s5,1
	addi	a5,s5,4
	slli	a5,a5,3
	add	a5,s7,a5
	ld	s1,0(a5)
	j	.L9487
.L9488:
	bgeu	s1,a5,.L9490
	bgeu	a1,s1,.L9490
	li	a0,69632
	addi	a0,a0,569
	j	.L9498
.L9494:
	ld	a0,8(sp)
	mv	a1,s9
	j	.L9484
.L9500:
	li	a0,69632
	addi	a0,a0,575
.L9498:
	ld	s0,144(sp)
	ld	ra,152(sp)
	ld	s1,136(sp)
	ld	s2,128(sp)
	ld	s3,120(sp)
	ld	s4,112(sp)
	ld	s5,104(sp)
	ld	s6,96(sp)
	ld	s7,88(sp)
	ld	s8,80(sp)
	ld	s9,72(sp)
	ld	s10,64(sp)
	ld	s11,56(sp)
	addi	sp,sp,160
	tail	sqlite3CorruptError
.L9492:
	ld	a5,40(sp)
	sb	zero,12(s4)
	li	a0,0
	sh	a5,24(s4)
	ld	a5,16(sp)
	add	s9,s9,a5
	sb	zero,1(s9)
	sb	zero,2(s9)
	lhu	a5,24(s4)
	srliw	a5,a5,8
	sb	a5,3(s9)
	lhu	a5,24(s4)
	sb	a5,4(s9)
	ld	a5,24(sp)
	sb	s6,0(a5)
	ld	a5,32(sp)
	sb	s8,0(a5)
	sb	zero,7(s9)
	ld	ra,152(sp)
	ld	s0,144(sp)
	ld	s1,136(sp)
	ld	s2,128(sp)
	ld	s3,120(sp)
	ld	s4,112(sp)
	ld	s5,104(sp)
	ld	s6,96(sp)
	ld	s7,88(sp)
	ld	s8,80(sp)
	ld	s9,72(sp)
	ld	s10,64(sp)
	ld	s11,56(sp)
	addi	sp,sp,160
	jr	ra
.L9499:
	li	a0,69632
	addi	a0,a0,564
	j	.L9498
.L9495:
	li	s5,0
	j	.L9485
	.size	rebuildPage, .-rebuildPage
	.section	.text.pageInsertArray,"ax",@progbits
	.align	1
	.type	pageInsertArray, @function
pageInsertArray:
	addi	sp,sp,-144
	sd	s6,80(sp)
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	s7,72(sp)
	sd	s8,64(sp)
	sd	s9,56(sp)
	sd	s10,48(sp)
	sd	s11,40(sp)
	addw	s6,a4,a5
	sd	a1,0(sp)
	sd	a2,8(sp)
	bge	a4,s6,.L9514
	lw	a5,80(a6)
	mv	s10,a4
	mv	s7,a0
	mv	s0,a3
	mv	s8,a6
	bgt	a5,a4,.L9515
	addi	a5,a6,84
	li	s2,0
	li	a2,6
.L9504:
	lw	a3,0(a5)
	addiw	s2,s2,1
	addi	a5,a5,4
	bgt	a3,s10,.L9503
	bne	s2,a2,.L9504
.L9503:
	ld	a4,8(sp)
	addi	a5,s2,4
	slli	a5,a5,3
	add	a5,s8,a5
	ld	s3,80(s7)
	ld	s4,0(a4)
	ld	s5,0(a5)
	slli	s1,s10,1
	addi	s9,sp,28
.L9513:
	ld	a5,24(s8)
	add	a5,a5,s1
	lhu	s11,0(a5)
	bne	s11,zero,.L9505
	mv	a1,s10
	mv	a0,s8
	call	computeCellSize
	mv	s11,a0
.L9505:
	lbu	a5,1(s3)
	bne	a5,zero,.L9506
	lbu	a5,2(s3)
	bne	a5,zero,.L9506
	ld	a5,0(sp)
	sub	a5,s4,a5
	blt	a5,s11,.L9509
.L9525:
	sub	s4,s4,s11
	mv	a7,s4
.L9508:
	ld	a5,16(s8)
	slli	a3,s1,2
	add	a5,a5,a3
	ld	a1,0(a5)
	add	a5,a1,s11
	bleu	a5,s5,.L9510
	bltu	a1,s5,.L9524
.L9510:
	mv	a0,a7
	mv	a2,s11
	call	memmove@plt
	sub	a7,a0,s3
	srai	a5,a7,8
	sb	a5,0(s0)
	sb	a7,1(s0)
	addiw	s10,s10,1
	addi	s0,s0,2
	beq	s6,s10,.L9511
	addi	a5,s2,20
	slli	a5,a5,2
	add	a5,s8,a5
	lw	a5,0(a5)
	bgt	a5,s10,.L9512
	addiw	s2,s2,1
	addi	a5,s2,4
	slli	a5,a5,3
	add	a5,s8,a5
	ld	s5,0(a5)
.L9512:
	addi	s1,s1,2
	j	.L9513
.L9506:
	mv	a2,s9
	sext.w	a1,s11
	mv	a0,s7
	call	pageFindSlot
	mv	a7,a0
	bne	a0,zero,.L9508
	ld	a5,0(sp)
	sub	a5,s4,a5
	bge	a5,s11,.L9525
.L9509:
	li	a0,1
.L9502:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	ld	s9,56(sp)
	ld	s10,48(sp)
	ld	s11,40(sp)
	addi	sp,sp,144
	jr	ra
.L9514:
	li	a0,0
	j	.L9502
.L9511:
	ld	a5,8(sp)
	li	a0,0
	sd	s4,0(a5)
	j	.L9502
.L9524:
	li	a0,69632
	addi	a0,a0,660
	call	sqlite3CorruptError
	j	.L9509
.L9515:
	li	s2,0
	j	.L9503
	.size	pageInsertArray, .-pageInsertArray
	.section	.rodata.str1.8
	.align	3
.LC54:
	.string	"cannot open file"
	.section	.text.sqlite3CantopenError,"ax",@progbits
	.align	1
	.type	sqlite3CantopenError, @function
sqlite3CantopenError:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	mv	s0,a0
	call	sqlite3_sourceid@plt
	addi	a4,a0,20
	mv	a3,s0
	li	a0,14
	lla	a2,.LC54
	lla	a1,.LC52
	call	sqlite3_log@plt
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,14
	addi	sp,sp,16
	jr	ra
	.size	sqlite3CantopenError, .-sqlite3CantopenError
	.section	.rodata.str1.8
	.align	3
.LC55:
	.string	"cannot limit WAL size: %s"
	.section	.text.walLimitSize.isra.0,"ax",@progbits
	.align	1
	.type	walLimitSize.isra.0, @function
walLimitSize.isra.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	mv	s0,a0
	ld	a0,0(a0)
	mv	s2,a1
	addi	a1,sp,8
	ld	a4,0(a0)
	mv	s1,a2
	ld	a4,48(a4)
	jalr	a4
	beq	a0,zero,.L9538
.L9529:
	ld	a2,0(s2)
	lla	a1,.LC55
	call	sqlite3_log@plt
.L9528:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L9538:
	ld	a5,8(sp)
	ble	a5,s1,.L9528
	ld	a0,0(s0)
	mv	a1,s1
	ld	a5,0(a0)
	ld	a5,32(a5)
	jalr	a5
	bne	a0,zero,.L9529
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
	.size	walLimitSize.isra.0, .-walLimitSize.isra.0
	.section	.rodata.str1.8
	.align	3
.LC56:
	.string	"invalid"
	.align	3
.LC57:
	.string	"API call with %s database connection pointer"
	.section	.text.sqlite3SafetyCheckSickOrOk.part.0,"ax",@progbits
	.align	1
	.type	sqlite3SafetyCheckSickOrOk.part.0, @function
sqlite3SafetyCheckSickOrOk.part.0:
	addi	sp,sp,-16
	li	a0,21
	lla	a2,.LC56
	lla	a1,.LC57
	sd	ra,8(sp)
	call	sqlite3_log@plt
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	sqlite3SafetyCheckSickOrOk.part.0, .-sqlite3SafetyCheckSickOrOk.part.0
	.section	.text.sqlite3_errcode,"ax",@progbits
	.align	1
	.globl	sqlite3_errcode
	.type	sqlite3_errcode, @function
sqlite3_errcode:
	beq	a0,zero,.L9552
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lw	a4,112(a0)
	li	a5,1266094080
	addi	a5,a5,656
	mv	s0,a0
	beq	a4,a5,.L9544
	li	a5,-1607884800
	addi	a5,a5,1687
	beq	a4,a5,.L9544
	li	a5,-264536064
	addi	a5,a5,-1786
	beq	a4,a5,.L9544
	call	sqlite3SafetyCheckSickOrOk.part.0
	beq	a0,zero,.L9553
.L9544:
	lbu	a5,97(s0)
	bne	a5,zero,.L9554
	lw	a0,80(s0)
	lw	a5,84(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	and	a0,a0,a5
	sext.w	a0,a0
	addi	sp,sp,16
	jr	ra
.L9554:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,7
	addi	sp,sp,16
	jr	ra
.L9552:
	li	a0,7
	ret
.L9553:
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a0,159744
	addi	a0,a0,-2046
	addi	sp,sp,16
	tail	sqlite3MisuseError
	.size	sqlite3_errcode, .-sqlite3_errcode
	.section	.text.sqlite3_extended_errcode,"ax",@progbits
	.align	1
	.globl	sqlite3_extended_errcode
	.type	sqlite3_extended_errcode, @function
sqlite3_extended_errcode:
	beq	a0,zero,.L9566
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lw	a4,112(a0)
	li	a5,1266094080
	addi	a5,a5,656
	mv	s0,a0
	beq	a4,a5,.L9558
	li	a5,-1607884800
	addi	a5,a5,1687
	beq	a4,a5,.L9558
	li	a5,-264536064
	addi	a5,a5,-1786
	beq	a4,a5,.L9558
	call	sqlite3SafetyCheckSickOrOk.part.0
	beq	a0,zero,.L9567
.L9558:
	lbu	a5,97(s0)
	bne	a5,zero,.L9568
	lw	a0,80(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L9568:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,7
	addi	sp,sp,16
	jr	ra
.L9566:
	li	a0,7
	ret
.L9567:
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a0,159744
	addi	a0,a0,-2037
	addi	sp,sp,16
	tail	sqlite3MisuseError
	.size	sqlite3_extended_errcode, .-sqlite3_extended_errcode
	.section	.rodata.str1.8
	.align	3
.LC58:
	.string	"unopened"
	.section	.text.sqlite3SafetyCheckOk,"ax",@progbits
	.align	1
	.type	sqlite3SafetyCheckOk, @function
sqlite3SafetyCheckOk:
	addi	sp,sp,-16
	sd	ra,8(sp)
	beq	a0,zero,.L9576
	lw	a4,112(a0)
	li	a5,-1607884800
	addi	a5,a5,1687
	li	a0,1
	beq	a4,a5,.L9571
	li	a5,1266094080
	addi	a5,a5,656
	beq	a4,a5,.L9573
	li	a5,-264536064
	addi	a5,a5,-1786
	beq	a4,a5,.L9573
	call	sqlite3SafetyCheckSickOrOk.part.0
	beq	a0,zero,.L9571
.L9573:
	li	a0,21
	lla	a2,.LC58
	lla	a1,.LC57
	call	sqlite3_log@plt
	li	a0,0
.L9571:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
.L9576:
	li	a0,21
	lla	a2,.LC45
	lla	a1,.LC57
	call	sqlite3_log@plt
	li	a0,0
	j	.L9571
	.size	sqlite3SafetyCheckOk, .-sqlite3SafetyCheckOk
	.section	.rodata.str1.8
	.align	3
.LC59:
	.string	"failed memory resize %u to %u bytes"
	.section	.text.sqlite3MemRealloc,"ax",@progbits
	.align	1
	.type	sqlite3MemRealloc, @function
sqlite3MemRealloc:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s1,a1
	mv	s2,a0
	addiw	a1,a1,8
	addi	a0,a0,-8
	sd	s0,16(sp)
	sd	ra,24(sp)
	call	realloc@plt
	mv	s0,a0
	beq	a0,zero,.L9578
	sd	s1,0(a0)
	addi	s0,a0,8
.L9577:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L9578:
	lw	a2,-8(s2)
	mv	a3,s1
	lla	a1,.LC59
	li	a0,7
	call	sqlite3_log@plt
	j	.L9577
	.size	sqlite3MemRealloc, .-sqlite3MemRealloc
	.section	.rodata.str1.8
	.align	3
.LC60:
	.string	"failed to allocate %u bytes of memory"
	.section	.text.sqlite3MemMalloc,"ax",@progbits
	.align	1
	.type	sqlite3MemMalloc, @function
sqlite3MemMalloc:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a0
	addiw	a0,a0,8
	sd	s0,16(sp)
	sd	ra,24(sp)
	call	malloc@plt
	mv	s0,a0
	beq	a0,zero,.L9582
	sd	s1,0(a0)
	addi	s0,a0,8
.L9581:
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9582:
	mv	a2,s1
	lla	a1,.LC60
	li	a0,7
	call	sqlite3_log@plt
	j	.L9581
	.size	sqlite3MemMalloc, .-sqlite3MemMalloc
	.section	.rodata.str1.8
	.align	3
.LC61:
	.string	"API called with NULL prepared statement"
	.align	3
.LC62:
	.string	"API called with finalized prepared statement"
	.section	.text.vdbeSafetyNotNull,"ax",@progbits
	.align	1
	.type	vdbeSafetyNotNull, @function
vdbeSafetyNotNull:
	addi	sp,sp,-16
	sd	ra,8(sp)
	beq	a0,zero,.L9590
	ld	a5,0(a0)
	li	a0,0
	beq	a5,zero,.L9591
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
.L9590:
	li	a0,21
	lla	a1,.LC61
	call	sqlite3_log@plt
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
.L9591:
	li	a0,21
	lla	a1,.LC62
	call	sqlite3_log@plt
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
	.size	vdbeSafetyNotNull, .-vdbeSafetyNotNull
	.section	.rodata.str1.8
	.align	3
.LC63:
	.string	"bind on a busy prepared statement: [%s]"
	.section	.text.vdbeUnbind,"ax",@progbits
	.align	1
	.type	vdbeUnbind, @function
vdbeUnbind:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	mv	s0,a0
	mv	s1,a1
	call	vdbeSafetyNotNull
	bne	a0,zero,.L9614
	lw	a4,36(s0)
	li	a5,770838528
	addi	a5,a5,-605
	bne	a4,a5,.L9594
	lw	a5,52(s0)
	bge	a5,zero,.L9594
	ble	s1,zero,.L9596
	lh	a5,32(s0)
	blt	a5,s1,.L9596
	addiw	s1,s1,-1
	ld	s3,128(s0)
	mv	s2,a0
	slli	a0,s1,3
	sub	a0,a0,s1
	slli	a0,a0,3
	add	s3,s3,a0
	lhu	a4,8(s3)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L9599
	lw	a5,32(s3)
	beq	a5,zero,.L9600
.L9599:
	mv	a0,s3
	call	vdbeMemClear
.L9600:
	li	a5,1
	sh	a5,8(s3)
	ld	a5,0(s0)
	sw	zero,80(a5)
	lw	a5,268(s0)
	beq	a5,zero,.L9598
	li	a3,30
	li	a4,-2147483648
	bgt	s1,a3,.L9601
	li	a4,1
	sllw	a4,a4,s1
.L9601:
	and	a5,a5,a4
	beq	a5,zero,.L9598
	lbu	a5,189(s0)
	andi	a5,a5,-4
	ori	a5,a5,1
	sb	a5,189(s0)
.L9598:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s3,8(sp)
	mv	a0,s2
	ld	s2,16(sp)
	addi	sp,sp,48
	jr	ra
.L9594:
	ld	a0,0(s0)
	li	a5,21
	li	a1,21
	sw	a5,80(a0)
	call	sqlite3ErrorFinish
	ld	a2,232(s0)
	li	a0,21
	lla	a1,.LC63
	call	sqlite3_log@plt
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,81920
	addi	a0,a0,907
	addi	sp,sp,48
	tail	sqlite3MisuseError
.L9614:
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,81920
	addi	a0,a0,899
	addi	sp,sp,48
	tail	sqlite3MisuseError
.L9596:
	ld	a0,0(s0)
	li	a5,25
	li	a1,25
	sw	a5,80(a0)
	call	sqlite3ErrorFinish
	li	s2,25
	j	.L9598
	.size	vdbeUnbind, .-vdbeUnbind
	.section	.text.bindText,"ax",@progbits
	.align	1
	.type	bindText, @function
bindText:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	mv	s3,a0
	mv	s4,a1
	mv	s2,a2
	mv	s5,a3
	mv	s1,a4
	mv	s6,a5
	call	vdbeUnbind
	mv	s0,a0
	bne	a0,zero,.L9616
	beq	s2,zero,.L9618
	slli	a4,s4,3
	ld	a5,128(s3)
	sub	a4,a4,s4
	slli	a4,a4,3
	addi	a4,a4,-56
	add	s4,a5,a4
	mv	a3,s6
	mv	a4,s1
	mv	a2,s5
	mv	a1,s2
	mv	a0,s4
	call	sqlite3VdbeMemSetStr
	mv	s1,a0
	beq	a0,zero,.L9630
	ld	a0,0(s3)
	mv	a1,s1
	sw	s1,80(a0)
	call	sqlite3ErrorFinish
	ld	a0,0(s3)
	lbu	a5,97(a0)
	bne	a5,zero,.L9621
	li	a5,4096
	addi	a5,a5,-1014
	beq	s1,a5,.L9621
.L9622:
	lw	s0,84(a0)
	and	s0,s1,s0
	sext.w	s0,s0
.L9618:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L9616:
	addi	a5,s1,-1
	li	a4,-3
	bgtu	a5,a4,.L9618
	mv	a0,s2
	jalr	s1
	j	.L9618
.L9630:
	beq	s6,zero,.L9618
	lhu	a5,8(s4)
	andi	a5,a5,2
	beq	a5,zero,.L9618
	ld	a0,0(s3)
	lbu	a5,10(s4)
	lbu	a4,94(a0)
	beq	a4,a5,.L9618
	li	a5,1
	sw	a5,80(a0)
	li	a1,1
	call	sqlite3ErrorFinish
	ld	a0,0(s3)
	lbu	a5,97(a0)
	bne	a5,zero,.L9621
	li	s1,1
	j	.L9622
.L9621:
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	tail	apiOomError
	.size	bindText, .-bindText
	.section	.text.sqlite3_bind_blob,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_blob
	.type	sqlite3_bind_blob, @function
sqlite3_bind_blob:
	li	a5,0
	tail	bindText
	.size	sqlite3_bind_blob, .-sqlite3_bind_blob
	.section	.text.sqlite3_bind_blob64,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_blob64
	.type	sqlite3_bind_blob64, @function
sqlite3_bind_blob64:
	li	a6,-2147483648
	xori	a6,a6,-1
	bleu	a3,a6,.L9633
	mv	a5,a4
	beq	a4,zero,.L9639
	li	a4,-1
	beq	a5,a4,.L9639
	addi	sp,sp,-16
	sd	ra,8(sp)
	mv	a0,a2
	jalr	a5
	ld	ra,8(sp)
	li	a0,18
	addi	sp,sp,16
	jr	ra
.L9633:
	li	a5,0
	sext.w	a3,a3
	tail	bindText
.L9639:
	li	a0,18
	ret
	.size	sqlite3_bind_blob64, .-sqlite3_bind_blob64
	.section	.text.sqlite3_bind_text,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_text
	.type	sqlite3_bind_text, @function
sqlite3_bind_text:
	li	a5,1
	tail	bindText
	.size	sqlite3_bind_text, .-sqlite3_bind_text
	.section	.text.sqlite3_bind_text64,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_text64
	.type	sqlite3_bind_text64, @function
sqlite3_bind_text64:
	li	a6,-2147483648
	xori	a6,a6,-1
	bgtu	a3,a6,.L9654
	li	a6,4
	beq	a5,a6,.L9655
	sext.w	a3,a3
	tail	bindText
.L9655:
	li	a5,2
	sext.w	a3,a3
	tail	bindText
.L9654:
	beq	a4,zero,.L9651
	li	a5,-1
	beq	a4,a5,.L9651
	addi	sp,sp,-16
	mv	a0,a2
	sd	ra,8(sp)
	jalr	a4
	ld	ra,8(sp)
	li	a0,18
	addi	sp,sp,16
	jr	ra
.L9651:
	li	a0,18
	ret
	.size	sqlite3_bind_text64, .-sqlite3_bind_text64
	.section	.text.sqlite3_bind_double,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_double
	.type	sqlite3_bind_double, @function
sqlite3_bind_double:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s1,a0
	mv	s2,a1
	mv	s3,a2
	call	vdbeUnbind
	mv	s0,a0
	bne	a0,zero,.L9657
	mv	a2,s3
	mv	a1,s2
	mv	a0,s1
	call	sqlite3_bind_double.part.0
.L9657:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_bind_double, .-sqlite3_bind_double
	.section	.text.sqlite3_bind_int64,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_int64
	.type	sqlite3_bind_int64, @function
sqlite3_bind_int64:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s1,a0
	mv	s2,a1
	mv	s3,a2
	call	vdbeUnbind
	mv	s0,a0
	bne	a0,zero,.L9660
	mv	a2,s3
	mv	a1,s2
	mv	a0,s1
	call	sqlite3_bind_int64.part.0
.L9660:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_bind_int64, .-sqlite3_bind_int64
	.section	.text.sqlite3_bind_int,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_int
	.type	sqlite3_bind_int, @function
sqlite3_bind_int:
	tail	sqlite3_bind_int64@plt
	.size	sqlite3_bind_int, .-sqlite3_bind_int
	.section	.text.sqlite3_bind_null,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_null
	.type	sqlite3_bind_null, @function
sqlite3_bind_null:
	tail	vdbeUnbind
	.size	sqlite3_bind_null, .-sqlite3_bind_null
	.section	.text.sqlite3_bind_pointer,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_pointer
	.type	sqlite3_bind_pointer, @function
sqlite3_bind_pointer:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	mv	s5,a0
	mv	s3,a1
	mv	s4,a2
	mv	s2,a3
	mv	s1,a4
	call	vdbeUnbind
	mv	s0,a0
	bne	a0,zero,.L9665
	slli	a4,s3,3
	ld	a5,128(s5)
	sub	a4,a4,s3
	slli	a4,a4,3
	addi	a4,a4,-56
	add	a5,a5,a4
	beq	s2,zero,.L9673
	li	a4,-32768
	addi	a4,a4,1537
	sh	a4,8(a5)
	li	a4,112
	sd	s2,0(a5)
	sd	s4,16(a5)
	sb	a4,11(a5)
	beq	s1,zero,.L9674
.L9667:
	sd	s1,48(a5)
.L9668:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L9665:
	beq	s1,zero,.L9668
	mv	a0,s4
	jalr	s1
	j	.L9668
.L9674:
	lla	s1,sqlite3NoopDestructor
	j	.L9667
.L9673:
	li	a4,-32768
	addi	a4,a4,1537
	lla	s2,.LC12
	sh	a4,8(a5)
	li	a4,112
	sd	s2,0(a5)
	sd	s4,16(a5)
	sb	a4,11(a5)
	bne	s1,zero,.L9667
	j	.L9674
	.size	sqlite3_bind_pointer, .-sqlite3_bind_pointer
	.section	.text.sqlite3_bind_zeroblob,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_zeroblob
	.type	sqlite3_bind_zeroblob, @function
sqlite3_bind_zeroblob:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	mv	s3,a0
	mv	s1,a1
	mv	s2,a2
	call	vdbeUnbind
	mv	s0,a0
	beq	a0,zero,.L9678
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L9678:
	slli	a1,s1,3
	ld	a0,128(s3)
	sub	s1,a1,s1
	slli	s1,s1,3
	addi	s1,s1,-56
	add	a0,a0,s1
	mv	a1,s2
	call	sqlite3VdbeMemSetZeroBlob
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_bind_zeroblob, .-sqlite3_bind_zeroblob
	.section	.text.sqlite3_bind_value,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_value
	.type	sqlite3_bind_value, @function
sqlite3_bind_value:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a0
	mv	a0,a2
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s0,a2
	mv	s2,a1
	call	sqlite3_value_type@plt
	li	a5,3
	beq	a0,a5,.L9680
	bgt	a0,a5,.L9681
	li	a5,1
	beq	a0,a5,.L9682
	li	a5,2
	bne	a0,a5,.L9684
	ld	a2,0(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s2
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_bind_double@plt
.L9681:
	li	a5,4
	bne	a0,a5,.L9684
	lhu	a5,8(s0)
	slli	a4,a5,49
	bge	a4,zero,.L9686
	lw	a2,0(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s2
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_bind_zeroblob@plt
.L9684:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s2
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_bind_null@plt
.L9682:
	ld	a2,0(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s2
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_bind_int64@plt
.L9680:
	lbu	a5,10(s0)
	lw	a3,12(s0)
	ld	a2,16(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s2
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	li	a4,-1
	addi	sp,sp,32
	tail	bindText
.L9686:
	lw	a3,12(s0)
	ld	a2,16(s0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s2
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	li	a4,-1
	addi	sp,sp,32
	tail	sqlite3_bind_blob@plt
	.size	sqlite3_bind_value, .-sqlite3_bind_value
	.section	.text.sqlite3_bind_zeroblob64,"ax",@progbits
	.align	1
	.globl	sqlite3_bind_zeroblob64
	.type	sqlite3_bind_zeroblob64, @function
sqlite3_bind_zeroblob64:
	ld	a5,0(a0)
	lw	a4,124(a5)
	bgeu	a4,a2,.L9689
	lbu	a4,97(a5)
	bne	a4,zero,.L9693
	lw	a5,84(a5)
	li	a0,18
	and	a0,a0,a5
	sext.w	a0,a0
	ret
.L9689:
	addi	sp,sp,-16
	sext.w	a2,a2
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	sqlite3_bind_zeroblob@plt
	ld	a5,0(s0)
	lbu	a4,97(a5)
	bne	a4,zero,.L9690
	li	a4,4096
	addi	a4,a4,-1014
	bne	a0,a4,.L9691
.L9690:
	ld	s0,0(sp)
	ld	ra,8(sp)
	mv	a0,a5
	addi	sp,sp,16
	tail	apiOomError
.L9691:
	lw	a5,84(a5)
	ld	ra,8(sp)
	ld	s0,0(sp)
	and	a0,a0,a5
	sext.w	a0,a0
	addi	sp,sp,16
	jr	ra
.L9693:
	mv	a0,a5
	tail	apiOomError
	.size	sqlite3_bind_zeroblob64, .-sqlite3_bind_zeroblob64
	.section	.text.sqlite3_str_appendf,"ax",@progbits
	.align	1
	.globl	sqlite3_str_appendf
	.type	sqlite3_str_appendf, @function
sqlite3_str_appendf:
	addi	sp,sp,-80
	addi	t1,sp,32
	sd	a2,32(sp)
	mv	a2,t1
	sd	ra,24(sp)
	sd	a3,40(sp)
	sd	a4,48(sp)
	sd	a5,56(sp)
	sd	a6,64(sp)
	sd	a7,72(sp)
	sd	t1,8(sp)
	call	sqlite3_str_vappendf@plt
	ld	ra,24(sp)
	addi	sp,sp,80
	jr	ra
	.size	sqlite3_str_appendf, .-sqlite3_str_appendf
	.section	.rodata.str1.8
	.align	3
.LC64:
	.string	"%lld"
	.align	3
.LC65:
	.string	"%!.15g"
	.section	.text.sqlite3VdbeMemStringify.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemStringify.isra.0, @function
sqlite3VdbeMemStringify.isra.0:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	lw	a4,32(a0)
	li	a5,31
	mv	s0,a0
	mv	s2,a1
	ble	a4,a5,.L9711
	lhu	a5,8(a0)
	ld	s1,24(a0)
	andi	a5,a5,45
	sd	s1,16(a0)
	sh	a5,8(a0)
.L9702:
	li	a4,32
	sd	a4,16(sp)
	sd	s1,8(sp)
	sd	zero,0(sp)
	sw	zero,24(sp)
	sh	zero,28(sp)
	andi	a4,a5,4
	ld	a2,0(s0)
	bne	a4,zero,.L9712
	lla	a1,.LC65
	mv	a0,sp
	call	sqlite3_str_appendf@plt
.L9705:
	lwu	a5,24(sp)
	add	s1,s1,a5
	sb	zero,0(s1)
	ld	a0,16(s0)
	call	strlen@plt
	slli	a0,a0,34
	li	a5,1
	srli	a0,a0,34
	sb	a5,10(s0)
	sw	a0,12(s0)
	lhu	a5,8(s0)
	bne	s2,zero,.L9707
.L9710:
	ori	a5,a5,514
	sh	a5,8(s0)
	li	a0,0
.L9703:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	addi	sp,sp,64
	jr	ra
.L9707:
	andi	a5,a5,-45
	j	.L9710
.L9712:
	lla	a1,.LC64
	mv	a0,sp
	call	sqlite3_str_appendf@plt
	j	.L9705
.L9711:
	li	a2,0
	li	a1,32
	call	sqlite3VdbeMemGrow
	bne	a0,zero,.L9713
	ld	s1,16(s0)
	lhu	a5,8(s0)
	j	.L9702
.L9713:
	sb	zero,10(s0)
	li	a0,7
	j	.L9703
	.size	sqlite3VdbeMemStringify.isra.0, .-sqlite3VdbeMemStringify.isra.0
	.section	.text.valueToText,"ax",@progbits
	.align	1
	.type	valueToText, @function
valueToText:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lhu	a5,8(a0)
	mv	s0,a0
	mv	s1,a1
	andi	a4,a5,18
	beq	a4,zero,.L9715
	slli	a4,a5,49
	blt	a4,zero,.L9732
	ori	a5,a5,2
	sh	a5,8(s0)
	andi	a4,s1,8
	beq	a4,zero,.L9719
.L9735:
	ld	a4,16(s0)
	andi	a4,a4,1
	bne	a4,zero,.L9733
.L9719:
	andi	a5,a5,514
	li	a4,2
	beq	a5,a4,.L9734
.L9721:
	lbu	a5,10(s0)
	andi	s1,s1,247
	bne	a5,s1,.L9720
	ld	a0,16(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9732:
	call	sqlite3VdbeMemExpandBlob
	bne	a0,zero,.L9720
	lhu	a5,8(s0)
	andi	a4,s1,8
	ori	a5,a5,2
	sh	a5,8(s0)
	beq	a4,zero,.L9719
	j	.L9735
.L9720:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L9715:
	li	a1,0
	call	sqlite3VdbeMemStringify.isra.0
	j	.L9721
.L9734:
	mv	a0,s0
	call	vdbeMemAddTerminator
	j	.L9721
.L9733:
	mv	a0,s0
	call	sqlite3VdbeMemMakeWriteable
	bne	a0,zero,.L9720
	lhu	a5,8(s0)
	j	.L9719
	.size	valueToText, .-valueToText
	.section	.text.valueBytes,"ax",@progbits
	.align	1
	.type	valueBytes, @function
valueBytes:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	valueToText
	beq	a0,zero,.L9738
	lw	a0,12(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L9738:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	valueBytes, .-valueBytes
	.section	.text.sqlite3ValueBytes,"ax",@progbits
	.align	1
	.type	sqlite3ValueBytes, @function
sqlite3ValueBytes:
	lhu	a4,8(a0)
	mv	a5,a0
	andi	a3,a4,2
	beq	a3,zero,.L9741
	lbu	a3,10(a0)
	beq	a3,a1,.L9751
.L9741:
	andi	a3,a4,16
	beq	a3,zero,.L9743
	slli	a3,a4,49
	lw	a0,12(a5)
	bge	a3,zero,.L9742
	lw	a5,0(a5)
	addw	a0,a5,a0
	ret
.L9743:
	andi	a4,a4,1
	li	a0,0
	bne	a4,zero,.L9742
	mv	a0,a5
	tail	valueBytes
.L9742:
	ret
.L9751:
	lw	a0,12(a0)
	ret
	.size	sqlite3ValueBytes, .-sqlite3ValueBytes
	.section	.text.sqlite3_value_bytes,"ax",@progbits
	.align	1
	.globl	sqlite3_value_bytes
	.type	sqlite3_value_bytes, @function
sqlite3_value_bytes:
	li	a1,1
	tail	sqlite3ValueBytes
	.size	sqlite3_value_bytes, .-sqlite3_value_bytes
	.section	.text.sqlite3_column_bytes,"ax",@progbits
	.align	1
	.globl	sqlite3_column_bytes
	.type	sqlite3_column_bytes, @function
sqlite3_column_bytes:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	columnMem
	call	sqlite3_value_bytes@plt
	mv	s0,a0
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_bytes, .-sqlite3_column_bytes
	.section	.text.groupConcatInverse,"ax",@progbits
	.align	1
	.type	groupConcatInverse, @function
groupConcatInverse:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s3,8(sp)
	mv	s1,a0
	ld	a0,0(a2)
	mv	s0,a2
	mv	s2,a1
	call	sqlite3_value_type@plt
	li	a5,5
	beq	a0,a5,.L9755
	mv	a0,s1
	li	a1,32
	call	sqlite3_aggregate_context@plt
	mv	s1,a0
	beq	a0,zero,.L9755
	ld	a0,0(s0)
	call	sqlite3_value_bytes@plt
	li	a5,2
	mv	s3,a0
	addiw	a1,a0,1
	beq	s2,a5,.L9768
.L9760:
	lw	a2,24(s1)
	bgt	a2,a1,.L9761
	sw	zero,24(s1)
.L9762:
	sw	zero,20(s1)
.L9755:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L9761:
	ld	a0,8(s1)
	subw	a2,a2,a1
	sw	a2,24(s1)
	slli	a2,a2,32
	srli	a2,a2,32
	add	a1,a0,a1
	call	memmove@plt
	lw	a5,24(s1)
	beq	a5,zero,.L9762
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L9768:
	ld	a0,8(s0)
	call	sqlite3_value_bytes@plt
	addw	a1,s3,a0
	j	.L9760
	.size	groupConcatInverse, .-groupConcatInverse
	.section	.text.sqlite3_value_bytes16,"ax",@progbits
	.align	1
	.globl	sqlite3_value_bytes16
	.type	sqlite3_value_bytes16, @function
sqlite3_value_bytes16:
	li	a1,2
	tail	sqlite3ValueBytes
	.size	sqlite3_value_bytes16, .-sqlite3_value_bytes16
	.section	.text.sqlite3_column_bytes16,"ax",@progbits
	.align	1
	.globl	sqlite3_column_bytes16
	.type	sqlite3_column_bytes16, @function
sqlite3_column_bytes16:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	columnMem
	call	sqlite3_value_bytes16@plt
	mv	s0,a0
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_bytes16, .-sqlite3_column_bytes16
	.section	.text.sqlite3ValueText,"ax",@progbits
	.align	1
	.type	sqlite3ValueText, @function
sqlite3ValueText:
	beq	a0,zero,.L9776
	lhu	a5,8(a0)
	li	a4,514
	andi	a3,a5,514
	beq	a3,a4,.L9777
.L9774:
	andi	a5,a5,1
	bne	a5,zero,.L9776
	tail	valueToText
.L9776:
	li	a0,0
	ret
.L9777:
	lbu	a4,10(a0)
	bne	a4,a1,.L9774
	ld	a0,16(a0)
	ret
	.size	sqlite3ValueText, .-sqlite3ValueText
	.section	.text.sqlite3_value_text,"ax",@progbits
	.align	1
	.globl	sqlite3_value_text
	.type	sqlite3_value_text, @function
sqlite3_value_text:
	li	a1,1
	tail	sqlite3ValueText
	.size	sqlite3_value_text, .-sqlite3_value_text
	.section	.text.getTextArg,"ax",@progbits
	.align	1
	.type	getTextArg, @function
getTextArg:
	lw	a5,4(a0)
	lw	a4,0(a0)
	ble	a4,a5,.L9780
	ld	a4,8(a0)
	addiw	a3,a5,1
	slli	a5,a5,3
	sw	a3,4(a0)
	add	a5,a4,a5
	ld	a0,0(a5)
	tail	sqlite3_value_text@plt
.L9780:
	li	a0,0
	ret
	.size	getTextArg, .-getTextArg
	.section	.text.sqlite3_value_blob,"ax",@progbits
	.align	1
	.globl	sqlite3_value_blob
	.type	sqlite3_value_blob, @function
sqlite3_value_blob:
	lhu	a5,8(a0)
	andi	a4,a5,18
	beq	a4,zero,.L9782
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	slli	a4,a5,49
	mv	s0,a0
	blt	a4,zero,.L9796
	lw	a4,12(s0)
	ori	a5,a5,16
	sh	a5,8(s0)
	bne	a4,zero,.L9797
.L9786:
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L9796:
	call	sqlite3VdbeMemExpandBlob
	bne	a0,zero,.L9786
	lhu	a5,8(s0)
	lw	a4,12(s0)
	ori	a5,a5,16
	sh	a5,8(s0)
	beq	a4,zero,.L9786
.L9797:
	ld	a0,16(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L9782:
	tail	sqlite3_value_text@plt
	.size	sqlite3_value_blob, .-sqlite3_value_blob
	.section	.text.statPush,"ax",@progbits
	.align	1
	.type	statPush, @function
statPush:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	ld	a0,0(a2)
	mv	s1,a2
	call	sqlite3_value_blob@plt
	mv	s0,a0
	ld	a0,8(s1)
	call	sqlite3_value_int@plt
	lw	a5,0(s0)
	beq	a5,zero,.L9799
	ble	a0,zero,.L9806
	addiw	a2,a0,-1
	slli	a2,a2,32
	srli	a2,a2,32
	addi	a2,a2,1
	slli	a2,a2,2
	li	a4,0
.L9805:
	ld	a5,24(s0)
	add	a5,a5,a4
	lw	a3,0(a5)
	addi	a4,a4,4
	addiw	a3,a3,1
	sw	a3,0(a5)
	bne	a2,a4,.L9805
.L9806:
	lw	a5,8(s0)
	li	a2,1
	ble	a5,a0,.L9813
.L9801:
	ld	a5,32(s0)
	slli	a3,a0,2
	addiw	a0,a0,1
	add	a5,a5,a3
	lw	a4,0(a5)
	addiw	a4,a4,1
	sw	a4,0(a5)
	ld	a5,24(s0)
	add	a5,a5,a3
	sw	a2,0(a5)
	lw	a5,8(s0)
	bgt	a5,a0,.L9801
.L9813:
	lw	a5,0(s0)
.L9803:
	addiw	a5,a5,1
	sw	a5,0(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L9799:
	lw	a4,8(s0)
	ble	a4,zero,.L9803
	li	a5,0
	li	a2,1
.L9804:
	ld	a4,24(s0)
	slli	a3,a5,2
	addiw	a5,a5,1
	add	a4,a4,a3
	sw	a2,0(a4)
	lw	a4,8(s0)
	bgt	a4,a5,.L9804
	j	.L9813
	.size	statPush, .-statPush
	.section	.rodata.str1.8
	.align	3
.LC66:
	.string	"%llu"
	.align	3
.LC67:
	.string	" %llu"
	.section	.text.statGet,"ax",@progbits
	.align	1
	.type	statGet, @function
statGet:
	addi	sp,sp,-64
	sd	s2,32(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	mv	s2,a0
	ld	a0,0(a2)
	call	sqlite3_value_blob@plt
	lw	a5,12(a0)
	mv	s6,a0
	addiw	a5,a5,1
	slliw	a0,a5,1
	addw	a0,a0,a5
	slliw	a0,a0,3
	addw	a0,a0,a5
	call	sqlite3MallocZero
	beq	a0,zero,.L9820
	lwu	a3,0(s6)
	mv	s1,a0
	mv	a1,a0
	lla	a2,.LC66
	li	a0,24
	call	sqlite3_snprintf@plt
	mv	a0,s1
	call	strlen@plt
	li	s0,1073741824
	addi	s0,s0,-1
	lw	a5,12(s6)
	and	s4,a0,s0
	sext.w	s4,s4
	add	s4,s1,s4
	ble	a5,zero,.L9816
	li	s5,0
	lla	s3,.LC67
.L9817:
	ld	a5,32(s6)
	slli	a4,s5,2
	lwu	a3,0(s6)
	add	a5,a5,a4
	lw	a5,0(a5)
	addi	a3,a3,-1
	mv	a1,s4
	addiw	a5,a5,1
	slli	a5,a5,32
	srli	a5,a5,32
	add	a3,a3,a5
	divu	a3,a3,a5
	mv	a2,s3
	li	a0,24
	addiw	s5,s5,1
	call	sqlite3_snprintf@plt
	mv	a0,s4
	call	strlen@plt
	lw	a4,12(s6)
	and	a5,a0,s0
	sext.w	a5,a5
	add	s4,s4,a5
	bgt	a4,s5,.L9817
.L9816:
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a1,s1
	mv	a0,s2
	ld	s1,40(sp)
	ld	s2,32(sp)
	la	a3,sqlite3_free
	li	a2,-1
	addi	sp,sp,64
	tail	sqlite3_result_text@plt
.L9820:
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a0,s2
	ld	s2,32(sp)
	addi	sp,sp,64
	tail	sqlite3_result_error_nomem@plt
	.size	statGet, .-statGet
	.section	.text.sqlite3_column_blob,"ax",@progbits
	.align	1
	.globl	sqlite3_column_blob
	.type	sqlite3_column_blob, @function
sqlite3_column_blob:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	columnMem
	call	sqlite3_value_blob@plt
	mv	s0,a0
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_blob, .-sqlite3_column_blob
	.section	.text.hexFunc,"ax",@progbits
	.align	1
	.type	hexFunc, @function
hexFunc:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s1,a0
	ld	a0,0(a2)
	mv	s2,a2
	call	sqlite3_value_blob@plt
	mv	s0,a0
	ld	a0,0(s2)
	call	sqlite3_value_bytes@plt
	slli	a1,a0,1
	mv	s2,a0
	addi	a1,a1,1
	mv	a0,s1
	call	contextMalloc
	beq	a0,zero,.L9823
	mv	a1,a0
	ble	s2,zero,.L9827
	addiw	a7,s2,-1
	slli	a7,a7,32
	srli	a7,a7,32
	addi	a7,a7,1
	slli	a7,a7,1
	add	a7,a0,a7
	mv	a4,a0
	lla	a6,.LANCHOR4
.L9826:
	lbu	a5,0(s0)
	addi	a4,a4,2
	addi	s0,s0,1
	srli	a3,a5,4
	andi	a5,a5,15
	add	a3,a6,a3
	add	a5,a6,a5
	lbu	a3,-696(a3)
	lbu	a5,-696(a5)
	sb	a3,-2(a4)
	sb	a5,-1(a4)
	bne	a7,a4,.L9826
.L9825:
	sb	zero,0(a4)
	ld	s0,16(sp)
	ld	ra,24(sp)
	slliw	a2,s2,1
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	la	a3,sqlite3_free
	addi	sp,sp,32
	tail	sqlite3_result_text@plt
.L9823:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L9827:
	mv	a4,a0
	j	.L9825
	.size	hexFunc, .-hexFunc
	.section	.rodata.str1.8
	.align	3
.LC68:
	.string	"Invalid argument to rtreedepth()"
	.section	.text.rtreedepth,"ax",@progbits
	.align	1
	.type	rtreedepth, @function
rtreedepth:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_type@plt
	li	a5,4
	beq	a0,a5,.L9831
.L9832:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	li	a2,-1
	lla	a1,.LC68
	addi	sp,sp,32
	tail	sqlite3_result_error@plt
.L9831:
	ld	a0,0(s0)
	call	sqlite3_value_bytes@plt
	li	a5,1
	ble	a0,a5,.L9832
	ld	a0,0(s0)
	call	sqlite3_value_blob@plt
	lbu	a5,0(a0)
	lbu	a1,1(a0)
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	slliw	a5,a5,8
	addw	a1,a5,a1
	addi	sp,sp,32
	tail	sqlite3_result_int@plt
	.size	rtreedepth, .-rtreedepth
	.section	.rodata.str1.8
	.align	3
.LC69:
	.string	"LIKE or GLOB pattern too complex"
	.align	3
.LC70:
	.string	"ESCAPE expression must be a single character"
	.section	.text.likeFunc,"ax",@progbits
	.align	1
	.type	likeFunc, @function
likeFunc:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	mv	s0,a2
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	mv	s1,a0
	mv	s4,a1
	call	sqlite3_context_db_handle@plt
	mv	s2,a0
	mv	a0,s1
	call	sqlite3_user_data@plt
	mv	s3,a0
	ld	a0,0(s0)
	call	sqlite3_value_bytes@plt
	lw	a5,156(s2)
	blt	a5,a0,.L9866
	li	a5,3
	beq	s4,a5,.L9867
	lbu	s2,2(s3)
.L9845:
	ld	a0,0(s0)
	call	sqlite3_value_text@plt
	mv	a5,a0
	ld	a0,8(s0)
	mv	s0,a5
	call	sqlite3_value_text@plt
	beq	a0,zero,.L9834
	beq	s0,zero,.L9834
	mv	a1,a0
	mv	a3,s2
	mv	a2,s3
	mv	a0,s0
	call	patternCompare
	seqz	a1,a0
	mv	a0,s1
	call	sqlite3_result_int@plt
.L9834:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L9866:
	mv	a0,s1
	li	a2,-1
	lla	a1,.LC69
	call	sqlite3_result_error@plt
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L9867:
	ld	a0,16(s0)
	call	sqlite3_value_text@plt
	sd	a0,8(sp)
	mv	a5,a0
	beq	a0,zero,.L9834
	lbu	a4,0(a0)
	beq	a4,zero,.L9839
	li	a3,-1
	beq	a0,a3,.L9839
	li	a1,0
	li	a0,191
	li	a2,128
	li	a6,-1
.L9843:
	lbu	a3,1(a5)
	addi	a5,a5,1
	bgtu	a4,a0,.L9868
.L9847:
	mv	a4,a3
.L9840:
	addiw	a1,a1,1
	beq	a4,zero,.L9842
	bne	a5,a6,.L9843
.L9842:
	li	a5,1
	bne	a1,a5,.L9839
	addi	a0,sp,8
	call	sqlite3Utf8Read
	sext.w	s2,a0
	j	.L9845
.L9868:
	andi	a4,a3,192
	bne	a4,a2,.L9847
.L9841:
	lbu	a4,1(a5)
	addi	a5,a5,1
	andi	a3,a4,192
	beq	a3,a2,.L9841
	j	.L9840
.L9839:
	li	a2,-1
	lla	a1,.LC70
	mv	a0,s1
	call	sqlite3_result_error@plt
	j	.L9834
	.size	likeFunc, .-likeFunc
	.section	.text.sqlite3_column_text,"ax",@progbits
	.align	1
	.globl	sqlite3_column_text
	.type	sqlite3_column_text, @function
sqlite3_column_text:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	mv	s1,a0
	call	columnMem
	call	sqlite3_value_text@plt
	mv	s0,a0
	mv	a0,s1
	call	columnMallocFailure
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3_column_text, .-sqlite3_column_text
	.section	.text.columnName.isra.0,"ax",@progbits
	.align	1
	.type	columnName.isra.0, @function
columnName.isra.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s3,8(sp)
	mv	s0,a1
	ld	s3,0(a0)
	mv	s1,a0
	mv	s2,a2
	call	sqlite3_column_count@plt
	ble	a0,s0,.L9879
	blt	s0,zero,.L9879
	mulw	a2,a0,s2
	ld	a0,152(s1)
	addw	a1,a2,s0
	slli	a5,a1,3
	sub	a1,a5,a1
	slli	a1,a1,3
	add	a0,a0,a1
	call	sqlite3_value_text@plt
	lbu	a5,97(s3)
	beq	a5,zero,.L9871
	lw	a5,196(s3)
	beq	a5,zero,.L9880
.L9879:
	li	a0,0
.L9871:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L9880:
	lw	a5,360(s3)
	sb	zero,97(s3)
	sw	zero,352(s3)
	addiw	a5,a5,-1
	sw	a5,360(s3)
	j	.L9879
	.size	columnName.isra.0, .-columnName.isra.0
	.section	.text.sqlite3_column_name,"ax",@progbits
	.align	1
	.globl	sqlite3_column_name
	.type	sqlite3_column_name, @function
sqlite3_column_name:
	li	a2,0
	tail	columnName.isra.0
	.size	sqlite3_column_name, .-sqlite3_column_name
	.section	.text.sqlite3_column_decltype,"ax",@progbits
	.align	1
	.globl	sqlite3_column_decltype
	.type	sqlite3_column_decltype, @function
sqlite3_column_decltype:
	li	a2,1
	tail	columnName.isra.0
	.size	sqlite3_column_decltype, .-sqlite3_column_decltype
	.section	.text.sqlite3_column_database_name,"ax",@progbits
	.align	1
	.globl	sqlite3_column_database_name
	.type	sqlite3_column_database_name, @function
sqlite3_column_database_name:
	li	a2,2
	tail	columnName.isra.0
	.size	sqlite3_column_database_name, .-sqlite3_column_database_name
	.section	.text.sqlite3_column_table_name,"ax",@progbits
	.align	1
	.globl	sqlite3_column_table_name
	.type	sqlite3_column_table_name, @function
sqlite3_column_table_name:
	li	a2,3
	tail	columnName.isra.0
	.size	sqlite3_column_table_name, .-sqlite3_column_table_name
	.section	.text.sqlite3_column_origin_name,"ax",@progbits
	.align	1
	.globl	sqlite3_column_origin_name
	.type	sqlite3_column_origin_name, @function
sqlite3_column_origin_name:
	li	a2,4
	tail	columnName.isra.0
	.size	sqlite3_column_origin_name, .-sqlite3_column_origin_name
	.section	.text.substrFunc,"ax",@progbits
	.align	1
	.type	substrFunc, @function
substrFunc:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s5,24(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	mv	s2,a0
	ld	a0,8(a2)
	li	s0,5
	mv	s3,a2
	mv	s5,a1
	call	sqlite3_value_type@plt
	beq	a0,s0,.L9886
	li	a5,3
	beq	s5,a5,.L9889
.L9893:
	ld	a0,0(s3)
	call	sqlite3_value_type@plt
	mv	s6,a0
	ld	a0,8(s3)
	call	sqlite3_value_int@plt
	li	a5,4
	mv	s4,a0
	mv	s1,a0
	beq	s6,a5,.L9960
	ld	a0,0(s3)
	call	sqlite3_value_text@plt
	mv	s0,a0
	beq	a0,zero,.L9886
	li	s7,0
	blt	s4,zero,.L9961
.L9894:
	li	a5,3
	beq	s5,a5,.L9962
	mv	a0,s2
	call	sqlite3_context_db_handle@plt
	lw	a2,124(a0)
	li	a5,0
.L9899:
	blt	s4,zero,.L9963
	beq	s4,zero,.L9903
	addi	s1,s4,-1
.L9901:
	beq	a5,zero,.L9904
	sub	a5,s1,a2
	blt	a5,zero,.L9964
	mv	s1,a5
.L9904:
	li	a5,4
	beq	s6,a5,.L9965
	lbu	a5,0(s0)
	beq	a5,zero,.L9929
	beq	s1,zero,.L9910
	li	a1,191
	li	a3,128
.L9913:
	lbu	a4,1(s0)
	addi	s0,s0,1
	bgtu	a5,a1,.L9966
.L9928:
	mv	a5,a4
	addi	s1,s1,-1
	beq	a5,zero,.L9929
.L9968:
	bne	s1,zero,.L9913
.L9910:
	mv	s1,a2
.L9906:
	beq	s1,zero,.L9929
	mv	a2,s0
	li	a1,191
	li	a3,128
.L9917:
	lbu	a4,1(a2)
	addi	a2,a2,1
	bgtu	a5,a1,.L9967
.L9931:
	mv	a5,a4
.L9914:
	addi	s1,s1,-1
	beq	a5,zero,.L9958
	bne	s1,zero,.L9917
.L9958:
	sub	a2,a2,s0
.L9907:
	mv	a1,s0
	ld	s0,64(sp)
	ld	ra,72(sp)
	ld	s1,56(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	mv	a0,s2
	ld	s2,48(sp)
	li	a4,1
	li	a3,-1
	addi	sp,sp,80
	tail	sqlite3_result_text64@plt
.L9960:
	ld	a0,0(s3)
	call	sqlite3_value_bytes@plt
	mv	s7,a0
	ld	a0,0(s3)
	call	sqlite3_value_blob@plt
	mv	s0,a0
	bne	a0,zero,.L9894
.L9886:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	jr	ra
.L9889:
	ld	a0,16(s3)
	call	sqlite3_value_type@plt
	bne	a0,s0,.L9893
	j	.L9886
.L9963:
	add	s1,s4,s7
	bge	s1,zero,.L9901
	add	a2,a2,s1
	not	a4,a2
	srai	a4,a4,63
	and	a2,a2,a4
	li	s1,0
	j	.L9901
.L9966:
	andi	a5,a4,192
	bne	a5,a3,.L9928
.L9912:
	lbu	a5,1(s0)
	addi	s0,s0,1
	andi	a4,a5,192
	beq	a4,a3,.L9912
	addi	s1,s1,-1
	bne	a5,zero,.L9968
.L9929:
	li	a2,0
	j	.L9907
.L9962:
	ld	a0,16(s3)
	call	sqlite3_value_int@plt
	mv	a2,a0
	li	a5,0
	bge	a0,zero,.L9899
	neg	a2,a0
	li	a5,1
	j	.L9899
.L9903:
	sgt	a4,a2,zero
	sub	a2,a2,a4
	j	.L9901
.L9967:
	andi	a5,a4,192
	bne	a5,a3,.L9931
.L9915:
	lbu	a5,1(a2)
	addi	a2,a2,1
	andi	a4,a5,192
	beq	a4,a3,.L9915
	j	.L9914
.L9964:
	li	a5,4
	beq	s6,a5,.L9926
	lbu	a5,0(s0)
	bne	a5,zero,.L9906
	li	a2,0
	j	.L9907
.L9961:
	lbu	a4,0(a0)
	beq	a4,zero,.L9894
	mv	a5,a0
	li	a1,191
	lbu	a3,1(a5)
	li	a2,128
	addi	a5,a5,1
	bgtu	a4,a1,.L9969
.L9923:
	mv	a4,a3
.L9895:
	addiw	s7,s7,1
	beq	a4,zero,.L9894
	lbu	a3,1(a5)
	addi	a5,a5,1
	bleu	a4,a1,.L9923
.L9969:
	andi	a4,a3,192
	bne	a4,a2,.L9923
.L9896:
	lbu	a4,1(a5)
	addi	a5,a5,1
	andi	a3,a4,192
	beq	a3,a2,.L9896
	j	.L9895
.L9965:
	add	a5,s1,a2
	add	s0,s0,s1
.L9905:
	bge	s7,a5,.L9918
	sub	a2,s7,s1
	not	a5,a2
	srai	a5,a5,63
	and	a2,a2,a5
.L9918:
	mv	a1,s0
	ld	s0,64(sp)
	ld	ra,72(sp)
	ld	s1,56(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	mv	a0,s2
	ld	s2,48(sp)
	li	a3,-1
	addi	sp,sp,80
	tail	sqlite3_result_blob64@plt
.L9926:
	mv	a5,s1
	mv	a2,s1
	li	s1,0
	j	.L9905
	.size	substrFunc, .-substrFunc
	.section	.rodata.str1.8
	.align	3
.LC71:
	.string	"%!.20e"
	.section	.text.quoteFunc,"ax",@progbits
	.align	1
	.type	quoteFunc, @function
quoteFunc:
	addi	sp,sp,-112
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	ra,104(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	mv	s1,a0
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_type@plt
	li	a5,3
	beq	a0,a5,.L9971
	bgt	a0,a5,.L9972
	li	a5,1
	beq	a0,a5,.L9973
	li	a5,2
	bne	a0,a5,.L9975
	ld	a0,0(s0)
	addi	s2,sp,8
	call	sqlite3_value_double@plt
	mv	a3,a0
	lla	a2,.LC65
	mv	a1,s2
	mv	s0,a0
	li	a0,50
	call	sqlite3_snprintf@plt
	li	a3,1
	li	a2,20
	mv	a1,sp
	mv	a0,s2
	call	sqlite3Atoi64
	ld	a5,0(sp)
	bne	a5,s0,.L10003
.L9977:
	li	a3,-1
	li	a2,-1
	mv	a1,s2
	mv	a0,s1
	call	sqlite3_result_text@plt
.L9970:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	addi	sp,sp,112
	jr	ra
.L9972:
	li	a5,4
	bne	a0,a5,.L9975
	ld	a0,0(s0)
	call	sqlite3_value_blob@plt
	mv	a4,a0
	ld	a0,0(s0)
	mv	s0,a4
	call	sqlite3_value_bytes@plt
	addi	a1,a0,2
	mv	s3,a0
	slli	a1,a1,1
	mv	a0,s1
	call	contextMalloc
	mv	s2,a0
	beq	a0,zero,.L9970
	ble	s3,zero,.L10004
	slliw	s3,s3,1
	mv	a4,s0
	sext.w	a0,s3
	li	a3,0
	lla	a1,.LANCHOR4
.L9981:
	lbu	a5,0(a4)
	add	a2,s2,a3
	addi	a4,a4,1
	srli	a5,a5,4
	add	a5,a1,a5
	lbu	a5,-696(a5)
	addiw	a3,a3,2
	sb	a5,2(a2)
	lbu	a5,-1(a4)
	andi	a5,a5,15
	add	a5,a1,a5
	lbu	a5,-696(a5)
	sb	a5,3(a2)
	bne	a0,a3,.L9981
.L9982:
	add	s3,s2,s3
	li	a5,39
	sb	a5,2(s3)
	sb	zero,3(s3)
	li	a4,88
	sb	a4,0(s2)
	sb	a5,1(s2)
	mv	a1,s2
	mv	a0,s1
	li	a3,-1
	li	a2,-1
	call	sqlite3_result_text@plt
	mv	a0,s2
	call	sqlite3_free@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	addi	sp,sp,112
	jr	ra
.L10003:
	mv	a3,s0
	lla	a2,.LC71
	mv	a1,s2
	li	a0,50
	call	sqlite3_snprintf@plt
	j	.L9977
.L9971:
	ld	a0,0(s0)
	call	sqlite3_value_text@plt
	mv	s0,a0
	beq	a0,zero,.L9970
	lbu	a4,0(a0)
	beq	a4,zero,.L9991
	li	a3,0
	li	a1,0
.L9986:
	addiw	a1,a1,1
	add	a2,s0,a1
	addi	a5,a4,-39
	lbu	a4,0(a2)
	seqz	a5,a5
	add	a3,a3,a5
	bne	a4,zero,.L9986
	add	a1,a1,a3
	addi	a1,a1,3
.L9984:
	mv	a0,s1
	call	contextMalloc
	mv	a1,a0
	beq	a0,zero,.L9970
	li	a5,39
	sb	a5,0(a0)
	lbu	a5,0(s0)
	beq	a5,zero,.L9987
	mv	a3,s0
	li	a2,1
	li	a4,0
	li	a6,39
	j	.L9989
.L9992:
	addiw	a4,a4,1
	add	a3,s0,a4
	mv	a2,a5
	lbu	a5,0(a3)
	beq	a5,zero,.L10005
.L9989:
	add	a0,a1,a2
	sb	a5,0(a0)
	lbu	a3,0(a3)
	addiw	a5,a2,1
	add	a0,a1,a5
	bne	a3,a6,.L9992
	addiw	a4,a4,1
	sb	a6,0(a0)
	add	a3,s0,a4
	lbu	a5,0(a3)
	addiw	a2,a2,2
	add	a0,a1,a2
	bne	a5,zero,.L9989
.L10005:
	addiw	a2,a2,1
	mv	a5,a2
.L9990:
	li	a4,39
	sb	a4,0(a0)
	add	a5,a1,a5
	mv	a0,s1
	sb	zero,0(a5)
	la	a3,sqlite3_free
	call	sqlite3_result_text@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	addi	sp,sp,112
	jr	ra
.L9973:
	ld	a1,0(s0)
	mv	a0,s1
	call	sqlite3_result_value@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	addi	sp,sp,112
	jr	ra
.L9975:
	mv	a0,s1
	li	a3,0
	li	a2,4
	lla	a1,.LC45
	call	sqlite3_result_text@plt
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	addi	sp,sp,112
	jr	ra
.L9991:
	li	a1,3
	j	.L9984
.L10004:
	slliw	s3,s3,1
	j	.L9982
.L9987:
	addi	a0,a0,1
	li	a2,2
	li	a5,2
	j	.L9990
	.size	quoteFunc, .-quoteFunc
	.section	.text.errlogFunc,"ax",@progbits
	.align	1
	.type	errlogFunc, @function
errlogFunc:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_int@plt
	mv	a5,a0
	ld	a0,8(s0)
	mv	s0,a5
	call	sqlite3_value_text@plt
	mv	a2,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	lla	a1,.LC50
	addi	sp,sp,16
	tail	sqlite3_log@plt
	.size	errlogFunc, .-errlogFunc
	.section	.text.lowerFunc,"ax",@progbits
	.align	1
	.type	lowerFunc, @function
lowerFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	mv	s2,a0
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_text@plt
	mv	a5,a0
	ld	a0,0(s0)
	mv	s0,a5
	call	sqlite3_value_bytes@plt
	beq	s0,zero,.L10008
	addi	a1,a0,1
	mv	s1,a0
	mv	a0,s2
	call	contextMalloc
	mv	a1,a0
	beq	a0,zero,.L10008
	ble	s1,zero,.L10012
	addiw	a2,s1,-1
	slli	a2,a2,32
	addi	a4,s0,1
	srli	a2,a2,32
	mv	a5,s0
	mv	a3,a0
	add	a2,a4,a2
	lla	a6,.LANCHOR2
.L10013:
	lbu	a4,0(a5)
	addi	a3,a3,1
	addi	a5,a5,1
	add	a4,a6,a4
	lbu	a4,320(a4)
	sb	a4,-1(a3)
	bne	a5,a2,.L10013
.L10012:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a2,s1
	mv	a0,s2
	ld	s1,8(sp)
	ld	s2,0(sp)
	la	a3,sqlite3_free
	addi	sp,sp,32
	tail	sqlite3_result_text@plt
.L10008:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	lowerFunc, .-lowerFunc
	.section	.text.upperFunc,"ax",@progbits
	.align	1
	.type	upperFunc, @function
upperFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	mv	s1,a0
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_text@plt
	mv	a4,a0
	ld	a0,0(s0)
	mv	s0,a4
	call	sqlite3_value_bytes@plt
	beq	s0,zero,.L10019
	addi	a1,a0,1
	mv	s2,a0
	mv	a0,s1
	call	contextMalloc
	mv	a1,a0
	beq	a0,zero,.L10019
	ble	s2,zero,.L10023
	addiw	a2,s2,-1
	slli	a2,a2,32
	addi	a5,s0,1
	srli	a2,a2,32
	mv	a4,s0
	mv	a3,a0
	add	a2,a5,a2
	lla	a7,.LANCHOR2
.L10024:
	lbu	a6,0(a4)
	addi	a3,a3,1
	addi	a4,a4,1
	add	a5,a7,a6
	lbu	a5,64(a5)
	andi	a5,a5,32
	not	a5,a5
	and	a5,a5,a6
	sb	a5,-1(a3)
	bne	a2,a4,.L10024
.L10023:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a2,s2
	mv	a0,s1
	ld	s2,0(sp)
	ld	s1,8(sp)
	la	a3,sqlite3_free
	addi	sp,sp,32
	tail	sqlite3_result_text@plt
.L10019:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	upperFunc, .-upperFunc
	.section	.text.unicodeFunc,"ax",@progbits
	.align	1
	.type	unicodeFunc, @function
unicodeFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	mv	s0,a0
	ld	a0,0(a2)
	sd	ra,24(sp)
	call	sqlite3_value_text@plt
	sd	a0,8(sp)
	beq	a0,zero,.L10030
	lbu	a5,0(a0)
	bne	a5,zero,.L10039
.L10030:
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L10039:
	addi	a0,sp,8
	call	sqlite3Utf8Read
	sext.w	a1,a0
	mv	a0,s0
	call	sqlite3_result_int@plt
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	unicodeFunc, .-unicodeFunc
	.section	.text.instrFunc,"ax",@progbits
	.align	1
	.type	instrFunc, @function
instrFunc:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	mv	s2,a0
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_type@plt
	mv	s3,a0
	ld	a0,8(s0)
	call	sqlite3_value_type@plt
	li	a5,5
	beq	s3,a5,.L10040
	mv	s4,a0
	beq	a0,a5,.L10040
	ld	a0,0(s0)
	call	sqlite3_value_bytes@plt
	mv	s1,a0
	ld	a0,8(s0)
	call	sqlite3_value_bytes@plt
	mv	s6,a0
	ble	a0,zero,.L10051
	li	a5,4
	ld	a0,0(s0)
	bne	s3,a5,.L10045
	bne	s4,s3,.L10045
	call	sqlite3_value_blob@plt
	mv	a5,a0
	ld	a0,8(s0)
	mv	s0,a5
	li	s3,0
	call	sqlite3_value_blob@plt
	mv	s8,a0
.L10046:
	beq	s8,zero,.L10040
	beq	s1,zero,.L10044
	beq	s0,zero,.L10040
	lbu	s7,0(s8)
	li	s5,1
	li	s4,128
	blt	s1,s6,.L10053
	lbu	a5,0(s0)
	beq	a5,s7,.L10071
.L10050:
	addw	a3,s1,s0
	mv	a5,s0
	addiw	s5,s5,1
	addiw	s1,a3,-1
	j	.L10049
.L10072:
	lbu	a4,0(a5)
	andi	a4,a4,192
	bne	a4,s4,.L10048
.L10049:
	subw	a3,s1,a5
	addi	a5,a5,1
	bne	s3,zero,.L10072
.L10048:
	bgt	s6,a3,.L10053
	mv	s0,a5
	lbu	a5,0(s0)
	mv	s1,a3
	bne	a5,s7,.L10050
.L10071:
	mv	a2,s6
	mv	a1,s8
	mv	a0,s0
	call	memcmp@plt
	bne	a0,zero,.L10050
	bgt	s6,s1,.L10053
	mv	s1,s5
.L10044:
	ld	s0,64(sp)
	ld	ra,72(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	mv	a1,s1
	mv	a0,s2
	ld	s1,56(sp)
	ld	s2,48(sp)
	addi	sp,sp,80
	tail	sqlite3_result_int@plt
.L10040:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
.L10045:
	call	sqlite3_value_text@plt
	mv	a5,a0
	ld	a0,8(s0)
	mv	s0,a5
	li	s3,1
	call	sqlite3_value_text@plt
	mv	s8,a0
	j	.L10046
.L10051:
	li	s1,1
	j	.L10044
.L10053:
	li	s1,0
	j	.L10044
	.size	instrFunc, .-instrFunc
	.section	.text.lengthFunc,"ax",@progbits
	.align	1
	.type	lengthFunc, @function
lengthFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	s1,a0
	ld	a0,0(a2)
	mv	s0,a2
	call	sqlite3_value_type@plt
	li	a5,3
	beq	a0,a5,.L10074
	ble	a0,a5,.L10089
	li	a5,4
	bne	a0,a5,.L10076
.L10077:
	ld	a0,0(s0)
	call	sqlite3_value_bytes@plt
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,a0
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_result_int@plt
.L10089:
	addiw	a5,a0,-1
	li	a4,1
	bleu	a5,a4,.L10077
.L10076:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_result_null@plt
.L10074:
	ld	a0,0(s0)
	call	sqlite3_value_text@plt
	mv	a1,a0
	beq	a0,zero,.L10073
	lbu	a5,0(a0)
	mv	a2,a0
	li	a3,191
	li	a0,128
.L10080:
	beq	a5,zero,.L10090
.L10083:
	addi	a1,a1,1
	lbu	a4,0(a1)
	bgtu	a5,a3,.L10091
.L10084:
	mv	a5,a4
	bne	a5,zero,.L10083
.L10090:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	subw	a1,a1,a2
	addi	sp,sp,32
	tail	sqlite3_result_int@plt
.L10091:
	andi	a5,a4,192
	bne	a5,a0,.L10084
.L10082:
	lbu	a5,1(a1)
	addi	a2,a2,1
	addi	a1,a1,1
	andi	a4,a5,192
	beq	a4,a0,.L10082
	j	.L10080
.L10073:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
	.size	lengthFunc, .-lengthFunc
	.section	.text.trimFunc,"ax",@progbits
	.align	1
	.type	trimFunc, @function
trimFunc:
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	s4,80(sp)
	sd	s8,48(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s9,40(sp)
	sd	s10,32(sp)
	sd	s11,24(sp)
	mv	s4,a0
	ld	a0,0(a2)
	mv	s0,a2
	mv	s8,a1
	call	sqlite3_value_type@plt
	li	a5,5
	beq	a0,a5,.L10092
	ld	a0,0(s0)
	call	sqlite3_value_text@plt
	mv	s7,a0
	beq	a0,zero,.L10092
	ld	a0,0(s0)
	call	sqlite3_value_bytes@plt
	li	a4,1
	mv	s2,a0
	beq	s8,a4,.L10118
	ld	a0,8(s0)
	call	sqlite3_value_text@plt
	sd	a0,0(sp)
	mv	a4,a0
	beq	a0,zero,.L10092
	lbu	a3,0(a0)
	beq	a3,zero,.L10097
	li	a1,0
	li	a6,191
	li	a0,128
.L10100:
	lbu	a2,1(a4)
	addi	a4,a4,1
	bgtu	a3,a6,.L10154
.L10120:
	mv	a3,a2
.L10098:
	addiw	a1,a1,1
	bne	a3,zero,.L10100
	bgt	a1,zero,.L10155
.L10097:
	ld	s0,112(sp)
	ld	ra,120(sp)
	ld	s1,104(sp)
	ld	s3,88(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	ld	s11,24(sp)
	mv	a2,s2
	mv	a1,s7
	ld	s2,96(sp)
	ld	s7,56(sp)
	mv	a0,s4
	ld	s4,80(sp)
	li	a3,-1
	addi	sp,sp,128
	tail	sqlite3_result_text@plt
.L10092:
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	ld	s11,24(sp)
	addi	sp,sp,128
	jr	ra
.L10118:
	sd	zero,0(sp)
	lla	s5,.LANCHOR5-1368
	lla	s6,.LANCHOR4-680
.L10096:
	mv	a0,s4
	call	sqlite3_user_data@plt
	andi	a4,a0,1
	sext.w	s10,a0
	beq	a4,zero,.L10156
	addiw	s8,s8,-1
	addi	a5,s6,1
	slli	s9,s8,32
	srli	s9,s9,32
	sd	a5,8(sp)
	add	s9,s9,a5
	ble	s2,zero,.L10110
.L10111:
	mv	s1,s6
	mv	s3,s5
.L10108:
	lbu	s0,0(s1)
	mv	a0,s7
	addi	s1,s1,1
	mv	a2,s0
	sext.w	s11,s0
	bgt	s0,s2,.L10106
	ld	a1,0(s3)
	call	memcmp@plt
	beq	a0,zero,.L10107
.L10106:
	addi	s3,s3,8
	bne	s1,s9,.L10108
	andi	s10,s10,2
	beq	s10,zero,.L10110
.L10109:
	ld	a5,8(sp)
	slli	s8,s8,32
	srli	s8,s8,32
	add	s11,s8,a5
.L10117:
	mv	s1,s6
	mv	s3,s5
.L10116:
	lbu	a2,0(s1)
	addi	s1,s1,1
	sext.w	s0,a2
	subw	s0,s2,s0
	add	a0,s7,s0
	bgt	a2,s2,.L10114
	ld	a1,0(s3)
	call	memcmp@plt
	beq	a0,zero,.L10115
.L10114:
	addi	s3,s3,8
	bne	s11,s1,.L10116
.L10110:
	ld	a5,0(sp)
	beq	a5,zero,.L10097
	mv	a0,s5
	call	sqlite3_free@plt
	j	.L10097
.L10154:
	andi	a3,a2,192
	bne	a3,a0,.L10120
.L10099:
	lbu	a3,1(a4)
	addi	a4,a4,1
	andi	a2,a3,192
	beq	a2,a0,.L10099
	j	.L10098
.L10115:
	mv	s2,s0
	bgt	s0,zero,.L10117
	j	.L10110
.L10107:
	subw	s2,s2,s11
	add	s7,s7,s0
	bgt	s2,zero,.L10111
	j	.L10110
.L10155:
	slli	s6,a1,3
	add	a1,s6,a1
	mv	a0,s4
	call	contextMalloc
	mv	s5,a0
	beq	a0,zero,.L10092
	ld	a2,0(sp)
	add	s6,a0,s6
	lbu	a4,0(a2)
	beq	a4,zero,.L10097
	li	s8,0
	li	a6,191
	li	a1,128
	j	.L10103
.L10122:
	mv	a2,a4
	li	a0,1
.L10101:
	add	a3,s6,s8
	sb	a0,0(a3)
	lbu	a4,0(a4)
	addiw	s8,s8,1
	beq	a4,zero,.L10157
.L10103:
	slli	a4,s8,3
	add	a4,s5,a4
	sd	a2,0(a4)
	lbu	a3,0(a2)
	addi	a4,a2,1
	bleu	a3,a6,.L10122
	lbu	a3,1(a2)
	andi	a3,a3,192
	bne	a3,a1,.L10122
.L10102:
	lbu	a3,1(a4)
	addi	a4,a4,1
	andi	a3,a3,192
	beq	a3,a1,.L10102
	sub	a2,a4,a2
	andi	a0,a2,0xff
	mv	a2,a4
	j	.L10101
.L10157:
	ble	s8,zero,.L10097
	j	.L10096
.L10156:
	andi	s10,s10,2
	beq	s10,zero,.L10110
	ble	s2,zero,.L10110
	addi	a5,s6,1
	addiw	s8,s8,-1
	sd	a5,8(sp)
	j	.L10109
	.size	trimFunc, .-trimFunc
	.section	.text.compileoptionusedFunc,"ax",@progbits
	.align	1
	.type	compileoptionusedFunc, @function
compileoptionusedFunc:
	addi	sp,sp,-16
	sd	s0,0(sp)
	mv	s0,a0
	ld	a0,0(a2)
	sd	ra,8(sp)
	call	sqlite3_value_text@plt
	beq	a0,zero,.L10158
	call	sqlite3_compileoption_used@plt
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3_result_int@plt
.L10158:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	compileoptionusedFunc, .-compileoptionusedFunc
	.section	.rodata.str1.8
	.align	3
.LC72:
	.string	"out of memory"
	.section	.text.sqlite3_errmsg,"ax",@progbits
	.align	1
	.globl	sqlite3_errmsg
	.type	sqlite3_errmsg, @function
sqlite3_errmsg:
	beq	a0,zero,.L10173
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lw	a4,112(a0)
	li	a5,1266094080
	addi	a5,a5,656
	mv	s0,a0
	beq	a4,a5,.L10164
	li	a5,-1607884800
	addi	a5,a5,1687
	beq	a4,a5,.L10164
	li	a5,-264536064
	addi	a5,a5,-1786
	bne	a4,a5,.L10174
.L10164:
	lbu	a5,97(s0)
	beq	a5,zero,.L10175
	lla	a0,.LC72
.L10161:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L10175:
	lw	a0,80(s0)
	bne	a0,zero,.L10176
.L10166:
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3ErrStr
.L10174:
	call	sqlite3SafetyCheckSickOrOk.part.0
	bne	a0,zero,.L10164
	li	a0,155648
	addi	a0,a0,1984
	call	sqlite3MisuseError
	j	.L10166
.L10176:
	ld	a0,344(s0)
	call	sqlite3_value_text@plt
	bne	a0,zero,.L10161
	lw	a0,80(s0)
	j	.L10166
.L10173:
	lla	a0,.LC72
	ret
	.size	sqlite3_errmsg, .-sqlite3_errmsg
	.section	.text.printfFunc,"ax",@progbits
	.align	1
	.type	printfFunc, @function
printfFunc:
	addi	sp,sp,-96
	sd	s0,80(sp)
	mv	s0,a1
	sd	s1,72(sp)
	sd	s3,56(sp)
	sd	ra,88(sp)
	sd	s2,64(sp)
	sd	s4,48(sp)
	mv	s3,a0
	mv	s1,a2
	call	sqlite3_context_db_handle@plt
	bgt	s0,zero,.L10185
.L10177:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	addi	sp,sp,96
	jr	ra
.L10185:
	mv	s2,a0
	ld	a0,0(s1)
	call	sqlite3_value_text@plt
	mv	a1,a0
	beq	a0,zero,.L10177
	lw	a5,124(s2)
	addi	s4,sp,16
	mv	a2,sp
	mv	a0,s4
	sw	a5,36(sp)
	addiw	s0,s0,-1
	li	a5,512
	addi	s1,s1,8
	sh	a5,44(sp)
	sw	s0,0(sp)
	sd	s1,8(sp)
	sd	s2,16(sp)
	sw	zero,4(sp)
	sd	zero,24(sp)
	sw	zero,32(sp)
	sw	zero,40(sp)
	call	sqlite3_str_appendf@plt
	lw	s0,40(sp)
	mv	a0,s4
	call	sqlite3StrAccumFinish
	mv	a1,a0
	mv	a2,s0
	mv	a0,s3
	lla	a3,sqlite3MallocSize
	call	sqlite3_result_text@plt
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	addi	sp,sp,96
	jr	ra
	.size	printfFunc, .-printfFunc
	.section	.text.vdbeCompareMemString,"ax",@progbits
	.align	1
	.type	vdbeCompareMemString, @function
vdbeCompareMemString:
	addi	sp,sp,-160
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	ra,152(sp)
	sd	s2,128(sp)
	sd	s3,120(sp)
	sd	s4,112(sp)
	lbu	a4,10(a0)
	lbu	a5,8(a2)
	mv	s0,a2
	mv	s1,a1
	bne	a4,a5,.L10187
	ld	a5,24(a2)
	ld	a4,16(a1)
	lw	a3,12(a1)
	ld	a2,16(a0)
	lw	a1,12(a0)
	ld	a0,16(s0)
	jalr	a5
	mv	s0,a0
.L10188:
	ld	ra,152(sp)
	mv	a0,s0
	ld	s0,144(sp)
	ld	s1,136(sp)
	ld	s2,128(sp)
	ld	s3,120(sp)
	ld	s4,112(sp)
	addi	sp,sp,160
	jr	ra
.L10187:
	ld	a5,40(a0)
	mv	s4,sp
	li	a4,1
	mv	a1,a0
	li	a2,4096
	mv	a0,s4
	sh	a4,8(sp)
	sh	a4,64(sp)
	mv	s2,a3
	sd	a5,40(sp)
	sd	a5,96(sp)
	addi	s3,sp,56
	sw	zero,32(sp)
	sw	zero,88(sp)
	call	sqlite3VdbeMemShallowCopy
	li	a2,4096
	mv	a1,s1
	mv	a0,s3
	call	sqlite3VdbeMemShallowCopy
	lbu	a1,8(s0)
	mv	a0,s4
	call	sqlite3ValueText
	lbu	a1,8(s0)
	mv	s1,a0
	mv	a0,s3
	call	sqlite3ValueText
	mv	a4,a0
	beq	s1,zero,.L10189
	beq	a0,zero,.L10189
	ld	a5,24(s0)
	ld	a0,16(s0)
	lw	a3,68(sp)
	lw	a1,12(sp)
	mv	a2,s1
	jalr	a5
	mv	s0,a0
.L10191:
	lhu	a4,8(sp)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L10192
	lw	a5,32(sp)
	bne	a5,zero,.L10192
.L10193:
	lhu	a4,64(sp)
	li	a5,8192
	addi	a5,a5,1024
	and	a5,a5,a4
	bne	a5,zero,.L10194
	lw	a5,88(sp)
	beq	a5,zero,.L10188
.L10194:
	mv	a0,s3
	call	vdbeMemClear
	j	.L10188
.L10192:
	mv	a0,s4
	call	vdbeMemClear
	j	.L10193
.L10189:
	li	s0,0
	beq	s2,zero,.L10191
	li	a5,7
	sb	a5,0(s2)
	j	.L10191
	.size	vdbeCompareMemString, .-vdbeCompareMemString
	.section	.text.sqlite3MemCompare,"ax",@progbits
	.align	1
	.type	sqlite3MemCompare, @function
sqlite3MemCompare:
	lhu	a5,8(a0)
	lhu	a6,8(a1)
	mv	a3,a0
	mv	a4,a1
	or	a7,a5,a6
	andi	t3,a7,1
	bne	t3,zero,.L10244
	andi	t3,a7,44
	beq	t3,zero,.L10211
	and	a2,a5,a6
	andi	a1,a2,36
	beq	a1,zero,.L10212
.L10242:
	ld	a0,0(a3)
	ld	a5,0(a4)
	blt	a0,a5,.L10231
	sgt	a0,a0,a5
	ret
.L10211:
	andi	a7,a7,2
	beq	a7,zero,.L10217
	andi	a5,a5,2
	beq	a5,zero,.L10230
	andi	a6,a6,2
	beq	a6,zero,.L10231
	bne	a2,zero,.L10245
.L10217:
	mv	a1,a4
	mv	a0,a3
	tail	sqlite3BlobCompare
.L10244:
	andi	a0,a6,1
	andi	a5,a5,1
	subw	a0,a0,a5
	ret
.L10212:
	andi	a2,a2,8
	bne	a2,zero,.L10242
	andi	a2,a5,36
	bne	a2,zero,.L10246
	andi	a5,a5,8
	li	a0,1
	beq	a5,zero,.L10210
	andi	a6,a6,36
	beq	a6,zero,.L10231
	ld	a3,0(a3)
	fld	fa5,.LC73,a5
	ld	a4,0(a4)
	fcvt.d.l	fa4,a3
	li	a0,-1
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L10210
	fld	fa5,.LC74,a5
	fge.d	a5,fa4,fa5
	li	a0,1
	bne	a5,zero,.L10210
	blt	a4,a3,.L10210
	sgt	a0,a4,a3
	negw	a0,a0
	ret
.L10230:
	li	a0,1
	ret
.L10246:
	andi	a5,a6,8
	bne	a5,zero,.L10247
	andi	a6,a6,36
	bne	a6,zero,.L10242
.L10231:
	li	a0,-1
.L10210:
	ret
.L10245:
	li	a3,0
	tail	vdbeCompareMemString
.L10247:
	ld	a4,0(a4)
	fld	fa5,.LC73,a5
	li	a0,1
	fcvt.d.l	fa4,a4
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L10210
	fld	fa5,.LC74,a5
	fge.d	a5,fa4,fa5
	li	a0,-1
	bne	a5,zero,.L10210
	ld	a5,0(a3)
	blt	a5,a4,.L10210
	sgt	a0,a5,a4
	ret
	.size	sqlite3MemCompare, .-sqlite3MemCompare
	.section	.text.nullifFunc,"ax",@progbits
	.align	1
	.type	nullifFunc, @function
nullifFunc:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lw	a3,32(a0)
	ld	a4,24(a0)
	mv	s1,a2
	slli	a5,a3,1
	ld	a4,136(a4)
	add	a5,a5,a3
	slli	a5,a5,3
	add	a5,a4,a5
	mv	s0,a0
	ld	a2,-8(a5)
	ld	a1,8(s1)
	ld	a0,0(s1)
	call	sqlite3MemCompare
	bne	a0,zero,.L10251
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L10251:
	mv	a0,s0
	ld	s0,16(sp)
	ld	a1,0(s1)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	sqlite3_result_value@plt
	.size	nullifFunc, .-nullifFunc
	.section	.text.minmaxStep,"ax",@progbits
	.align	1
	.type	minmaxStep, @function
minmaxStep:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	li	a1,56
	ld	s2,0(a2)
	mv	s1,a0
	call	sqlite3_aggregate_context@plt
	beq	a0,zero,.L10252
	mv	s0,a0
	mv	a0,s2
	call	sqlite3_value_type@plt
	li	a5,5
	beq	a0,a5,.L10266
	lhu	a5,8(s0)
	beq	a5,zero,.L10257
	lw	a3,32(s1)
	ld	a4,24(s1)
	mv	a0,s1
	slli	a5,a3,1
	ld	a4,136(a4)
	add	a5,a5,a3
	slli	a5,a5,3
	add	a5,a4,a5
	ld	s4,-8(a5)
	call	sqlite3_user_data@plt
	mv	s3,a0
	mv	a2,s4
	mv	a1,s2
	mv	a0,s0
	call	sqlite3MemCompare
	beq	s3,zero,.L10258
	blt	a0,zero,.L10265
.L10260:
	li	a5,-1
	sw	a5,36(s1)
	li	a5,1
	sb	a5,40(s1)
.L10252:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L10266:
	lhu	a5,8(s0)
	beq	a5,zero,.L10252
	li	a5,-1
	sw	a5,36(s1)
	li	a5,1
	sb	a5,40(s1)
	j	.L10252
.L10257:
	mv	a0,s1
	call	sqlite3_context_db_handle@plt
	sd	a0,40(s0)
.L10265:
	mv	a0,s0
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	mv	a1,s2
	ld	s2,16(sp)
	addi	sp,sp,48
	tail	sqlite3VdbeMemCopy
.L10258:
	bgt	a0,zero,.L10265
	j	.L10260
	.size	minmaxStep, .-minmaxStep
	.section	.text.minmaxFunc,"ax",@progbits
	.align	1
	.type	minmaxFunc, @function
minmaxFunc:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s2,48(sp)
	sd	s4,32(sp)
	mv	s2,a2
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s8,0(sp)
	mv	s5,a1
	mv	s8,a0
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s3,40(sp)
	sd	s7,8(sp)
	call	sqlite3_user_data@plt
	lw	a3,32(s8)
	ld	a4,24(s8)
	mv	s4,a0
	slli	a5,a3,1
	ld	a4,136(a4)
	add	a5,a5,a3
	ld	a0,0(s2)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	s6,-8(a5)
	call	sqlite3_value_type@plt
	li	a5,5
	beq	a0,a5,.L10267
	li	a5,1
	ble	s5,a5,.L10270
	snez	s4,s4
	addi	s0,s2,8
	li	s3,0
	li	s1,1
	li	s7,5
	negw	s4,s4
	j	.L10273
.L10277:
	ld	a1,0(s0)
	ld	a0,0(a5)
	addi	s0,s0,8
	call	sqlite3MemCompare
	xor	a0,a0,s4
	slli	a5,a0,32
	blt	a5,zero,.L10272
	mv	s3,s1
.L10272:
	addiw	s1,s1,1
	beq	s5,s1,.L10276
.L10273:
	ld	a0,0(s0)
	call	sqlite3_value_type@plt
	slli	a5,s3,3
	add	a5,s2,a5
	mv	a2,s6
	bne	a0,s7,.L10277
.L10267:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
.L10276:
	slli	s3,s3,3
	add	s2,s2,s3
.L10270:
	ld	s0,64(sp)
	ld	a1,0(s2)
	ld	ra,72(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	mv	a0,s8
	ld	s8,0(sp)
	addi	sp,sp,80
	tail	sqlite3_result_value@plt
	.size	minmaxFunc, .-minmaxFunc
	.section	.text.sqlite3VdbeRecordCompareWithSkip,"ax",@progbits
	.align	1
	.type	sqlite3VdbeRecordCompareWithSkip, @function
sqlite3VdbeRecordCompareWithSkip:
	addi	sp,sp,-240
	sd	s0,224(sp)
	sd	s4,192(sp)
	sd	s7,168(sp)
	sd	s8,160(sp)
	sd	ra,232(sp)
	sd	s1,216(sp)
	sd	s2,208(sp)
	sd	s3,200(sp)
	sd	s5,184(sp)
	sd	s6,176(sp)
	sd	s9,152(sp)
	sd	s10,144(sp)
	sd	s11,136(sp)
	fsd	fs0,120(sp)
	fsd	fs1,112(sp)
	fsd	fs2,104(sp)
	fsd	fs3,96(sp)
	ld	s5,8(a2)
	mv	s8,a2
	mv	s4,a3
	mv	s0,a0
	mv	s7,a1
	beq	a3,zero,.L10279
	lbu	a5,1(a1)
	slliw	a4,a5,24
	sraiw	a4,a4,24
	blt	a4,zero,.L10280
	lbu	s3,0(a1)
	sext.w	a5,a5
	li	s6,2
	sw	s3,32(sp)
.L10281:
	slli	a5,a5,32
	srli	a5,a5,32
	lla	a4,.LANCHOR4
	add	a5,a4,a5
	lbu	a5,-672(a5)
.L10282:
	addw	s3,s3,a5
	addi	s5,s5,56
.L10283:
	sext.w	s9,s0
	bltu	s0,s3,.L10368
.L10286:
	fld	fs0,.LC73,a5
	fld	fs1,.LC74,a5
	fmv.d	fs2,fs0
	fmv.d	fs3,fs1
	addiw	s4,s4,1
	lla	s0,.LANCHOR4
	addi	s2,s7,1
	addi	s10,sp,36
	addi	s1,s8,19
.L10345:
	lhu	a4,8(s5)
	slli	a0,s6,32
	srli	a0,a0,32
	add	a0,s7,a0
	andi	a3,a4,36
	lbu	a5,0(a0)
	addiw	s11,s4,-1
	beq	a3,zero,.L10288
	sext.w	a3,a5
	sw	a3,36(sp)
	li	a4,9
	bgtu	a3,a4,.L10367
	beq	a3,zero,.L10330
	slli	a0,s3,32
	srli	a0,a0,32
	li	a4,7
	add	a0,s7,a0
	beq	a3,a4,.L10369
	li	a4,6
	bgtu	a5,a4,.L10295
	lla	a4,.L10297
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L10297:
	.word	.L10295-.L10297
	.word	.L10302-.L10297
	.word	.L10301-.L10297
	.word	.L10300-.L10297
	.word	.L10299-.L10297
	.word	.L10298-.L10297
	.word	.L10296-.L10297
	.section	.text.sqlite3VdbeRecordCompareWithSkip
.L10280:
	addi	a1,sp,40
	addi	a0,s7,1
	call	sqlite3GetVarint32
	lbu	s3,0(s7)
	lw	a5,40(sp)
	li	a4,127
	sw	s3,32(sp)
	addiw	s6,a0,1
	bleu	a5,a4,.L10281
	addiw	a5,a5,-12
	srliw	a5,a5,1
	j	.L10282
.L10288:
	andi	a3,a4,8
	beq	a3,zero,.L10307
	sext.w	a1,a5
	sw	a1,36(sp)
	li	a5,9
	bgtu	a1,a5,.L10367
	beq	a1,zero,.L10330
	slli	a0,s3,32
	srli	a0,a0,32
	addi	a2,sp,40
	add	a0,s7,a0
	call	sqlite3VdbeSerialGet
	lw	a4,36(sp)
	li	a5,7
	beq	a4,a5,.L10370
	ld	a4,0(s5)
	fcvt.d.l	fa5,a4
	flt.d	a5,fa5,fs0
	bne	a5,zero,.L10367
	fge.d	a5,fa5,fs1
	bne	a5,zero,.L10330
	ld	a5,40(sp)
	blt	a5,a4,.L10330
	ble	a5,a4,.L10314
.L10367:
	ld	a5,0(s8)
	li	a0,1
	j	.L10290
.L10330:
	ld	a5,0(s8)
	li	a0,-1
.L10290:
	ld	a5,24(a5)
	add	s11,a5,s11
	lbu	a5,0(s11)
	beq	a5,zero,.L10350
	negw	a0,a0
.L10350:
	ld	ra,232(sp)
	ld	s0,224(sp)
	ld	s1,216(sp)
	ld	s2,208(sp)
	ld	s3,200(sp)
	ld	s4,192(sp)
	ld	s5,184(sp)
	ld	s6,176(sp)
	ld	s7,168(sp)
	ld	s8,160(sp)
	ld	s9,152(sp)
	ld	s10,144(sp)
	ld	s11,136(sp)
	fld	fs0,120(sp)
	fld	fs1,112(sp)
	fld	fs2,104(sp)
	fld	fs3,96(sp)
	addi	sp,sp,240
	jr	ra
.L10307:
	andi	a3,a4,2
	beq	a3,zero,.L10315
	slliw	a4,a5,24
	sraiw	a4,a4,24
	blt	a4,zero,.L10316
	sext.w	a5,a5
	sw	a5,36(sp)
.L10317:
	li	a4,11
	bleu	a5,a4,.L10330
	andi	a4,a5,1
	beq	a4,zero,.L10367
	addiw	a5,a5,-12
	srliw	a4,a5,1
	sw	a4,52(sp)
	addw	a5,a4,s3
	bgtu	a5,s9,.L10320
	ld	a5,0(s8)
	lhu	a3,8(a5)
	ble	a3,s11,.L10320
	slli	a2,s11,3
	add	a2,a5,a2
	ld	a3,32(a2)
	slli	a0,s3,32
	srli	a0,a0,32
	add	a0,s7,a0
	beq	a3,zero,.L10323
	lbu	a4,4(a5)
	mv	a3,s1
	mv	a1,s5
	sb	a4,50(sp)
	ld	a5,16(a5)
	li	a4,2
	sd	a0,56(sp)
	sh	a4,48(sp)
	sd	a5,80(sp)
	ld	a2,32(a2)
	addi	a0,sp,40
	call	vdbeCompareMemString
.L10294:
	bne	a0,zero,.L10293
.L10314:
	lhu	a5,16(s8)
	beq	a5,s4,.L10344
	lw	a5,36(sp)
	li	a4,127
	bleu	a5,a4,.L10340
	addiw	a4,a5,-12
	srliw	a4,a4,1
	addw	s3,a4,s3
	srliw	a5,a5,7
	li	a4,1
.L10341:
	srli	a5,a5,7
	addiw	a4,a4,1
	bne	a5,zero,.L10341
	sext.w	a4,a4
	j	.L10342
.L10279:
	lbu	s3,0(a1)
	slliw	a5,s3,24
	sraiw	a5,a5,24
	blt	a5,zero,.L10284
	sext.w	s3,s3
	sw	s3,32(sp)
	li	s6,1
	sext.w	s9,s0
	bgeu	s0,s3,.L10286
.L10368:
	li	a0,81920
	addi	a0,a0,-1151
	call	sqlite3CorruptError
	sb	a0,19(s8)
	li	a0,0
	j	.L10350
.L10315:
	andi	a4,a4,16
	beq	a4,zero,.L10326
	slliw	a4,a5,24
	sraiw	a4,a4,24
	blt	a4,zero,.L10327
	sext.w	a5,a5
	sw	a5,36(sp)
.L10328:
	li	a4,11
	bleu	a5,a4,.L10330
	andi	a4,a5,1
	bne	a4,zero,.L10330
	addiw	a5,a5,-12
	srliw	a4,a5,1
	addw	a3,a4,s3
	srliw	a5,a5,1
	bgtu	a3,s9,.L10371
	lhu	a3,8(s5)
	slli	a0,s3,32
	srli	a0,a0,32
	slli	a2,a3,49
	blt	a2,zero,.L10372
	lw	a3,12(s5)
	sext.w	a2,a3
	ble	a3,a5,.L10337
	sext.w	a2,a4
.L10337:
	ld	a1,16(s5)
	add	a0,s7,a0
	sd	a4,16(sp)
	sd	a3,8(sp)
	call	memcmp@plt
	ld	a3,8(sp)
	ld	a4,16(sp)
	bne	a0,zero,.L10293
	subw	a0,a4,a3
	j	.L10294
.L10369:
	addi	a2,sp,40
	li	a1,7
	call	sqlite3VdbeSerialGet
	ld	a0,40(sp)
	ld	a5,0(s5)
	fcvt.d.l	fa5,a0
	flt.d	a4,fa5,fs2
	bne	a4,zero,.L10347
	fge.d	a4,fa5,fs3
	bne	a4,zero,.L10349
	blt	a5,a0,.L10349
	sgt	a0,a5,a0
	negw	a0,a0
	j	.L10294
.L10370:
	ld	a4,40(sp)
	ld	a5,0(s5)
	blt	a4,a5,.L10330
	bgt	a4,a5,.L10367
.L10306:
	lhu	a5,16(s8)
	beq	a5,s4,.L10344
	lw	a5,36(sp)
.L10340:
	slli	a5,a5,32
	srli	a5,a5,32
	add	a5,s0,a5
	lbu	a5,-672(a5)
	li	a4,1
	addw	s3,a5,s3
.L10342:
	lw	a5,32(sp)
	addw	s6,s6,a4
	bleu	a5,s6,.L10344
	addi	s5,s5,56
	addiw	s4,s4,1
	bgeu	s9,s3,.L10345
.L10344:
	li	a5,1
	lb	a0,18(s8)
	sb	a5,22(s8)
	j	.L10350
.L10296:
	lbu	a4,4(a0)
	lbu	a5,0(a0)
	lbu	a7,7(a0)
	lbu	a1,5(a0)
	lbu	t1,3(a0)
	lbu	a6,1(a0)
	lbu	a3,6(a0)
	lbu	a2,2(a0)
	slliw	a4,a4,24
	slliw	a5,a5,24
	or	a4,a4,a7
	slliw	a1,a1,16
	or	a5,a5,t1
	slliw	a6,a6,16
	or	a4,a4,a1
	slliw	a3,a3,8
	or	a5,a5,a6
	slliw	a2,a2,8
	or	a4,a4,a3
	or	a5,a5,a2
	slli	a4,a4,32
	slli	a5,a5,32
	srli	a4,a4,32
	or	a5,a5,a4
.L10303:
	ld	a4,0(s5)
	bgt	a4,a5,.L10330
	bge	a4,a5,.L10306
	j	.L10367
.L10298:
	lbu	a5,2(a0)
	lbu	a6,5(a0)
	lbu	a2,3(a0)
	lbu	a3,4(a0)
	lb	a4,0(a0)
	slliw	a5,a5,24
	lbu	a1,1(a0)
	or	a5,a5,a6
	slliw	a2,a2,16
	or	a5,a5,a2
	slliw	a3,a3,8
	slliw	a4,a4,8
	or	a5,a5,a3
	or	a4,a4,a1
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a4,a4,32
	add	a5,a5,a4
	j	.L10303
.L10299:
	lbu	a5,0(a0)
	lbu	a2,3(a0)
	lbu	a3,1(a0)
	lbu	a4,2(a0)
	slliw	a5,a5,24
	or	a5,a5,a2
	slliw	a3,a3,16
	or	a5,a5,a3
	slliw	a4,a4,8
	or	a5,a5,a4
	sext.w	a5,a5
	j	.L10303
.L10300:
	lbu	a3,2(a0)
	lbu	a4,1(a0)
	lb	a5,0(a0)
	slli	a3,a3,8
	or	a4,a3,a4
	slli	a4,a4,8
	srli	a3,a3,8
	or	a4,a4,a3
	slliw	a4,a4,16
	slliw	a5,a5,16
	srliw	a4,a4,16
	or	a5,a5,a4
	sext.w	a5,a5
	j	.L10303
.L10301:
	lb	a5,0(a0)
	lbu	a4,1(a0)
	slliw	a5,a5,8
	or	a5,a5,a4
	sext.w	a5,a5
	j	.L10303
.L10302:
	lb	a5,0(a0)
	j	.L10303
.L10295:
	addiw	a5,a3,-8
	slli	a5,a5,32
	srli	a5,a5,32
	j	.L10303
.L10326:
	sext.w	a5,a5
	sw	a5,36(sp)
	snez	a0,a5
	j	.L10294
.L10323:
	lw	a6,12(s5)
	sext.w	a3,a4
	sext.w	a2,a4
	ble	a3,a6,.L10325
	sext.w	a2,a6
.L10325:
	ld	a1,16(s5)
	sd	a5,8(sp)
	sd	a4,24(sp)
	sd	a6,16(sp)
	call	memcmp@plt
	ld	a5,8(sp)
	bne	a0,zero,.L10290
	ld	a6,16(sp)
	ld	a4,24(sp)
	subw	a0,a4,a6
	j	.L10294
.L10347:
	li	a0,-1
.L10293:
	ld	a5,0(s8)
	j	.L10290
.L10284:
	addi	a1,sp,32
	mv	a0,s7
	call	sqlite3GetVarint32
	sext.w	s6,a0
	lw	s3,32(sp)
	j	.L10283
.L10349:
	ld	a5,0(s8)
	li	a0,1
	j	.L10290
.L10316:
	mv	a1,s10
	call	sqlite3GetVarint32
	lw	a5,36(sp)
	j	.L10317
.L10327:
	mv	a1,s10
	call	sqlite3GetVarint32
	lw	a5,36(sp)
	j	.L10328
.L10372:
	beq	a5,zero,.L10333
	addiw	a3,a4,-1
	slli	a3,a3,32
	add	a2,s2,a0
	srli	a3,a3,32
	add	a5,s7,a0
	add	a2,a2,a3
	j	.L10335
.L10334:
	addi	a5,a5,1
	beq	a2,a5,.L10333
.L10335:
	lbu	a3,0(a5)
	beq	a3,zero,.L10334
	j	.L10367
.L10333:
	lw	a0,0(s5)
	subw	a0,a4,a0
	j	.L10294
.L10320:
	li	a0,81920
	addi	a0,a0,-1074
	call	sqlite3CorruptError
	sb	a0,19(s8)
	li	a0,0
	j	.L10350
.L10371:
	li	a0,81920
	addi	a0,a0,-1044
	call	sqlite3CorruptError
	sb	a0,19(s8)
	li	a0,0
	j	.L10350
	.size	sqlite3VdbeRecordCompareWithSkip, .-sqlite3VdbeRecordCompareWithSkip
	.section	.text.vdbeRecordCompareString,"ax",@progbits
	.align	1
	.type	vdbeRecordCompareString, @function
vdbeRecordCompareString:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s4,16(sp)
	lbu	a5,1(a1)
	mv	s1,a1
	mv	s2,a0
	slliw	a4,a5,24
	sraiw	a4,a4,24
	mv	s3,a2
	blt	a4,zero,.L10374
	sext.w	a5,a5
	sw	a5,12(sp)
.L10375:
	li	a4,11
	ble	a5,a4,.L10386
	andi	a4,a5,1
	bne	a4,zero,.L10378
.L10385:
	lb	a0,21(s3)
.L10391:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L10378:
	lbu	a0,0(s1)
	addiw	a5,a5,-12
	sraiw	s0,a5,1
	addw	a5,s0,a0
	bgt	a5,s2,.L10389
	ld	a4,8(s3)
	sext.w	a5,s0
	lw	s4,12(a4)
	sext.w	a2,s4
	ble	s4,a5,.L10381
	sext.w	a2,s0
.L10381:
	ld	a1,16(a4)
	add	a0,s1,a0
	call	memcmp@plt
	bne	a0,zero,.L10382
	subw	s0,s0,s4
	beq	s0,zero,.L10390
	bgt	s0,zero,.L10385
.L10386:
	lb	a0,20(s3)
.L10377:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L10374:
	addi	a1,sp,12
	addi	a0,s1,1
	call	sqlite3GetVarint32
	lw	a5,12(sp)
	j	.L10375
.L10389:
	li	a0,81920
	addi	a0,a0,-858
	call	sqlite3CorruptError
	sb	a0,19(s3)
	li	a0,0
	j	.L10377
.L10382:
	ble	a0,zero,.L10386
	lb	a0,21(s3)
	j	.L10391
.L10390:
	lhu	a4,16(s3)
	li	a5,1
	bgtu	a4,a5,.L10392
	lb	a0,18(s3)
	sb	a5,22(s3)
	j	.L10377
.L10392:
	li	a3,1
	mv	a2,s3
	mv	a1,s1
	mv	a0,s2
	call	sqlite3VdbeRecordCompareWithSkip
	j	.L10377
	.size	vdbeRecordCompareString, .-vdbeRecordCompareString
	.section	.text.sqlite3VdbeRecordCompare,"ax",@progbits
	.align	1
	.type	sqlite3VdbeRecordCompare, @function
sqlite3VdbeRecordCompare:
	li	a3,0
	tail	sqlite3VdbeRecordCompareWithSkip
	.size	sqlite3VdbeRecordCompare, .-sqlite3VdbeRecordCompare
	.section	.text.vdbeSorterCompare,"ax",@progbits
	.align	1
	.type	vdbeSorterCompare, @function
vdbeSorterCompare:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s3,8(sp)
	mv	s0,a1
	lw	a1,0(a1)
	ld	s3,24(a0)
	mv	s2,a2
	mv	s1,a3
	beq	a1,zero,.L10397
.L10395:
	ld	s0,32(sp)
	ld	ra,40(sp)
	mv	a2,s3
	mv	a1,s2
	ld	s3,8(sp)
	ld	s2,16(sp)
	mv	a0,s1
	ld	s1,24(sp)
	li	a3,0
	addi	sp,sp,48
	tail	sqlite3VdbeRecordCompareWithSkip
.L10397:
	ld	a2,16(a0)
	mv	a3,a4
	mv	a4,s3
	ld	a0,40(a2)
	mv	a2,a5
	addi	a1,a0,16
	addi	a0,a0,4
	call	sqlite3VdbeRecordUnpack.isra.0
	li	a5,1
	sw	a5,0(s0)
	j	.L10395
	.size	vdbeSorterCompare, .-vdbeSorterCompare
	.section	.text.vdbeRecordCompareInt,"ax",@progbits
	.align	1
	.type	vdbeRecordCompareInt, @function
vdbeRecordCompareInt:
	lbu	a5,0(a1)
	lbu	a3,1(a1)
	li	a4,9
	andi	a5,a5,63
	add	a5,a1,a5
	bgtu	a3,a4,.L10399
	mv	a4,a3
	slli	a4,a4,2
	lla	a3,.L10401
	add	a4,a4,a3
	lw	a4,0(a4)
	add	a4,a4,a3
	jr	a4
	.section	.rodata
	.align	2
	.align	2
.L10401:
	.word	.L10399-.L10401
	.word	.L10408-.L10401
	.word	.L10407-.L10401
	.word	.L10406-.L10401
	.word	.L10405-.L10401
	.word	.L10404-.L10401
	.word	.L10403-.L10401
	.word	.L10399-.L10401
	.word	.L10413-.L10401
	.word	.L10400-.L10401
	.section	.text.vdbeRecordCompareInt
.L10413:
	li	a5,0
.L10402:
	ld	a4,8(a2)
	ld	a4,0(a4)
	bge	a5,a4,.L10409
.L10414:
	lb	a0,20(a2)
	ret
.L10400:
	ld	a4,8(a2)
	li	a5,1
	ld	a4,0(a4)
	blt	a5,a4,.L10414
.L10409:
	ble	a5,a4,.L10411
	lb	a0,21(a2)
	ret
.L10406:
	lbu	a3,2(a5)
	lbu	a4,1(a5)
	lb	a5,0(a5)
	slli	a3,a3,8
	or	a4,a3,a4
	slli	a4,a4,8
	srli	a3,a3,8
	or	a4,a4,a3
	slliw	a4,a4,16
	slliw	a5,a5,16
	srliw	a4,a4,16
	or	a5,a5,a4
	sext.w	a5,a5
	j	.L10402
.L10405:
	lbu	a4,0(a5)
	lbu	a7,3(a5)
	lbu	a6,1(a5)
	lbu	a3,2(a5)
	slliw	a5,a4,24
	or	a5,a5,a7
	slliw	a4,a6,16
	or	a5,a5,a4
	slliw	a4,a3,8
	or	a5,a5,a4
	sext.w	a5,a5
	j	.L10402
.L10404:
	lbu	a4,2(a5)
	lbu	t3,5(a5)
	lbu	a7,3(a5)
	lbu	a6,4(a5)
	lb	a3,0(a5)
	lbu	t1,1(a5)
	slliw	a5,a4,24
	or	a5,a5,t3
	slliw	a7,a7,16
	or	a5,a5,a7
	slliw	a6,a6,8
	slliw	a4,a3,8
	or	a5,a5,a6
	or	a4,a4,t1
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a4,a4,32
	add	a5,a5,a4
	j	.L10402
.L10403:
	lbu	a3,4(a5)
	lbu	a4,0(a5)
	lbu	t4,7(a5)
	lbu	t1,5(a5)
	lbu	t5,3(a5)
	lbu	t3,1(a5)
	lbu	a6,6(a5)
	lbu	a7,2(a5)
	slliw	a5,a4,24
	slliw	a4,a3,24
	or	a4,a4,t4
	slliw	a3,t1,16
	or	a4,a4,a3
	or	a5,a5,t5
	slliw	t3,t3,16
	slliw	a3,a6,8
	or	a5,a5,t3
	slliw	a7,a7,8
	or	a4,a4,a3
	or	a5,a5,a7
	slli	a4,a4,32
	slli	a5,a5,32
	srli	a4,a4,32
	or	a5,a5,a4
	j	.L10402
.L10408:
	lb	a5,0(a5)
	j	.L10402
.L10407:
	lb	a4,0(a5)
	lbu	a3,1(a5)
	slliw	a5,a4,8
	or	a5,a5,a3
	sext.w	a5,a5
	j	.L10402
.L10399:
	li	a3,0
	tail	sqlite3VdbeRecordCompareWithSkip
.L10411:
	lhu	a4,16(a2)
	li	a5,1
	bgtu	a4,a5,.L10415
	lb	a0,18(a2)
	sb	a5,22(a2)
	ret
.L10415:
	li	a3,1
	tail	sqlite3VdbeRecordCompareWithSkip
	.size	vdbeRecordCompareInt, .-vdbeRecordCompareInt
	.section	.text.vdbeSorterCompareInt,"ax",@progbits
	.align	1
	.type	vdbeSorterCompareInt, @function
vdbeSorterCompareInt:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	mv	t1,a4
	lbu	t3,1(a4)
	lbu	t5,0(a2)
	lbu	a4,0(a4)
	lbu	a7,1(a2)
	mv	s0,a2
	mv	t4,a0
	mv	s1,a1
	mv	s2,a3
	add	t5,a2,t5
	add	t6,t1,a4
	beq	a7,t3,.L10446
	li	a4,7
	mv	a6,a7
	mv	t0,t3
	bgt	a7,a4,.L10447
	ble	t3,a4,.L10448
	lb	a5,0(t5)
	not	a5,a5
	srai	a0,a5,63
	andi	a0,a0,2
	addi	a0,a0,-1
.L10420:
	ld	a5,16(t4)
	ld	a5,40(a5)
	ld	a5,24(a5)
	lbu	a5,0(a5)
	beq	a5,zero,.L10436
	negw	a0,a0
.L10436:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L10447:
	ble	t3,a4,.L10423
	subw	a0,a7,t3
.L10424:
	bne	a0,zero,.L10420
.L10418:
	ld	a4,16(t4)
	li	s3,1
	li	a0,0
	ld	a6,40(a4)
	lhu	a4,6(a6)
	bleu	a4,s3,.L10436
	lw	a4,0(s1)
	ld	s4,24(t4)
	beq	a4,zero,.L10449
.L10427:
	mv	a1,s0
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s1,24(sp)
	ld	s3,8(sp)
	mv	a2,s4
	mv	a0,s2
	ld	s4,0(sp)
	ld	s2,16(sp)
	li	a3,1
	addi	sp,sp,48
	tail	sqlite3VdbeRecordCompareWithSkip
.L10446:
	lla	a4,.LANCHOR4
	add	a7,a4,a7
	lbu	t3,-544(a7)
	beq	t3,zero,.L10418
	addiw	a4,t3,-1
	slli	a4,a4,32
	addi	t3,t5,1
	srli	a4,a4,32
	mv	a6,t5
	mv	a7,t6
	add	t3,t3,a4
	j	.L10421
.L10419:
	beq	t3,a6,.L10418
.L10421:
	lbu	a0,0(a6)
	lbu	a4,0(a7)
	addi	a6,a6,1
	addi	a7,a7,1
	subw	a0,a0,a4
	beq	a0,zero,.L10419
	lbu	a4,0(t5)
	lbu	a5,0(t6)
	xor	a5,a4,a5
	slliw	a5,a5,24
	sraiw	a5,a5,24
	bge	a5,zero,.L10420
	slliw	a0,a4,24
	sraiw	a0,a0,24
	not	a0,a0
	srai	a0,a0,63
	andi	a0,a0,2
	addi	a0,a0,-1
	j	.L10420
.L10423:
	lb	a5,0(t6)
	not	a5,a5
	srai	a0,a5,63
	ori	a0,a0,1
	j	.L10420
.L10448:
	subw	a0,a6,t0
	ble	a0,zero,.L10425
	lb	a5,0(t5)
	bge	a5,zero,.L10420
	li	a0,-1
	j	.L10420
.L10425:
	lb	a4,0(t6)
	bge	a4,zero,.L10424
	li	a0,1
	j	.L10420
.L10449:
	mv	a4,s4
	mv	a3,t1
	mv	a2,a5
	addi	a1,a6,16
	addi	a0,a6,4
	call	sqlite3VdbeRecordUnpack.isra.0
	sw	s3,0(s1)
	j	.L10427
	.size	vdbeSorterCompareInt, .-vdbeSorterCompareInt
	.section	.text.vdbeSorterCompareText,"ax",@progbits
	.align	1
	.type	vdbeSorterCompareText, @function
vdbeSorterCompareText:
	addi	sp,sp,-112
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s7,40(sp)
	sd	s8,32(sp)
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s9,24(sp)
	lbu	a6,1(a2)
	mv	s2,a4
	mv	s1,a2
	lbu	a4,0(a2)
	lbu	a2,0(s2)
	slliw	a7,a6,24
	sraiw	a7,a7,24
	mv	s3,a0
	mv	s4,a1
	mv	s5,a3
	mv	s6,a5
	add	s7,s1,a4
	add	s8,s2,a2
	blt	a7,zero,.L10451
	sw	a6,8(sp)
.L10452:
	lbu	s0,1(s2)
	slliw	a5,s0,24
	sraiw	a5,a5,24
	blt	a5,zero,.L10453
	sext.w	s0,s0
	sw	s0,12(sp)
.L10454:
	lw	s9,8(sp)
	mv	a2,s9
	ble	s9,s0,.L10456
	mv	a2,s0
.L10456:
	addiw	a2,a2,-13
	srliw	a5,a2,31
	addw	a2,a5,a2
	sraiw	a2,a2,1
	mv	a1,s8
	mv	a0,s7
	call	memcmp@plt
	ld	a5,16(s3)
	ld	a5,40(a5)
	bne	a0,zero,.L10457
	subw	a0,s9,s0
	bne	a0,zero,.L10457
	lhu	a4,6(a5)
	li	s0,1
	bgtu	a4,s0,.L10464
.L10458:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	addi	sp,sp,112
	jr	ra
.L10457:
	ld	a5,24(a5)
	lbu	a5,0(a5)
	beq	a5,zero,.L10458
	negw	a0,a0
	j	.L10458
.L10464:
	lw	a4,0(s4)
	ld	s3,24(s3)
	beq	a4,zero,.L10465
.L10459:
	li	a3,1
	mv	a2,s3
	mv	a1,s1
	mv	a0,s5
	call	sqlite3VdbeRecordCompareWithSkip
	j	.L10458
.L10453:
	addi	a1,sp,12
	addi	a0,s2,1
	call	sqlite3GetVarint32
	lw	s0,12(sp)
	j	.L10454
.L10451:
	addi	a1,sp,8
	addi	a0,s1,1
	call	sqlite3GetVarint32
	j	.L10452
.L10465:
	mv	a4,s3
	mv	a3,s2
	mv	a2,s6
	addi	a1,a5,16
	addi	a0,a5,4
	call	sqlite3VdbeRecordUnpack.isra.0
	sw	s0,0(s4)
	j	.L10459
	.size	vdbeSorterCompareText, .-vdbeSorterCompareText
	.section	.text.applyAffinity.isra.0.part.0,"ax",@progbits
	.align	1
	.type	applyAffinity.isra.0.part.0, @function
applyAffinity.isra.0.part.0:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lhu	a5,8(a0)
	mv	s0,a0
	andi	a4,a5,2
	bne	a4,zero,.L10467
	andi	a4,a5,44
	bne	a4,zero,.L10472
.L10467:
	andi	a5,a5,-45
	sh	a5,8(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L10472:
	li	a1,1
	call	sqlite3VdbeMemStringify.isra.0
	lhu	a5,8(s0)
	andi	a5,a5,-45
	sh	a5,8(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	applyAffinity.isra.0.part.0, .-applyAffinity.isra.0.part.0
	.section	.text.applyAffinity.isra.0,"ax",@progbits
	.align	1
	.type	applyAffinity.isra.0, @function
applyAffinity.isra.0:
	li	a4,66
	bleu	a1,a4,.L10474
	lhu	a4,8(a0)
	andi	a3,a4,4
	bne	a3,zero,.L10473
	andi	a3,a4,8
	bne	a3,zero,.L10476
	andi	a4,a4,2
	beq	a4,zero,.L10473
	li	a1,1
	tail	applyNumericAffinity
.L10474:
	beq	a1,a4,.L10480
.L10473:
	ret
.L10480:
	tail	applyAffinity.isra.0.part.0
.L10476:
	addi	a1,a0,8
	tail	sqlite3VdbeIntegerAffinity.isra.0
	.size	applyAffinity.isra.0, .-applyAffinity.isra.0
	.section	.text.sqlite3VdbeMemCast.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3VdbeMemCast.isra.0, @function
sqlite3VdbeMemCast.isra.0:
	lhu	a5,8(a0)
	andi	a4,a5,1
	bne	a4,zero,.L10496
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	li	a4,68
	mv	s0,a0
	beq	a1,a4,.L10484
	bgtu	a1,a4,.L10485
	li	a4,65
	beq	a1,a4,.L10486
	li	a4,67
	bne	a1,a4,.L10488
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	sqlite3VdbeMemNumerify
.L10485:
	li	a4,69
	bne	a1,a4,.L10488
	call	sqlite3VdbeRealValue
	lhu	a5,8(s0)
	li	a4,16384
	addi	a4,a4,-448
	and	a5,a5,a4
	ori	a5,a5,8
	sd	a0,0(s0)
	sh	a5,8(s0)
.L10481:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L10496:
	ret
.L10486:
	andi	a4,a5,16
	beq	a4,zero,.L10499
	li	a4,16384
	addi	a4,a4,-432
	and	a5,a5,a4
	sh	a5,8(a0)
	j	.L10481
.L10488:
	sraiw	a4,a5,3
	andi	a4,a4,2
	or	a5,a4,a5
	sh	a5,8(s0)
	mv	a0,s0
	call	applyAffinity.isra.0.part.0
	lhu	a5,8(s0)
	li	a4,-16384
	addi	a4,a4,-61
	and	a5,a5,a4
	sh	a5,8(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L10484:
	call	sqlite3VdbeIntValue
	lhu	a5,8(s0)
	li	a4,16384
	addi	a4,a4,-448
	and	a5,a5,a4
	ori	a5,a5,4
	sd	a0,0(s0)
	sh	a5,8(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L10499:
	call	applyAffinity.isra.0.part.0
	lhu	a5,8(s0)
	andi	a4,a5,2
	beq	a4,zero,.L10481
	li	a4,16384
	addi	a4,a4,-448
	and	a5,a5,a4
	ori	a5,a5,16
	sh	a5,8(s0)
	j	.L10481
	.size	sqlite3VdbeMemCast.isra.0, .-sqlite3VdbeMemCast.isra.0
	.section	.text.sqlite3VMPrintf,"ax",@progbits
	.align	1
	.type	sqlite3VMPrintf, @function
sqlite3VMPrintf:
	addi	sp,sp,-144
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	lw	a5,124(a0)
	addi	s1,sp,8
	addi	a4,sp,40
	mv	s0,a0
	sd	a4,16(sp)
	mv	a0,s1
	li	a4,70
	sw	a5,28(sp)
	li	a5,256
	sw	a4,24(sp)
	sh	a5,36(sp)
	sd	s0,8(sp)
	sw	zero,32(sp)
	call	sqlite3_str_vappendf@plt
	mv	a0,s1
	call	sqlite3StrAccumFinish
	lbu	a4,36(sp)
	li	a5,7
	mv	s1,a0
	beq	a4,a5,.L10504
.L10500:
	ld	ra,136(sp)
	ld	s0,128(sp)
	mv	a0,s1
	ld	s1,120(sp)
	addi	sp,sp,144
	jr	ra
.L10504:
	ld	a5,96(s0)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L10500
	lw	a4,196(s0)
	li	a5,1
	sb	a5,97(s0)
	ble	a4,zero,.L10502
	sw	a5,352(s0)
.L10502:
	mv	a0,s0
	call	sqlite3OomFault.part.0
	ld	ra,136(sp)
	ld	s0,128(sp)
	mv	a0,s1
	ld	s1,120(sp)
	addi	sp,sp,144
	jr	ra
	.size	sqlite3VMPrintf, .-sqlite3VMPrintf
	.section	.text.sqlite3ErrorWithMsg,"ax",@progbits
	.align	1
	.type	sqlite3ErrorWithMsg, @function
sqlite3ErrorWithMsg:
	addi	sp,sp,-96
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	a5,72(sp)
	sd	ra,40(sp)
	sd	a3,56(sp)
	sd	a4,64(sp)
	sd	a6,80(sp)
	sd	a7,88(sp)
	li	a5,4096
	sw	a1,80(a0)
	addi	a5,a5,-1014
	mv	s0,a0
	mv	s1,a1
	mv	s2,a2
	beq	a1,a5,.L10506
	andi	a5,a1,251
	li	a4,10
	beq	a5,a4,.L10522
	beq	s2,zero,.L10523
.L10508:
	ld	a5,344(s0)
	beq	a5,zero,.L10524
.L10512:
	addi	a2,sp,56
	mv	a1,s2
	mv	a0,s0
	sd	a2,8(sp)
	call	sqlite3VMPrintf
	ld	a5,344(s0)
	mv	a1,a0
	beq	a5,zero,.L10505
	lla	a4,sqlite3MallocSize
	li	a3,1
	li	a2,-1
	mv	a0,a5
	call	sqlite3VdbeMemSetStr
.L10505:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,96
	jr	ra
.L10524:
	li	a1,56
	mv	a0,s0
	call	sqlite3DbMallocZero
	beq	a0,zero,.L10513
	li	a5,1
	sh	a5,8(a0)
	sd	s0,40(a0)
	sd	a0,344(s0)
	j	.L10512
.L10522:
	call	sqlite3SystemError.part.0
	bne	s2,zero,.L10508
.L10523:
	sw	s1,80(s0)
	bne	s1,zero,.L10511
	ld	a5,344(s0)
	beq	a5,zero,.L10505
.L10511:
	mv	a1,s1
	mv	a0,s0
	call	sqlite3ErrorFinish
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,96
	jr	ra
.L10506:
	bne	a2,zero,.L10508
	j	.L10511
.L10513:
	sd	zero,344(s0)
	j	.L10505
	.size	sqlite3ErrorWithMsg, .-sqlite3ErrorWithMsg
	.section	.rodata.str1.8
	.align	3
.LC75:
	.string	"unable to delete/modify user-function due to active statements"
	.section	.text.sqlite3CreateFunc,"ax",@progbits
	.align	1
	.type	sqlite3CreateFunc, @function
sqlite3CreateFunc:
	addi	sp,sp,-112
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s7,40(sp)
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s8,32(sp)
	sd	s9,24(sp)
	sd	s10,16(sp)
	ld	s6,112(sp)
	ld	s5,120(sp)
	ld	s7,128(sp)
	beq	a1,zero,.L10526
	mv	s4,a0
	mv	s3,a3
	mv	s2,a4
	mv	s9,a5
	mv	s10,a6
	mv	s0,a7
	beq	a5,zero,.L10527
	beq	a7,zero,.L10527
.L10526:
	ld	s0,96(sp)
	ld	ra,104(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	ld	s10,16(sp)
	li	a0,155648
	addi	a0,a0,1297
	addi	sp,sp,112
	tail	sqlite3MisuseError
.L10527:
	seqz	a7,s0
	seqz	a4,s10
	bne	a7,a4,.L10526
	seqz	a4,s6
	seqz	a3,s5
	bne	a4,a3,.L10526
	addiw	a4,a2,1
	sd	a2,0(sp)
	li	a3,128
	bgtu	a4,a3,.L10526
	mv	a0,a1
	li	s8,1073741824
	sd	a1,8(sp)
	addi	s8,s8,-256
	call	strlen@plt
	and	s8,a0,s8
	sext.w	s8,s8
	ld	a1,8(sp)
	ld	a2,0(sp)
	bne	s8,zero,.L10526
	li	a7,4096
	addi	a7,a7,-2048
	li	a4,0
	li	a3,1
	mv	a0,s4
	sd	a2,8(sp)
	sd	a1,0(sp)
	and	s3,s3,a7
	call	sqlite3FindFunction
	ld	a1,0(sp)
	ld	a2,8(sp)
	beq	a0,zero,.L10529
	lw	a4,4(a0)
	li	a3,1
	andi	a4,a4,3
	beq	a4,a3,.L10553
.L10529:
	li	a4,1
	li	a3,1
	mv	a0,s4
	sd	a2,0(sp)
	call	sqlite3FindFunction
	mv	s1,a0
	beq	a0,zero,.L10535
	ld	a1,64(a0)
	mv	a0,s4
	call	functionDestroy.isra.0
	ld	a2,0(sp)
	beq	s7,zero,.L10533
	lw	a4,0(s7)
	addiw	a4,a4,1
	sw	a4,0(s7)
.L10533:
	lw	a4,4(s1)
	sd	s7,64(s1)
	andi	a4,a4,3
	or	s3,a4,s3
	sw	s3,4(s1)
	beq	s9,zero,.L10554
.L10534:
	sd	s9,24(s1)
	sd	s0,32(s1)
	sd	s6,40(s1)
	sd	s5,48(s1)
	sd	s2,8(s1)
	sb	a2,0(s1)
.L10531:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s7,40(sp)
	ld	s9,24(sp)
	ld	s10,16(sp)
	mv	a0,s8
	ld	s8,32(sp)
	addi	sp,sp,112
	jr	ra
.L10553:
	lb	a4,0(a0)
	bne	a4,a2,.L10529
	lw	a4,184(s4)
	bne	a4,zero,.L10555
	ld	a3,8(s4)
	beq	a3,zero,.L10529
.L10532:
	lbu	a4,189(a3)
	andi	a4,a4,-4
	ori	a4,a4,1
	sb	a4,189(a3)
	ld	a3,16(a3)
	bne	a3,zero,.L10532
	j	.L10529
.L10554:
	mv	s9,s10
	j	.L10534
.L10535:
	li	s8,7
	j	.L10531
.L10555:
	lla	a2,.LC75
	li	a1,5
	mv	a0,s4
	call	sqlite3ErrorWithMsg
	li	s8,5
	j	.L10531
	.size	sqlite3CreateFunc, .-sqlite3CreateFunc
	.section	.text.createFunctionApi,"ax",@progbits
	.align	1
	.type	createFunctionApi, @function
createFunctionApi:
	addi	sp,sp,-144
	sd	s9,56(sp)
	ld	s9,160(sp)
	sd	s2,112(sp)
	sd	s10,48(sp)
	sd	s11,40(sp)
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	s6,80(sp)
	sd	s7,72(sp)
	sd	s8,64(sp)
	ld	s10,144(sp)
	ld	s11,152(sp)
	mv	s2,a0
	beq	s9,zero,.L10557
	li	a0,24
	mv	s0,a1
	mv	s4,a2
	mv	s5,a3
	mv	s3,a4
	mv	s6,a5
	mv	s7,a6
	mv	s8,a7
	call	sqlite3Malloc
	mv	s1,a0
	beq	a0,zero,.L10568
	sw	zero,0(a0)
	sd	s9,8(a0)
	sd	s3,16(a0)
	sd	a0,16(sp)
	mv	a5,s6
	mv	a1,s0
	sd	s11,8(sp)
	sd	s10,0(sp)
	mv	a7,s8
	mv	a6,s7
	mv	a4,s3
	mv	a3,s5
	mv	a2,s4
	mv	a0,s2
	call	sqlite3CreateFunc
	lw	a5,0(s1)
	mv	s0,a0
	beq	a5,zero,.L10569
.L10562:
	lbu	a5,97(s2)
	bne	a5,zero,.L10563
.L10570:
	li	a5,4096
	addi	a5,a5,-1014
	beq	s0,a5,.L10563
.L10561:
	lw	a0,84(s2)
	ld	ra,136(sp)
	ld	s1,120(sp)
	and	a0,s0,a0
	ld	s0,128(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	ld	s9,56(sp)
	ld	s10,48(sp)
	ld	s11,40(sp)
	sext.w	a0,a0
	addi	sp,sp,144
	jr	ra
.L10569:
	mv	a0,s3
	jalr	s9
	mv	a0,s1
	call	sqlite3_free@plt
	lbu	a5,97(s2)
	beq	a5,zero,.L10570
.L10563:
	ld	s0,128(sp)
	ld	ra,136(sp)
	ld	s1,120(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	ld	s9,56(sp)
	ld	s10,48(sp)
	ld	s11,40(sp)
	mv	a0,s2
	ld	s2,112(sp)
	addi	sp,sp,144
	tail	apiOomError
.L10557:
	sd	zero,16(sp)
	sd	s11,8(sp)
	sd	s10,0(sp)
	call	sqlite3CreateFunc
	mv	s0,a0
	j	.L10562
.L10568:
	ld	a5,96(s2)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L10559
	lw	a4,196(s2)
	li	a5,1
	sb	a5,97(s2)
	ble	a4,zero,.L10560
	sw	a5,352(s2)
.L10560:
	mv	a0,s2
	call	sqlite3OomFault.part.0
.L10559:
	mv	a0,s3
	jalr	s9
	lbu	a5,97(s2)
	li	s0,1
	beq	a5,zero,.L10561
	j	.L10563
	.size	createFunctionApi, .-createFunctionApi
	.section	.text.sqlite3_create_function,"ax",@progbits
	.align	1
	.globl	sqlite3_create_function
	.type	sqlite3_create_function, @function
sqlite3_create_function:
	addi	sp,sp,-48
	sd	zero,16(sp)
	sd	zero,8(sp)
	sd	zero,0(sp)
	sd	ra,40(sp)
	call	createFunctionApi
	ld	ra,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_create_function, .-sqlite3_create_function
	.section	.text.sqlite3_create_function_v2,"ax",@progbits
	.align	1
	.globl	sqlite3_create_function_v2
	.type	sqlite3_create_function_v2, @function
sqlite3_create_function_v2:
	addi	sp,sp,-48
	ld	t1,48(sp)
	sd	zero,8(sp)
	sd	zero,0(sp)
	sd	t1,16(sp)
	sd	ra,40(sp)
	call	createFunctionApi
	ld	ra,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_create_function_v2, .-sqlite3_create_function_v2
	.section	.text.sqlite3_create_window_function,"ax",@progbits
	.align	1
	.globl	sqlite3_create_window_function
	.type	sqlite3_create_window_function, @function
sqlite3_create_window_function:
	addi	sp,sp,-48
	ld	t1,56(sp)
	sd	a7,0(sp)
	mv	a7,a6
	sd	t1,16(sp)
	ld	t1,48(sp)
	mv	a6,a5
	li	a5,0
	sd	t1,8(sp)
	sd	ra,40(sp)
	call	createFunctionApi
	ld	ra,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sqlite3_create_window_function, .-sqlite3_create_window_function
	.section	.rodata.str1.8
	.align	3
.LC76:
	.string	"unable to delete/modify collation sequence due to active statements"
	.section	.text.createCollation,"ax",@progbits
	.align	1
	.type	createCollation, @function
createCollation:
	addi	sp,sp,-96
	sd	s0,80(sp)
	mv	s0,a2
	addiw	a2,a2,-4
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s7,24(sp)
	sd	ra,88(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
	andi	a2,a2,251
	mv	s4,a0
	mv	s7,a1
	mv	s1,a3
	mv	s2,a4
	mv	s3,a5
	beq	a2,zero,.L10595
	addiw	a5,s0,-1
	li	a4,2
	sext.w	s6,s0
	bgtu	a5,a4,.L10607
	beq	s7,zero,.L10579
.L10612:
	li	a2,0
	mv	a1,s7
	mv	a0,s4
	call	findCollSeqEntry
	beq	a0,zero,.L10581
	slli	a5,s6,2
	add	a5,a5,s6
	slli	a5,a5,3
	addi	a5,a5,-40
	add	s5,a0,a5
	ld	a5,24(s5)
	beq	a5,zero,.L10581
.L10594:
	lw	a5,184(s4)
	bne	a5,zero,.L10608
	ld	a7,8(s4)
	beq	a7,zero,.L10589
.L10586:
	lbu	a6,189(a7)
	andi	a6,a6,-4
	ori	a6,a6,1
	sb	a6,189(a7)
	ld	a7,16(a7)
	bne	a7,zero,.L10586
.L10589:
	lbu	a5,8(s5)
	andi	a5,a5,247
	beq	a5,s6,.L10609
	beq	s7,zero,.L10610
.L10581:
	mv	a1,s7
	li	a2,1
	mv	a0,s4
	call	findCollSeqEntry
	mv	a1,a0
	beq	a1,zero,.L10596
.L10611:
	slli	a0,s6,2
	add	a0,a0,s6
	slli	a0,a0,3
	andi	s0,s0,8
	addi	a0,a0,-40
	add	a1,a1,a0
	or	s6,s0,s6
	sd	s2,24(a1)
	sd	s1,16(a1)
	sd	s3,32(a1)
	sb	s6,8(a1)
	ld	a5,344(s4)
	sw	zero,80(s4)
	li	s0,0
	beq	a5,zero,.L10600
	li	a1,0
	mv	a0,s4
	call	sqlite3ErrorFinish
.L10600:
	ld	ra,88(sp)
	mv	a0,s0
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	ld	s9,8(sp)
	addi	sp,sp,96
	jr	ra
.L10579:
	ld	a2,16(s4)
	beq	a2,zero,.L10596
	slli	s5,s6,2
	add	s5,s5,s6
	slli	s5,s5,3
	addi	s5,s5,-40
	add	s5,a2,s5
	ld	a5,24(s5)
	bne	a5,zero,.L10594
	mv	a1,a2
.L10613:
	bne	a1,zero,.L10611
.L10596:
	li	s0,7
	j	.L10600
.L10607:
	ld	s0,80(sp)
	ld	ra,88(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	ld	s9,8(sp)
	li	a0,159744
	addi	a0,a0,-1989
	addi	sp,sp,96
	tail	sqlite3MisuseError
.L10595:
	li	s6,2
	bne	s7,zero,.L10612
	j	.L10579
.L10610:
	ld	a2,16(s4)
	mv	a1,a2
	j	.L10613
.L10609:
	li	a2,0
	mv	a1,s7
	addi	a0,s4,512
	call	findElementWithHash
	ld	s9,16(a0)
	addi	s8,s9,8
	addi	s9,s9,128
.L10592:
	lbu	a4,0(s8)
	lbu	a5,8(s5)
	beq	a4,a5,.L10614
.L10590:
	addi	s8,s8,40
	bne	s9,s8,.L10592
	bne	s7,zero,.L10581
	j	.L10610
.L10614:
	ld	a5,24(s8)
	beq	a5,zero,.L10591
	ld	a0,8(s8)
	jalr	a5
.L10591:
	sd	zero,16(s8)
	j	.L10590
.L10608:
	lla	a2,.LC76
	li	a1,5
	mv	a0,s4
	call	sqlite3ErrorWithMsg
	li	s0,5
	j	.L10600
	.size	createCollation, .-createCollation
	.section	.text.sqlite3_create_collation_v2,"ax",@progbits
	.align	1
	.globl	sqlite3_create_collation_v2
	.type	sqlite3_create_collation_v2, @function
sqlite3_create_collation_v2:
	addi	sp,sp,-16
	andi	a2,a2,0xff
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	call	createCollation
	lbu	a5,97(s0)
	bne	a5,zero,.L10616
	li	a5,4096
	addi	a5,a5,-1014
	beq	a0,a5,.L10616
	lw	a5,84(s0)
	ld	ra,8(sp)
	ld	s0,0(sp)
	and	a0,a0,a5
	sext.w	a0,a0
	addi	sp,sp,16
	jr	ra
.L10616:
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	apiOomError
	.size	sqlite3_create_collation_v2, .-sqlite3_create_collation_v2
	.section	.text.sqlite3_create_collation,"ax",@progbits
	.align	1
	.globl	sqlite3_create_collation
	.type	sqlite3_create_collation, @function
sqlite3_create_collation:
	li	a5,0
	tail	sqlite3_create_collation_v2@plt
	.size	sqlite3_create_collation, .-sqlite3_create_collation
	.section	.text.sqlite3ErrorMsg,"ax",@progbits
	.align	1
	.type	sqlite3ErrorMsg, @function
sqlite3ErrorMsg:
	addi	sp,sp,-96
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	ld	s2,0(a0)
	addi	t1,sp,48
	sd	a2,48(sp)
	mv	s0,a0
	mv	a2,t1
	mv	a0,s2
	sd	a5,72(sp)
	sd	a3,56(sp)
	sd	a4,64(sp)
	sd	a6,80(sp)
	sd	a7,88(sp)
	sd	t1,8(sp)
	call	sqlite3VMPrintf
	lbu	a5,101(s2)
	mv	s1,a0
	beq	a5,zero,.L10621
	beq	a0,zero,.L10620
	mv	a1,a0
	mv	a0,s2
	call	sqlite3DbFreeNN
.L10620:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,96
	jr	ra
.L10621:
	lw	a5,48(s0)
	ld	a1,8(s0)
	addiw	a5,a5,1
	sw	a5,48(s0)
	beq	a1,zero,.L10623
	mv	a0,s2
	call	sqlite3DbFreeNN
.L10623:
	li	a5,1
	sd	s1,8(s0)
	sw	a5,24(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,96
	jr	ra
	.size	sqlite3ErrorMsg, .-sqlite3ErrorMsg
	.section	.rodata.str1.8
	.align	3
.LC77:
	.string	"parser stack overflow"
	.section	.text.yyStackOverflow,"ax",@progbits
	.align	1
	.type	yyStackOverflow, @function
yyStackOverflow:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	ld	a2,0(a0)
	addi	s1,a0,16
	ld	s2,8(a0)
	mv	s0,a0
	bleu	a2,s1,.L10632
	mv	a0,s2
	j	.L10633
.L10635:
	ld	a0,8(s0)
.L10633:
	addi	a5,a2,-24
	sd	a5,0(s0)
	lhu	a1,2(a2)
	addi	a3,a2,16
	addi	a2,a2,8
	call	yy_destructor.isra.0
	ld	a2,0(s0)
	bgtu	a2,s1,.L10635
.L10632:
	mv	a0,s2
	lla	a1,.LC77
	call	sqlite3ErrorMsg
	sd	s2,8(s0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	yyStackOverflow, .-yyStackOverflow
	.section	.rodata.str1.8
	.align	3
.LC78:
	.string	"no such collation sequence: %s"
	.section	.text.sqlite3GetCollSeq,"ax",@progbits
	.align	1
	.type	sqlite3GetCollSeq, @function
sqlite3GetCollSeq:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	ld	s4,0(a0)
	mv	s1,a0
	mv	s3,a1
	mv	s2,a3
	mv	s0,a2
	beq	a2,zero,.L10668
.L10637:
	ld	a5,24(s0)
	beq	a5,zero,.L10640
.L10657:
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	jr	ra
.L10640:
	ld	a5,320(s4)
	beq	a5,zero,.L10642
	mv	a1,s2
	mv	a0,s4
	call	sqlite3DbStrDup
	mv	s0,a0
	beq	a0,zero,.L10642
	ld	a0,336(s4)
	ld	a5,320(s4)
	mv	a1,s4
	mv	a3,s0
	mv	a2,s3
	jalr	a5
	mv	a1,s0
	mv	a0,s4
	call	sqlite3DbFreeNN
.L10642:
	beq	s2,zero,.L10644
	li	a2,0
	mv	a1,s2
	mv	a0,s4
	call	findCollSeqEntry
	mv	s0,a0
.L10645:
	beq	s0,zero,.L10646
	slli	a2,s3,2
	add	a2,a2,s3
	slli	a2,a2,3
	addi	a2,a2,-40
	add	s0,s0,a2
	ld	a5,24(s0)
	bne	a5,zero,.L10657
	ld	s6,0(s0)
	lla	s3,.LANCHOR4-528
	lla	s7,.LANCHOR4-525
	li	s5,3
	beq	s6,zero,.L10648
.L10670:
	li	a2,0
	mv	a1,s6
	mv	a0,s4
	call	findCollSeqEntry
.L10649:
	beq	a0,zero,.L10650
	slli	a5,s5,2
	add	a5,a5,s5
	slli	a5,a5,3
	addi	a5,a5,-40
	add	a1,a0,a5
	ld	a5,24(a1)
	bne	a5,zero,.L10669
	addi	s3,s3,1
	beq	s7,s3,.L10646
	lbu	s5,0(s3)
	bne	s6,zero,.L10670
	j	.L10648
.L10646:
	mv	a2,s2
	lla	a1,.LC78
	mv	a0,s1
	call	sqlite3ErrorMsg
	li	a5,257
	sw	a5,24(s1)
	li	s0,0
	j	.L10657
.L10668:
	beq	a3,zero,.L10638
	mv	a1,a3
	mv	a0,s4
	call	findCollSeqEntry
	mv	s0,a0
.L10639:
	beq	s0,zero,.L10640
	slli	a2,s3,2
	add	a2,a2,s3
	slli	a2,a2,3
	addi	a2,a2,-40
	add	s0,s0,a2
	j	.L10637
.L10648:
	ld	a0,16(s4)
	j	.L10649
.L10638:
	ld	s0,16(s4)
	j	.L10639
.L10644:
	ld	s0,16(s4)
	j	.L10645
.L10669:
	li	a2,40
	mv	a0,s0
	call	memcpy@plt
	sd	zero,32(s0)
	j	.L10657
.L10650:
	ld	a5,24(zero)
	ebreak
	.size	sqlite3GetCollSeq, .-sqlite3GetCollSeq
	.section	.text.sqlite3LocateCollSeq,"ax",@progbits
	.align	1
	.type	sqlite3LocateCollSeq, @function
sqlite3LocateCollSeq:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	mv	s0,a0
	ld	a0,0(a0)
	mv	s1,a1
	lbu	s2,94(a0)
	lbu	s3,181(a0)
	beq	a1,zero,.L10672
	mv	a2,s3
	call	findCollSeqEntry
.L10673:
	beq	a0,zero,.L10674
	slli	a5,s2,2
	add	a5,a5,s2
	slli	a5,a5,3
	addi	a5,a5,-40
	add	a0,a0,a5
	bne	s3,zero,.L10671
	ld	a5,24(a0)
	beq	a5,zero,.L10676
.L10671:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L10674:
	bne	s3,zero,.L10671
.L10676:
	mv	a2,a0
	mv	a0,s0
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s3,8(sp)
	mv	a3,s1
	mv	a1,s2
	ld	s1,24(sp)
	ld	s2,16(sp)
	addi	sp,sp,48
	tail	sqlite3GetCollSeq
.L10672:
	ld	a0,16(a0)
	j	.L10673
	.size	sqlite3LocateCollSeq, .-sqlite3LocateCollSeq
	.section	.text.sqlite3KeyInfoOfIndex,"ax",@progbits
	.align	1
	.type	sqlite3KeyInfoOfIndex, @function
sqlite3KeyInfoOfIndex:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	lw	a5,48(a0)
	lhu	s6,96(a1)
	bne	a5,zero,.L10700
	lbu	a5,99(a1)
	mv	s5,a0
	mv	s1,a1
	andi	a5,a5,8
	ld	a0,0(a0)
	beq	a5,zero,.L10684
	lhu	a1,94(a1)
	subw	a2,s6,a1
	call	sqlite3KeyInfoAlloc
	mv	s3,a0
.L10685:
	beq	s3,zero,.L10700
	addi	s2,s3,32
	li	s0,0
	lla	s4,.LANCHOR4-520
	beq	s6,zero,.L10691
.L10690:
	ld	a4,64(s1)
	slli	a5,s0,3
	mv	a0,s5
	add	a5,a4,a5
	ld	a1,0(a5)
	li	a5,0
	beq	a1,s4,.L10689
	call	sqlite3LocateCollSeq
	mv	a5,a0
.L10689:
	sd	a5,0(s2)
	ld	a4,56(s1)
	ld	a5,24(s3)
	addi	s2,s2,8
	add	a4,a4,s0
	lbu	a4,0(a4)
	add	a5,a5,s0
	addi	s0,s0,1
	sb	a4,0(a5)
	sext.w	a5,s0
	blt	a5,s6,.L10690
.L10691:
	lw	a5,48(s5)
	beq	a5,zero,.L10681
	lbu	a5,100(s1)
	andi	a4,a5,1
	bne	a4,zero,.L10692
	ori	a5,a5,1
	sb	a5,100(s1)
	li	a5,513
	sw	a5,24(s5)
.L10692:
	lw	a5,0(s3)
	addiw	a4,a5,-1
	sw	a4,0(s3)
	beq	a4,zero,.L10701
.L10700:
	li	s3,0
.L10681:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	mv	a0,s3
	ld	s3,24(sp)
	addi	sp,sp,64
	jr	ra
.L10684:
	li	a2,0
	mv	a1,s6
	call	sqlite3KeyInfoAlloc
	mv	s3,a0
	j	.L10685
.L10701:
	mv	a0,s3
	call	sqlite3KeyInfoUnref.part.0
	j	.L10700
	.size	sqlite3KeyInfoOfIndex, .-sqlite3KeyInfoOfIndex
	.section	.text.sqlite3VdbeSetP4KeyInfo,"ax",@progbits
	.align	1
	.type	sqlite3VdbeSetP4KeyInfo, @function
sqlite3VdbeSetP4KeyInfo:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	ld	s0,16(a0)
	call	sqlite3KeyInfoOfIndex
	beq	a0,zero,.L10702
	mv	a1,a0
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	li	a2,-9
	addi	sp,sp,16
	tail	sqlite3VdbeAppendP4
.L10702:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	sqlite3VdbeSetP4KeyInfo, .-sqlite3VdbeSetP4KeyInfo
	.section	.text.sqlite3OpenTable,"ax",@progbits
	.align	1
	.type	sqlite3OpenTable, @function
sqlite3OpenTable:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	ra,56(sp)
	sd	s5,8(sp)
	ld	s5,16(a0)
	mv	s1,a0
	mv	s4,a1
	mv	s3,a2
	mv	s0,a3
	mv	s2,a4
	bne	s5,zero,.L10706
	call	sqlite3GetVdbe.part.0
	mv	s5,a0
.L10706:
	ld	a4,0(s0)
	lw	a2,56(s0)
	addi	a3,s2,-109
	seqz	a3,a3
	mv	a1,s3
	mv	a0,s1
	call	sqlite3TableLock
	lw	a5,64(s0)
	andi	a5,a5,32
	beq	a5,zero,.L10716
	ld	s0,16(s0)
	li	a3,2
	bne	s0,zero,.L10708
	j	.L10709
.L10710:
	ld	s0,40(s0)
	beq	s0,zero,.L10709
.L10708:
	lbu	a5,99(s0)
	andi	a5,a5,3
	bne	a5,a3,.L10710
	lw	a3,88(s0)
	mv	a1,s2
	mv	a4,s3
	mv	a2,s4
	mv	a0,s5
	call	sqlite3VdbeAddOp3
	mv	a1,s0
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	mv	a0,s1
	ld	s1,40(sp)
	addi	sp,sp,64
	tail	sqlite3VdbeSetP4KeyInfo
.L10716:
	lh	a5,70(s0)
	lw	a3,56(s0)
	ld	s0,48(sp)
	ld	ra,56(sp)
	ld	s1,40(sp)
	mv	a4,s3
	mv	a2,s4
	ld	s3,24(sp)
	ld	s4,16(sp)
	mv	a1,s2
	mv	a0,s5
	ld	s2,32(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	tail	sqlite3VdbeAddOp4Int
.L10709:
	lw	a5,88(zero)
	ebreak
	.size	sqlite3OpenTable, .-sqlite3OpenTable
	.section	.text.autoIncrementEnd,"ax",@progbits
	.align	1
	.type	autoIncrementEnd, @function
autoIncrementEnd:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	ld	s1,152(a0)
	ld	s8,16(a0)
	ld	s3,0(a0)
	beq	s1,zero,.L10717
	mv	s2,a0
	lla	s4,.LANCHOR4-512
	li	s5,8
	j	.L10722
.L10719:
	sb	a4,31(s2)
	lw	s6,12(a5)
.L10720:
	lw	a3,144(s8)
	mv	a4,s0
	addiw	a2,s0,2
	addiw	a3,a3,7
	li	a1,55
	mv	a0,s8
	call	sqlite3VdbeAddOp3
	ld	a5,24(s7)
	lw	a2,16(s1)
	li	a4,109
	ld	a3,104(a5)
	li	a1,0
	mv	a0,s2
	call	sqlite3OpenTable
	li	a1,5
	mv	a2,s4
	mv	a0,s8
	call	sqlite3VdbeAddOpList.isra.0
	mv	a5,a0
	addiw	a4,s0,1
	mv	a1,s6
	addiw	s0,s0,-1
	mv	a0,s2
	beq	a5,zero,.L10717
	sw	a4,4(a5)
	sw	a4,32(a5)
	sw	s0,52(a5)
	sw	s6,60(a5)
	sw	s6,80(a5)
	sw	a4,84(a5)
	sh	s5,74(a5)
	beq	s6,zero,.L10721
	call	sqlite3ReleaseTempReg.part.0
.L10721:
	ld	s1,0(s1)
	beq	s1,zero,.L10717
.L10722:
	lbu	a2,31(s2)
	lw	a3,16(s1)
	ld	s7,32(s3)
	addiw	a4,a2,-1
	andi	a4,a4,0xff
	addi	a5,a4,48
	slli	a3,a3,5
	slli	a5,a5,2
	lw	s0,20(s1)
	add	a5,s2,a5
	add	s7,s7,a3
	bne	a2,zero,.L10719
	lw	a5,56(s2)
	addiw	s6,a5,1
	sw	s6,56(s2)
	j	.L10720
.L10717:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
	.size	autoIncrementEnd, .-autoIncrementEnd
	.section	.text.sqlite3OpenTableAndIndices.part.0,"ax",@progbits
	.align	1
	.type	sqlite3OpenTableAndIndices.part.0, @function
sqlite3OpenTableAndIndices.part.0:
	addi	sp,sp,-112
	sd	s0,96(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	sd	s8,32(sp)
	sd	s11,8(sp)
	sd	ra,104(sp)
	sd	s1,88(sp)
	sd	s7,40(sp)
	sd	s9,24(sp)
	sd	s10,16(sp)
	mv	s3,a1
	ld	a1,112(a1)
	mv	s2,a0
	mv	s11,a2
	ld	a0,0(a0)
	mv	s5,a3
	mv	s0,a4
	mv	s8,a5
	mv	s6,a6
	mv	s4,a7
	beq	a1,zero,.L10750
	call	sqlite3SchemaToIndex.part.0
	mv	s10,a0
.L10735:
	ld	s9,16(s2)
	beq	s9,zero,.L10774
.L10736:
	bge	s0,zero,.L10737
	lw	s0,52(s2)
.L10737:
	addiw	s1,s0,1
	mv	s7,s1
	beq	s6,zero,.L10738
	sw	s0,0(s6)
.L10738:
	lw	a5,64(s3)
	andi	a5,a5,32
	bne	a5,zero,.L10739
	beq	s8,zero,.L10740
	lbu	a5,0(s8)
	beq	a5,zero,.L10739
.L10740:
	mv	a4,s11
	mv	a3,s3
	mv	a2,s10
	mv	a1,s0
	mv	a0,s2
	call	sqlite3OpenTable
.L10741:
	beq	s4,zero,.L10742
	sw	s7,0(s4)
.L10742:
	ld	s0,16(s3)
	li	s7,0
	beq	s0,zero,.L10743
	li	s4,2
.L10748:
	lbu	a7,99(s0)
	mv	a5,s1
	mv	a2,s1
	andi	a7,a7,3
	mv	a4,s10
	mv	a1,s11
	mv	a0,s9
	add	a3,s8,s7
	addiw	s1,s1,1
	beq	a7,s4,.L10775
.L10744:
	beq	s8,zero,.L10745
	lbu	a5,1(a3)
	beq	a5,zero,.L10746
.L10745:
	lw	a3,88(s0)
	call	sqlite3VdbeAddOp3
	mv	a1,s0
	mv	a0,s2
	call	sqlite3VdbeSetP4KeyInfo
	lw	a5,144(s9)
	slli	a4,a5,1
	add	a4,a4,a5
	slli	a4,a4,3
	ble	a5,zero,.L10746
	ld	a5,136(s9)
	add	a4,a5,a4
	sh	s5,-22(a4)
.L10746:
	ld	s0,40(s0)
	addiw	s7,s7,1
	bne	s0,zero,.L10748
.L10743:
	lw	a5,52(s2)
	bge	a5,s1,.L10749
	sw	s1,52(s2)
.L10749:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s2,80(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	ld	s8,32(sp)
	ld	s9,24(sp)
	ld	s10,16(sp)
	ld	s11,8(sp)
	mv	a0,s7
	ld	s7,40(sp)
	addi	sp,sp,112
	jr	ra
.L10739:
	ld	a4,0(s3)
	lw	a2,56(s3)
	addi	a3,s11,-109
	seqz	a3,a3
	mv	a1,s10
	mv	a0,s2
	call	sqlite3TableLock
	j	.L10741
.L10775:
	lw	a6,64(s3)
	andi	a6,a6,32
	beq	a6,zero,.L10744
	li	s5,0
	beq	s6,zero,.L10744
	sw	a5,0(s6)
	j	.L10744
.L10774:
	mv	a0,s2
	call	sqlite3GetVdbe.part.0
	mv	s9,a0
	j	.L10736
.L10750:
	li	s10,-999424
	addi	s10,s10,-576
	j	.L10735
	.size	sqlite3OpenTableAndIndices.part.0, .-sqlite3OpenTableAndIndices.part.0
	.section	.text.fkLookupParent.constprop.0,"ax",@progbits
	.align	1
	.type	fkLookupParent.constprop.0, @function
fkLookupParent.constprop.0:
	addi	sp,sp,-160
	sd	s2,128(sp)
	sd	s3,120(sp)
	sd	s4,112(sp)
	sd	s5,104(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	sd	s10,64(sp)
	sd	ra,152(sp)
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	s8,80(sp)
	sd	s9,72(sp)
	sd	s11,56(sp)
	ld	s0,16(a0)
	sd	a2,24(sp)
	mv	s4,a0
	mv	s10,a1
	mv	s7,a3
	mv	s2,a4
	mv	s3,a5
	mv	s6,a6
	mv	s5,a7
	bne	s0,zero,.L10777
	call	sqlite3GetVdbe.part.0
	mv	s0,a0
.L10777:
	lw	s1,68(s4)
	lw	a4,52(s4)
	li	a5,-1
	addiw	s1,s1,-1
	sd	a4,8(sp)
	sw	s1,68(s4)
	beq	s5,a5,.L10826
.L10778:
	lw	s9,40(s2)
	ble	s9,zero,.L10779
	addiw	s11,s6,1
	li	s8,0
.L10780:
	slli	a4,s8,2
	add	a4,s3,a4
	lw	a2,0(a4)
	mv	a3,s1
	li	a4,0
	addw	a2,a2,s11
	li	a1,50
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	s9,40(s2)
	addiw	s8,s8,1
	blt	s8,s9,.L10780
.L10779:
	ld	a5,8(sp)
	addiw	s8,a5,-1
	beq	s7,zero,.L10827
	mv	a1,s9
	mv	a0,s4
	call	sqlite3GetTempRange
	lbu	a5,31(s4)
	sd	a0,32(sp)
	beq	a5,zero,.L10828
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s4)
	add	a5,s4,a4
	lw	a5,12(a5)
	sd	a5,40(sp)
.L10794:
	lw	a3,88(s7)
	li	a1,108
	mv	a4,s10
	mv	a2,s8
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a1,s7
	mv	a0,s4
	call	sqlite3VdbeSetP4KeyInfo
	ble	s9,zero,.L10799
	addiw	a5,s6,1
	sd	a5,16(sp)
	ld	a5,32(sp)
	mv	s11,s3
	sext.w	s10,a5
	addw	a5,a5,s9
	sd	a5,8(sp)
.L10798:
	lw	a2,0(s11)
	ld	a5,16(sp)
	mv	a3,s10
	li	a4,0
	addw	a2,a2,a5
	li	a1,78
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,8(sp)
	addiw	s10,s10,1
	addi	s11,s11,4
	bne	a5,s10,.L10798
.L10799:
	ld	a5,0(s2)
	ld	a4,24(sp)
	beq	a4,a5,.L10829
.L10797:
	ld	a0,0(s4)
	mv	a1,s7
	call	sqlite3IndexAffinityStr
	ld	s6,40(sp)
	ld	a2,32(sp)
	mv	s3,a0
	mv	a4,s6
	mv	a3,s9
	li	a1,92
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	mv	a3,s9
	mv	a2,s3
	mv	a0,s0
	call	sqlite3VdbeChangeP4
	li	a5,0
	mv	a4,s6
	mv	a3,s1
	mv	a2,s8
	li	a1,29
	mv	a0,s0
	call	sqlite3VdbeAddOp4Int
	beq	s6,zero,.L10805
	mv	a1,s6
	mv	a0,s4
	call	sqlite3ReleaseTempReg.part.0
.L10805:
	li	a5,1
	beq	s9,a5,.L10830
	lw	a5,40(s4)
	bge	a5,s9,.L10792
	ld	a5,32(sp)
	sw	s9,40(s4)
	sw	a5,44(s4)
.L10792:
	lbu	a2,44(s2)
	bne	a2,zero,.L10808
	ld	a5,0(s4)
	ld	a5,48(a5)
	slli	a4,a5,44
	blt	a4,zero,.L10809
	ld	a5,160(s4)
	beq	a5,zero,.L10831
	li	a4,1
	bne	s5,a4,.L10808
.L10813:
	li	a4,1
	sb	a4,33(a5)
	lbu	a2,44(s2)
.L10808:
	li	a4,0
	mv	a3,s5
	li	a1,150
	mv	a0,s0
	call	sqlite3VdbeAddOp3
.L10812:
	mv	a1,s1
	mv	a0,s0
	call	sqlite3VdbeResolveLabel
	mv	a0,s0
	ld	s0,144(sp)
	ld	ra,152(sp)
	ld	s1,136(sp)
	ld	s2,128(sp)
	ld	s3,120(sp)
	ld	s4,112(sp)
	ld	s5,104(sp)
	ld	s6,96(sp)
	ld	s7,88(sp)
	ld	s9,72(sp)
	ld	s10,64(sp)
	ld	s11,56(sp)
	mv	a2,s8
	ld	s8,80(sp)
	li	a4,0
	li	a3,0
	li	a1,117
	addi	sp,sp,160
	tail	sqlite3VdbeAddOp3
.L10827:
	lbu	a5,31(s4)
	beq	a5,zero,.L10832
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s4)
	add	a5,s4,a4
	lw	s7,12(a5)
.L10783:
	lw	a2,0(s3)
	addiw	a5,s6,1
	li	a4,0
	addw	a2,a5,a2
	mv	a3,s7
	li	a1,79
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	li	a4,0
	li	a3,0
	mv	a2,s7
	li	a1,15
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,0(s2)
	ld	a4,24(sp)
	mv	s3,a0
	beq	a5,a4,.L10833
.L10785:
	ld	a3,24(sp)
	mv	a2,s10
	mv	a1,s8
	mv	a0,s4
	li	a4,108
	call	sqlite3OpenTable
	mv	a4,s7
	li	a3,0
	mv	a2,s8
	li	a1,31
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a3,s1
	li	a4,0
	li	a2,0
	li	a1,11
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a5,144(s0)
	addiw	a3,a5,-2
	bge	a3,zero,.L10787
	addiw	a3,a5,-1
.L10787:
	ld	a2,0(s0)
	lla	a4,.LANCHOR0+568
	lbu	a2,97(a2)
	bne	a2,zero,.L10788
	ld	a4,136(s0)
	slli	a2,a3,1
	add	a3,a2,a3
	slli	a3,a3,3
	add	a4,a4,a3
.L10788:
	sw	a5,8(a4)
	bge	s3,zero,.L10789
	addiw	s3,a5,-1
.L10789:
	ld	a3,0(s0)
	lla	a4,.LANCHOR0+568
	lbu	a3,97(a3)
	bne	a3,zero,.L10790
	ld	a4,136(s0)
	slli	a3,s3,1
	add	a3,a3,s3
	slli	a3,a3,3
	add	a4,a4,a3
.L10790:
	sw	a5,8(a4)
	beq	s7,zero,.L10792
	mv	a1,s7
	mv	a0,s4
	call	sqlite3ReleaseTempReg.part.0
	j	.L10792
.L10826:
	lbu	a2,44(s2)
	li	a4,0
	mv	a3,s1
	li	a1,46
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	j	.L10778
.L10828:
	lw	a5,56(s4)
	addiw	a4,a5,1
	sd	a4,40(sp)
	sw	a4,56(s4)
	j	.L10794
.L10832:
	lw	a5,56(s4)
	addiw	s7,a5,1
	sw	s7,56(s4)
	j	.L10783
.L10809:
	li	a5,1
	bne	s5,a5,.L10808
	ld	a5,160(s4)
	bne	a5,zero,.L10813
	mv	a5,s4
	j	.L10813
.L10829:
	li	a5,1
	bne	s5,a5,.L10797
	lw	s11,144(s0)
	addiw	s11,s11,1
	addw	a5,s11,s9
	sd	a5,8(sp)
	ble	s9,zero,.L10804
	addiw	a4,s9,-1
	mv	s11,s3
	mv	s3,a4
	slli	s3,s3,32
	srli	s3,s3,30
	addi	a4,s11,4
	add	a5,s3,a4
	addiw	s10,s6,1
	sd	a5,16(sp)
	li	s3,0
.L10803:
	ld	a4,8(s7)
	ld	a5,24(sp)
	lw	a2,0(s11)
	add	a4,a4,s3
	lh	t1,0(a4)
	lh	t3,68(a5)
	ld	a3,8(sp)
	li	a1,52
	mv	a0,s0
	addi	s11,s11,4
	addw	a2,a2,s10
	mv	a4,s6
	beq	t3,t1,.L10801
	addw	a4,t1,s10
.L10801:
	call	sqlite3VdbeAddOp3
	lw	a3,144(s0)
	addi	s3,s3,2
	slli	a4,a3,1
	add	a4,a4,a3
	slli	a4,a4,3
	ble	a3,zero,.L10802
	ld	a3,136(s0)
	li	a5,16
	add	a4,a3,a4
	sh	a5,-22(a4)
.L10802:
	ld	a5,16(sp)
	bne	a5,s11,.L10803
.L10804:
	li	a4,0
	mv	a3,s1
	li	a2,0
	li	a1,11
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	j	.L10797
.L10831:
	lbu	a5,32(s4)
	beq	a5,zero,.L10834
	li	a4,1
	mv	a5,s4
	beq	s5,a4,.L10813
	j	.L10808
.L10833:
	li	a5,1
	bne	s5,a5,.L10785
	mv	a3,s1
	mv	a4,s7
	mv	a2,s6
	li	a1,53
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a3,144(s0)
	ble	a3,zero,.L10785
	ld	a4,136(s0)
	slli	a5,a3,1
	add	a5,a5,a3
	slli	a5,a5,3
	add	a5,a4,a5
	li	a4,144
	sh	a4,-22(a5)
	j	.L10785
.L10830:
	ld	a1,32(sp)
	mv	a0,s4
	call	sqlite3ReleaseTempRange.part.0
	j	.L10792
.L10834:
	li	a5,4
	li	a4,-1
	li	a3,0
	li	a2,2
	li	a1,787
	mv	a0,s4
	call	sqlite3HaltConstraint
	j	.L10812
	.size	fkLookupParent.constprop.0, .-fkLookupParent.constprop.0
	.section	.rodata.str1.8
	.align	3
.LC79:
	.string	"sqlite\\_%"
	.align	3
.LC80:
	.string	"BBB"
	.section	.text.analyzeOneTable,"ax",@progbits
	.align	1
	.type	analyzeOneTable, @function
analyzeOneTable:
	addi	sp,sp,-272
	sd	s1,248(sp)
	sd	s6,208(sp)
	sd	s7,200(sp)
	sd	ra,264(sp)
	sd	s0,256(sp)
	sd	s2,240(sp)
	sd	s3,232(sp)
	sd	s4,224(sp)
	sd	s5,216(sp)
	sd	s8,192(sp)
	sd	s9,184(sp)
	sd	s10,176(sp)
	sd	s11,168(sp)
	mv	s1,a0
	ld	a7,0(s1)
	lw	a0,56(a0)
	addiw	a6,a4,7
	mv	s7,a4
	sw	a6,28(sp)
	sd	a6,80(sp)
	sext.w	a4,a0
	sd	a7,72(sp)
	sd	a2,32(sp)
	sd	a3,96(sp)
	sd	a5,112(sp)
	mv	s6,a1
	bge	a4,a6,.L10836
	mv	a0,a6
.L10836:
	ld	s9,16(s1)
	sw	a0,56(s1)
	beq	s9,zero,.L10904
.L10837:
	beq	s6,zero,.L10835
	lw	a4,56(s6)
	bne	a4,zero,.L10905
.L10835:
	ld	ra,264(sp)
	ld	s0,256(sp)
	ld	s1,248(sp)
	ld	s2,240(sp)
	ld	s3,232(sp)
	ld	s4,224(sp)
	ld	s5,216(sp)
	ld	s6,208(sp)
	ld	s7,200(sp)
	ld	s8,192(sp)
	ld	s9,184(sp)
	ld	s10,176(sp)
	ld	s11,168(sp)
	addi	sp,sp,272
	jr	ra
.L10904:
	mv	a0,s1
	call	sqlite3GetVdbe.part.0
	mv	s9,a0
	bne	a0,zero,.L10837
	j	.L10835
.L10905:
	ld	a1,0(s6)
	li	a2,92
	lla	a0,.LC79
	call	sqlite3_strlike@plt
	beq	a0,zero,.L10835
	ld	a1,112(s6)
	beq	a1,zero,.L10873
	ld	a0,72(sp)
	call	sqlite3SchemaToIndex.part.0
	sd	a0,104(sp)
.L10840:
	lw	a2,56(s6)
	ld	a1,104(sp)
	ld	a4,0(s6)
	li	a3,0
	mv	a0,s1
	call	sqlite3TableLock
	ld	a5,112(sp)
	addiw	a1,s7,4
	lw	a6,52(s1)
	sd	a1,144(sp)
	addiw	a1,s7,5
	sd	a1,120(sp)
	addiw	a1,s7,6
	addiw	a3,a5,2
	sext.w	a2,a6
	sd	a1,152(sp)
	addiw	s3,s7,3
	addiw	s4,a5,1
	blt	a2,a3,.L10906
.L10841:
	ld	a2,104(sp)
	ld	a1,112(sp)
	li	a4,108
	mv	a3,s6
	mv	a0,s1
	sw	a6,52(s1)
	call	sqlite3OpenTable
	ld	a2,0(s6)
	addiw	a1,s7,4
	mv	a0,s9
	call	sqlite3VdbeLoadString
	ld	s0,16(s6)
	beq	s0,zero,.L10842
	addiw	a5,s7,1
	sd	a5,40(sp)
	li	a5,1
	sd	a5,64(sp)
	lw	a5,28(sp)
	addiw	s8,s7,2
	sd	a5,48(sp)
	j	.L10866
.L10844:
	ld	s0,40(s0)
	beq	s0,zero,.L10907
.L10866:
	ld	a5,32(sp)
	beq	a5,zero,.L10843
	bne	s0,a5,.L10844
.L10843:
	ld	a4,72(s0)
	ld	a5,64(sp)
	lw	a3,64(s6)
	snez	a4,a4
	neg	a4,a4
	and	a5,a5,a4
	andi	a3,a3,32
	sd	a5,64(sp)
	lbu	a2,99(s0)
	beq	a3,zero,.L10846
	andi	a4,a2,3
	li	a3,2
	beq	a4,a3,.L10908
.L10846:
	andi	a4,a2,8
	lhu	s5,96(s0)
	ld	a2,0(s0)
	beq	a4,zero,.L10848
	lhu	s2,94(s0)
	addiw	s2,s2,-1
.L10847:
	ld	a1,120(sp)
	mv	a0,s9
	call	sqlite3VdbeLoadString
	lw	a3,56(s1)
	ld	a5,80(sp)
	sext.w	a2,a3
	addw	a1,s2,a5
	mv	a4,a1
	bge	a1,a2,.L10849
	mv	a4,a3
.L10849:
	sw	a4,56(s1)
	lw	a3,88(s0)
	ld	a4,104(sp)
	mv	a2,s4
	li	a1,108
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a1,s0
	mv	a0,s1
	call	sqlite3VdbeSetP4KeyInfo
	li	a4,0
	mv	a3,s8
	mv	a2,s5
	li	a1,70
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	lhu	a2,94(s0)
	li	a1,70
	li	a4,0
	mv	a3,s3
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	ld	a4,40(sp)
	mv	a3,s8
	li	a2,0
	li	a1,63
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,-8
	lla	a2,.LANCHOR5-1360
	mv	a0,s9
	call	sqlite3VdbeChangeP4
	lw	a3,144(s9)
	ble	a3,zero,.L10850
	ld	a2,136(s9)
	slli	a4,a3,1
	add	a4,a4,a3
	slli	a4,a4,3
	add	a4,a2,a4
	li	a3,2
	sh	a3,-22(a4)
.L10850:
	li	a4,0
	li	a3,0
	mv	a2,s4
	li	a1,36
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a6,a0
	li	a4,0
	mv	a3,s8
	li	a2,0
	li	a1,70
	mv	a0,s9
	sd	a6,56(sp)
	call	sqlite3VdbeAddOp3
	ble	s2,zero,.L10909
	lw	a4,68(s1)
	ld	a0,72(sp)
	slli	a1,s2,2
	addiw	a5,a4,-1
	sw	a5,68(s1)
	sd	a5,128(sp)
	call	sqlite3DbMallocRawNN
	sd	a0,136(sp)
	beq	a0,zero,.L10844
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,11
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	lw	a5,144(s9)
	li	a4,1
	sd	a5,88(sp)
	beq	s2,a4,.L10910
.L10853:
	ld	a7,136(sp)
	li	s10,0
	li	s11,0
	mv	s5,a7
.L10855:
	ld	a4,64(s0)
	slli	a3,s10,3
	mv	a0,s1
	add	a4,a4,a3
	ld	a1,0(a4)
	sd	a7,16(sp)
	call	sqlite3LocateCollSeq
	mv	t1,a0
	mv	a2,s11
	li	a1,70
	li	a4,0
	mv	a3,s8
	mv	a0,s9
	sd	t1,8(sp)
	call	sqlite3VdbeAddOp3
	mv	a3,s11
	mv	a4,s3
	mv	a2,s4
	li	a1,90
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	lw	a5,28(sp)
	li	a3,0
	mv	a2,s3
	addw	a4,a5,s10
	li	a1,52
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	ld	t1,8(sp)
	mv	s11,a0
	li	a3,-2
	mv	a1,a0
	mv	a2,t1
	mv	a0,s9
	call	sqlite3VdbeChangeP4
	ld	a7,16(sp)
	addi	s10,s10,1
	sw	s11,0(a7)
	lw	a3,144(s9)
	sext.w	s11,s10
	slli	a4,a3,1
	add	a4,a4,a3
	slli	a4,a4,3
	ble	a3,zero,.L10854
	ld	a3,136(s9)
	li	a5,128
	add	a4,a3,a4
	sh	a5,-22(a4)
.L10854:
	addi	a7,a7,4
	bgt	s2,s11,.L10855
	li	a4,0
	mv	a3,s8
	mv	a2,s2
	li	a1,70
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	ld	a3,128(sp)
	li	a1,11
	li	a4,0
	li	a2,0
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	ld	a5,88(sp)
	lw	a1,144(s9)
	addiw	a3,a5,-1
	bge	a3,zero,.L10856
	addiw	a3,a1,-1
.L10856:
	ld	a2,0(s9)
	lla	a4,.LANCHOR0+568
	lbu	a2,97(a2)
	bne	a2,zero,.L10857
	ld	a4,136(s9)
	slli	a2,a3,1
	add	a3,a2,a3
	slli	a3,a3,3
	add	a4,a4,a3
.L10857:
	sw	a1,8(a4)
	li	s11,0
.L10860:
	ld	a5,48(sp)
	lw	t1,0(s5)
	mv	a3,s11
	addw	a4,s11,a5
	lw	t3,144(s9)
	mv	a2,s4
	li	a1,90
	mv	a0,s9
	addiw	s11,s11,1
	bge	t1,zero,.L10858
	addiw	t1,t3,-1
.L10858:
	ld	t4,0(s9)
	slli	a6,t1,1
	add	a6,a6,t1
	lbu	t4,97(t4)
	slli	a6,a6,3
	lla	t1,.LANCHOR0+568
	bne	t4,zero,.L10859
	ld	t1,136(s9)
	add	t1,t1,a6
.L10859:
	sw	t3,8(t1)
	addi	s5,s5,4
	call	sqlite3VdbeAddOp3
	bne	s2,s11,.L10860
	ld	a1,128(sp)
	mv	a0,s9
	call	sqlite3VdbeResolveLabel
	ld	a1,136(sp)
	ld	a0,72(sp)
	call	sqlite3DbFreeNN
.L10852:
	ld	a3,40(sp)
	mv	a4,s3
	li	a2,1
	li	a1,63
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,-8
	lla	a2,.LANCHOR5-1288
	mv	a0,s9
	call	sqlite3VdbeChangeP4
	lw	a3,144(s9)
	ble	a3,zero,.L10861
	ld	a2,136(s9)
	slli	a4,a3,1
	add	a4,a4,a3
	slli	a4,a4,3
	add	a4,a2,a4
	li	a3,2
	sh	a3,-22(a4)
.L10861:
	ld	a3,88(sp)
	mv	a2,s4
	li	a1,5
	li	a4,0
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	ld	a4,152(sp)
	ld	a3,40(sp)
	li	a2,0
	li	a1,63
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,-8
	lla	a2,.LANCHOR5-1216
	mv	a0,s9
	call	sqlite3VdbeChangeP4
	lw	a3,144(s9)
	ble	a3,zero,.L10862
	ld	a2,136(s9)
	slli	a4,a3,1
	add	a4,a4,a3
	slli	a4,a4,3
	add	a4,a2,a4
	li	a3,1
	sh	a3,-22(a4)
.L10862:
	ld	a2,144(sp)
	mv	a4,s3
	li	a3,3
	li	a1,92
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,0
	lla	a2,.LC80
	mv	a0,s9
	call	sqlite3VdbeChangeP4
	ld	s2,96(sp)
	li	a1,121
	li	a4,0
	mv	a3,s7
	mv	a2,s2
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a4,s7
	mv	a3,s3
	mv	a2,s2
	li	a1,122
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	lw	a4,144(s9)
	ble	a4,zero,.L10863
	ld	a2,136(s9)
	slli	a3,a4,1
	add	a4,a3,a4
	slli	a4,a4,3
	add	a4,a2,a4
	li	a3,8
	sh	a3,-22(a4)
	lw	a4,144(s9)
.L10863:
	ld	a5,56(sp)
	bge	a5,zero,.L10864
	addiw	a5,a4,-1
	sd	a5,56(sp)
.L10864:
	ld	a2,0(s9)
	lla	a3,.LANCHOR0+568
	lbu	a2,97(a2)
	bne	a2,zero,.L10865
	ld	a5,56(sp)
	ld	a3,136(s9)
	slli	a2,a5,1
	add	a2,a2,a5
	slli	a2,a2,3
	add	a3,a3,a2
.L10865:
	sw	a4,8(a3)
	ld	s0,40(s0)
	bne	s0,zero,.L10866
.L10907:
	ld	a5,32(sp)
	bne	a5,zero,.L10835
	ld	a5,64(sp)
	beq	a5,zero,.L10835
	j	.L10870
.L10906:
	mv	a6,a3
	j	.L10841
.L10848:
	addiw	s2,s5,-1
	j	.L10847
.L10909:
	lw	a5,144(s9)
	sd	a5,88(sp)
	j	.L10852
.L10908:
	lhu	s5,94(s0)
	ld	a2,0(s6)
	addiw	s2,s5,-1
	j	.L10847
.L10910:
	lhu	a4,94(s0)
	bne	a4,s2,.L10853
	lbu	a4,98(s0)
	beq	a4,zero,.L10853
	ld	a3,128(sp)
	ld	a2,80(sp)
	li	a4,0
	li	a1,51
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	j	.L10853
.L10842:
	ld	a5,32(sp)
	bne	a5,zero,.L10835
.L10870:
	ld	s0,152(sp)
	ld	a2,112(sp)
	li	a4,0
	mv	a3,s0
	li	a1,93
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a2,s0
	li	a4,0
	li	a3,0
	li	a1,20
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	ld	a3,120(sp)
	li	a2,0
	li	a1,73
	li	a4,0
	mv	s0,a0
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	ld	a2,144(sp)
	mv	a4,s3
	li	a3,3
	li	a1,92
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,0
	lla	a2,.LC80
	mv	a0,s9
	call	sqlite3VdbeChangeP4
	ld	s1,96(sp)
	li	a1,121
	li	a4,0
	mv	a3,s7
	mv	a2,s1
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	mv	a4,s7
	mv	a3,s3
	mv	a2,s1
	li	a1,122
	mv	a0,s9
	call	sqlite3VdbeAddOp3
	lw	a4,144(s9)
	ble	a4,zero,.L10869
	ld	a2,136(s9)
	slli	a3,a4,1
	add	a4,a3,a4
	slli	a4,a4,3
	add	a4,a2,a4
	li	a3,8
	sh	a3,-22(a4)
	lw	a4,144(s9)
.L10869:
	bge	s0,zero,.L10871
	addiw	s0,a4,-1
.L10871:
	ld	a2,0(s9)
	lla	a3,.LANCHOR0+568
	lbu	a2,97(a2)
	bne	a2,zero,.L10872
	ld	a3,136(s9)
	slli	a5,s0,1
	add	a5,a5,s0
	slli	a5,a5,3
	add	a3,a3,a5
.L10872:
	sw	a4,8(a3)
	j	.L10835
.L10873:
	li	a4,-999424
	addi	a5,a4,-576
	sd	a5,104(sp)
	j	.L10840
	.size	analyzeOneTable, .-analyzeOneTable
	.section	.text.sqlite3ExprCollSeq,"ax",@progbits
	.align	1
	.type	sqlite3ExprCollSeq, @function
sqlite3ExprCollSeq:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s0,a0
	ld	a0,0(a0)
	beq	a1,zero,.L10912
	lw	a3,4(a1)
	li	a7,4096
	li	a6,168
	addi	a7,a7,-2048
	li	t1,77
	li	t3,36
	li	t4,166
	li	t5,106
.L10926:
	andi	a5,a3,512
	lbu	a4,0(a1)
	bne	a5,zero,.L10912
.L10955:
	bne	a4,a6,.L10913
	lbu	a4,54(a1)
.L10913:
	addiw	a5,a4,-162
	andi	a5,a5,-3
	sext.w	a5,a5
	beq	a5,zero,.L10914
	beq	a4,t1,.L10914
	bne	a4,t3,.L10954
.L10919:
	ld	a1,16(a1)
.L10921:
	beq	a1,zero,.L10912
	lw	a3,4(a1)
	lbu	a4,0(a1)
	andi	a5,a3,512
	beq	a5,zero,.L10955
.L10912:
	li	s1,0
.L10911:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s2,0(sp)
	mv	a0,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L10954:
	beq	a4,t4,.L10919
	bne	a4,t5,.L10922
	ld	a3,8(a1)
	lbu	a1,94(a0)
	li	a2,0
	mv	a0,s0
	call	sqlite3GetCollSeq
	mv	s1,a0
	beq	a0,zero,.L10912
.L10918:
	ld	a5,24(s1)
	bne	a5,zero,.L10911
	ld	a5,0(s0)
	ld	a3,0(s1)
	mv	a2,s1
	lbu	a1,94(a5)
	mv	a0,s0
	call	sqlite3GetCollSeq
	bne	a0,zero,.L10911
	j	.L10912
.L10914:
	ld	a5,64(a1)
	bne	a5,zero,.L10956
.L10922:
	andi	a5,a3,256
	beq	a5,zero,.L10912
	ld	a4,16(a1)
	beq	a4,zero,.L10923
	lw	a2,4(a4)
	andi	a5,a2,256
	beq	a5,zero,.L10923
.L10924:
	mv	a3,a2
	mv	a1,a4
	j	.L10926
.L10923:
	ld	a5,32(a1)
	ld	a1,24(a1)
	beq	a5,zero,.L10921
	and	a3,a3,a7
	sext.w	a3,a3
	bne	a3,zero,.L10921
	lw	a4,0(a5)
	ble	a4,zero,.L10921
	addiw	a3,a4,-1
	slli	a3,a3,32
	addi	a4,a5,40
	srli	a3,a3,27
	addi	a5,a5,8
	add	a3,a3,a4
.L10925:
	ld	a4,0(a5)
	addi	a5,a5,32
	lw	a2,4(a4)
	andi	t6,a2,256
	bne	t6,zero,.L10924
	bne	a3,a5,.L10925
	j	.L10921
.L10956:
	lh	a4,48(a1)
	blt	a4,zero,.L10912
	ld	a5,8(a5)
	slli	a4,a4,5
	lbu	s2,94(a0)
	add	a4,a5,a4
	ld	a1,16(a4)
	beq	a1,zero,.L10916
	li	a2,0
	call	findCollSeqEntry
.L10917:
	beq	a0,zero,.L10912
	slli	s1,s2,2
	add	s1,s1,s2
	slli	s1,s1,3
	addi	s1,s1,-40
	add	s1,a0,s1
	j	.L10918
.L10916:
	ld	a0,16(a0)
	j	.L10917
	.size	sqlite3ExprCollSeq, .-sqlite3ExprCollSeq
	.section	.text.sqlite3BinaryCompareCollSeq,"ax",@progbits
	.align	1
	.type	sqlite3BinaryCompareCollSeq, @function
sqlite3BinaryCompareCollSeq:
	lw	a4,4(a1)
	andi	a4,a4,256
	bne	a4,zero,.L10969
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	mv	a5,a1
	mv	s1,a0
	mv	s0,a2
	beq	a2,zero,.L10959
	lw	a4,4(a2)
	mv	a1,a2
	andi	a4,a4,256
	bne	a4,zero,.L10970
.L10959:
	mv	a1,a5
	mv	a0,s1
	call	sqlite3ExprCollSeq
	beq	a0,zero,.L10971
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L10971:
	mv	a1,s0
	mv	a0,s1
.L10970:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
.L10969:
	tail	sqlite3ExprCollSeq
	.size	sqlite3BinaryCompareCollSeq, .-sqlite3BinaryCompareCollSeq
	.section	.text.whereRangeVectorLen.isra.0,"ax",@progbits
	.align	1
	.type	whereRangeVectorLen.isra.0, @function
whereRangeVectorLen.isra.0:
	addi	sp,sp,-128
	sd	s2,96(sp)
	sd	s4,80(sp)
	sd	s6,64(sp)
	sd	s10,32(sp)
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s3,88(sp)
	sd	s5,72(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	s9,40(sp)
	sd	s11,24(sp)
	ld	a5,0(a4)
	mv	s4,a4
	li	a7,168
	ld	a4,16(a5)
	sd	a1,8(sp)
	mv	s6,a0
	lbu	a6,0(a4)
	mv	s10,a2
	mv	s2,a3
	bne	a6,a7,.L10973
	lbu	a6,54(a4)
.L10973:
	li	a3,169
	beq	a6,a3,.L10995
	li	a3,131
	li	s11,1
	beq	a6,a3,.L10996
.L10990:
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	mv	a0,s11
	ld	s11,24(sp)
	addi	sp,sp,128
	jr	ra
.L10996:
	ld	a3,32(a4)
	ld	a3,0(a3)
	lw	a2,0(a3)
.L10975:
	lhu	s1,96(s10)
	subw	a3,s1,s2
	mv	s1,a3
	ble	a3,a2,.L10977
	sext.w	s1,a2
.L10977:
	li	a3,1
	ble	s1,a3,.L10987
	li	s3,4096
	addiw	s9,s2,1
	li	s11,1
	addi	s3,s3,-2048
	li	s7,162
	lla	s0,.LANCHOR2
.L10985:
	ld	a2,24(a5)
	ld	a4,32(a4)
	slli	a3,s11,5
	lw	a5,4(a2)
	add	a4,a4,a3
	ld	s8,8(a4)
	and	a5,s3,a5
	ld	a4,32(a2)
	beq	a5,zero,.L10978
	ld	a4,0(a4)
	add	a4,a4,a3
	ld	s5,8(a4)
.L10979:
	lbu	a5,0(s8)
	bne	a5,s7,.L10990
	lw	a5,44(s8)
	ld	a4,8(sp)
	bne	a5,a4,.L10990
	ld	a4,8(s10)
	slli	a5,s9,1
	lh	a3,48(s8)
	add	a5,a4,a5
	lh	a5,0(a5)
	bne	a3,a5,.L10990
	ld	a5,56(s10)
	add	a4,a5,s9
	add	a5,a5,s2
	lbu	a4,0(a4)
	lbu	a5,0(a5)
	bne	a4,a5,.L10990
	mv	a0,s8
	call	sqlite3ExprAffinity
	mv	a1,a0
	mv	a0,s5
	call	sqlite3CompareAffinity
	lh	a5,48(s8)
	li	a4,68
	blt	a5,zero,.L10980
	ld	a4,24(s10)
	slli	a5,a5,5
	ld	a4,8(a4)
	add	a5,a4,a5
	lbu	a4,25(a5)
.L10980:
	bne	a0,a4,.L10990
	mv	a2,s5
	mv	a1,s8
	mv	a0,s6
	call	sqlite3BinaryCompareCollSeq
	beq	a0,zero,.L10990
	ld	a4,64(s10)
	slli	a5,s9,3
	ld	a6,0(a0)
	add	a5,a4,a5
	ld	t1,0(a5)
	lbu	a5,0(a6)
	addi	a6,a6,1
	lbu	a7,0(t1)
	add	a3,s0,a5
	add	a4,s0,a7
	beq	a5,a7,.L10997
.L10981:
	lbu	a3,320(a3)
	lbu	a5,320(a4)
	bne	a3,a5,.L10990
.L10983:
	lbu	a5,0(a6)
	lbu	a7,1(t1)
	addi	t1,t1,1
	addi	a6,a6,1
	add	a3,s0,a5
	add	a4,s0,a7
	bne	a5,a7,.L10981
.L10997:
	bne	a5,zero,.L10983
	addiw	s11,s11,1
	addi	s9,s9,1
	beq	s1,s11,.L10990
	ld	a5,0(s4)
	ld	a4,16(a5)
	j	.L10985
.L10978:
	add	a4,a4,a3
	ld	s5,8(a4)
	j	.L10979
.L10995:
	ld	a3,32(a4)
	lw	a2,0(a3)
	j	.L10975
.L10987:
	li	s11,1
	j	.L10990
	.size	whereRangeVectorLen.isra.0, .-whereRangeVectorLen.isra.0
	.section	.text.sqlite3_vtab_collation,"ax",@progbits
	.align	1
	.globl	sqlite3_vtab_collation
	.type	sqlite3_vtab_collation, @function
sqlite3_vtab_collation:
	blt	a1,zero,.L11002
	lw	a4,0(a0)
	mv	a5,a0
	li	a0,0
	ble	a4,a1,.L11008
	ld	a3,8(a5)
	slli	a4,a1,1
	add	a1,a4,a1
	slli	a1,a1,2
	ld	a4,96(a5)
	add	a1,a3,a1
	lw	a3,8(a1)
	ld	a4,32(a4)
	slli	a3,a3,6
	add	a4,a4,a3
	ld	a4,0(a4)
	ld	a1,16(a4)
	beq	a1,zero,.L11011
	addi	sp,sp,-16
	sd	ra,8(sp)
	ld	a2,24(a4)
	ld	a0,104(a5)
	call	sqlite3BinaryCompareCollSeq
	beq	a0,zero,.L11001
	ld	ra,8(sp)
	ld	a0,0(a0)
	addi	sp,sp,16
	jr	ra
.L11011:
	lla	a0,.LANCHOR4-520
.L11008:
	ret
.L11002:
	li	a0,0
	ret
.L11001:
	ld	ra,8(sp)
	lla	a0,.LANCHOR4-520
	addi	sp,sp,16
	jr	ra
	.size	sqlite3_vtab_collation, .-sqlite3_vtab_collation
	.section	.text.findConstInWhere,"ax",@progbits
	.align	1
	.type	findConstInWhere, @function
findConstInWhere:
	beq	a1,zero,.L11038
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	lw	a5,4(a1)
	mv	s0,a1
	andi	a5,a5,1
	bne	a5,zero,.L11012
	lbu	a5,0(a1)
	li	a4,44
	mv	s1,a0
	beq	a5,a4,.L11041
	li	a4,53
	bne	a5,a4,.L11012
	ld	s2,24(a1)
	li	a3,1
	slli	a4,a3,35
	ld	a5,0(s2)
	addi	a4,a4,255
	li	a2,162
	and	a5,a5,a4
	ld	s0,16(a1)
	beq	a5,a2,.L11042
.L11017:
	ld	a5,0(s0)
	li	a3,1
	slli	a4,a3,35
	addi	a4,a4,255
	and	a5,a5,a4
	li	a4,162
	beq	a5,a4,.L11043
.L11012:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	addi	sp,sp,80
	jr	ra
.L11042:
	lla	a5,exprNodeIsConstant
	sd	a5,8(sp)
	lla	a5,sqlite3SelectWalkFail
	sb	a3,36(sp)
	sd	a5,16(sp)
	sw	zero,40(sp)
	beq	s0,zero,.L11021
	mv	a1,s0
	mv	a0,sp
	call	walkExpr
	lbu	a5,36(sp)
	beq	a5,zero,.L11017
.L11021:
	ld	a0,0(s1)
	mv	a2,s2
	mv	a1,s0
	call	sqlite3BinaryCompareCollSeq
	beq	a0,zero,.L11019
	ld	a4,24(a0)
	lla	a5,binCollFunc
	bne	a4,a5,.L11017
.L11019:
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	constInsert
	j	.L11012
.L11041:
	ld	a1,24(a1)
	call	findConstInWhere
	ld	a1,16(s0)
	mv	a0,s1
	call	findConstInWhere
	j	.L11012
.L11038:
	ret
.L11043:
	lla	a5,exprNodeIsConstant
	sd	a5,8(sp)
	mv	a1,s2
	lla	a5,sqlite3SelectWalkFail
	mv	a0,sp
	sd	a5,16(sp)
	sb	a3,36(sp)
	sw	zero,40(sp)
	call	walkExpr
	lbu	a5,36(sp)
	beq	a5,zero,.L11012
	ld	a0,0(s1)
	mv	a2,s2
	mv	a1,s0
	call	sqlite3BinaryCompareCollSeq
	beq	a0,zero,.L11020
	ld	a4,24(a0)
	lla	a5,binCollFunc
	bne	a4,a5,.L11012
.L11020:
	mv	a2,s2
	mv	a1,s0
	mv	a0,s1
	call	constInsert
	j	.L11012
	.size	findConstInWhere, .-findConstInWhere
	.section	.text.codeCompare,"ax",@progbits
	.align	1
	.type	codeCompare, @function
codeCompare:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	mv	s1,a3
	mv	s2,a0
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	mv	s4,a5
	mv	s5,a6
	sd	s6,32(sp)
	sd	s7,24(sp)
	mv	s6,a4
	mv	s7,a1
	sd	s8,16(sp)
	sd	s9,8(sp)
	mv	s8,a7
	mv	s9,a2
	call	sqlite3BinaryCompareCollSeq
	mv	s3,a0
	mv	a0,s9
	call	sqlite3ExprAffinity
	mv	a1,a0
	mv	a0,s7
	call	sqlite3CompareAffinity
	ld	s7,16(s2)
	mv	a4,s6
	mv	a1,s1
	mv	a3,s5
	mv	a2,s4
	mv	s0,a0
	mv	a0,s7
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	mv	s1,a0
	li	a3,-2
	mv	a2,s3
	mv	a0,s7
	call	sqlite3VdbeChangeP4
	ld	a5,16(s2)
	lw	a4,144(a5)
	ble	a4,zero,.L11045
	ld	a3,136(a5)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	or	s0,s0,s8
	add	a5,a3,a5
	andi	s0,s0,0xff
	sh	s0,-22(a5)
.L11045:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	ld	s9,8(sp)
	mv	a0,s1
	ld	s1,72(sp)
	addi	sp,sp,96
	jr	ra
	.size	codeCompare, .-codeCompare
	.section	.text.multiSelectCollSeq.isra.0,"ax",@progbits
	.align	1
	.type	multiSelectCollSeq.isra.0, @function
multiSelectCollSeq.isra.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s2,a0
	mv	s1,a1
	mv	s0,a3
	beq	a2,zero,.L11051
	mv	a5,a2
	ld	a2,80(a2)
	mv	a1,a5
	call	multiSelectCollSeq.isra.0
	beq	a0,zero,.L11051
.L11047:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L11051:
	ld	a5,0(s1)
	li	a0,0
	lw	a4,0(a5)
	ble	a4,s0,.L11047
	slli	a3,s0,5
	add	a3,a5,a3
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	a1,8(a3)
	mv	a0,s2
	ld	s2,0(sp)
	addi	sp,sp,32
	tail	sqlite3ExprCollSeq
	.size	multiSelectCollSeq.isra.0, .-multiSelectCollSeq.isra.0
	.section	.text.sqlite3KeyInfoFromExprList,"ax",@progbits
	.align	1
	.type	sqlite3KeyInfoFromExprList, @function
sqlite3KeyInfoFromExprList:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s3,24(sp)
	lw	s3,0(a1)
	mv	s5,a0
	ld	a0,0(a0)
	subw	s2,s3,a2
	mv	s0,a1
	mv	s1,a2
	mv	a1,s2
	addiw	a2,a3,1
	call	sqlite3KeyInfoAlloc
	mv	s4,a0
	beq	a0,zero,.L11056
	addi	s0,s0,8
	slli	a5,s1,5
	add	s0,s0,a5
	ble	s3,s1,.L11056
	li	s1,0
	j	.L11059
.L11058:
	sd	a0,0(a5)
	ld	a5,24(s4)
	lbu	a4,24(s0)
	addi	s0,s0,32
	add	a5,a5,s3
	sb	a4,0(a5)
	beq	s1,s2,.L11056
.L11059:
	ld	a1,0(s0)
	mv	a0,s5
	sext.w	s3,s1
	call	sqlite3ExprCollSeq
	addi	a5,s3,4
	slli	a5,a5,3
	add	a5,s4,a5
	addiw	s1,s1,1
	bne	a0,zero,.L11058
	ld	a4,0(s5)
	addi	s0,s0,32
	ld	a0,16(a4)
	sd	a0,0(a5)
	ld	a5,24(s4)
	lbu	a4,-8(s0)
	add	a5,a5,s3
	sb	a4,0(a5)
	bne	s1,s2,.L11059
.L11056:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s5,8(sp)
	mv	a0,s4
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
	.size	sqlite3KeyInfoFromExprList, .-sqlite3KeyInfoFromExprList
	.section	.text.windowIfNewPeer,"ax",@progbits
	.align	1
	.type	windowIfNewPeer, @function
windowIfNewPeer:
	addi	sp,sp,-80
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s6,16(sp)
	ld	s0,16(a0)
	mv	s2,a0
	mv	s3,a2
	mv	s4,a3
	mv	s5,a4
	beq	s0,zero,.L11070
	beq	a1,zero,.L11067
.L11071:
	lw	s6,0(a1)
	li	a3,0
	li	a2,0
	mv	a0,s2
	call	sqlite3KeyInfoFromExprList
	mv	a4,s6
	mv	a3,s3
	mv	s1,a0
	mv	a2,s4
	li	a1,87
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	li	a2,-9
	mv	a1,s1
	mv	a0,s0
	call	sqlite3VdbeAppendP4
	lw	a4,144(s0)
	mv	a3,s5
	li	a1,16
	addiw	a4,a4,1
	mv	a2,a4
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	addiw	a4,s6,-1
	mv	a3,s4
	mv	a2,s3
	li	a1,78
.L11069:
	mv	a0,s0
	ld	s0,64(sp)
	ld	ra,72(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	tail	sqlite3VdbeAddOp3
.L11070:
	sd	a1,8(sp)
	call	sqlite3GetVdbe.part.0
	ld	a1,8(sp)
	mv	s0,a0
	bne	a1,zero,.L11071
.L11067:
	li	a4,0
	mv	a3,s5
	li	a2,0
	li	a1,11
	j	.L11069
	.size	windowIfNewPeer, .-windowIfNewPeer
	.section	.text.sqlite3ExprCollSeqMatch,"ax",@progbits
	.align	1
	.type	sqlite3ExprCollSeqMatch, @function
sqlite3ExprCollSeqMatch:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s1,a0
	mv	s2,a2
	call	sqlite3ExprCollSeq
	mv	s0,a0
	beq	a0,zero,.L11083
.L11073:
	mv	a1,s2
	mv	a0,s1
	call	sqlite3ExprCollSeq
	beq	a0,zero,.L11084
.L11074:
	ld	a4,0(s0)
	ld	a2,0(a0)
	lla	a1,.LANCHOR2
	lbu	a5,0(a4)
	lbu	a3,0(a2)
	addi	a4,a4,1
	add	a6,a1,a5
	add	a0,a1,a3
	beq	a5,a3,.L11085
.L11075:
	lbu	a3,320(a6)
	lbu	a5,320(a0)
	bne	a3,a5,.L11080
.L11077:
	lbu	a5,0(a4)
	lbu	a3,1(a2)
	addi	a2,a2,1
	addi	a4,a4,1
	add	a6,a1,a5
	add	a0,a1,a3
	bne	a5,a3,.L11075
.L11085:
	bne	a5,zero,.L11077
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,1
	addi	sp,sp,32
	jr	ra
.L11080:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L11084:
	ld	a5,0(s1)
	ld	a0,16(a5)
	j	.L11074
.L11083:
	ld	a5,0(s1)
	ld	s0,16(a5)
	j	.L11073
	.size	sqlite3ExprCollSeqMatch, .-sqlite3ExprCollSeqMatch
	.section	.text.windowAggStep,"ax",@progbits
	.align	1
	.type	windowAggStep, @function
windowAggStep:
	addi	sp,sp,-144
	sd	s2,112(sp)
	sd	s4,96(sp)
	sd	s7,72(sp)
	sd	s8,64(sp)
	sd	s9,56(sp)
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s3,104(sp)
	sd	s5,88(sp)
	sd	s6,80(sp)
	sd	s10,48(sp)
	sd	s11,40(sp)
	ld	s0,16(a0)
	mv	s8,a0
	mv	s7,a1
	mv	s4,a2
	mv	s9,a3
	mv	s2,a4
	bne	s0,zero,.L11087
	call	sqlite3GetVdbe.part.0
	mv	s0,a0
.L11087:
	mv	s11,s7
	beq	s7,zero,.L11086
	addiw	a5,s2,1
	li	s10,154
	sd	a5,8(sp)
	subw	a5,s10,s9
	lla	s6,.LANCHOR4-488
	sd	a5,16(sp)
.L11088:
	ld	a5,104(s11)
	ld	s5,72(s11)
	li	s1,0
	ld	a5,32(a5)
	beq	a5,zero,.L11089
	lw	s1,0(a5)
	ble	s1,zero,.L11089
	li	s10,0
	li	s3,1
	j	.L11093
.L11090:
	lw	a3,116(s11)
	addw	a3,a3,s10
	addiw	s10,s10,1
	call	sqlite3VdbeAddOp3
	beq	s10,s1,.L11089
.L11093:
	addw	a4,s2,s10
	mv	a2,s4
	li	a1,90
	mv	a0,s0
	bne	s10,s3,.L11090
	ld	a3,56(s5)
	bne	a3,s6,.L11090
	lw	a3,116(s11)
	lw	a2,80(s7)
	ld	a4,8(sp)
	addiw	a3,a3,1
	li	a1,90
	addiw	s10,s10,1
	call	sqlite3VdbeAddOp3
	bne	s10,s1,.L11093
.L11089:
	lw	a5,124(s7)
	bne	a5,zero,.L11094
	lw	a5,4(s5)
	slli	a4,a5,51
	bge	a4,zero,.L11094
	lbu	a4,33(s11)
	li	a5,87
	beq	a4,a5,.L11094
	li	a4,0
	li	a3,0
	mv	a2,s2
	li	a1,50
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	s1,a0
	bne	s9,zero,.L11095
	lw	a2,96(s11)
	li	a4,0
	li	a3,1
	addiw	a2,a2,1
	li	a1,83
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a3,96(s11)
	mv	a2,s2
	li	a4,0
	li	a1,79
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a2,96(s11)
	li	a3,2
	li	a1,92
	addiw	a4,a2,2
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a3,96(s11)
	lw	a2,92(s11)
	li	a4,0
	addiw	a3,a3,2
	li	a1,132
	mv	a0,s0
	call	sqlite3VdbeAddOp3
.L11096:
	lw	a3,144(s0)
	bge	s1,zero,.L11099
	addiw	s1,a3,-1
.L11099:
	ld	a4,0(s0)
	lla	a5,.LANCHOR0+568
	lbu	a4,97(a4)
	bne	a4,zero,.L11112
	ld	a5,136(s0)
	slli	a4,s1,1
	add	a4,a4,s1
	slli	a4,a4,3
	add	a5,a5,a4
.L11112:
	sw	a3,8(a5)
.L11101:
	ld	s11,56(s11)
	bne	s11,zero,.L11088
.L11086:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	ld	s9,56(sp)
	ld	s10,48(sp)
	ld	s11,40(sp)
	addi	sp,sp,144
	jr	ra
.L11094:
	lw	s3,96(s11)
	bne	s3,zero,.L11139
	ld	a4,24(s5)
	lla	a5,noopStepFunc
	beq	a4,a5,.L11101
	ld	a5,64(s11)
	beq	a5,zero,.L11104
	lbu	a5,31(s8)
	beq	a5,zero,.L11140
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s8)
	add	a5,s8,a4
	lw	s10,12(a5)
.L11106:
	lw	a3,116(s11)
	mv	a4,s10
	mv	a2,s4
	addw	a3,a3,s1
	li	a1,90
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	li	a4,1
	li	a3,0
	mv	a2,s10
	li	a1,20
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	s3,a0
	beq	s10,zero,.L11104
	mv	a1,s10
	mv	a0,s8
	call	sqlite3ReleaseTempReg.part.0
.L11104:
	lw	a5,4(s5)
	andi	a5,a5,32
	bne	a5,zero,.L11141
.L11107:
	lw	a4,84(s11)
	ld	a1,16(sp)
	mv	a3,s2
	mv	a2,s9
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	li	a2,-8
	mv	a1,s5
	mv	a0,s0
	call	sqlite3VdbeAppendP4
	lw	a4,144(s0)
	ble	a4,zero,.L11109
	ld	a3,136(s0)
	slli	a5,a4,1
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	andi	s1,s1,0xff
	sh	s1,-22(a5)
.L11109:
	beq	s3,zero,.L11101
	lw	a3,144(s0)
	bge	s3,zero,.L11111
	addiw	s3,a3,-1
.L11111:
	ld	a4,0(s0)
	lla	a5,.LANCHOR0+568
	lbu	a4,97(a4)
	bne	a4,zero,.L11112
	ld	a5,136(s0)
	slli	a4,s3,1
	add	a4,a4,s3
	slli	a4,a4,3
	add	a5,a5,a4
	j	.L11112
.L11139:
	subw	a2,s3,s9
	li	a4,0
	li	a3,1
	addiw	a2,a2,1
	li	a1,83
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	j	.L11101
.L11141:
	ld	a5,104(s11)
	mv	a0,s8
	ld	a5,32(a5)
	ld	a1,8(a5)
	call	sqlite3ExprCollSeq
	mv	a5,a0
	beq	a0,zero,.L11142
.L11108:
	li	a3,0
	li	a2,0
	li	a1,82
	li	a4,0
	mv	a0,s0
	sd	a5,24(sp)
	call	sqlite3VdbeAddOp3
	ld	a5,24(sp)
	mv	a1,a0
	li	a3,-2
	mv	a2,a5
	mv	a0,s0
	call	sqlite3VdbeChangeP4
	j	.L11107
.L11140:
	lw	a4,56(s8)
	addiw	s10,a4,1
	sw	s10,56(s8)
	j	.L11106
.L11095:
	lw	a2,92(s11)
	li	a5,1
	mv	a4,s2
	li	a3,0
	li	a1,24
	mv	a0,s0
	call	sqlite3VdbeAddOp4Int
	lw	a2,92(s11)
	li	a4,0
	li	a3,0
	li	a1,123
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a4,144(s0)
	addiw	a3,a4,-2
	bge	a3,zero,.L11097
	addiw	a3,a4,-1
.L11097:
	ld	a2,0(s0)
	lla	a5,.LANCHOR0+568
	lbu	a2,97(a2)
	bne	a2,zero,.L11098
	ld	a5,136(s0)
	slli	a2,a3,1
	add	a3,a2,a3
	slli	a3,a3,3
	add	a5,a5,a3
.L11098:
	sw	a4,8(a5)
	j	.L11096
.L11142:
	ld	a5,0(s8)
	ld	a5,16(a5)
	j	.L11108
	.size	windowAggStep, .-windowAggStep
	.section	.text.windowReturnOneRow,"ax",@progbits
	.align	1
	.type	windowReturnOneRow, @function
windowReturnOneRow:
	addi	sp,sp,-128
	sd	s2,96(sp)
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	s9,40(sp)
	sd	s10,32(sp)
	sd	s11,24(sp)
	ld	s3,8(a0)
	ld	s0,16(a0)
	ld	s1,0(a0)
	lw	a5,124(s3)
	mv	s2,a0
	bne	a5,zero,.L11225
	mv	s4,s3
	lla	s7,.LANCHOR4-488
	lla	s8,.LANCHOR4-456
	j	.L11144
.L11231:
	lla	a4,.LANCHOR4-472
	beq	a5,a4,.L11173
	beq	a5,s8,.L11181
	lla	a4,.LANCHOR4-448
	beq	a5,a4,.L11181
.L11180:
	ld	s4,56(s4)
	beq	s4,zero,.L11172
.L11144:
	ld	s10,72(s4)
	ld	a5,56(s10)
	bne	a5,s7,.L11231
.L11173:
	lw	s5,68(s1)
	lbu	a5,31(s1)
	lw	s11,92(s4)
	addiw	s5,s5,-1
	sw	s5,68(s1)
	beq	a5,zero,.L11232
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s1)
	add	a5,s1,a4
	lw	s6,12(a5)
.L11176:
	lw	a3,88(s4)
	li	a4,0
	li	a2,0
	li	a1,73
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,56(s10)
	beq	a5,s7,.L11233
	li	a4,0
	mv	a3,s6
	li	a2,1
	li	a1,70
	mv	a0,s0
	call	sqlite3VdbeAddOp3
.L11178:
	lw	a3,96(s4)
	mv	a4,s6
	mv	a2,s6
	li	a1,100
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a2,96(s4)
	mv	a3,s5
	mv	a4,s6
	li	a1,54
	addiw	a2,a2,1
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a4,s6
	li	a3,0
.L11230:
	mv	a2,s11
	li	a1,30
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a4,88(s4)
	lw	a3,116(s4)
	li	a1,90
	mv	a2,s11
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a1,s5
	mv	a0,s0
	call	sqlite3VdbeResolveLabel
	beq	s6,zero,.L11180
	mv	a1,s6
	mv	a0,s1
	call	sqlite3ReleaseTempReg.part.0
	ld	s4,56(s4)
	bne	s4,zero,.L11144
.L11172:
	mv	a0,s0
	ld	s0,112(sp)
	lw	a3,28(s2)
	lw	a2,24(s2)
	ld	ra,120(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	ld	s11,24(sp)
	li	a4,0
	li	a1,12
	addi	sp,sp,128
	tail	sqlite3VdbeAddOp3
.L11181:
	ld	a4,104(s4)
	lw	s5,68(s1)
	lbu	a5,31(s1)
	ld	a4,32(a4)
	addiw	s5,s5,-1
	lw	s11,92(s4)
	lw	a7,0(a4)
	sw	s5,68(s1)
	beq	a5,zero,.L11234
	addiw	a5,a5,-1
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s1)
	add	a5,s1,a4
	lw	s6,12(a5)
.L11184:
	li	a5,2
	sd	a7,0(sp)
	lw	s9,80(s3)
	lw	a3,88(s4)
	bgt	a7,a5,.L11185
	li	a4,0
	li	a2,0
	li	a1,73
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	li	a4,0
	mv	a3,s6
	mv	a2,s9
	li	a1,128
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a7,0(sp)
	li	a5,2
	beq	a7,a5,.L11187
	ld	a5,56(s10)
	li	a3,1
	beq	a5,s8,.L11188
	li	a3,-1
.L11188:
	li	a4,0
	mv	a2,s6
	li	a1,83
	mv	a0,s0
	call	sqlite3VdbeAddOp3
.L11189:
	mv	a4,s6
	mv	a3,s5
	j	.L11230
.L11232:
	lw	a5,56(s1)
	addiw	s6,a5,1
	sw	s6,56(s1)
	j	.L11176
.L11233:
	lw	a3,116(s4)
	lw	a2,80(s3)
	mv	a4,s6
	addiw	a3,a3,1
	li	a1,90
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	li	a2,2
	mv	a1,s6
	mv	a0,s1
	call	windowCheckValue
	j	.L11178
.L11185:
	lw	a5,116(s4)
	mv	a4,a3
	mv	a2,s9
	addiw	a3,a5,2
	li	a1,90
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	li	a4,0
	mv	a3,s6
	mv	a2,s9
	li	a1,128
	mv	a0,s0
	call	sqlite3VdbeAddOp3
.L11187:
	ld	a5,56(s10)
	lbu	a4,31(s1)
	sub	a5,a5,s8
	snez	a5,a5
	addi	a5,a5,100
	beq	a4,zero,.L11235
	addiw	a4,a4,-1
	andi	a4,a4,0xff
	addi	a3,a4,48
	slli	a3,a3,2
	sb	a4,31(s1)
	add	a4,s1,a3
	lw	s10,12(a4)
.L11192:
	lw	a3,116(s4)
	mv	a4,s10
	mv	a2,s9
	addiw	a3,a3,1
	li	a1,90
	mv	a0,s0
	sd	a5,0(sp)
	call	sqlite3VdbeAddOp3
	ld	a5,0(sp)
	mv	a4,s6
	mv	a3,s6
	mv	a2,s10
	mv	a1,a5
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	beq	s10,zero,.L11189
	mv	a1,s10
	mv	a0,s1
	call	sqlite3ReleaseTempReg.part.0
	j	.L11189
.L11234:
	lw	a5,56(s1)
	addiw	s6,a5,1
	sw	s6,56(s1)
	j	.L11184
.L11225:
	ld	a5,24(s3)
	lw	s8,92(s3)
	li	s6,0
	beq	a5,zero,.L11145
	lw	s6,0(a5)
.L11145:
	lw	s7,68(s1)
	lbu	a5,31(s1)
	addiw	s5,s7,-2
	sw	s5,68(s1)
	addiw	s7,s7,-1
	beq	a5,zero,.L11236
	addiw	a4,a5,-1
	andi	a4,a4,0xff
	addi	a3,a4,48
	slli	a3,a3,2
	sb	a4,31(s1)
	add	a3,s1,a3
	lw	s9,12(a3)
	beq	a4,zero,.L11237
	addiw	a5,a5,-2
	andi	a5,a5,0xff
	addi	a4,a5,48
	slli	a4,a4,2
	sb	a5,31(s1)
	sd	zero,0(sp)
	add	a5,s1,a4
	lw	s10,12(a5)
	li	s11,0
	bne	s6,zero,.L11238
.L11150:
	lw	a2,80(s3)
	li	a1,128
	mv	a3,s9
	li	a4,0
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lw	a2,80(s3)
	ld	a1,8(s2)
	ld	a0,0(s2)
	mv	a3,s11
	mv	s4,s3
	call	windowReadPeerValues.isra.0
.L11151:
	lw	a3,84(s4)
	li	a4,0
	li	a2,0
	li	a1,73
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	s4,56(s4)
	bne	s4,zero,.L11151
	lw	a4,124(s3)
	mv	a3,s5
	mv	a2,s8
	li	a1,24
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a2,s8
	li	a1,128
	li	a4,0
	mv	a3,s10
	mv	a0,s0
	lw	s4,144(s0)
	call	sqlite3VdbeAddOp3
	lw	a2,128(s3)
	mv	a4,s10
	mv	a3,s5
	li	a1,54
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	lbu	a5,36(s3)
	li	a4,82
	beq	a5,a4,.L11239
	li	a4,66
	beq	a5,a4,.L11153
	ld	s5,24(s3)
	beq	s5,zero,.L11155
	mv	a1,s5
	li	a3,0
	li	a2,0
	mv	a0,s1
	call	sqlite3KeyInfoFromExprList
	lbu	a3,36(s3)
	li	a4,91
	mv	s5,a0
	li	a5,0
	beq	a3,a4,.L11193
.L11156:
	sd	a5,8(sp)
	beq	s5,zero,.L11157
	ld	a1,8(s2)
	ld	a0,0(s2)
	ld	a3,0(sp)
	mv	a2,s8
	call	windowReadPeerValues.isra.0
	ld	a2,0(sp)
	mv	a4,s6
	mv	a3,s11
	li	a1,87
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a1,s5
	mv	a0,s0
	li	a2,-9
	call	sqlite3VdbeAppendP4
	lw	a4,144(s0)
	mv	a3,s7
	li	a1,16
	addiw	a4,a4,1
	mv	a2,a4
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,8(sp)
.L11158:
	beq	a5,zero,.L11153
	lw	a2,144(s0)
	bge	a5,zero,.L11160
	addiw	a5,a2,-1
.L11160:
	ld	a3,0(s0)
	lla	a4,.LANCHOR0+568
	lbu	a3,97(a3)
	beq	a3,zero,.L11240
	sw	a2,8(a4)
.L11153:
	lw	a4,32(s2)
	li	a3,0
	mv	a2,s8
	mv	a1,s3
	mv	a0,s1
	call	windowAggStep
	mv	a1,s7
	mv	a0,s0
	call	sqlite3VdbeResolveLabel
	mv	a3,s4
	li	a4,0
	mv	a2,s8
	li	a1,5
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	addiw	a3,s4,-1
	lw	a5,144(s0)
	blt	a3,zero,.L11241
	ld	a2,0(s0)
	lla	a4,.LANCHOR0+568
	lbu	a2,97(a2)
	beq	a2,zero,.L11242
.L11163:
	sw	a5,8(a4)
	addiw	s4,s4,1
	blt	s4,zero,.L11243
.L11164:
	ld	a3,0(s0)
	lla	a4,.LANCHOR0+568
	lbu	a3,97(a3)
	beq	a3,zero,.L11244
.L11165:
	sw	a5,8(a4)
	beq	s10,zero,.L11166
.L11246:
	mv	a1,s10
	mv	a0,s1
	call	sqlite3ReleaseTempReg.part.0
.L11166:
	beq	s9,zero,.L11167
	mv	a1,s9
	mv	a0,s1
	call	sqlite3ReleaseTempReg.part.0
.L11167:
	beq	s6,zero,.L11169
	li	a5,1
	beq	s6,a5,.L11245
	lw	a5,40(s1)
	bge	a5,s6,.L11169
	ld	a5,0(sp)
	sw	s6,40(s1)
	sw	a5,44(s1)
.L11169:
	ld	a1,8(s2)
	ld	a0,0(s2)
	li	a2,1
	call	windowAggFinal.isra.0
	j	.L11172
.L11235:
	lw	a4,56(s1)
	addiw	s10,a4,1
	sw	s10,56(s1)
	j	.L11192
.L11244:
	ld	a4,136(s0)
	slli	a3,s4,1
	add	s4,a3,s4
	slli	s4,s4,3
	add	a4,a4,s4
	sw	a5,8(a4)
	beq	s10,zero,.L11166
	j	.L11246
.L11242:
	ld	a4,136(s0)
	slli	a2,a3,1
	add	a3,a2,a3
	slli	a3,a3,3
	add	a4,a4,a3
	sw	a5,8(a4)
	addiw	s4,s4,1
	bge	s4,zero,.L11164
.L11243:
	ld	a3,0(s0)
	addiw	s4,a5,-1
	lla	a4,.LANCHOR0+568
	lbu	a3,97(a3)
	bne	a3,zero,.L11165
	j	.L11244
.L11241:
	ld	a2,0(s0)
	addiw	a3,a5,-1
	lla	a4,.LANCHOR0+568
	lbu	a2,97(a2)
	bne	a2,zero,.L11163
	j	.L11242
.L11236:
	lw	s9,56(s1)
	addiw	s9,s9,1
	mv	a5,s9
.L11147:
	addiw	s10,a5,1
	sw	s10,56(s1)
	sd	zero,0(sp)
	li	s11,0
	beq	s6,zero,.L11150
.L11238:
	mv	a1,s6
	mv	a0,s1
	call	sqlite3GetTempRange
	mv	s11,a0
	mv	a1,s6
	mv	a0,s1
	call	sqlite3GetTempRange
	sd	a0,0(sp)
	j	.L11150
.L11155:
	li	a4,91
	beq	a5,a4,.L11193
	li	a4,0
	mv	a3,s7
	li	a2,0
	li	a1,11
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	j	.L11153
.L11239:
	mv	a4,s10
	mv	a3,s7
	mv	a2,s9
	li	a1,53
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	j	.L11153
.L11240:
	ld	a4,136(s0)
	slli	a3,a5,1
	add	a5,a3,a5
	slli	a5,a5,3
	add	a4,a4,a5
	sw	a2,8(a4)
	j	.L11153
.L11193:
	mv	a4,s10
	li	a3,0
	mv	a2,s9
	li	a1,53
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	mv	a5,a0
	j	.L11156
.L11245:
	ld	a1,0(sp)
	mv	a0,s1
	call	sqlite3ReleaseTempRange.part.0
	mv	a1,s11
	mv	a0,s1
	call	sqlite3ReleaseTempRange.part.0
	j	.L11169
.L11157:
	li	a4,0
	mv	a3,s7
	li	a2,0
	li	a1,11
	mv	a0,s0
	call	sqlite3VdbeAddOp3
	ld	a5,8(sp)
	j	.L11158
.L11237:
	lw	a5,56(s1)
	j	.L11147
	.size	windowReturnOneRow, .-windowReturnOneRow
	.section	.text.windowCodeOp,"ax",@progbits
	.align	1
	.type	windowCodeOp, @function
windowCodeOp:
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	s4,80(sp)
	sd	s11,24(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	s9,40(sp)
	sd	s10,32(sp)
	ld	s3,0(a0)
	ld	s2,8(a0)
	ld	s10,16(a0)
	lw	s1,68(s3)
	lbu	s8,32(s2)
	mv	s11,a1
	addiw	s1,s1,-1
	sw	s1,68(s3)
	li	a5,2
	mv	s0,a0
	mv	a1,a2
	mv	s4,a3
	beq	s11,a5,.L11313
	li	s9,0
	li	s5,0
	ble	a2,zero,.L11252
	lbu	a4,32(s2)
	li	a5,86
	beq	a4,a5,.L11314
.L11282:
	mv	a2,a1
	li	a4,1
	li	a3,0
	li	a1,47
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	mv	s5,a0
	li	s9,0
.L11252:
	li	a5,1
	beq	s11,a5,.L11315
.L11254:
	lw	a4,144(s10)
	li	a5,2
	sd	a4,8(sp)
	beq	s11,a5,.L11275
	lw	a4,60(s0)
	lw	a5,124(s2)
	lw	s7,56(s0)
	sd	a4,0(sp)
	beq	a5,zero,.L11258
	lw	a2,128(s2)
.L11311:
	li	a4,0
	li	a3,1
	li	a1,83
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	lw	a5,36(s0)
	beq	a5,s11,.L11259
.L11312:
	lw	a3,144(s10)
.L11260:
	beq	s4,zero,.L11261
	li	a4,0
	addiw	a3,a3,2
	mv	a2,s7
	li	a1,5
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,11
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	li	a5,76
	mv	s6,a0
	li	s4,0
	beq	s8,a5,.L11316
.L11262:
	ld	a5,24(s2)
	beq	a5,zero,.L11264
	lw	s8,0(a5)
	bne	s8,zero,.L11317
.L11264:
	ld	a1,8(s0)
	ld	a0,0(s0)
	mv	a2,s7
	li	a3,0
	call	windowReadPeerValues.isra.0
	ld	a1,24(s2)
	ld	a4,8(sp)
	ld	a3,0(sp)
	li	a2,0
	mv	a0,s3
	call	windowIfNewPeer
	li	s8,0
	li	s2,0
.L11265:
	lw	a5,40(s3)
	bge	a5,s8,.L11266
	sw	s8,40(s3)
	sw	s2,44(s3)
.L11266:
	bne	s9,zero,.L11273
.L11267:
	mv	a1,s1
	mv	a0,s10
	call	sqlite3VdbeResolveLabel
	beq	s4,zero,.L11268
	lw	a4,144(s10)
	bge	s4,zero,.L11269
	addiw	s4,a4,-1
.L11269:
	ld	a3,0(s10)
	lla	a5,.LANCHOR0+568
	lbu	a3,97(a3)
	bne	a3,zero,.L11270
	ld	a5,136(s10)
	slli	a0,s4,1
	add	s4,a0,s4
	slli	s4,s4,3
	add	a5,a5,s4
.L11270:
	sw	a4,8(a5)
.L11268:
	beq	s5,zero,.L11289
	lw	a4,144(s10)
	bge	s5,zero,.L11271
	addiw	s5,a4,-1
.L11271:
	ld	a3,0(s10)
	lla	a5,.LANCHOR0+568
	lbu	a3,97(a3)
	bne	a3,zero,.L11272
	ld	a5,136(s10)
	slli	a0,s5,1
	add	s5,a0,s5
	slli	s5,s5,3
	add	a5,a5,s5
.L11272:
	sw	a4,8(a5)
.L11289:
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	ld	s11,24(sp)
	mv	a0,s6
	ld	s6,64(sp)
	addi	sp,sp,128
	jr	ra
.L11315:
	lw	a5,124(s2)
	beq	a5,zero,.L11318
.L11255:
	lw	a5,144(s10)
	mv	a0,s0
	lw	s7,48(s0)
	sd	a5,8(sp)
	lw	a5,52(s0)
	sd	a5,0(sp)
	call	windowReturnOneRow
.L11257:
	lw	a5,36(s0)
	bne	a5,s11,.L11312
.L11259:
	li	a3,0
	li	a4,0
	mv	a2,s7
	li	a1,123
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	lw	a3,144(s10)
	ble	a3,zero,.L11260
	ld	a4,136(s10)
	slli	a5,a3,1
	add	a3,a5,a3
	slli	a3,a3,3
	add	a3,a4,a3
	li	a5,2
	sh	a5,-22(a3)
	lw	a3,144(s10)
	j	.L11260
.L11261:
	addi	a5,s8,-76
	snez	a5,a5
	addiw	a5,a5,1
	li	s6,76
	li	a4,0
	addw	a3,a5,a3
	mv	a2,s7
	li	a1,5
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	beq	s8,s6,.L11263
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,11
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	mv	s4,a0
	li	s6,0
	j	.L11262
.L11313:
	lbu	a5,33(s2)
	li	a4,87
	li	s6,0
	beq	a5,a4,.L11289
	ble	a2,zero,.L11319
	lbu	a3,32(s2)
	li	a4,86
	bne	a3,a4,.L11282
	li	a4,83
	lw	s9,144(s10)
	lw	t1,48(s0)
	lw	a2,40(s0)
	beq	a5,a4,.L11320
	mv	a3,a1
	mv	a5,s1
	mv	a4,t1
	li	a1,57
	call	windowCodeRangeTest
.L11253:
	lw	a5,144(s10)
	li	s5,0
	sd	a5,8(sp)
.L11275:
	lw	a5,44(s0)
	lw	a2,124(s2)
	lw	s7,40(s0)
	sd	a5,0(sp)
	bne	a2,zero,.L11311
.L11256:
	lw	a4,32(s0)
	li	a3,1
	mv	a2,s7
	mv	a1,s2
	mv	a0,s3
	call	windowAggStep
	j	.L11257
.L11316:
	mv	s4,a0
.L11263:
	bne	s9,zero,.L11321
	mv	a1,s1
	mv	a0,s10
	call	sqlite3VdbeResolveLabel
	mv	s6,s4
	j	.L11268
.L11321:
	mv	s6,s4
	li	s4,0
.L11273:
	li	a4,0
	mv	a3,s9
	li	a2,0
	li	a1,11
	mv	a0,s10
	call	sqlite3VdbeAddOp3
	j	.L11267
.L11258:
	lw	a4,32(s0)
	li	a3,0
	mv	a2,s7
	mv	a1,s2
	mv	a0,s3
	call	windowAggStep
	j	.L11257
.L11319:
	lw	a5,144(s10)
	lw	a2,124(s2)
	lw	s7,40(s0)
	sd	a5,8(sp)
	lw	a5,44(s0)
	li	s9,0
	li	s5,0
	sd	a5,0(sp)
	beq	a2,zero,.L11256
	j	.L11311
.L11317:
	mv	a1,s8
	mv	a0,s3
	call	sqlite3GetTempRange
	mv	a5,a0
	ld	a1,8(s0)
	ld	a0,0(s0)
	mv	a3,a5
	mv	a2,s7
	mv	s0,a5
	call	windowReadPeerValues.isra.0
	ld	a1,24(s2)
	ld	a4,8(sp)
	ld	a3,0(sp)
	mv	a2,s0
	mv	a0,s3
	call	windowIfNewPeer
	li	a5,1
	mv	s2,s0
	bne	s8,a5,.L11265
	mv	a1,s0
	mv	a0,s3
	call	sqlite3ReleaseTempRange.part.0
	j	.L11266
.L11314:
	lw	a4,48(s0)
	lw	a2,56(s0)
	mv	a5,s1
	mv	a3,a1
	li	a1,54
	lw	s9,144(s10)
	call	windowCodeRangeTest
	li	a5,1
	li	s5,0
	bne	s11,a5,.L11254
	j	.L11315
.L11318:
	ld	a1,8(s0)
	ld	a0,0(s0)
	li	a2,0
	call	windowAggFinal.isra.0
	j	.L11255
.L11320:
	mv	a4,a2
	mv	a3,a1
	mv	a5,s1
	mv	a2,t1
	li	a1,55
	call	windowCodeRangeTest
	j	.L11253
	.size	windowCodeOp, .-windowCodeOp
	.section	.text.sqlite3SelectAddColumnTypeAndCollation.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3SelectAddColumnTypeAndCollation.isra.0, @function
sqlite3SelectAddColumnTypeAndCollation.isra.0:
	addi	sp,sp,-192
	sd	ra,184(sp)
	sd	s0,176(sp)
	sd	s1,168(sp)
	sd	s2,160(sp)
	sd	s3,152(sp)
	sd	s4,144(sp)
	sd	s5,136(sp)
	sd	s6,128(sp)
	sd	s7,120(sp)
	sd	s8,112(sp)
	sd	s9,104(sp)
	sd	s10,96(sp)
	sd	s11,88(sp)
	ld	s8,0(a0)
	lbu	a5,97(s8)
	beq	a5,zero,.L11343
.L11322:
	ld	ra,184(sp)
	ld	s0,176(sp)
	ld	s1,168(sp)
	ld	s2,160(sp)
	ld	s3,152(sp)
	ld	s4,144(sp)
	ld	s5,136(sp)
	ld	s6,128(sp)
	ld	s7,120(sp)
	ld	s8,112(sp)
	ld	s9,104(sp)
	ld	s10,96(sp)
	ld	s11,88(sp)
	addi	sp,sp,192
	jr	ra
.L11343:
	ld	a4,0(a3)
	ld	s3,0(a2)
	lh	a5,70(a1)
	li	s7,1073741824
	sd	zero,24(sp)
	sd	a4,32(sp)
	sd	zero,40(sp)
	sd	zero,48(sp)
	sd	zero,56(sp)
	sd	zero,64(sp)
	sd	zero,72(sp)
	ld	s0,8(a1)
	mv	s6,a0
	mv	s5,a1
	addi	s9,sp,24
	addi	s3,s3,8
	li	s4,0
	addi	s7,s7,-1
	ble	a5,zero,.L11332
.L11331:
	ld	s2,0(s3)
	li	a4,0
	li	a3,0
	li	a2,0
	mv	a1,s2
	mv	a0,s9
	call	columnTypeImpl
	mv	s1,a0
	mv	a0,s2
	call	sqlite3ExprAffinity
	sb	a0,25(s0)
	beq	s1,zero,.L11326
	mv	a0,s1
	call	strlen@plt
	ld	a1,0(s0)
	and	s11,a0,s7
	sext.w	s11,s11
	beq	a1,zero,.L11333
	mv	a0,a1
	sd	a1,8(sp)
	call	strlen@plt
	ld	a1,8(sp)
	and	a5,a0,s7
	sext.w	s10,a5
.L11327:
	addiw	a2,s11,2
	addw	a2,a2,s10
	mv	a0,s8
	call	sqlite3DbReallocOrFree
	sd	a0,0(s0)
	beq	a0,zero,.L11344
	addi	a5,s10,1
	add	a0,a0,a5
	addiw	a2,s11,1
	mv	a1,s1
	call	memcpy@plt
	lbu	a5,27(s0)
	lbu	a0,25(s0)
	ori	a5,a5,4
	sb	a5,27(s0)
.L11326:
	bne	a0,zero,.L11329
	li	a5,65
	sb	a5,25(s0)
.L11329:
	mv	a1,s2
	mv	a0,s6
	call	sqlite3ExprCollSeq
	beq	a0,zero,.L11330
	ld	a5,16(s0)
	beq	a5,zero,.L11345
.L11330:
	lh	a5,70(s5)
	addiw	s4,s4,1
	addi	s0,s0,32
	addi	s3,s3,32
	bgt	a5,s4,.L11331
.L11332:
	li	a5,1
	sh	a5,74(s5)
	j	.L11322
.L11344:
	lbu	a0,25(s0)
	j	.L11326
.L11333:
	li	s10,0
	j	.L11327
.L11345:
	ld	a1,0(a0)
	mv	a0,s8
	call	sqlite3DbStrDup
	sd	a0,16(s0)
	j	.L11330
	.size	sqlite3SelectAddColumnTypeAndCollation.isra.0, .-sqlite3SelectAddColumnTypeAndCollation.isra.0
	.section	.text.selectAddSubqueryTypeInfo,"ax",@progbits
	.align	1
	.type	selectAddSubqueryTypeInfo, @function
selectAddSubqueryTypeInfo:
	lw	a5,12(a1)
	andi	a4,a5,128
	bne	a4,zero,.L11360
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	ld	s2,40(a1)
	ori	a5,a5,128
	sw	a5,12(a1)
	lw	a4,0(s2)
	ld	s3,0(a0)
	addi	s0,s2,8
	sext.w	a5,a4
	ble	a5,zero,.L11346
	li	s1,0
	j	.L11350
.L11348:
	addiw	s1,s1,1
	sext.w	a5,a4
	addi	s0,s0,112
	ble	a5,s1,.L11346
.L11350:
	ld	a1,32(s0)
	lw	a5,64(a1)
	andi	a5,a5,2
	beq	a5,zero,.L11348
	ld	a5,40(s0)
	beq	a5,zero,.L11348
.L11349:
	mv	a2,a5
	ld	a5,80(a5)
	bne	a5,zero,.L11349
	addi	a3,a2,40
	mv	a0,s3
	call	sqlite3SelectAddColumnTypeAndCollation.isra.0
	lw	a4,0(s2)
	addiw	s1,s1,1
	addi	s0,s0,112
	sext.w	a5,a4
	bgt	a5,s1,.L11350
.L11346:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L11360:
	ret
	.size	selectAddSubqueryTypeInfo, .-selectAddSubqueryTypeInfo
	.section	.text.multiSelectOrderByKeyInfo.constprop.0,"ax",@progbits
	.align	1
	.type	multiSelectOrderByKeyInfo.constprop.0, @function
multiSelectOrderByKeyInfo.constprop.0:
	addi	sp,sp,-96
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s9,8(sp)
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	ld	s0,72(a1)
	ld	s6,0(a0)
	mv	s3,a1
	lw	s5,0(s0)
	mv	s9,a0
	li	a2,1
	addiw	a1,s5,1
	mv	a0,s6
	call	sqlite3KeyInfoAlloc
	mv	s4,a0
	beq	a0,zero,.L11363
	ble	s5,zero,.L11363
	addi	s0,s0,8
	addi	s7,a0,32
	li	s2,0
	j	.L11368
.L11374:
	mv	a1,s8
	call	sqlite3ExprCollSeq
	mv	s1,a0
.L11366:
	sd	s1,0(s7)
	ld	a5,24(s4)
	lbu	a4,24(s0)
	addi	s0,s0,32
	add	a5,a5,s2
	addi	s2,s2,1
	sb	a4,0(a5)
	sext.w	a5,s2
	addi	s7,s7,8
	ble	s5,a5,.L11363
.L11368:
	ld	s8,0(s0)
	mv	a1,s3
	mv	a0,s9
	lw	a5,4(s8)
	andi	a5,a5,256
	bne	a5,zero,.L11374
	lhu	a3,28(s0)
	ld	a2,80(s3)
	addiw	a3,a3,-1
	call	multiSelectCollSeq.isra.0
	mv	s1,a0
	mv	a1,s8
	mv	a0,s9
	beq	s1,zero,.L11375
.L11367:
	ld	a2,0(s1)
	call	sqlite3ExprAddCollateString
	sd	a0,0(s0)
	j	.L11366
.L11363:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	ld	s9,8(sp)
	mv	a0,s4
	ld	s4,48(sp)
	addi	sp,sp,96
	jr	ra
.L11375:
	ld	s1,16(s6)
	j	.L11367
	.size	multiSelectOrderByKeyInfo.constprop.0, .-multiSelectOrderByKeyInfo.constprop.0
	.section	.rodata.str1.8
	.align	3
.LC81:
	.string	"sub-select returns %d columns - expected %d"
	.align	3
.LC82:
	.string	"row value misused"
	.section	.text.sqlite3VectorErrorMsg.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3VectorErrorMsg.isra.0, @function
sqlite3VectorErrorMsg.isra.0:
	slli	a5,a1,52
	bge	a5,zero,.L11377
	ld	a5,0(a2)
	li	a3,1
	lla	a1,.LC81
	ld	a5,0(a5)
	lw	a2,0(a5)
	tail	sqlite3ErrorMsg
.L11377:
	lla	a1,.LC82
	tail	sqlite3ErrorMsg
	.size	sqlite3VectorErrorMsg.isra.0, .-sqlite3VectorErrorMsg.isra.0
	.section	.text.substExpr,"ax",@progbits
	.align	1
	.type	substExpr, @function
substExpr:
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	mv	s0,a1
	beq	a1,zero,.L11403
	lw	a5,4(a1)
	mv	s1,a0
	andi	a5,a5,1
	bne	a5,zero,.L11417
.L11380:
	lbu	a5,0(s0)
	li	a4,162
	beq	a5,a4,.L11418
.L11381:
	li	a4,171
	beq	a5,a4,.L11419
.L11382:
	ld	a1,16(s0)
	mv	a0,s1
	call	substExpr
	ld	a1,24(s0)
	sd	a0,16(s0)
	mv	a0,s1
	call	substExpr
	lw	a5,4(s0)
	sd	a0,24(s0)
	ld	a1,32(s0)
	slli	a4,a5,52
	bge	a4,zero,.L11393
	beq	a1,zero,.L11403
	li	a2,1
	mv	a0,s1
	call	substSelect.part.0
.L11403:
	ld	ra,120(sp)
	mv	a0,s0
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	addi	sp,sp,128
	jr	ra
.L11417:
	lh	a4,52(a1)
	lw	a5,8(a0)
	bne	a4,a5,.L11380
	lw	a5,12(a0)
	li	a4,162
	sh	a5,52(a1)
	lbu	a5,0(s0)
	bne	a5,a4,.L11381
.L11418:
	lw	a4,44(s0)
	lw	a5,8(s1)
	bne	a4,a5,.L11382
	lh	a5,48(s0)
	blt	a5,zero,.L11420
	ld	a4,24(s1)
	slli	a5,a5,5
	li	a2,168
	add	a5,a4,a5
	ld	a5,8(a5)
	lbu	a4,0(a5)
	mv	a3,a4
	beq	a4,a2,.L11421
.L11384:
	li	a2,169
	ld	a0,0(s1)
	beq	a3,a2,.L11422
	li	a2,131
	beq	a3,a2,.L11423
.L11387:
	lw	a3,16(s1)
	ld	s3,0(a0)
	beq	a3,zero,.L11389
	li	a3,162
	beq	a4,a3,.L11389
	lw	a3,12(s1)
	sd	zero,8(sp)
	addi	a4,sp,8
	sd	zero,48(sp)
	sd	a5,24(sp)
	li	a5,-85
	sb	a5,8(sp)
	sw	a3,52(sp)
	mv	a5,a4
	sd	zero,16(sp)
	sd	zero,32(sp)
	sd	zero,40(sp)
	sd	zero,56(sp)
	sd	zero,64(sp)
	sd	zero,72(sp)
.L11389:
	li	a3,0
	li	a2,0
	mv	a1,a5
	mv	a0,s3
	call	exprDup
	mv	s2,a0
	beq	a0,zero,.L11391
	lw	a5,16(s1)
	beq	a5,zero,.L11392
	lw	a5,4(a0)
	li	a4,1048576
	or	a5,a5,a4
	sw	a5,4(a0)
.L11392:
	lw	a5,4(s0)
	andi	a5,a5,1
	beq	a5,zero,.L11391
	lw	a5,4(s2)
	lh	a4,52(s0)
	ori	a5,a5,1
	sh	a4,52(s2)
	sw	a5,4(s2)
.L11391:
	mv	a1,s0
	mv	a0,s3
	call	sqlite3ExprDeleteNN
	mv	s0,s2
	j	.L11403
.L11393:
	beq	a1,zero,.L11403
	mv	a0,s1
	call	substExprList.part.0
	ld	ra,120(sp)
	mv	a0,s0
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	addi	sp,sp,128
	jr	ra
.L11419:
	lw	a4,44(s0)
	lw	a5,8(s1)
	bne	a4,a5,.L11382
	lw	a5,12(s1)
	sw	a5,44(s0)
	j	.L11382
.L11421:
	lbu	a3,54(a5)
	j	.L11384
.L11422:
	ld	a3,32(a5)
	lw	a2,0(a3)
.L11386:
	li	a3,1
	ble	a2,a3,.L11387
	lw	a1,4(a5)
	addi	a2,a5,32
	call	sqlite3VectorErrorMsg.isra.0
	j	.L11403
.L11420:
	li	a5,114
	sb	a5,0(s0)
	j	.L11403
.L11423:
	ld	a3,32(a5)
	ld	a3,0(a3)
	lw	a2,0(a3)
	j	.L11386
	.size	substExpr, .-substExpr
	.section	.text.substExprList.part.0,"ax",@progbits
	.align	1
	.type	substExprList.part.0, @function
substExprList.part.0:
	lw	a5,0(a1)
	ble	a5,zero,.L11429
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	mv	s2,a1
	mv	s3,a0
	li	s1,0
.L11426:
	slli	s0,s1,5
	add	s0,s2,s0
	ld	a1,8(s0)
	mv	a0,s3
	addiw	s1,s1,1
	call	substExpr
	sd	a0,8(s0)
	lw	a5,0(s2)
	bgt	a5,s1,.L11426
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L11429:
	ret
	.size	substExprList.part.0, .-substExprList.part.0
	.section	.text.substSelect.part.0,"ax",@progbits
	.align	1
	.type	substSelect.part.0, @function
substSelect.part.0:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s3,8(sp)
	mv	s1,a0
	mv	s2,a1
	mv	s4,a2
.L11441:
	ld	a1,0(s2)
	beq	a1,zero,.L11433
	mv	a0,s1
	call	substExprList.part.0
.L11433:
	ld	a1,56(s2)
	beq	a1,zero,.L11434
	mv	a0,s1
	call	substExprList.part.0
.L11434:
	ld	a1,72(s2)
	beq	a1,zero,.L11435
	mv	a0,s1
	call	substExprList.part.0
.L11435:
	ld	a1,64(s2)
	mv	a0,s1
	call	substExpr
	ld	a1,48(s2)
	sd	a0,64(s2)
	mv	a0,s1
	call	substExpr
	ld	s3,40(s2)
	sd	a0,48(s2)
	lw	a5,0(s3)
	addi	s0,s3,8
	ble	a5,zero,.L11436
	addiw	a5,a5,-1
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a4,a5,3
	sub	a5,a4,a5
	slli	a5,a5,4
	addi	a5,a5,120
	add	s3,s3,a5
.L11439:
	ld	a1,40(s0)
	li	a2,1
	mv	a0,s1
	beq	a1,zero,.L11437
	call	substSelect.part.0
.L11437:
	lbu	a5,61(s0)
	mv	a0,s1
	andi	a5,a5,4
	beq	a5,zero,.L11438
	ld	a1,96(s0)
	beq	a1,zero,.L11438
	call	substExprList.part.0
.L11438:
	addi	s0,s0,112
	bne	s0,s3,.L11439
.L11436:
	beq	s4,zero,.L11432
	ld	s2,80(s2)
	bne	s2,zero,.L11441
.L11432:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
	.size	substSelect.part.0, .-substSelect.part.0
	.section	.text.sqlite3ExprCheckIN,"ax",@progbits
	.align	1
	.type	sqlite3ExprCheckIN, @function
sqlite3ExprCheckIN:
	addi	sp,sp,-16
	sd	ra,8(sp)
	ld	a2,16(a1)
	li	a5,168
	lbu	a4,0(a2)
	bne	a4,a5,.L11467
	lbu	a4,54(a2)
.L11467:
	lw	a6,4(a1)
	li	a5,4096
	addi	a5,a5,-2048
	li	a3,169
	and	a5,a5,a6
	beq	a4,a3,.L11478
	li	a3,131
	beq	a4,a3,.L11470
	beq	a5,zero,.L11472
	li	a3,1
.L11471:
	ld	a4,32(a1)
	li	a5,0
	ld	a4,0(a4)
	lw	a2,0(a4)
	bne	a2,a3,.L11479
.L11472:
	ld	ra,8(sp)
	mv	a0,a5
	addi	sp,sp,16
	jr	ra
.L11470:
	ld	a4,32(a2)
	ld	a4,0(a4)
	lw	a3,0(a4)
.L11469:
	bne	a5,zero,.L11471
	li	a4,1
	li	a5,0
	beq	a3,a4,.L11472
	lw	a1,4(a2)
	addi	a2,a2,32
	call	sqlite3VectorErrorMsg.isra.0
	ld	ra,8(sp)
	li	a5,1
	mv	a0,a5
	addi	sp,sp,16
	jr	ra
.L11478:
	ld	a4,32(a2)
	lw	a3,0(a4)
	j	.L11469
.L11479:
	lla	a1,.LC81
	call	sqlite3ErrorMsg
	ld	ra,8(sp)
	li	a5,1
	mv	a0,a5
	addi	sp,sp,16
	jr	ra
	.size	sqlite3ExprCheckIN, .-sqlite3ExprCheckIN
	.section	.rodata.str1.8
	.align	3
.LC83:
	.string	"corrupt database"
	.align	3
.LC84:
	.string	"unknown database %T"
	.section	.text.sqlite3TwoPartName,"ax",@progbits
	.align	1
	.type	sqlite3TwoPartName, @function
sqlite3TwoPartName:
	addi	sp,sp,-32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	lw	a4,8(a2)
	ld	a5,0(a0)
	mv	s1,a1
	beq	a4,zero,.L11481
	lbu	a4,181(a5)
	bne	a4,zero,.L11485
	mv	s0,a0
	sd	a2,0(a3)
	mv	a0,a5
	call	sqlite3FindDb
	bge	a0,zero,.L11483
	mv	a0,s0
	mv	a2,s1
	lla	a1,.LC84
	call	sqlite3ErrorMsg
	li	a0,-1
	j	.L11483
.L11481:
	lbu	a0,180(a5)
	sd	a1,0(a3)
.L11483:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L11485:
	lla	a1,.LC83
	call	sqlite3ErrorMsg
	li	a0,-1
	j	.L11483
	.size	sqlite3TwoPartName, .-sqlite3TwoPartName
	.section	.rodata.str1.8
	.align	3
.LC85:
	.string	"sqlite_"
	.align	3
.LC86:
	.string	"object name reserved for internal use: %s"
	.section	.text.sqlite3CheckObjectName,"ax",@progbits
	.align	1
	.type	sqlite3CheckObjectName, @function
sqlite3CheckObjectName:
	ld	a5,0(a0)
	lbu	a4,181(a5)
	bne	a4,zero,.L11493
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lbu	a4,30(a0)
	mv	s0,a0
	beq	a4,zero,.L11494
.L11489:
	li	a0,0
.L11488:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L11494:
	ld	a5,48(a5)
	li	a4,268435456
	addi	a4,a4,1
	and	a5,a5,a4
	li	a4,1
	beq	a5,a4,.L11489
	mv	s1,a1
	li	a2,7
	lla	a1,.LC85
	mv	a0,s1
	call	sqlite3_strnicmp@plt
	bne	a0,zero,.L11489
	mv	a0,s0
	mv	a2,s1
	lla	a1,.LC86
	call	sqlite3ErrorMsg
	li	a0,1
	j	.L11488
.L11493:
	li	a0,0
	ret
	.size	sqlite3CheckObjectName, .-sqlite3CheckObjectName
	.section	.rodata.str1.8
	.align	3
.LC87:
	.string	"no such index: %s"
	.section	.text.sqlite3IndexedByLookup,"ax",@progbits
	.align	1
	.type	sqlite3IndexedByLookup, @function
sqlite3IndexedByLookup:
	ld	a4,32(a1)
	beq	a4,zero,.L11504
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	lbu	a5,61(a1)
	mv	s0,a0
	li	a0,0
	andi	a5,a5,2
	beq	a5,zero,.L11508
	ld	t3,16(a4)
	ld	a2,96(a1)
	beq	t3,zero,.L11497
	lla	a6,.LANCHOR2
.L11503:
	ld	a5,0(t3)
	mv	a3,a2
	lbu	a4,0(a3)
	lbu	a0,0(a5)
	addi	a5,a5,1
	add	a7,a6,a4
	add	t1,a6,a0
	beq	a0,a4,.L11516
.L11498:
	lbu	t1,320(t1)
	lbu	a4,320(a7)
	bne	t1,a4,.L11501
.L11500:
	lbu	a0,0(a5)
	lbu	a4,1(a3)
	addi	a3,a3,1
	addi	a5,a5,1
	add	t1,a6,a0
	add	a7,a6,a4
	bne	a0,a4,.L11498
.L11516:
	bne	a0,zero,.L11500
	sd	t3,104(a1)
.L11508:
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
.L11501:
	ld	t3,40(t3)
	bne	t3,zero,.L11503
.L11497:
	mv	a0,s0
	li	a3,0
	lla	a1,.LC87
	call	sqlite3ErrorMsg
	li	a5,1
	sb	a5,29(s0)
	li	a0,1
	j	.L11508
.L11504:
	li	a0,0
	ret
	.size	sqlite3IndexedByLookup, .-sqlite3IndexedByLookup
	.section	.rodata.str1.8
	.align	3
.LC88:
	.string	"too many terms in %s BY clause"
	.align	3
.LC89:
	.string	"%r %s BY term out of range - should be between 1 and %d"
	.section	.text.sqlite3ResolveOrderGroupBy.isra.0,"ax",@progbits
	.align	1
	.type	sqlite3ResolveOrderGroupBy.isra.0, @function
sqlite3ResolveOrderGroupBy.isra.0:
	beq	a2,zero,.L11532
	addi	sp,sp,-64
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	ld	a5,0(a0)
	mv	s3,a0
	lbu	a4,97(a5)
	bne	a4,zero,.L11518
	lw	a4,0(a2)
	lw	a5,132(a5)
	mv	s2,a2
	mv	s4,a3
	blt	a5,a4,.L11536
	ld	s5,0(a1)
	addi	s0,a2,8
	ble	a4,zero,.L11518
	li	s1,0
.L11523:
	lhu	a6,28(s0)
	li	a5,0
	mv	a4,s4
	mv	a1,s5
	mv	a0,s3
	beq	a6,zero,.L11521
	lw	a3,0(s5)
	sext.w	a2,a6
	addiw	a2,a2,-1
	bgt	a6,a3,.L11537
	ld	a3,0(s0)
	call	resolveAlias
.L11521:
	lw	a5,0(s2)
	addiw	s1,s1,1
	addi	s0,s0,32
	bgt	a5,s1,.L11523
.L11518:
	li	a0,0
.L11520:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L11536:
	mv	a2,a3
	lla	a1,.LC88
	call	sqlite3ErrorMsg
	li	a0,1
	j	.L11520
.L11537:
	mv	a4,a3
	addiw	a2,s1,1
	mv	a3,s4
	lla	a1,.LC89
	call	sqlite3ErrorMsg
	li	a0,1
	j	.L11520
.L11532:
	li	a0,0
	ret
	.size	sqlite3ResolveOrderGroupBy.isra.0, .-sqlite3ResolveOrderGroupBy.isra.0
	.section	.rodata.str1.8
	.align	3
.LC90:
	.string	"no such window: %s"
	.section	.text.windowFind,"ax",@progbits
	.align	1
	.type	windowFind, @function
windowFind:
	beq	a1,zero,.L11539
	lla	a7,.LANCHOR2
.L11545:
	ld	a4,0(a1)
	mv	a6,a2
	lbu	a3,0(a6)
	lbu	a5,0(a4)
	addi	a4,a4,1
	add	t1,a7,a3
	add	t3,a7,a5
	beq	a5,a3,.L11557
.L11540:
	lbu	a3,320(t3)
	lbu	a5,320(t1)
	bne	a3,a5,.L11543
.L11542:
	lbu	a5,0(a4)
	lbu	a3,1(a6)
	addi	a6,a6,1
	addi	a4,a4,1
	add	t3,a7,a5
	add	t1,a7,a3
	bne	a5,a3,.L11540
.L11557:
	bne	a5,zero,.L11542
	mv	a0,a1
	ret
.L11543:
	ld	a1,56(a1)
	bne	a1,zero,.L11545
.L11539:
	addi	sp,sp,-16
	lla	a1,.LC90
	sd	ra,8(sp)
	call	sqlite3ErrorMsg
	ld	ra,8(sp)
	li	a1,0
	mv	a0,a1
	addi	sp,sp,16
	jr	ra
	.size	windowFind, .-windowFind
	.section	.rodata.str1.8
	.align	3
.LC91:
	.string	"index expressions"
	.align	3
.LC92:
	.string	"partial index WHERE clauses"
	.align	3
.LC93:
	.string	"CHECK constraints"
	.align	3
.LC94:
	.string	"%s prohibited in %s"
	.section	.text.notValid.isra.0,"ax",@progbits
	.align	1
	.type	notValid.isra.0, @function
notValid.isra.0:
	and	a3,a3,a1
	beq	a3,zero,.L11558
	andi	a5,a1,32
	lla	a3,.LC91
	beq	a5,zero,.L11564
.L11560:
	lla	a1,.LC94
	tail	sqlite3ErrorMsg
.L11564:
	andi	a1,a1,4
	lla	a3,.LC92
	beq	a1,zero,.L11560
	lla	a3,.LC93
	lla	a1,.LC94
	tail	sqlite3ErrorMsg
.L11558:
	ret
	.size	notValid.isra.0, .-notValid.isra.0
	.section	.rodata.str1.8
	.align	3
.LC95:
	.string	"Expression tree is too large (maximum depth %d)"
	.section	.text.sqlite3ResolveExprNames,"ax",@progbits
	.align	1
	.type	sqlite3ResolveExprNames, @function
sqlite3ResolveExprNames:
	beq	a1,zero,.L11569
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	ra,72(sp)
	sd	s2,48(sp)
	lw	s2,40(a0)
	li	a5,-36864
	mv	s0,a0
	addi	a5,a5,-17
	ld	a0,0(a0)
	and	a5,s2,a5
	sw	a5,40(s0)
	lla	a4,resolveExprStep
	lw	a5,284(a0)
	lw	a3,40(a1)
	sd	a4,8(sp)
	lla	a4,resolveSelectStep
	sd	a0,0(sp)
	sd	a4,16(sp)
	sd	zero,24(sp)
	sd	s0,40(sp)
	ld	a4,0(a0)
	addw	a5,a5,a3
	sw	a5,284(a0)
	lw	a2,136(a4)
	mv	s1,a1
	bgt	a5,a2,.L11567
	mv	a0,sp
	call	walkExpr
	ld	a2,0(sp)
	lw	a5,40(s1)
	li	a3,32768
	lw	a4,284(a2)
	addi	a3,a3,16
	li	a0,1
	subw	a4,a4,a5
	sw	a4,284(a2)
	lw	a4,40(s0)
	lw	a5,4(s1)
	and	a4,a4,a3
	or	a4,a4,a5
	sw	a4,4(s1)
	lw	a3,40(s0)
	li	a4,36864
	addi	a4,a4,16
	and	a5,s2,a4
	lw	a4,36(s0)
	or	a5,a5,a3
	sw	a5,40(s0)
	ble	a4,zero,.L11576
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	addi	sp,sp,80
	jr	ra
.L11576:
	lw	a0,48(a2)
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	sgt	a0,a0,zero
	addi	sp,sp,80
	jr	ra
.L11567:
	lla	a1,.LC95
	call	sqlite3ErrorMsg
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	li	a0,1
	addi	sp,sp,80
	jr	ra
.L11569:
	li	a0,0
	ret
	.size	sqlite3ResolveExprNames, .-sqlite3ResolveExprNames
	.section	.text.sqlite3ResolveExprListNames.part.0,"ax",@progbits
	.align	1
	.type	sqlite3ResolveExprListNames.part.0, @function
sqlite3ResolveExprListNames.part.0:
	lw	a5,0(a1)
	ble	a5,zero,.L11584
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s1,a1
	mv	s2,a0
	li	s0,0
	j	.L11580
.L11588:
	lw	a5,0(s1)
	ble	a5,s0,.L11587
.L11580:
	slli	a5,s0,5
	add	a5,s1,a5
	ld	a1,8(a5)
	mv	a0,s2
	addiw	s0,s0,1
	call	sqlite3ResolveExprNames
	beq	a0,zero,.L11588
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,2
	addi	sp,sp,32
	jr	ra
.L11587:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,0
	addi	sp,sp,32
	jr	ra
.L11584:
	li	a0,0
	ret
	.size	sqlite3ResolveExprListNames.part.0, .-sqlite3ResolveExprListNames.part.0
	.section	.text.sqlite3ResolveSelfReference,"ax",@progbits
	.align	1
	.type	sqlite3ResolveSelfReference, @function
sqlite3ResolveSelfReference:
	addi	sp,sp,-208
	sd	s0,192(sp)
	sd	s1,184(sp)
	mv	a5,a1
	sd	ra,200(sp)
	sd	zero,56(sp)
	sd	zero,16(sp)
	sd	zero,24(sp)
	sd	zero,32(sp)
	sd	zero,40(sp)
	sd	zero,48(sp)
	sd	zero,64(sp)
	sd	zero,72(sp)
	sd	zero,80(sp)
	sd	zero,88(sp)
	sd	zero,96(sp)
	sd	zero,104(sp)
	sd	zero,112(sp)
	sd	zero,120(sp)
	sd	zero,128(sp)
	sd	zero,136(sp)
	sd	zero,144(sp)
	sd	zero,152(sp)
	sd	zero,160(sp)
	sd	zero,168(sp)
	mv	s1,sp
	mv	a6,a0
	mv	a1,a3
	mv	s0,a4
	beq	a5,zero,.L11590
	ld	a4,0(a5)
	li	a3,1
	sd	a5,96(sp)
	li	a5,-1
	sw	a3,56(sp)
	sd	a4,80(sp)
	sw	a5,128(sp)
.L11590:
	li	a5,65536
	or	a2,a2,a5
	mv	a0,s1
	addi	a5,sp,56
	sd	a6,0(sp)
	sd	a5,8(sp)
	sw	a2,40(sp)
	call	sqlite3ResolveExprNames
	bne	a0,zero,.L11591
	beq	s0,zero,.L11591
	mv	a1,s0
	mv	a0,s1
	call	sqlite3ResolveExprListNames.part.0
.L11591:
	ld	ra,200(sp)
	ld	s0,192(sp)
	ld	s1,184(sp)
	addi	sp,sp,208
	jr	ra
	.size	sqlite3ResolveSelfReference, .-sqlite3ResolveSelfReference
	.section	.text.sqlite3ExprSetHeightAndFlags.part.0,"ax",@progbits
	.align	1
	.type	sqlite3ExprSetHeightAndFlags.part.0, @function
sqlite3ExprSetHeightAndFlags.part.0:
	addi	sp,sp,-32
	sd	s1,8(sp)
	mv	s1,a0
	mv	a0,a1
	sd	s0,16(sp)
	sd	ra,24(sp)
	mv	s0,a1
	call	exprSetHeight
	ld	a4,0(s1)
	lw	a5,40(s0)
	lw	a2,136(a4)
	bgt	a5,a2,.L11602
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L11602:
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a0,s1
	ld	s1,8(sp)
	lla	a1,.LC95
	addi	sp,sp,32
	tail	sqlite3ErrorMsg
	.size	sqlite3ExprSetHeightAndFlags.part.0, .-sqlite3ExprSetHeightAndFlags.part.0
	.section	.text.sqlite3PExprAddSelect,"ax",@progbits
	.align	1
	.type	sqlite3PExprAddSelect, @function
sqlite3PExprAddSelect:
	mv	a4,a2
	beq	a1,zero,.L11604
	lw	a2,4(a1)
	li	a6,2101248
	addi	a6,a6,-2048
	or	a2,a2,a6
	sd	a4,32(a1)
	sw	a2,4(a1)
	lw	a5,48(a0)
	beq	a5,zero,.L11611
.L11603:
	ret
.L11611:
	tail	sqlite3ExprSetHeightAndFlags.part.0
.L11604:
	beq	a2,zero,.L11603
	ld	a0,0(a0)
	li	a2,1
	mv	a1,a4
	tail	clearSelect
	.size	sqlite3PExprAddSelect, .-sqlite3PExprAddSelect
	.section	.text.sqlite3PExpr,"ax",@progbits
	.align	1
	.type	sqlite3PExpr, @function
sqlite3PExpr:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	mv	s1,a0
	ld	a0,0(a0)
	mv	s4,a1
	li	a1,72
	mv	s3,a2
	mv	s2,a3
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L11613
	li	a2,72
	li	a1,0
	call	memset@plt
	li	a5,-1
	sb	s4,0(s0)
	sh	a5,50(s0)
	beq	s2,zero,.L11614
	sd	s2,24(s0)
	lw	a5,4(s2)
	li	a4,2097152
	addi	a4,a4,260
	and	a5,a5,a4
	sw	a5,4(s0)
.L11614:
	beq	s3,zero,.L11615
	sd	s3,16(s0)
	lw	a5,4(s3)
	lw	a3,4(s0)
	li	a4,2097152
	addi	a4,a4,260
	and	a5,a5,a4
	or	a5,a5,a3
	sw	a5,4(s0)
.L11615:
	mv	a0,s0
	call	exprSetHeight
	ld	a4,0(s1)
	lw	a5,40(s0)
	lw	a2,136(a4)
	bgt	a5,a2,.L11633
.L11612:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L11613:
	ld	a0,0(s1)
	beq	s3,zero,.L11618
	mv	a1,s3
	call	sqlite3ExprDeleteNN
	ld	a0,0(s1)
.L11618:
	beq	s2,zero,.L11612
	mv	a1,s2
	call	sqlite3ExprDeleteNN
	j	.L11612
.L11633:
	lla	a1,.LC95
	mv	a0,s1
	call	sqlite3ErrorMsg
	j	.L11612
	.size	sqlite3PExpr, .-sqlite3PExpr
	.section	.text.sqlite3ExprForVectorField,"ax",@progbits
	.align	1
	.type	sqlite3ExprForVectorField, @function
sqlite3ExprForVectorField:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	lbu	a5,0(a1)
	li	a4,131
	mv	s0,a1
	mv	s2,a2
	beq	a5,a4,.L11651
	li	a4,169
	mv	s1,a0
	beq	a5,a4,.L11652
.L11637:
	ld	a0,0(s1)
	li	a3,0
	li	a2,0
	mv	a1,s0
	call	exprDup
.L11638:
	ld	a5,400(s1)
	bne	a5,zero,.L11640
	j	.L11634
.L11639:
	ld	a5,24(a5)
	beq	a5,zero,.L11634
.L11640:
	ld	a4,0(a5)
	bne	a4,s0,.L11639
	sd	a0,0(a5)
.L11634:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L11652:
	ld	a5,32(a1)
	slli	a2,a2,5
	li	s0,0
	add	a2,a5,a2
	ld	a0,8(a2)
	beq	a0,zero,.L11638
	mv	s0,a0
	j	.L11637
.L11651:
	li	a3,0
	li	a2,0
	li	a1,170
	call	sqlite3PExpr
	beq	a0,zero,.L11634
	sh	s2,48(a0)
	sd	s0,16(a0)
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	sqlite3ExprForVectorField, .-sqlite3ExprForVectorField
	.section	.text.sqlite3ExprAnd,"ax",@progbits
	.align	1
	.type	sqlite3ExprAnd, @function
sqlite3ExprAnd:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s0,a2
	beq	a1,zero,.L11657
	beq	a2,zero,.L11658
	lw	a4,4(a1)
	li	a3,536870912
	addi	a5,a3,1
	and	a4,a5,a4
	mv	s1,a0
	beq	a4,a3,.L11655
	lw	a4,4(a2)
	and	a5,a5,a4
	bne	a5,a3,.L11656
.L11655:
	mv	a0,s1
	ld	s2,0(s1)
	call	sqlite3ExprUnmapAndDelete
	mv	a1,s0
	mv	a0,s1
	call	sqlite3ExprUnmapAndDelete
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	mv	a0,s2
	ld	s2,0(sp)
	li	a3,0
	lla	a2,.LANCHOR5-1144
	li	a1,147
	addi	sp,sp,32
	tail	sqlite3ExprAlloc
.L11656:
	ld	s0,16(sp)
	ld	ra,24(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	mv	a3,a2
	mv	a2,a1
	addi	sp,sp,32
	li	a1,44
	tail	sqlite3PExpr
.L11657:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	mv	a0,a2
	addi	sp,sp,32
	jr	ra
.L11658:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	mv	a0,a1
	addi	sp,sp,32
	jr	ra
	.size	sqlite3ExprAnd, .-sqlite3ExprAnd
	.section	.text.pushDownWhereTerms,"ax",@progbits
	.align	1
	.type	pushDownWhereTerms, @function
pushDownWhereTerms:
	addi	sp,sp,-112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	s5,56(sp)
	sd	s6,48(sp)
	beq	a2,zero,.L11663
	lw	a5,12(a1)
	mv	s1,a4
	mv	s0,a1
	slli	a4,a5,50
	blt	a4,zero,.L11663
	ld	a5,112(a1)
	beq	a5,zero,.L11685
.L11663:
	li	s2,0
.L11662:
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	ld	s3,72(sp)
	ld	s4,64(sp)
	ld	s5,56(sp)
	ld	s6,48(sp)
	mv	a0,s2
	ld	s2,80(sp)
	addi	sp,sp,112
	jr	ra
.L11685:
	ld	a5,96(a1)
	bne	a5,zero,.L11663
	lbu	a4,0(a2)
	li	a5,44
	mv	s4,a2
	mv	s5,a0
	mv	s3,a3
	li	s2,0
	bne	a4,a5,.L11664
	li	s6,44
.L11665:
	ld	a2,24(s4)
	mv	a4,s1
	mv	a3,s3
	mv	a1,s0
	mv	a0,s5
	call	pushDownWhereTerms
	ld	s4,16(s4)
	addw	s2,a0,s2
	lbu	a5,0(s4)
	beq	a5,s6,.L11665
.L11664:
	lw	a5,4(s4)
	andi	a5,a5,1
	beq	s1,zero,.L11666
	beq	a5,zero,.L11663
.L11684:
	lh	a5,52(s4)
	bne	a5,s3,.L11663
.L11667:
	li	a5,3
	sb	a5,36(sp)
	mv	s6,sp
	lla	a5,exprNodeIsConstant
	sd	a5,8(sp)
	mv	a1,s4
	lla	a5,sqlite3SelectWalkFail
	mv	a0,s6
	sd	a5,16(sp)
	sw	s3,40(sp)
	call	walkExpr
	lbu	a5,36(sp)
	beq	a5,zero,.L11662
	addiw	s2,s2,1
	j	.L11670
.L11686:
	ld	a1,64(s0)
	call	sqlite3ExprAnd
	sd	a0,64(s0)
.L11669:
	ld	s0,80(s0)
	beq	s0,zero,.L11662
.L11670:
	ld	a0,0(s5)
	li	a2,0
	li	a3,0
	mv	a1,s4
	call	exprDup
	li	a1,-1
	mv	s1,a0
	call	unsetJoinExpr
	sd	s5,0(sp)
	sw	s3,8(sp)
	sw	s3,12(sp)
	sw	zero,16(sp)
	ld	a5,0(s0)
	mv	a1,s1
	mv	a0,s6
	sd	a5,24(sp)
	call	substExpr
	lw	a5,12(s0)
	mv	a2,a0
	mv	a0,s5
	andi	a5,a5,8
	bne	a5,zero,.L11686
	ld	a1,48(s0)
	call	sqlite3ExprAnd
	sd	a0,48(s0)
	j	.L11669
.L11666:
	bne	a5,zero,.L11684
	j	.L11667
	.size	pushDownWhereTerms, .-pushDownWhereTerms
	.section	.text.havingToWhereExprCb,"ax",@progbits
	.align	1
	.type	havingToWhereExprCb, @function
havingToWhereExprCb:
	lbu	a4,0(a1)
	li	a5,44
	bne	a4,a5,.L11700
	li	a0,0
	ret
.L11700:
	addi	sp,sp,-160
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	s3,120(sp)
	sd	ra,152(sp)
	sd	s2,128(sp)
	sd	s4,112(sp)
	sd	s5,104(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	ld	s2,40(a0)
	ld	a5,0(a0)
	lla	a3,exprNodeIsConstantOrGroupBy
	ld	a4,56(s2)
	mv	s1,a0
	li	s3,1
	addi	a0,sp,8
	sd	a5,8(sp)
	mv	s0,a1
	sb	s3,44(sp)
	sd	a3,16(sp)
	sd	zero,24(sp)
	sd	a4,48(sp)
	call	walkExpr
	lbu	a5,44(sp)
	bne	a5,zero,.L11689
.L11699:
	ld	ra,152(sp)
	ld	s0,144(sp)
	ld	s1,136(sp)
	ld	s2,128(sp)
	ld	s3,120(sp)
	ld	s4,112(sp)
	ld	s5,104(sp)
	ld	s6,96(sp)
	ld	s7,88(sp)
	li	a0,1
	addi	sp,sp,160
	jr	ra
.L11689:
	ld	a5,0(s1)
	lla	a2,.LANCHOR5-1128
	li	a3,0
	ld	a0,0(a5)
	li	a1,147
	call	sqlite3ExprAlloc
	mv	a2,a0
	beq	a0,zero,.L11699
	ld	ra,32(a0)
	ld	t2,40(a0)
	ld	t0,48(a0)
	ld	t6,56(a0)
	ld	t5,64(a0)
	ld	s6,8(a0)
	ld	s5,16(a0)
	ld	s4,24(a0)
	ld	s7,0(a2)
	ld	t4,0(s0)
	ld	t3,8(s0)
	ld	t1,16(s0)
	ld	a7,24(s0)
	ld	a0,40(s0)
	ld	a3,48(s0)
	ld	a4,56(s0)
	ld	a5,64(s0)
	ld	a6,32(s0)
	ld	a1,48(s2)
	sd	ra,40(sp)
	sd	t2,48(sp)
	sd	t0,56(sp)
	sd	t6,64(sp)
	sd	t5,72(sp)
	sd	s7,8(sp)
	sd	s6,16(sp)
	sd	s5,24(sp)
	sd	s4,32(sp)
	sd	t4,0(a2)
	sd	t3,8(a2)
	sd	t1,16(a2)
	sd	a7,24(a2)
	sd	a6,32(a2)
	sd	a0,40(a2)
	sd	a3,48(a2)
	sd	a4,56(a2)
	sd	a5,64(a2)
	ld	a5,8(sp)
	sd	a5,0(s0)
	ld	a5,16(sp)
	sd	a5,8(s0)
	ld	a5,24(sp)
	sd	a5,16(s0)
	ld	a5,32(sp)
	sd	a5,24(s0)
	ld	a5,40(sp)
	sd	a5,32(s0)
	ld	a5,48(sp)
	sd	a5,40(s0)
	ld	a5,56(sp)
	sd	a5,48(s0)
	ld	a5,64(sp)
	sd	a5,56(s0)
	ld	a5,72(sp)
	sd	a5,64(s0)
	ld	a0,0(s1)
	call	sqlite3ExprAnd
	sd	a0,48(s2)
	sb	s3,36(s1)
	j	.L11699
	.size	havingToWhereExprCb, .-havingToWhereExprCb
	.section	.text.addWhereTerm,"ax",@progbits
	.align	1
	.type	addWhereTerm, @function
addWhereTerm:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	ld	s7,0(a0)
	mv	s0,a0
	mv	s4,a4
	mv	a0,s7
	mv	s5,a5
	mv	s2,a1
	mv	s6,a6
	mv	s1,a7
	call	sqlite3CreateColumnExpr
	mv	a1,s2
	mv	s3,a0
	mv	a3,s5
	mv	a2,s4
	mv	a0,s7
	call	sqlite3CreateColumnExpr
	mv	a3,a0
	mv	a2,s3
	mv	s2,a0
	li	a1,53
	mv	a0,s0
	call	sqlite3PExpr
	mv	a2,a0
	beq	a0,zero,.L11702
	beq	s6,zero,.L11702
	lw	a5,4(a0)
	ori	a5,a5,1
	sw	a5,4(a0)
	lw	a5,44(s2)
	sh	a5,52(a0)
.L11702:
	ld	a1,0(s1)
	mv	a0,s0
	call	sqlite3ExprAnd
	sd	a0,0(s1)
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	jr	ra
	.size	addWhereTerm, .-addWhereTerm
	.section	.rodata.str1.8
	.align	3
.LC96:
	.string	"default value of column [%s] is not constant"
	.section	.text.sqlite3AddDefaultValue,"ax",@progbits
	.align	1
	.type	sqlite3AddDefaultValue, @function
sqlite3AddDefaultValue:
	addi	sp,sp,-144
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	ra,136(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	mv	s0,a0
	ld	a0,312(a0)
	ld	s3,0(s0)
	mv	s1,a1
	beq	a0,zero,.L11711
	lbu	a5,181(s3)
	lh	a4,70(a0)
	ld	s5,8(a0)
	mv	s4,a3
	addiw	a5,a5,4
	lla	a3,exprNodeIsConstant
	slli	a4,a4,5
	andi	a5,a5,0xff
	sd	a3,16(sp)
	lla	a3,sqlite3SelectWalkFail
	addi	a4,a4,-32
	sb	a5,44(sp)
	sd	a3,24(sp)
	sw	zero,48(sp)
	mv	s2,a2
	add	s5,s5,a4
	beq	a1,zero,.L11712
	addi	a0,sp,8
	call	walkExpr
	lbu	a5,44(sp)
.L11712:
	beq	a5,zero,.L11734
	ld	a1,8(s5)
	beq	a1,zero,.L11714
	mv	a0,s3
	call	sqlite3ExprDeleteNN
.L11714:
	mv	a1,s2
	li	a5,-83
	sd	zero,8(sp)
	mv	a2,s4
	mv	a0,s3
	sb	a5,8(sp)
	sd	zero,16(sp)
	sd	zero,24(sp)
	sd	zero,32(sp)
	sd	zero,40(sp)
	sd	zero,48(sp)
	sd	zero,56(sp)
	sd	zero,64(sp)
	sd	zero,72(sp)
	call	sqlite3DbSpanDup
	mv	a5,a0
	addi	s2,sp,8
	mv	a1,s2
	sd	a5,16(sp)
	li	a3,0
	li	a5,4096
	li	a2,1
	mv	a0,s3
	sd	s1,24(sp)
	sw	a5,12(sp)
	call	exprDup
	sd	a0,8(s5)
	ld	a1,16(sp)
	beq	a1,zero,.L11711
	mv	a0,s3
	call	sqlite3DbFreeNN
.L11711:
	lbu	a4,276(s0)
	li	a5,1
	bgtu	a4,a5,.L11735
.L11716:
	beq	s1,zero,.L11710
	mv	a1,s1
	mv	a0,s3
	call	sqlite3ExprDeleteNN
.L11710:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	addi	sp,sp,144
	jr	ra
.L11735:
	mv	a1,s1
	mv	a0,s0
	call	sqlite3RenameExprUnmap
	j	.L11716
.L11734:
	ld	a2,0(s5)
	lla	a1,.LC96
	mv	a0,s0
	call	sqlite3ErrorMsg
	lbu	a4,276(s0)
	li	a5,1
	bleu	a4,a5,.L11716
	j	.L11735
	.size	sqlite3AddDefaultValue, .-sqlite3AddDefaultValue
	.section	.rodata.str1.8
	.align	3
.LC97:
	.string	"foreign key on %s should reference only one column of table %T"
	.align	3
.LC98:
	.string	"number of columns in foreign key does not match the number of columns in the referenced table"
	.align	3
.LC99:
	.string	"unknown column \"%s\" in foreign key definition"
	.section	.text.sqlite3CreateForeignKey,"ax",@progbits
	.align	1
	.type	sqlite3CreateForeignKey, @function
sqlite3CreateForeignKey:
	addi	sp,sp,-144
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s5,88(sp)
	sd	s6,80(sp)
	sd	s7,72(sp)
	sd	s8,64(sp)
	sd	s9,56(sp)
	sd	s10,48(sp)
	sd	s11,40(sp)
	ld	s0,312(a0)
	sd	a4,24(sp)
	ld	s5,0(a0)
	mv	s4,a1
	mv	s3,a3
	beq	s0,zero,.L11738
	lbu	a5,276(a0)
	li	a3,1
	mv	s1,a0
	beq	a5,a3,.L11738
	mv	s9,a2
	beq	a1,zero,.L11821
	lw	s2,0(a1)
	beq	s3,zero,.L11746
	lw	s6,0(s3)
	bne	s6,s2,.L11822
	lw	a5,8(a2)
	addiw	s8,s6,-1
	addi	s8,s8,5
	slliw	s8,s8,4
	addiw	a5,a5,1
	addw	s8,s8,a5
	ble	s6,zero,.L11786
.L11782:
	li	s7,1073741824
	addi	s11,s3,16
	li	s10,0
	addi	s7,s7,-1
	j	.L11750
.L11823:
	call	strlen@plt
	and	a5,a0,s7
	addiw	a5,a5,1
	addiw	s10,s10,1
	addw	s8,s8,a5
	addi	s11,s11,32
	bge	s10,s6,.L11786
.L11750:
	ld	a0,0(s11)
	bne	a0,zero,.L11823
	li	a5,1
	addiw	s10,s10,1
	addw	s8,s8,a5
	addi	s11,s11,32
	blt	s10,s6,.L11750
.L11786:
	mv	a1,s8
	mv	a0,s5
	call	sqlite3DbMallocZero
	mv	s7,a0
	beq	a0,zero,.L11738
.L11820:
	addi	s8,s2,4
	slli	s8,s8,4
.L11783:
	sd	s0,0(s7)
	ld	a5,32(s0)
	add	s8,s7,s8
	sd	s8,16(s7)
	sd	a5,8(s7)
	lbu	a4,276(s1)
	li	a5,1
	bleu	a4,a5,.L11751
	ld	a0,0(s1)
	mv	a3,s9
	mv	a2,s8
	addi	a1,s1,400
	call	sqlite3RenameTokenMap.isra.0
.L11751:
	lwu	a2,8(s9)
	ld	a1,0(s9)
	mv	a0,s8
	call	memcpy@plt
	lwu	a5,8(s9)
	mv	a0,s8
	add	a5,s8,a5
	sb	zero,0(a5)
	call	sqlite3Dequote
	lw	t5,8(s9)
	sw	s2,40(s7)
	beq	s4,zero,.L11752
	ble	s2,zero,.L11753
	addi	t0,s4,16
	addi	t2,s7,64
	li	t6,0
	lla	t1,.LANCHOR2
	li	s9,1
.L11754:
	lh	t4,70(s0)
	ld	a2,0(t0)
	ble	t4,zero,.L11769
	ld	t3,8(s0)
	li	a1,0
.L11781:
	ld	a0,0(t3)
	mv	a7,a2
	lbu	a6,0(a7)
	lbu	a5,0(a0)
	addi	a0,a0,1
	add	a4,t1,a6
	add	a3,t1,a5
	beq	a5,a6,.L11824
.L11758:
	lbu	a3,320(a3)
	lbu	a5,320(a4)
	bne	a3,a5,.L11761
.L11760:
	lbu	a5,0(a0)
	lbu	a6,1(a7)
	addi	a7,a7,1
	addi	a0,a0,1
	add	a3,t1,a5
	add	a4,t1,a6
	bne	a5,a6,.L11758
.L11824:
	bne	a5,zero,.L11760
	sw	a1,0(t2)
	lh	a5,70(s0)
	ble	a5,a1,.L11825
	lbu	a5,276(s1)
	bgtu	a5,s9,.L11826
.L11764:
	addiw	t6,t6,1
	addi	t0,t0,32
	addi	t2,t2,16
	bne	t6,s2,.L11754
	beq	s3,zero,.L11753
.L11784:
	addiw	a4,t5,1
	slli	a4,a4,32
	li	s10,1073741824
	srli	a4,a4,32
	addi	a5,s10,-1
	add	s11,s8,a4
	addi	s6,s3,16
	addi	s9,s7,72
	li	s8,0
	sd	a5,16(sp)
	j	.L11775
.L11771:
	ld	a1,0(s6)
.L11772:
	mv	a0,s11
	sd	t1,8(sp)
	call	memcpy@plt
	ld	t1,8(sp)
	addiw	s8,s8,1
	add	s11,s11,s10
	sb	zero,0(t1)
	addi	s6,s6,32
	addi	s9,s9,16
	bge	s8,s2,.L11753
.L11775:
	ld	a0,0(s6)
	beq	a0,zero,.L11788
	call	strlen@plt
	ld	a5,16(sp)
	and	a2,a0,a5
	sext.w	a2,a2
	add	t1,s11,a2
	addi	s10,a2,1
.L11770:
	sd	s11,0(s9)
	lbu	a5,276(s1)
	li	a4,1
	bleu	a5,a4,.L11771
	ld	a5,400(s1)
	ld	a1,0(s6)
	bne	a5,zero,.L11774
	j	.L11772
.L11773:
	ld	a5,24(a5)
	beq	a5,zero,.L11772
.L11774:
	ld	a3,0(a5)
	bne	a1,a3,.L11773
	sd	s11,0(a5)
	ld	a1,0(s6)
	j	.L11772
.L11825:
	slli	a5,t6,5
	add	a5,s4,a5
	ld	a2,16(a5)
.L11769:
	lla	a1,.LC99
	mv	a0,s1
	call	sqlite3ErrorMsg
.L11763:
	mv	a1,s7
	mv	a0,s5
	call	sqlite3DbFreeNN
.L11738:
	beq	s4,zero,.L11742
.L11748:
	mv	a1,s4
	mv	a0,s5
	call	exprListDeleteNN
.L11742:
	beq	s3,zero,.L11736
.L11745:
	ld	s0,128(sp)
	ld	ra,136(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s4,96(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	ld	s9,56(sp)
	ld	s10,48(sp)
	ld	s11,40(sp)
	mv	a1,s3
	mv	a0,s5
	ld	s3,104(sp)
	ld	s5,88(sp)
	addi	sp,sp,144
	tail	exprListDeleteNN
.L11736:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	ld	s9,56(sp)
	ld	s10,48(sp)
	ld	s11,40(sp)
	addi	sp,sp,144
	jr	ra
.L11761:
	addiw	a1,a1,1
	addi	t3,t3,32
	bne	a1,t4,.L11781
	j	.L11769
.L11826:
	ld	a5,400(s1)
	ld	a3,0(t0)
	bne	a5,zero,.L11766
	j	.L11764
.L11765:
	ld	a5,24(a5)
	beq	a5,zero,.L11764
.L11766:
	ld	a4,0(a5)
	bne	a3,a4,.L11765
	sd	t2,0(a5)
	j	.L11764
.L11752:
	lh	a5,70(s0)
	addiw	a5,a5,-1
	sw	a5,64(s7)
	beq	s3,zero,.L11753
	bgt	s2,zero,.L11784
.L11753:
	ld	a4,24(sp)
	sb	zero,44(s7)
	ld	a1,16(s7)
	sraiw	a5,a4,8
	sb	a4,45(s7)
	sb	a5,46(s7)
	ld	a0,112(s0)
	mv	a2,s7
	addi	a0,a0,80
	call	sqlite3HashInsert
	beq	a0,s7,.L11827
	beq	a0,zero,.L11777
	sd	a0,24(s7)
	sd	s7,32(a0)
.L11777:
	sd	s7,32(s0)
	bne	s4,zero,.L11748
	j	.L11742
.L11821:
	lh	a5,70(s0)
	addiw	a5,a5,-1
	blt	a5,zero,.L11742
	beq	s3,zero,.L11743
	lw	s6,0(s3)
	bne	s6,a3,.L11828
	lw	s8,8(a2)
	li	s2,1
	addiw	s8,s8,81
	j	.L11782
.L11788:
	mv	t1,s11
	li	s10,1
	li	a2,0
	j	.L11770
.L11822:
	lla	a1,.LC98
	call	sqlite3ErrorMsg
	mv	a1,s4
	mv	a0,s5
	call	exprListDeleteNN
	j	.L11742
.L11746:
	lw	a1,8(a2)
	addiw	a5,s2,-1
	addi	a5,a5,5
	slliw	a5,a5,4
	addiw	a1,a1,1
	addw	a1,a5,a1
	mv	a0,s5
	call	sqlite3DbMallocZero
	mv	s7,a0
	bne	a0,zero,.L11820
	j	.L11748
.L11743:
	lw	a1,8(a2)
	mv	a0,s5
	addiw	a1,a1,81
	call	sqlite3DbMallocZero
	mv	s7,a0
	beq	a0,zero,.L11736
	li	s8,80
	li	s2,1
	j	.L11783
.L11827:
	ld	a5,96(s5)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L11763
	lw	a4,196(s5)
	li	a5,1
	sb	a5,97(s5)
	ble	a4,zero,.L11776
	sw	a5,352(s5)
.L11776:
	mv	a0,s5
	call	sqlite3OomFault.part.0
	j	.L11763
.L11828:
	ld	a4,8(s0)
	slli	a5,a5,5
	mv	a3,a2
	add	a5,a4,a5
	ld	a2,0(a5)
	lla	a1,.LC97
	call	sqlite3ErrorMsg
	j	.L11745
	.size	sqlite3CreateForeignKey, .-sqlite3CreateForeignKey
	.section	.rodata.str1.8
	.align	3
.LC100:
	.string	"%s cannot use variables"
	.section	.text.sqlite3FixExpr,"ax",@progbits
	.align	1
	.type	sqlite3FixExpr, @function
sqlite3FixExpr:
	beq	a1,zero,.L11842
	addi	sp,sp,-64
	sd	s2,32(sp)
	li	s2,4096
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	mv	s0,a1
	mv	s1,a0
	li	s3,148
	li	s5,114
	li	s4,8404992
	addi	s2,s2,-2048
	j	.L11830
.L11846:
	call	sqlite3FixSelect
	bne	a0,zero,.L11836
.L11838:
	ld	a1,24(s0)
	mv	a0,s1
	call	sqlite3FixExpr
	bne	a0,zero,.L11836
	ld	s0,16(s0)
	beq	s0,zero,.L11834
.L11830:
	lbu	a5,0(s0)
	beq	a5,s3,.L11845
	lw	a5,4(s0)
	mv	a0,s1
	and	a4,a5,s4
	sext.w	a4,a4
	and	a5,a5,s2
	bne	a4,zero,.L11834
.L11847:
	ld	a1,32(s0)
	bne	a5,zero,.L11846
	call	sqlite3FixExprList
	beq	a0,zero,.L11838
.L11836:
	li	a0,1
.L11831:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L11845:
	ld	a0,0(s1)
	ld	a5,0(a0)
	lbu	a5,181(a5)
	beq	a5,zero,.L11833
	lw	a5,4(s0)
	sb	s5,0(s0)
	mv	a0,s1
	and	a4,a5,s4
	sext.w	a4,a4
	and	a5,a5,s2
	beq	a4,zero,.L11847
.L11834:
	li	a0,0
	j	.L11831
.L11833:
	ld	a2,32(s1)
	lla	a1,.LC100
	call	sqlite3ErrorMsg
	li	a0,1
	j	.L11831
.L11842:
	li	a0,0
	ret
	.size	sqlite3FixExpr, .-sqlite3FixExpr
	.section	.text.sqlite3FixExprList,"ax",@progbits
	.align	1
	.type	sqlite3FixExprList, @function
sqlite3FixExprList:
	beq	a1,zero,.L11858
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s3,8(sp)
	lw	a5,0(a1)
	mv	s2,a1
	addi	s1,a1,8
	ble	a5,zero,.L11849
	mv	s3,a0
	li	s0,0
	j	.L11851
.L11861:
	lw	a5,0(s2)
	addi	s1,s1,32
	ble	a5,s0,.L11849
.L11851:
	ld	a1,0(s1)
	mv	a0,s3
	addiw	s0,s0,1
	call	sqlite3FixExpr
	beq	a0,zero,.L11861
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,1
	addi	sp,sp,48
	jr	ra
.L11849:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
.L11858:
	li	a0,0
	ret
	.size	sqlite3FixExprList, .-sqlite3FixExprList
	.section	.text.sqlite3FixSelect,"ax",@progbits
	.align	1
	.type	sqlite3FixSelect, @function
sqlite3FixSelect:
	beq	a1,zero,.L11879
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	mv	s0,a1
	mv	s1,a0
.L11869:
	ld	a1,0(s0)
	mv	a0,s1
	call	sqlite3FixExprList
	bne	a0,zero,.L11866
	ld	a1,40(s0)
	mv	a0,s1
	call	sqlite3FixSrcList
	bne	a0,zero,.L11866
	ld	a1,48(s0)
	mv	a0,s1
	call	sqlite3FixExpr
	bne	a0,zero,.L11866
	ld	a1,56(s0)
	mv	a0,s1
	call	sqlite3FixExprList
	bne	a0,zero,.L11866
	ld	a1,64(s0)
	mv	a0,s1
	call	sqlite3FixExpr
	bne	a0,zero,.L11866
	ld	a1,72(s0)
	mv	a0,s1
	call	sqlite3FixExprList
	bne	a0,zero,.L11866
	ld	a1,96(s0)
	mv	a0,s1
	call	sqlite3FixExpr
	mv	s2,a0
	bne	a0,zero,.L11866
	ld	a5,104(s0)
	bne	a5,zero,.L11883
.L11867:
	ld	s0,80(s0)
	bne	s0,zero,.L11869
	li	a0,0
	j	.L11865
.L11866:
	li	a0,1
.L11865:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L11883:
	lw	a4,0(a5)
	ble	a4,zero,.L11867
.L11868:
	addi	a4,s2,1
	slli	a4,a4,5
	add	a5,a5,a4
	ld	a1,0(a5)
	mv	a0,s1
	addiw	s2,s2,1
	call	sqlite3FixSelect
	bne	a0,zero,.L11866
	ld	a5,104(s0)
	lw	a4,0(a5)
	bgt	a4,s2,.L11868
	j	.L11867
.L11879:
	li	a0,0
	ret
	.size	sqlite3FixSelect, .-sqlite3FixSelect
	.section	.rodata.str1.8
	.align	3
.LC101:
	.string	"%s %T cannot reference objects in database %s"
	.section	.text.sqlite3FixSrcList,"ax",@progbits
	.align	1
	.type	sqlite3FixSrcList, @function
sqlite3FixSrcList:
	beq	a1,zero,.L11908
	addi	sp,sp,-64
	sd	s2,32(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s3,24(sp)
	lw	a5,0(a1)
	ld	s3,24(a0)
	mv	s2,a1
	mv	s5,a0
	addi	s4,a1,8
	ble	a5,zero,.L11885
	li	s1,0
	lla	s0,.LANCHOR2
	j	.L11897
.L11898:
	lw	a5,0(s2)
	addiw	s1,s1,1
	addi	s4,s4,112
	ble	a5,s1,.L11885
.L11897:
	lw	a5,16(s5)
	bne	a5,zero,.L11886
	ld	a1,8(s4)
	bne	a1,zero,.L11912
.L11887:
	sd	zero,8(s4)
	ld	a5,8(s5)
	sd	a5,0(s4)
.L11886:
	ld	a1,40(s4)
	mv	a0,s5
	call	sqlite3FixSelect
	bne	a0,zero,.L11911
	ld	a1,72(s4)
	mv	a0,s5
	call	sqlite3FixExpr
	bne	a0,zero,.L11911
	lbu	a5,61(s4)
	andi	a5,a5,4
	beq	a5,zero,.L11898
	ld	a1,96(s4)
	mv	a0,s5
	call	sqlite3FixExprList
	beq	a0,zero,.L11898
.L11911:
	li	a0,1
.L11906:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L11912:
	mv	a3,a1
	mv	a6,s3
	lbu	a5,0(a3)
	lbu	a2,0(a6)
	addi	a3,a3,1
	add	t1,s0,a5
	add	a7,s0,a2
	beq	a5,a2,.L11913
.L11888:
	lbu	a2,320(t1)
	lbu	a5,320(a7)
	bne	a2,a5,.L11891
.L11890:
	lbu	a5,0(a3)
	lbu	a2,1(a6)
	addi	a6,a6,1
	addi	a3,a3,1
	add	t1,s0,a5
	add	a7,s0,a2
	bne	a5,a2,.L11888
.L11913:
	bne	a5,zero,.L11890
	ld	a5,0(s5)
	ld	a0,0(a5)
	call	sqlite3DbFreeNN
	j	.L11887
.L11885:
	li	a0,0
	j	.L11906
.L11891:
	ld	a3,40(s5)
	ld	a2,32(s5)
	ld	a0,0(s5)
	mv	a4,a1
	lla	a1,.LC101
	call	sqlite3ErrorMsg
	j	.L11911
.L11908:
	li	a0,0
	ret
	.size	sqlite3FixSrcList, .-sqlite3FixSrcList
	.section	.rodata.str1.8
	.align	3
.LC102:
	.string	"%s.xBestIndex malfunction"
	.section	.text.whereLoopAddVirtualOne,"ax",@progbits
	.align	1
	.type	whereLoopAddVirtualOne, @function
whereLoopAddVirtualOne:
	addi	sp,sp,-128
	sd	s0,112(sp)
	sd	s8,48(sp)
	sd	s9,40(sp)
	sd	ra,120(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s3,88(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s7,56(sp)
	sd	s10,32(sp)
	sd	s11,24(sp)
	mv	s9,a0
	ld	s6,24(s9)
	ld	a0,0(a0)
	lw	s11,0(a4)
	ld	s10,8(s9)
	ld	s5,32(a4)
	ld	s3,0(a0)
	ld	s4,8(a0)
	lbu	s2,16(s6)
	sw	zero,0(a6)
	sd	a1,0(s6)
	sd	a5,8(sp)
	ld	a1,8(a4)
	mv	s8,a4
	mv	s0,a6
	ble	s11,zero,.L11920
	addiw	a0,s11,-1
	slli	a0,a0,32
	srli	a0,a0,32
	addi	a5,a0,1
	slli	a0,a5,1
	add	a0,a0,a5
	slli	a0,a0,2
	add	a0,a1,a0
	li	a6,1
	j	.L11919
.L11918:
	addi	a1,a1,12
	beq	a1,a0,.L11920
.L11919:
	lw	t1,8(a1)
	ld	a7,32(s10)
	sb	zero,5(a1)
	slli	t1,t1,6
	add	a7,a7,t1
	ld	a5,48(a7)
	and	a4,a5,a2
	bne	a5,a4,.L11918
	lhu	a5,20(a7)
	and	a5,a3,a5
	bne	a5,zero,.L11918
	sb	a6,5(a1)
	addi	a1,a1,12
	bne	a1,a0,.L11919
.L11920:
	slli	a5,s2,3
	slli	a2,s11,3
	li	a1,0
	mv	a0,s5
	mv	s1,a5
	sd	a5,0(sp)
	call	memset@plt
	li	a4,1
	slli	a4,a4,49
	sub	a5,s1,s2
	sd	a4,64(s8)
	slli	a5,a5,4
	li	a4,25
	sd	zero,48(s8)
	sw	zero,40(s8)
	sw	zero,60(s8)
	sd	a4,72(s8)
	sw	zero,80(s8)
	add	a5,s4,a5
	ld	a4,96(a5)
	sd	a4,88(s8)
	ld	a5,40(a5)
	ld	a4,0(s3)
	ld	a3,96(a5)
	bne	a3,zero,.L11916
	j	.L11917
.L11921:
	ld	a3,40(a3)
	beq	a3,zero,.L11917
.L11916:
	ld	a5,0(a3)
	bne	a4,a5,.L11921
	ld	s7,16(a3)
	mv	a1,s8
	ld	a4,0(s7)
	mv	a0,s7
	ld	a4,24(a4)
	jalr	a4
	mv	s1,a0
	beq	a0,zero,.L11922
	li	a4,19
	beq	a0,a4,.L11923
	li	a4,7
	beq	a0,a4,.L11982
	ld	a2,16(s7)
	beq	a2,zero,.L11983
	lla	a1,.LC50
	mv	a0,s3
	call	sqlite3ErrorMsg
.L11925:
	ld	a0,16(s7)
	call	sqlite3_free@plt
	sd	zero,16(s7)
	j	.L11957
.L11922:
	ld	a0,16(s7)
	call	sqlite3_free@plt
	sd	zero,16(s7)
	ble	s11,zero,.L11984
	addiw	a2,s11,-1
	slli	a2,a2,32
	srli	a2,a2,32
	addi	a3,a2,1
	slli	a3,a3,3
	li	a5,0
.L11928:
	ld	a4,56(s6)
	add	a4,a4,a5
	sd	zero,0(a4)
	addi	a5,a5,8
	bne	a3,a5,.L11928
	sh	zero,30(s6)
	ld	a1,8(s8)
	addi	t1,s5,8
	slli	a2,a2,3
	mv	a5,s5
	add	t1,t1,a2
	li	a7,-1
	li	t3,15
	li	t4,1
	li	t5,1
.L11936:
	lw	a3,0(a5)
	addiw	a3,a3,-1
	slli	a2,a3,32
	sext.w	a4,a3
	blt	a2,zero,.L11930
	lw	a2,8(a1)
	ble	s11,a4,.L11931
	blt	a2,zero,.L11931
	lw	a0,20(s10)
	ble	a0,a2,.L11931
	ld	t6,56(s6)
	slli	a0,a4,3
	add	t6,t6,a0
	ld	a0,0(t6)
	bne	a0,zero,.L11931
	lbu	a0,5(a1)
	beq	a0,zero,.L11931
	ld	t0,32(s10)
	slli	a2,a2,6
	ld	a0,0(s6)
	add	a2,t0,a2
	ld	t0,48(a2)
	or	a0,a0,t0
	sd	a0,0(s6)
	sd	a2,0(t6)
	bge	a4,a7,.L11934
	mv	a3,a7
.L11934:
	sext.w	a7,a3
	bgt	a4,t3,.L11935
	lbu	a3,4(a5)
	beq	a3,zero,.L11935
	lhu	a3,30(s6)
	sllw	a4,t5,a4
	or	a4,a3,a4
	sh	a4,30(s6)
.L11935:
	lhu	a4,20(a2)
	andi	a4,a4,1
	beq	a4,zero,.L11930
	lw	a4,80(s8)
	sw	zero,60(s8)
	andi	a4,a4,-2
	sw	a4,80(s8)
	sw	t4,0(s0)
.L11930:
	addi	a5,a5,8
	addi	a1,a1,12
	bne	t1,a5,.L11936
	ld	a5,8(sp)
	lhu	a3,30(s6)
	not	a4,a5
	and	a4,a4,a3
	addiw	a5,a7,1
	sh	a5,44(s6)
	sh	a4,30(s6)
	li	a5,-1
	beq	a7,a5,.L11937
	ld	a4,56(s6)
	j	.L11939
.L11938:
	addiw	s1,s1,1
	blt	a7,s1,.L11937
.L11939:
	slli	a5,s1,3
	add	a5,a4,a5
	ld	a5,0(a5)
	bne	a5,zero,.L11938
	ld	a5,0(sp)
	sub	a5,a5,s2
	slli	a5,a5,4
	add	s4,s4,a5
	j	.L11981
.L11931:
	ld	a5,0(sp)
	sub	s2,a5,s2
	slli	s2,s2,4
	add	s4,s4,s2
.L11981:
	ld	a5,40(s4)
	lla	a1,.LC102
	mv	a0,s3
	ld	a2,0(a5)
	li	s1,1
	call	sqlite3ErrorMsg
.L11957:
	ld	ra,120(sp)
	ld	s0,112(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	ld	s11,24(sp)
	mv	a0,s1
	ld	s1,104(sp)
	addi	sp,sp,128
	jr	ra
.L11983:
	call	sqlite3ErrStr
	mv	a2,a0
	lla	a1,.LC50
	mv	a0,s3
	call	sqlite3ErrorMsg
	j	.L11925
.L11923:
	ld	a0,16(s7)
	li	s1,0
	call	sqlite3_free@plt
	sd	zero,16(s7)
	j	.L11957
.L11982:
	ld	a0,0(s3)
	li	a3,16777216
	addi	a3,a3,-256
	ld	a4,96(a0)
	and	a4,a4,a3
	bne	a4,zero,.L11925
	lw	a3,196(a0)
	li	a4,1
	sb	a4,97(a0)
	ble	a3,zero,.L11926
	sw	a4,352(a0)
.L11926:
	call	sqlite3OomFault.part.0
	j	.L11925
.L11984:
	sh	zero,30(s6)
	sh	zero,44(s6)
.L11937:
	lw	a4,40(s8)
	li	a5,0
	sw	a4,24(s6)
	lw	a4,56(s8)
	sb	a4,28(s6)
	ld	a4,48(s8)
	sw	zero,56(s8)
	sd	a4,32(s6)
	lw	a4,60(s8)
	bne	a4,zero,.L11985
.L11940:
	sb	a5,29(s6)
	sh	zero,18(s6)
	ld	a5,64(s8)
	li	a3,1
	li	a4,0
	ble	a5,a3,.L11941
	li	a4,1999998976
	addi	a4,a4,1024
	mv	s0,a5
	ble	a5,a4,.L11986
	srli	a5,a5,52
	addiw	a5,a5,-1022
	slliw	a4,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	slliw	a4,a5,16
	sraiw	a4,a4,16
.L11941:
	sh	a4,20(s6)
	ld	s0,72(s8)
	li	a5,7
	bleu	s0,a5,.L11987
	mv	a0,s0
	call	__clzdi2@plt
	li	a5,60
	subw	a5,a5,a0
	slliw	a4,a5,2
	addw	a4,a4,a5
	slliw	a4,a4,1
	addiw	a4,a4,30
	slliw	a4,a4,16
	srl	s0,s0,a5
	sraiw	a4,a4,16
.L11949:
	andi	a5,s0,7
	slli	a5,a5,1
	lla	a3,.LANCHOR2
	add	a5,a3,a5
	lhu	a5,1776(a5)
	addw	a5,a5,a4
	slliw	a5,a5,16
	sraiw	a5,a5,16
.L11947:
	sh	a5,22(s6)
	lw	a5,80(s8)
	lw	a4,40(s6)
	andi	a5,a5,1
	beq	a5,zero,.L11950
	li	a5,4096
	or	a5,a4,a5
.L11951:
	sw	a5,40(s6)
	mv	a1,s6
	mv	a0,s9
	call	whereLoopInsert
	lbu	a5,28(s6)
	mv	s1,a0
	beq	a5,zero,.L11957
	ld	a0,32(s6)
	call	sqlite3_free@plt
	sb	zero,28(s6)
	j	.L11957
.L11987:
	li	a4,1
	li	a5,0
	bleu	s0,a4,.L11947
	li	a5,40
	li	a2,7
.L11948:
	addiw	a3,a5,-10
	mv	a4,a5
	slli	s0,s0,1
	slliw	a5,a3,16
	sraiw	a5,a5,16
	bleu	s0,a2,.L11948
	addiw	a4,a4,-20
	slliw	a4,a4,16
	sraiw	a4,a4,16
	j	.L11949
.L11985:
	lb	a5,16(s8)
	j	.L11940
.L11986:
	li	a5,7
	bgt	s0,a5,.L11943
	li	a5,40
	li	a2,7
.L11944:
	addiw	a3,a5,-10
	mv	a4,a5
	slli	s0,s0,1
	slliw	a5,a3,16
	sraiw	a5,a5,16
	bleu	s0,a2,.L11944
	addiw	a4,a4,-20
	slliw	a4,a4,16
	sraiw	a4,a4,16
.L11945:
	andi	a5,s0,7
	slli	a5,a5,1
	lla	a3,.LANCHOR2
	add	a5,a3,a5
	lhu	a5,1776(a5)
	addw	a5,a5,a4
	slliw	a4,a5,16
	sraiw	a4,a4,16
	j	.L11941
.L11950:
	li	a5,-4096
	addi	a5,a5,-1
	and	a5,a4,a5
	j	.L11951
.L11943:
	mv	a0,s0
	call	__clzdi2@plt
	li	a4,60
	subw	a4,a4,a0
	slliw	a5,a4,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	addiw	a5,a5,30
	srl	s0,s0,a4
	slliw	a4,a5,16
	sraiw	a4,a4,16
	j	.L11945
.L11917:
	ld	a5,16(zero)
	ebreak
	.size	whereLoopAddVirtualOne, .-whereLoopAddVirtualOne
	.section	.text.whereLoopAddVirtual,"ax",@progbits
	.align	1
	.type	whereLoopAddVirtual, @function
whereLoopAddVirtual:
	addi	sp,sp,-176
	sd	s2,144(sp)
	sd	s4,128(sp)
	sd	s6,112(sp)
	sd	s10,80(sp)
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s3,136(sp)
	sd	s5,120(sp)
	sd	s7,104(sp)
	sd	s8,96(sp)
	sd	s9,88(sp)
	sd	s11,72(sp)
	ld	s9,24(a0)
	ld	a3,0(a0)
	ld	s5,8(a0)
	mv	s6,a0
	lbu	a0,16(s9)
	ld	a6,8(a3)
	lw	a4,20(s5)
	slli	a5,a0,3
	sub	a5,a5,a0
	slli	a5,a5,4
	addi	s2,a5,8
	ld	s7,0(a3)
	ld	s0,16(s6)
	ld	a5,32(s5)
	mv	s10,a1
	mv	s4,a2
	add	s2,a6,s2
	ble	a4,zero,.L12034
	addiw	a4,a4,-1
	slli	a4,a4,32
	srli	a4,a4,32
	addi	a4,a4,1
	lw	a2,64(s2)
	slli	a4,a4,6
	li	a1,-4096
	add	a4,a5,a4
	li	s8,0
	addi	a1,a1,2047
.L11991:
	lw	a3,28(a5)
	bne	a3,a2,.L11990
	ld	a3,48(a5)
	and	a3,s4,a3
	bne	a3,zero,.L11990
	lhu	a3,20(a5)
	and	a3,a1,a3
	beq	a3,zero,.L11990
	addiw	s8,s8,1
.L11990:
	addi	a5,a5,64
	bne	a4,a5,.L11991
	slli	a1,s8,2
	add	a1,a1,s8
	slli	a1,a1,2
	mv	a6,s8
	addi	a1,a1,112
.L11989:
	beq	s0,zero,.L12038
	lw	s1,0(s0)
	ble	s1,zero,.L11993
	addi	a5,s0,8
	li	a4,0
	li	a0,162
	j	.L11994
.L12076:
	lw	a2,44(a3)
	lw	a3,64(s2)
	bne	a2,a3,.L12038
	beq	s1,a4,.L11995
.L11994:
	ld	a3,0(a5)
	addiw	a4,a4,1
	addi	a5,a5,32
	lbu	a2,0(a3)
	beq	a2,a0,.L12076
.L12038:
	li	s11,0
	li	s1,0
.L11992:
	ld	a0,0(s7)
	sd	a6,8(sp)
	call	sqlite3DbMallocZero
	ld	a6,8(sp)
	mv	s3,a0
	beq	a0,zero,.L12077
	slli	a3,a6,1
	add	a3,a3,a6
	addi	t3,a0,112
	slli	a3,a3,2
	add	a3,t3,a3
	add	s11,a3,s11
	sw	s8,0(a0)
	sw	s1,16(a0)
	sd	t3,8(a0)
	sd	a3,24(a0)
	sd	s11,32(a0)
	sd	s5,96(a0)
	sd	s7,104(a0)
	lw	t1,20(s5)
	ld	a6,32(s5)
	li	s8,0
	sext.w	a5,t1
	ble	a5,zero,.L11998
	li	a1,-4096
	li	a2,8192
	li	a7,0
	li	a5,0
	addi	a1,a1,2047
	addi	a2,a2,-1
	li	t4,1
	li	t6,64
	li	s11,168
	li	ra,256
	li	t2,72
.L12010:
	lw	a0,28(a6)
	lw	a4,64(s2)
	bne	a0,a4,.L11999
	ld	a4,48(a6)
	and	a4,s4,a4
	bne	a4,zero,.L11999
	lhu	a0,20(a6)
	and	a4,a0,a1
	beq	a4,zero,.L11999
	lbu	a4,60(s2)
	andi	a4,a4,8
	beq	a4,zero,.L12000
	ld	a4,0(a6)
	lw	a4,4(a4)
	andi	a4,a4,1
	beq	a4,zero,.L12078
.L12000:
	slli	t1,a5,1
	lw	a4,40(a6)
	add	t1,t1,a5
	slli	t1,t1,2
	add	t1,t3,t1
	sw	a4,0(t1)
	sw	a7,8(t1)
	lhu	a4,20(a6)
	and	a0,a4,a2
	mv	t5,a0
	beq	a0,t4,.L12079
	beq	a0,t6,.L12080
	andi	t0,a4,384
	beq	t0,zero,.L12003
	bne	a0,ra,.L12004
	li	a4,71
	sb	a4,4(t1)
.L12002:
	lw	t1,20(s5)
	addiw	a5,a5,1
.L11999:
	addiw	a7,a7,1
	sext.w	a4,t1
	addi	a6,a6,64
	bgt	a4,a7,.L12010
.L11998:
	beq	s1,zero,.L12015
	addiw	a5,s1,-1
	slli	a5,a5,32
	addi	a4,s0,40
	srli	a5,a5,27
	addi	s0,s0,8
	add	a5,a5,a4
.L12014:
	ld	a4,0(s0)
	addi	a3,a3,8
	addi	s0,s0,32
	lh	a4,48(a4)
	sw	a4,-8(a3)
	lbu	a4,-8(s0)
	sb	a4,-4(a3)
	bne	a5,s0,.L12014
.L12015:
	li	a5,1024
	sw	a5,40(s9)
	sh	zero,18(s9)
	sh	zero,44(s9)
	sb	zero,28(s9)
	lw	s2,0(s3)
	lhu	a5,48(s9)
	blt	a5,s2,.L12081
.L12012:
	addi	s11,sp,60
	mv	a6,s11
	mv	a5,s8
	mv	a4,s3
	li	a3,0
	li	a2,-1
	mv	a1,s10
	mv	a0,s6
	call	whereLoopAddVirtualOne
	mv	s0,a0
	beq	a0,zero,.L12082
.L12016:
	lw	a5,56(s3)
	bne	a5,zero,.L12083
.L12031:
	ld	a0,0(s7)
	mv	a1,s3
	call	sqlite3DbFreeNN
.L12072:
	ld	ra,168(sp)
	mv	a0,s0
	ld	s0,160(sp)
	ld	s1,152(sp)
	ld	s2,144(sp)
	ld	s3,136(sp)
	ld	s4,128(sp)
	ld	s5,120(sp)
	ld	s6,112(sp)
	ld	s7,104(sp)
	ld	s8,96(sp)
	ld	s9,88(sp)
	ld	s10,80(sp)
	ld	s11,72(sp)
	addi	sp,sp,176
	jr	ra
.L12081:
	ld	a0,0(s7)
	mv	a2,s2
	mv	a1,s9
	call	whereLoopResize.part.0
	beq	a0,zero,.L12012
	ld	a0,0(s7)
	mv	a1,s3
	li	s0,7
	call	sqlite3DbFreeNN
	j	.L12072
.L12078:
	andi	a0,a0,384
	beq	a0,zero,.L12000
	j	.L11999
.L12082:
	ld	t4,0(s9)
	lw	a5,60(sp)
	not	t1,s10
	and	t4,t1,t4
	sd	a5,32(sp)
	bne	t4,zero,.L12017
	beq	a5,zero,.L12016
.L12018:
	mv	a5,s8
	mv	a6,s11
	mv	a4,s3
	li	a3,1
	li	a2,-1
	mv	a1,s10
	mv	a0,s6
	sd	t4,16(sp)
	sd	t1,8(sp)
	call	whereLoopAddVirtualOne
	ld	t1,8(sp)
	ld	s4,0(s9)
	ld	t4,16(sp)
	and	a5,t1,s4
	sd	a5,24(sp)
	seqz	a5,a5
	sd	a5,32(sp)
	beq	a0,zero,.L12019
	sd	a5,40(sp)
.L12020:
	mv	s0,a0
.L12030:
	ld	a5,40(sp)
	or	a5,s0,a5
	sext.w	a5,a5
	bne	a5,zero,.L12016
	mv	a5,s8
	mv	a6,s11
	mv	a4,s3
	li	a3,1
	mv	a2,s10
	mv	a1,s10
	mv	a0,s6
	call	whereLoopAddVirtualOne
	lw	a5,56(s3)
	mv	s0,a0
	beq	a5,zero,.L12031
.L12083:
	ld	a0,48(s3)
	call	sqlite3_free@plt
	j	.L12031
.L12003:
	sb	t5,4(t1)
	andi	a4,a4,60
	beq	a4,zero,.L12002
	ld	a4,0(a6)
	ld	t5,24(a4)
	lbu	a4,0(t5)
	bne	a4,s11,.L12005
	lbu	a4,54(t5)
.L12005:
	li	t0,169
	beq	a4,t0,.L12084
	li	t0,131
	bne	a4,t0,.L12002
	ld	a4,32(t5)
	ld	a4,0(a4)
	lw	a4,0(a4)
.L12007:
	ble	a4,t4,.L12002
	li	a4,15
	ble	a7,a4,.L12085
.L12008:
	li	a4,16
	beq	a0,a4,.L12086
	li	a4,4
	bne	a0,a4,.L12002
	li	a4,32
	sb	a4,4(t1)
	j	.L12002
.L12004:
	sb	t2,4(t1)
	j	.L12002
.L12080:
	lbu	a4,23(a6)
	sb	a4,4(t1)
	j	.L12002
.L12079:
	li	a4,2
	sb	a4,4(t1)
	j	.L12002
.L11993:
	bne	s1,zero,.L12038
.L11995:
	slli	s11,s1,3
	add	a1,a1,s11
	j	.L11992
.L12017:
	ld	a5,32(sp)
	sd	zero,24(sp)
	bne	a5,zero,.L12018
.L12019:
	addiw	a5,s2,-1
	slli	a5,a5,32
	srli	a5,a5,32
	slli	s1,a5,1
	add	a5,s1,a5
	slli	s1,a5,2
	ld	a5,32(sp)
	li	s4,0
	sd	a5,40(sp)
.L12025:
	mv	a2,s4
	ble	s2,zero,.L12024
.L12029:
	ld	a4,8(s3)
	ld	a1,32(s5)
	li	s4,-1
	addi	a3,a4,20
	add	a3,a3,s1
	addi	a4,a4,8
.L12023:
	lw	a5,0(a4)
	addi	a4,a4,12
	slli	a5,a5,6
	add	a5,a1,a5
	ld	a5,48(a5)
	and	a5,t1,a5
	bleu	a5,a2,.L12021
	bleu	s4,a5,.L12021
	mv	s4,a5
.L12021:
	bne	a3,a4,.L12023
	li	a5,-1
	beq	s4,a5,.L12024
	beq	s4,t4,.L12025
	ld	a5,24(sp)
	beq	s4,a5,.L12025
	mv	a5,s8
	mv	a6,s11
	mv	a4,s3
	li	a3,0
	or	a2,s4,s10
	mv	a1,s10
	mv	a0,s6
	sd	t4,16(sp)
	sd	t1,8(sp)
	call	whereLoopAddVirtualOne
	ld	a5,0(s9)
	ld	t1,8(sp)
	ld	t4,16(sp)
	beq	a5,s10,.L12087
.L12026:
	bne	a0,zero,.L12020
.L12088:
	mv	a2,s4
	bgt	s2,zero,.L12029
.L12024:
	ld	a5,32(sp)
	bne	a5,zero,.L12030
	mv	a5,s8
	mv	a6,s11
	mv	a4,s3
	li	a3,0
	mv	a2,s10
	mv	a1,s10
	mv	a0,s6
	call	whereLoopAddVirtualOne
	lw	a5,60(sp)
	mv	s0,a0
	beq	a5,zero,.L12016
	j	.L12030
.L12087:
	lw	a5,60(sp)
	li	a4,1
	sd	a4,32(sp)
	bne	a5,zero,.L12026
	li	a5,1
	sd	a5,40(sp)
	beq	a0,zero,.L12088
	j	.L12020
.L12034:
	li	a6,0
	li	a1,112
	li	s8,0
	j	.L11989
.L12084:
	ld	a4,32(t5)
	lw	a4,0(a4)
	j	.L12007
.L12085:
	li	a4,1
	sllw	a4,a4,a7
	or	s8,s8,a4
	slli	s8,s8,48
	srli	s8,s8,48
	j	.L12008
.L12077:
	lla	a1,.LC72
	mv	a0,s7
	call	sqlite3ErrorMsg
	li	s0,7
	j	.L12072
.L12086:
	li	a4,8
	sb	a4,4(t1)
	j	.L12002
	.size	whereLoopAddVirtual, .-whereLoopAddVirtual
	.section	.rodata.str1.8
	.align	3
.LC103:
	.string	"too many terms in compound SELECT"
	.section	.text.parserDoubleLinkSelect.part.0,"ax",@progbits
	.align	1
	.type	parserDoubleLinkSelect.part.0, @function
parserDoubleLinkSelect.part.0:
	beq	a1,zero,.L12093
	mv	a5,a1
	li	a3,0
	li	a2,0
.L12091:
	lw	a4,12(a5)
	sd	a2,88(a5)
	mv	a2,a5
	ori	a4,a4,256
	sw	a4,12(a5)
	ld	a5,80(a5)
	addiw	a3,a3,1
	bne	a5,zero,.L12091
.L12090:
	lw	a5,12(a1)
	andi	a5,a5,1024
	bne	a5,zero,.L12089
	ld	a5,0(a0)
	lw	a5,140(a5)
	ble	a5,zero,.L12089
	blt	a5,a3,.L12095
.L12089:
	ret
.L12095:
	lla	a1,.LC103
	tail	sqlite3ErrorMsg
.L12093:
	li	a3,0
	j	.L12090
	.size	parserDoubleLinkSelect.part.0, .-parserDoubleLinkSelect.part.0
	.section	.rodata.str1.8
	.align	3
.LC104:
	.string	" "
	.align	3
.LC105:
	.string	"unknown or unsupported join type: %T %T%s%T"
	.align	3
.LC106:
	.string	"RIGHT and FULL OUTER JOINs are not currently supported"
	.section	.text.sqlite3JoinType,"ax",@progbits
	.align	1
	.type	sqlite3JoinType, @function
sqlite3JoinType:
	addi	sp,sp,-160
	addi	a5,sp,48
	sd	s2,128(sp)
	sd	s3,120(sp)
	sd	s4,112(sp)
	sd	s5,104(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	sd	s8,80(sp)
	sd	s9,72(sp)
	sd	s10,64(sp)
	sd	s11,56(sp)
	sd	ra,152(sp)
	sd	s0,144(sp)
	sd	s1,136(sp)
	mv	s5,a1
	mv	s6,a2
	mv	s4,a3
	mv	s8,a0
	sd	a2,32(sp)
	sd	a3,40(sp)
	addi	s11,sp,24
	sd	a5,8(sp)
	mv	s2,a1
	li	s10,0
	li	s3,7
	lla	s9,.LANCHOR4
	lla	s7,.LANCHOR4-440
.L12097:
	beq	s2,zero,.L12100
	lla	s1,.LANCHOR4-400
	li	a5,7
	li	s0,0
	j	.L12102
.L12098:
	addiw	s0,s0,1
	addi	s1,s1,3
	beq	s0,s3,.L12101
	lbu	a5,1(s1)
.L12102:
	lw	a2,8(s2)
	bne	a2,a5,.L12098
	lbu	a1,0(s1)
	ld	a0,0(s2)
	add	a1,s7,a1
	call	sqlite3_strnicmp@plt
	bne	a0,zero,.L12098
	slli	a5,s0,1
	add	s0,a5,s0
	add	s0,s9,s0
	lbu	a5,-398(s0)
	addi	s11,s11,8
	or	s10,s10,a5
	ld	a5,8(sp)
	beq	a5,s11,.L12100
	ld	s2,0(s11)
	j	.L12097
.L12101:
	ori	s10,s10,64
.L12100:
	andi	a5,s10,33
	li	a4,33
	beq	a5,a4,.L12103
	andi	a5,s10,64
	beq	a5,zero,.L12104
.L12103:
	lla	a4,.LC104
	beq	s4,zero,.L12116
.L12105:
	mv	a5,s4
	mv	a3,s6
	mv	a2,s5
	lla	a1,.LC105
	mv	a0,s8
	call	sqlite3ErrorMsg
	li	s10,1
.L12108:
	ld	ra,152(sp)
	ld	s0,144(sp)
	ld	s1,136(sp)
	ld	s2,128(sp)
	ld	s3,120(sp)
	ld	s4,112(sp)
	ld	s5,104(sp)
	ld	s6,96(sp)
	ld	s7,88(sp)
	ld	s8,80(sp)
	ld	s9,72(sp)
	ld	s11,56(sp)
	mv	a0,s10
	ld	s10,64(sp)
	addi	sp,sp,160
	jr	ra
.L12104:
	andi	a5,s10,32
	beq	a5,zero,.L12108
	andi	a5,s10,24
	li	a4,8
	beq	a5,a4,.L12108
	lla	a1,.LC106
	mv	a0,s8
	call	sqlite3ErrorMsg
	li	s10,1
	j	.L12108
.L12116:
	lla	a4,.LC104+1
	j	.L12105
	.size	sqlite3JoinType, .-sqlite3JoinType
	.section	.rodata.str1.8
	.align	3
.LC107:
	.string	"table %s may not be modified"
	.align	3
.LC108:
	.string	"cannot modify %s because it is a view"
	.section	.text.sqlite3IsReadOnly,"ax",@progbits
	.align	1
	.type	sqlite3IsReadOnly, @function
sqlite3IsReadOnly:
	addi	sp,sp,-16
	sd	ra,8(sp)
	lw	a5,84(a1)
	mv	a4,a0
	bne	a5,zero,.L12147
	lw	a5,64(a1)
	andi	a3,a5,1025
	beq	a3,zero,.L12123
	ld	a0,0(a0)
	andi	a5,a5,1
	ld	a3,48(a0)
	bne	a5,zero,.L12148
	slli	a5,a3,35
	bge	a5,zero,.L12123
	ld	a5,464(a0)
	beq	a5,zero,.L12149
.L12123:
	li	a0,0
	bne	a2,zero,.L12138
	ld	a5,24(a1)
	bne	a5,zero,.L12150
.L12138:
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
.L12147:
	ld	a5,96(a1)
	ld	a0,0(a0)
	bne	a5,zero,.L12119
	j	.L12120
.L12121:
	ld	a5,40(a5)
	beq	a5,zero,.L12120
.L12119:
	ld	a3,0(a5)
	bne	a0,a3,.L12121
	ld	a5,8(a5)
	ld	a5,0(a5)
	ld	a5,104(a5)
	bne	a5,zero,.L12123
.L12122:
	ld	a2,0(a1)
	mv	a0,a4
	lla	a1,.LC107
	call	sqlite3ErrorMsg
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
.L12150:
	ld	a2,0(a1)
	mv	a0,a4
	lla	a1,.LC108
	call	sqlite3ErrorMsg
	ld	ra,8(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
.L12148:
	li	a5,268435456
	addi	a5,a5,1
	and	a3,a3,a5
	li	a5,1
	beq	a3,a5,.L12123
	lbu	a5,30(a4)
	beq	a5,zero,.L12122
	j	.L12123
.L12149:
	lw	a5,196(a0)
	bne	a5,zero,.L12123
	j	.L12122
.L12120:
	ld	a5,8(zero)
	ebreak
	.size	sqlite3IsReadOnly, .-sqlite3IsReadOnly
	.section	.rodata.str1.8
	.align	3
.LC109:
	.string	"foreign key mismatch - \"%w\" referencing \"%w\""
	.section	.text.sqlite3FkLocateIndex,"ax",@progbits
	.align	1
	.type	sqlite3FkLocateIndex, @function
sqlite3FkLocateIndex:
	addi	sp,sp,-64
	sd	s1,40(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s6,0(sp)
	lw	s0,40(a2)
	li	a5,1
	ld	s6,72(a2)
	mv	s1,a2
	mv	s4,a0
	mv	s3,a1
	mv	s5,a3
	beq	s0,a5,.L12224
	mv	s2,a4
	beq	a4,zero,.L12153
	ld	a0,0(a0)
	slli	a1,s0,2
	call	sqlite3DbMallocRawNN
	beq	a0,zero,.L12221
	sd	a0,0(s2)
	mv	s2,a0
.L12153:
	ld	t1,16(s3)
	beq	t1,zero,.L12159
	li	t5,2
	lla	a1,.LANCHOR2
	j	.L12161
.L12162:
	ld	t1,40(t1)
	beq	t1,zero,.L12159
.L12161:
	lhu	a5,94(t1)
	bne	a5,s0,.L12162
	lbu	a5,98(t1)
	beq	a5,zero,.L12162
	ld	a5,72(t1)
	bne	a5,zero,.L12162
	bne	s6,zero,.L12225
	lbu	a5,99(t1)
	andi	a5,a5,3
	bne	a5,t5,.L12162
	beq	s2,zero,.L12166
	beq	s0,zero,.L12166
	addiw	a5,s0,-1
	slli	a5,a5,32
	addi	a4,s1,80
	srli	a5,a5,28
	addi	s1,s1,64
	add	a5,a5,a4
.L12167:
	lw	a4,0(s1)
	addi	s1,s1,16
	addi	s2,s2,4
	sw	a4,-4(s2)
	bne	s1,a5,.L12167
.L12166:
	sd	t1,0(s5)
.L12220:
	li	a0,0
.L12192:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L12159:
	lbu	a5,202(s4)
	beq	a5,zero,.L12226
.L12182:
	beq	s2,zero,.L12221
	ld	a0,0(s4)
	mv	a1,s2
	call	sqlite3DbFreeNN
.L12221:
	li	a0,1
	j	.L12192
.L12225:
	li	t3,0
	li	t4,0
	beq	s0,zero,.L12227
	ld	a5,8(t1)
	add	a5,a5,t3
	lh	a5,0(a5)
	blt	a5,zero,.L12165
.L12229:
	ld	a6,8(s3)
	slli	a5,a5,5
	add	a6,a6,a5
	ld	a4,16(a6)
	beq	a4,zero,.L12191
	lbu	a3,0(a4)
.L12168:
	ld	a5,64(t1)
	slli	a2,t3,2
	add	a5,a5,a2
	ld	a2,0(a5)
	j	.L12172
.L12169:
	lbu	a3,320(a0)
	lbu	a5,320(a5)
	bne	a3,a5,.L12165
.L12171:
	lbu	a3,0(a4)
	addi	a2,a2,1
.L12172:
	lbu	a7,0(a2)
	sext.w	a5,a3
	addi	a4,a4,1
	add	a0,a1,a7
	add	a5,a1,a5
	bne	a7,a3,.L12169
	bne	a7,zero,.L12171
	ld	t0,0(a6)
	addi	t6,s1,72
.L12185:
	ld	a4,0(t6)
	mv	a2,t0
	lbu	a3,0(a2)
	lbu	a5,0(a4)
	addi	a4,a4,1
	add	a0,a1,a3
	add	a6,a1,a5
	beq	a5,a3,.L12228
.L12173:
	lbu	a3,320(a6)
	lbu	a5,320(a0)
	bne	a3,a5,.L12176
.L12175:
	lbu	a5,0(a4)
	lbu	a3,1(a2)
	addi	a2,a2,1
	addi	a4,a4,1
	add	a6,a1,a5
	add	a0,a1,a3
	bne	a5,a3,.L12173
.L12228:
	bne	a5,zero,.L12175
	beq	s2,zero,.L12184
	addi	a5,a7,4
	slli	a5,a5,4
	add	a5,s1,a5
	lw	a4,0(a5)
	slli	a5,t3,1
	add	a5,s2,a5
	sw	a4,0(a5)
.L12184:
	beq	a7,s0,.L12165
	addiw	t4,t4,1
	addi	t3,t3,2
	beq	s0,t4,.L12166
	ld	a5,8(t1)
	add	a5,a5,t3
	lh	a5,0(a5)
	bge	a5,zero,.L12229
.L12165:
	bne	s0,t4,.L12162
.L12230:
	sd	t1,0(s5)
	j	.L12220
.L12176:
	addiw	a7,a7,1
	addi	t6,t6,16
	bne	s0,a7,.L12185
	bne	s0,t4,.L12162
	j	.L12230
.L12191:
	li	a3,66
	lla	a4,.LANCHOR4-520
	j	.L12168
.L12224:
	lh	a5,68(a1)
	blt	a5,zero,.L12189
	beq	s6,zero,.L12220
	ld	a3,8(a1)
	slli	a5,a5,5
	mv	a4,s6
	add	a5,a3,a5
	ld	a5,0(a5)
	lbu	a3,0(a4)
	lla	a2,.LANCHOR2
	lbu	a0,0(a5)
	add	a1,a2,a3
	addi	a5,a5,1
	add	a6,a2,a0
	beq	a0,a3,.L12231
.L12155:
	lbu	a0,320(a6)
	lbu	a3,320(a1)
	bne	a0,a3,.L12189
	addi	a4,a4,1
.L12232:
	lbu	a0,0(a5)
	lbu	a3,0(a4)
	addi	a5,a5,1
	add	a6,a2,a0
	add	a1,a2,a3
	bne	a0,a3,.L12155
.L12231:
	beq	a0,zero,.L12192
	addi	a4,a4,1
	j	.L12232
.L12189:
	li	s2,0
	j	.L12153
.L12226:
	ld	a5,0(s1)
	ld	a3,16(s1)
	lla	a1,.LC109
	ld	a2,0(a5)
	mv	a0,s4
	call	sqlite3ErrorMsg
	j	.L12182
.L12227:
	mv	t4,s0
	bne	s0,t4,.L12162
	j	.L12230
	.size	sqlite3FkLocateIndex, .-sqlite3FkLocateIndex
	.section	.text.sqlite3FkOldmask.part.0,"ax",@progbits
	.align	1
	.type	sqlite3FkOldmask.part.0, @function
sqlite3FkOldmask.part.0:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	ra,72(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	ld	a6,32(a1)
	mv	s1,a1
	mv	s2,a0
	li	s0,0
	li	a0,31
	li	a1,1
	beq	a6,zero,.L12235
.L12234:
	lw	a5,40(a6)
	ble	a5,zero,.L12239
	addiw	a2,a5,-1
	slli	a2,a2,32
	srli	a4,a2,28
	addi	a2,a6,80
	addi	a5,a6,64
	add	a2,a4,a2
.L12237:
	lw	a3,0(a5)
	sllw	a4,a1,a3
	or	a4,s0,a4
	sext.w	s0,a4
	ble	a3,a0,.L12236
	li	s0,-1
.L12236:
	addi	a5,a5,16
	bne	a5,a2,.L12237
.L12239:
	ld	a6,8(a6)
	bne	a6,zero,.L12234
.L12235:
	ld	a0,112(s1)
	ld	a1,0(s1)
	li	a2,0
	addi	a0,a0,80
	call	findElementWithHash
	ld	s3,16(a0)
	beq	s3,zero,.L12240
	addi	s6,sp,8
	li	s5,31
	li	s4,1
	j	.L12244
.L12241:
	ld	s3,24(s3)
	beq	s3,zero,.L12240
.L12244:
	li	a4,0
	mv	a3,s6
	mv	a2,s3
	mv	a1,s1
	mv	a0,s2
	sd	zero,8(sp)
	call	sqlite3FkLocateIndex
	ld	a4,8(sp)
	beq	a4,zero,.L12241
	lhu	a5,94(a4)
	beq	a5,zero,.L12241
	ld	a4,8(a4)
	addiw	a0,a5,-1
	slli	a0,a0,32
	srli	a0,a0,31
	addi	a5,a4,2
	add	a0,a0,a5
	j	.L12243
.L12267:
	addi	a5,a5,2
.L12243:
	lh	a1,0(a4)
	sllw	a4,s4,a1
	or	a4,s0,a4
	sext.w	s0,a4
	ble	a1,s5,.L12242
	li	s0,-1
.L12242:
	mv	a4,a5
	bne	a5,a0,.L12267
	ld	s3,24(s3)
	bne	s3,zero,.L12244
.L12240:
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
	.size	sqlite3FkOldmask.part.0, .-sqlite3FkOldmask.part.0
	.section	.rodata.str1.8
	.align	3
.LC110:
	.string	"DISTINCT is not supported for window functions"
	.section	.text.sqlite3WindowAttach,"ax",@progbits
	.align	1
	.type	sqlite3WindowAttach, @function
sqlite3WindowAttach:
	beq	a1,zero,.L12269
	beq	a2,zero,.L12268
	lw	a5,4(a1)
	li	a4,16777216
	sd	a2,64(a1)
	or	a5,a5,a4
	sw	a5,4(a1)
	sd	a1,104(a2)
	lw	a5,4(a1)
	andi	a5,a5,2
	bne	a5,zero,.L12276
.L12268:
	ret
.L12276:
	lla	a1,.LC110
	tail	sqlite3ErrorMsg
.L12269:
	ld	a0,0(a0)
	mv	a1,a2
	tail	sqlite3WindowDelete
	.size	sqlite3WindowAttach, .-sqlite3WindowAttach
	.section	.rodata.str1.8
	.align	3
.LC111:
	.string	"too many arguments on function %T"
	.section	.text.sqlite3ExprFunction,"ax",@progbits
	.align	1
	.type	sqlite3ExprFunction, @function
sqlite3ExprFunction:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s5,8(sp)
	sd	ra,56(sp)
	sd	s4,16(sp)
	ld	s4,0(a0)
	mv	s1,a0
	mv	s2,a1
	mv	s5,a3
	li	a1,161
	li	a3,1
	mv	a0,s4
	mv	s3,a2
	call	sqlite3ExprAlloc
	mv	s0,a0
	beq	a0,zero,.L12289
	beq	s2,zero,.L12280
	ld	a5,0(s1)
	lw	a4,0(s2)
	lw	a5,148(a5)
	bgt	a4,a5,.L12290
.L12280:
	lw	a5,4(s0)
	sd	s2,32(s0)
	ori	a5,a5,4
	sw	a5,4(s0)
	lw	a5,48(s1)
	beq	a5,zero,.L12291
.L12281:
	li	a5,1
	bne	s5,a5,.L12277
	lw	a5,4(s0)
	ori	a5,a5,2
	sw	a5,4(s0)
.L12277:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L12291:
	mv	a1,s0
	mv	a0,s1
	call	sqlite3ExprSetHeightAndFlags.part.0
	j	.L12281
.L12290:
	mv	a2,s3
	lla	a1,.LC111
	mv	a0,s1
	call	sqlite3ErrorMsg
	lw	a5,4(s0)
	sd	s2,32(s0)
	ori	a5,a5,4
	sw	a5,4(s0)
	lw	a5,48(s1)
	bne	a5,zero,.L12281
	j	.L12291
.L12289:
	beq	s2,zero,.L12277
	mv	a1,s2
	mv	a0,s4
	call	exprListDeleteNN
	j	.L12277
	.size	sqlite3ExprFunction, .-sqlite3ExprFunction
	.section	.rodata.str1.8
	.align	3
.LC112:
	.string	"table %s may not be altered"
	.section	.text.isAlterableTable.isra.0,"ax",@progbits
	.align	1
	.type	isAlterableTable.isra.0, @function
isAlterableTable.isra.0:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	mv	s2,a0
	ld	a0,0(a1)
	mv	s0,a1
	mv	s1,a2
	lla	a1,.LC85
	li	a2,7
	call	sqlite3_strnicmp@plt
	beq	a0,zero,.L12293
	lw	a5,0(s1)
	li	a0,0
	andi	a5,a5,1024
	beq	a5,zero,.L12294
	ld	a5,0(s2)
	ld	a4,48(a5)
	slli	a3,a4,35
	bge	a3,zero,.L12294
	lw	a5,196(a5)
	beq	a5,zero,.L12293
.L12294:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L12293:
	ld	a2,0(s0)
	mv	a0,s2
	lla	a1,.LC112
	call	sqlite3ErrorMsg
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	li	a0,1
	addi	sp,sp,32
	jr	ra
	.size	isAlterableTable.isra.0, .-isAlterableTable.isra.0
	.section	.rodata.str1.8
	.align	3
.LC113:
	.string	"PARTITION clause"
	.align	3
.LC114:
	.string	"ORDER BY clause"
	.align	3
.LC115:
	.string	"frame specification"
	.align	3
.LC116:
	.string	"cannot override %s of window: %s"
	.section	.text.sqlite3WindowChain,"ax",@progbits
	.align	1
	.type	sqlite3WindowChain, @function
sqlite3WindowChain:
	ld	a5,8(a1)
	beq	a5,zero,.L12328
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s3,8(sp)
	mv	s0,a1
	mv	a1,a2
	mv	a2,a5
	ld	s3,0(a0)
	mv	s1,a0
	call	windowFind
	mv	s2,a0
	beq	a0,zero,.L12304
	ld	a5,16(s0)
	lla	a2,.LC113
	beq	a5,zero,.L12331
.L12308:
	ld	a3,8(s0)
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	mv	a0,s1
	ld	s1,24(sp)
	lla	a1,.LC116
	addi	sp,sp,48
	tail	sqlite3ErrorMsg
.L12310:
	ld	a1,16(s2)
	li	a2,0
	mv	a0,s3
	call	sqlite3ExprListDup
	sd	a0,16(s0)
	ld	a1,24(s2)
	beq	a1,zero,.L12311
	li	a2,0
	mv	a0,s3
	call	sqlite3ExprListDup
	sd	a0,24(s0)
.L12311:
	ld	a1,8(s0)
	beq	a1,zero,.L12312
	mv	a0,s3
	call	sqlite3DbFreeNN
.L12312:
	sd	zero,8(s0)
.L12304:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L12328:
	ret
.L12331:
	ld	a5,24(a0)
	beq	a5,zero,.L12309
	ld	a5,24(s0)
	lla	a2,.LC114
	bne	a5,zero,.L12308
.L12309:
	lbu	a5,35(s2)
	bne	a5,zero,.L12310
	lla	a2,.LC115
	j	.L12308
	.size	sqlite3WindowChain, .-sqlite3WindowChain
	.section	.rodata.str1.8
	.align	3
.LC117:
	.string	"unsupported frame specification"
	.section	.text.sqlite3WindowAlloc,"ax",@progbits
	.align	1
	.type	sqlite3WindowAlloc, @function
sqlite3WindowAlloc:
	addi	sp,sp,-80
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s3,40(sp)
	sd	s8,0(sp)
	mv	s1,a0
	mv	s2,a2
	mv	s6,a3
	mv	s4,a4
	mv	s7,a5
	mv	s5,a6
	bne	a1,zero,.L12353
	li	a5,82
	li	s8,1
	li	s3,86
	beq	s2,a5,.L12355
.L12334:
	li	a4,83
	bne	s2,a4,.L12336
	li	a4,85
	beq	s4,a4,.L12335
	beq	s4,a5,.L12335
.L12336:
	ld	a0,0(s1)
	li	a1,136
	call	sqlite3DbMallocZero
	mv	s0,a0
	beq	a0,zero,.L12337
	sb	s3,32(a0)
	sb	s2,33(a0)
	sb	s4,34(a0)
	beq	s5,zero,.L12356
.L12338:
	mv	a1,s7
	sb	s5,36(s0)
	sb	s8,35(s0)
	mv	a0,s1
	call	sqlite3WindowOffsetExpr
	sd	a0,48(s0)
	mv	a1,s6
	mv	a0,s1
	call	sqlite3WindowOffsetExpr
	sd	a0,40(s0)
.L12332:
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
.L12353:
	li	a5,82
	mv	s3,a1
	li	s8,0
	bne	s2,a5,.L12334
.L12355:
	li	a5,85
	bne	s4,a5,.L12336
.L12335:
	lla	a1,.LC117
	mv	a0,s1
	call	sqlite3ErrorMsg
.L12337:
	ld	a0,0(s1)
	beq	s7,zero,.L12340
	mv	a1,s7
	call	sqlite3ExprDeleteNN
	ld	a0,0(s1)
.L12340:
	li	s0,0
	beq	s6,zero,.L12332
	mv	a1,s6
	call	sqlite3ExprDeleteNN
	j	.L12332
.L12356:
	ld	a5,0(s1)
	lhu	a5,92(a5)
	andi	a5,a5,2
	beq	a5,zero,.L12338
	li	s5,66
	j	.L12338
	.size	sqlite3WindowAlloc, .-sqlite3WindowAlloc
	.section	.rodata.str1.8
	.align	3
.LC118:
	.string	"-"
	.align	3
.LC119:
	.string	"oversized integer: %s%s"
	.section	.text.codeInteger,"ax",@progbits
	.align	1
	.type	codeInteger, @function
codeInteger:
	addi	sp,sp,-80
	sd	s1,56(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	lw	a5,4(a1)
	ld	s2,16(a0)
	mv	s1,a2
	andi	a5,a5,1024
	beq	a5,zero,.L12358
	lw	a2,8(a1)
	bne	s1,zero,.L12381
.L12359:
	mv	a0,s2
	li	a4,0
	li	a1,70
	call	sqlite3VdbeAddOp3
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	addi	sp,sp,80
	jr	ra
.L12381:
	negw	a2,a2
	j	.L12359
.L12358:
	ld	s3,8(a1)
	addi	s4,sp,24
	mv	s0,a0
	mv	a1,s4
	mv	a0,s3
	sd	a3,8(sp)
	call	sqlite3DecOrHexToI64
	li	a5,3
	ld	a3,8(sp)
	beq	a0,a5,.L12382
	li	a5,2
	beq	a0,a5,.L12364
	bne	s1,zero,.L12383
.L12366:
	mv	a2,s4
	mv	a0,s2
	mv	a1,a3
	call	sqlite3VdbeAddOp4Dup8.constprop.0
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	addi	sp,sp,80
	jr	ra
.L12364:
	lla	a2,.LC12
	beq	s1,zero,.L12362
.L12372:
	lla	a2,.LC118
.L12362:
	mv	a3,s3
	mv	a0,s0
	lla	a1,.LC119
	call	sqlite3ErrorMsg
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	addi	sp,sp,80
	jr	ra
.L12382:
	bne	s1,zero,.L12384
	lla	a2,.LC12
	j	.L12362
.L12384:
	ld	a4,24(sp)
	li	a5,-1
	slli	a5,a5,63
	lla	a2,.LC118
	beq	a4,a5,.L12362
	sd	a5,24(sp)
	j	.L12366
.L12383:
	ld	a5,24(sp)
	li	a4,-1
	slli	a4,a4,63
	beq	a5,a4,.L12372
	neg	a5,a5
	sd	a5,24(sp)
	j	.L12366
	.size	codeInteger, .-codeInteger
	.section	.rodata.str1.8
	.align	3
.LC120:
	.string	"DISTINCT aggregates must have exactly one argument"
	.section	.text.resetAccumulator,"ax",@progbits
	.align	1
	.type	resetAccumulator, @function
resetAccumulator:
	lw	a5,56(a1)
	lw	a4,40(a1)
	addw	a5,a5,a4
	bne	a5,zero,.L12402
	ret
.L12402:
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	ld	s6,16(a0)
	lw	a4,20(a1)
	lw	a3,16(a1)
	mv	s2,a1
	mv	s3,a0
	li	a2,0
	li	a1,73
	mv	a0,s6
	call	sqlite3VdbeAddOp3
	lw	a4,56(s2)
	ld	s0,48(s2)
	sext.w	a5,a4
	ble	a5,zero,.L12385
	li	s1,0
	lla	s7,.LC120
	li	s4,-1
	li	s5,1
.L12390:
	lw	a5,20(s0)
	mv	a1,s7
	mv	a0,s3
	blt	a5,zero,.L12387
	ld	a5,0(s0)
	ld	a5,32(a5)
	beq	a5,zero,.L12388
	lw	a4,0(a5)
	beq	a4,s5,.L12389
.L12388:
	call	sqlite3ErrorMsg
	sw	s4,20(s0)
	lw	a4,56(s2)
.L12387:
	addiw	s1,s1,1
	sext.w	a5,a4
	addi	s0,s0,24
	bgt	a5,s1,.L12390
.L12385:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
.L12389:
	mv	a1,a5
	li	a3,0
	li	a2,0
	call	sqlite3KeyInfoFromExprList
	lw	a2,20(s0)
	li	a4,0
	mv	s8,a0
	li	a3,0
	li	a1,113
	mv	a0,s6
	call	sqlite3VdbeAddOp3
	mv	a1,a0
	li	a3,-9
	mv	a2,s8
	mv	a0,s6
	call	sqlite3VdbeChangeP4
	lw	a4,56(s2)
	j	.L12387
	.size	resetAccumulator, .-resetAccumulator
	.section	.rodata.str1.8
	.align	3
.LC121:
	.string	"too many columns on %s"
	.section	.text.addModuleArgument,"ax",@progbits
	.align	1
	.type	addModuleArgument, @function
addModuleArgument:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s3,8(sp)
	ld	s3,0(a0)
	lw	a5,84(a1)
	mv	s0,a1
	lw	a4,132(s3)
	addiw	s2,a5,2
	addiw	a5,a5,3
	mv	s1,a2
	slli	s2,s2,3
	bge	a5,a4,.L12411
	ld	a1,88(s0)
	mv	a2,s2
	mv	a0,s3
	call	sqlite3DbRealloc
	beq	a0,zero,.L12412
.L12405:
	lw	a5,84(s0)
	addiw	a4,a5,1
	slli	a5,a5,3
	sw	a4,84(s0)
	add	a5,a0,a5
	sd	s1,0(a5)
	sd	zero,8(a5)
	sd	a0,88(s0)
.L12403:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L12411:
	ld	a2,0(a1)
	lla	a1,.LC121
	call	sqlite3ErrorMsg
	ld	a1,88(s0)
	mv	a2,s2
	mv	a0,s3
	call	sqlite3DbRealloc
	bne	a0,zero,.L12405
.L12412:
	beq	s1,zero,.L12403
	ld	s0,32(sp)
	ld	ra,40(sp)
	ld	s2,16(sp)
	mv	a1,s1
	mv	a0,s3
	ld	s1,24(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	tail	sqlite3DbFreeNN
	.size	addModuleArgument, .-addModuleArgument
	.section	.text.addArgumentToVtab,"ax",@progbits
	.align	1
	.type	addArgumentToVtab, @function
addArgumentToVtab:
	ld	a1,344(a0)
	beq	a1,zero,.L12422
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	ra,24(sp)
	sd	s1,8(sp)
	ld	s1,312(a0)
	mv	s0,a0
	beq	s1,zero,.L12413
	lw	a2,352(a0)
	ld	a0,0(a0)
	call	sqlite3DbStrNDup
	mv	a2,a0
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a1,s1
	ld	s1,8(sp)
	addi	sp,sp,32
	tail	addModuleArgument
.L12413:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	addi	sp,sp,32
	jr	ra
.L12422:
	ret
	.size	addArgumentToVtab, .-addArgumentToVtab
	.section	.rodata.str1.8
	.align	3
.LC122:
	.string	"too many FROM clause terms, max: %d"
	.section	.text.sqlite3SrcListEnlarge,"ax",@progbits
	.align	1
	.type	sqlite3SrcListEnlarge, @function
sqlite3SrcListEnlarge:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s4,0(sp)
	lw	a7,0(a1)
	lw	a4,4(a1)
	mv	s3,a2
	addw	a2,a7,a2
	mv	s1,a1
	mv	s2,a3
	sext.w	s0,s3
	mv	t1,a2
	bleu	a2,a4,.L12426
	slli	a7,a7,1
	li	a4,199
	ld	a3,0(a0)
	add	s4,a7,s3
	bgt	a2,a4,.L12443
	li	a5,200
	ble	s4,a5,.L12429
	li	s4,200
.L12429:
	addi	a5,s4,-1
	slli	a2,a5,3
	sub	a2,a2,a5
	slli	a2,a2,4
	mv	a1,s1
	addi	a2,a2,120
	mv	a0,a3
	call	sqlite3DbRealloc
	mv	s1,a0
	beq	a0,zero,.L12428
	lw	a7,0(a0)
	sw	s4,4(a0)
	addw	t1,a7,s3
.L12426:
	addiw	a7,a7,-1
	blt	a7,s2,.L12433
.L12430:
	addw	a1,a7,s0
	slli	a5,a1,3
	slli	a4,a7,3
	sub	a5,a5,a1
	sub	a4,a4,a7
	slli	a5,a5,4
	slli	a4,a4,4
	add	a4,s1,a4
	add	a5,s1,a5
	addi	a6,a4,8
	addi	a5,a5,8
	addi	a4,a4,104
.L12432:
	ld	a0,0(a6)
	ld	a1,8(a6)
	ld	a2,16(a6)
	ld	a3,24(a6)
	sd	a0,0(a5)
	sd	a1,8(a5)
	sd	a2,16(a5)
	sd	a3,24(a5)
	addi	a6,a6,32
	addi	a5,a5,32
	bne	a6,a4,.L12432
	ld	a3,0(a6)
	ld	a4,8(a6)
	addiw	a7,a7,-1
	sd	a3,0(a5)
	sd	a4,8(a5)
	ble	s2,a7,.L12430
.L12433:
	slli	s0,s2,3
	sub	s0,s0,s2
	slli	s0,s0,4
	slli	a2,s3,3
	sub	a2,a2,s3
	addi	a0,s0,8
	sw	t1,0(s1)
	slli	a2,a2,4
	li	a1,0
	add	a0,s1,a0
	call	memset@plt
	addw	a5,s3,s2
	bge	s2,a5,.L12428
	not	a4,s2
	addw	s3,a4,a5
	slli	a4,s3,32
	srli	a4,a4,32
	add	s2,a4,s2
	slli	a4,s2,3
	sub	a4,a4,s2
	slli	a4,a4,4
	addi	a5,s0,72
	addi	a4,a4,184
	add	a5,s1,a5
	add	a4,s1,a4
	li	a3,-1
.L12434:
	sw	a3,0(a5)
	addi	a5,a5,112
	bne	a5,a4,.L12434
.L12428:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	mv	a0,s1
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L12443:
	li	a2,200
	lla	a1,.LC122
	call	sqlite3ErrorMsg
	li	s1,0
	j	.L12428
	.size	sqlite3SrcListEnlarge, .-sqlite3SrcListEnlarge
	.section	.text.sqlite3SrcListAppend,"ax",@progbits
	.align	1
	.type	sqlite3SrcListAppend, @function
sqlite3SrcListAppend:
	addi	sp,sp,-48
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s4,0(sp)
	ld	s4,0(a0)
	mv	s2,a1
	mv	s3,a2
	mv	s1,a3
	beq	a1,zero,.L12460
	lw	a3,0(a1)
	li	a2,1
	call	sqlite3SrcListEnlarge
	mv	s0,a0
	beq	a0,zero,.L12461
	lw	a5,0(a0)
	addiw	s2,a5,-1
.L12447:
	beq	s1,zero,.L12449
	ld	a5,0(s1)
	beq	a5,zero,.L12449
	mv	a1,s1
	mv	a0,s4
	call	sqlite3NameFromToken
	slli	a5,s2,3
	sub	s2,a5,s2
	slli	s2,s2,4
	add	s2,s0,s2
	sd	a0,24(s2)
	mv	a1,s3
	mv	a0,s4
	call	sqlite3NameFromToken
	sd	a0,16(s2)
	j	.L12444
.L12449:
	mv	a1,s3
	mv	a0,s4
	call	sqlite3NameFromToken
	slli	a5,s2,3
	sub	a5,a5,s2
	slli	a5,a5,4
	add	a5,s0,a5
	sd	a0,24(a5)
	sd	zero,16(a5)
.L12444:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	addi	sp,sp,48
	jr	ra
.L12460:
	li	a1,120
	mv	a0,s4
	call	sqlite3DbMallocRawNN
	mv	s0,a0
	beq	a0,zero,.L12444
	li	a5,1
	slli	a5,a5,32
	addi	a5,a5,1
	sd	a5,0(a0)
	li	a2,112
	li	a1,0
	addi	a0,a0,8
	call	memset@plt
	li	a5,-1
	sw	a5,72(s0)
	j	.L12447
.L12461:
	mv	a1,s2
	mv	a0,s4
	call	sqlite3SrcListDelete
	j	.L12444
	.size	sqlite3SrcListAppend, .-sqlite3SrcListAppend
	.section	.text.targetSrcList.isra.0,"ax",@progbits
	.align	1
	.type	targetSrcList.isra.0, @function
targetSrcList.isra.0:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	sd	s2,16(sp)
	mv	s3,a1
	mv	s1,a2
	li	a3,0
	li	a2,0
	li	a1,0
	ld	s2,0(a0)
	call	sqlite3SrcListAppend
	mv	s0,a0
	beq	a0,zero,.L12462
	lw	a5,0(a0)
	ld	a1,0(s1)
	mv	a0,s2
	addiw	s1,a5,-1
	call	sqlite3DbStrDup
	slli	a5,s1,3
	sub	a5,a5,s1
	slli	a5,a5,4
	add	a5,s0,a5
	sd	a0,24(a5)
	ld	a5,0(s3)
	ld	a1,40(a5)
	beq	a1,zero,.L12462
	mv	a0,s2
	call	sqlite3SchemaToIndex.part.0
	bne	a0,zero,.L12472
	li	a4,0
.L12466:
	ld	a3,32(s2)
	lw	a5,0(s0)
	mv	a0,s2
	add	a4,a3,a4
	ld	a1,0(a4)
	addiw	s1,a5,-1
	call	sqlite3DbStrDup
	slli	a5,s1,3
	sub	a5,a5,s1
	slli	a5,a5,4
	add	a5,s0,a5
	sd	a0,16(a5)
.L12462:
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L12472:
	li	a5,1
	slli	a4,a0,5
	bgt	a0,a5,.L12466
	ld	ra,40(sp)
	mv	a0,s0
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
	.size	targetSrcList.isra.0, .-targetSrcList.isra.0
	.section	.text.flattenSubquery,"ax",@progbits
	.align	1
	.type	flattenSubquery, @function
flattenSubquery:
	addi	sp,sp,-208
	sd	ra,200(sp)
	sd	s0,192(sp)
	sd	s1,184(sp)
	sd	s2,176(sp)
	sd	s3,168(sp)
	sd	s4,160(sp)
	sd	s5,152(sp)
	sd	s6,144(sp)
	sd	s7,136(sp)
	sd	s8,128(sp)
	sd	s9,120(sp)
	sd	s10,112(sp)
	sd	s11,104(sp)
	ld	s11,0(a0)
	lhu	a4,92(s11)
	andi	a4,a4,1
	bne	a4,zero,.L12548
	ld	a4,112(a1)
	mv	s9,a0
	mv	s8,a1
	li	a0,0
	beq	a4,zero,.L12611
.L12549:
	ld	ra,200(sp)
	ld	s0,192(sp)
	ld	s1,184(sp)
	ld	s2,176(sp)
	ld	s3,168(sp)
	ld	s4,160(sp)
	ld	s5,152(sp)
	ld	s6,144(sp)
	ld	s7,136(sp)
	ld	s8,128(sp)
	ld	s9,120(sp)
	ld	s10,112(sp)
	ld	s11,104(sp)
	addi	sp,sp,208
	jr	ra
.L12611:
	slli	s1,a2,3
	ld	s0,40(a1)
	sub	a4,s1,a2
	slli	a4,a4,4
	add	a4,s0,a4
	ld	a4,48(a4)
	mv	s7,a2
	ld	a2,112(a4)
	bne	a2,zero,.L12549
	ld	a2,96(a4)
	beq	a2,zero,.L12475
	ld	a1,96(a1)
	bne	a1,zero,.L12549
	ld	a1,24(a2)
	bne	a1,zero,.L12549
	lw	a1,12(s8)
	andi	t3,a1,256
	bne	t3,zero,.L12549
.L12517:
	ld	t3,40(a4)
	lw	a0,0(t3)
	beq	a0,zero,.L12549
	lw	t4,12(a4)
	andi	t5,t4,1
	bne	t5,zero,.L12548
	beq	a2,zero,.L12477
	lw	t5,0(s0)
	li	a2,1
	bgt	t5,a2,.L12548
	bne	a3,zero,.L12548
	ld	s2,72(s8)
	mv	a2,s2
	beq	s2,zero,.L12520
	ld	t5,72(a4)
	bne	t5,zero,.L12548
.L12520:
	ld	t5,48(s8)
	bne	t5,zero,.L12548
	andi	t5,a1,1
	bne	t5,zero,.L12548
.L12480:
	slli	a5,t4,50
	blt	a5,zero,.L12548
	sub	t4,s1,s7
	slli	t4,t4,4
	add	t4,s0,t4
	lbu	t4,68(t4)
	andi	t4,t4,32
	beq	t4,zero,.L12533
	li	t4,1
	bgt	a0,t4,.L12548
	bne	a3,zero,.L12548
	ld	a0,40(t3)
	lw	a0,84(a0)
	bne	a0,zero,.L12548
	li	a5,1
	sd	a5,8(sp)
.L12481:
	li	a0,112
	mul	a0,s7,a0
	ld	s4,80(a4)
	add	a0,s0,a0
	lw	a5,72(a0)
	sd	a5,40(sp)
	beq	s4,zero,.L12482
	ld	t3,72(a4)
	li	a0,0
	bne	t3,zero,.L12549
	andi	a1,a1,1
	or	a3,a1,a3
	bne	a3,zero,.L12549
	lw	t3,0(s0)
	li	a1,1
	mv	a0,a3
	bne	t3,a1,.L12549
	li	a1,128
.L12519:
	lw	a3,12(a4)
	andi	a3,a3,9
	bne	a3,zero,.L12548
	ld	a3,80(a4)
	beq	a3,zero,.L12483
	lbu	a0,8(a4)
	bne	a0,a1,.L12548
	ld	a0,40(a4)
	mv	a4,a3
	lw	a3,0(a0)
	bgt	a3,zero,.L12519
.L12548:
	li	a0,0
	j	.L12549
.L12475:
	lw	a1,12(a1)
	j	.L12517
.L12477:
	ld	s2,72(s8)
	mv	a2,s2
	beq	s2,zero,.L12612
	ld	t5,72(a4)
	beq	t5,zero,.L12480
	li	a0,0
	j	.L12549
.L12612:
	beq	a3,zero,.L12480
	ld	a2,72(a4)
	beq	a2,zero,.L12480
	li	a0,0
	j	.L12549
.L12533:
	sd	zero,8(sp)
	j	.L12481
.L12483:
	ld	a4,40(a4)
	li	a0,0
	lw	a4,0(a4)
	ble	a4,zero,.L12549
	beq	a2,zero,.L12485
	lw	a3,0(a2)
	li	a4,0
	addi	a2,a2,36
	j	.L12486
.L12487:
	lhu	a1,-32(a2)
	addiw	a4,a4,1
	beq	a1,zero,.L12548
.L12486:
	addi	a2,a2,32
	bgt	a3,a4,.L12487
.L12485:
	li	s3,-128
	j	.L12492
.L12488:
	sd	s5,80(a0)
	beq	s5,zero,.L12490
	sd	a0,88(s5)
.L12490:
	sd	s8,88(a0)
	sd	a0,80(s8)
.L12489:
	lbu	a4,97(s11)
	bne	a4,zero,.L12608
	ld	s4,80(s4)
	beq	s4,zero,.L12482
	ld	s2,72(s8)
.L12492:
	ld	s6,96(s8)
	ld	s5,80(s8)
	sd	zero,72(s8)
	sd	zero,40(s8)
	sd	zero,80(s8)
	sd	zero,96(s8)
	li	a2,0
	mv	a1,s8
	mv	a0,s11
	call	sqlite3SelectDup
	sd	s2,72(s8)
	sd	s6,96(s8)
	sd	s0,40(s8)
	sb	s3,8(s8)
	bne	a0,zero,.L12488
	sd	s5,80(s8)
	j	.L12489
.L12482:
	li	s2,112
	mul	s2,s7,s2
	add	s2,s0,s2
	ld	a5,48(s2)
	ld	a1,16(s2)
	sd	a5,24(sp)
	beq	a1,zero,.L12493
	mv	a0,s11
	call	sqlite3DbFreeNN
.L12493:
	li	a4,112
	mul	a4,s7,a4
	add	a4,s0,a4
	ld	a1,24(a4)
	beq	a1,zero,.L12494
	mv	a0,s11
	call	sqlite3DbFreeNN
.L12494:
	li	a4,112
	mul	a4,s7,a4
	add	a4,s0,a4
	ld	a1,32(a4)
	beq	a1,zero,.L12495
	mv	a0,s11
	call	sqlite3DbFreeNN
.L12495:
	li	a4,112
	mul	a4,s7,a4
	sd	zero,16(s2)
	add	a4,s0,a4
	ld	a3,40(a4)
	sd	zero,24(a4)
	sd	zero,32(a4)
	sd	zero,48(a4)
	beq	a3,zero,.L12496
	lw	a4,60(a3)
	li	a2,1
	beq	a4,a2,.L12613
	addiw	a4,a4,-1
	sw	a4,60(a3)
.L12499:
	li	a4,112
	mul	a4,s7,a4
	add	a4,s0,a4
	sd	zero,40(a4)
.L12496:
	sub	s1,s1,s7
	slli	a5,s1,4
	sd	a5,32(sp)
	ld	s5,24(sp)
	add	a5,s0,a5
	sd	a5,48(sp)
	addiw	a5,s7,1
	li	s4,-1
	sd	a5,56(sp)
	addi	s10,sp,64
.L12515:
	ld	s1,40(s5)
	ld	s2,40(s8)
	lw	s3,0(s1)
	beq	s2,zero,.L12500
	ld	a5,48(sp)
	lbu	a5,68(a5)
	sd	a5,16(sp)
.L12501:
	li	a5,1
	bgt	s3,a5,.L12614
	li	a5,1
	bne	s3,a5,.L12505
.L12504:
	addi	s1,s1,8
	li	s0,0
.L12508:
	addw	s6,s0,s7
	slli	s4,s6,3
	sub	a3,s4,s6
	slli	a3,a3,4
	add	a3,s2,a3
	ld	a1,88(a3)
	beq	a1,zero,.L12506
	mv	a0,s11
	call	sqlite3IdListDelete.part.0
.L12506:
	sub	a4,s4,s6
	slli	a4,a4,4
	add	a4,s2,a4
	mv	a3,s1
	addi	a4,a4,8
	addi	t6,s1,96
.L12507:
	ld	t5,0(a3)
	ld	a0,8(a3)
	ld	a1,16(a3)
	ld	a2,24(a3)
	sd	t5,0(a4)
	sd	a0,8(a4)
	sd	a1,16(a4)
	sd	a2,24(a4)
	addi	a3,a3,32
	addi	a4,a4,32
	bne	a3,t6,.L12507
	ld	a2,0(a3)
	ld	a3,8(a3)
	mv	a0,s1
	sd	a2,0(a4)
	sd	a3,8(a4)
	li	a2,112
	li	a1,0
	addiw	s0,s0,1
	lw	s4,64(s1)
	call	memset@plt
	addi	s1,s1,112
	bgt	s3,s0,.L12508
.L12505:
	ld	a5,32(sp)
	add	s2,s2,a5
	ld	a5,16(sp)
	sb	a5,68(s2)
	ld	a2,72(s5)
	bne	a2,zero,.L12615
.L12509:
	ld	a5,8(sp)
	ld	s2,48(s5)
	li	a4,1
	sd	zero,48(s5)
	beq	a5,a4,.L12616
.L12512:
	ld	a2,48(s8)
	mv	a1,s2
	mv	a0,s9
	call	sqlite3ExprAnd
	sd	a0,48(s8)
	lbu	a4,97(s11)
	beq	a4,zero,.L12617
.L12513:
	lw	a4,12(s5)
	lw	a3,12(s8)
	andi	a4,a4,256
	or	a4,a4,a3
	sw	a4,12(s8)
	ld	a4,96(s5)
	beq	a4,zero,.L12514
	sd	a4,96(s8)
	sd	zero,96(s5)
.L12514:
	ld	s8,80(s8)
	ld	s5,80(s5)
	bne	s8,zero,.L12515
.L12502:
	ld	a1,24(sp)
	beq	a1,zero,.L12608
	li	a2,1
	mv	a0,s11
	call	clearSelect
.L12608:
	li	a0,1
	j	.L12549
.L12615:
	lw	a4,0(a2)
	ble	a4,zero,.L12510
	addiw	a3,a4,-1
	slli	a3,a3,32
	srli	a3,a3,27
	addi	a1,a2,68
	addi	a4,a2,36
	add	a3,a3,a1
.L12511:
	sh	zero,0(a4)
	addi	a4,a4,32
	bne	a3,a4,.L12511
.L12510:
	sd	a2,72(s8)
	sd	zero,72(s5)
	j	.L12509
.L12614:
	ld	a3,56(sp)
	mv	a1,s2
	addiw	a2,s3,-1
	mv	a0,s9
	call	sqlite3SrcListEnlarge
	mv	s2,a0
	beq	a0,zero,.L12502
	sd	a0,40(s8)
	j	.L12504
.L12617:
	ld	a5,40(sp)
	sd	s9,64(sp)
	sw	s4,76(sp)
	sw	a5,72(sp)
	ld	a5,8(sp)
	li	a2,0
	mv	a1,s8
	sw	a5,80(sp)
	ld	a4,0(s5)
	mv	a0,s10
	sd	a4,88(sp)
	call	substSelect.part.0
	j	.L12513
.L12500:
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,s9
	call	sqlite3SrcListAppend
	mv	s2,a0
	beq	a0,zero,.L12502
	sd	a0,40(s8)
	sd	zero,16(sp)
	j	.L12501
.L12616:
	mv	a1,s4
	mv	a0,s2
	call	setJoinExpr
	j	.L12512
.L12613:
	ld	a4,160(s9)
	beq	a4,zero,.L12618
.L12498:
	ld	a2,368(a4)
	sd	a2,120(a3)
	sd	a3,368(a4)
	j	.L12499
.L12618:
	mv	a4,s9
	j	.L12498
	.size	flattenSubquery, .-flattenSubquery
	.section	.rodata.str1.8
	.align	3
.LC123:
	.string	"ON"
	.align	3
.LC124:
	.string	"USING"
	.align	3
.LC125:
	.string	"a JOIN clause is required before %s"
	.section	.text.sqlite3SrcListAppendFromTerm,"ax",@progbits
	.align	1
	.type	sqlite3SrcListAppendFromTerm, @function
sqlite3SrcListAppendFromTerm:
	addi	sp,sp,-96
	sd	s2,64(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
	sd	s10,0(sp)
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s3,56(sp)
	sd	s6,32(sp)
	ld	s6,0(a0)
	mv	s2,a0
	mv	s10,a2
	mv	s8,a3
	mv	s7,a4
	mv	s4,a5
	mv	s9,a6
	mv	s5,a7
	beq	a1,zero,.L12660
	call	sqlite3SrcListAppend
	mv	s1,a0
	beq	a0,zero,.L12623
.L12630:
	lw	s3,0(s1)
	lbu	a4,276(s2)
	li	a5,1
	addiw	s3,s3,-1
	slli	s0,s3,3
	bleu	a4,a5,.L12624
	sub	a5,s0,s3
	slli	a5,a5,4
	add	a5,s1,a5
	ld	a2,24(a5)
	beq	a2,zero,.L12624
	beq	s8,zero,.L12625
	ld	a5,0(s8)
	beq	a5,zero,.L12625
	mv	s10,s8
.L12625:
	ld	a0,0(s2)
	mv	a3,s10
	addi	a1,s2,400
	call	sqlite3RenameTokenMap.isra.0
.L12624:
	lw	a5,8(s7)
	bne	a5,zero,.L12661
.L12626:
	sub	a4,s0,s3
	slli	a4,a4,4
	add	a4,s1,a4
	sd	s4,48(a4)
	sd	s9,80(a4)
	sd	s5,88(a4)
.L12619:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s4,48(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	ld	s8,16(sp)
	ld	s9,8(sp)
	ld	s10,0(sp)
	mv	a0,s1
	ld	s1,72(sp)
	addi	sp,sp,96
	jr	ra
.L12660:
	lla	a5,.LC123
	beq	a6,zero,.L12662
.L12621:
	mv	a2,a5
	lla	a1,.LC125
	mv	a0,s2
	call	sqlite3ErrorMsg
.L12623:
	beq	s9,zero,.L12628
	mv	a1,s9
	mv	a0,s6
	call	sqlite3ExprDeleteNN
.L12628:
	beq	s5,zero,.L12629
	mv	a1,s5
	mv	a0,s6
	call	sqlite3IdListDelete.part.0
.L12629:
	li	s1,0
	beq	s4,zero,.L12619
	li	a2,1
	mv	a1,s4
	mv	a0,s6
	call	clearSelect
	j	.L12619
.L12662:
	beq	a7,zero,.L12622
	lla	a5,.LC124
	j	.L12621
.L12661:
	mv	a1,s7
	mv	a0,s6
	call	sqlite3NameFromToken
	sub	a5,s0,s3
	slli	a5,a5,4
	add	a5,s1,a5
	sd	a0,32(a5)
	j	.L12626
.L12622:
	call	sqlite3SrcListAppend
	mv	s1,a0
	bne	a0,zero,.L12630
	j	.L12629
	.size	sqlite3SrcListAppendFromTerm, .-sqlite3SrcListAppendFromTerm
	.section	.text.convertCompoundSelectToSubquery,"ax",@progbits
	.align	1
	.type	convertCompoundSelectToSubquery, @function
convertCompoundSelectToSubquery:
	ld	a5,80(a1)
	beq	a5,zero,.L12676
	addi	sp,sp,-80
	sd	s0,64(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	ld	a4,72(a1)
	mv	s0,a1
	beq	a4,zero,.L12691
	mv	a5,a1
	li	a2,128
	li	a1,131
.L12665:
	lbu	a3,8(a5)
	beq	a3,a2,.L12666
	bne	a3,a1,.L12692
.L12666:
	ld	a5,80(a5)
	bne	a5,zero,.L12665
.L12691:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	li	a0,0
	addi	sp,sp,80
	jr	ra
.L12692:
	lw	a5,0(a4)
	addiw	a5,a5,-1
	slli	a2,a5,32
	sext.w	a3,a5
	blt	a2,zero,.L12691
	slli	a5,a5,32
	slli	a2,a3,5
	srli	a5,a5,32
	addi	a3,a4,-24
	addi	a1,a2,8
	add	a3,a3,a2
	slli	a2,a5,5
	sub	a3,a3,a2
	add	a5,a4,a1
	j	.L12669
.L12693:
	beq	a5,a3,.L12691
.L12669:
	ld	a4,0(a5)
	addi	a5,a5,-32
	lw	a4,4(a4)
	andi	a4,a4,256
	beq	a4,zero,.L12693
	ld	s2,0(a0)
	li	a1,128
	ld	s3,0(s2)
	mv	a0,s3
	call	sqlite3DbMallocZero
	mv	s1,a0
	beq	a0,zero,.L12673
	mv	a4,sp
	sd	zero,0(sp)
	li	a7,0
	li	a6,0
	mv	a5,s1
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,s2
	sd	zero,8(a4)
	call	sqlite3SrcListAppendFromTerm
	beq	a0,zero,.L12673
	mv	a4,s0
	mv	a3,s1
	addi	a7,s0,128
.L12672:
	ld	a6,0(a4)
	ld	a1,8(a4)
	ld	a2,16(a4)
	ld	a5,24(a4)
	sd	a6,0(a3)
	sd	a1,8(a3)
	sd	a2,16(a3)
	sd	a5,24(a3)
	addi	a4,a4,32
	addi	a3,a3,32
	bne	a4,a7,.L12672
	sd	a0,40(s0)
	addi	a2,sp,16
	li	a3,0
	li	a1,172
	mv	a0,s3
	sd	zero,16(sp)
	sw	zero,24(sp)
	call	sqlite3ExprAlloc
	mv	a2,a0
	ld	a0,0(s2)
	li	a1,0
	call	sqlite3ExprListAppend.isra.0
	li	a5,-125
	sd	a0,0(s0)
	sb	a5,8(s0)
	sd	zero,48(s0)
	sd	zero,56(s1)
	sd	zero,64(s1)
	sd	zero,72(s1)
	lw	a5,12(s0)
	li	a4,65536
	sd	zero,80(s0)
	andi	a5,a5,-257
	or	a5,a5,a4
	sd	zero,88(s0)
	sd	zero,104(s0)
	sw	a5,12(s0)
	ld	a5,80(s1)
	li	a0,0
	sd	s1,88(a5)
	sd	zero,96(s1)
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	addi	sp,sp,80
	jr	ra
.L12676:
	li	a0,0
	ret
.L12673:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	li	a0,2
	addi	sp,sp,80
	jr	ra
	.size	convertCompoundSelectToSubquery, .-convertCompoundSelectToSubquery
	.section	.rodata.str1.8
	.align	3
.LC126:
	.string	"%d columns assigned %d values"
	.section	.text.sqlite3ExprListAppendVector,"ax",@progbits
	.align	1
	.type	sqlite3ExprListAppendVector, @function
sqlite3ExprListAppendVector:
	addi	sp,sp,-64
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	ra,56(sp)
	sd	s1,40(sp)
	sd	s4,16(sp)
	mv	s0,a1
	mv	s3,a0
	mv	s2,a2
	mv	s6,a3
	li	s5,0
	beq	a1,zero,.L12695
	lw	s5,0(a1)
.L12695:
	beq	s2,zero,.L12696
	ld	s4,0(s3)
	beq	s6,zero,.L12697
	lbu	a5,0(s6)
	li	a4,131
	lw	a2,8(s2)
	beq	a5,a4,.L12705
	li	a3,168
	beq	a5,a3,.L12727
	li	a4,169
	beq	a5,a4,.L12708
.L12704:
	li	a5,1
	li	s1,0
	bne	a2,a5,.L12728
.L12719:
	mv	a2,s1
	mv	a1,s6
	mv	a0,s3
	call	sqlite3ExprForVectorField
	mv	a2,a0
	ld	a0,0(s3)
	mv	a1,s0
	call	sqlite3ExprListAppend.isra.0
	slli	a3,s1,4
	mv	s0,a0
	addiw	s1,s1,1
	beq	a0,zero,.L12706
	ld	a4,0(s2)
	lw	a5,0(a0)
	add	a4,a4,a3
	ld	a4,0(a4)
	addiw	a5,a5,-1
	slli	a5,a5,5
	add	a5,a0,a5
	sd	a4,16(a5)
	ld	a5,0(s2)
	add	a5,a5,a3
	sd	zero,0(a5)
.L12706:
	lw	a5,8(s2)
	bgt	a5,s1,.L12719
.L12700:
	lbu	a5,97(s4)
	bne	a5,zero,.L12697
	lbu	a4,0(s6)
	li	a5,131
	beq	a4,a5,.L12729
.L12697:
	mv	a1,s6
	mv	a0,s3
	call	sqlite3ExprUnmapAndDelete
	mv	a1,s2
	mv	a0,s4
	call	sqlite3IdListDelete.part.0
.L12694:
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	addi	sp,sp,64
	jr	ra
.L12727:
	lbu	a5,54(s6)
	li	a3,169
	beq	a5,a3,.L12708
	bne	a5,a4,.L12704
	ld	a5,32(s6)
	ld	a5,0(a5)
	lw	a3,0(a5)
	bne	a3,a2,.L12709
.L12705:
	li	s1,0
	bgt	a2,zero,.L12719
	j	.L12700
.L12729:
	beq	s0,zero,.L12697
	slli	a5,s5,5
	add	a5,s0,a5
	ld	a5,8(a5)
	sd	s6,24(a5)
	lw	a4,8(s2)
	li	s6,0
	sw	a4,44(a5)
	j	.L12697
.L12728:
	li	a3,1
.L12709:
	lla	a1,.LC126
	mv	a0,s3
	call	sqlite3ErrorMsg
	j	.L12697
.L12696:
	mv	a1,s6
	mv	a0,s3
	call	sqlite3ExprUnmapAndDelete
	j	.L12694
.L12708:
	ld	a5,32(s6)
	lw	a3,0(a5)
	beq	a3,a2,.L12705
	j	.L12709
	.size	sqlite3ExprListAppendVector, .-sqlite3ExprListAppendVector
	.section	.rodata.str1.8
	.align	3
.LC127:
	.string	"syntax error after column name \"%.*s\""
	.section	.text.parserAddExprIdListTerm,"ax",@progbits
	.align	1
	.type	parserAddExprIdListTerm, @function
parserAddExprIdListTerm:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	mv	s0,a0
	ld	a0,0(a0)
	mv	s2,a2
	li	a2,0
	mv	s3,a3
	mv	s4,a4
	call	sqlite3ExprListAppend.isra.0
	mv	s1,a0
	bne	s3,zero,.L12731
	li	a5,-1
	beq	s4,a5,.L12732
.L12731:
	ld	a5,0(s0)
	lbu	a5,181(a5)
	beq	a5,zero,.L12738
.L12732:
	beq	s1,zero,.L12730
	li	a3,1
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	sqlite3ExprListSetName.part.0
.L12730:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	ld	s4,0(sp)
	mv	a0,s1
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
.L12738:
	ld	a3,0(s2)
	lw	a2,8(s2)
	lla	a1,.LC127
	mv	a0,s0
	call	sqlite3ErrorMsg
	j	.L12732
	.size	parserAddExprIdListTerm, .-parserAddExprIdListTerm
	.section	.rodata.str1.8
	.align	3
.LC128:
	.string	"duplicate WITH table name: %s"
	.section	.text.sqlite3WithAdd,"ax",@progbits
	.align	1
	.type	sqlite3WithAdd, @function
sqlite3WithAdd:
	addi	sp,sp,-80
	sd	s1,56(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	ld	s2,0(a0)
	mv	s1,a0
	mv	s7,a1
	mv	a0,s2
	mv	a1,a2
	mv	s3,a3
	mv	s4,a4
	call	sqlite3NameFromToken
	mv	s8,a0
	beq	a0,zero,.L12740
	beq	s7,zero,.L12741
	lw	a3,0(s7)
	mv	a5,a3
	ble	a3,zero,.L12742
	li	s6,0
	lla	s0,.LANCHOR2
	lla	s5,.LC128
.L12748:
	slli	a5,s6,5
	add	a5,s7,a5
	ld	a7,16(a5)
	mv	a2,s8
	lbu	a5,0(a2)
	lbu	a6,0(a7)
	addi	a2,a2,1
	add	t3,s0,a5
	add	t1,s0,a6
	beq	a5,a6,.L12770
.L12743:
	lbu	a4,320(t3)
	lbu	a5,320(t1)
	bne	a4,a5,.L12746
.L12745:
	lbu	a5,0(a2)
	lbu	a6,1(a7)
	addi	a7,a7,1
	addi	a2,a2,1
	add	t3,s0,a5
	add	t1,s0,a6
	bne	a5,a6,.L12743
.L12770:
	bne	a5,zero,.L12745
	mv	a2,s8
	mv	a1,s5
	mv	a0,s1
	call	sqlite3ErrorMsg
	lw	a3,0(s7)
.L12746:
	addiw	s6,s6,1
	mv	a5,a3
	bgt	a3,s6,.L12748
.L12742:
	slli	a5,a5,5
	addi	a2,a5,48
	mv	a1,s7
	mv	a0,s2
	call	sqlite3DbRealloc
	lbu	a5,97(s2)
	mv	s0,a0
	beq	a5,zero,.L12750
.L12771:
	beq	s3,zero,.L12751
	mv	a1,s3
	mv	a0,s2
	call	exprListDeleteNN
.L12751:
	beq	s4,zero,.L12752
	li	a2,1
	mv	a1,s4
	mv	a0,s2
	call	clearSelect
.L12752:
	mv	s0,s7
	beq	s8,zero,.L12739
	mv	a1,s8
	mv	a0,s2
	call	sqlite3DbFreeNN
.L12739:
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	ld	s8,0(sp)
	addi	sp,sp,80
	jr	ra
.L12741:
	li	a1,48
	mv	a0,s2
	call	sqlite3DbMallocZero
	lbu	a5,97(s2)
	mv	s0,a0
	bne	a5,zero,.L12771
.L12750:
	lw	a4,0(s0)
	slli	a5,a4,5
	add	a5,s0,a5
	sd	s4,32(a5)
	sd	s3,24(a5)
	sd	s8,16(a5)
	sd	zero,40(a5)
	addiw	a4,a4,1
	sw	a4,0(s0)
	j	.L12739
.L12740:
	beq	s7,zero,.L12741
	lw	a5,0(s7)
	j	.L12742
	.size	sqlite3WithAdd, .-sqlite3WithAdd
	.section	.text.sqlite3VdbeError,"ax",@progbits
	.align	1
	.type	sqlite3VdbeError, @function
sqlite3VdbeError:
	addi	sp,sp,-96
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	ra,40(sp)
	ld	t1,168(a0)
	sd	a2,48(sp)
	sd	a3,56(sp)
	sd	a4,64(sp)
	sd	a5,72(sp)
	sd	a6,80(sp)
	sd	a7,88(sp)
	mv	s0,a0
	mv	s1,a1
	beq	t1,zero,.L12773
	ld	a0,0(a0)
	mv	a1,t1
	call	sqlite3DbFreeNN
.L12773:
	ld	a0,0(s0)
	addi	a2,sp,48
	mv	a1,s1
	sd	a2,8(sp)
	call	sqlite3VMPrintf
	sd	a0,168(s0)
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,96
	jr	ra
	.size	sqlite3VdbeError, .-sqlite3VdbeError
	.section	.text.sqlite3MPrintf,"ax",@progbits
	.align	1
	.type	sqlite3MPrintf, @function
sqlite3MPrintf:
	addi	sp,sp,-80
	addi	t1,sp,32
	sd	a2,32(sp)
	mv	a2,t1
	sd	ra,24(sp)
	sd	a3,40(sp)
	sd	a4,48(sp)
	sd	a5,56(sp)
	sd	a6,64(sp)
	sd	a7,72(sp)
	sd	t1,8(sp)
	call	sqlite3VMPrintf
	ld	ra,24(sp)
	addi	sp,sp,80
	jr	ra
	.size	sqlite3MPrintf, .-sqlite3MPrintf
	.section	.rodata.str1.8
	.align	3
.LC129:
	.string	"?"
	.align	3
.LC130:
	.string	"malformed database schema (%s)"
	.align	3
.LC131:
	.string	"%z - %s"
	.section	.text.corruptSchema,"ax",@progbits
	.align	1
	.type	corruptSchema, @function
corruptSchema:
	addi	sp,sp,-48
	sd	s0,32(sp)
	sd	ra,40(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	ld	s2,0(a0)
	mv	s0,a0
	lbu	a5,97(s2)
	beq	a5,zero,.L12781
	li	a5,7
	sw	a5,20(a0)
.L12780:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	addi	sp,sp,48
	jr	ra
.L12781:
	ld	s3,8(a0)
	ld	a5,0(s3)
	bne	a5,zero,.L12780
	lw	a5,24(a0)
	mv	s1,a2
	andi	a5,a5,1
	bne	a5,zero,.L12794
	ld	a5,48(s2)
	andi	a5,a5,1
	bne	a5,zero,.L12795
	beq	a1,zero,.L12796
.L12785:
	mv	a2,a1
	mv	a0,s2
	lla	a1,.LC130
	call	sqlite3MPrintf
	mv	a2,a0
	beq	s1,zero,.L12786
	lbu	a5,0(s1)
	beq	a5,zero,.L12786
	mv	a3,s1
	lla	a1,.LC131
	mv	a0,s2
	call	sqlite3MPrintf
	mv	a2,a0
.L12786:
	ld	a5,8(s0)
	li	a0,122880
	addi	a0,a0,1400
	sd	a2,0(a5)
	call	sqlite3CorruptError
	sw	a0,20(s0)
	j	.L12780
.L12796:
	lla	a1,.LC129
	j	.L12785
.L12794:
	mv	a1,a2
	mv	a0,s2
	call	sqlite3DbStrDup
	sd	a0,0(s3)
	li	a5,1
	sw	a5,20(s0)
	j	.L12780
.L12795:
	li	a0,122880
	addi	a0,a0,1393
	call	sqlite3CorruptError
	sw	a0,20(s0)
	j	.L12780
	.size	corruptSchema, .-corruptSchema
	.section	.rodata.str1.8
	.align	3
.LC132:
	.string	"vtable constructor called recursively: %s"
	.align	3
.LC133:
	.string	"vtable constructor failed: %s"
	.align	3
.LC134:
	.string	"vtable constructor did not declare schema: %s"
	.align	3
.LC135:
	.string	"hidden"
	.section	.text.vtabCallConstructor,"ax",@progbits
	.align	1
	.type	vtabCallConstructor, @function
vtabCallConstructor:
	addi	sp,sp,-192
	sd	s0,176(sp)
	sd	s2,160(sp)
	sd	s3,152(sp)
	sd	s4,144(sp)
	sd	s8,112(sp)
	sd	ra,184(sp)
	sd	s1,168(sp)
	sd	s5,136(sp)
	sd	s6,128(sp)
	sd	s7,120(sp)
	sd	s9,104(sp)
	sd	s10,96(sp)
	sd	s11,88(sp)
	ld	a5,464(a0)
	sd	zero,40(sp)
	ld	s6,88(a1)
	lw	s5,84(a1)
	mv	s3,a0
	mv	s0,a1
	mv	s2,a2
	mv	s8,a3
	mv	s4,a4
	bne	a5,zero,.L12801
	j	.L12798
.L12799:
	ld	a5,16(a5)
	beq	a5,zero,.L12798
.L12801:
	ld	a1,8(a5)
	bne	a1,s0,.L12799
	ld	a2,0(s0)
	lla	a1,.LC132
	mv	a0,s3
	call	sqlite3MPrintf
	sd	a0,0(s4)
	li	s6,6
.L12800:
	ld	ra,184(sp)
	ld	s0,176(sp)
	ld	s1,168(sp)
	ld	s2,160(sp)
	ld	s3,152(sp)
	ld	s4,144(sp)
	ld	s5,136(sp)
	ld	s7,120(sp)
	ld	s8,112(sp)
	ld	s9,104(sp)
	ld	s10,96(sp)
	ld	s11,88(sp)
	mv	a0,s6
	ld	s6,128(sp)
	addi	sp,sp,192
	jr	ra
.L12798:
	ld	a1,0(s0)
	mv	a0,s3
	call	sqlite3DbStrDup
	mv	s7,a0
	beq	a0,zero,.L12828
	li	a0,48
	call	sqlite3MallocZero
	mv	s1,a0
	beq	a0,zero,.L12855
	sd	s3,0(a0)
	sd	s2,8(a0)
	ld	a1,112(s0)
	beq	a1,zero,.L12829
	mv	a0,s3
	call	sqlite3SchemaToIndex.part.0
	slli	a0,a0,5
.L12805:
	ld	a5,32(s3)
	ld	a3,88(s0)
	addi	a4,s1,16
	add	a5,a5,a0
	ld	a2,0(a5)
	mv	a0,s3
	addi	a5,sp,40
	sd	a2,8(a3)
	addi	a3,sp,48
	ld	a6,464(s3)
	sd	a3,464(s3)
	ld	a1,16(s2)
	mv	a3,s6
	mv	a2,s5
	sd	s0,56(sp)
	sd	s1,48(sp)
	sd	a6,64(sp)
	sw	zero,72(sp)
	jalr	s8
	ld	a4,64(sp)
	li	a5,7
	mv	s6,a0
	sd	a4,464(s3)
	beq	a0,a5,.L12856
	bne	a0,zero,.L12807
	ld	a0,16(s1)
	beq	a0,zero,.L12812
	li	a2,24
	li	a1,0
	call	memset@plt
	ld	a4,0(s2)
	ld	a5,16(s1)
	sd	a4,0(a5)
	li	a5,1
	sw	a5,24(s1)
	lw	a5,72(sp)
	beq	a5,zero,.L12857
	ld	a5,96(s0)
	sd	a5,40(s1)
	lh	a5,70(s0)
	sd	s1,96(s0)
	mv	s10,a5
	ble	a5,zero,.L12812
	li	a5,1073741824
	addi	a5,a5,-1
	sd	a5,24(sp)
	ld	a5,8(s0)
	li	s8,0
	slli	a4,s8,5
	add	a5,a5,a4
	sd	a4,16(sp)
	lbu	a4,27(a5)
	sd	zero,8(sp)
	lla	s2,.LC135
	andi	a4,a4,4
	li	s4,32
	beq	a4,zero,.L12818
.L12816:
	ld	a0,0(a5)
	call	sqlite3ColumnType.isra.0.part.0
	mv	s5,a0
	beq	a0,zero,.L12818
	call	strlen@plt
	ld	a5,24(sp)
	and	s1,a0,a5
	sext.w	s1,s1
	beq	s1,zero,.L12818
	mv	s10,s5
	li	s11,0
	li	s9,0
	j	.L12822
.L12859:
	lbu	a3,-1(s10)
	beq	a3,s4,.L12820
.L12819:
	addi	s11,s11,1
	sext.w	s9,s11
	addi	s10,s10,1
	ble	s1,s9,.L12858
.L12822:
	mv	a1,s10
	li	a2,6
	mv	a0,s2
	call	sqlite3_strnicmp@plt
	bne	a0,zero,.L12819
	bne	s11,zero,.L12859
.L12820:
	lbu	a3,6(s10)
	beq	a3,zero,.L12830
	bne	a3,s4,.L12819
	li	a0,7
.L12821:
	addw	a2,a0,s9
	mv	a3,s9
	subw	a6,a2,s11
	blt	s1,a2,.L12826
.L12823:
	addw	a2,a6,a3
	add	a2,s5,a2
	lbu	a1,0(a2)
	add	a2,s5,a3
	addiw	a3,a3,1
	sb	a1,0(a2)
	addw	a2,a3,a0
	ble	a2,s1,.L12823
.L12826:
	lbu	a3,0(s10)
	bne	a3,zero,.L12825
	bne	s9,zero,.L12860
.L12825:
	li	a4,128
	ld	a5,8(s0)
	sd	a4,8(sp)
	ld	a4,16(sp)
	add	s9,a5,a4
	lbu	a5,27(s9)
	ori	a5,a5,2
	sb	a5,27(s9)
	lh	s10,70(s0)
.L12817:
	addi	s8,s8,1
	sext.w	a5,s10
	sext.w	a4,s8
	ble	a5,a4,.L12812
	ld	a5,8(s0)
	slli	a4,s8,5
	sd	a4,16(sp)
	add	a5,a5,a4
	lbu	a4,27(a5)
	andi	a4,a4,4
	bne	a4,zero,.L12816
.L12818:
	lw	a5,64(s0)
	ld	a4,8(sp)
	or	a5,a4,a5
	sw	a5,64(s0)
	j	.L12817
.L12828:
	li	s6,7
	j	.L12800
.L12856:
	ld	a5,96(s3)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L12807
	lw	a4,196(s3)
	li	a5,1
	sb	a5,97(s3)
	ble	a4,zero,.L12808
	sw	a5,352(s3)
.L12808:
	mv	a0,s3
	call	sqlite3OomFault.part.0
.L12807:
	ld	a2,40(sp)
	beq	a2,zero,.L12861
	lla	a1,.LC50
	mv	a0,s3
	call	sqlite3MPrintf
	mv	a5,a0
	ld	a0,40(sp)
	sd	a5,0(s4)
	call	sqlite3_free@plt
.L12811:
	mv	a1,s1
	mv	a0,s3
	call	sqlite3DbFreeNN
.L12812:
	mv	a1,s7
	mv	a0,s3
	call	sqlite3DbFreeNN
	j	.L12800
.L12858:
	lw	a5,64(s0)
	ld	a4,8(sp)
	lh	s10,70(s0)
	or	a5,a4,a5
	sw	a5,64(s0)
	j	.L12817
.L12830:
	li	a0,6
	j	.L12821
.L12861:
	mv	a2,s7
	lla	a1,.LC133
	mv	a0,s3
	call	sqlite3MPrintf
	sd	a0,0(s4)
	j	.L12811
.L12860:
	add	a5,s5,s11
	sb	zero,-1(a5)
	j	.L12825
.L12855:
	ld	a5,96(s3)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L12803
	lw	a4,196(s3)
	li	a5,1
	sb	a5,97(s3)
	ble	a4,zero,.L12804
	sw	a5,352(s3)
.L12804:
	mv	a0,s3
	call	sqlite3OomFault.part.0
.L12803:
	mv	a1,s7
	mv	a0,s3
	call	sqlite3DbFreeNN
	li	s6,7
	j	.L12800
.L12857:
	ld	a2,0(s0)
	lla	a1,.LC134
	mv	a0,s3
	call	sqlite3MPrintf
	sd	a0,0(s4)
	mv	a0,s1
	call	sqlite3VtabUnlock
	li	s6,1
	j	.L12812
.L12829:
	li	a5,-31997952
	addi	a0,a5,-2048
	j	.L12805
	.size	vtabCallConstructor, .-vtabCallConstructor
	.section	.rodata.str1.8
	.align	3
.LC136:
	.string	"\"%w\""
	.section	.text.renameEditSql,"ax",@progbits
	.align	1
	.type	renameEditSql, @function
renameEditSql:
	addi	sp,sp,-144
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s6,80(sp)
	sd	ra,136(sp)
	sd	s0,128(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	s7,72(sp)
	sd	s8,64(sp)
	sd	s9,56(sp)
	sd	s10,48(sp)
	sd	s11,40(sp)
	sd	a0,8(sp)
	mv	s6,a3
	mv	s3,a1
	mv	s2,a2
	mv	s1,a4
	beq	a3,zero,.L12879
	mv	a0,a3
	call	strlen@plt
	slli	s7,a0,34
	srli	s7,s7,34
.L12863:
	beq	s2,zero,.L12880
	mv	a0,s2
	call	strlen@plt
	slli	s0,a0,34
	srli	s0,s0,34
.L12864:
	ld	a0,8(sp)
	call	sqlite3_context_db_handle@plt
	mv	a2,s6
	lla	a1,.LC136
	mv	s5,a0
	call	sqlite3MPrintf
	mv	s8,a0
	beq	a0,zero,.L12881
	call	strlen@plt
	slli	s4,a0,34
	srli	s4,s4,34
	beq	s1,zero,.L12866
	mv	s7,s4
	mv	s6,s8
.L12866:
	lw	a1,8(s3)
	addiw	a5,s0,1
	mv	a0,s5
	mulw	a1,a1,s4
	li	s10,7
	addw	a1,a1,a5
	call	sqlite3DbMallocZero
	mv	s1,a0
	beq	a0,zero,.L12867
	mv	a1,s2
	mv	a2,s0
	call	memcpy@plt
	sext.w	a5,s4
	ld	a1,0(s3)
	sd	a5,16(sp)
	sext.w	a5,s7
	sd	a5,24(sp)
	lla	s10,.LANCHOR2
	beq	a1,zero,.L12878
.L12877:
	ld	a4,24(a1)
	beq	a4,zero,.L12883
	mv	s11,a1
	mv	a5,a4
.L12871:
	ld	a2,8(a5)
	ld	a3,8(s11)
	bleu	a2,a3,.L12870
	mv	s11,a5
.L12870:
	ld	a5,24(a5)
	bne	a5,zero,.L12871
	ld	a5,24(s11)
	beq	s11,a1,.L12884
	beq	a4,s11,.L12893
.L12872:
	mv	a1,a4
	ld	a4,24(a4)
	bne	a4,s11,.L12872
.L12893:
	addi	a1,a1,24
.L12869:
	sd	a5,0(a1)
	ld	a4,8(s11)
	lbu	a5,0(a4)
	add	a5,s10,a5
	lbu	a5,64(a5)
	andi	a5,a5,70
	beq	a5,zero,.L12874
	ld	s9,24(sp)
	mv	s7,s6
.L12875:
	lw	a5,16(s11)
	subw	s4,a4,s2
	beq	a5,s9,.L12876
	addw	a5,a5,s4
	addw	a0,s4,s9
	subw	a2,s0,a5
	slli	a0,a0,32
	slli	a5,a5,32
	srli	a5,a5,32
	srli	a0,a0,32
	slli	a2,a2,32
	add	a1,s1,a5
	srli	a2,a2,32
	add	a0,s1,a0
	call	memmove@plt
	lw	a5,16(s11)
	sext.w	s0,s0
	subw	s0,s0,a5
	addw	s0,s0,s9
	add	a5,s1,s0
	sb	zero,0(a5)
.L12876:
	slli	a2,s9,32
	srli	a2,a2,32
	mv	a1,s7
	add	a0,s1,s4
	call	memcpy@plt
	mv	a1,s11
	mv	a0,s5
	call	sqlite3DbFreeNN
	ld	a1,0(s3)
	bne	a1,zero,.L12877
.L12878:
	ld	a0,8(sp)
	li	a3,-1
	li	a2,-1
	mv	a1,s1
	call	sqlite3_result_text@plt
	mv	a1,s1
	mv	a0,s5
	call	sqlite3DbFreeNN
	li	s10,0
.L12867:
	mv	a0,s8
	call	sqlite3_free@plt
.L12865:
	ld	ra,136(sp)
	ld	s0,128(sp)
	ld	s1,120(sp)
	ld	s2,112(sp)
	ld	s3,104(sp)
	ld	s4,96(sp)
	ld	s5,88(sp)
	ld	s6,80(sp)
	ld	s7,72(sp)
	ld	s8,64(sp)
	ld	s9,56(sp)
	ld	s11,40(sp)
	mv	a0,s10
	ld	s10,48(sp)
	addi	sp,sp,144
	jr	ra
.L12874:
	ld	s9,16(sp)
	mv	s7,s8
	j	.L12875
.L12883:
	mv	s11,a1
	li	a5,0
	mv	a1,s3
	j	.L12869
.L12880:
	li	s0,0
	j	.L12864
.L12879:
	li	s7,0
	j	.L12863
.L12881:
	li	s10,7
	j	.L12865
.L12884:
	mv	a1,s3
	j	.L12869
	.size	renameEditSql, .-renameEditSql
	.section	.rodata.str1.8
	.align	3
.LC137:
	.string	"%s.%s"
	.align	3
.LC138:
	.string	"%s.rowid"
	.section	.text.sqlite3RowidConstraint,"ax",@progbits
	.align	1
	.type	sqlite3RowidConstraint, @function
sqlite3RowidConstraint:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	lh	a4,68(a2)
	mv	a5,a2
	mv	s0,a0
	ld	a2,0(a2)
	ld	a0,0(a0)
	mv	s1,a1
	blt	a4,zero,.L12895
	ld	a5,8(a5)
	slli	a4,a4,5
	lla	a1,.LC137
	add	a4,a5,a4
	ld	a3,0(a4)
	call	sqlite3MPrintf
	mv	a3,a0
	li	a1,1555
.L12896:
	mv	a0,s0
	ld	s0,16(sp)
	ld	ra,24(sp)
	mv	a2,s1
	ld	s1,8(sp)
	li	a5,2
	li	a4,-7
	addi	sp,sp,32
	tail	sqlite3HaltConstraint
.L12895:
	lla	a1,.LC138
	call	sqlite3MPrintf
	li	a1,4096
	mv	a3,a0
	addi	a1,a1,-1517
	j	.L12896
	.size	sqlite3RowidConstraint, .-sqlite3RowidConstraint
	.section	.rodata.str1.8
	.align	3
.LC139:
	.string	"%s%s"
	.section	.text.valueFromExpr.constprop.0,"ax",@progbits
	.align	1
	.type	valueFromExpr.constprop.0, @function
valueFromExpr.constprop.0:
	addi	sp,sp,-96
	sd	s0,80(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	mv	s0,a1
	sd	ra,88(sp)
	sd	s1,72(sp)
	sd	s4,48(sp)
	sd	s7,24(sp)
	mv	s5,a0
	mv	s3,a2
	mv	s6,a3
	mv	s2,a4
	sd	zero,8(sp)
	li	a5,166
	li	a1,173
.L12899:
	lbu	s1,0(s0)
	beq	s1,a5,.L12900
	bne	s1,a1,.L12960
.L12900:
	ld	s0,16(s0)
	j	.L12899
.L12960:
	li	a5,168
	bne	s1,a5,.L12901
	lbu	s1,54(s0)
.L12901:
	li	a5,36
	beq	s1,a5,.L12961
	li	a5,165
	beq	s1,a5,.L12962
	li	a5,110
	lla	s7,.LC12
	li	s4,1
	beq	s1,a5,.L12907
	li	a5,145
	beq	s1,a5,.L12907
.L12969:
	li	a5,147
	bne	s1,a5,.L12963
.L12907:
	li	a1,56
	mv	a0,s5
	call	sqlite3DbMallocZero
	beq	a0,zero,.L12909
	li	a5,1
	sh	a5,8(a0)
	sd	s5,40(a0)
	sd	a0,8(sp)
	lw	a5,4(s0)
	andi	a5,a5,1024
	beq	a5,zero,.L12910
	lw	a5,8(s0)
	li	a4,4
	sh	a4,8(a0)
	mul	a5,a5,s4
	sd	a5,0(a0)
	ld	a0,8(sp)
.L12911:
	andi	s1,s1,253
	li	a5,145
	beq	s1,a5,.L12964
.L12913:
	mv	a1,s6
	call	applyAffinity.isra.0
.L12914:
	ld	a5,8(sp)
	lhu	a4,8(a5)
	andi	a3,a4,44
	beq	a3,zero,.L12915
	andi	a4,a4,-3
	sh	a4,8(a5)
.L12915:
	li	a4,1
	li	s4,0
	beq	s3,a4,.L12916
	lhu	a4,8(a5)
	andi	a4,a4,2
	beq	a4,zero,.L12916
	lbu	s4,10(a5)
	sub	s3,s4,s3
	snez	s4,s3
.L12916:
	sd	a5,0(s2)
.L12931:
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	ld	s5,40(sp)
	ld	s6,32(sp)
	ld	s7,24(sp)
	mv	a0,s4
	ld	s4,48(sp)
	addi	sp,sp,96
	jr	ra
.L12963:
	li	a5,165
	beq	s1,a5,.L12965
	li	a5,114
	beq	s1,a5,.L12966
	li	a5,146
	beq	s1,a5,.L12967
	li	a4,159
	li	a5,0
	li	s4,0
	bne	s1,a4,.L12916
	li	a1,56
	mv	a0,s5
	call	sqlite3DbMallocZero
	mv	a5,a0
	beq	a0,zero,.L12916
	li	a4,4
	sd	s5,40(a0)
	sh	a4,8(a0)
	ld	a4,8(s0)
	sd	a0,8(sp)
	lbu	a4,4(a4)
	seqz	a4,a4
	sd	a4,0(a0)
	ld	a5,8(sp)
	j	.L12916
.L12962:
	ld	s0,16(s0)
	li	a5,145
	lbu	s1,0(s0)
	andi	a4,s1,253
	beq	a4,a5,.L12968
.L12905:
	addi	a4,sp,8
	mv	a3,s6
	mv	a2,s3
	mv	a1,s0
	mv	a0,s5
	call	valueFromExpr.constprop.0
	ld	a5,8(sp)
	mv	s4,a0
	bne	a0,zero,.L12959
	beq	a5,zero,.L12916
	mv	a0,a5
	call	sqlite3VdbeMemNumerify
	ld	a0,8(sp)
	lhu	a5,8(a0)
	andi	a4,a5,8
	beq	a4,zero,.L12919
	ld	a5,0(a0)
	neg	a5,a5
	sd	a5,0(a0)
	ld	a0,8(sp)
.L12920:
	mv	a1,s6
	call	applyAffinity.isra.0
	ld	a5,8(sp)
	j	.L12916
.L12964:
	li	a5,65
	bne	s6,a5,.L12913
	li	a1,67
	call	applyAffinity.isra.0
	j	.L12914
.L12909:
	sd	zero,8(sp)
.L12912:
	ld	a5,96(s5)
	li	a4,16777216
	addi	a4,a4,-256
	and	a5,a5,a4
	bne	a5,zero,.L12924
	lw	a4,196(s5)
	li	a5,1
	sb	a5,97(s5)
	ble	a4,zero,.L12925
	sw	a5,352(s5)
.L12925:
	mv	a0,s5
	call	sqlite3OomFault.part.0
.L12924:
	ld	a0,8(sp)
	li	s4,7
	call	sqlite3ValueFree
	j	.L12931
.L12910:
	ld	a3,8(s0)
	lla	a1,.LC139
	mv	a2,s7
	mv	a0,s5
	call	sqlite3MPrintf
	mv	a1,a0
	beq	a0,zero,.L12912
	ld	a0,8(sp)
	beq	a0,zero,.L12911
	lla	a4,sqlite3MallocSize
	li	a3,1
	li	a2,-1
	call	sqlite3VdbeMemSetStr
	ld	a0,8(sp)
	j	.L12911
.L12968:
	sext.w	s1,s1
	li	a5,145
	lla	s7,.LC118
	li	s4,-1
	bne	s1,a5,.L12969
	j	.L12907
.L12966:
	li	a1,56
	mv	a0,s5
	call	sqlite3DbMallocZero
	mv	a5,a0
	beq	a0,zero,.L12909
	li	a4,1
	sd	s5,40(a0)
	sh	a4,8(a0)
.L12959:
	li	s4,0
	j	.L12916
.L12961:
	ld	a0,8(s0)
	li	a1,0
	call	sqlite3AffinityType
	ld	a1,16(s0)
	mv	a3,a0
	mv	s0,a0
	mv	a4,s2
	mv	a2,s3
	mv	a0,s5
	call	valueFromExpr.constprop.0
	ld	a5,0(s2)
	mv	s4,a0
	beq	a5,zero,.L12931
	mv	a0,a5
	mv	a1,s0
	call	sqlite3VdbeMemCast.isra.0
	ld	a0,0(s2)
	mv	a1,s6
	call	applyAffinity.isra.0
	j	.L12931
.L12967:
	li	a1,56
	mv	a0,s5
	call	sqlite3DbMallocZero
	mv	s1,a0
	beq	a0,zero,.L12909
	li	a5,1
	sh	a5,8(a0)
	sd	s5,40(a0)
	ld	s3,8(s0)
	sd	a0,8(sp)
	li	s4,0
	addi	s3,s3,2
	mv	a0,s3
	call	strlen@plt
	slli	s0,a0,34
	srli	s0,s0,34
	addiw	a2,s0,-1
	mv	a1,s3
	mv	a0,s5
	mv	s0,a2
	call	sqlite3HexToBlob
	srliw	a2,s0,31
	addw	a2,a2,s0
	mv	a1,a0
	lla	a4,sqlite3MallocSize
	li	a3,0
	sraiw	a2,a2,1
	mv	a0,s1
	call	sqlite3VdbeMemSetStr
	ld	a5,8(sp)
	j	.L12916
.L12919:
	ld	a4,0(a0)
	li	a3,-1
	slli	a3,a3,63
	beq	a4,a3,.L12970
	neg	a4,a4
	sd	a4,0(a0)
	ld	a0,8(sp)
	j	.L12920
.L12970:
	li	a4,16384
	addi	a4,a4,-448
	and	a5,a5,a4
	ori	a5,a5,8
	sh	a5,8(a0)
	j	.L12920
.L12965:
	ld	s0,16(s0)
	j	.L12905
	.size	valueFromExpr.constprop.0, .-valueFromExpr.constprop.0
	.section	.text.windowExprGtZero.isra.0,"ax",@progbits
	.align	1
	.type	windowExprGtZero.isra.0, @function
windowExprGtZero.isra.0:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	zero,8(sp)
	beq	a1,zero,.L12973
	lbu	a2,94(a0)
	addi	a4,sp,8
	li	a3,67
	call	valueFromExpr.constprop.0
	ld	a5,8(sp)
	beq	a5,zero,.L12974
	mv	a0,a5
	call	sqlite3_value_int@plt
	ld	a5,8(sp)
	sgt	s0,a0,zero
.L12972:
	mv	a0,a5
	call	sqlite3ValueFree
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L12973:
	mv	a5,a1
	mv	a0,a5
	call	sqlite3ValueFree
	li	s0,0
	ld	ra,24(sp)
	mv	a0,s0
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L12974:
	li	s0,0
	j	.L12972
	.size	windowExprGtZero.isra.0, .-windowExprGtZero.isra.0
	.section	.text.sqlite3ExprCompare,"ax",@progbits
	.align	1
	.type	sqlite3ExprCompare, @function
sqlite3ExprCompare:
	addi	sp,sp,-80
	sd	s1,56(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	mv	s1,a2
	beq	a1,zero,.L12977
	beq	a2,zero,.L12978
	mv	s0,a1
	mv	s2,a0
	mv	s4,a3
	beq	a0,zero,.L12982
	lbu	a4,0(a1)
	li	a5,148
	beq	a4,a5,.L13031
.L12982:
	lw	s3,4(s0)
	lw	s5,4(s1)
	or	s6,s3,s5
	andi	a5,s6,1024
	beq	a5,zero,.L12990
	and	s3,s3,s5
	andi	s3,s3,1024
	beq	s3,zero,.L12978
	lw	a4,8(s0)
	lw	a5,8(s1)
	beq	a4,a5,.L12989
.L12978:
	li	a0,2
.L13025:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L12990:
	lbu	a5,0(s0)
	lbu	a4,0(s1)
	beq	a5,a4,.L13032
	li	a3,106
	beq	a5,a3,.L13033
.L12992:
	li	a5,106
	bne	a4,a5,.L12978
	ld	a2,16(s1)
	mv	a3,s4
	mv	a1,s0
	mv	a0,s2
	call	sqlite3ExprCompare
	li	a5,1
	bgt	a0,a5,.L12978
.L12994:
	li	a0,1
	j	.L13025
.L13031:
	ld	a0,0(a0)
	addi	a4,sp,8
	li	a3,65
	li	a2,1
	mv	a1,s1
	sd	zero,8(sp)
	call	valueFromExpr.constprop.0
	ld	a5,8(sp)
	beq	a5,zero,.L12982
	ld	a3,16(s2)
	lh	a1,48(s0)
	li	a2,31
	lw	a5,268(a3)
	bgt	a1,a2,.L13034
	addiw	a4,a1,-1
	li	a2,1
	sllw	a4,a2,a4
	or	a5,a5,a4
	sext.w	a5,a5
.L12986:
	sw	a5,268(a3)
	ld	a0,296(s2)
	call	sqlite3VdbeGetBoundValue.constprop.0
	mv	s3,a0
	beq	a0,zero,.L13035
	call	sqlite3_value_type@plt
	li	a5,3
	beq	a0,a5,.L13036
.L12988:
	ld	a1,8(sp)
	li	a2,0
	mv	a0,s3
	call	sqlite3MemCompare
	mv	s5,a0
	ld	a0,8(sp)
	call	sqlite3ValueFree
	mv	a0,s3
	call	sqlite3ValueFree
	bne	s5,zero,.L12982
.L12989:
	li	a0,0
	j	.L13025
.L13033:
	ld	a1,16(s0)
	mv	a3,s4
	mv	a2,s1
	mv	a0,s2
	call	sqlite3ExprCompare
	li	a5,1
	ble	a0,a5,.L12994
	lbu	a4,0(s1)
	j	.L12992
.L12977:
	bne	a2,zero,.L12978
	li	a0,0
	j	.L13025
.L13032:
	li	a3,71
	beq	a5,a3,.L12992
	addiw	a4,a5,94
	andi	a4,a4,253
	beq	a4,zero,.L12995
	ld	a0,8(s0)
	beq	a0,zero,.L12995
	li	a4,161
	beq	a5,a4,.L13037
	li	a4,114
	beq	a5,a4,.L12989
	li	a4,106
	ld	a1,8(s1)
	beq	a5,a4,.L13038
	beq	a1,zero,.L12995
	call	strcmp@plt
	bne	a0,zero,.L12978
.L12995:
	xor	s3,s5,s3
	andi	s3,s3,2
	bne	s3,zero,.L12978
	slli	a5,s6,49
	blt	a5,zero,.L12989
	slli	a5,s6,52
	blt	a5,zero,.L12978
	andi	a5,s6,8
	bne	a5,zero,.L13004
	ld	a2,16(s1)
	ld	a1,16(s0)
	mv	a3,s4
	mv	a0,s2
	call	sqlite3ExprCompare
	bne	a0,zero,.L12978
.L13004:
	ld	a2,24(s1)
	ld	a1,24(s0)
	mv	a3,s4
	mv	a0,s2
	call	sqlite3ExprCompare
	bne	a0,zero,.L12978
	ld	a1,32(s1)
	ld	a0,32(s0)
	mv	a2,s4
	call	sqlite3ExprListCompare
	bne	a0,zero,.L12978
	lbu	a5,0(s0)
	li	a4,110
	beq	a5,a4,.L12989
	li	a4,159
	beq	a5,a4,.L12989
	slli	a5,s6,50
	blt	a5,zero,.L12989
	lh	a4,48(s0)
	lh	a5,48(s1)
	bne	a4,a5,.L12978
	lbu	a4,54(s0)
	lbu	a5,54(s1)
	bne	a4,a5,.L12978
	lw	a4,44(s0)
	lw	a5,44(s1)
	beq	a4,a5,.L12989
	bne	s4,a4,.L12978
	bge	a5,zero,.L12978
	li	a0,0
	j	.L13025
.L13034:
	li	a4,-2147483648
	or	a5,a5,a4
	j	.L12986
.L13035:
	ld	a0,8(sp)
	call	sqlite3ValueFree
	li	a0,0
	call	sqlite3ValueFree
	j	.L12982
.L13037:
	ld	a3,8(s1)
	lla	a2,.LANCHOR2
.L13000:
	lbu	a5,0(a0)
	lbu	a4,0(a3)
	addi	a0,a0,1
	add	a6,a2,a5
	add	a1,a2,a4
	beq	a5,a4,.L13039
	lbu	a4,320(a6)
	lbu	a5,320(a1)
	bne	a4,a5,.L12978
.L12999:
	addi	a3,a3,1
	j	.L13000
.L13039:
	bne	a5,zero,.L12999
	slli	a5,s3,39
	bge	a5,zero,.L12995
	ld	a2,64(s1)
	ld	a1,64(s0)
	mv	a0,s2
	call	sqlite3WindowCompare
	bne	a0,zero,.L12978
.L13029:
	lw	s3,4(s0)
	lw	s5,4(s1)
	j	.L12995
.L13036:
	mv	a0,s3
	call	sqlite3_value_text@plt
	j	.L12988
.L13038:
	call	sqlite3_stricmp@plt
	beq	a0,zero,.L13029
	j	.L12978
	.size	sqlite3ExprCompare, .-sqlite3ExprCompare
	.section	.text.sqlite3ExprListCompare,"ax",@progbits
	.align	1
	.type	sqlite3ExprListCompare, @function
sqlite3ExprListCompare:
	addi	sp,sp,-48
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s3,8(sp)
	mv	s2,a1
	beq	a0,zero,.L13053
	beq	a1,zero,.L13043
	lw	a4,0(a0)
	lw	a5,0(a1)
	mv	s1,a0
	bne	a5,a4,.L13043
	mv	s3,a2
	li	s0,0
	bgt	a5,zero,.L13044
	j	.L13045
.L13054:
	call	sqlite3ExprCompare
	bne	a0,zero,.L13043
	lw	a5,0(s1)
	ble	a5,s0,.L13045
.L13044:
	slli	a5,s0,5
	add	a4,s1,a5
	add	a5,s2,a5
	lbu	a7,32(a4)
	lbu	a6,32(a5)
	ld	a1,8(a4)
	ld	a2,8(a5)
	mv	a3,s3
	li	a0,0
	addiw	s0,s0,1
	beq	a7,a6,.L13054
.L13043:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,1
	addi	sp,sp,48
	jr	ra
.L13053:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	snez	a0,a1
	addi	sp,sp,48
	jr	ra
.L13045:
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	ld	s2,16(sp)
	ld	s3,8(sp)
	li	a0,0
	addi	sp,sp,48
	jr	ra
	.size	sqlite3ExprListCompare, .-sqlite3ExprListCompare
	.section	.text.sqlite3WindowCompare,"ax",@progbits
	.align	1
	.type	sqlite3WindowCompare, @function
sqlite3WindowCompare:
	lbu	a4,32(a1)
	lbu	a5,32(a2)
	beq	a4,a5,.L13056
	li	a0,1
	ret
.L13056:
	addi	sp,sp,-32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s2,0(sp)
	lbu	a4,33(a1)
	lbu	a5,33(a2)
	mv	s0,a1
	mv	s1,a2
	beq	a4,a5,.L13062
.L13058:
	li	a0,1
.L13057:
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L13062:
	lbu	a4,34(a1)
	lbu	a5,34(a2)
	bne	a4,a5,.L13058
	lbu	a4,36(a1)
	lbu	a5,36(a2)
	bne	a4,a5,.L13058
	ld	a2,40(a2)
	ld	a1,40(a1)
	li	a3,-1
	mv	s2,a0
	call	sqlite3ExprCompare
	bne	a0,zero,.L13058
	ld	a2,48(s1)
	ld	a1,48(s0)
	li	a3,-1
	mv	a0,s2
	call	sqlite3ExprCompare
	bne	a0,zero,.L13058
	ld	a1,16(s1)
	ld	a0,16(s0)
	li	a2,-1
	call	sqlite3ExprListCompare
	bne	a0,zero,.L13058
	ld	a1,24(s1)
	ld	a0,24(s0)
	li	a2,-1
	call	sqlite3ExprListCompare
	snez	a0,a0
	j	.L13057
	.size	sqlite3WindowCompare, .-sqlite3WindowCompare
	.section	.rodata.str1.8
	.align	3
.LC140:
	.string	"new"
	.align	3
.LC141:
	.string	"old"
	.align	3
.LC142:
	.string	"excluded"
	.align	3
.LC143:
	.string	"ambiguous column name"
	.align	3
.LC144:
	.string	"no such column"
	.align	3
.LC145:
	.string	"window"
	.align	3
.LC146:
	.string	"aggregate"
	.align	3
.LC147:
	.string	"the \".\" operator"
	.align	3
.LC148:
	.string	"misuse of aliased aggregate %s"
	.align	3
.LC149:
	.string	"misuse of aliased window function %s"
	.align	3
.LC150:
	.string	"double-quoted string literal: \"%w\""
	.align	3
.LC151:
	.string	"%s: %s.%s.%s"
	.align	3
.LC152:
	.string	"%s: %s.%s"
	.align	3
.LC153:
	.string	"%s: %s"
	.align	3
.LC156:
	.string	"second argument to likelihood() must be a constant between 0.0 and 1.0"
	.align	3
.LC157:
	.string	"non-deterministic functions"
	.align	3
.LC158:
	.string	"%.*s() may not be used as a window function"
	.align	3
.LC159:
	.string	"misuse of %s function %.*s()"
	.align	3
.LC160:
	.string	"no such function: %.*s"
	.align	3
.LC161:
	.string	"wrong number of arguments to function %.*s()"
	.align	3
.LC162:
	.string	"RANGE with offset PRECEDING/FOLLOWING requires one ORDER BY expression"
	.align	3
.LC163:
	.string	"FILTER clause may only be used with aggregate window functions"
	.align	3
.LC165:
	.string	"1"
	.align	3
.LC166:
	.string	"subqueries"
	.align	3
.LC167:
	.string	"parameters"
	.section	.text.resolveExprStep,"ax",@progbits
	.align	1
	.type	resolveExprStep, @function
resolveExprStep:
	addi	sp,sp,-416
	sd	s1,392(sp)
	sd	s2,384(sp)
	sd	ra,408(sp)
	sd	s0,400(sp)
	sd	s3,376(sp)
	sd	s4,368(sp)
	sd	s5,360(sp)
	sd	s6,352(sp)
	sd	s7,344(sp)
	sd	s8,336(sp)
	sd	s9,328(sp)
	sd	s10,320(sp)
	sd	s11,312(sp)
	ld	s9,40(a0)
	lbu	a5,0(a1)
	li	a4,59
	ld	s7,0(s9)
	mv	s1,a0
	mv	s2,a1
	bleu	a5,a4,.L13580
	addiw	a5,a5,125
	andi	a5,a5,0xff
	li	a4,30
	bgtu	a5,a4,.L13066
	lla	a4,.L13068
	slli	a5,a5,2
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L13068:
	.word	.L13072-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13071-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13070-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13066-.L13068
	.word	.L13069-.L13068
	.word	.L13067-.L13068
	.section	.text.resolveExprStep
.L13072:
	lw	a5,4(s2)
	slli	a4,a5,52
	bge	a4,zero,.L13066
	lw	a1,40(s9)
	li	a3,38
	lla	a2,.LC166
	mv	a0,s7
	lw	s0,32(s9)
	call	notValid.isra.0
	ld	a1,32(s2)
	beq	a1,zero,.L13264
	ld	a5,16(s1)
	beq	a5,zero,.L13264
	mv	a0,s1
	call	sqlite3WalkSelect.part.0
.L13264:
	lw	a5,32(s9)
	beq	a5,s0,.L13066
	lw	a5,4(s2)
	ori	a5,a5,32
	sw	a5,4(s2)
	lw	a5,40(s9)
	ori	a5,a5,64
	sw	a5,40(s9)
.L13066:
	lw	a0,48(s7)
	bne	a0,zero,.L13203
.L13597:
	ld	a5,0(s7)
	lbu	a5,97(a5)
	bne	a5,zero,.L13203
.L13370:
	ld	ra,408(sp)
	ld	s0,400(sp)
	ld	s1,392(sp)
	ld	s2,384(sp)
	ld	s3,376(sp)
	ld	s4,368(sp)
	ld	s5,360(sp)
	ld	s6,352(sp)
	ld	s7,344(sp)
	ld	s8,336(sp)
	ld	s9,328(sp)
	ld	s10,320(sp)
	ld	s11,312(sp)
	addi	sp,sp,416
	jr	ra
.L13580:
	li	a4,19
	bleu	a5,a4,.L13066
	addiw	a4,a5,-20
	andi	a4,a4,0xff
	li	a3,39
	bgtu	a4,a3,.L13066
	lla	a3,.L13074
	slli	a4,a4,2
	add	a4,a4,a3
	lw	a4,0(a4)
	add	a4,a4,a3
	jr	a4
	.section	.rodata
	.align	2
	.align	2
.L13074:
	.word	.L13072-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13069-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13075-.L13074
	.word	.L13072-.L13074
	.word	.L13066-.L13074
	.word	.L13066-.L13074
	.word	.L13075-.L13074
	.word	.L13075-.L13074
	.word	.L13075-.L13074
	.word	.L13075-.L13074
	.word	.L13075-.L13074
	.word	.L13075-.L13074
	.word	.L13066-.L13074
	.word	.L13073-.L13074
	.section	.text.resolveExprStep
.L13073:
	li	a4,59
	bne	a5,a4,.L13071
	ld	a5,0(s7)
	ld	a1,8(a1)
	li	s10,0
	sd	a5,80(sp)
	li	a5,-1
	sw	a5,44(s2)
	li	t4,0
	li	s11,0
.L13077:
	li	a4,4096
	li	a5,162
	addi	a4,a4,-2048
	sd	a5,88(sp)
	mv	s6,s9
	li	s8,0
	sd	zero,8(sp)
	li	a5,0
	lla	s0,.LANCHOR2
	sd	a4,72(sp)
.L13293:
	ld	s4,8(s6)
	bne	s4,zero,.L13581
	beq	s11,zero,.L13582
.L13311:
	li	a4,1
	beq	a5,a4,.L13160
.L13166:
	lw	s1,40(s6)
	andi	a4,s1,128
	beq	a4,zero,.L13174
.L13173:
	bne	s10,zero,.L13174
	ld	a7,16(s6)
	lw	t6,0(a7)
	ble	t6,zero,.L13174
	addi	t1,a7,16
	li	a2,0
	j	.L13190
.L13175:
	addiw	a2,a2,1
	addi	t1,t1,32
	beq	a2,t6,.L13174
.L13190:
	ld	t5,0(t1)
	beq	t5,zero,.L13175
	mv	a6,a1
	mv	a0,t5
	j	.L13179
.L13176:
	add	a4,s0,a4
	add	a3,s0,a3
	lbu	t0,320(a4)
	lbu	a4,320(a3)
	bne	t0,a4,.L13175
.L13178:
	addi	a0,a0,1
	addi	a6,a6,1
.L13179:
	lbu	a4,0(a0)
	lbu	a3,0(a6)
	bne	a4,a3,.L13176
	bne	a4,zero,.L13178
	slli	a4,a2,5
	add	a4,a7,a4
	andi	a5,s1,1
	ld	a4,8(a4)
	bne	a5,zero,.L13180
	lw	a5,4(a4)
	andi	a5,a5,16
	bne	a5,zero,.L13583
.L13180:
	slli	a5,s1,49
	blt	a5,zero,.L13182
	lw	a5,4(a4)
	slli	a3,a5,48
	blt	a3,zero,.L13584
.L13182:
	lbu	a5,0(a4)
	li	a3,168
	bne	a5,a3,.L13183
	lbu	a5,54(a4)
.L13183:
	li	a3,169
	beq	a5,a3,.L13585
	li	a3,131
	beq	a5,a3,.L13586
.L13186:
	ld	a5,8(sp)
	lla	a4,.LC12
	mv	a3,s2
	mv	a1,a7
	mv	a0,s7
	call	resolveAlias
	lbu	a4,276(s7)
	li	a5,1
	bleu	a4,a5,.L13564
	ld	a5,400(s7)
	bne	a5,zero,.L13189
	j	.L13564
.L13188:
	ld	a5,24(a5)
	beq	a5,zero,.L13564
.L13189:
	ld	a4,0(a5)
	bne	s2,a4,.L13188
	sd	zero,0(a5)
	j	.L13564
.L13596:
	lbu	a4,0(s0)
	li	a5,59
	beq	a4,a5,.L13587
.L13075:
	ld	a5,0(s7)
	li	a0,2
	lbu	a5,97(a5)
	bne	a5,zero,.L13370
	ld	a4,16(s2)
	li	a3,168
	lbu	a5,0(a4)
	bne	a5,a3,.L13273
	lbu	a5,54(a4)
.L13273:
	li	a3,169
	beq	a5,a3,.L13588
	li	a2,131
	li	a3,1
	bne	a5,a2,.L13275
	ld	a5,32(a4)
	ld	a5,0(a5)
	lw	a3,0(a5)
.L13275:
	lbu	a4,0(s2)
	li	a5,48
	beq	a4,a5,.L13589
	ld	a4,24(s2)
	li	a2,168
	lbu	a5,0(a4)
	beq	a5,a2,.L13579
.L13284:
	li	a2,169
	beq	a5,a2,.L13590
	li	a1,131
	li	a2,1
	beq	a5,a1,.L13591
	beq	a2,a3,.L13066
.L13280:
	lla	a1,.LC82
	mv	a0,s7
	call	sqlite3ErrorMsg
	j	.L13066
.L13203:
	li	a0,2
	j	.L13370
.L13067:
	ld	s5,32(s2)
	li	s8,0
	beq	s5,zero,.L13206
	lw	s8,0(s5)
.L13206:
	ld	s0,0(s7)
	ld	s10,8(s2)
	lw	s3,40(s9)
	lbu	s6,94(s0)
	beq	s10,zero,.L13344
	mv	a0,s10
	call	strlen@plt
	slli	s4,a0,34
	srli	s4,s4,34
.L13207:
	mv	a0,s0
	li	a4,0
	mv	a3,s6
	mv	a2,s8
	mv	a1,s10
	call	sqlite3FindFunction
	mv	s0,a0
	beq	a0,zero,.L13592
	lw	a5,4(a0)
	ld	s6,32(a0)
	andi	a4,a5,1024
	beq	a4,zero,.L13211
	lw	a5,4(s2)
	li	a3,262144
	li	a4,2
	or	a5,a5,a3
	sw	a5,4(s2)
	beq	s8,a4,.L13593
	ld	a3,56(a0)
	li	a4,117
	li	a5,8388608
	lbu	a3,0(a3)
	beq	a3,a4,.L13217
	li	a5,125829120
.L13217:
	sw	a5,44(s2)
.L13565:
	lw	a5,4(s0)
.L13211:
	li	a4,12288
	addi	a4,a4,-2048
	and	a4,a5,a4
	beq	a4,zero,.L13218
	lw	a5,4(s2)
	li	a4,524288
	or	a5,a5,a4
	sw	a5,4(s2)
	lw	a5,4(s0)
.L13218:
	slli	a4,a5,52
	bge	a4,zero,.L13594
.L13219:
	slli	a3,a5,45
	lbu	a4,276(s7)
	bge	a3,zero,.L13220
	lbu	a5,30(s7)
	bne	a5,zero,.L13220
	lw	s8,.LANCHOR1+420
	bne	s8,zero,.L13220
	li	a5,1
	li	s0,0
	bgtu	a4,a5,.L13222
	li	a1,1
	beq	s6,zero,.L13315
.L13314:
	lw	a5,40(s9)
	lw	a4,4(s0)
	li	a2,65536
	andi	a3,a5,1
	and	a4,a4,a2
	bne	a3,zero,.L13595
	lla	a2,.LC145
	bne	a4,zero,.L13227
	ld	a5,64(s2)
	bne	a5,zero,.L13227
	lla	a2,.LC146
.L13227:
	mv	a4,s10
	mv	a3,s4
	lla	a1,.LC159
	mv	a0,s7
	call	sqlite3ErrorMsg
	lw	a5,36(s9)
	mv	a1,s5
	mv	a0,s1
	addiw	a5,a5,1
	sw	a5,36(s9)
	call	sqlite3WalkExprList
	li	a0,1
	j	.L13370
.L13069:
	ld	s0,24(s2)
	li	a3,266240
	li	a2,262144
	beq	s0,zero,.L13267
.L13266:
	lw	a5,4(s0)
	and	a4,a5,a3
	sext.w	a4,a4
	beq	a4,zero,.L13596
	and	a5,a5,a2
	sext.w	a5,a5
	beq	a5,zero,.L13268
	ld	a5,32(s0)
	ld	s0,8(a5)
	bne	s0,zero,.L13266
.L13267:
	lbu	a5,0(zero)
	ebreak
.L13070:
	lw	a1,40(s9)
	mv	a0,s7
	li	a3,38
	lla	a2,.LC167
	call	notValid.isra.0
	lw	a0,48(s7)
	beq	a0,zero,.L13597
	j	.L13203
.L13071:
	lw	a1,40(s9)
	li	a3,32
	lla	a2,.LC147
	mv	a0,s7
	ld	s0,16(s2)
	call	notValid.isra.0
	ld	a3,24(s2)
	li	a5,59
	lbu	a4,0(a3)
	beq	a4,a5,.L13078
	ld	s11,8(s0)
	lbu	a4,276(s7)
	ld	s0,16(a3)
	ld	a3,24(a3)
	li	a5,1
	ld	s10,8(s0)
	ld	a1,8(a3)
	bleu	a4,a5,.L13079
	ld	t4,400(s7)
	beq	t4,zero,.L13079
.L13320:
	mv	a5,t4
	j	.L13082
.L13080:
	ld	a5,24(a5)
	beq	a5,zero,.L13598
.L13082:
	ld	a4,0(a5)
	bne	a4,a3,.L13080
	sd	s2,0(a5)
	ld	t4,400(s7)
	addi	a4,s2,64
	bne	t4,zero,.L13085
	j	.L13079
.L13084:
	ld	t4,24(t4)
	beq	t4,zero,.L13079
.L13085:
	ld	a5,0(t4)
	bne	a5,s0,.L13084
	sd	a4,0(t4)
.L13079:
	ld	a5,0(s7)
	sd	a5,80(sp)
	li	a5,-1
	sw	a5,44(s2)
	beq	s11,zero,.L13558
	lw	a5,40(s9)
	andi	a5,a5,6
	beq	a5,zero,.L13599
	li	t4,0
	li	s11,0
	j	.L13077
.L13336:
	li	a5,77
	sd	a5,88(sp)
.L13160:
	lw	s1,40(s6)
	beq	s8,zero,.L13168
	andi	a5,s1,32
	beq	a5,zero,.L13600
.L13168:
	andi	a5,s1,128
	bne	a5,zero,.L13341
	li	a5,1
.L13174:
	ld	a4,8(sp)
	ld	s6,24(s6)
	addiw	a4,a4,1
	sd	a4,8(sp)
	bne	s6,zero,.L13293
	beq	s10,zero,.L13601
	lbu	s0,88(sp)
	li	s3,0
	lla	a2,.LC144
	beq	s11,zero,.L13309
.L13308:
	mv	a5,a1
	mv	a4,s10
	mv	a3,s11
	lla	a1,.LC151
	mv	a0,s7
	call	sqlite3ErrorMsg
.L13198:
	li	a5,1
	sb	a5,29(s7)
	lw	a5,36(s9)
	addiw	a5,a5,1
	sw	a5,36(s9)
.L13296:
	lh	a5,48(s2)
	blt	a5,zero,.L13172
	beq	s8,zero,.L13172
	li	a4,63
	mv	a3,a5
	ble	a5,a4,.L13200
	li	a3,63
.L13200:
	ld	a5,88(s8)
	li	a4,1
	sll	a4,a4,a3
	or	a5,a5,a4
	sd	a5,88(s8)
.L13172:
	ld	a1,16(s2)
	beq	a1,zero,.L13201
	ld	a0,80(sp)
	call	sqlite3ExprDeleteNN
.L13201:
	ld	a1,24(s2)
	sd	zero,16(s2)
	beq	a1,zero,.L13202
	ld	a0,80(sp)
	call	sqlite3ExprDeleteNN
.L13202:
	lw	a5,4(s2)
	li	a4,8388608
	sd	zero,24(s2)
	or	a5,a5,a4
	sw	a5,4(s2)
	sb	s0,0(s2)
	li	a5,1
	bne	s3,a5,.L13203
	j	.L13564
.L13205:
	ld	s9,24(s9)
.L13564:
	lw	a5,32(s9)
	addiw	a5,a5,1
	sw	a5,32(s9)
	bne	s6,s9,.L13205
.L13572:
	li	a0,1
	j	.L13370
.L13581:
	lw	a3,0(s4)
	addi	s1,s4,8
	li	s3,0
	sext.w	a4,a3
	ble	a4,zero,.L13094
	li	a4,0
	li	t5,1
.L13125:
	ld	a0,40(s1)
	ld	s5,32(s1)
	beq	a0,zero,.L13095
	lw	a2,12(a0)
	ld	a6,72(sp)
	and	a2,a6,a2
	bne	a2,zero,.L13602
.L13095:
	beq	s11,zero,.L13101
	ld	a2,112(s5)
	beq	a2,t4,.L13101
.L13099:
	addiw	a4,a4,1
	sext.w	a2,a3
	addi	s1,s1,112
	bgt	a2,a4,.L13125
.L13094:
	beq	s8,zero,.L13126
	lw	a4,64(s8)
	sw	a4,44(s2)
	ld	a3,32(s8)
	sd	a3,64(s2)
	lbu	a4,60(s8)
	andi	a4,a4,8
	beq	a4,zero,.L13127
	lw	a4,4(s2)
	li	a2,1048576
	or	a4,a4,a2
	sw	a4,4(s2)
.L13127:
	ld	t4,112(a3)
.L13126:
	beq	s11,zero,.L13603
.L13128:
	beq	s3,zero,.L13311
	li	a5,1
	lbu	s0,88(sp)
	beq	s3,a5,.L13296
	lla	a2,.LC143
	bne	s11,zero,.L13308
	mv	s11,s6
	beq	s10,zero,.L13199
	j	.L13309
.L13602:
	ld	a7,0(a0)
	lw	a3,0(a7)
	ble	a3,zero,.L13096
	li	t1,0
	li	a6,0
.L13098:
	slli	a3,a6,5
	add	a3,a7,a3
	ld	a0,24(a3)
	mv	a2,s10
	mv	a3,s11
	sd	a5,64(sp)
	sd	t1,56(sp)
	sd	a4,48(sp)
	sd	t4,40(sp)
	sd	a6,32(sp)
	sd	a7,24(sp)
	sd	a1,16(sp)
	call	sqlite3MatchSpanName
	ld	a1,16(sp)
	ld	a7,24(sp)
	ld	a6,32(sp)
	ld	t4,40(sp)
	ld	a4,48(sp)
	ld	t1,56(sp)
	ld	a5,64(sp)
	li	t5,1
	beq	a0,zero,.L13097
	addiw	s3,s3,1
	sh	a6,48(s2)
	mv	s8,s1
	li	t1,1
	li	a5,2
.L13097:
	lw	a3,0(a7)
	addiw	a6,a6,1
	bgt	a3,a6,.L13098
	bne	t1,zero,.L13560
.L13096:
	beq	s10,zero,.L13560
	beq	s11,zero,.L13290
	ld	a3,112(s5)
	beq	t4,a3,.L13290
.L13560:
	lw	a3,0(s4)
	j	.L13099
.L13603:
	beq	s10,zero,.L13128
.L13319:
	bne	a5,zero,.L13128
	ld	a4,168(s7)
	beq	a4,zero,.L13141
	lbu	a7,200(s7)
	li	a4,121
	mv	a0,s10
	bne	a7,a4,.L13604
.L13561:
	li	a2,111
	lla	a6,.LC141
	j	.L13142
.L13138:
	add	a3,s0,a3
	add	a4,s0,a4
	lbu	a3,320(a3)
	lbu	a4,320(a4)
	bne	a3,a4,.L13141
.L13140:
	lbu	a2,1(a6)
	addi	a6,a6,1
	addi	a0,a0,1
.L13142:
	lbu	a4,0(a0)
	sext.w	a3,a2
	bne	a2,a4,.L13138
	bne	a3,zero,.L13140
	sw	zero,44(s2)
	ld	s1,168(s7)
	j	.L13302
.L13101:
	beq	s10,zero,.L13102
.L13290:
	ld	a7,24(s1)
	mv	a0,a7
	beq	a7,zero,.L13605
.L13103:
	mv	a6,s10
	j	.L13107
.L13104:
	add	a3,s0,a3
	add	a2,s0,a2
	lbu	t1,320(a3)
	lbu	a3,320(a2)
	bne	t1,a3,.L13560
.L13106:
	addi	a0,a0,1
	addi	a6,a6,1
.L13107:
	lbu	a3,0(a0)
	lbu	a2,0(a6)
	bne	a3,a2,.L13104
	bne	a3,zero,.L13106
	lbu	a3,276(s7)
	bleu	a3,t5,.L13102
	bne	a7,zero,.L13606
.L13102:
	addiw	t2,a5,1
	bne	a5,zero,.L13110
	mv	s8,s1
.L13110:
	lh	t0,70(s5)
	ld	a5,8(s5)
	ble	t0,zero,.L13328
	li	a0,0
.L13124:
	ld	a7,0(a5)
	mv	a6,a1
	j	.L13115
.L13111:
	add	a3,s0,a3
	add	a2,s0,a2
	lbu	a3,320(a3)
	lbu	a2,320(a2)
	bne	a3,a2,.L13114
.L13113:
	addi	a7,a7,1
	addi	a6,a6,1
.L13115:
	lbu	a3,0(a7)
	lbu	a2,0(a6)
	bne	a3,a2,.L13111
	bne	a3,zero,.L13113
	bne	s3,t5,.L13117
	lbu	a3,60(s1)
	andi	a3,a3,4
	bne	a3,zero,.L13114
	ld	a2,80(s1)
	beq	a2,zero,.L13117
	lw	a3,8(a2)
	ble	a3,zero,.L13117
	ld	a6,0(a2)
	addiw	a3,a3,-1
	slli	a3,a3,32
	srli	a3,a3,28
	addi	a2,a6,16
	add	a3,a3,a2
.L13286:
	ld	t6,0(a6)
	mv	a2,a1
	j	.L13121
.L13118:
	add	a7,s0,a7
	add	t1,s0,t1
	lbu	a7,320(a7)
	lbu	t1,320(t1)
	bne	a7,t1,.L13120
.L13119:
	addi	t6,t6,1
	addi	a2,a2,1
.L13121:
	lbu	a7,0(t6)
	lbu	t1,0(a2)
	bne	a7,t1,.L13118
	bne	a7,zero,.L13119
.L13114:
	addiw	a0,a0,1
	addi	a5,a5,32
	bne	a0,t0,.L13124
.L13328:
	lw	a3,0(s4)
	mv	a5,t2
	j	.L13099
.L13605:
	ld	a0,0(s5)
	j	.L13103
.L13120:
	addi	a6,a6,16
	bne	a3,a6,.L13286
.L13117:
	lh	a5,68(s5)
	addiw	s3,s3,1
	bne	a5,a0,.L13123
	li	a0,-1
.L13123:
	sh	a0,48(s2)
	lw	a3,0(s4)
	mv	s8,s1
	mv	a5,t2
	j	.L13099
.L13268:
	ld	s0,16(s0)
	bne	s0,zero,.L13266
	j	.L13267
.L13606:
	ld	a3,400(s7)
	addi	a0,s2,64
	bne	a3,zero,.L13109
	j	.L13102
.L13108:
	ld	a3,24(a3)
	beq	a3,zero,.L13102
.L13109:
	ld	a2,0(a3)
	bne	a0,a2,.L13108
	sd	zero,0(a3)
	j	.L13102
.L13582:
	li	s3,0
	bne	s10,zero,.L13319
	j	.L13311
.L13341:
	li	a5,1
	j	.L13173
.L13136:
	li	a4,120
	bne	a7,a4,.L13607
.L13141:
	lw	a4,40(s6)
	andi	a4,a4,512
	beq	a4,zero,.L13131
	ld	a7,16(s6)
	li	s1,0
	beq	a7,zero,.L13131
.L13301:
	mv	a0,s10
	li	a2,101
	lla	a6,.LC142
	j	.L13147
.L13144:
	add	a3,s0,a3
	add	a4,s0,a4
	lbu	a3,320(a3)
	lbu	a4,320(a4)
	bne	a3,a4,.L13143
.L13146:
	lbu	a2,1(a6)
	addi	a6,a6,1
	addi	a0,a0,1
.L13147:
	lbu	a4,0(a0)
	sext.w	a3,a2
	bne	a2,a4,.L13144
	bne	a3,zero,.L13146
	ld	a4,40(a7)
	ld	s1,40(a4)
	li	a4,2
	sw	a4,44(s2)
.L13143:
	beq	s1,zero,.L13131
	lh	s4,70(s1)
	ld	t4,112(s1)
	ld	a7,8(s1)
	ble	s4,zero,.L13148
.L13298:
	ld	a0,0(a7)
	mv	a2,a1
	j	.L13153
.L13149:
	add	a4,s0,a4
	add	a3,s0,a3
	lbu	a6,320(a4)
	lbu	a4,320(a3)
	bne	a6,a4,.L13152
.L13151:
	addi	a0,a0,1
	addi	a2,a2,1
.L13153:
	lbu	a4,0(a0)
	lbu	a3,0(a2)
	bne	a4,a3,.L13149
	bne	a4,zero,.L13151
	lh	a4,68(s1)
	beq	a4,a5,.L13299
	bge	a5,s4,.L13148
	lw	a4,44(s2)
	li	a3,2
	addiw	s3,s3,1
	beq	a4,a3,.L13156
	li	a2,31
	bne	a4,zero,.L13163
	lw	a3,192(s7)
	li	a4,-1
	bgt	a5,a2,.L13164
	li	a4,1
	sllw	a4,a4,a5
	or	a4,a3,a4
	sext.w	a4,a4
.L13164:
	slliw	a5,a5,16
	sw	a4,192(s7)
	sraiw	a5,a5,16
.L13162:
	sd	s1,64(s2)
	sh	a5,48(s2)
	beq	s3,zero,.L13336
	li	s0,77
	j	.L13161
.L13131:
	beq	s3,zero,.L13337
.L13571:
	lbu	s0,88(sp)
.L13161:
	li	a5,1
	beq	s3,a5,.L13296
	mv	s11,s6
	lla	a2,.LC143
.L13309:
	mv	a4,a1
	mv	a3,s10
	lla	a1,.LC152
	mv	a0,s7
	call	sqlite3ErrorMsg
	mv	s6,s11
	j	.L13198
.L13220:
	li	a5,1
	bleu	a4,a5,.L13608
.L13222:
	mv	a1,s5
	mv	a0,s1
	call	sqlite3WalkExprList
	beq	s6,zero,.L13572
.L13235:
	ld	s4,64(s2)
	beq	s4,zero,.L13236
	lbu	a4,276(s7)
	li	a5,1
	ld	s6,48(s9)
	bleu	a4,a5,.L13609
.L13237:
	ld	a1,16(s4)
	mv	a0,s1
	call	sqlite3WalkExprList
	ld	a5,64(s2)
	mv	a0,s1
	ld	a1,24(a5)
	call	sqlite3WalkExprList
	ld	a2,64(s2)
	ld	a1,64(a2)
	beq	a1,zero,.L13256
	mv	a0,s1
	call	walkExpr
	ld	a2,64(s2)
.L13256:
	ld	a1,112(s6)
	beq	a1,zero,.L13257
	mv	a0,s7
	call	sqlite3WindowCompare
	bne	a0,zero,.L13258
	ld	a2,64(s2)
	ld	a1,112(s6)
.L13257:
	sd	a1,56(a2)
	ld	a5,64(s2)
	sd	a5,112(s6)
.L13258:
	lw	a5,40(s9)
	li	a4,32768
	or	a5,a5,a4
	sext.w	a5,a5
.L13259:
	li	a4,16384
	addi	a4,a4,1
	and	s3,s3,a4
	or	a5,a5,s3
	sw	a5,40(s9)
	li	a0,1
	j	.L13370
.L13600:
	mv	a0,a1
	sd	t4,24(sp)
	sd	a1,16(sp)
	call	sqlite3IsRowid
	ld	a1,16(sp)
	ld	t4,24(sp)
	beq	a0,zero,.L13168
	ld	a5,32(s8)
	lw	a5,64(a5)
	andi	a5,a5,64
	bne	a5,zero,.L13168
	li	a5,-1
	sh	a5,48(s2)
	li	a5,68
	lbu	s0,88(sp)
	sb	a5,1(s2)
	li	s3,1
	j	.L13172
.L13604:
	li	a2,110
	lla	a6,.LC140
	j	.L13137
.L13133:
	add	a3,s0,a3
	add	a4,s0,a4
	lbu	a3,320(a3)
	lbu	a4,320(a4)
	bne	a3,a4,.L13136
.L13135:
	lbu	a2,1(a6)
	addi	a6,a6,1
	addi	a0,a0,1
.L13137:
	lbu	a4,0(a0)
	sext.w	a3,a2
	bne	a2,a4,.L13133
	bne	a3,zero,.L13135
	li	a4,1
	sw	a4,44(s2)
	ld	s1,168(s7)
.L13302:
	lw	a4,40(s6)
	andi	a4,a4,512
	beq	a4,zero,.L13143
	ld	a7,16(s6)
	beq	a7,zero,.L13143
	j	.L13301
.L13337:
	li	a5,0
	j	.L13166
.L13591:
	ld	a5,32(a4)
	ld	a5,0(a5)
	lw	a2,0(a5)
	beq	a2,a3,.L13066
	j	.L13280
.L13078:
	lbu	a4,276(s7)
	li	a5,1
	ld	s10,8(s0)
	ld	a1,8(a3)
	bleu	a4,a5,.L13610
	ld	t4,400(s7)
	li	s11,0
	bne	t4,zero,.L13320
	ld	a5,0(s7)
	mv	s11,t4
	sd	a5,80(sp)
	li	a5,-1
	sw	a5,44(s2)
	j	.L13077
.L13601:
	lw	a5,4(s2)
	andi	a5,a5,64
	beq	a5,zero,.L13191
	ld	a3,80(sp)
	lbu	a5,181(a3)
	bne	a5,zero,.L13192
	lw	a4,40(s9)
	ld	a5,48(a3)
	slli	a3,a4,47
	bge	a3,zero,.L13193
	li	a4,268435456
	addi	a4,a4,1
	and	a4,a5,a4
	li	a3,1
	bne	a4,a3,.L13194
	slli	a4,a5,33
	blt	a4,zero,.L13192
.L13194:
	srli	a5,a5,29
	andi	a5,a5,1
.L13195:
	bne	a5,zero,.L13192
.L13191:
	mv	a0,s2
	sd	a1,8(sp)
	call	sqlite3ExprIdToTrueFalse
	ld	a1,8(sp)
	mv	s3,a0
	bne	a0,zero,.L13572
	lbu	s0,88(sp)
	li	s6,0
	lla	a2,.LC144
	bne	s11,zero,.L13308
.L13199:
	mv	a3,a1
	mv	a0,s7
	lla	a1,.LC153
	call	sqlite3ErrorMsg
	j	.L13198
.L13587:
	mv	a1,s0
	mv	a0,s1
	call	resolveExprStep
	li	a5,2
	beq	a0,a5,.L13203
	lbu	a4,0(s0)
	li	a5,159
	bne	a4,a5,.L13075
	lbu	a5,0(s2)
	li	a4,-89
	sb	a4,0(s2)
	sb	a5,54(s2)
	li	a0,0
	j	.L13370
.L13609:
	ld	a2,0(s4)
	ld	a1,120(s6)
	beq	a2,zero,.L13238
	lbu	a5,32(s4)
	beq	a5,zero,.L13611
.L13238:
	mv	a2,a1
	mv	a0,s7
	mv	a1,s4
	call	sqlite3WindowChain
	lbu	a4,32(s4)
.L13242:
	li	a5,86
	beq	a4,a5,.L13612
.L13243:
	lw	a5,4(s0)
	slli	a4,a5,47
	bge	a4,zero,.L13246
	ld	a5,64(s4)
	beq	a5,zero,.L13247
	lla	a1,.LC163
	mv	a0,s7
	call	sqlite3ErrorMsg
.L13246:
	sd	s0,72(s4)
.L13567:
	ld	s4,64(s2)
	j	.L13237
.L13593:
	ld	a5,40(s5)
	li	a2,-1
	li	a4,145
	lbu	a3,0(a5)
	sd	a2,112(sp)
	bne	a3,a4,.L13216
	ld	s8,8(a5)
	beq	s8,zero,.L13345
	mv	a0,s8
	call	strlen@plt
	slli	a2,a0,34
	srli	a2,a2,34
.L13215:
	li	a3,1
	addi	a1,sp,112
	mv	a0,s8
	call	sqlite3Atoi64
	fld	fa4,.LC154,a5
	ld	a5,112(sp)
	fcvt.d.l	fa5,a5
	fgt.d	a5,fa5,fa4
	bne	a5,zero,.L13216
	fld	fa4,.LC155,a5
	fmul.d	fa5,fa5,fa4
	fcvt.w.d a5,fa5,rtz
	sw	a5,44(s2)
	slli	a4,a5,32
	bge	a4,zero,.L13565
.L13214:
	lla	a1,.LC156
	mv	a0,s7
	call	sqlite3ErrorMsg
	lw	a5,36(s9)
	addiw	a5,a5,1
	sw	a5,36(s9)
	lw	a5,4(s0)
	j	.L13211
.L13152:
	addiw	a5,a5,1
	addi	a7,a7,32
	bne	a5,s4,.L13298
.L13148:
	mv	a0,a1
	sd	t4,24(sp)
	sd	a1,16(sp)
	call	sqlite3IsRowid
	ld	a1,16(sp)
	ld	t4,24(sp)
	beq	a0,zero,.L13155
	lw	a5,64(s1)
	andi	a5,a5,64
	bne	a5,zero,.L13155
	blt	s4,zero,.L13155
.L13299:
	lw	a4,44(s2)
	li	a5,2
	addiw	s3,s3,1
	beq	a4,a5,.L13613
	li	a5,68
	sb	a5,1(s2)
	li	a5,-1
	j	.L13162
.L13599:
	ld	a5,80(sp)
	lw	a5,40(a5)
	ble	a5,zero,.L13558
	ld	a4,80(sp)
	addiw	t1,a5,-1
	slli	t1,t1,32
	ld	a7,32(a4)
	srli	t1,t1,27
	lla	a0,.LANCHOR2
	addi	a5,a7,32
	add	t1,t1,a5
.L13304:
	ld	a2,0(a7)
	mv	a3,s11
	j	.L13091
.L13087:
	add	a5,a0,a5
	add	a4,a0,a4
	lbu	a6,320(a5)
	lbu	a5,320(a4)
	bne	a6,a5,.L13090
.L13089:
	addi	a2,a2,1
	addi	a3,a3,1
.L13091:
	lbu	a5,0(a2)
	lbu	a4,0(a3)
	bne	a5,a4,.L13087
	bne	a5,zero,.L13089
	ld	t4,24(a7)
	j	.L13077
.L13090:
	addi	a7,a7,32
	bne	t1,a7,.L13304
.L13558:
	li	t4,0
	j	.L13077
.L13589:
	ld	a2,32(s2)
	li	a1,168
	ld	a4,8(a2)
	lbu	a5,0(a4)
	bne	a5,a1,.L13277
	lbu	a5,54(a4)
.L13277:
	li	a1,169
	beq	a5,a1,.L13614
	li	a0,131
	li	a1,1
	beq	a5,a0,.L13615
.L13279:
	bne	a3,a1,.L13280
	ld	a4,40(a2)
	li	a2,168
	lbu	a5,0(a4)
	bne	a5,a2,.L13284
.L13579:
	lbu	a5,54(a4)
	j	.L13284
.L13615:
	ld	a5,32(a4)
	ld	a5,0(a5)
	lw	a1,0(a5)
	j	.L13279
.L13155:
	beq	s3,zero,.L13160
	j	.L13571
.L13594:
	lw	a1,40(s9)
	li	a3,34
	lla	a2,.LC157
	mv	a0,s7
	call	notValid.isra.0
	lw	a5,4(s0)
	j	.L13219
.L13608:
	ld	a5,40(s0)
	snez	s6,s6
	li	s8,0
	beq	a5,zero,.L13323
.L13223:
	li	a1,0
	bne	s6,zero,.L13314
	bne	s8,zero,.L13368
.L13555:
	mv	a1,s5
	mv	a0,s1
	call	sqlite3WalkExprList
	li	a0,1
	j	.L13370
.L13588:
	ld	a5,32(a4)
	lw	a3,0(a5)
	j	.L13275
.L13344:
	li	s4,0
	j	.L13207
.L13592:
	ld	a0,0(s7)
	li	a4,0
	mv	a3,s6
	li	a2,-2
	mv	a1,s10
	call	sqlite3FindFunction
	mv	s0,a0
	beq	a0,zero,.L13616
	lbu	a4,276(s7)
	li	a5,1
	bgtu	a4,a5,.L13555
	ld	a5,40(a0)
	beq	a5,zero,.L13617
.L13368:
	li	s8,0
.L13322:
	mv	a3,s10
	mv	a2,s4
	lla	a1,.LC161
.L13566:
	mv	a0,s7
	call	sqlite3ErrorMsg
	lw	a5,36(s9)
	addiw	a5,a5,1
	sw	a5,36(s9)
.L13224:
	beq	s8,zero,.L13555
	lw	a5,40(s9)
	ld	a3,64(s2)
.L13232:
	li	a4,-16384
	beq	a3,zero,.L13352
	addi	a4,a4,-1
.L13234:
	and	a5,a5,a4
	sw	a5,40(s9)
	mv	a1,s5
	mv	a0,s1
	call	sqlite3WalkExprList
	j	.L13235
.L13617:
	li	s8,1
	li	s6,0
.L13323:
	lw	a5,4(s2)
	slli	a4,a5,39
	bge	a4,zero,.L13223
	mv	a3,s10
	mv	a2,s4
	lla	a1,.LC158
	mv	a0,s7
	call	sqlite3ErrorMsg
	lw	a5,36(s9)
	mv	s8,s6
	addiw	a5,a5,1
	sw	a5,36(s9)
	j	.L13224
.L13590:
	ld	a5,32(a4)
	lw	a2,0(a5)
	beq	a2,a3,.L13066
	j	.L13280
.L13236:
	li	a5,-93
	sb	a5,0(s2)
	sb	zero,54(s2)
	mv	s1,s9
	addi	s5,sp,112
	lla	s6,exprSrcCount
	addi	s4,sp,96
.L13261:
	ld	a5,8(s1)
	ld	a1,32(s2)
	mv	a0,s5
	sd	a5,96(sp)
	sd	s6,120(sp)
	sd	zero,128(sp)
	sd	s4,152(sp)
	sd	zero,104(sp)
	call	sqlite3WalkExprList
	lw	a5,104(sp)
	ble	a5,zero,.L13618
.L13260:
	lw	a5,4(s0)
	lw	a4,40(s1)
	li	a3,4096
	and	a5,a5,a3
	or	a5,a5,a4
	ori	a5,a5,16
	sw	a5,40(s1)
	lw	a5,40(s9)
	j	.L13259
.L13618:
	lw	a5,108(sp)
	beq	a5,zero,.L13260
	lbu	a5,54(s2)
	addiw	a5,a5,1
	sb	a5,54(s2)
	ld	s1,24(s1)
	bne	s1,zero,.L13261
	lw	a5,40(s9)
	j	.L13259
.L13595:
	ld	a3,64(s2)
	beq	a4,zero,.L13226
	beq	a3,zero,.L13349
.L13228:
	slli	a4,a5,49
	bge	a4,zero,.L13349
.L13229:
	beq	a1,zero,.L13230
	ld	a4,0(s7)
	lbu	a4,181(a4)
	beq	a4,zero,.L13619
.L13230:
	bne	s8,zero,.L13322
	j	.L13232
.L13349:
	lla	a2,.LC145
	j	.L13227
.L13619:
	mv	s8,a1
.L13307:
	mv	a3,s10
	mv	a2,s4
	lla	a1,.LC160
	j	.L13566
.L13598:
	addi	a4,s2,64
	j	.L13085
.L13613:
	li	a5,-1
.L13156:
	lbu	a3,276(s7)
	li	a4,1
	bleu	a3,a4,.L13159
	sh	a5,48(s2)
	sd	s1,64(s2)
	beq	s3,zero,.L13332
	li	s0,162
	j	.L13161
.L13226:
	bne	a3,zero,.L13228
	j	.L13229
.L13616:
	lbu	a4,276(s7)
	li	a5,1
	bgtu	a4,a5,.L13555
.L13315:
	ld	a5,0(s7)
	lbu	a5,181(a5)
	bne	a5,zero,.L13555
	li	s8,0
	li	s0,0
	j	.L13307
.L13614:
	ld	a5,32(a4)
	lw	a1,0(a5)
	j	.L13279
.L13163:
	lw	a3,196(s7)
	li	a4,-1
	bgt	a5,a2,.L13165
	li	a4,1
	sllw	a4,a4,a5
	or	a4,a3,a4
	sext.w	a4,a4
.L13165:
	slliw	a5,a5,16
	sw	a4,196(s7)
	sraiw	a5,a5,16
	j	.L13162
.L13192:
	mv	a2,a1
	li	a0,28
	lla	a1,.LC150
	call	sqlite3_log@plt
	li	a5,110
	sb	a5,0(s2)
	sd	zero,64(s2)
	li	a0,1
	j	.L13370
.L13610:
	ld	a5,0(s7)
	li	t4,0
	li	s11,0
	sd	a5,80(sp)
	li	a5,-1
	sw	a5,44(s2)
	j	.L13077
.L13159:
	ld	a4,16(s6)
	lw	a3,4(s2)
	li	a2,4194304
	lw	a4,48(a4)
	or	a3,a3,a2
	sw	a3,4(s2)
	addw	a5,a4,a5
	sw	a5,44(s2)
	beq	s3,zero,.L13333
	li	s0,168
	j	.L13161
.L13352:
	addi	a4,a4,-2
	j	.L13234
.L13332:
	li	a5,162
	sd	a5,88(sp)
	j	.L13160
.L13586:
	ld	a5,32(a4)
	ld	a5,0(a5)
	lw	a4,0(a5)
.L13185:
	li	a5,1
	beq	a4,a5,.L13186
	mv	a0,s7
	lla	a1,.LC82
	call	sqlite3ErrorMsg
	li	a0,2
	j	.L13370
.L13612:
	ld	a5,40(s4)
	beq	a5,zero,.L13620
.L13244:
	ld	a5,24(s4)
	beq	a5,zero,.L13245
	lw	a4,0(a5)
	li	a5,1
	beq	a4,a5,.L13243
.L13245:
	lla	a1,.LC162
	mv	a0,s7
	call	sqlite3ErrorMsg
	sd	s0,72(s4)
	j	.L13567
.L13611:
	mv	a0,s7
	call	windowFind
	mv	s5,a0
	beq	a0,zero,.L13567
	ld	a1,16(a0)
	ld	a0,0(s7)
	li	a2,0
	call	sqlite3ExprListDup
	sd	a0,16(s4)
	ld	a1,24(s5)
	ld	a0,0(s7)
	li	a2,0
	call	sqlite3ExprListDup
	sd	a0,24(s4)
	ld	a1,40(s5)
	beq	a1,zero,.L13240
	ld	a0,0(s7)
	li	a3,0
	li	a2,0
	call	exprDup
	mv	a1,a0
.L13240:
	sd	a1,40(s4)
	ld	a1,48(s5)
	beq	a1,zero,.L13241
	ld	a0,0(s7)
	li	a3,0
	li	a2,0
	call	exprDup
	mv	a1,a0
.L13241:
	sd	a1,48(s4)
	lbu	a5,33(s5)
	sb	a5,33(s4)
	lbu	a5,34(s5)
	sb	a5,34(s4)
	lbu	a4,32(s5)
	sb	a4,32(s4)
	lbu	a5,36(s5)
	sb	a5,36(s4)
	j	.L13242
.L13585:
	ld	a5,32(a4)
	lw	a4,0(a5)
	j	.L13185
.L13333:
	li	a5,168
	sd	a5,88(sp)
	j	.L13160
.L13193:
	srli	a5,a5,30
	andi	a5,a5,1
	j	.L13195
.L13247:
	ld	s8,0(s7)
	addi	s5,sp,112
	lla	a5,.LANCHOR1+464
	mv	a4,s5
	lla	a7,.LANCHOR1+656
.L13248:
	ld	a6,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	sd	a6,0(a4)
	sd	a1,8(a4)
	sd	a2,16(a4)
	sd	a3,24(a4)
	addi	a5,a5,32
	addi	a4,a4,32
	bne	a5,a7,.L13248
	ld	a3,56(s0)
	li	s10,0
	li	a4,8
.L13254:
	ld	a5,0(s5)
	beq	a3,a5,.L13621
	addiw	s10,s10,1
	addi	s5,s5,24
	bne	s10,a4,.L13254
	sd	s0,72(s4)
	j	.L13567
.L13345:
	li	a2,0
	j	.L13215
.L13620:
	ld	a5,48(s4)
	bne	a5,zero,.L13244
	j	.L13243
.L13584:
	mv	a0,s7
	mv	a2,t5
	lla	a1,.LC149
	call	sqlite3ErrorMsg
	li	a0,2
	j	.L13370
.L13583:
	mv	a0,s7
	mv	a2,t5
	lla	a1,.LC148
	call	sqlite3ErrorMsg
	li	a0,2
	j	.L13370
.L13621:
	ld	a1,40(s4)
	beq	a1,zero,.L13250
	mv	a0,s8
	call	sqlite3ExprDeleteNN
.L13250:
	ld	a1,48(s4)
	beq	a1,zero,.L13251
	mv	a0,s8
	call	sqlite3ExprDeleteNN
.L13251:
	li	a5,24
	mul	a5,s10,a5
	addi	a4,sp,304
	sd	zero,40(s4)
	sd	zero,48(s4)
	li	a3,83
	add	a5,a4,a5
	lw	a4,-184(a5)
	sb	a4,32(s4)
	lbu	a4,-180(a5)
	sb	a4,33(s4)
	lw	a5,-176(a5)
	sb	zero,36(s4)
	sb	a5,34(s4)
	bne	a4,a3,.L13246
	lla	a2,.LC165
	li	a1,147
	mv	a0,s8
	call	sqlite3Expr
	sd	a0,40(s4)
	sd	s0,72(s4)
	j	.L13567
.L13216:
	li	a5,-1
	sw	a5,44(s2)
	j	.L13214
.L13607:
	mv	a0,s10
	j	.L13561
	.size	resolveExprStep, .-resolveExprStep
	.section	.text.resolveOrderGroupBy,"ax",@progbits
	.align	1
	.type	resolveOrderGroupBy, @function
resolveOrderGroupBy:
	beq	a2,zero,.L13641
	addi	sp,sp,-192
	sd	s0,176(sp)
	sd	s2,160(sp)
	sd	s3,152(sp)
	sd	s4,144(sp)
	sd	s7,120(sp)
	sd	ra,184(sp)
	sd	s1,168(sp)
	sd	s5,136(sp)
	sd	s6,128(sp)
	sd	s8,112(sp)
	sd	s9,104(sp)
	sd	s10,96(sp)
	sd	s11,88(sp)
	ld	a4,0(a1)
	lw	a5,0(a2)
	ld	s9,0(a0)
	lw	a4,0(a4)
	mv	s3,a2
	mv	s7,a0
	sd	a4,8(sp)
	mv	s2,a1
	mv	s4,a3
	addi	s0,a2,8
	ble	a5,zero,.L13624
	li	s6,65536
	li	s1,0
	li	s8,262144
	addi	s5,sp,32
	addi	s6,s6,-2
.L13640:
	ld	s10,0(s0)
	li	a3,266240
	mv	s11,s10
	beq	s10,zero,.L13626
.L13625:
	lw	a5,4(s11)
	and	a4,a5,a3
	sext.w	a4,a4
	and	a5,a5,s8
	sext.w	a5,a5
	beq	a4,zero,.L13626
	beq	a5,zero,.L13627
	ld	a5,32(s11)
	ld	s11,8(a5)
	bne	s11,zero,.L13625
.L13626:
	lbu	a4,0(s4)
	li	a5,71
	beq	a4,a5,.L13632
	lbu	a4,0(s11)
	li	a5,59
	beq	a4,a5,.L13631
	sw	zero,28(sp)
.L13632:
	addi	a1,sp,28
	mv	a0,s11
	call	sqlite3ExprIsInteger
	beq	a0,zero,.L13634
	lw	a5,28(sp)
	addiw	a4,a5,-1
	bgtu	a4,s6,.L13658
	sh	a5,28(s0)
.L13633:
	lw	a5,0(s3)
	addiw	s1,s1,1
	addi	s0,s0,32
	bgt	a5,s1,.L13640
.L13624:
	mv	a3,s4
	mv	a2,s3
	mv	a1,s2
	mv	a0,s9
	call	sqlite3ResolveOrderGroupBy.isra.0
	j	.L13623
.L13627:
	ld	s11,16(s11)
	bne	s11,zero,.L13625
	j	.L13626
.L13631:
	ld	a0,0(s2)
	addi	a1,s11,8
	call	resolveAsName.isra.0.part.0
	sw	a0,28(sp)
	ble	a0,zero,.L13632
	sh	a0,28(s0)
	j	.L13633
.L13658:
	ld	a4,8(sp)
	mv	a0,s9
	mv	a3,s4
	addiw	a2,s1,1
	lla	a1,.LC89
	call	sqlite3ErrorMsg
	li	a0,1
.L13623:
	ld	ra,184(sp)
	ld	s0,176(sp)
	ld	s1,168(sp)
	ld	s2,160(sp)
	ld	s3,152(sp)
	ld	s4,144(sp)
	ld	s5,136(sp)
	ld	s6,128(sp)
	ld	s7,120(sp)
	ld	s8,112(sp)
	ld	s9,104(sp)
	ld	s10,96(sp)
	ld	s11,88(sp)
	addi	sp,sp,192
	jr	ra
.L13634:
	sh	zero,28(s0)
	mv	a1,s10
	mv	a0,s7
	call	sqlite3ResolveExprNames
	mv	s11,a0
	bne	a0,zero,.L13643
	ld	a5,0(s2)
	lw	a4,0(a5)
	bgt	a4,zero,.L13639
	j	.L13633
.L13637:
	ld	a5,0(s2)
	sext.w	s11,a4
	lw	a4,0(a5)
	ble	a4,s11,.L13633
.L13639:
	slli	a4,s11,5
	add	a5,a5,a4
	ld	a2,8(a5)
	li	a3,-1
	mv	a1,s10
	li	a0,0
	call	sqlite3ExprCompare
	addiw	a4,s11,1
	bne	a0,zero,.L13637
	sd	zero,0(s5)
	sd	zero,16(s5)
	sd	zero,24(s5)
	sd	zero,32(s5)
	lla	a5,resolveRemoveWindowsCb
	sd	a5,40(sp)
	sd	s2,72(sp)
	mv	a1,s10
	mv	a0,s5
	beq	s10,zero,.L13638
	call	walkExpr
.L13638:
	addiw	a4,s11,1
	sh	a4,28(s0)
	j	.L13637
.L13641:
	li	a0,0
	ret
.L13643:
	li	a0,1
	j	.L13623
	.size	resolveOrderGroupBy, .-resolveOrderGroupBy
	.section	.rodata.str1.8
	.align	3
.LC168:
	.string	"UNION"
	.align	3
.LC169:
	.string	"EXCEPT"
	.align	3
.LC170:
	.string	"INTERSECT"
	.align	3
.LC171:
	.string	"UNION ALL"
	.align	3
.LC172:
	.string	"a GROUP BY clause is required before HAVING"
	.align	3
.LC173:
	.string	"ORDER"
	.align	3
.LC174:
	.string	"GROUP"
	.align	3
.LC175:
	.string	"aggregate functions are not allowed in the GROUP BY clause"
	.align	3
.LC176:
	.string	"all VALUES must have the same number of terms"
	.align	3
.LC177:
	.string	"SELECTs to the left and right of %s do not have the same number of result columns"
	.align	3
.LC178:
	.string	"too many terms in ORDER BY clause"
	.align	3
.LC179:
	.string	"%r ORDER BY term does not match any column in the result set"
	.section	.text.resolveSelectStep,"ax",@progbits
	.align	1
	.type	resolveSelectStep, @function
resolveSelectStep:
	addi	sp,sp,-304
	sd	ra,296(sp)
	sd	s0,288(sp)
	sd	s1,280(sp)
	sd	s2,272(sp)
	sd	s3,264(sp)
	sd	s4,256(sp)
	sd	s5,248(sp)
	sd	s6,240(sp)
	sd	s7,232(sp)
	sd	s8,224(sp)
	sd	s9,216(sp)
	sd	s10,208(sp)
	sd	s11,200(sp)
	lw	a5,12(a1)
	sd	a1,0(sp)
	andi	a4,a5,4
	bne	a4,zero,.L13708
	ld	s0,0(a0)
	andi	a4,a5,64
	ld	s1,40(a0)
	ld	s5,0(s0)
	beq	a4,zero,.L13821
	ld	s11,0(sp)
	li	s9,16384
	sd	zero,16(sp)
	ld	a4,80(s11)
	addi	s2,sp,80
	addi	s4,sp,88
	sd	a4,40(sp)
	snez	a4,a4
	sd	a4,24(sp)
	addi	a4,s9,1
	addi	s8,sp,136
	sd	a4,8(sp)
.L13706:
	ori	a5,a5,4
	ld	a1,96(s11)
	sw	a5,12(s11)
	sd	zero,8(s4)
	sd	zero,16(s4)
	sd	zero,24(s4)
	sd	zero,32(s4)
	mv	a0,s2
	sd	zero,0(s4)
	sd	s0,80(sp)
	sd	s11,128(sp)
	call	sqlite3ResolveExprNames
	bne	a0,zero,.L13820
	lw	a5,12(s11)
	ld	s9,40(s11)
	slli	a4,a5,47
	blt	a4,zero,.L13822
.L13665:
	lw	a5,0(s9)
	li	s6,0
	bgt	a5,zero,.L13666
	j	.L13676
.L13669:
	lw	a5,0(s9)
	addiw	s6,s6,1
	ble	a5,s6,.L13676
.L13666:
	slli	s3,s6,3
	sub	a5,s3,s6
	slli	a5,a5,4
	add	a5,s9,a5
	ld	a1,48(a5)
	beq	a1,zero,.L13669
	lw	a5,12(a1)
	andi	a5,a5,4
	bne	a5,zero,.L13669
	ld	s7,336(s0)
	li	s10,0
	beq	s1,zero,.L13670
	mv	a5,s1
.L13671:
	lw	a0,32(a5)
	ld	a5,24(a5)
	addw	s10,a0,s10
	bne	a5,zero,.L13671
.L13670:
	sub	a5,s3,s6
	slli	a5,a5,4
	add	a5,s9,a5
	ld	a0,24(a5)
	beq	a0,zero,.L13672
	sd	a0,336(s0)
	ld	a1,48(a5)
	lla	a5,resolveExprStep
	sd	a5,144(sp)
	lla	a5,resolveSelectStep
	sd	a5,152(sp)
	sd	zero,160(sp)
	sd	s0,136(sp)
	sd	s1,176(sp)
	beq	a1,zero,.L13673
.L13751:
	mv	a0,s8
	call	sqlite3WalkSelect.part.0
.L13673:
	lw	a5,48(s0)
	sd	s7,336(s0)
	bne	a5,zero,.L13820
	lbu	a5,97(s5)
	bne	a5,zero,.L13820
	beq	s1,zero,.L13674
	mv	a5,s1
.L13675:
	lw	a1,32(a5)
	ld	a5,24(a5)
	subw	s10,s10,a1
	bne	a5,zero,.L13675
.L13674:
	sub	a2,s3,s6
	slli	a2,a2,4
	add	a3,s9,a2
	lbu	a5,69(a3)
	snez	s10,s10
	slli	a2,s10,3
	andi	s10,a5,-9
	or	s10,s10,a2
	sb	s10,69(a3)
	ld	s9,40(s11)
	addiw	s6,s6,1
	lw	a5,0(s9)
	bgt	a5,s6,.L13666
.L13676:
	ld	a5,8(sp)
	sd	s1,104(sp)
	sw	a5,120(sp)
	ld	a5,40(s11)
	sd	a5,88(sp)
	ld	a1,0(s11)
	beq	a1,zero,.L13823
	mv	a0,s2
	call	sqlite3ResolveExprListNames.part.0
	bne	a0,zero,.L13820
	lw	a4,120(sp)
	li	a5,-16384
	addi	a5,a5,-1
	ld	s3,56(s11)
	and	a5,a4,a5
	sw	a5,120(sp)
	beq	s3,zero,.L13824
.L13677:
	lw	a4,12(s11)
	li	a3,4096
	and	a5,a5,a3
	or	a5,a5,a4
	ori	a5,a5,8
	sw	a5,12(s11)
	ld	a1,64(s11)
	lw	a5,120(sp)
.L13680:
	ld	a4,0(s11)
	ori	a5,a5,128
	mv	a0,s2
	sd	a4,96(sp)
	sw	a5,120(sp)
	call	sqlite3ResolveExprNames
	bne	a0,zero,.L13820
	ld	a1,48(s11)
	mv	a0,s2
	call	sqlite3ResolveExprNames
	sd	a0,32(sp)
	bne	a0,zero,.L13820
	ld	s9,40(s11)
	li	s10,0
	lw	a5,0(s9)
	ble	a5,zero,.L13685
.L13681:
	slli	a5,s10,3
	sub	a5,a5,s10
	slli	a5,a5,4
	add	a5,s9,a5
	lbu	a2,69(a5)
	andi	a2,a2,4
	beq	a2,zero,.L13686
	ld	a1,104(a5)
	mv	a0,s2
	beq	a1,zero,.L13686
	call	sqlite3ResolveExprListNames.part.0
	bne	a0,zero,.L13820
	ld	s9,40(s11)
.L13686:
	lw	a5,0(s9)
	addiw	s10,s10,1
	bgt	a5,s10,.L13681
.L13685:
	lw	a5,120(sp)
	ld	a4,8(sp)
	sd	zero,104(sp)
	or	a5,a5,a4
	sw	a5,120(sp)
	lw	a5,12(s11)
	slli	a4,a5,47
	blt	a4,zero,.L13682
	ld	a5,24(sp)
	ld	a4,16(sp)
	ble	a5,a4,.L13687
.L13689:
	lbu	a5,97(s5)
	bne	a5,zero,.L13820
	lw	a5,120(sp)
	li	a4,-16384
	addi	a4,a4,-1
	and	a5,a5,a4
	sw	a5,120(sp)
	bne	s3,zero,.L13690
.L13693:
	lbu	a4,276(s0)
	li	a5,1
	bgtu	a4,a5,.L13825
.L13692:
	ld	a5,88(s11)
	beq	a5,zero,.L13697
	ld	a3,0(s11)
	ld	a4,0(a5)
	lw	a3,0(a3)
	lw	a4,0(a4)
	bne	a3,a4,.L13826
.L13697:
	ld	a5,16(sp)
	ld	s11,80(s11)
	addiw	a5,a5,1
	sd	a5,16(sp)
	beq	s11,zero,.L13705
	lw	a5,12(s11)
	j	.L13706
.L13672:
	lla	a5,resolveExprStep
	sd	a5,144(sp)
	lla	a5,resolveSelectStep
	sd	a5,152(sp)
	sd	zero,160(sp)
	sd	s0,136(sp)
	sd	s1,176(sp)
	j	.L13751
.L13829:
	ld	a4,0(sp)
	ld	a4,88(a4)
	sd	a4,0(sp)
	beq	a4,zero,.L13747
	ld	a4,48(sp)
	bne	a4,zero,.L13746
.L13747:
	bgt	a5,zero,.L13745
	j	.L13708
.L13748:
	ld	a4,32(sp)
	beq	a5,a4,.L13708
.L13745:
	ld	a3,32(sp)
	slli	a4,a3,5
	add	a4,s1,a4
	ld	a4,32(a4)
	addiw	a3,a3,1
	sd	a3,32(sp)
	srli	a4,a4,8
	andi	a4,a4,1
	bne	a4,zero,.L13748
	mv	a2,a3
	lla	a1,.LC179
	mv	a0,s0
	call	sqlite3ErrorMsg
.L13820:
	li	a0,2
.L13816:
	ld	ra,296(sp)
	ld	s0,288(sp)
	ld	s1,280(sp)
	ld	s2,272(sp)
	ld	s3,264(sp)
	ld	s4,256(sp)
	ld	s5,248(sp)
	ld	s6,240(sp)
	ld	s7,232(sp)
	ld	s8,224(sp)
	ld	s9,216(sp)
	ld	s10,208(sp)
	ld	s11,200(sp)
	addi	sp,sp,304
	jr	ra
.L13822:
	ld	a5,48(s9)
	ld	a4,72(s11)
	sd	a4,72(a5)
	ld	s9,40(s11)
	sd	zero,72(s11)
	j	.L13665
.L13821:
	mv	a2,s1
	mv	a0,s0
	call	sqlite3SelectPrep
	lw	a5,48(s0)
	bne	a5,zero,.L13820
	lbu	a5,97(s5)
	bne	a5,zero,.L13820
.L13708:
	li	a0,1
	j	.L13816
.L13682:
	ld	a5,40(s11)
	ld	a5,48(a5)
	ld	a4,72(a5)
	sd	a4,72(s11)
	sd	zero,72(a5)
	ld	a4,16(sp)
	ld	a5,24(sp)
	bgt	a5,a4,.L13689
.L13687:
	ld	a2,72(s11)
	lla	a3,.LC173
	mv	a1,s11
	mv	a0,s2
	call	resolveOrderGroupBy
	beq	a0,zero,.L13689
	j	.L13820
.L13823:
	ld	s3,56(s11)
	li	a5,1
	sw	a5,120(sp)
	bne	s3,zero,.L13677
	ld	a1,64(s11)
	ld	a4,8(sp)
.L13750:
	li	a5,-16384
	addi	a5,a5,-2
	and	a5,a4,a5
	sw	a5,120(sp)
	bne	a1,zero,.L13679
	li	s3,0
	j	.L13680
.L13824:
	andi	a3,a4,16
	ld	a1,64(s11)
	beq	a3,zero,.L13750
	lw	a4,12(s11)
	li	a3,4096
	and	a5,a5,a3
	or	a5,a5,a4
	ori	a5,a5,8
	sw	a5,12(s11)
	bne	a1,zero,.L13679
	lw	a5,120(sp)
	mv	s3,a1
	j	.L13680
.L13690:
	lla	a3,.LC174
	mv	a2,s3
	mv	a1,s11
	mv	a0,s2
	call	resolveOrderGroupBy
	bne	a0,zero,.L13820
	lbu	a5,97(s5)
	bne	a5,zero,.L13820
	lw	a4,0(s3)
	addi	a5,s3,8
	ble	a4,zero,.L13693
	addiw	a4,a4,-1
	slli	a4,a4,32
	srli	a4,a4,27
	addi	a4,a4,40
	add	s10,s3,a4
	j	.L13695
.L13694:
	beq	a5,s10,.L13693
.L13695:
	ld	a4,0(a5)
	addi	a5,a5,32
	lw	a4,4(a4)
	andi	a4,a4,16
	beq	a4,zero,.L13694
	mv	a0,s0
	lla	a1,.LC175
	call	sqlite3ErrorMsg
	li	a0,2
	j	.L13816
.L13825:
	ld	s10,120(s11)
	bne	s10,zero,.L13702
	j	.L13692
.L13701:
	ld	a1,16(s10)
	mv	a0,s2
	beq	a1,zero,.L13700
	call	sqlite3ResolveExprListNames.part.0
	bne	a0,zero,.L13820
.L13700:
	ld	s10,56(s10)
	beq	s10,zero,.L13692
.L13702:
	ld	a1,24(s10)
	mv	a0,s2
	beq	a1,zero,.L13701
	call	sqlite3ResolveExprListNames.part.0
	beq	a0,zero,.L13701
	j	.L13820
.L13826:
	lw	a4,12(a5)
	andi	a4,a4,512
	bne	a4,zero,.L13827
	lbu	a5,8(a5)
	li	a4,129
	lla	a2,.LC169
	beq	a5,a4,.L13704
	li	a4,130
	lla	a2,.LC170
	beq	a5,a4,.L13704
	li	a4,128
	lla	a2,.LC168
	beq	a5,a4,.L13828
.L13704:
	mv	a0,s0
	lla	a1,.LC177
	call	sqlite3ErrorMsg
	li	a0,2
	j	.L13816
.L13705:
	ld	a5,40(sp)
	beq	a5,zero,.L13708
	ld	a5,0(sp)
	ld	s1,72(a5)
	beq	s1,zero,.L13708
	ld	s5,0(s0)
	lw	a3,0(s1)
	lw	a5,132(s5)
	blt	a5,a3,.L13709
	li	a5,0
	ble	a3,zero,.L13713
.L13710:
	slli	a4,a5,5
	add	a4,s1,a4
	lbu	a2,33(a4)
	addiw	a5,a5,1
	andi	a2,a2,-2
	sb	a2,33(a4)
	bne	a3,a5,.L13710
.L13713:
	ld	a4,0(sp)
	ld	a5,80(a4)
	sd	zero,88(a4)
	beq	a5,zero,.L13712
.L13711:
	ld	a4,0(sp)
	sd	a4,88(a5)
	ld	a5,80(a4)
	sd	a5,0(sp)
	ld	a5,80(a5)
	bne	a5,zero,.L13711
.L13712:
	lw	a5,0(s1)
	addi	a4,s1,8
	sd	a4,56(sp)
	li	s7,262144
	addi	s4,sp,76
	addi	s10,sp,136
.L13746:
	ld	a4,0(sp)
	ld	a4,0(a4)
	sd	a4,24(sp)
	ble	a5,zero,.L13708
	ld	s6,56(sp)
	sd	zero,48(sp)
	li	s8,0
	li	s2,-1
	li	s11,266240
	j	.L13743
.L13715:
	lw	a5,0(s1)
	addiw	s8,s8,1
	addi	s6,s6,32
	bge	s8,a5,.L13829
.L13743:
	lbu	a5,25(s6)
	sw	s2,76(sp)
	andi	a5,a5,1
	bne	a5,zero,.L13715
	ld	s9,0(s6)
	beq	s9,zero,.L13717
.L13716:
	lw	a5,4(s9)
	and	a4,a5,s11
	sext.w	a4,a4
	and	a5,a5,s7
	sext.w	a5,a5
	beq	a4,zero,.L13717
	beq	a5,zero,.L13718
	ld	a5,32(s9)
	ld	s9,8(a5)
.L13719:
	bne	s9,zero,.L13716
.L13717:
	mv	a1,s4
	mv	a0,s9
	call	sqlite3ExprIsInteger
	beq	a0,zero,.L13721
	ld	a4,24(sp)
	lw	a5,76(sp)
	lw	a4,0(a4)
	ble	a5,zero,.L13722
	bgt	a5,a4,.L13722
.L13737:
	lbu	a4,276(s0)
	li	a5,1
	bleu	a4,a5,.L13723
.L13739:
	lbu	a5,25(s6)
	ori	a5,a5,1
	sb	a5,25(s6)
	j	.L13715
.L13718:
	ld	s9,16(s9)
	j	.L13719
.L13721:
	lbu	a5,0(s9)
	li	a4,59
	beq	a5,a4,.L13726
	sw	zero,76(sp)
.L13727:
	lbu	a4,276(s0)
	li	a5,1
	mv	a2,s9
	bleu	a4,a5,.L13830
.L13729:
	lbu	a5,97(s5)
	beq	a5,zero,.L13831
.L13730:
	lbu	a4,276(s0)
	li	a5,1
	bleu	a4,a5,.L13832
	lw	a5,76(sp)
	bgt	a5,zero,.L13739
.L13749:
	li	a5,1
	sd	a5,48(sp)
	j	.L13715
.L13726:
	ld	a0,24(sp)
	addi	a1,s9,8
	call	resolveAsName.isra.0.part.0
	sw	a0,76(sp)
	mv	a5,a0
	beq	a0,zero,.L13727
	ble	a5,zero,.L13749
	j	.L13737
.L13736:
	lw	a5,76(sp)
	ble	a5,zero,.L13749
.L13723:
	li	a3,0
	mv	a2,s10
	li	a1,147
	mv	a0,s5
	sd	zero,136(sp)
	sw	zero,144(sp)
	call	sqlite3ExprAlloc
	mv	a4,a0
	beq	a0,zero,.L13820
	lw	a5,4(a0)
	ori	a5,a5,1024
	sw	a5,4(a0)
	lw	a5,76(sp)
	sw	a5,8(a0)
	ld	a5,0(s6)
	bne	a5,s9,.L13740
	sd	a0,0(s6)
.L13741:
	beq	s9,zero,.L13742
	mv	a1,s9
	mv	a0,s5
	call	sqlite3ExprDeleteNN
.L13742:
	lw	a5,76(sp)
	sh	a5,28(s6)
	j	.L13739
.L13740:
	mv	a2,a5
	ld	a5,16(a5)
	li	a1,106
	lbu	a3,0(a5)
	beq	a3,a1,.L13740
	sd	a4,16(a2)
	j	.L13741
.L13832:
	beq	a2,zero,.L13736
	mv	a1,a2
	mv	a0,s5
	call	sqlite3ExprDeleteNN
	lw	a5,76(sp)
	ble	a5,zero,.L13749
	j	.L13737
.L13831:
	ld	a4,0(sp)
	mv	a1,a2
	mv	a0,s10
	ld	t5,0(a4)
	sd	zero,176(sp)
	sd	zero,160(sp)
	sd	zero,168(sp)
	sd	zero,184(sp)
	sd	s0,136(sp)
	ld	a5,40(a4)
	sd	t5,152(sp)
	sd	t5,40(sp)
	sd	a5,144(sp)
	li	a5,129
	sw	a5,176(sp)
	ld	a4,0(s0)
	li	a5,1
	sd	a2,16(sp)
	lbu	s3,101(a4)
	sb	a5,101(a4)
	sd	a4,8(sp)
	call	sqlite3ResolveExprNames
	ld	a4,8(sp)
	ld	a2,16(sp)
	ld	t5,40(sp)
	sb	s3,101(a4)
	mv	a5,a0
	bne	a0,zero,.L13733
	lw	a4,0(t5)
	ble	a4,zero,.L13733
	li	s3,1
	j	.L13734
.L13833:
	ld	t5,40(sp)
	lw	a4,0(t5)
	ble	a4,a5,.L13733
.L13734:
	slli	a4,a5,5
	add	a4,t5,a4
	ld	a1,8(a4)
	li	a3,-1
	li	a0,0
	sd	a5,16(sp)
	sd	a2,8(sp)
	sd	t5,40(sp)
	call	sqlite3ExprCompare
	ld	a5,16(sp)
	ld	a2,8(sp)
	addiw	a5,a5,1
	bgt	a0,s3,.L13833
	sw	a5,76(sp)
	j	.L13730
.L13679:
	mv	a0,s0
	lla	a1,.LC172
	call	sqlite3ErrorMsg
	li	a0,2
	j	.L13816
.L13830:
	li	a2,0
	li	a3,0
	mv	a1,s9
	mv	a0,s5
	call	exprDup
	mv	a2,a0
	j	.L13729
.L13733:
	li	a5,0
	sw	a5,76(sp)
	j	.L13730
.L13722:
	lla	a3,.LC173
	addiw	a2,s8,1
	lla	a1,.LC89
	mv	a0,s0
	call	sqlite3ErrorMsg
	j	.L13820
.L13709:
	mv	a0,s0
	lla	a1,.LC178
	call	sqlite3ErrorMsg
	li	a0,2
	j	.L13816
.L13827:
	mv	a0,s0
	lla	a1,.LC176
	call	sqlite3ErrorMsg
	li	a0,2
	j	.L13816
.L13828:
	lla	a2,.LC171
	j	.L13704
	.size	resolveSelectStep, .-resolveSelectStep
	.section	.text.exprNodeIsConstantOrGroupBy,"ax",@progbits
	.align	1
	.type	exprNodeIsConstantOrGroupBy, @function
exprNodeIsConstantOrGroupBy:
	addi	sp,sp,-80
	sd	s3,40(sp)
	sd	s5,24(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s4,32(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	ld	s2,40(a0)
	mv	s5,a0
	mv	s3,a1
	lw	a5,0(s2)
	ble	a5,zero,.L13835
	li	s0,0
	li	s4,1
	lla	s6,binCollFunc
	j	.L13837
.L13840:
	lw	a5,0(s2)
	ble	a5,s0,.L13835
.L13837:
	slli	a5,s0,5
	add	a5,s2,a5
	ld	s1,8(a5)
	li	a3,-1
	mv	a1,s3
	mv	a2,s1
	li	a0,0
	call	sqlite3ExprCompare
	addiw	s0,s0,1
	bgt	a0,s4,.L13840
	ld	s7,0(s5)
	mv	a1,s1
	mv	a0,s7
	call	sqlite3ExprCollSeq
	beq	a0,zero,.L13846
.L13838:
	ld	a5,24(a0)
	bne	a5,s6,.L13840
.L13843:
	li	a0,1
.L13839:
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	addi	sp,sp,80
	jr	ra
.L13846:
	ld	a5,0(s7)
	ld	a0,16(a5)
	beq	a0,zero,.L13843
	j	.L13838
.L13835:
	lw	a5,4(s3)
	slli	a4,a5,52
	blt	a4,zero,.L13847
	ld	s0,64(sp)
	ld	ra,72(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s4,32(sp)
	ld	s6,16(sp)
	ld	s7,8(sp)
	mv	a1,s3
	mv	a0,s5
	ld	s3,40(sp)
	ld	s5,24(sp)
	addi	sp,sp,80
	tail	exprNodeIsConstant
.L13847:
	sb	zero,36(s5)
	li	a0,2
	j	.L13839
	.size	exprNodeIsConstantOrGroupBy, .-exprNodeIsConstantOrGroupBy
	.section	.text.sqlite3ExprCompareSkip,"ax",@progbits
	.align	1
	.type	sqlite3ExprCompareSkip, @function
sqlite3ExprCompareSkip:
	mv	a3,a2
	li	a7,266240
	li	a6,262144
	beq	a0,zero,.L13850
.L13849:
	lw	a5,4(a0)
	and	a4,a5,a7
	sext.w	a4,a4
	and	a5,a5,a6
	sext.w	a5,a5
	beq	a4,zero,.L13850
	beq	a5,zero,.L13851
	ld	a5,32(a0)
	ld	a0,8(a5)
	bne	a0,zero,.L13849
.L13850:
	li	a7,266240
	li	a6,262144
	beq	a1,zero,.L13855
.L13854:
	lw	a5,4(a1)
	and	a4,a5,a7
	sext.w	a4,a4
	and	a5,a5,a6
	sext.w	a5,a5
	beq	a4,zero,.L13855
	beq	a5,zero,.L13856
	ld	a5,32(a1)
	ld	a1,8(a5)
	bne	a1,zero,.L13854
.L13855:
	mv	a2,a1
	mv	a1,a0
	li	a0,0
	tail	sqlite3ExprCompare
.L13851:
	ld	a0,16(a0)
	bne	a0,zero,.L13849
	j	.L13850
.L13856:
	ld	a1,16(a1)
	bne	a1,zero,.L13854
	j	.L13855
	.size	sqlite3ExprCompareSkip, .-sqlite3ExprCompareSkip
	.section	.text.exprMightBeIndexed2,"ax",@progbits
	.align	1
	.type	exprMightBeIndexed2, @function
exprMightBeIndexed2:
	addi	sp,sp,-64
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	li	a5,1
	mv	s3,a2
	mv	s2,a3
	bleu	a1,a5,.L13876
	li	a5,0
	li	a4,1
.L13869:
	srli	a1,a1,1
	addiw	a5,a5,1
	bne	a1,a4,.L13869
.L13868:
	slli	a4,a5,3
	sub	a5,a4,a5
	slli	a5,a5,4
	add	a5,a0,a5
	ld	a4,40(a5)
	lw	s4,72(a5)
	ld	s1,16(a4)
	beq	s1,zero,.L13870
	li	s5,-2
.L13875:
	ld	a5,80(s1)
	beq	a5,zero,.L13871
	lhu	a5,94(s1)
	mv	a3,a5
	beq	a5,zero,.L13871
	li	s0,0
	li	a4,0
	j	.L13874
.L13872:
	addi	s0,s0,1
	sext.w	a5,a3
	sext.w	a4,s0
	ble	a5,a4,.L13871
.L13874:
	ld	a5,8(s1)
	slli	a1,s0,1
	add	a5,a5,a1
	lh	a5,0(a5)
	bne	a5,s5,.L13872
	ld	a5,80(s1)
	slli	a4,a4,5
	mv	a2,s4
	add	a4,a5,a4
	ld	a1,8(a4)
	mv	a0,s2
	call	sqlite3ExprCompareSkip
	beq	a0,zero,.L13890
	lhu	a3,94(s1)
	addi	s0,s0,1
	sext.w	a4,s0
	sext.w	a5,a3
	bgt	a5,a4,.L13874
.L13871:
	ld	s1,40(s1)
	bne	s1,zero,.L13875
.L13870:
	li	a0,0
	j	.L13873
.L13890:
	sw	s4,0(s3)
	sw	s5,4(s3)
	li	a0,1
.L13873:
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	addi	sp,sp,64
	jr	ra
.L13876:
	li	a5,0
	j	.L13868
	.size	exprMightBeIndexed2, .-exprMightBeIndexed2
	.section	.text.exprMightBeIndexed,"ax",@progbits
	.align	1
	.type	exprMightBeIndexed, @function
exprMightBeIndexed:
	lbu	a5,0(a3)
	li	a6,169
	beq	a5,a6,.L13898
.L13893:
	li	a4,162
	beq	a5,a4,.L13899
.L13894:
	beq	a1,zero,.L13896
	addi	a5,a1,-1
	and	a5,a5,a1
	li	a4,0
	beq	a5,zero,.L13900
	mv	a0,a4
	ret
.L13900:
	tail	exprMightBeIndexed2
.L13899:
	lw	a5,44(a3)
	li	a4,1
	mv	a0,a4
	sw	a5,0(a2)
	lh	a5,48(a3)
	sw	a5,4(a2)
	ret
.L13898:
	addiw	a4,a4,-54
	li	a5,3
	bgtu	a4,a5,.L13894
	ld	a5,32(a3)
	ld	a3,8(a5)
	lbu	a5,0(a3)
	j	.L13893
.L13896:
	li	a4,0
	mv	a0,a4
	ret
	.size	exprMightBeIndexed, .-exprMightBeIndexed
	.section	.text.whereScanNext,"ax",@progbits
	.align	1
	.type	whereScanNext, @function
whereScanNext:
	addi	sp,sp,-128
	sd	s3,88(sp)
	sd	s7,56(sp)
	sd	s8,48(sp)
	sd	s9,40(sp)
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	sd	s2,96(sp)
	sd	s4,80(sp)
	sd	s5,72(sp)
	sd	s6,64(sp)
	sd	s10,32(sp)
	sd	s11,24(sp)
	lw	s1,40(a0)
	ld	s5,8(a0)
	lbu	a5,34(a0)
	li	s8,4096
	mv	s3,a0
	addi	s8,s8,-2048
	lla	s7,.LANCHOR2
	li	s9,262144
.L13930:
	addiw	a5,a5,-1
	addi	a4,a5,40
	addi	a5,a5,8
	slli	a4,a4,1
	slli	a5,a5,2
	add	a4,s3,a4
	add	a5,s3,a5
	lw	s2,12(a5)
	lh	s4,8(a4)
.L13903:
	lw	a4,20(s5)
	ld	a3,32(s5)
	slli	s0,s1,6
	sext.w	a5,a4
	add	s0,a3,s0
	li	s6,-2
	bgt	a5,s1,.L13902
	j	.L13929
.L13905:
	addiw	s1,s1,1
	sext.w	a5,a4
	addi	s0,s0,64
	ble	a5,s1,.L13929
.L13902:
	lw	a5,28(s0)
	bne	a5,s2,.L13905
	lw	a5,40(s0)
	bne	a5,s4,.L13905
	beq	s4,s6,.L13906
.L13909:
	lbu	a4,34(s3)
	li	a5,1
	bleu	a4,a5,.L13907
	ld	a5,0(s0)
	lw	a5,4(a5)
	andi	a5,a5,1
	bne	a5,zero,.L13965
.L13907:
	lhu	a2,20(s0)
	and	a5,a2,s8
	beq	a5,zero,.L13910
	lbu	a0,33(s3)
	li	a5,10
	bleu	a0,a5,.L13966
.L13910:
	lw	a5,36(s3)
	and	a5,a2,a5
	beq	a5,zero,.L13965
	ld	a5,16(s3)
	beq	a5,zero,.L13919
	andi	a5,a2,256
	beq	a5,zero,.L13967
.L13919:
	andi	a2,a2,130
	beq	a2,zero,.L13927
	ld	a5,0(s0)
	li	a4,162
	ld	a5,24(a5)
	lbu	a3,0(a5)
	bne	a3,a4,.L13927
	lw	a3,44(a5)
	lw	a4,44(s3)
	bne	a3,a4,.L13927
	lh	a4,48(a5)
	lh	a5,88(s3)
	beq	a4,a5,.L13965
.L13927:
	addiw	s1,s1,1
	sd	s5,8(s3)
	sw	s1,40(s3)
.L13901:
	ld	ra,120(sp)
	mv	a0,s0
	ld	s0,112(sp)
	ld	s1,104(sp)
	ld	s2,96(sp)
	ld	s3,88(sp)
	ld	s4,80(sp)
	ld	s5,72(sp)
	ld	s6,64(sp)
	ld	s7,56(sp)
	ld	s8,48(sp)
	ld	s9,40(sp)
	ld	s10,32(sp)
	ld	s11,24(sp)
	addi	sp,sp,128
	jr	ra
.L13967:
	ld	s11,0(s0)
	ld	a5,0(s5)
	lbu	a4,32(s3)
	mv	a0,s11
	ld	s10,0(a5)
	sd	a4,8(sp)
	call	comparisonAffinity
	li	a5,65
	beq	a0,a5,.L13920
	ld	a4,8(sp)
	li	a5,66
	sgtu	a3,a4,a5
	bne	a0,a5,.L13922
	addi	a4,a4,-66
	seqz	a3,a4
.L13922:
	bne	a3,zero,.L13920
.L13965:
	lw	a4,20(s5)
.L13968:
	addiw	s1,s1,1
	sext.w	a5,a4
	addi	s0,s0,64
	bgt	a5,s1,.L13902
.L13929:
	ld	s5,8(s5)
	li	s1,0
	bne	s5,zero,.L13903
	lbu	a5,34(s3)
	lbu	a4,33(s3)
	bleu	a4,a5,.L13932
	addiw	a5,a5,1
	andi	a5,a5,0xff
	ld	s5,0(s3)
	sb	a5,34(s3)
	j	.L13930
.L13906:
	ld	a5,0(s0)
	ld	a1,24(s3)
	mv	a2,s2
	ld	a0,16(a5)
	call	sqlite3ExprCompareSkip
	beq	a0,zero,.L13909
	lw	a4,20(s5)
	j	.L13968
.L13966:
	ld	a5,0(s0)
	ld	a4,24(a5)
	beq	a4,zero,.L13912
	li	a1,266240
.L13911:
	lw	a5,4(a4)
	and	a3,a5,a1
	sext.w	a3,a3
	beq	a3,zero,.L13969
	and	a5,a5,s9
	sext.w	a5,a5
	beq	a5,zero,.L13913
	ld	a5,32(a4)
	ld	a4,8(a5)
	bne	a4,zero,.L13911
.L13912:
	lbu	a5,0(zero)
	ebreak
.L13913:
	ld	a4,16(a4)
	bne	a4,zero,.L13911
	j	.L13912
.L13920:
	ld	a2,24(s11)
	ld	a1,16(s11)
	mv	a0,s10
	call	sqlite3BinaryCompareCollSeq
	beq	a0,zero,.L13970
.L13923:
	ld	a2,0(a0)
	ld	a3,16(s3)
	j	.L13926
.L13924:
	add	a5,s7,a5
	add	a4,s7,a4
	lbu	a1,320(a5)
	lbu	a5,320(a4)
	bne	a1,a5,.L13965
.L13925:
	addi	a2,a2,1
	addi	a3,a3,1
.L13926:
	lbu	a5,0(a2)
	lbu	a4,0(a3)
	bne	a5,a4,.L13924
	bne	a5,zero,.L13925
	lhu	a2,20(s0)
	j	.L13919
.L13969:
	lbu	a3,0(a4)
	li	a5,162
	bne	a3,a5,.L13910
	lw	t1,44(a4)
	sext.w	a7,a0
	beq	a0,zero,.L13931
	addi	a5,s3,44
	addi	a1,s3,88
	li	a3,0
	j	.L13918
.L13917:
	addiw	a3,a3,1
	addi	a5,a5,4
	addi	a1,a1,2
	beq	a3,a7,.L13916
.L13918:
	lw	a6,0(a5)
	bne	a6,t1,.L13917
	lh	t3,0(a1)
	lh	a6,48(a4)
	bne	t3,a6,.L13917
	j	.L13910
.L13970:
	ld	a5,0(s10)
	ld	a0,16(a5)
	j	.L13923
.L13931:
	li	a7,0
.L13916:
	addi	a5,a7,8
	slli	a5,a5,2
	add	a5,s3,a5
	sw	t1,12(a5)
	lh	a4,48(a4)
	addi	a5,a7,40
	slli	a5,a5,1
	add	a5,s3,a5
	sh	a4,8(a5)
	addiw	a0,a0,1
	sb	a0,33(s3)
	lhu	a2,20(s0)
	j	.L13910
.L13932:
	li	s0,0
	j	.L13901
	.size	whereScanNext, .-whereScanNext
	.section	.text.whereScanInitIndexExpr,"ax",@progbits
	.align	1
	.type	whereScanInitIndexExpr, @function
whereScanInitIndexExpr:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a0
	ld	a0,24(a0)
	call	sqlite3ExprAffinity
	sb	a0,32(s0)
	mv	a0,s0
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	tail	whereScanNext
	.size	whereScanInitIndexExpr, .-whereScanInitIndexExpr
	.section	.text.whereScanInit,"ax",@progbits
	.align	1
	.type	whereScanInit, @function
whereScanInit:
	sw	a4,36(a0)
	li	a4,256
	sh	a4,32(a0)
	li	a4,1
	sd	a1,0(a0)
	sd	a1,8(a0)
	sw	zero,40(a0)
	sw	a2,44(a0)
	sd	zero,16(a0)
	sd	zero,24(a0)
	sb	a4,34(a0)
	mv	a6,a0
	beq	a5,zero,.L13974
	ld	a2,8(a5)
	slli	a4,a3,1
	li	a1,-2
	add	a4,a2,a4
	lh	a4,0(a4)
	sext.w	a2,a4
	beq	a4,a1,.L13979
	ld	a1,24(a5)
	lh	a0,68(a1)
	beq	a0,a2,.L13978
	blt	a2,zero,.L13976
	ld	a1,8(a1)
	slli	a2,a4,5
	slli	a3,a3,3
	add	a2,a1,a2
	lbu	a2,25(a2)
	sb	a2,32(a6)
	ld	a5,64(a5)
	add	a3,a5,a3
	ld	a5,0(a3)
	sd	a5,16(a6)
.L13976:
	sh	a4,88(a6)
	mv	a0,a6
	tail	whereScanNext
.L13978:
	li	a4,-1
	sh	a4,88(a6)
	mv	a0,a6
	tail	whereScanNext
.L13974:
	li	a5,-2
	beq	a3,a5,.L13977
	slliw	a4,a3,16
	sraiw	a4,a4,16
	sh	a4,88(a6)
	mv	a0,a6
	tail	whereScanNext
.L13979:
	ld	a4,80(a5)
	slli	a1,a3,5
	slli	a3,a3,3
	add	a4,a4,a1
	ld	a4,8(a4)
	sd	a4,24(a0)
	ld	a5,64(a5)
	add	a3,a5,a3
	ld	a5,0(a3)
	sh	a2,88(a0)
	sd	a5,16(a0)
	tail	whereScanInitIndexExpr
.L13977:
	li	a0,0
	ret
	.size	whereScanInit, .-whereScanInit
	.section	.text.sqlite3WhereFindTerm,"ax",@progbits
	.align	1
	.type	sqlite3WhereFindTerm, @function
sqlite3WhereFindTerm:
	addi	sp,sp,-160
	sd	s1,136(sp)
	mv	s1,sp
	sd	s0,144(sp)
	mv	s0,a3
	mv	a3,a2
	mv	a2,a1
	mv	a1,a0
	mv	a0,s1
	sd	s3,120(sp)
	sd	ra,152(sp)
	sd	s2,128(sp)
	mv	s3,a4
	call	whereScanInit
	beq	a0,zero,.L13985
	mv	a5,a0
	andi	s3,s3,130
	li	s2,0
.L13984:
	ld	a4,48(a5)
	mv	a0,s1
	and	a2,a4,s0
	bne	a2,zero,.L13982
	bne	a4,zero,.L13983
	lhu	a4,20(a5)
	and	a4,s3,a4
	bne	a4,zero,.L13986
.L13983:
	beq	s2,zero,.L13989
.L13982:
	call	whereScanNext
	mv	a5,a0
	bne	a0,zero,.L13984
.L13980:
	ld	ra,152(sp)
	ld	s0,144(sp)
	ld	s1,136(sp)
	ld	s3,120(sp)
	mv	a0,s2
	ld	s2,128(sp)
	addi	sp,sp,160
	jr	ra
.L13989:
	mv	s2,a5
	j	.L13982
.L13986:
	ld	ra,152(sp)
	ld	s0,144(sp)
	mv	s2,a5
	ld	s1,136(sp)
	ld	s3,120(sp)
	mv	a0,s2
	ld	s2,128(sp)
	addi	sp,sp,160
	jr	ra
.L13985:
	li	s2,0
	j	.L13980
	.size	sqlite3WhereFindTerm, .-sqlite3WhereFindTerm
	.section	.text.whereLoopAddBtreeIndex,"ax",@progbits
	.align	1
	.type	whereLoopAddBtreeIndex, @function
whereLoopAddBtreeIndex:
	addi	sp,sp,-368
	sd	s7,296(sp)
	sd	ra,360(sp)
	sd	s0,352(sp)
	sd	s1,344(sp)
	sd	s2,336(sp)
	sd	s3,328(sp)
	sd	s4,320(sp)
	sd	s5,312(sp)
	sd	s6,304(sp)
	sd	s8,288(sp)
	sd	s9,280(sp)
	sd	s10,272(sp)
	sd	s11,264(sp)
	ld	a5,0(a0)
	sd	a3,24(sp)
	li	s7,7
	ld	a5,0(a5)
	sd	a5,120(sp)
	ld	a5,0(a5)
	sd	a5,96(sp)
	lbu	a5,97(a5)
	bne	a5,zero,.L14068
	ld	s10,24(a0)
	mv	s1,a0
	mv	s2,a1
	lw	a5,40(s10)
	mv	s0,a2
	li	a4,24
	sd	a5,64(sp)
	andi	a5,a5,32
	beq	a5,zero,.L14124
	lbu	a5,99(s0)
	andi	a5,a5,4
	beq	a5,zero,.L13993
.L14136:
	andi	a4,a4,-61
.L13993:
	lhu	a6,26(s10)
	lhu	s6,24(s10)
	lw	a2,64(s2)
	sd	a6,32(sp)
	lhu	a6,28(s10)
	ld	a1,8(s1)
	sext.w	a5,s6
	sd	a6,40(sp)
	lhu	a6,46(s10)
	addi	s4,sp,144
	mv	a3,a5
	sd	a6,104(sp)
	ld	a6,40(s10)
	sd	a5,56(sp)
	mv	a0,s4
	sd	a6,112(sp)
	ld	a6,0(s10)
	mv	a5,s0
	lhu	s5,44(s10)
	sd	a6,48(sp)
	lh	a6,22(s10)
	li	s9,0
	sd	a6,0(sp)
	call	whereScanInit
	sh	zero,18(s10)
	ld	a3,16(s0)
	li	a5,10
	mv	a4,a0
	lh	s11,0(a3)
	ble	s11,a5,.L13994
	sd	a0,8(sp)
	mv	a0,s11
	call	estLog.part.0
	ld	a4,8(sp)
	mv	s9,a0
.L13994:
	ld	a5,24(sp)
	slli	a3,s6,1
	sd	a3,16(sp)
	addiw	a5,a5,46
	slliw	a5,a5,16
	addi	a3,s5,1
	sraiw	a5,a5,16
	sd	zero,80(sp)
	sd	zero,88(sp)
	sd	a3,72(sp)
	sd	a5,128(sp)
.L13995:
	beq	a4,zero,.L14032
	li	s3,256
.L14050:
	lhu	s7,20(a4)
	sext.w	s8,s7
	beq	s7,s3,.L14125
.L13996:
	ld	a5,48(a4)
	ld	a3,8(s10)
	and	a5,a5,a3
	bne	a5,zero,.L14023
	lhu	a5,18(a4)
	andi	a5,a5,256
	beq	a5,zero,.L14000
	li	a5,16
	beq	s8,a5,.L14023
.L14000:
	lbu	a5,60(s2)
	andi	a5,a5,8
	beq	a5,zero,.L14001
	ld	a5,0(a4)
	lw	a5,4(a5)
	andi	a5,a5,1
	beq	a5,zero,.L14023
.L14001:
	lbu	a3,98(s0)
	lw	a5,40(s1)
	beq	a3,zero,.L14002
	lhu	a3,94(s0)
	ld	a2,56(sp)
	addiw	a3,a3,-1
	beq	a3,a2,.L14126
.L14002:
	ori	a5,a5,1
.L14003:
	sw	a5,40(s1)
	ld	a5,64(sp)
	lhu	a3,48(s10)
	ld	a2,72(sp)
	sw	a5,40(s10)
	ld	a5,32(sp)
	sh	s6,24(s10)
	sh	s5,44(s10)
	sh	a5,26(s10)
	ld	a5,40(sp)
	sh	a5,28(s10)
	mv	a5,s5
	bge	a3,a2,.L14004
	ld	a0,96(sp)
	mv	a1,s10
	sd	a4,8(sp)
	call	whereLoopResize.part.0
	ld	a4,8(sp)
	bne	a0,zero,.L14032
	lhu	a5,44(s10)
.L14004:
	ld	a3,56(s10)
	addiw	a2,a5,1
	slli	a5,a5,3
	sh	a2,44(s10)
	add	a5,a3,a5
	sd	a4,0(a5)
	ld	a5,48(a4)
	ld	a2,8(s10)
	ld	a1,48(sp)
	andi	a3,s7,1
	not	a2,a2
	or	a5,a1,a5
	and	a5,a5,a2
	sd	a5,0(s10)
	beq	a3,zero,.L14007
	ld	a0,0(a4)
	li	a3,4096
	addi	a3,a3,-2048
	lw	a5,4(a0)
	lb	t1,99(s0)
	and	a5,a3,a5
	bne	a5,zero,.L14127
	ld	a5,32(a0)
	beq	a5,zero,.L14015
	lw	a3,0(a5)
	beq	a3,zero,.L14015
	li	a2,7
	mv	s8,a3
	bgtu	a3,a2,.L14016
	li	a1,1
	li	a2,40
	li	a0,7
	beq	a3,a1,.L14128
.L14017:
	addiw	a1,a2,-10
	mv	a3,a2
	slli	s8,s8,1
	slliw	a2,a1,16
	sraiw	a2,a2,16
	bleu	s8,a0,.L14017
	addiw	a3,a3,-20
	slliw	a3,a3,16
	sraiw	a3,a3,16
	j	.L14020
.L14015:
	blt	t1,zero,.L14054
	ld	s3,24(sp)
	li	a0,0
.L14022:
	lw	a3,40(s10)
	ori	a3,a3,4
	sw	a3,40(s10)
.L14024:
	andi	a5,a3,2
	lh	a1,22(s10)
	bne	a5,zero,.L14129
.L14035:
	lhu	a2,24(s10)
	addiw	a2,a2,1
	slli	a2,a2,48
	srli	a2,a2,48
	sh	a2,24(s10)
	lh	a5,16(a4)
	ble	a5,zero,.L14130
.L14045:
	ld	a5,16(s0)
	slli	a2,a2,1
	andi	a7,s7,256
	add	a2,a5,a2
	lhu	a5,0(a2)
	lhu	a4,-2(a2)
	subw	a5,a5,a4
	addw	a5,a5,a1
	slliw	s8,a5,16
	sraiw	s8,s8,16
	beq	a7,zero,.L14123
	addiw	a5,s8,10
.L14122:
	slliw	s8,a5,16
	sraiw	s8,s8,16
.L14123:
	sh	s8,22(s10)
.L14044:
	ld	a2,32(s2)
	lh	a4,92(s0)
	mv	a0,s9
	lh	a2,74(a2)
	slliw	a1,a4,4
	subw	a1,a1,a4
	divw	a1,a1,a2
	sd	a3,8(sp)
	addiw	a1,a1,1
	addw	a1,a1,s8
	slliw	a1,a1,16
	sraiw	a1,a1,16
	call	sqlite3LogEstAdd
	ld	a3,8(sp)
	mv	a4,a0
	andi	a3,a3,320
	bne	a3,zero,.L14047
	addiw	a1,s8,16
	slliw	a1,a1,16
	sraiw	a1,a1,16
	call	sqlite3LogEstAdd
	mv	a4,a0
.L14047:
	addw	a4,a4,s3
	addw	a3,s8,s3
	sh	a4,20(s10)
	sh	a3,22(s10)
	ld	a1,8(s1)
	mv	a3,s11
	mv	a2,s10
	lw	a0,20(a1)
	addi	a1,a1,32
	call	whereLoopOutputAdjust.isra.0
	mv	a1,s10
	mv	a0,s1
	call	whereLoopInsert
	lw	a4,40(s10)
	mv	s7,a0
	andi	a3,a4,2
	beq	a3,zero,.L14048
	ld	s8,0(sp)
.L14048:
	sh	s8,22(s10)
	andi	a4,a4,16
	bne	a4,zero,.L14049
	lhu	a4,24(s10)
	lhu	a5,96(s0)
	bltu	a4,a5,.L14131
.L14049:
	ld	a5,0(sp)
	mv	a0,s4
	sh	a5,22(s10)
	call	whereScanNext
	mv	a4,a0
	beq	s7,zero,.L13995
.L14006:
	ld	a5,48(sp)
	ld	a4,104(sp)
	sh	s6,24(s10)
	sd	a5,0(s10)
	ld	a5,32(sp)
	sh	a5,26(s10)
	ld	a5,40(sp)
	sh	a5,28(s10)
	ld	a5,0(sp)
	sh	a5,22(s10)
	ld	a5,112(sp)
	sd	a5,40(s10)
	ld	a5,56(sp)
	bne	a5,a4,.L14068
	ld	a4,56(sp)
	lhu	a5,94(s0)
	addi	s8,a4,1
	bge	s8,a5,.L14068
	lbu	a5,99(s0)
	andi	a5,a5,64
	bne	a5,zero,.L14068
	ld	a0,96(sp)
	lhu	a5,92(a0)
	slli	a4,a5,49
	blt	a4,zero,.L14068
	ld	a4,16(sp)
	ld	a5,16(s0)
	addi	s3,a4,2
	add	a5,a5,s3
	lh	a5,0(a5)
	li	a4,41
	ble	a5,a4,.L14068
	lhu	a5,48(s10)
	addi	a2,s5,1
	addiw	a1,s5,1
	bge	a5,a2,.L14067
	mv	a1,s10
	call	whereLoopResize.part.0
	mv	s7,a0
	bne	a0,zero,.L14068
	lhu	s5,44(s10)
	lhu	a4,24(s10)
	lhu	a5,46(s10)
	addiw	a1,s5,1
.L14051:
	ld	a3,56(s10)
	addiw	a4,a4,1
	addiw	a5,a5,1
	slli	s5,s5,3
	sh	a4,24(s10)
	sh	a5,46(s10)
	sh	a1,44(s10)
	add	s5,a3,s5
	sd	zero,0(s5)
	lw	a5,40(s10)
	li	a4,32768
	lhu	a0,22(s10)
	or	a5,a5,a4
	sw	a5,40(s10)
	ld	a5,24(sp)
	ld	a4,16(s0)
	mv	a2,s0
	addiw	a3,a5,5
	ld	a5,16(sp)
	mv	a1,s2
	li	s7,0
	add	a5,a4,a5
	lh	a5,0(a5)
	add	a4,a4,s3
	lh	a4,0(a4)
	addw	a3,a3,a5
	subw	a3,a3,a4
	subw	a5,a4,a5
	addw	a5,a5,a0
	slliw	a3,a3,16
	sh	a5,22(s10)
	sraiw	a3,a3,16
	mv	a0,s1
	call	whereLoopAddBtreeIndex
	ld	a5,0(sp)
	sh	s6,24(s10)
	sh	a5,22(s10)
	ld	a5,104(sp)
	sh	a5,46(s10)
	ld	a5,64(sp)
	sw	a5,40(s10)
.L14068:
	ld	ra,360(sp)
	ld	s0,352(sp)
	ld	s1,344(sp)
	ld	s2,336(sp)
	ld	s3,328(sp)
	ld	s4,320(sp)
	ld	s5,312(sp)
	ld	s6,304(sp)
	ld	s8,288(sp)
	ld	s9,280(sp)
	ld	s10,272(sp)
	ld	s11,264(sp)
	mv	a0,s7
	ld	s7,296(sp)
	addi	sp,sp,368
	jr	ra
.L14125:
	ld	a3,16(sp)
	ld	a5,8(s0)
	add	a5,a5,a3
	lh	a5,0(a5)
	sext.w	a3,a5
	bge	a5,zero,.L14132
	li	a5,-1
	bne	a3,a5,.L13996
.L14023:
	mv	a0,s4
	call	whereScanNext
	mv	a4,a0
	bne	a0,zero,.L14050
.L14032:
	li	s7,0
	j	.L14006
.L14007:
	andi	a5,s7,130
	lw	a2,40(s10)
	beq	a5,zero,.L14025
	ld	a5,8(s0)
	ld	a0,16(sp)
	ori	a3,a2,1
	li	a1,-1
	add	a5,a5,a0
	lh	a5,0(a5)
	sw	a3,40(s10)
	beq	a5,a1,.L14026
	blt	a5,zero,.L14063
	ld	a5,24(sp)
	bne	a5,zero,.L14063
	lhu	a1,94(s0)
	ld	a6,56(sp)
	li	s3,0
	addiw	a5,a1,-1
	li	a0,0
	bne	a5,a6,.L14024
	lbu	a5,99(s0)
	andi	a5,a5,8
	bne	a5,zero,.L14026
	li	a5,1
	beq	a1,a5,.L14133
.L14027:
	li	a3,65536
	addi	a3,a3,1
	or	a3,a2,a3
	sw	a3,40(s10)
	li	s3,0
	li	a0,0
	j	.L14024
.L14132:
	ld	a3,24(s0)
	slli	a5,a5,5
	ld	a3,8(a3)
	add	a5,a3,a5
	lbu	a5,24(a5)
	beq	a5,zero,.L13996
	mv	a0,s4
	call	whereScanNext
	mv	a4,a0
	bne	a0,zero,.L14050
	j	.L14032
.L14025:
	andi	a5,s7,256
	beq	a5,zero,.L14028
	ori	a3,a2,8
	sw	a3,40(s10)
	andi	a5,a3,2
	ld	s3,24(sp)
	lh	a1,22(s10)
	li	a0,0
	beq	a5,zero,.L14035
.L14129:
	ld	a5,80(sp)
	sext.w	a2,a1
	li	a4,0
	beq	a5,zero,.L14037
.L14052:
	ld	a5,80(sp)
	lh	a5,16(a5)
	ble	a5,zero,.L14134
	addiw	a1,a1,-20
	slliw	a1,a1,16
	sraiw	a1,a1,16
	li	a4,1
.L14037:
	ld	a5,88(sp)
	beq	a5,zero,.L14039
.L14036:
	ld	a5,88(sp)
	addiw	a4,a4,1
	lh	a5,16(a5)
	ble	a5,zero,.L14135
	addiw	a1,a1,-20
	slliw	a1,a1,16
	sraiw	a1,a1,16
.L14039:
	ld	a5,80(sp)
	beq	a5,zero,.L14041
	lh	a5,16(a5)
	ble	a5,zero,.L14041
	ld	a5,88(sp)
	beq	a5,zero,.L14041
	lh	a5,16(a5)
	ble	a5,zero,.L14041
	addiw	a1,a1,-20
	slliw	a1,a1,16
	sraiw	a1,a1,16
.L14041:
	li	a0,10
	subw	a4,a2,a4
	mv	a5,a1
	bge	a1,a0,.L14042
	li	a5,10
.L14042:
	slliw	a5,a5,16
	sraiw	a1,a5,16
	sext.w	a2,a4
	mv	a5,a1
	ble	a1,a2,.L14122
	mv	a5,a4
	j	.L14122
.L14126:
	ori	a5,a5,2
	j	.L14003
.L14124:
	lbu	a5,99(s0)
	li	a4,447
	andi	a5,a5,4
	beq	a5,zero,.L13993
	j	.L14136
.L14028:
	andi	a5,s7,36
	bne	a5,zero,.L14137
	ori	a2,a2,18
	sw	a2,40(s10)
	ld	a3,56(sp)
	lw	a1,64(s2)
	ld	a0,120(sp)
	mv	a2,s0
	sd	a4,8(sp)
	call	whereRangeVectorLen.isra.0
	lw	a3,40(s10)
	sh	a0,28(s10)
	ld	a4,8(sp)
	andi	a5,a3,32
	bne	a5,zero,.L14034
	andi	a5,a3,2
	lh	a1,22(s10)
	bne	a5,zero,.L14138
	ld	s3,24(sp)
	sd	a4,88(sp)
	li	a0,0
	sd	zero,80(sp)
	j	.L14035
.L14054:
	ld	a5,16(s0)
	ld	a3,16(sp)
	li	a0,0
	li	s8,0
	add	a5,a5,a3
	lh	a5,0(a5)
.L14019:
	addiw	a0,a0,10
	addw	a0,a0,a5
	addw	a5,s9,s8
	blt	a0,a5,.L14023
	ld	a5,24(sp)
	slliw	a0,s8,16
	sraiw	a0,a0,16
	addw	s3,a5,s8
	slliw	s3,s3,16
	sraiw	s3,s3,16
	j	.L14022
.L14063:
	ld	s3,24(sp)
	li	a0,0
	j	.L14024
.L14130:
	ld	a4,8(s0)
	ld	a6,16(sp)
	add	a4,a4,a6
	lh	a4,0(a4)
	blt	a4,zero,.L14045
	subw	a5,a5,a0
	addw	a5,a5,a1
	slliw	s8,a5,16
	sraiw	s8,s8,16
	sh	s8,22(s10)
	j	.L14044
.L14131:
	mv	a3,s3
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	whereLoopAddBtreeIndex
	j	.L14049
.L14127:
	lhu	a5,44(s10)
	addiw	a3,a5,-1
	ble	a3,zero,.L14139
	ld	a2,56(s10)
	addiw	a1,a5,-2
	slli	a1,a1,32
	srli	a1,a1,29
	addi	a5,a2,8
	add	a1,a1,a5
	li	s8,46
.L14013:
	ld	a3,0(a2)
	mv	a2,a5
	beq	a3,zero,.L14012
	ld	a3,0(a3)
	beq	a3,a0,.L14140
.L14012:
	beq	a1,a5,.L14120
.L14141:
	addi	a5,a5,8
	j	.L14013
.L14140:
	li	s8,0
	bne	a1,a5,.L14141
.L14120:
	slliw	a0,s8,16
	sraiw	a0,a0,16
.L14014:
	blt	t1,zero,.L14142
.L14018:
	ld	a5,24(sp)
	addw	s3,a5,a0
	slliw	s3,s3,16
	sraiw	s3,s3,16
	j	.L14022
.L14142:
	ld	a5,16(s0)
	ld	a2,16(sp)
	li	a3,10
	add	a5,a5,a2
	lh	a5,0(a5)
	ble	s8,a3,.L14061
.L14011:
	sd	a4,136(sp)
	sd	a5,8(sp)
	call	estLog.part.0
	ld	a5,8(sp)
	ld	a4,136(sp)
	sext.w	a0,a0
	j	.L14019
.L14135:
	addw	a1,a5,a1
	slliw	a1,a1,16
	sraiw	a1,a1,16
	j	.L14039
.L14134:
	addw	a1,a5,a1
	slliw	a1,a1,16
	sraiw	a1,a1,16
	li	a4,1
	j	.L14037
.L14133:
	lbu	a5,98(s0)
	beq	a5,zero,.L14027
	li	a5,2
	bne	s8,a5,.L14027
.L14026:
	li	a5,4096
	addi	a3,a5,1
	or	a3,a2,a3
	ld	s3,24(sp)
	sw	a3,40(s10)
	li	a0,0
	j	.L14024
.L14016:
	mv	a0,a3
	sd	t1,136(sp)
	sd	a4,8(sp)
	call	__clzdi2@plt
	li	a3,60
	subw	a0,a3,a0
	slliw	a3,a0,2
	addw	a3,a3,a0
	slliw	a3,a3,1
	addiw	a3,a3,30
	ld	t1,136(sp)
	ld	a4,8(sp)
	slliw	a3,a3,16
	srl	s8,s8,a0
	sraiw	a3,a3,16
.L14020:
	andi	a5,s8,7
	slli	a5,a5,1
	lla	a2,.LANCHOR2
	add	a5,a2,a5
	lhu	a5,1776(a5)
	addw	a5,a5,a3
	slliw	a0,a5,16
	sraiw	a0,a0,16
	sext.w	s8,a0
	j	.L14014
.L14137:
	ori	a2,a2,34
	sw	a2,40(s10)
	lw	a1,64(s2)
	ld	a3,56(sp)
	ld	a0,120(sp)
	mv	a2,s0
	sd	a4,8(sp)
	call	whereRangeVectorLen.isra.0
	ld	a4,8(sp)
	sh	a0,26(s10)
	lhu	a5,18(a4)
	andi	a5,a5,256
	beq	a5,zero,.L14030
	lhu	a5,44(s10)
	lhu	a3,48(s10)
	addi	a2,a4,64
	sd	a2,88(sp)
	addi	a2,a5,1
	addiw	a1,a5,1
	blt	a3,a2,.L14143
.L14031:
	ld	a3,56(s10)
	slli	a5,a5,3
	sh	a1,44(s10)
	add	a5,a3,a5
	ld	a3,88(sp)
	sd	a3,0(a5)
	lw	a3,40(s10)
	li	a5,1
	sh	a5,28(s10)
	ori	a3,a3,16
	sw	a3,40(s10)
.L14033:
	andi	a5,a3,2
	lh	a1,22(s10)
	bne	a5,zero,.L14053
	ld	s3,24(sp)
	sd	a4,80(sp)
	li	a0,0
	j	.L14035
.L14034:
	lhu	a2,44(s10)
	ld	a5,56(s10)
	ld	s3,24(sp)
	slli	a2,a2,3
	add	a5,a5,a2
	ld	a5,-16(a5)
	sd	a4,88(sp)
	li	a0,0
	sd	a5,80(sp)
	j	.L14024
.L14030:
	lw	a3,40(s10)
	sd	zero,88(sp)
	j	.L14033
.L14053:
	ld	s3,24(sp)
	sext.w	a2,a1
	sd	a4,80(sp)
	j	.L14052
.L14143:
	ld	a0,96(sp)
	mv	a1,s10
	call	whereLoopResize.part.0
	bne	a0,zero,.L14032
	lhu	a5,44(s10)
	ld	a4,8(sp)
	addiw	a1,a5,1
	j	.L14031
.L14128:
	blt	t1,zero,.L14054
	li	a0,0
	j	.L14018
.L14139:
	blt	t1,zero,.L14144
	ld	s3,128(sp)
	li	a0,46
	j	.L14022
.L14138:
	sd	a4,88(sp)
	ld	s3,24(sp)
	sext.w	a2,a1
	li	a4,0
	sd	zero,80(sp)
	j	.L14036
.L14144:
	ld	a5,16(s0)
	ld	a3,16(sp)
	li	s8,46
	li	a0,46
	add	a5,a5,a3
	lh	a5,0(a5)
	j	.L14011
.L14067:
	ld	a5,104(sp)
	mv	a4,s6
	j	.L14051
.L14061:
	li	a0,0
	j	.L14019
	.size	whereLoopAddBtreeIndex, .-whereLoopAddBtreeIndex
	.section	.text.wherePathSatisfiesOrderBy.isra.0,"ax",@progbits
	.align	1
	.type	wherePathSatisfiesOrderBy.isra.0, @function
wherePathSatisfiesOrderBy.isra.0:
	addi	sp,sp,-416
	sd	s0,400(sp)
	sd	a4,160(sp)
	mv	s0,a4
	sd	ra,408(sp)
	sd	s1,392(sp)
	sd	s2,384(sp)
	sd	s3,376(sp)
	sd	s4,368(sp)
	sd	s5,360(sp)
	sd	s6,352(sp)
	sd	s7,344(sp)
	sd	s8,336(sp)
	sd	s9,328(sp)
	sd	s10,320(sp)
	sd	s11,312(sp)
	sd	a0,112(sp)
	sd	a1,56(sp)
	sd	a2,192(sp)
	sd	a5,224(sp)
	sd	a6,240(sp)
	mv	a4,a3
	beq	s0,zero,.L14146
	ld	a5,0(a0)
	ld	a5,0(a5)
	lhu	a5,92(a5)
	andi	a5,a5,64
	bne	a5,zero,.L14148
.L14146:
	ld	a5,56(sp)
	lw	a3,0(a5)
	li	a5,63
	mv	a2,a3
	sd	a3,248(sp)
	slli	a3,a3,48
	srli	a3,a3,48
	bgtu	a3,a5,.L14148
	li	a5,4096
	addi	a5,a5,-2048
	and	a1,a4,a5
	li	a5,1
	sll	a5,a5,a2
	addi	a5,a5,-1
	sd	a1,184(sp)
	snez	a1,a1
	mv	a3,a2
	sd	a5,136(sp)
	andi	a2,a4,192
	addi	a5,a1,386
	sd	a5,120(sp)
	snez	a5,a2
	sd	a5,208(sp)
	andi	a5,a4,64
	sd	a5,168(sp)
	ld	a5,136(sp)
	slli	s10,a3,48
	sd	zero,32(sp)
	sd	a2,8(sp)
	li	s9,0
	sd	zero,176(sp)
	sd	zero,128(sp)
	lw	s4,32(sp)
	srli	s10,s10,48
	li	s7,0
	lla	s3,.LANCHOR2
	bleu	a5,s9,.L14214
.L14332:
	ld	a4,160(sp)
	sext.w	a5,a4
	blt	a4,s4,.L14331
	beq	s4,zero,.L14153
	ld	a3,128(sp)
	ld	a4,8(s7)
	or	a4,a3,a4
	sd	a4,128(sp)
.L14153:
	ble	a5,s4,.L14231
	ld	a5,192(sp)
	ld	a4,32(sp)
	ld	a5,0(a5)
	slli	a4,a4,3
	add	a5,a5,a4
	ld	s7,0(a5)
	ld	a5,184(sp)
	beq	a5,zero,.L14154
.L14155:
	ld	a5,32(sp)
	addi	a5,a5,1
	sd	a5,32(sp)
	ld	a5,136(sp)
	lw	s4,32(sp)
	bgtu	a5,s9,.L14332
.L14214:
	ld	a5,136(sp)
	bne	a5,s9,.L14331
.L14157:
	lb	a0,248(sp)
	j	.L14322
.L14341:
	ld	a4,96(sp)
	ld	a3,200(sp)
	xor	a2,a4,a3
	beq	a2,a5,.L14200
.L14178:
	beq	s6,zero,.L14204
	ld	a5,232(sp)
	bgt	a5,s6,.L14204
.L14205:
	ld	a5,144(sp)
	bne	a5,zero,.L14206
.L14172:
	ld	a5,48(sp)
	bne	a5,zero,.L14206
.L14207:
	ld	a5,136(sp)
	beq	a5,s9,.L14157
	addiw	t1,s10,-1
	ble	t1,zero,.L14148
	li	a5,1
	sll	a5,a5,t1
	addi	a5,a5,-1
	and	a4,a5,s9
	beq	a5,a4,.L14216
	li	a3,1
	j	.L14217
.L14218:
	sll	a5,a3,t1
	addi	a5,a5,-1
	and	a4,a5,s9
	beq	a5,a4,.L14216
.L14217:
	addiw	t1,t1,-1
	bne	t1,zero,.L14218
.L14148:
	li	a0,0
.L14322:
	ld	ra,408(sp)
	ld	s0,400(sp)
	ld	s1,392(sp)
	ld	s2,384(sp)
	ld	s3,376(sp)
	ld	s4,368(sp)
	ld	s5,360(sp)
	ld	s6,352(sp)
	ld	s7,344(sp)
	ld	s8,336(sp)
	ld	s9,328(sp)
	ld	s10,320(sp)
	ld	s11,312(sp)
	addi	sp,sp,416
	jr	ra
.L14231:
	ld	s7,224(sp)
.L14154:
	lw	a5,40(s7)
	andi	a4,a5,1024
	mv	a1,a5
	bne	a4,zero,.L14333
	lbu	a2,16(s7)
	ld	a0,112(sp)
	sh	zero,30(s7)
	slli	a4,a2,3
	ld	a3,8(a0)
	sub	a4,a4,a2
	slli	a4,a4,4
	add	a4,a3,a4
	lw	s8,72(a4)
	beq	s10,zero,.L14158
	ld	a5,56(sp)
	lw	a4,120(sp)
	li	s1,0
	addi	s11,a5,8
	ld	a5,128(sp)
	mv	s6,s11
	li	s2,266240
	li	s5,262144
	li	a6,162
	not	a3,a5
	addi	t3,a0,104
	j	.L14169
.L14159:
	addiw	s1,s1,1
	addi	s6,s6,32
	beq	s10,s1,.L14334
.L14169:
	srl	a5,s9,s1
	andi	a5,a5,1
	bne	a5,zero,.L14159
	ld	s0,0(s6)
	beq	s0,zero,.L14161
.L14160:
	lw	a5,4(s0)
	and	a2,a5,s2
	sext.w	a2,a2
	beq	a2,zero,.L14335
	and	a5,a5,s5
	sext.w	a5,a5
	beq	a5,zero,.L14162
	ld	a5,32(s0)
	ld	s0,8(a5)
	bne	s0,zero,.L14160
.L14161:
	lbu	a5,0(zero)
	ebreak
.L14162:
	ld	s0,16(s0)
	bne	s0,zero,.L14160
	j	.L14161
.L14335:
	lbu	a5,0(s0)
	bne	a5,a6,.L14159
	lw	a5,44(s0)
	bne	a5,s8,.L14159
	lh	a2,48(s0)
	mv	a0,t3
	li	a5,0
	mv	a1,s8
	sd	a4,40(sp)
	sd	a3,24(sp)
	sd	t3,16(sp)
	call	sqlite3WhereFindTerm
	ld	t3,16(sp)
	ld	a3,24(sp)
	ld	a4,40(sp)
	li	a6,162
	li	t6,1
	beq	a0,zero,.L14159
	lhu	a5,20(a0)
	beq	a5,t6,.L14336
	andi	a5,a5,130
	beq	a5,zero,.L14168
	lh	a5,48(s0)
	bge	a5,zero,.L14337
.L14168:
	sll	a5,t6,s1
	addiw	s1,s1,1
	or	s9,s9,a5
	addi	s6,s6,32
	bne	s10,s1,.L14169
.L14334:
	lw	a5,40(s7)
	slli	a4,a5,51
	blt	a4,zero,.L14338
.L14227:
	andi	a5,a5,256
	bne	a5,zero,.L14232
	ld	t2,32(s7)
	beq	t2,zero,.L14148
	lbu	a5,99(t2)
	andi	a5,a5,4
	bne	a5,zero,.L14148
	lhu	a4,94(t2)
	lbu	s6,98(t2)
	lhu	a5,96(t2)
	sd	a4,232(sp)
	snez	a4,s6
	sd	a5,64(sp)
	sd	a4,48(sp)
	beq	a5,zero,.L14172
.L14171:
	li	a5,1
	sll	a5,a5,s4
	sd	a5,216(sp)
	li	s5,0
	sd	zero,144(sp)
	sd	zero,200(sp)
	sd	zero,152(sp)
	li	s6,0
	li	s2,262144
	j	.L14208
.L14339:
	lhu	a4,46(s7)
	bgt	a4,s6,.L14234
	ld	a0,56(s7)
	slli	a2,s5,3
	ld	a3,120(sp)
	add	a4,a0,a2
	ld	t6,0(a4)
	lhu	a4,20(t6)
	and	t0,a3,a4
	beq	t0,zero,.L14174
	andi	a5,a4,256
	ld	a4,48(sp)
	seqz	a5,a5
	neg	a5,a5
	and	a5,a4,a5
	sd	a5,48(sp)
.L14175:
	ld	a5,64(sp)
	addi	s5,s5,1
	sext.w	s6,s5
	bge	s6,a5,.L14205
.L14208:
	lhu	a5,24(s7)
	sext.w	a1,a5
	bgt	a5,s6,.L14339
.L14234:
	li	a5,1
	sd	a5,16(sp)
.L14173:
	beq	t2,zero,.L14238
.L14344:
	ld	a5,56(t2)
	ld	a0,8(t2)
	ld	a2,24(t2)
	slli	a4,s5,1
	add	a5,a5,s5
	lbu	a5,0(a5)
	add	a4,a0,a4
	lh	a4,0(a4)
	lh	a0,68(a2)
	sd	a5,96(sp)
	li	t6,-1
	sext.w	a5,a4
	beq	a0,a4,.L14177
	mv	t6,a5
	ld	a5,48(sp)
	beq	a5,zero,.L14177
	blt	t6,zero,.L14177
	bgt	a1,s6,.L14177
	ld	a5,8(a2)
	slli	a4,a4,5
	add	a4,a5,a4
	lbu	a5,24(a4)
	snez	a5,a5
	sd	a5,48(sp)
.L14177:
	ld	a5,16(sp)
	beq	a5,zero,.L14178
	beq	s10,zero,.L14178
	slli	a5,s5,3
	sd	a5,40(sp)
	ld	a5,56(sp)
	li	s0,0
	li	s1,266240
	addi	s11,a5,8
	slli	a5,s6,5
	li	t0,-1
	sd	a5,24(sp)
	j	.L14201
.L14191:
	sext.w	s0,a5
	addi	s11,s11,32
	ble	s10,a2,.L14178
.L14201:
	srl	a1,s9,s0
	addiw	a2,s0,1
	andi	a1,a1,1
	mv	a5,a2
	sext.w	s4,s0
	bne	a1,zero,.L14191
	ld	a1,0(s11)
	mv	a0,a1
	beq	a1,zero,.L14181
.L14180:
	lw	a5,4(a0)
	and	a2,a5,s1
	sext.w	a2,a2
	beq	a2,zero,.L14181
	and	a5,a5,s2
	sext.w	a5,a5
	beq	a5,zero,.L14182
	ld	a5,32(a0)
	ld	a0,8(a5)
	bne	a0,zero,.L14180
.L14181:
	ld	a5,8(sp)
	bne	a5,zero,.L14185
	blt	t6,t0,.L14186
	lbu	a2,0(a0)
	li	a5,162
	bne	a2,a5,.L14178
	lw	a5,44(a0)
	bne	a5,s8,.L14178
	lh	a5,48(a0)
	bne	a5,t6,.L14178
	beq	t6,t0,.L14192
.L14342:
	ld	a5,208(sp)
	sd	a5,104(sp)
.L14225:
	ld	a5,112(sp)
	sd	t6,88(sp)
	sd	t2,80(sp)
	ld	a5,0(a5)
	mv	a0,a5
	sd	a5,72(sp)
	call	sqlite3ExprCollSeq
	ld	a5,72(sp)
	ld	t2,80(sp)
	ld	t6,88(sp)
	li	t0,-1
	beq	a0,zero,.L14340
.L14193:
	ld	a5,64(t2)
	ld	a4,40(sp)
	ld	a0,0(a0)
	add	a5,a5,a4
	ld	a1,0(a5)
	j	.L14198
.L14194:
	add	a5,s3,a5
	add	a2,s3,a2
	lbu	a5,320(a5)
	lbu	a2,320(a2)
	bne	a5,a2,.L14197
.L14196:
	addi	a0,a0,1
	addi	a1,a1,1
.L14198:
	lbu	a5,0(a0)
	lbu	a2,0(a1)
	bne	a5,a2,.L14194
	bne	a5,zero,.L14196
	addiw	a5,s5,1
	sh	a5,30(s7)
	ld	a5,168(sp)
	bne	a5,zero,.L14200
.L14199:
	ld	a4,56(sp)
	slli	a5,s4,5
	add	a5,a4,a5
	ld	a4,152(sp)
	lbu	a5,32(a5)
	bne	a4,zero,.L14341
	ld	a4,96(sp)
	xor	a3,a4,a5
	sd	a3,200(sp)
	ld	a3,16(sp)
	sd	a3,152(sp)
	beq	a4,a5,.L14200
	ld	a4,240(sp)
	ld	a3,216(sp)
	ld	a5,0(a4)
	or	a5,a5,a3
	sd	a5,0(a4)
.L14200:
	li	a5,-1
	beq	t6,a5,.L14329
.L14203:
	li	a5,1
	sll	a4,a5,s4
	or	s9,s9,a4
	j	.L14175
.L14204:
	ld	a5,144(sp)
	beq	a5,zero,.L14207
.L14206:
	ld	a4,176(sp)
	ld	a5,8(s7)
	or	a5,a4,a5
	sd	a5,176(sp)
	beq	s10,zero,.L14155
	ld	a5,56(sp)
	addi	s11,a5,8
	j	.L14226
.L14182:
	ld	a0,16(a0)
	bne	a0,zero,.L14180
	j	.L14181
.L14185:
	blt	t6,t0,.L14188
	lbu	a2,0(a0)
	li	a5,162
	bne	a2,a5,.L14189
	lw	a5,44(a0)
	bne	a5,s8,.L14189
	lh	a0,48(a0)
	addiw	a2,s0,1
	mv	a5,a2
	bne	a0,t6,.L14191
	bne	t6,t0,.L14342
.L14192:
	addiw	a5,s5,1
	sh	a5,30(s7)
	ld	a5,168(sp)
	beq	a5,zero,.L14199
.L14329:
	ld	a5,16(sp)
	sd	a5,144(sp)
	j	.L14203
.L14189:
	addiw	a2,s0,1
	mv	a5,a2
	j	.L14191
.L14188:
	ld	a5,80(t2)
	ld	a4,24(sp)
	mv	a2,s8
	sd	t6,80(sp)
	add	a5,a5,a4
	ld	a1,8(a5)
	sd	t2,72(sp)
	call	sqlite3ExprCompareSkip
	addiw	a2,s0,1
	ld	t2,72(sp)
	ld	t6,80(sp)
	mv	a5,a2
	li	t0,-1
	bne	a0,zero,.L14191
	ld	a5,16(sp)
	ld	a1,0(s11)
	sd	a5,104(sp)
	j	.L14225
.L14186:
	ld	a5,80(t2)
	ld	a4,24(sp)
	mv	a2,s8
	sd	t6,80(sp)
	add	a5,a5,a4
	ld	a1,8(a5)
	sd	t2,72(sp)
	call	sqlite3ExprCompareSkip
	bne	a0,zero,.L14178
	ld	a1,0(s11)
	ld	t2,72(sp)
	ld	t6,80(sp)
	sd	zero,104(sp)
	j	.L14225
.L14197:
	ld	a4,104(sp)
	addiw	a2,s0,1
	mv	a5,a2
	bne	a4,zero,.L14191
	j	.L14178
.L14174:
	li	a3,1
	andi	a4,a4,1
	sd	a3,16(sp)
	beq	a4,zero,.L14173
	addiw	a4,s6,1
	ld	t6,0(t6)
	bge	a4,a1,.L14173
	addiw	a5,a5,-2
	subw	a5,a5,s6
	slli	a5,a5,32
	addi	a4,s5,1
	srli	a5,a5,32
	add	a5,a5,a4
	addi	a2,a2,8
	slli	a5,a5,3
	addi	a4,a0,8
	add	a2,a0,a2
	add	a5,a5,a4
	j	.L14176
.L14343:
	addi	a2,a2,8
	beq	a2,a5,.L14234
.L14176:
	ld	a4,0(a2)
	ld	a4,0(a4)
	bne	t6,a4,.L14343
	sd	zero,16(sp)
	bne	t2,zero,.L14344
.L14238:
	sd	zero,96(sp)
	li	t6,-1
	j	.L14177
.L14340:
	ld	a5,0(a5)
	ld	a0,16(a5)
	j	.L14193
.L14338:
	ld	a4,176(sp)
	ld	a5,8(s7)
	or	a5,a4,a5
	sd	a5,176(sp)
.L14226:
	ld	a5,112(sp)
	li	s8,0
	li	s2,1
	addi	s1,a5,656
	ld	a5,176(sp)
	lla	s5,sqlite3SelectWalkFail
	addi	s0,sp,256
	not	s6,a5
	j	.L14213
.L14345:
	mv	a1,s4
	mv	a0,s1
	call	sqlite3WhereExprUsageNN
	and	a0,s6,a0