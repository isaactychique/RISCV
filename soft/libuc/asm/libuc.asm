In archive libuc.a:

print.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <putchar>:
   0:	06000737          	lui	a4,0x6000

00000004 <.L2>:
   4:	00072783          	lw	a5,0(a4) # 6000000 <.L53+0x5fffe08>
   8:	fe078ee3          	beqz	a5,4 <.L2>
   c:	00a72023          	sw	a0,0(a4)
  10:	00008067          	ret

00000014 <print_string>:
  14:	00054683          	lbu	a3,0(a0)
  18:	02068063          	beqz	a3,38 <.L6>
  1c:	06000737          	lui	a4,0x6000

00000020 <.L8>:
  20:	00072783          	lw	a5,0(a4) # 6000000 <.L53+0x5fffe08>
  24:	fe078ee3          	beqz	a5,20 <.L8>
  28:	00d72023          	sw	a3,0(a4)
  2c:	00154683          	lbu	a3,1(a0)
  30:	00150513          	add	a0,a0,1
  34:	fe0696e3          	bnez	a3,20 <.L8>

00000038 <.L6>:
  38:	00008067          	ret

0000003c <puts>:
  3c:	00054683          	lbu	a3,0(a0)
  40:	02068063          	beqz	a3,60 <.L17>
  44:	06000737          	lui	a4,0x6000

00000048 <.L18>:
  48:	00072783          	lw	a5,0(a4) # 6000000 <.L53+0x5fffe08>
  4c:	fe078ee3          	beqz	a5,48 <.L18>
  50:	00d72023          	sw	a3,0(a4)
  54:	00154683          	lbu	a3,1(a0)
  58:	00150513          	add	a0,a0,1
  5c:	fe0696e3          	bnez	a3,48 <.L18>

00000060 <.L17>:
  60:	06000737          	lui	a4,0x6000

00000064 <.L20>:
  64:	00072783          	lw	a5,0(a4) # 6000000 <.L53+0x5fffe08>
  68:	fe078ee3          	beqz	a5,64 <.L20>
  6c:	00a00793          	li	a5,10
  70:	00f72023          	sw	a5,0(a4)
  74:	00100513          	li	a0,1
  78:	00008067          	ret

0000007c <print_dec>:
  7c:	ef010113          	add	sp,sp,-272
  80:	10812423          	sw	s0,264(sp)
  84:	10112623          	sw	ra,268(sp)
  88:	10912223          	sw	s1,260(sp)
  8c:	11212023          	sw	s2,256(sp)
  90:	00050413          	mv	s0,a0
  94:	06000737          	lui	a4,0x6000
  98:	00055c63          	bgez	a0,b0 <.L32>

0000009c <.L30>:
  9c:	00072783          	lw	a5,0(a4) # 6000000 <.L53+0x5fffe08>
  a0:	fe078ee3          	beqz	a5,9c <.L30>
  a4:	02d00793          	li	a5,45
  a8:	00f72023          	sw	a5,0(a4)
  ac:	40800433          	neg	s0,s0

000000b0 <.L32>:
  b0:	00010913          	mv	s2,sp
  b4:	00090493          	mv	s1,s2
  b8:	02c0006f          	j	e4 <.L31>

000000bc <.L33>:
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.L33>
  c4:	00050793          	mv	a5,a0
  c8:	00a00593          	li	a1,10
  cc:	00040513          	mv	a0,s0
  d0:	00f48023          	sb	a5,0(s1)
  d4:	00000097          	auipc	ra,0x0
  d8:	000080e7          	jalr	ra # d4 <.L33+0x18>
  dc:	00148493          	add	s1,s1,1
  e0:	00050413          	mv	s0,a0

000000e4 <.L31>:
  e4:	00a00593          	li	a1,10
  e8:	00040513          	mv	a0,s0
  ec:	fc0418e3          	bnez	s0,bc <.L33>
  f0:	fd2486e3          	beq	s1,s2,bc <.L33>
  f4:	06000737          	lui	a4,0x6000

000000f8 <.L35>:
  f8:	fff4c683          	lbu	a3,-1(s1)
  fc:	fff48493          	add	s1,s1,-1
 100:	03068693          	add	a3,a3,48
 104:	0ff6f693          	zext.b	a3,a3

