
./bin/hello.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	060007b7          	lui	a5,0x6000
   4:	04800713          	li	a4,72
   8:	00e7a023          	sw	a4,0(a5) # 6000000 <start+0x6000000>
   c:	06500713          	li	a4,101
  10:	00e7a023          	sw	a4,0(a5)
  14:	06c00713          	li	a4,108
  18:	00e7a023          	sw	a4,0(a5)
  1c:	00e7a023          	sw	a4,0(a5)
  20:	06f00713          	li	a4,111
  24:	00e7a023          	sw	a4,0(a5)
  28:	02000713          	li	a4,32
  2c:	00e7a023          	sw	a4,0(a5)
  30:	02100713          	li	a4,33
  34:	00e7a023          	sw	a4,0(a5)
  38:	00a00713          	li	a4,10
  3c:	00e7a023          	sw	a4,0(a5)
  40:	00100073          	ebreak
  44:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.4byte	0x3a434347
   4:	2820                	.2byte	0x2820
   6:	29554e47          	.4byte	0x29554e47
   a:	3120                	.2byte	0x3120
   c:	2e312e33          	.4byte	0x2e312e33
  10:	0030                	.2byte	0x30

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <start+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31
