
./bin/hello_world.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	008000ef          	jal	10 <main>
   c:	00100073          	ebreak

00000010 <main>:
  10:	ff010113          	add	sp,sp,-16 # 1fff0 <__umoddi3+0x1fae0>
  14:	00812423          	sw	s0,8(sp)
  18:	00010437          	lui	s0,0x10
  1c:	00040513          	mv	a0,s0
  20:	00112623          	sw	ra,12(sp)
  24:	0b4000ef          	jal	d8 <puts>
  28:	00010537          	lui	a0,0x10
  2c:	00850513          	add	a0,a0,8 # 10008 <__umoddi3+0xfaf8>
  30:	0a8000ef          	jal	d8 <puts>
  34:	00010537          	lui	a0,0x10
  38:	01c50513          	add	a0,a0,28 # 1001c <__umoddi3+0xfb0c>
  3c:	09c000ef          	jal	d8 <puts>
  40:	00010537          	lui	a0,0x10
  44:	05450513          	add	a0,a0,84 # 10054 <__umoddi3+0xfb44>
  48:	090000ef          	jal	d8 <puts>
  4c:	00010537          	lui	a0,0x10
  50:	06450513          	add	a0,a0,100 # 10064 <__umoddi3+0xfb54>
  54:	210000ef          	jal	264 <printf>
  58:	00010537          	lui	a0,0x10
  5c:	06c50513          	add	a0,a0,108 # 1006c <__umoddi3+0xfb5c>
  60:	204000ef          	jal	264 <printf>
  64:	02000513          	li	a0,32
  68:	034000ef          	jal	9c <putchar>
  6c:	00010537          	lui	a0,0x10
  70:	07850513          	add	a0,a0,120 # 10078 <__umoddi3+0xfb68>
  74:	1f0000ef          	jal	264 <printf>
  78:	00a00513          	li	a0,10
  7c:	020000ef          	jal	9c <putchar>
  80:	00040513          	mv	a0,s0
  84:	054000ef          	jal	d8 <puts>
  88:	00c12083          	lw	ra,12(sp)
  8c:	00812403          	lw	s0,8(sp)
  90:	00000513          	li	a0,0
  94:	01010113          	add	sp,sp,16
  98:	00008067          	ret

0000009c <putchar>:
  9c:	06000737          	lui	a4,0x6000
  a0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  a4:	fe078ee3          	beqz	a5,a0 <putchar+0x4>
  a8:	00a72023          	sw	a0,0(a4)
  ac:	00008067          	ret

000000b0 <print_string>:
  b0:	00054683          	lbu	a3,0(a0)
  b4:	02068063          	beqz	a3,d4 <print_string+0x24>
  b8:	06000737          	lui	a4,0x6000
  bc:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  c0:	fe078ee3          	beqz	a5,bc <print_string+0xc>
  c4:	00d72023          	sw	a3,0(a4)
  c8:	00154683          	lbu	a3,1(a0)
  cc:	00150513          	add	a0,a0,1
  d0:	fe0696e3          	bnez	a3,bc <print_string+0xc>
  d4:	00008067          	ret

000000d8 <puts>:
  d8:	00054683          	lbu	a3,0(a0)
  dc:	02068063          	beqz	a3,fc <puts+0x24>
  e0:	06000737          	lui	a4,0x6000
  e4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  e8:	fe078ee3          	beqz	a5,e4 <puts+0xc>
  ec:	00d72023          	sw	a3,0(a4)
  f0:	00154683          	lbu	a3,1(a0)
  f4:	00150513          	add	a0,a0,1
  f8:	fe0696e3          	bnez	a3,e4 <puts+0xc>
  fc:	06000737          	lui	a4,0x6000
 100:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 104:	fe078ee3          	beqz	a5,100 <puts+0x28>
 108:	00a00793          	li	a5,10
 10c:	00f72023          	sw	a5,0(a4)
 110:	00100513          	li	a0,1
 114:	00008067          	ret