00000108 <.L34>:
 108:	00072783          	lw	a5,0(a4) # 6000000 <.L53+0x5fffe08>
 10c:	fe078ee3          	beqz	a5,108 <.L34>
 110:	00d72023          	sw	a3,0(a4)
 114:	ff2492e3          	bne	s1,s2,f8 <.L35>
 118:	10c12083          	lw	ra,268(sp)
 11c:	10812403          	lw	s0,264(sp)
 120:	10412483          	lw	s1,260(sp)
 124:	10012903          	lw	s2,256(sp)
 128:	11010113          	add	sp,sp,272
 12c:	00008067          	ret

00000130 <print_hex_digits>:
 130:	000007b7          	lui	a5,0x0
 134:	00078793          	mv	a5,a5
 138:	0007a883          	lw	a7,0(a5) # 0 <putchar>
 13c:	0047a803          	lw	a6,4(a5)
 140:	0087a603          	lw	a2,8(a5)
 144:	00c7a703          	lw	a4,12(a5)
 148:	0107c783          	lbu	a5,16(a5)
 14c:	fe010113          	add	sp,sp,-32
 150:	fff58693          	add	a3,a1,-1
 154:	01112623          	sw	a7,12(sp)
 158:	01012823          	sw	a6,16(sp)
 15c:	00c12a23          	sw	a2,20(sp)
 160:	00e12c23          	sw	a4,24(sp)
 164:	00f10e23          	sb	a5,28(sp)
 168:	00269693          	sll	a3,a3,0x2
 16c:	0206c863          	bltz	a3,19c <.L44>
 170:	06000737          	lui	a4,0x6000

00000174 <.L47>:
 174:	00d557b3          	srl	a5,a0,a3
 178:	00f7f793          	and	a5,a5,15
 17c:	02078793          	add	a5,a5,32
 180:	002787b3          	add	a5,a5,sp
 184:	fec7c603          	lbu	a2,-20(a5)

00000188 <.L46>:
 188:	00072783          	lw	a5,0(a4) # 6000000 <.L53+0x5fffe08>
 18c:	fe078ee3          	beqz	a5,188 <.L46>
 190:	00c72023          	sw	a2,0(a4)
 194:	ffc68693          	add	a3,a3,-4
 198:	fc06dee3          	bgez	a3,174 <.L47>

0000019c <.L44>:
 19c:	02010113          	add	sp,sp,32
 1a0:	00008067          	ret

000001a4 <print_hex>:
 1a4:	000007b7          	lui	a5,0x0
 1a8:	00078793          	mv	a5,a5
 1ac:	0007a583          	lw	a1,0(a5) # 0 <putchar>
 1b0:	0087a683          	lw	a3,8(a5)
 1b4:	00c7a703          	lw	a4,12(a5)
 1b8:	0047a603          	lw	a2,4(a5)
 1bc:	0107c783          	lbu	a5,16(a5)
 1c0:	fe010113          	add	sp,sp,-32
 1c4:	00b12623          	sw	a1,12(sp)
 1c8:	00d12a23          	sw	a3,20(sp)
 1cc:	00e12c23          	sw	a4,24(sp)
 1d0:	00c12823          	sw	a2,16(sp)
 1d4:	00f10e23          	sb	a5,28(sp)
 1d8:	01c00693          	li	a3,28
 1dc:	06000737          	lui	a4,0x6000
 1e0:	ffc00593          	li	a1,-4

000001e4 <.L54>:
 1e4:	00d557b3          	srl	a5,a0,a3
 1e8:	00f7f793          	and	a5,a5,15
 1ec:	02078793          	add	a5,a5,32
 1f0:	002787b3          	add	a5,a5,sp
 1f4:	fec7c603          	lbu	a2,-20(a5)

000001f8 <.L53>:
 1f8:	00072783          	lw	a5,0(a4) # 6000000 <.L53+0x5fffe08>
 1fc:	fe078ee3          	beqz	a5,1f8 <.L53>
 200:	00c72023          	sw	a2,0(a4)
 204:	ffc68693          	add	a3,a3,-4
 208:	fcb69ee3          	bne	a3,a1,1e4 <.L54>
 20c:	02010113          	add	sp,sp,32
 210:	00008067          	ret

