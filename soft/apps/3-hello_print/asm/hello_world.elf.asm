
./bin/hello_world.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	008000ef          	jal	10 <main>
   c:	00100073          	ebreak

00000010 <main>:
  10:	ff010113          	add	sp,sp,-16 # 1fff0 <__umoddi3+0x1fad8>
  14:	00812423          	sw	s0,8(sp)
  18:	00010437          	lui	s0,0x10
  1c:	00040513          	mv	a0,s0
  20:	00112623          	sw	ra,12(sp)
  24:	094000ef          	jal	b8 <print_string>
  28:	00010537          	lui	a0,0x10
  2c:	00850513          	add	a0,a0,8 # 10008 <__umoddi3+0xfaf0>
  30:	088000ef          	jal	b8 <print_string>
  34:	00010537          	lui	a0,0x10
  38:	01c50513          	add	a0,a0,28 # 1001c <__umoddi3+0xfb04>
  3c:	07c000ef          	jal	b8 <print_string>
  40:	00010537          	lui	a0,0x10
  44:	05450513          	add	a0,a0,84 # 10054 <__umoddi3+0xfb3c>
  48:	070000ef          	jal	b8 <print_string>
  4c:	00010537          	lui	a0,0x10
  50:	06450513          	add	a0,a0,100 # 10064 <__umoddi3+0xfb4c>
  54:	064000ef          	jal	b8 <print_string>
  58:	00010537          	lui	a0,0x10
  5c:	06c50513          	add	a0,a0,108 # 1006c <__umoddi3+0xfb54>
  60:	058000ef          	jal	b8 <print_string>
  64:	00010537          	lui	a0,0x10
  68:	06850513          	add	a0,a0,104 # 10068 <__umoddi3+0xfb50>
  6c:	04c000ef          	jal	b8 <print_string>
  70:	00010537          	lui	a0,0x10
  74:	07850513          	add	a0,a0,120 # 10078 <__umoddi3+0xfb60>
  78:	040000ef          	jal	b8 <print_string>
  7c:	00010537          	lui	a0,0x10
  80:	00450513          	add	a0,a0,4 # 10004 <__umoddi3+0xfaec>
  84:	034000ef          	jal	b8 <print_string>
  88:	00040513          	mv	a0,s0
  8c:	02c000ef          	jal	b8 <print_string>
  90:	00c12083          	lw	ra,12(sp)
  94:	00812403          	lw	s0,8(sp)
  98:	00000513          	li	a0,0
  9c:	01010113          	add	sp,sp,16
  a0:	00008067          	ret

000000a4 <putchar>:
  a4:	06000737          	lui	a4,0x6000
  a8:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  ac:	fe078ee3          	beqz	a5,a8 <putchar+0x4>
  b0:	00a72023          	sw	a0,0(a4)
  b4:	00008067          	ret

000000b8 <print_string>:
  b8:	00054683          	lbu	a3,0(a0)
  bc:	02068063          	beqz	a3,dc <print_string+0x24>
  c0:	06000737          	lui	a4,0x6000
  c4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  c8:	fe078ee3          	beqz	a5,c4 <print_string+0xc>
  cc:	00d72023          	sw	a3,0(a4)
  d0:	00154683          	lbu	a3,1(a0)
  d4:	00150513          	add	a0,a0,1
  d8:	fe0696e3          	bnez	a3,c4 <print_string+0xc>
  dc:	00008067          	ret

000000e0 <puts>:
  e0:	00054683          	lbu	a3,0(a0)
  e4:	02068063          	beqz	a3,104 <puts+0x24>
  e8:	06000737          	lui	a4,0x6000
  ec:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  f0:	fe078ee3          	beqz	a5,ec <puts+0xc>
  f4:	00d72023          	sw	a3,0(a4)
  f8:	00154683          	lbu	a3,1(a0)
  fc:	00150513          	add	a0,a0,1
 100:	fe0696e3          	bnez	a3,ec <puts+0xc>
 104:	06000737          	lui	a4,0x6000
 108:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 10c:	fe078ee3          	beqz	a5,108 <puts+0x28>
 110:	00a00793          	li	a5,10
 114:	00f72023          	sw	a5,0(a4)
 118:	00100513          	li	a0,1
 11c:	00008067          	ret

