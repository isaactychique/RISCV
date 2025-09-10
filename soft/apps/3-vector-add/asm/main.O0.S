	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	SCALAR
	.section	.srodata,"a"
	.align	2
	.type	SCALAR, @object
	.size	SCALAR, 4
SCALAR:
	.word	10
	.globl	vect
	.bss
	.align	2
	.type	vect, @object
	.size	vect, 4000
vect:
	.zero	4000
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
.L2:
	sw	zero,-20(s0)
	j	.L3
.L4:
	lui	a5,%hi(vect)
	addi	a4,a5,%lo(vect)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L3:
	lw	a4,-20(s0)
	li	a5,999
	ble	a4,a5,.L4
	sw	zero,-24(s0)
.L5:
	sw	zero,-28(s0)
	j	.L6
.L7:
	lui	a5,%hi(vect)
	addi	a4,a5,%lo(vect)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,10
	sub	a5,a4,a5
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L6:
	lw	a4,-28(s0)
	li	a5,999
	ble	a4,a5,.L7
	lw	a5,-24(s0)
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 13.1.0"