Disassembly of section .rodata.str1.4:

00000000 <.LC0>:
   0:	3130                	.2byte	0x3130
   2:	3332                	.2byte	0x3332
   4:	3534                	.2byte	0x3534
   6:	3736                	.2byte	0x3736
   8:	3938                	.2byte	0x3938
   a:	4241                	.2byte	0x4241
   c:	46454443          	.4byte	0x46454443
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

printf.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <printf>:
   0:	fb010113          	add	sp,sp,-80
   4:	02812423          	sw	s0,40(sp)
   8:	04f12223          	sw	a5,68(sp)
   c:	02112623          	sw	ra,44(sp)
  10:	02b12a23          	sw	a1,52(sp)
  14:	02c12c23          	sw	a2,56(sp)
  18:	02d12e23          	sw	a3,60(sp)
  1c:	04e12023          	sw	a4,64(sp)
  20:	05012423          	sw	a6,72(sp)
  24:	05112623          	sw	a7,76(sp)
  28:	00050413          	mv	s0,a0
  2c:	00054503          	lbu	a0,0(a0)
  30:	03410793          	add	a5,sp,52
  34:	00f12623          	sw	a5,12(sp)
  38:	06050863          	beqz	a0,a8 <.L13>
  3c:	02912223          	sw	s1,36(sp)
  40:	03212023          	sw	s2,32(sp)
  44:	01312e23          	sw	s3,28(sp)
  48:	01412c23          	sw	s4,24(sp)
  4c:	01512a23          	sw	s5,20(sp)
  50:	02500493          	li	s1,37
  54:	07300913          	li	s2,115
  58:	07800993          	li	s3,120
  5c:	06400a13          	li	s4,100
  60:	06300a93          	li	s5,99

00000064 <.L2>:
  64:	04951c63          	bne	a0,s1,bc <.L3>
  68:	00144503          	lbu	a0,1(s0)
  6c:	07250063          	beq	a0,s2,cc <.L16>
  70:	09350a63          	beq	a0,s3,104 <.L17>
  74:	0b450663          	beq	a0,s4,120 <.L18>
  78:	07550863          	beq	a0,s5,e8 <.L19>
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.L2+0x18>

00000084 <.L7>:
  84:	00140793          	add	a5,s0,1

00000088 <.L5>:
  88:	0017c503          	lbu	a0,1(a5)
  8c:	00178413          	add	s0,a5,1
  90:	fc051ae3          	bnez	a0,64 <.L2>
  94:	02412483          	lw	s1,36(sp)
  98:	02012903          	lw	s2,32(sp)
  9c:	01c12983          	lw	s3,28(sp)
  a0:	01812a03          	lw	s4,24(sp)
  a4:	01412a83          	lw	s5,20(sp)

000000a8 <.L13>:
  a8:	02c12083          	lw	ra,44(sp)
  ac:	02812403          	lw	s0,40(sp)
  b0:	00000513          	li	a0,0
  b4:	05010113          	add	sp,sp,80
  b8:	00008067          	ret

000000bc <.L3>:
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.L3>
  c4:	00040793          	mv	a5,s0
  c8:	fc1ff06f          	j	88 <.L5>

000000cc <.L16>:
  cc:	00c12783          	lw	a5,12(sp)
  d0:	0007a503          	lw	a0,0(a5)
  d4:	00478793          	add	a5,a5,4
  d8:	00f12623          	sw	a5,12(sp)
  dc:	00000097          	auipc	ra,0x0
  e0:	000080e7          	jalr	ra # dc <.L16+0x10>
  e4:	fa1ff06f          	j	84 <.L7>

000000e8 <.L19>:
  e8:	00c12783          	lw	a5,12(sp)
  ec:	0007c503          	lbu	a0,0(a5)
  f0:	00478793          	add	a5,a5,4
  f4:	00f12623          	sw	a5,12(sp)
  f8:	00000097          	auipc	ra,0x0
  fc:	000080e7          	jalr	ra # f8 <.L19+0x10>
 100:	f85ff06f          	j	84 <.L7>