00000120 <print_dec>:
 120:	ef010113          	add	sp,sp,-272
 124:	10812423          	sw	s0,264(sp)
 128:	10112623          	sw	ra,268(sp)
 12c:	10912223          	sw	s1,260(sp)
 130:	11212023          	sw	s2,256(sp)
 134:	00050413          	mv	s0,a0
 138:	06000737          	lui	a4,0x6000
 13c:	00055c63          	bgez	a0,154 <print_dec+0x34>
 140:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 144:	fe078ee3          	beqz	a5,140 <print_dec+0x20>
 148:	02d00793          	li	a5,45
 14c:	00f72023          	sw	a5,0(a4)
 150:	40800433          	neg	s0,s0
 154:	00010913          	mv	s2,sp
 158:	00090493          	mv	s1,s2
 15c:	0240006f          	j	180 <print_dec+0x60>
 160:	340000ef          	jal	4a0 <__modsi3>
 164:	00050793          	mv	a5,a0
 168:	00a00593          	li	a1,10
 16c:	00040513          	mv	a0,s0
 170:	00f48023          	sb	a5,0(s1)
 174:	2a8000ef          	jal	41c <__divsi3>
 178:	00148493          	add	s1,s1,1
 17c:	00050413          	mv	s0,a0
 180:	00a00593          	li	a1,10
 184:	00040513          	mv	a0,s0
 188:	fc041ce3          	bnez	s0,160 <print_dec+0x40>
 18c:	fd248ae3          	beq	s1,s2,160 <print_dec+0x40>
 190:	06000737          	lui	a4,0x6000
 194:	fff4c683          	lbu	a3,-1(s1)
 198:	fff48493          	add	s1,s1,-1
 19c:	03068693          	add	a3,a3,48
 1a0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 1a4:	fe078ee3          	beqz	a5,1a0 <print_dec+0x80>
 1a8:	00d72023          	sw	a3,0(a4)
 1ac:	ff2494e3          	bne	s1,s2,194 <print_dec+0x74>
 1b0:	10c12083          	lw	ra,268(sp)
 1b4:	10812403          	lw	s0,264(sp)
 1b8:	10412483          	lw	s1,260(sp)
 1bc:	10012903          	lw	s2,256(sp)
 1c0:	11010113          	add	sp,sp,272
 1c4:	00008067          	ret

000001c8 <print_hex_digits>:
 1c8:	000106b7          	lui	a3,0x10
 1cc:	fe010113          	add	sp,sp,-32
 1d0:	08468693          	add	a3,a3,132 # 10084 <__umoddi3+0xfb6c>
 1d4:	02e00613          	li	a2,46
 1d8:	06000737          	lui	a4,0x6000
 1dc:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 1e0:	fe078ee3          	beqz	a5,1dc <print_hex_digits+0x14>
 1e4:	00c72023          	sw	a2,0(a4)
 1e8:	0016c603          	lbu	a2,1(a3)
 1ec:	00168693          	add	a3,a3,1
 1f0:	fe0616e3          	bnez	a2,1dc <print_hex_digits+0x14>
 1f4:	000107b7          	lui	a5,0x10
 1f8:	09078793          	add	a5,a5,144 # 10090 <__umoddi3+0xfb78>
 1fc:	0007a883          	lw	a7,0(a5)
 200:	0047a803          	lw	a6,4(a5)
 204:	0087a603          	lw	a2,8(a5)
 208:	00c7a703          	lw	a4,12(a5)
 20c:	0107c783          	lbu	a5,16(a5)
 210:	fff58693          	add	a3,a1,-1
 214:	01112623          	sw	a7,12(sp)
 218:	01012823          	sw	a6,16(sp)
 21c:	00c12a23          	sw	a2,20(sp)
 220:	00e12c23          	sw	a4,24(sp)
 224:	00f10e23          	sb	a5,28(sp)
 228:	00269693          	sll	a3,a3,0x2
 22c:	0206c863          	bltz	a3,25c <print_hex_digits+0x94>
 230:	06000737          	lui	a4,0x6000
 234:	00d557b3          	srl	a5,a0,a3
 238:	00f7f793          	and	a5,a5,15
 23c:	02078793          	add	a5,a5,32
 240:	002787b3          	add	a5,a5,sp
 244:	fec7c603          	lbu	a2,-20(a5)
 248:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 24c:	fe078ee3          	beqz	a5,248 <print_hex_digits+0x80>
 250:	00c72023          	sw	a2,0(a4)
 254:	ffc68693          	add	a3,a3,-4
 258:	fc06dee3          	bgez	a3,234 <print_hex_digits+0x6c>
 25c:	02010113          	add	sp,sp,32
 260:	00008067          	ret

