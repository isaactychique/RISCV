
./bin/mult_div.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	008000ef          	jal	10 <main>
   c:	00100073          	ebreak

00000010 <main>:
  10:	fe010113          	add	sp,sp,-32 # 1ffe0 <__modsi3+0x1fb8c>
  14:	00112e23          	sw	ra,28(sp)
  18:	00812c23          	sw	s0,24(sp)
  1c:	00912a23          	sw	s1,20(sp)
  20:	01212823          	sw	s2,16(sp)
  24:	01312623          	sw	s3,12(sp)
  28:	01412423          	sw	s4,8(sp)
  2c:	00500413          	li	s0,5
  30:	00100493          	li	s1,1
  34:	01700a13          	li	s4,23
  38:	000109b7          	lui	s3,0x10
  3c:	01000913          	li	s2,16
  40:	034467b3          	rem	a5,s0,s4
  44:	02f484b3          	mul	s1,s1,a5
  48:	00098513          	mv	a0,s3
  4c:	098000ef          	jal	e4 <print_string>
  50:	00048513          	mv	a0,s1
  54:	0f8000ef          	jal	14c <print_dec>
  58:	00a00513          	li	a0,10
  5c:	074000ef          	jal	d0 <putchar>
  60:	00140413          	add	s0,s0,1
  64:	fd241ee3          	bne	s0,s2,40 <main+0x30>
  68:	c02024f3          	rdinstret	s1
  6c:	27c000ef          	jal	2e8 <time>
  70:	00050413          	mv	s0,a0
  74:	00010537          	lui	a0,0x10
  78:	00c50513          	add	a0,a0,12 # 1000c <__modsi3+0xfbb8>
  7c:	068000ef          	jal	e4 <print_string>
  80:	00040513          	mv	a0,s0
  84:	0c8000ef          	jal	14c <print_dec>
  88:	00a00513          	li	a0,10
  8c:	044000ef          	jal	d0 <putchar>
  90:	00010537          	lui	a0,0x10
  94:	01850513          	add	a0,a0,24 # 10018 <__modsi3+0xfbc4>
  98:	04c000ef          	jal	e4 <print_string>
  9c:	00048513          	mv	a0,s1
  a0:	0ac000ef          	jal	14c <print_dec>
  a4:	00a00513          	li	a0,10
  a8:	028000ef          	jal	d0 <putchar>
  ac:	00000513          	li	a0,0
  b0:	01c12083          	lw	ra,28(sp)
  b4:	01812403          	lw	s0,24(sp)
  b8:	01412483          	lw	s1,20(sp)
  bc:	01012903          	lw	s2,16(sp)
  c0:	00c12983          	lw	s3,12(sp)
  c4:	00812a03          	lw	s4,8(sp)
  c8:	02010113          	add	sp,sp,32
  cc:	00008067          	ret

000000d0 <putchar>:
  d0:	06000737          	lui	a4,0x6000
  d4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  d8:	fe078ee3          	beqz	a5,d4 <putchar+0x4>
  dc:	00a72023          	sw	a0,0(a4)
  e0:	00008067          	ret

000000e4 <print_string>:
  e4:	00054683          	lbu	a3,0(a0)
  e8:	02068063          	beqz	a3,108 <print_string+0x24>
  ec:	06000737          	lui	a4,0x6000
  f0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  f4:	fe078ee3          	beqz	a5,f0 <print_string+0xc>
  f8:	00d72023          	sw	a3,0(a4)
  fc:	00154683          	lbu	a3,1(a0)
 100:	00150513          	add	a0,a0,1
 104:	fe0696e3          	bnez	a3,f0 <print_string+0xc>
 108:	00008067          	ret

