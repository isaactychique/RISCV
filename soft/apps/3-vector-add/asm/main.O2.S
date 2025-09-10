	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.L2:
	lui	a3,%hi(vect)
	addi	a5,a3,%lo(vect)
	li	a4,0
	addi	a3,a3,%lo(vect)
	li	a2,1000
.L3:
	sw	a4,0(a3)
	addi	a4,a4,1
	addi	a3,a3,4
	bne	a4,a2,.L3
	li	a3,4096
	addi	a3,a3,-96
	add	a3,a5,a3
	li	a0,0
.L4:
	lw	a4,0(a5)
	addi	a5,a5,4
	addi	a4,a4,-10
	add	a0,a0,a4
	bne	a5,a3,.L4
	ret
	.size	main, .-main
	.globl	vect
	.globl	SCALAR
	.bss
	.align	2
	.type	vect, @object
	.size	vect, 4000
vect:
	.zero	4000
	.section	.srodata,"a"
	.align	2
	.type	SCALAR, @object
	.size	SCALAR, 4
SCALAR:
	.word	10
	.ident	"GCC: (GNU) 13.1.0"