00000264 <print_hex>:
 264:	00800593          	li	a1,8
 268:	f61ff06f          	j	1c8 <print_hex_digits>

0000026c <printf>:
 26c:	fb010113          	add	sp,sp,-80
 270:	04f12223          	sw	a5,68(sp)
 274:	02112623          	sw	ra,44(sp)
 278:	02b12a23          	sw	a1,52(sp)
 27c:	02c12c23          	sw	a2,56(sp)
 280:	02d12e23          	sw	a3,60(sp)
 284:	04e12023          	sw	a4,64(sp)
 288:	05012423          	sw	a6,72(sp)
 28c:	05112623          	sw	a7,76(sp)
 290:	00054703          	lbu	a4,0(a0)
 294:	03410793          	add	a5,sp,52
 298:	00f12623          	sw	a5,12(sp)
 29c:	08070663          	beqz	a4,328 <printf+0xbc>
 2a0:	02812423          	sw	s0,40(sp)
 2a4:	02912223          	sw	s1,36(sp)
 2a8:	03212023          	sw	s2,32(sp)
 2ac:	01312e23          	sw	s3,28(sp)
 2b0:	01412c23          	sw	s4,24(sp)
 2b4:	01512a23          	sw	s5,20(sp)
 2b8:	01612823          	sw	s6,16(sp)
 2bc:	00050493          	mv	s1,a0
 2c0:	02500913          	li	s2,37
 2c4:	06000437          	lui	s0,0x6000
 2c8:	07300993          	li	s3,115
 2cc:	07800a13          	li	s4,120
 2d0:	06400a93          	li	s5,100
 2d4:	06300b13          	li	s6,99
 2d8:	07271063          	bne	a4,s2,338 <printf+0xcc>
 2dc:	0014c703          	lbu	a4,1(s1)
 2e0:	0d370063          	beq	a4,s3,3a0 <printf+0x134>
 2e4:	09470e63          	beq	a4,s4,380 <printf+0x114>
 2e8:	0f570a63          	beq	a4,s5,3dc <printf+0x170>
 2ec:	07670663          	beq	a4,s6,358 <printf+0xec>
 2f0:	00042783          	lw	a5,0(s0) # 6000000 <IO_BASE+0x5c00000>
 2f4:	fe078ee3          	beqz	a5,2f0 <printf+0x84>
 2f8:	00e42023          	sw	a4,0(s0)
 2fc:	00148513          	add	a0,s1,1
 300:	00154703          	lbu	a4,1(a0)
 304:	00150493          	add	s1,a0,1
 308:	fc0718e3          	bnez	a4,2d8 <printf+0x6c>
 30c:	02812403          	lw	s0,40(sp)
 310:	02412483          	lw	s1,36(sp)
 314:	02012903          	lw	s2,32(sp)
 318:	01c12983          	lw	s3,28(sp)
 31c:	01812a03          	lw	s4,24(sp)
 320:	01412a83          	lw	s5,20(sp)
 324:	01012b03          	lw	s6,16(sp)
 328:	02c12083          	lw	ra,44(sp)
 32c:	00000513          	li	a0,0
 330:	05010113          	add	sp,sp,80
 334:	00008067          	ret
 338:	00042783          	lw	a5,0(s0)
 33c:	fe078ee3          	beqz	a5,338 <printf+0xcc>
 340:	00048513          	mv	a0,s1
 344:	00e42023          	sw	a4,0(s0)
 348:	00154703          	lbu	a4,1(a0)
 34c:	00150493          	add	s1,a0,1
 350:	f80714e3          	bnez	a4,2d8 <printf+0x6c>
 354:	fb9ff06f          	j	30c <printf+0xa0>
 358:	00c12783          	lw	a5,12(sp)
 35c:	06000737          	lui	a4,0x6000
 360:	0007a683          	lw	a3,0(a5)
 364:	00478793          	add	a5,a5,4
 368:	00f12623          	sw	a5,12(sp)
 36c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 370:	fe078ee3          	beqz	a5,36c <printf+0x100>
 374:	00d72023          	sw	a3,0(a4)
 378:	00148513          	add	a0,s1,1
 37c:	f85ff06f          	j	300 <printf+0x94>
 380:	00c12783          	lw	a5,12(sp)
 384:	00800593          	li	a1,8
 388:	0007a503          	lw	a0,0(a5)
 38c:	00478793          	add	a5,a5,4
 390:	00f12623          	sw	a5,12(sp)
 394:	e35ff0ef          	jal	1c8 <print_hex_digits>
 398:	00148513          	add	a0,s1,1
 39c:	f65ff06f          	j	300 <printf+0x94>
 3a0:	00c12783          	lw	a5,12(sp)
 3a4:	0007a603          	lw	a2,0(a5)
 3a8:	00478793          	add	a5,a5,4
 3ac:	00f12623          	sw	a5,12(sp)
 3b0:	00064683          	lbu	a3,0(a2)
 3b4:	f40684e3          	beqz	a3,2fc <printf+0x90>
 3b8:	06000737          	lui	a4,0x6000
 3bc:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 3c0:	fe078ee3          	beqz	a5,3bc <printf+0x150>
 3c4:	00d72023          	sw	a3,0(a4)
 3c8:	00164683          	lbu	a3,1(a2)
 3cc:	00160613          	add	a2,a2,1
 3d0:	fe0696e3          	bnez	a3,3bc <printf+0x150>
 3d4:	00148513          	add	a0,s1,1
 3d8:	f29ff06f          	j	300 <printf+0x94>
 3dc:	00c12783          	lw	a5,12(sp)
 3e0:	0007a503          	lw	a0,0(a5)
 3e4:	00478793          	add	a5,a5,4
 3e8:	00f12623          	sw	a5,12(sp)
 3ec:	d35ff0ef          	jal	120 <print_dec>
 3f0:	00148513          	add	a0,s1,1
 3f4:	f0dff06f          	j	300 <printf+0x94>