0000010c <puts>:
 10c:	00054683          	lbu	a3,0(a0)
 110:	02068063          	beqz	a3,130 <puts+0x24>
 114:	06000737          	lui	a4,0x6000
 118:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 11c:	fe078ee3          	beqz	a5,118 <puts+0xc>
 120:	00d72023          	sw	a3,0(a4)
 124:	00154683          	lbu	a3,1(a0)
 128:	00150513          	add	a0,a0,1
 12c:	fe0696e3          	bnez	a3,118 <puts+0xc>
 130:	06000737          	lui	a4,0x6000
 134:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 138:	fe078ee3          	beqz	a5,134 <puts+0x28>
 13c:	00a00793          	li	a5,10
 140:	00f72023          	sw	a5,0(a4)
 144:	00100513          	li	a0,1
 148:	00008067          	ret

0000014c <print_dec>:
 14c:	ef010113          	add	sp,sp,-272
 150:	10812423          	sw	s0,264(sp)
 154:	10112623          	sw	ra,268(sp)
 158:	10912223          	sw	s1,260(sp)
 15c:	11212023          	sw	s2,256(sp)
 160:	00050413          	mv	s0,a0
 164:	06000737          	lui	a4,0x6000
 168:	00055c63          	bgez	a0,180 <print_dec+0x34>
 16c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 170:	fe078ee3          	beqz	a5,16c <print_dec+0x20>
 174:	02d00793          	li	a5,45
 178:	00f72023          	sw	a5,0(a4)
 17c:	40800433          	neg	s0,s0
 180:	00010913          	mv	s2,sp
 184:	00090493          	mv	s1,s2
 188:	0240006f          	j	1ac <print_dec+0x60>
 18c:	2c8000ef          	jal	454 <__modsi3>
 190:	00050793          	mv	a5,a0
 194:	00a00593          	li	a1,10
 198:	00040513          	mv	a0,s0
 19c:	00f48023          	sb	a5,0(s1)
 1a0:	230000ef          	jal	3d0 <__divsi3>
 1a4:	00148493          	add	s1,s1,1
 1a8:	00050413          	mv	s0,a0
 1ac:	00a00593          	li	a1,10
 1b0:	00040513          	mv	a0,s0
 1b4:	fc041ce3          	bnez	s0,18c <print_dec+0x40>
 1b8:	fd248ae3          	beq	s1,s2,18c <print_dec+0x40>
 1bc:	06000737          	lui	a4,0x6000
 1c0:	fff4c683          	lbu	a3,-1(s1)
 1c4:	fff48493          	add	s1,s1,-1
 1c8:	03068693          	add	a3,a3,48
 1cc:	0ff6f693          	zext.b	a3,a3
 1d0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 1d4:	fe078ee3          	beqz	a5,1d0 <print_dec+0x84>
 1d8:	00d72023          	sw	a3,0(a4)
 1dc:	ff2492e3          	bne	s1,s2,1c0 <print_dec+0x74>
 1e0:	10c12083          	lw	ra,268(sp)
 1e4:	10812403          	lw	s0,264(sp)
 1e8:	10412483          	lw	s1,260(sp)
 1ec:	10012903          	lw	s2,256(sp)
 1f0:	11010113          	add	sp,sp,272
 1f4:	00008067          	ret