00000104 <.L17>:
 104:	00c12783          	lw	a5,12(sp)
 108:	0007a503          	lw	a0,0(a5)
 10c:	00478793          	add	a5,a5,4
 110:	00f12623          	sw	a5,12(sp)
 114:	00000097          	auipc	ra,0x0
 118:	000080e7          	jalr	ra # 114 <.L17+0x10>
 11c:	f69ff06f          	j	84 <.L7>

00000120 <.L18>:
 120:	00c12783          	lw	a5,12(sp)
 124:	0007a503          	lw	a0,0(a5)
 128:	00478793          	add	a5,a5,4
 12c:	00f12623          	sw	a5,12(sp)
 130:	00000097          	auipc	ra,0x0
 134:	000080e7          	jalr	ra # 130 <.L18+0x10>
 138:	f4dff06f          	j	84 <.L7>

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

led_rgb.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <led_rgb_set_red>:
   0:	0d0007b7          	lui	a5,0xd000
   4:	04400713          	li	a4,68
   8:	00e7a023          	sw	a4,0(a5) # d000000 <led_rgb_get_color+0xcffffc0>
   c:	00008067          	ret

00000010 <led_rgb_set_green>:
  10:	000047b7          	lui	a5,0x4
  14:	40078793          	add	a5,a5,1024 # 4400 <led_rgb_get_color+0x43c0>
  18:	0d000737          	lui	a4,0xd000
  1c:	00f72023          	sw	a5,0(a4) # d000000 <led_rgb_get_color+0xcffffc0>
  20:	00008067          	ret

00000024 <led_rgb_set_blue>:
  24:	0d0007b7          	lui	a5,0xd000
  28:	00440737          	lui	a4,0x440
  2c:	00e7a023          	sw	a4,0(a5) # d000000 <led_rgb_get_color+0xcffffc0>
  30:	00008067          	ret

00000034 <led_rgb_set_color>:
  34:	0d0007b7          	lui	a5,0xd000
  38:	00a7a023          	sw	a0,0(a5) # d000000 <led_rgb_get_color+0xcffffc0>
  3c:	00008067          	ret

00000040 <led_rgb_get_color>:
  40:	0d0007b7          	lui	a5,0xd000
  44:	0007a503          	lw	a0,0(a5) # d000000 <led_rgb_get_color+0xcffffc0>
  48:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <led_rgb_set_green+0x4>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

oled_screen.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <pixel>:
   0:	000087b7          	lui	a5,0x8
   4:	c0078793          	add	a5,a5,-1024 # 7c00 <.L6+0x7b8c>
   8:	00259593          	sll	a1,a1,0x2
   c:	00761613          	sll	a2,a2,0x7
  10:	00f67633          	and	a2,a2,a5
  14:	3e05f593          	and	a1,a1,992
  18:	40355513          	sra	a0,a0,0x3
  1c:	00c5e5b3          	or	a1,a1,a2
  20:	01f57513          	and	a0,a0,31
  24:	00a5e533          	or	a0,a1,a0
  28:	00008067          	ret

0000002c <set_12b_from_16b>:
  2c:	000016b7          	lui	a3,0x1
  30:	00355793          	srl	a5,a0,0x3
  34:	40455713          	sra	a4,a0,0x4
  38:	f0068693          	add	a3,a3,-256 # f00 <.L6+0xe8c>
  3c:	00d77733          	and	a4,a4,a3
  40:	0f07f793          	and	a5,a5,240
  44:	40155513          	sra	a0,a0,0x1
  48:	00e7e7b3          	or	a5,a5,a4
  4c:	00f57513          	and	a0,a0,15
  50:	00a7e533          	or	a0,a5,a0
  54:	00008067          	ret

00000058 <set_pixel>:
  58:	00251513          	sll	a0,a0,0x2
  5c:	0b0007b7          	lui	a5,0xb000
  60:	00a787b3          	add	a5,a5,a0
  64:	00b7a023          	sw	a1,0(a5) # b000000 <.L6+0xaffff8c>
  68:	00008067          	ret