000003f8 <__mulsi3>:
 3f8:	00050613          	mv	a2,a0
 3fc:	00000513          	li	a0,0
 400:	0015f693          	and	a3,a1,1
 404:	00068463          	beqz	a3,40c <__mulsi3+0x14>
 408:	00c50533          	add	a0,a0,a2
 40c:	0015d593          	srl	a1,a1,0x1
 410:	00161613          	sll	a2,a2,0x1
 414:	fe0596e3          	bnez	a1,400 <__mulsi3+0x8>
 418:	00008067          	ret

0000041c <__divsi3>:
 41c:	06054063          	bltz	a0,47c <__umodsi3+0x10>
 420:	0605c663          	bltz	a1,48c <__umodsi3+0x20>

00000424 <__udivsi3>:
 424:	00058613          	mv	a2,a1
 428:	00050593          	mv	a1,a0
 42c:	fff00513          	li	a0,-1
 430:	02060c63          	beqz	a2,468 <__udivsi3+0x44>
 434:	00100693          	li	a3,1
 438:	00b67a63          	bgeu	a2,a1,44c <__udivsi3+0x28>
 43c:	00c05863          	blez	a2,44c <__udivsi3+0x28>
 440:	00161613          	sll	a2,a2,0x1
 444:	00169693          	sll	a3,a3,0x1
 448:	feb66ae3          	bltu	a2,a1,43c <__udivsi3+0x18>
 44c:	00000513          	li	a0,0
 450:	00c5e663          	bltu	a1,a2,45c <__udivsi3+0x38>
 454:	40c585b3          	sub	a1,a1,a2
 458:	00d56533          	or	a0,a0,a3
 45c:	0016d693          	srl	a3,a3,0x1
 460:	00165613          	srl	a2,a2,0x1
 464:	fe0696e3          	bnez	a3,450 <__udivsi3+0x2c>
 468:	00008067          	ret