000001f8 <print_hex_digits>:
 1f8:	000107b7          	lui	a5,0x10
 1fc:	02478793          	add	a5,a5,36 # 10024 <__modsi3+0xfbd0>
 200:	0007a883          	lw	a7,0(a5)
 204:	0047a803          	lw	a6,4(a5)
 208:	0087a603          	lw	a2,8(a5)
 20c:	00c7a703          	lw	a4,12(a5)
 210:	0107c783          	lbu	a5,16(a5)
 214:	fe010113          	add	sp,sp,-32
 218:	fff58693          	add	a3,a1,-1
 21c:	01112623          	sw	a7,12(sp)
 220:	01012823          	sw	a6,16(sp)
 224:	00c12a23          	sw	a2,20(sp)
 228:	00e12c23          	sw	a4,24(sp)
 22c:	00f10e23          	sb	a5,28(sp)
 230:	00269693          	sll	a3,a3,0x2
 234:	0206c863          	bltz	a3,264 <print_hex_digits+0x6c>
 238:	06000737          	lui	a4,0x6000
 23c:	00d557b3          	srl	a5,a0,a3
 240:	00f7f793          	and	a5,a5,15
 244:	02078793          	add	a5,a5,32
 248:	002787b3          	add	a5,a5,sp
 24c:	fec7c603          	lbu	a2,-20(a5)
 250:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 254:	fe078ee3          	beqz	a5,250 <print_hex_digits+0x58>
 258:	00c72023          	sw	a2,0(a4)
 25c:	ffc68693          	add	a3,a3,-4
 260:	fc06dee3          	bgez	a3,23c <print_hex_digits+0x44>
 264:	02010113          	add	sp,sp,32
 268:	00008067          	ret

0000026c <print_hex>:
 26c:	000107b7          	lui	a5,0x10
 270:	02478793          	add	a5,a5,36 # 10024 <__modsi3+0xfbd0>
 274:	0007a583          	lw	a1,0(a5)
 278:	0087a683          	lw	a3,8(a5)
 27c:	00c7a703          	lw	a4,12(a5)
 280:	0047a603          	lw	a2,4(a5)
 284:	0107c783          	lbu	a5,16(a5)
 288:	fe010113          	add	sp,sp,-32
 28c:	00b12623          	sw	a1,12(sp)
 290:	00d12a23          	sw	a3,20(sp)
 294:	00e12c23          	sw	a4,24(sp)
 298:	00c12823          	sw	a2,16(sp)
 29c:	00f10e23          	sb	a5,28(sp)
 2a0:	01c00693          	li	a3,28
 2a4:	06000737          	lui	a4,0x6000
 2a8:	ffc00593          	li	a1,-4
 2ac:	00d557b3          	srl	a5,a0,a3
 2b0:	00f7f793          	and	a5,a5,15
 2b4:	02078793          	add	a5,a5,32
 2b8:	002787b3          	add	a5,a5,sp
 2bc:	fec7c603          	lbu	a2,-20(a5)
 2c0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 2c4:	fe078ee3          	beqz	a5,2c0 <print_hex+0x54>
 2c8:	00c72023          	sw	a2,0(a4)
 2cc:	ffc68693          	add	a3,a3,-4
 2d0:	fcb69ee3          	bne	a3,a1,2ac <print_hex+0x40>
 2d4:	02010113          	add	sp,sp,32
 2d8:	00008067          	ret

000002dc <get_cycles>:
 2dc:	0c0007b7          	lui	a5,0xc000
 2e0:	0007a503          	lw	a0,0(a5) # c000000 <IO_BASE+0xbc00000>
 2e4:	00008067          	ret

000002e8 <time>:
 2e8:	0c0007b7          	lui	a5,0xc000
 2ec:	0007a503          	lw	a0,0(a5) # c000000 <IO_BASE+0xbc00000>
 2f0:	00008067          	ret

000002f4 <sleep_cycles>:
 2f4:	0c000737          	lui	a4,0xc000
 2f8:	00470713          	add	a4,a4,4 # c000004 <IO_BASE+0xbc00004>
 2fc:	00a72023          	sw	a0,0(a4)
 300:	00072783          	lw	a5,0(a4)
 304:	fe079ee3          	bnez	a5,300 <sleep_cycles+0xc>
 308:	00008067          	ret

0000030c <sleep_us>:
 30c:	00151793          	sll	a5,a0,0x1
 310:	00a787b3          	add	a5,a5,a0
 314:	00379793          	sll	a5,a5,0x3
 318:	0c000737          	lui	a4,0xc000
 31c:	00a787b3          	add	a5,a5,a0
 320:	00279793          	sll	a5,a5,0x2
 324:	00470713          	add	a4,a4,4 # c000004 <IO_BASE+0xbc00004>
 328:	00f72023          	sw	a5,0(a4)
 32c:	00072783          	lw	a5,0(a4)
 330:	fe079ee3          	bnez	a5,32c <sleep_us+0x20>
 334:	00008067          	ret

