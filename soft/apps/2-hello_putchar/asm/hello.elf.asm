
./bin/hello.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	000047b7          	lui	a5,0x4
   4:	0d000737          	lui	a4,0xd000
   8:	40078793          	add	a5,a5,1024 # 4400 <start+0x4400>
   c:	00f72023          	sw	a5,0(a4) # d000000 <start+0xd000000>
  10:	04800693          	li	a3,72
  14:	060007b7          	lui	a5,0x6000
  18:	00d7a023          	sw	a3,0(a5) # 6000000 <start+0x6000000>
  1c:	06500693          	li	a3,101
  20:	00d7a023          	sw	a3,0(a5)
  24:	06c00693          	li	a3,108
  28:	00d7a023          	sw	a3,0(a5)
  2c:	00d7a023          	sw	a3,0(a5)
  30:	06f00693          	li	a3,111
  34:	00d7a023          	sw	a3,0(a5)
  38:	00a00693          	li	a3,10
  3c:	00d7a023          	sw	a3,0(a5)
  40:	04400793          	li	a5,68
  44:	00f72023          	sw	a5,0(a4)
  48:	00100073          	ebreak
  4c:	0000006f          	j	4c <start+0x4c>

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