0000046c <__umodsi3>:
 46c:	00008293          	mv	t0,ra
 470:	fb5ff0ef          	jal	424 <__udivsi3>
 474:	00058513          	mv	a0,a1
 478:	00028067          	jr	t0
 47c:	40a00533          	neg	a0,a0
 480:	0005d863          	bgez	a1,490 <__umodsi3+0x24>
 484:	40b005b3          	neg	a1,a1
 488:	f95ff06f          	j	41c <__divsi3>
 48c:	40b005b3          	neg	a1,a1
 490:	00008293          	mv	t0,ra
 494:	f89ff0ef          	jal	41c <__divsi3>
 498:	40a00533          	neg	a0,a0
 49c:	00028067          	jr	t0

000004a0 <__modsi3>:
 4a0:	00008293          	mv	t0,ra
 4a4:	0005ca63          	bltz	a1,4b8 <__modsi3+0x18>
 4a8:	00054c63          	bltz	a0,4c0 <__modsi3+0x20>
 4ac:	f79ff0ef          	jal	424 <__udivsi3>
 4b0:	00058513          	mv	a0,a1
 4b4:	00028067          	jr	t0
 4b8:	40b005b3          	neg	a1,a1
 4bc:	fe0558e3          	bgez	a0,4ac <__modsi3+0xc>
 4c0:	40a00533          	neg	a0,a0
 4c4:	f61ff0ef          	jal	424 <__udivsi3>
 4c8:	40b00533          	neg	a0,a1
 4cc:	00028067          	jr	t0

000004d0 <__udivdi3>:
 4d0:	00058613          	mv	a2,a1
 4d4:	00050593          	mv	a1,a0
 4d8:	fff00513          	li	a0,-1
 4dc:	02060c63          	beqz	a2,514 <__udivdi3+0x44>
 4e0:	00100693          	li	a3,1
 4e4:	00b67a63          	bgeu	a2,a1,4f8 <__udivdi3+0x28>
 4e8:	00c05863          	blez	a2,4f8 <__udivdi3+0x28>
 4ec:	00161613          	sll	a2,a2,0x1
 4f0:	00169693          	sll	a3,a3,0x1
 4f4:	feb66ae3          	bltu	a2,a1,4e8 <__udivdi3+0x18>
 4f8:	00000513          	li	a0,0
 4fc:	00c5e663          	bltu	a1,a2,508 <__udivdi3+0x38>
 500:	40c585b3          	sub	a1,a1,a2
 504:	00d56533          	or	a0,a0,a3
 508:	0016d693          	srl	a3,a3,0x1
 50c:	00165613          	srl	a2,a2,0x1
 510:	fe0696e3          	bnez	a3,4fc <__udivdi3+0x2c>
 514:	00008067          	ret

00000518 <__umoddi3>:
 518:	00008293          	mv	t0,ra
 51c:	fb5ff0ef          	jal	4d0 <__udivdi3>
 520:	00058513          	mv	a0,a1
 524:	00028067          	jr	t0