00000338 <sleep_ms>:
 338:	00151793          	sll	a5,a0,0x1
 33c:	00a787b3          	add	a5,a5,a0
 340:	00679713          	sll	a4,a5,0x6
 344:	00e787b3          	add	a5,a5,a4
 348:	00279793          	sll	a5,a5,0x2
 34c:	00a787b3          	add	a5,a5,a0
 350:	00279793          	sll	a5,a5,0x2
 354:	0c000737          	lui	a4,0xc000
 358:	00a787b3          	add	a5,a5,a0
 35c:	00579793          	sll	a5,a5,0x5
 360:	00470713          	add	a4,a4,4 # c000004 <IO_BASE+0xbc00004>
 364:	00f72023          	sw	a5,0(a4)
 368:	00072783          	lw	a5,0(a4)
 36c:	fe079ee3          	bnez	a5,368 <sleep_ms+0x30>
 370:	00008067          	ret

00000374 <sleep>:
 374:	00151793          	sll	a5,a0,0x1
 378:	00a787b3          	add	a5,a5,a0
 37c:	00679793          	sll	a5,a5,0x6
 380:	40a787b3          	sub	a5,a5,a0
 384:	00279793          	sll	a5,a5,0x2
 388:	40a787b3          	sub	a5,a5,a0
 38c:	00479793          	sll	a5,a5,0x4
 390:	40a787b3          	sub	a5,a5,a0
 394:	00579793          	sll	a5,a5,0x5
 398:	0c000737          	lui	a4,0xc000
 39c:	00a787b3          	add	a5,a5,a0
 3a0:	00879793          	sll	a5,a5,0x8
 3a4:	00470713          	add	a4,a4,4 # c000004 <IO_BASE+0xbc00004>
 3a8:	00f72023          	sw	a5,0(a4)
 3ac:	00072783          	lw	a5,0(a4)
 3b0:	fe079ee3          	bnez	a5,3ac <sleep+0x38>
 3b4:	00008067          	ret

000003b8 <start_timer>:
 3b8:	0c0007b7          	lui	a5,0xc000
 3bc:	00a7a223          	sw	a0,4(a5) # c000004 <IO_BASE+0xbc00004>
 3c0:	00008067          	ret

000003c4 <is_timer_finished>:
 3c4:	0c0007b7          	lui	a5,0xc000
 3c8:	0047a703          	lw	a4,4(a5) # c000004 <IO_BASE+0xbc00004>
 3cc:	00008067          	ret

000003d0 <__divsi3>:
 3d0:	06054063          	bltz	a0,430 <__umodsi3+0x10>
 3d4:	0605c663          	bltz	a1,440 <__umodsi3+0x20>

000003d8 <__udivsi3>:
 3d8:	00058613          	mv	a2,a1
 3dc:	00050593          	mv	a1,a0
 3e0:	fff00513          	li	a0,-1
 3e4:	02060c63          	beqz	a2,41c <__udivsi3+0x44>
 3e8:	00100693          	li	a3,1
 3ec:	00b67a63          	bgeu	a2,a1,400 <__udivsi3+0x28>
 3f0:	00c05863          	blez	a2,400 <__udivsi3+0x28>
 3f4:	00161613          	sll	a2,a2,0x1
 3f8:	00169693          	sll	a3,a3,0x1
 3fc:	feb66ae3          	bltu	a2,a1,3f0 <__udivsi3+0x18>
 400:	00000513          	li	a0,0
 404:	00c5e663          	bltu	a1,a2,410 <__udivsi3+0x38>
 408:	40c585b3          	sub	a1,a1,a2
 40c:	00d56533          	or	a0,a0,a3
 410:	0016d693          	srl	a3,a3,0x1
 414:	00165613          	srl	a2,a2,0x1
 418:	fe0696e3          	bnez	a3,404 <__udivsi3+0x2c>
 41c:	00008067          	ret