0000006c <clear_screen>:
  6c:	0b0007b7          	lui	a5,0xb000
  70:	0b006737          	lui	a4,0xb006

00000074 <.L6>:
  74:	0007a023          	sw	zero,0(a5) # b000000 <.L6+0xaffff8c>
  78:	00478793          	add	a5,a5,4
  7c:	fee79ce3          	bne	a5,a4,74 <.L6>
  80:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

timer.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <get_cycles>:
   0:	0c0007b7          	lui	a5,0xc000
   4:	0007a503          	lw	a0,0(a5) # c000000 <is_timer_finished+0xbffff18>
   8:	00008067          	ret

0000000c <time>:
   c:	0c0007b7          	lui	a5,0xc000
  10:	0007a503          	lw	a0,0(a5) # c000000 <is_timer_finished+0xbffff18>
  14:	00008067          	ret

00000018 <sleep_cycles>:
  18:	0c000737          	lui	a4,0xc000
  1c:	00470713          	add	a4,a4,4 # c000004 <is_timer_finished+0xbffff1c>
  20:	00a72023          	sw	a0,0(a4)

00000024 <.L5>:
  24:	00072783          	lw	a5,0(a4)
  28:	fe079ee3          	bnez	a5,24 <.L5>
  2c:	00008067          	ret

00000030 <sleep_us>:
  30:	00151793          	sll	a5,a0,0x1
  34:	00a787b3          	add	a5,a5,a0
  38:	00379793          	sll	a5,a5,0x3
  3c:	0c000737          	lui	a4,0xc000
  40:	00a787b3          	add	a5,a5,a0
  44:	00279793          	sll	a5,a5,0x2
  48:	00470713          	add	a4,a4,4 # c000004 <is_timer_finished+0xbffff1c>
  4c:	00f72023          	sw	a5,0(a4)

00000050 <.L8>:
  50:	00072783          	lw	a5,0(a4)
  54:	fe079ee3          	bnez	a5,50 <.L8>
  58:	00008067          	ret

0000005c <sleep_ms>:
  5c:	00151793          	sll	a5,a0,0x1
  60:	00a787b3          	add	a5,a5,a0
  64:	00679713          	sll	a4,a5,0x6
  68:	00e787b3          	add	a5,a5,a4
  6c:	00279793          	sll	a5,a5,0x2
  70:	00a787b3          	add	a5,a5,a0
  74:	00279793          	sll	a5,a5,0x2
  78:	0c000737          	lui	a4,0xc000
  7c:	00a787b3          	add	a5,a5,a0
  80:	00579793          	sll	a5,a5,0x5
  84:	00470713          	add	a4,a4,4 # c000004 <is_timer_finished+0xbffff1c>
  88:	00f72023          	sw	a5,0(a4)

0000008c <.L11>:
  8c:	00072783          	lw	a5,0(a4)
  90:	fe079ee3          	bnez	a5,8c <.L11>
  94:	00008067          	ret

00000098 <sleep>:
  98:	00151793          	sll	a5,a0,0x1
  9c:	00a787b3          	add	a5,a5,a0
  a0:	00679793          	sll	a5,a5,0x6
  a4:	40a787b3          	sub	a5,a5,a0
  a8:	00279793          	sll	a5,a5,0x2
  ac:	40a787b3          	sub	a5,a5,a0
  b0:	00479793          	sll	a5,a5,0x4
  b4:	40a787b3          	sub	a5,a5,a0
  b8:	00579793          	sll	a5,a5,0x5
  bc:	0c000737          	lui	a4,0xc000
  c0:	00a787b3          	add	a5,a5,a0
  c4:	00879793          	sll	a5,a5,0x8
  c8:	00470713          	add	a4,a4,4 # c000004 <is_timer_finished+0xbffff1c>
  cc:	00f72023          	sw	a5,0(a4)

000000d0 <.L14>:
  d0:	00072783          	lw	a5,0(a4)
  d4:	fe079ee3          	bnez	a5,d0 <.L14>
  d8:	00008067          	ret

000000dc <start_timer>:
  dc:	0c0007b7          	lui	a5,0xc000
  e0:	00a7a223          	sw	a0,4(a5) # c000004 <is_timer_finished+0xbffff1c>
  e4:	00008067          	ret