Disassembly of section .data:

00010000 <.data>:
   10000:	6928                	.2byte	0x6928
   10002:	2969                	.2byte	0x2969
   10004:	000a                	.2byte	0xa
   10006:	0000                	.2byte	0x0
   10008:	6928                	.2byte	0x6928
   1000a:	2969                	.2byte	0x2969
   1000c:	4820                	.2byte	0x4820
   1000e:	4c45                	.2byte	0x4c45
   10010:	4f4c                	.2byte	0x4f4c
   10012:	7720                	.2byte	0x7720
   10014:	646c726f          	jal	tp,d765a <__umoddi3+0xd7142>
   10018:	2120                	.2byte	0x2120
   1001a:	000a                	.2byte	0xa
   1001c:	6928                	.2byte	0x6928
   1001e:	2969                	.2byte	0x2969
   10020:	4c20                	.2byte	0x4c20
   10022:	7465                	.2byte	0x7465
   10024:	6d20                	.2byte	0x6d20
   10026:	2065                	.2byte	0x2065
   10028:	6e69                	.2byte	0x6e69
   1002a:	7274                	.2byte	0x7274
   1002c:	6375646f          	jal	s0,66e62 <__umoddi3+0x6694a>
   10030:	2065                	.2byte	0x2065
   10032:	796d                	.2byte	0x796d
   10034:	666c6573          	.4byte	0x666c6573
   10038:	202c                	.2byte	0x202c
   1003a:	2049                	.2byte	0x2049
   1003c:	6d61                	.2byte	0x6d61
   1003e:	7420                	.2byte	0x7420
   10040:	6568                	.2byte	0x6568
   10042:	4220                	.2byte	0x4220
   10044:	6572                	.2byte	0x6572
   10046:	5a69                	.2byte	0x5a69
   10048:	2048                	.2byte	0x2048
   1004a:	4952                	.2byte	0x4952
   1004c:	562d4353          	.4byte	0x562d4353
   10050:	0a2e                	.2byte	0xa2e
   10052:	0000                	.2byte	0x0
   10054:	6928                	.2byte	0x6928
   10056:	2969                	.2byte	0x2969
   10058:	7220                	.2byte	0x7220
   1005a:	6c65                	.2byte	0x6c65
   1005c:	6165                	.2byte	0x6165
   1005e:	3a206573          	.4byte	0x3a206573
   10062:	000a                	.2byte	0xa
   10064:	6928                	.2byte	0x6928
   10066:	2969                	.2byte	0x2969
   10068:	0020                	.2byte	0x20
   1006a:	0000                	.2byte	0x0
   1006c:	7041                	.2byte	0x7041
   1006e:	2072                	.2byte	0x2072
   10070:	3932                	.2byte	0x3932
   10072:	3220                	.2byte	0x3220
   10074:	3230                	.2byte	0x3230
   10076:	0035                	.2byte	0x35
   10078:	3830                	.2byte	0x3830
   1007a:	353a                	.2byte	0x353a
   1007c:	3a34                	.2byte	0x3a34
   1007e:	3334                	.2byte	0x3334
   10080:	0000                	.2byte	0x0
   10082:	0000                	.2byte	0x0
   10084:	2e2e                	.2byte	0x2e2e
   10086:	692e                	.2byte	0x692e
   10088:	2e2e6963          	bltu	t3,sp,1037a <__umoddi3+0xfe62>
   1008c:	002e                	.2byte	0x2e
   1008e:	0000                	.2byte	0x0
   10090:	3130                	.2byte	0x3130
   10092:	3332                	.2byte	0x3332
   10094:	3534                	.2byte	0x3534
   10096:	3736                	.2byte	0x3736
   10098:	3938                	.2byte	0x3938
   1009a:	4241                	.2byte	0x4241
   1009c:	46454443          	.4byte	0x46454443
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