00000420 <__umodsi3>:
 420:	00008293          	mv	t0,ra
 424:	fb5ff0ef          	jal	3d8 <__udivsi3>
 428:	00058513          	mv	a0,a1
 42c:	00028067          	jr	t0
 430:	40a00533          	neg	a0,a0
 434:	0005d863          	bgez	a1,444 <__umodsi3+0x24>
 438:	40b005b3          	neg	a1,a1
 43c:	f95ff06f          	j	3d0 <__divsi3>
 440:	40b005b3          	neg	a1,a1
 444:	00008293          	mv	t0,ra
 448:	f89ff0ef          	jal	3d0 <__divsi3>
 44c:	40a00533          	neg	a0,a0
 450:	00028067          	jr	t0

00000454 <__modsi3>:
 454:	00008293          	mv	t0,ra
 458:	0005ca63          	bltz	a1,46c <__modsi3+0x18>
 45c:	00054c63          	bltz	a0,474 <__modsi3+0x20>
 460:	f79ff0ef          	jal	3d8 <__udivsi3>
 464:	00058513          	mv	a0,a1
 468:	00028067          	jr	t0
 46c:	40b005b3          	neg	a1,a1
 470:	fe0558e3          	bgez	a0,460 <__modsi3+0xc>
 474:	40a00533          	neg	a0,a0
 478:	f61ff0ef          	jal	3d8 <__udivsi3>
 47c:	40b00533          	neg	a0,a1
 480:	00028067          	jr	t0

Disassembly of section .data:

00010000 <.data>:
   10000:	203e                	.2byte	0x203e
   10002:	6572                	.2byte	0x6572
   10004:	746c7573          	.4byte	0x746c7573
   10008:	3a20                	.2byte	0x3a20
   1000a:	0020                	.2byte	0x20
   1000c:	203e                	.2byte	0x203e
   1000e:	6974                	.2byte	0x6974
   10010:	656d                	.2byte	0x656d
   10012:	3a20                	.2byte	0x3a20
   10014:	0020                	.2byte	0x20
   10016:	0000                	.2byte	0x0
   10018:	203e                	.2byte	0x203e
   1001a:	6e69                	.2byte	0x6e69
   1001c:	3a206e73          	.4byte	0x3a206e73
   10020:	0020                	.2byte	0x20
   10022:	0000                	.2byte	0x0
   10024:	3130                	.2byte	0x3130
   10026:	3332                	.2byte	0x3332
   10028:	3534                	.2byte	0x3534
   1002a:	3736                	.2byte	0x3736
   1002c:	3938                	.2byte	0x3938
   1002e:	4241                	.2byte	0x4241
   10030:	46454443          	.4byte	0x46454443
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	2941                	.2byte	0x2941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <main+0x4>
   c:	001f 0000 1004      	.byte	0x1f, 0x00, 0x00, 0x00, 0x04, 0x10
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	5f31                	.2byte	0x5f31
  1c:	326d                	.2byte	0x326d
  1e:	3070                	.2byte	0x3070
  20:	7a5f 6d6d 6c75      	.byte	0x5f, 0x7a, 0x6d, 0x6d, 0x75, 0x6c
  26:	7031                	.2byte	0x7031
  28:	0030                	.2byte	0x30

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.4byte	0x3a434347
   4:	2820                	.2byte	0x2820
   6:	29554e47          	.4byte	0x29554e47
   a:	3120                	.2byte	0x3120
   c:	2e312e33          	.4byte	0x2e312e33
  10:	0030                	.2byte	0x30