000000e8 <is_timer_finished>:
  e8:	0c0007b7          	lui	a5,0xc000
  ec:	0047a703          	lw	a4,4(a5) # c000004 <is_timer_finished+0xbffff1c>
  f0:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

clz.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__clzsi2>:
   0:	00050693          	mv	a3,a0
   4:	00000513          	li	a0,0
   8:	0206c063          	bltz	a3,28 <.L1>
   c:	800007b7          	lui	a5,0x80000
  10:	02000613          	li	a2,32

00000014 <.L3>:
  14:	0017d793          	srl	a5,a5,0x1
  18:	00150513          	add	a0,a0,1
  1c:	00f6f733          	and	a4,a3,a5
  20:	00c50663          	beq	a0,a2,2c <.L7>
  24:	fe0708e3          	beqz	a4,14 <.L3>

00000028 <.L1>:
  28:	00008067          	ret

0000002c <.L7>:
  2c:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

memcpy.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <memcpy>:
   0:	00a5e7b3          	or	a5,a1,a0
   4:	0037f713          	and	a4,a5,3
   8:	00050793          	mv	a5,a0
   c:	02070263          	beqz	a4,30 <.L13>

00000010 <.L2>:
  10:	00c786b3          	add	a3,a5,a2
  14:	06060063          	beqz	a2,74 <.L14>

00000018 <.L7>:
  18:	0005c703          	lbu	a4,0(a1)
  1c:	00178793          	add	a5,a5,1
  20:	00158593          	add	a1,a1,1
  24:	fee78fa3          	sb	a4,-1(a5)
  28:	fef698e3          	bne	a3,a5,18 <.L7>
  2c:	00008067          	ret

00000030 <.L13>:
  30:	00300713          	li	a4,3
  34:	fcc77ee3          	bgeu	a4,a2,10 <.L2>
  38:	ffc60893          	add	a7,a2,-4
  3c:	ffc8f893          	and	a7,a7,-4
  40:	00488893          	add	a7,a7,4
  44:	011507b3          	add	a5,a0,a7
  48:	00058693          	mv	a3,a1
  4c:	00050713          	mv	a4,a0

00000050 <.L6>:
  50:	0006a803          	lw	a6,0(a3)
  54:	00470713          	add	a4,a4,4
  58:	00468693          	add	a3,a3,4
  5c:	ff072e23          	sw	a6,-4(a4)
  60:	fef718e3          	bne	a4,a5,50 <.L6>
  64:	00367613          	and	a2,a2,3
  68:	011585b3          	add	a1,a1,a7
  6c:	00c786b3          	add	a3,a5,a2
  70:	fa0614e3          	bnez	a2,18 <.L7>

00000074 <.L14>:
  74:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strcmp.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <strcmp>:
   0:	00054783          	lbu	a5,0(a0)
   4:	00158593          	add	a1,a1,1
   8:	00150513          	add	a0,a0,1
   c:	fff5c703          	lbu	a4,-1(a1)
  10:	00078863          	beqz	a5,20 <.L7>
  14:	fee786e3          	beq	a5,a4,0 <strcmp>
  18:	40e78533          	sub	a0,a5,a4
  1c:	00008067          	ret

00000020 <.L7>:
  20:	40e00533          	neg	a0,a4
  24:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strlen.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <strlen>:
   0:	00054783          	lbu	a5,0(a0)
   4:	02078463          	beqz	a5,2c <.L8>
   8:	ff010113          	add	sp,sp,-16
   c:	00150513          	add	a0,a0,1
  10:	00112623          	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <strlen+0x14>
  1c:	00c12083          	lw	ra,12(sp)
  20:	00150513          	add	a0,a0,1
  24:	01010113          	add	sp,sp,16
  28:	00008067          	ret

0000002c <.L8>:
  2c:	00000513          	li	a0,0
  30:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strncpy.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <strncpy>:
   0:	ff010113          	add	sp,sp,-16
   4:	00812423          	sw	s0,8(sp)
   8:	00112623          	sw	ra,12(sp)
   c:	00050413          	mv	s0,a0
  10:	00000513          	li	a0,0
  14:	00061a63          	bnez	a2,28 <.L2>
  18:	0380006f          	j	50 <.L6>