00000118 <print_dec>:
 118:	ef010113          	add	sp,sp,-272
 11c:	10812423          	sw	s0,264(sp)
 120:	10112623          	sw	ra,268(sp)
 124:	10912223          	sw	s1,260(sp)
 128:	11212023          	sw	s2,256(sp)
 12c:	00050413          	mv	s0,a0
 130:	06000737          	lui	a4,0x6000
 134:	00055c63          	bgez	a0,14c <print_dec+0x34>
 138:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 13c:	fe078ee3          	beqz	a5,138 <print_dec+0x20>
 140:	02d00793          	li	a5,45
 144:	00f72023          	sw	a5,0(a4)
 148:	40800433          	neg	s0,s0
 14c:	00010913          	mv	s2,sp
 150:	00090493          	mv	s1,s2
 154:	0240006f          	j	178 <print_dec+0x60>
 158:	340000ef          	jal	498 <__modsi3>
 15c:	00050793          	mv	a5,a0
 160:	00a00593          	li	a1,10
 164:	00040513          	mv	a0,s0
 168:	00f48023          	sb	a5,0(s1)
 16c:	2a8000ef          	jal	414 <__divsi3>
 170:	00148493          	add	s1,s1,1
 174:	00050413          	mv	s0,a0
 178:	00a00593          	li	a1,10
 17c:	00040513          	mv	a0,s0
 180:	fc041ce3          	bnez	s0,158 <print_dec+0x40>
 184:	fd248ae3          	beq	s1,s2,158 <print_dec+0x40>
 188:	06000737          	lui	a4,0x6000
 18c:	fff4c683          	lbu	a3,-1(s1)
 190:	fff48493          	add	s1,s1,-1
 194:	03068693          	add	a3,a3,48
 198:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 19c:	fe078ee3          	beqz	a5,198 <print_dec+0x80>
 1a0:	00d72023          	sw	a3,0(a4)
 1a4:	ff2494e3          	bne	s1,s2,18c <print_dec+0x74>
 1a8:	10c12083          	lw	ra,268(sp)
 1ac:	10812403          	lw	s0,264(sp)
 1b0:	10412483          	lw	s1,260(sp)
 1b4:	10012903          	lw	s2,256(sp)
 1b8:	11010113          	add	sp,sp,272
 1bc:	00008067          	ret

000001c0 <print_hex_digits>:
 1c0:	000106b7          	lui	a3,0x10
 1c4:	fe010113          	add	sp,sp,-32
 1c8:	08468693          	add	a3,a3,132 # 10084 <__umoddi3+0xfb74>
 1cc:	02e00613          	li	a2,46
 1d0:	06000737          	lui	a4,0x6000
 1d4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 1d8:	fe078ee3          	beqz	a5,1d4 <print_hex_digits+0x14>
 1dc:	00c72023          	sw	a2,0(a4)
 1e0:	0016c603          	lbu	a2,1(a3)
 1e4:	00168693          	add	a3,a3,1
 1e8:	fe0616e3          	bnez	a2,1d4 <print_hex_digits+0x14>
 1ec:	000107b7          	lui	a5,0x10
 1f0:	09078793          	add	a5,a5,144 # 10090 <__umoddi3+0xfb80>
 1f4:	0007a883          	lw	a7,0(a5)
 1f8:	0047a803          	lw	a6,4(a5)
 1fc:	0087a603          	lw	a2,8(a5)
 200:	00c7a703          	lw	a4,12(a5)
 204:	0107c783          	lbu	a5,16(a5)
 208:	fff58693          	add	a3,a1,-1
 20c:	01112623          	sw	a7,12(sp)
 210:	01012823          	sw	a6,16(sp)
 214:	00c12a23          	sw	a2,20(sp)
 218:	00e12c23          	sw	a4,24(sp)
 21c:	00f10e23          	sb	a5,28(sp)
 220:	00269693          	sll	a3,a3,0x2
 224:	0206c863          	bltz	a3,254 <print_hex_digits+0x94>
 228:	06000737          	lui	a4,0x6000
 22c:	00d557b3          	srl	a5,a0,a3
 230:	00f7f793          	and	a5,a5,15
 234:	02078793          	add	a5,a5,32
 238:	002787b3          	add	a5,a5,sp
 23c:	fec7c603          	lbu	a2,-20(a5)
 240:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 244:	fe078ee3          	beqz	a5,240 <print_hex_digits+0x80>
 248:	00c72023          	sw	a2,0(a4)
 24c:	ffc68693          	add	a3,a3,-4
 250:	fc06dee3          	bgez	a3,22c <print_hex_digits+0x6c>
 254:	02010113          	add	sp,sp,32
 258:	00008067          	ret

0000025c <print_hex>:
 25c:	00800593          	li	a1,8
 260:	f61ff06f          	j	1c0 <print_hex_digits>

