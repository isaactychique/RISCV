
./bin/main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	008000ef          	jal	10 <main>
   c:	00100073          	ebreak

00000010 <main>:
  10:	000106b7          	lui	a3,0x10
  14:	00468793          	add	a5,a3,4 # 10004 <vect>
  18:	00000713          	li	a4,0
  1c:	00468693          	add	a3,a3,4
  20:	3e800613          	li	a2,1000
  24:	00e6a023          	sw	a4,0(a3)
  28:	00170713          	add	a4,a4,1
  2c:	00468693          	add	a3,a3,4
  30:	fec71ae3          	bne	a4,a2,24 <main+0x14>
  34:	000016b7          	lui	a3,0x1
  38:	fa068693          	add	a3,a3,-96 # fa0 <main+0xf90>
  3c:	00d786b3          	add	a3,a5,a3
  40:	00000513          	li	a0,0
  44:	0007a703          	lw	a4,0(a5)
  48:	00478793          	add	a5,a5,4
  4c:	ff670713          	add	a4,a4,-10
  50:	00e50533          	add	a0,a0,a4
  54:	fed798e3          	bne	a5,a3,44 <main+0x34>
  58:	00008067          	ret

Disassembly of section .data:

00010000 <SCALAR>:
   10000:	000a                	.2byte	0xa
	...

00010004 <vect>:
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <main+0x4>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.4byte	0x3a434347
   4:	2820                	.2byte	0x2820
   6:	29554e47          	.4byte	0x29554e47
   a:	3120                	.2byte	0x3120
   c:	2e312e33          	.4byte	0x2e312e33
  10:	0030                	.2byte	0x30