0000001c <.L4>:
  1c:	00e68023          	sb	a4,0(a3)
  20:	00150513          	add	a0,a0,1
  24:	02a60663          	beq	a2,a0,50 <.L6>

00000028 <.L2>:
  28:	00a58733          	add	a4,a1,a0
  2c:	00074703          	lbu	a4,0(a4)
  30:	00a406b3          	add	a3,s0,a0
  34:	fe0714e3          	bnez	a4,1c <.L4>
  38:	00c57c63          	bgeu	a0,a2,50 <.L6>
  3c:	40a60633          	sub	a2,a2,a0
  40:	00000593          	li	a1,0
  44:	00068513          	mv	a0,a3
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.L2+0x20>

00000050 <.L6>:
  50:	00c12083          	lw	ra,12(sp)
  54:	00040513          	mv	a0,s0
  58:	00812403          	lw	s0,8(sp)
  5c:	01010113          	add	sp,sp,16
  60:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

memset.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <memset>:
   0:	0ff5f593          	zext.b	a1,a1
   4:	00c50733          	add	a4,a0,a2
   8:	00050793          	mv	a5,a0
   c:	00060863          	beqz	a2,1c <.L7>

00000010 <.L3>:
  10:	00b78023          	sb	a1,0(a5)
  14:	00178793          	add	a5,a5,1
  18:	fef71ce3          	bne	a4,a5,10 <.L3>

0000001c <.L7>:
  1c:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

random.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <random>:
   0:	ff010113          	add	sp,sp,-16
   4:	00812423          	sw	s0,8(sp)
   8:	00000437          	lui	s0,0x0
   c:	00042703          	lw	a4,0(s0) # 0 <random>
  10:	00025537          	lui	a0,0x25
  14:	d6950513          	add	a0,a0,-663 # 24d69 <random+0x24d69>
  18:	00271793          	sll	a5,a4,0x2
  1c:	00e787b3          	add	a5,a5,a4
  20:	00279793          	sll	a5,a5,0x2
  24:	00e787b3          	add	a5,a5,a4
  28:	00679693          	sll	a3,a5,0x6
  2c:	00d787b3          	add	a5,a5,a3
  30:	00e787b3          	add	a5,a5,a4
  34:	000ae5b7          	lui	a1,0xae
  38:	52958593          	add	a1,a1,1321 # ae529 <random+0xae529>
  3c:	00a78533          	add	a0,a5,a0
  40:	00112623          	sw	ra,12(sp)
  44:	00000097          	auipc	ra,0x0
  48:	000080e7          	jalr	ra # 44 <random+0x44>
  4c:	00c12083          	lw	ra,12(sp)
  50:	00a42023          	sw	a0,0(s0)
  54:	00812403          	lw	s0,8(sp)
  58:	01010113          	add	sp,sp,16
  5c:	00008067          	ret

Disassembly of section .sdata:

00000000 <randomseed>:
   0:	0001                	.2byte	0x1
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strcpy.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <strcpy>:
   0:	00050793          	mv	a5,a0

00000004 <.L2>:
   4:	0005c703          	lbu	a4,0(a1)
   8:	00178793          	add	a5,a5,1
   c:	00158593          	add	a1,a1,1
  10:	fee78fa3          	sb	a4,-1(a5)
  14:	fe0718e3          	bnez	a4,4 <.L2>
  18:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strncmp.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <strncmp>:
   0:	02060263          	beqz	a2,24 <.L6>

00000004 <.L14>:
   4:	00054783          	lbu	a5,0(a0)
   8:	fff60613          	add	a2,a2,-1
   c:	02078063          	beqz	a5,2c <.L4>
  10:	0005c703          	lbu	a4,0(a1)
  14:	00f71c63          	bne	a4,a5,2c <.L4>
  18:	00150513          	add	a0,a0,1
  1c:	00158593          	add	a1,a1,1
  20:	fe0612e3          	bnez	a2,4 <.L14>

00000024 <.L6>:
  24:	00000513          	li	a0,0
  28:	00008067          	ret