00000264 <printf>:
 264:	fb010113          	add	sp,sp,-80
 268:	04f12223          	sw	a5,68(sp)
 26c:	02112623          	sw	ra,44(sp)
 270:	02b12a23          	sw	a1,52(sp)
 274:	02c12c23          	sw	a2,56(sp)
 278:	02d12e23          	sw	a3,60(sp)
 27c:	04e12023          	sw	a4,64(sp)
 280:	05012423          	sw	a6,72(sp)
 284:	05112623          	sw	a7,76(sp)
 288:	00054703          	lbu	a4,0(a0)
 28c:	03410793          	add	a5,sp,52
 290:	00f12623          	sw	a5,12(sp)
 294:	08070663          	beqz	a4,320 <printf+0xbc>
 298:	02812423          	sw	s0,40(sp)
 29c:	02912223          	sw	s1,36(sp)
 2a0:	03212023          	sw	s2,32(sp)
 2a4:	01312e23          	sw	s3,28(sp)
 2a8:	01412c23          	sw	s4,24(sp)
 2ac:	01512a23          	sw	s5,20(sp)
 2b0:	01612823          	sw	s6,16(sp)
 2b4:	00050493          	mv	s1,a0
 2b8:	02500913          	li	s2,37
 2bc:	06000437          	lui	s0,0x6000
 2c0:	07300993          	li	s3,115
 2c4:	07800a13          	li	s4,120
 2c8:	06400a93          	li	s5,100
 2cc:	06300b13          	li	s6,99
 2d0:	07271063          	bne	a4,s2,330 <printf+0xcc>
 2d4:	0014c703          	lbu	a4,1(s1)
 2d8:	0d370063          	beq	a4,s3,398 <printf+0x134>
 2dc:	09470e63          	beq	a4,s4,378 <printf+0x114>
 2e0:	0f570a63          	beq	a4,s5,3d4 <printf+0x170>
 2e4:	07670663          	beq	a4,s6,350 <printf+0xec>
 2e8:	00042783          	lw	a5,0(s0) # 6000000 <IO_BASE+0x5c00000>
 2ec:	fe078ee3          	beqz	a5,2e8 <printf+0x84>
 2f0:	00e42023          	sw	a4,0(s0)
 2f4:	00148513          	add	a0,s1,1
 2f8:	00154703          	lbu	a4,1(a0)
 2fc:	00150493          	add	s1,a0,1
 300:	fc0718e3          	bnez	a4,2d0 <printf+0x6c>
 304:	02812403          	lw	s0,40(sp)
 308:	02412483          	lw	s1,36(sp)
 30c:	02012903          	lw	s2,32(sp)
 310:	01c12983          	lw	s3,28(sp)
 314:	01812a03          	lw	s4,24(sp)
 318:	01412a83          	lw	s5,20(sp)
 31c:	01012b03          	lw	s6,16(sp)
 320:	02c12083          	lw	ra,44(sp)
 324:	00000513          	li	a0,0
 328:	05010113          	add	sp,sp,80
 32c:	00008067          	ret
 330:	00042783          	lw	a5,0(s0)
 334:	fe078ee3          	beqz	a5,330 <printf+0xcc>
 338:	00048513          	mv	a0,s1
 33c:	00e42023          	sw	a4,0(s0)
 340:	00154703          	lbu	a4,1(a0)
 344:	00150493          	add	s1,a0,1
 348:	f80714e3          	bnez	a4,2d0 <printf+0x6c>
 34c:	fb9ff06f          	j	304 <printf+0xa0>
 350:	00c12783          	lw	a5,12(sp)
 354:	06000737          	lui	a4,0x6000
 358:	0007a683          	lw	a3,0(a5)
 35c:	00478793          	add	a5,a5,4
 360:	00f12623          	sw	a5,12(sp)
 364:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 368:	fe078ee3          	beqz	a5,364 <printf+0x100>
 36c:	00d72023          	sw	a3,0(a4)
 370:	00148513          	add	a0,s1,1
 374:	f85ff06f          	j	2f8 <printf+0x94>
 378:	00c12783          	lw	a5,12(sp)
 37c:	00800593          	li	a1,8
 380:	0007a503          	lw	a0,0(a5)
 384:	00478793          	add	a5,a5,4
 388:	00f12623          	sw	a5,12(sp)
 38c:	e35ff0ef          	jal	1c0 <print_hex_digits>
 390:	00148513          	add	a0,s1,1
 394:	f65ff06f          	j	2f8 <printf+0x94>
 398:	00c12783          	lw	a5,12(sp)
 39c:	0007a603          	lw	a2,0(a5)
 3a0:	00478793          	add	a5,a5,4
 3a4:	00f12623          	sw	a5,12(sp)
 3a8:	00064683          	lbu	a3,0(a2)
 3ac:	f40684e3          	beqz	a3,2f4 <printf+0x90>
 3b0:	06000737          	lui	a4,0x6000
 3b4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 3b8:	fe078ee3          	beqz	a5,3b4 <printf+0x150>
 3bc:	00d72023          	sw	a3,0(a4)
 3c0:	00164683          	lbu	a3,1(a2)
 3c4:	00160613          	add	a2,a2,1
 3c8:	fe0696e3          	bnez	a3,3b4 <printf+0x150>
 3cc:	00148513          	add	a0,s1,1
 3d0:	f29ff06f          	j	2f8 <printf+0x94>
 3d4:	00c12783          	lw	a5,12(sp)
 3d8:	0007a503          	lw	a0,0(a5)
 3dc:	00478793          	add	a5,a5,4
 3e0:	00f12623          	sw	a5,12(sp)
 3e4:	d35ff0ef          	jal	118 <print_dec>
 3e8:	00148513          	add	a0,s1,1
 3ec:	f0dff06f          	j	2f8 <printf+0x94>