0000002c <.L4>:
  2c:	00054503          	lbu	a0,0(a0)
  30:	0005c783          	lbu	a5,0(a1)
  34:	40f50533          	sub	a0,a0,a5
  38:	00008067          	ret

Disassembly of section .comment:

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	4728                	.2byte	0x4728
   8:	554e                	.2byte	0x554e
   a:	2029                	.2byte	0x2029
   c:	3331                	.2byte	0x3331
   e:	312e                	.2byte	0x312e
  10:	302e                	.2byte	0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

mul.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__mulsi3>:
   0:	00050613          	mv	a2,a0
   4:	00000513          	li	a0,0

00000008 <.L1>:
   8:	0015f693          	and	a3,a1,1
   c:	00068463          	beqz	a3,14 <.L2>
  10:	00c50533          	add	a0,a0,a2

00000014 <.L2>:
  14:	0015d593          	srl	a1,a1,0x1
  18:	00161613          	sll	a2,a2,0x1
  1c:	fe0596e3          	bnez	a1,8 <.L1>
  20:	00008067          	ret

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3376                	.2byte	0x3376
  14:	6932                	.2byte	0x6932
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31

div.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__divsi3>:
   0:	06054063          	bltz	a0,60 <.L10>
   4:	0605c663          	bltz	a1,70 <.L11>

00000008 <__udivsi3>:
   8:	00058613          	mv	a2,a1
   c:	00050593          	mv	a1,a0
  10:	fff00513          	li	a0,-1
  14:	02060c63          	beqz	a2,4c <.L5>
  18:	00100693          	li	a3,1
  1c:	00b67a63          	bgeu	a2,a1,30 <.L2>

00000020 <.L1>:
  20:	00c05863          	blez	a2,30 <.L2>
  24:	00161613          	sll	a2,a2,0x1
  28:	00169693          	sll	a3,a3,0x1
  2c:	feb66ae3          	bltu	a2,a1,20 <.L1>

00000030 <.L2>:
  30:	00000513          	li	a0,0

00000034 <.L3>:
  34:	00c5e663          	bltu	a1,a2,40 <.L4>
  38:	40c585b3          	sub	a1,a1,a2
  3c:	00d56533          	or	a0,a0,a3

00000040 <.L4>:
  40:	0016d693          	srl	a3,a3,0x1
  44:	00165613          	srl	a2,a2,0x1
  48:	fe0696e3          	bnez	a3,34 <.L3>

0000004c <.L5>:
  4c:	00008067          	ret

00000050 <__umodsi3>:
  50:	00008293          	mv	t0,ra
  54:	fb5ff0ef          	jal	8 <__udivsi3>
  58:	00058513          	mv	a0,a1
  5c:	00028067          	jr	t0

00000060 <.L10>:
  60:	40a00533          	neg	a0,a0
  64:	0005d863          	bgez	a1,74 <.L12>
  68:	40b005b3          	neg	a1,a1
  6c:	f95ff06f          	j	0 <__divsi3>

00000070 <.L11>:
  70:	40b005b3          	neg	a1,a1

00000074 <.L12>:
  74:	00008293          	mv	t0,ra
  78:	f89ff0ef          	jal	0 <__divsi3>
  7c:	40a00533          	neg	a0,a0
  80:	00028067          	jr	t0

00000084 <__modsi3>:
  84:	00008293          	mv	t0,ra
  88:	0005ca63          	bltz	a1,9c <.L31>
  8c:	00054c63          	bltz	a0,a4 <.L32>

00000090 <.L30>:
  90:	f79ff0ef          	jal	8 <__udivsi3>
  94:	00058513          	mv	a0,a1
  98:	00028067          	jr	t0

0000009c <.L31>:
  9c:	40b005b3          	neg	a1,a1
  a0:	fe0558e3          	bgez	a0,90 <.L30>

000000a4 <.L32>:
  a4:	40a00533          	neg	a0,a0
  a8:	f61ff0ef          	jal	8 <__udivsi3>
  ac:	40b00533          	neg	a0,a1
  b0:	00028067          	jr	t0

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3376                	.2byte	0x3376
  14:	6932                	.2byte	0x6932
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31