000003f0 <__mulsi3>:
 3f0:	00050613          	mv	a2,a0
 3f4:	00000513          	li	a0,0
 3f8:	0015f693          	and	a3,a1,1
 3fc:	00068463          	beqz	a3,404 <__mulsi3+0x14>
 400:	00c50533          	add	a0,a0,a2
 404:	0015d593          	srl	a1,a1,0x1
 408:	00161613          	sll	a2,a2,0x1
 40c:	fe0596e3          	bnez	a1,3f8 <__mulsi3+0x8>
 410:	00008067          	ret

00000414 <__divsi3>:
 414:	06054063          	bltz	a0,474 <__umodsi3+0x10>
 418:	0605c663          	bltz	a1,484 <__umodsi3+0x20>

0000041c <__udivsi3>:
 41c:	00058613          	mv	a2,a1
 420:	00050593          	mv	a1,a0
 424:	fff00513          	li	a0,-1
 428:	02060c63          	beqz	a2,460 <__udivsi3+0x44>
 42c:	00100693          	li	a3,1
 430:	00b67a63          	bgeu	a2,a1,444 <__udivsi3+0x28>
 434:	00c05863          	blez	a2,444 <__udivsi3+0x28>
 438:	00161613          	sll	a2,a2,0x1
 43c:	00169693          	sll	a3,a3,0x1
 440:	feb66ae3          	bltu	a2,a1,434 <__udivsi3+0x18>
 444:	00000513          	li	a0,0
 448:	00c5e663          	bltu	a1,a2,454 <__udivsi3+0x38>
 44c:	40c585b3          	sub	a1,a1,a2
 450:	00d56533          	or	a0,a0,a3
 454:	0016d693          	srl	a3,a3,0x1
 458:	00165613          	srl	a2,a2,0x1
 45c:	fe0696e3          	bnez	a3,448 <__udivsi3+0x2c>
 460:	00008067          	ret

00000464 <__umodsi3>:
 464:	00008293          	mv	t0,ra
 468:	fb5ff0ef          	jal	41c <__udivsi3>
 46c:	00058513          	mv	a0,a1
 470:	00028067          	jr	t0
 474:	40a00533          	neg	a0,a0
 478:	0005d863          	bgez	a1,488 <__umodsi3+0x24>
 47c:	40b005b3          	neg	a1,a1
 480:	f95ff06f          	j	414 <__divsi3>
 484:	40b005b3          	neg	a1,a1
 488:	00008293          	mv	t0,ra
 48c:	f89ff0ef          	jal	414 <__divsi3>
 490:	40a00533          	neg	a0,a0
 494:	00028067          	jr	t0

00000498 <__modsi3>:
 498:	00008293          	mv	t0,ra
 49c:	0005ca63          	bltz	a1,4b0 <__modsi3+0x18>
 4a0:	00054c63          	bltz	a0,4b8 <__modsi3+0x20>
 4a4:	f79ff0ef          	jal	41c <__udivsi3>
 4a8:	00058513          	mv	a0,a1
 4ac:	00028067          	jr	t0
 4b0:	40b005b3          	neg	a1,a1
 4b4:	fe0558e3          	bgez	a0,4a4 <__modsi3+0xc>
 4b8:	40a00533          	neg	a0,a0
 4bc:	f61ff0ef          	jal	41c <__udivsi3>
 4c0:	40b00533          	neg	a0,a1
 4c4:	00028067          	jr	t0

000004c8 <__udivdi3>:
 4c8:	00058613          	mv	a2,a1
 4cc:	00050593          	mv	a1,a0
 4d0:	fff00513          	li	a0,-1
 4d4:	02060c63          	beqz	a2,50c <__udivdi3+0x44>
 4d8:	00100693          	li	a3,1
 4dc:	00b67a63          	bgeu	a2,a1,4f0 <__udivdi3+0x28>
 4e0:	00c05863          	blez	a2,4f0 <__udivdi3+0x28>
 4e4:	00161613          	sll	a2,a2,0x1
 4e8:	00169693          	sll	a3,a3,0x1
 4ec:	feb66ae3          	bltu	a2,a1,4e0 <__udivdi3+0x18>
 4f0:	00000513          	li	a0,0
 4f4:	00c5e663          	bltu	a1,a2,500 <__udivdi3+0x38>
 4f8:	40c585b3          	sub	a1,a1,a2
 4fc:	00d56533          	or	a0,a0,a3
 500:	0016d693          	srl	a3,a3,0x1
 504:	00165613          	srl	a2,a2,0x1
 508:	fe0696e3          	bnez	a3,4f4 <__udivdi3+0x2c>
 50c:	00008067          	ret

00000510 <__umoddi3>:
 510:	00008293          	mv	t0,ra
 514:	fb5ff0ef          	jal	4c8 <__udivdi3>
 518:	00058513          	mv	a0,a1
 51c:	00028067          	jr	t0

Disassembly of section .data:

00010000 <.data>:
   10000:	6928                	.2byte	0x6928
   10002:	2969                	.2byte	0x2969
   10004:	0000                	.2byte	0x0
   10006:	0000                	.2byte	0x0
   10008:	6928                	.2byte	0x6928
   1000a:	2969                	.2byte	0x2969
   1000c:	4820                	.2byte	0x4820
   1000e:	4c45                	.2byte	0x4c45
   10010:	4f4c                	.2byte	0x4f4c
   10012:	7720                	.2byte	0x7720
   10014:	646c726f          	jal	tp,d765a <__umoddi3+0xd714a>
   10018:	2120                	.2byte	0x2120
   1001a:	0000                	.2byte	0x0
   1001c:	6928                	.2byte	0x6928
   1001e:	2969                	.2byte	0x2969
   10020:	4c20                	.2byte	0x4c20
   10022:	7465                	.2byte	0x7465
   10024:	6d20                	.2byte	0x6d20
   10026:	2065                	.2byte	0x2065
   10028:	6e69                	.2byte	0x6e69
   1002a:	7274                	.2byte	0x7274
   1002c:	6375646f          	jal	s0,66e62 <__umoddi3+0x66952>
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
   10050:	002e                	.2byte	0x2e
   10052:	0000                	.2byte	0x0
   10054:	6928                	.2byte	0x6928
   10056:	2969                	.2byte	0x2969
   10058:	7220                	.2byte	0x7220
   1005a:	6c65                	.2byte	0x6c65
   1005c:	6165                	.2byte	0x6165
   1005e:	3a206573          	.4byte	0x3a206573
   10062:	0000                	.2byte	0x0
   10064:	6928                	.2byte	0x6928
   10066:	2969                	.2byte	0x2969
   10068:	0020                	.2byte	0x20
   1006a:	0000                	.2byte	0x0
   1006c:	614d                	.2byte	0x614d
   1006e:	2072                	.2byte	0x2072
   10070:	3032                	.2byte	0x3032
   10072:	3220                	.2byte	0x3220
   10074:	3230                	.2byte	0x3230
   10076:	0035                	.2byte	0x35
   10078:	3730                	.2byte	0x3730
   1007a:	323a                	.2byte	0x323a
   1007c:	3a38                	.2byte	0x3a38
   1007e:	3131                	.2byte	0x3131
   10080:	0000                	.2byte	0x0
   10082:	0000                	.2byte	0x0
   10084:	2e2e                	.2byte	0x2e2e
   10086:	692e                	.2byte	0x692e
   10088:	2e2e6963          	bltu	t3,sp,1037a <__umoddi3+0xfe6a>
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
