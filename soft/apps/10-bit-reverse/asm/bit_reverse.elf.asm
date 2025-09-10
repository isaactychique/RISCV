
./bin/bit_reverse.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	12c000ef          	jal	134 <main>
   c:	00100073          	ebreak

00000010 <reverse_uint32>:
  10:	00050793          	mv	a5,a0
  14:	00000513          	li	a0,0
  18:	00078e63          	beqz	a5,34 <reverse_uint32+0x24>
  1c:	0017f713          	and	a4,a5,1
  20:	00151513          	sll	a0,a0,0x1
  24:	0017d793          	srl	a5,a5,0x1
  28:	00a76533          	or	a0,a4,a0
  2c:	fe0798e3          	bnez	a5,1c <reverse_uint32+0xc>
  30:	00008067          	ret
  34:	00008067          	ret

00000038 <reverse_uint32_v2>:
  38:	aaaab6b7          	lui	a3,0xaaaab
  3c:	55555737          	lui	a4,0x55555
  40:	00151793          	sll	a5,a0,0x1
  44:	aaa68693          	add	a3,a3,-1366 # aaaaaaaa <IO_BASE+0xaa6aaaaa>
  48:	55570713          	add	a4,a4,1365 # 55555555 <IO_BASE+0x55155555>
  4c:	00155513          	srl	a0,a0,0x1
  50:	00e57533          	and	a0,a0,a4
  54:	00d7f7b3          	and	a5,a5,a3
  58:	00a7e7b3          	or	a5,a5,a0
  5c:	ccccd637          	lui	a2,0xccccd
  60:	333336b7          	lui	a3,0x33333
  64:	00279713          	sll	a4,a5,0x2
  68:	ccc60613          	add	a2,a2,-820 # cccccccc <IO_BASE+0xcc8ccccc>
  6c:	33368693          	add	a3,a3,819 # 33333333 <IO_BASE+0x32f33333>
  70:	0027d793          	srl	a5,a5,0x2
  74:	00d7f7b3          	and	a5,a5,a3
  78:	00c77733          	and	a4,a4,a2
  7c:	00f76733          	or	a4,a4,a5
  80:	f0f0f637          	lui	a2,0xf0f0f
  84:	0f0f16b7          	lui	a3,0xf0f1
  88:	00471793          	sll	a5,a4,0x4
  8c:	0f060613          	add	a2,a2,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
  90:	f0f68693          	add	a3,a3,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
  94:	00475713          	srl	a4,a4,0x4
  98:	00d77733          	and	a4,a4,a3
  9c:	00c7f7b3          	and	a5,a5,a2
  a0:	00e7e7b3          	or	a5,a5,a4
  a4:	ff0106b7          	lui	a3,0xff010
  a8:	00ff0737          	lui	a4,0xff0
  ac:	00879513          	sll	a0,a5,0x8
  b0:	f0068693          	add	a3,a3,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
  b4:	0ff70713          	add	a4,a4,255 # ff00ff <IO_BASE+0xbf00ff>
  b8:	0087d793          	srl	a5,a5,0x8
  bc:	00d57533          	and	a0,a0,a3
  c0:	00e7f7b3          	and	a5,a5,a4
  c4:	00f567b3          	or	a5,a0,a5
  c8:	01079513          	sll	a0,a5,0x10
  cc:	0107d793          	srl	a5,a5,0x10
  d0:	00a7e533          	or	a0,a5,a0
  d4:	00008067          	ret

000000d8 <reverse_uint32_v3>:
  d8:	01055713          	srl	a4,a0,0x10
  dc:	000107b7          	lui	a5,0x10
  e0:	03c78793          	add	a5,a5,60 # 1003c <table>
  e4:	00855693          	srl	a3,a0,0x8
  e8:	0ff77713          	zext.b	a4,a4
  ec:	01855593          	srl	a1,a0,0x18
  f0:	00e78733          	add	a4,a5,a4
  f4:	0ff6f693          	zext.b	a3,a3
  f8:	00074603          	lbu	a2,0(a4)
  fc:	00d786b3          	add	a3,a5,a3
 100:	00b78733          	add	a4,a5,a1
 104:	0ff57513          	zext.b	a0,a0
 108:	00074703          	lbu	a4,0(a4)
 10c:	0006c683          	lbu	a3,0(a3)
 110:	00a787b3          	add	a5,a5,a0
 114:	0007c503          	lbu	a0,0(a5)
 118:	00861793          	sll	a5,a2,0x8
 11c:	01069693          	sll	a3,a3,0x10
 120:	00f767b3          	or	a5,a4,a5
 124:	00d7e7b3          	or	a5,a5,a3
 128:	01851513          	sll	a0,a0,0x18
 12c:	00a7e533          	or	a0,a5,a0
 130:	00008067          	ret

00000134 <main>:
 134:	00010537          	lui	a0,0x10
 138:	fe010113          	add	sp,sp,-32 # 1ffe0 <table+0xffa4>
 13c:	00050513          	mv	a0,a0
 140:	00112e23          	sw	ra,28(sp)
 144:	00812c23          	sw	s0,24(sp)
 148:	00912a23          	sw	s1,20(sp)
 14c:	01212823          	sw	s2,16(sp)
 150:	01312623          	sw	s3,12(sp)
 154:	01412423          	sw	s4,8(sp)
 158:	160000ef          	jal	2b8 <print_string>
 15c:	c02029f3          	rdinstret	s3
 160:	89abd537          	lui	a0,0x89abd
 164:	def50513          	add	a0,a0,-529 # 89abcdef <IO_BASE+0x896bcdef>
 168:	ea9ff0ef          	jal	10 <reverse_uint32>
 16c:	00050413          	mv	s0,a0
 170:	c0202a73          	rdinstret	s4
 174:	00010937          	lui	s2,0x10
 178:	01c90513          	add	a0,s2,28 # 1001c <__modsi3+0xfae8>
 17c:	13c000ef          	jal	2b8 <print_string>
 180:	00040513          	mv	a0,s0
 184:	2bc000ef          	jal	440 <print_hex>
 188:	00a00513          	li	a0,10
 18c:	118000ef          	jal	2a4 <putchar>
 190:	000104b7          	lui	s1,0x10
 194:	02c48513          	add	a0,s1,44 # 1002c <__modsi3+0xfaf8>
 198:	120000ef          	jal	2b8 <print_string>
 19c:	413a0533          	sub	a0,s4,s3
 1a0:	180000ef          	jal	320 <print_dec>
 1a4:	00a00513          	li	a0,10
 1a8:	0fc000ef          	jal	2a4 <putchar>
 1ac:	c02029f3          	rdinstret	s3
 1b0:	89abd537          	lui	a0,0x89abd
 1b4:	def50513          	add	a0,a0,-529 # 89abcdef <IO_BASE+0x896bcdef>
 1b8:	e81ff0ef          	jal	38 <reverse_uint32_v2>
 1bc:	00050413          	mv	s0,a0
 1c0:	c0202a73          	rdinstret	s4
 1c4:	01c90513          	add	a0,s2,28
 1c8:	0f0000ef          	jal	2b8 <print_string>
 1cc:	00040513          	mv	a0,s0
 1d0:	270000ef          	jal	440 <print_hex>
 1d4:	00a00513          	li	a0,10
 1d8:	0cc000ef          	jal	2a4 <putchar>
 1dc:	02c48513          	add	a0,s1,44
 1e0:	0d8000ef          	jal	2b8 <print_string>
 1e4:	413a0533          	sub	a0,s4,s3
 1e8:	138000ef          	jal	320 <print_dec>
 1ec:	00a00513          	li	a0,10
 1f0:	0b4000ef          	jal	2a4 <putchar>
 1f4:	c02029f3          	rdinstret	s3
 1f8:	89abd537          	lui	a0,0x89abd
 1fc:	def50513          	add	a0,a0,-529 # 89abcdef <IO_BASE+0x896bcdef>
 200:	ed9ff0ef          	jal	d8 <reverse_uint32_v3>
 204:	00050413          	mv	s0,a0
 208:	c0202a73          	rdinstret	s4
 20c:	01c90513          	add	a0,s2,28
 210:	0a8000ef          	jal	2b8 <print_string>
 214:	00040513          	mv	a0,s0
 218:	228000ef          	jal	440 <print_hex>
 21c:	00a00513          	li	a0,10
 220:	084000ef          	jal	2a4 <putchar>
 224:	02c48513          	add	a0,s1,44
 228:	090000ef          	jal	2b8 <print_string>
 22c:	413a0533          	sub	a0,s4,s3
 230:	0f0000ef          	jal	320 <print_dec>
 234:	00a00513          	li	a0,10
 238:	06c000ef          	jal	2a4 <putchar>
 23c:	c02029f3          	rdinstret	s3
 240:	89abd537          	lui	a0,0x89abd
 244:	def50513          	add	a0,a0,-529 # 89abcdef <IO_BASE+0x896bcdef>
 248:	00a5042f          	.4byte	0xa5042f
 24c:	c0202a73          	rdinstret	s4
 250:	01c90513          	add	a0,s2,28
 254:	064000ef          	jal	2b8 <print_string>
 258:	00040513          	mv	a0,s0
 25c:	1e4000ef          	jal	440 <print_hex>
 260:	00a00513          	li	a0,10
 264:	040000ef          	jal	2a4 <putchar>
 268:	02c48513          	add	a0,s1,44
 26c:	04c000ef          	jal	2b8 <print_string>
 270:	413a0533          	sub	a0,s4,s3
 274:	0ac000ef          	jal	320 <print_dec>
 278:	00a00513          	li	a0,10
 27c:	028000ef          	jal	2a4 <putchar>
 280:	01c12083          	lw	ra,28(sp)
 284:	01812403          	lw	s0,24(sp)
 288:	01412483          	lw	s1,20(sp)
 28c:	01012903          	lw	s2,16(sp)
 290:	00c12983          	lw	s3,12(sp)
 294:	00812a03          	lw	s4,8(sp)
 298:	00000513          	li	a0,0
 29c:	02010113          	add	sp,sp,32
 2a0:	00008067          	ret

000002a4 <putchar>:
 2a4:	06000737          	lui	a4,0x6000
 2a8:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 2ac:	fe078ee3          	beqz	a5,2a8 <putchar+0x4>
 2b0:	00a72023          	sw	a0,0(a4)
 2b4:	00008067          	ret

000002b8 <print_string>:
 2b8:	00054683          	lbu	a3,0(a0)
 2bc:	02068063          	beqz	a3,2dc <print_string+0x24>
 2c0:	06000737          	lui	a4,0x6000
 2c4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 2c8:	fe078ee3          	beqz	a5,2c4 <print_string+0xc>
 2cc:	00d72023          	sw	a3,0(a4)
 2d0:	00154683          	lbu	a3,1(a0)
 2d4:	00150513          	add	a0,a0,1
 2d8:	fe0696e3          	bnez	a3,2c4 <print_string+0xc>
 2dc:	00008067          	ret

000002e0 <puts>:
 2e0:	00054683          	lbu	a3,0(a0)
 2e4:	02068063          	beqz	a3,304 <puts+0x24>
 2e8:	06000737          	lui	a4,0x6000
 2ec:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 2f0:	fe078ee3          	beqz	a5,2ec <puts+0xc>
 2f4:	00d72023          	sw	a3,0(a4)
 2f8:	00154683          	lbu	a3,1(a0)
 2fc:	00150513          	add	a0,a0,1
 300:	fe0696e3          	bnez	a3,2ec <puts+0xc>
 304:	06000737          	lui	a4,0x6000
 308:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 30c:	fe078ee3          	beqz	a5,308 <puts+0x28>
 310:	00a00793          	li	a5,10
 314:	00f72023          	sw	a5,0(a4)
 318:	00100513          	li	a0,1
 31c:	00008067          	ret

00000320 <print_dec>:
 320:	ef010113          	add	sp,sp,-272
 324:	10812423          	sw	s0,264(sp)
 328:	10112623          	sw	ra,268(sp)
 32c:	10912223          	sw	s1,260(sp)
 330:	11212023          	sw	s2,256(sp)
 334:	00050413          	mv	s0,a0
 338:	06000737          	lui	a4,0x6000
 33c:	00055c63          	bgez	a0,354 <print_dec+0x34>
 340:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 344:	fe078ee3          	beqz	a5,340 <print_dec+0x20>
 348:	02d00793          	li	a5,45
 34c:	00f72023          	sw	a5,0(a4)
 350:	40800433          	neg	s0,s0
 354:	00010913          	mv	s2,sp
 358:	00090493          	mv	s1,s2
 35c:	0240006f          	j	380 <print_dec+0x60>
 360:	1d4000ef          	jal	534 <__modsi3>
 364:	00050793          	mv	a5,a0
 368:	00a00593          	li	a1,10
 36c:	00040513          	mv	a0,s0
 370:	00f48023          	sb	a5,0(s1)
 374:	13c000ef          	jal	4b0 <__divsi3>
 378:	00148493          	add	s1,s1,1
 37c:	00050413          	mv	s0,a0
 380:	00a00593          	li	a1,10
 384:	00040513          	mv	a0,s0
 388:	fc041ce3          	bnez	s0,360 <print_dec+0x40>
 38c:	fd248ae3          	beq	s1,s2,360 <print_dec+0x40>
 390:	06000737          	lui	a4,0x6000
 394:	fff4c683          	lbu	a3,-1(s1)
 398:	fff48493          	add	s1,s1,-1
 39c:	03068693          	add	a3,a3,48
 3a0:	0ff6f693          	zext.b	a3,a3
 3a4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 3a8:	fe078ee3          	beqz	a5,3a4 <print_dec+0x84>
 3ac:	00d72023          	sw	a3,0(a4)
 3b0:	ff2492e3          	bne	s1,s2,394 <print_dec+0x74>
 3b4:	10c12083          	lw	ra,268(sp)
 3b8:	10812403          	lw	s0,264(sp)
 3bc:	10412483          	lw	s1,260(sp)
 3c0:	10012903          	lw	s2,256(sp)
 3c4:	11010113          	add	sp,sp,272
 3c8:	00008067          	ret

000003cc <print_hex_digits>:
 3cc:	000107b7          	lui	a5,0x10
 3d0:	13c78793          	add	a5,a5,316 # 1013c <table+0x100>
 3d4:	0007a883          	lw	a7,0(a5)
 3d8:	0047a803          	lw	a6,4(a5)
 3dc:	0087a603          	lw	a2,8(a5)
 3e0:	00c7a703          	lw	a4,12(a5)
 3e4:	0107c783          	lbu	a5,16(a5)
 3e8:	fe010113          	add	sp,sp,-32
 3ec:	fff58693          	add	a3,a1,-1
 3f0:	01112623          	sw	a7,12(sp)
 3f4:	01012823          	sw	a6,16(sp)
 3f8:	00c12a23          	sw	a2,20(sp)
 3fc:	00e12c23          	sw	a4,24(sp)
 400:	00f10e23          	sb	a5,28(sp)
 404:	00269693          	sll	a3,a3,0x2
 408:	0206c863          	bltz	a3,438 <print_hex_digits+0x6c>
 40c:	06000737          	lui	a4,0x6000
 410:	00d557b3          	srl	a5,a0,a3
 414:	00f7f793          	and	a5,a5,15
 418:	02078793          	add	a5,a5,32
 41c:	002787b3          	add	a5,a5,sp
 420:	fec7c603          	lbu	a2,-20(a5)
 424:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 428:	fe078ee3          	beqz	a5,424 <print_hex_digits+0x58>
 42c:	00c72023          	sw	a2,0(a4)
 430:	ffc68693          	add	a3,a3,-4
 434:	fc06dee3          	bgez	a3,410 <print_hex_digits+0x44>
 438:	02010113          	add	sp,sp,32
 43c:	00008067          	ret

00000440 <print_hex>:
 440:	000107b7          	lui	a5,0x10
 444:	13c78793          	add	a5,a5,316 # 1013c <table+0x100>
 448:	0007a583          	lw	a1,0(a5)
 44c:	0087a683          	lw	a3,8(a5)
 450:	00c7a703          	lw	a4,12(a5)
 454:	0047a603          	lw	a2,4(a5)
 458:	0107c783          	lbu	a5,16(a5)
 45c:	fe010113          	add	sp,sp,-32
 460:	00b12623          	sw	a1,12(sp)
 464:	00d12a23          	sw	a3,20(sp)
 468:	00e12c23          	sw	a4,24(sp)
 46c:	00c12823          	sw	a2,16(sp)
 470:	00f10e23          	sb	a5,28(sp)
 474:	01c00693          	li	a3,28
 478:	06000737          	lui	a4,0x6000
 47c:	ffc00593          	li	a1,-4
 480:	00d557b3          	srl	a5,a0,a3
 484:	00f7f793          	and	a5,a5,15
 488:	02078793          	add	a5,a5,32
 48c:	002787b3          	add	a5,a5,sp
 490:	fec7c603          	lbu	a2,-20(a5)
 494:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 498:	fe078ee3          	beqz	a5,494 <print_hex+0x54>
 49c:	00c72023          	sw	a2,0(a4)
 4a0:	ffc68693          	add	a3,a3,-4
 4a4:	fcb69ee3          	bne	a3,a1,480 <print_hex+0x40>
 4a8:	02010113          	add	sp,sp,32
 4ac:	00008067          	ret

000004b0 <__divsi3>:
 4b0:	06054063          	bltz	a0,510 <__umodsi3+0x10>
 4b4:	0605c663          	bltz	a1,520 <__umodsi3+0x20>

000004b8 <__udivsi3>:
 4b8:	00058613          	mv	a2,a1
 4bc:	00050593          	mv	a1,a0
 4c0:	fff00513          	li	a0,-1
 4c4:	02060c63          	beqz	a2,4fc <__udivsi3+0x44>
 4c8:	00100693          	li	a3,1
 4cc:	00b67a63          	bgeu	a2,a1,4e0 <__udivsi3+0x28>
 4d0:	00c05863          	blez	a2,4e0 <__udivsi3+0x28>
 4d4:	00161613          	sll	a2,a2,0x1
 4d8:	00169693          	sll	a3,a3,0x1
 4dc:	feb66ae3          	bltu	a2,a1,4d0 <__udivsi3+0x18>
 4e0:	00000513          	li	a0,0
 4e4:	00c5e663          	bltu	a1,a2,4f0 <__udivsi3+0x38>
 4e8:	40c585b3          	sub	a1,a1,a2
 4ec:	00d56533          	or	a0,a0,a3
 4f0:	0016d693          	srl	a3,a3,0x1
 4f4:	00165613          	srl	a2,a2,0x1
 4f8:	fe0696e3          	bnez	a3,4e4 <__udivsi3+0x2c>
 4fc:	00008067          	ret

00000500 <__umodsi3>:
 500:	00008293          	mv	t0,ra
 504:	fb5ff0ef          	jal	4b8 <__udivsi3>
 508:	00058513          	mv	a0,a1
 50c:	00028067          	jr	t0
 510:	40a00533          	neg	a0,a0
 514:	0005d863          	bgez	a1,524 <__umodsi3+0x24>
 518:	40b005b3          	neg	a1,a1
 51c:	f95ff06f          	j	4b0 <__divsi3>
 520:	40b005b3          	neg	a1,a1
 524:	00008293          	mv	t0,ra
 528:	f89ff0ef          	jal	4b0 <__divsi3>
 52c:	40a00533          	neg	a0,a0
 530:	00028067          	jr	t0

00000534 <__modsi3>:
 534:	00008293          	mv	t0,ra
 538:	0005ca63          	bltz	a1,54c <__modsi3+0x18>
 53c:	00054c63          	bltz	a0,554 <__modsi3+0x20>
 540:	f79ff0ef          	jal	4b8 <__udivsi3>
 544:	00058513          	mv	a0,a1
 548:	00028067          	jr	t0
 54c:	40b005b3          	neg	a1,a1
 550:	fe0558e3          	bgez	a0,540 <__modsi3+0xc>
 554:	40a00533          	neg	a0,a0
 558:	f61ff0ef          	jal	4b8 <__udivsi3>
 55c:	40b00533          	neg	a0,a1
 560:	00028067          	jr	t0

Disassembly of section .data:

00010000 <table-0x3c>:
   10000:	6942                	.2byte	0x6942
   10002:	2074                	.2byte	0x2074
   10004:	6572                	.2byte	0x6572
   10006:	6576                	.2byte	0x6576
   10008:	7372                	.2byte	0x7372
   1000a:	2065                	.2byte	0x2065
   1000c:	7061                	.2byte	0x7061
   1000e:	6c70                	.2byte	0x6c70
   10010:	6369                	.2byte	0x6369
   10012:	7461                	.2byte	0x7461
   10014:	6f69                	.2byte	0x6f69
   10016:	2e6e                	.2byte	0x2e6e
   10018:	2e2e                	.2byte	0x2e2e
   1001a:	000a                	.2byte	0xa
   1001c:	203e                	.2byte	0x203e
   1001e:	6572                	.2byte	0x6572
   10020:	746c7573          	.4byte	0x746c7573
   10024:	7461                	.2byte	0x7461
   10026:	3a20                	.2byte	0x3a20
   10028:	0020                	.2byte	0x20
   1002a:	0000                	.2byte	0x0
   1002c:	2020                	.2byte	0x2020
   1002e:	202d                	.2byte	0x202d
   10030:	6e69                	.2byte	0x6e69
   10032:	20206e73          	.4byte	0x20206e73
   10036:	3a20                	.2byte	0x3a20
   10038:	0020                	.2byte	0x20
	...

0001003c <table>:
   1003c:	8000                	.2byte	0x8000
   1003e:	c040                	.2byte	0xc040
   10040:	a020                	.2byte	0xa020
   10042:	e060                	.2byte	0xe060
   10044:	9010                	.2byte	0x9010
   10046:	d050                	.2byte	0xd050
   10048:	b030                	.2byte	0xb030
   1004a:	f070                	.2byte	0xf070
   1004c:	8808                	.2byte	0x8808
   1004e:	c848                	.2byte	0xc848
   10050:	a828                	.2byte	0xa828
   10052:	e868                	.2byte	0xe868
   10054:	9818                	.2byte	0x9818
   10056:	d858                	.2byte	0xd858
   10058:	b838                	.2byte	0xb838
   1005a:	f878                	.2byte	0xf878
   1005c:	8404                	.2byte	0x8404
   1005e:	c444                	.2byte	0xc444
   10060:	a424                	.2byte	0xa424
   10062:	e464                	.2byte	0xe464
   10064:	9414                	.2byte	0x9414
   10066:	d454                	.2byte	0xd454
   10068:	b434                	.2byte	0xb434
   1006a:	f474                	.2byte	0xf474
   1006c:	8c0c                	.2byte	0x8c0c
   1006e:	cc4c                	.2byte	0xcc4c
   10070:	ac2c                	.2byte	0xac2c
   10072:	ec6c                	.2byte	0xec6c
   10074:	9c1c                	.2byte	0x9c1c
   10076:	dc5c                	.2byte	0xdc5c
   10078:	bc3c                	.2byte	0xbc3c
   1007a:	fc7c                	.2byte	0xfc7c
   1007c:	8202                	.2byte	0x8202
   1007e:	c242                	.2byte	0xc242
   10080:	a222                	.2byte	0xa222
   10082:	e262                	.2byte	0xe262
   10084:	9212                	.2byte	0x9212
   10086:	d252                	.2byte	0xd252
   10088:	b232                	.2byte	0xb232
   1008a:	f272                	.2byte	0xf272
   1008c:	8a0a                	.2byte	0x8a0a
   1008e:	ca4a                	.2byte	0xca4a
   10090:	aa2a                	.2byte	0xaa2a
   10092:	ea6a                	.2byte	0xea6a
   10094:	9a1a                	.2byte	0x9a1a
   10096:	da5a                	.2byte	0xda5a
   10098:	ba3a                	.2byte	0xba3a
   1009a:	fa7a                	.2byte	0xfa7a
   1009c:	8606                	.2byte	0x8606
   1009e:	c646                	.2byte	0xc646
   100a0:	a626                	.2byte	0xa626
   100a2:	e666                	.2byte	0xe666
   100a4:	9616                	.2byte	0x9616
   100a6:	d656                	.2byte	0xd656
   100a8:	b636                	.2byte	0xb636
   100aa:	f676                	.2byte	0xf676
   100ac:	8e0e                	.2byte	0x8e0e
   100ae:	ce4e                	.2byte	0xce4e
   100b0:	ae2e                	.2byte	0xae2e
   100b2:	ee6e                	.2byte	0xee6e
   100b4:	9e1e                	.2byte	0x9e1e
   100b6:	de5e                	.2byte	0xde5e
   100b8:	be3e                	.2byte	0xbe3e
   100ba:	fe7e                	.2byte	0xfe7e
   100bc:	8101                	.2byte	0x8101
   100be:	c141                	.2byte	0xc141
   100c0:	a121                	.2byte	0xa121
   100c2:	e161                	.2byte	0xe161
   100c4:	9111                	.2byte	0x9111
   100c6:	d151                	.2byte	0xd151
   100c8:	b131                	.2byte	0xb131
   100ca:	f171                	.2byte	0xf171
   100cc:	8909                	.2byte	0x8909
   100ce:	c949                	.2byte	0xc949
   100d0:	a929                	.2byte	0xa929
   100d2:	e969                	.2byte	0xe969
   100d4:	9919                	.2byte	0x9919
   100d6:	d959                	.2byte	0xd959
   100d8:	b939                	.2byte	0xb939
   100da:	f979                	.2byte	0xf979
   100dc:	8505                	.2byte	0x8505
   100de:	c545                	.2byte	0xc545
   100e0:	a525                	.2byte	0xa525
   100e2:	e565                	.2byte	0xe565
   100e4:	9515                	.2byte	0x9515
   100e6:	d555                	.2byte	0xd555
   100e8:	b535                	.2byte	0xb535
   100ea:	f575                	.2byte	0xf575
   100ec:	8d0d                	.2byte	0x8d0d
   100ee:	cd4d                	.2byte	0xcd4d
   100f0:	ad2d                	.2byte	0xad2d
   100f2:	ed6d                	.2byte	0xed6d
   100f4:	9d1d                	.2byte	0x9d1d
   100f6:	dd5d                	.2byte	0xdd5d
   100f8:	bd3d                	.2byte	0xbd3d
   100fa:	fd7d                	.2byte	0xfd7d
   100fc:	c3438303          	lb	t1,-972(t2)
   10100:	e363a323          	sw	s6,-474(t2)
   10104:	d3539313          	.4byte	0xd3539313
   10108:	f373b333          	.4byte	0xf373b333
   1010c:	cb4b8b0b          	.4byte	0xcb4b8b0b
   10110:	eb6bab2b          	.4byte	0xeb6bab2b
   10114:	db5b9b1b          	.4byte	0xdb5b9b1b
   10118:	fb7bbb3b          	.4byte	0xfb7bbb3b
   1011c:	c7478707          	.4byte	0xc7478707
   10120:	e767a727          	.4byte	0xe767a727
   10124:	d7579717          	auipc	a4,0xd7579
   10128:	f777b737          	lui	a4,0xf777b
   1012c:	cf4f8f0f          	.4byte	0xcf4f8f0f
   10130:	ef6faf2f          	.4byte	0xef6faf2f
   10134:	9f1f df5f bf3f      	.byte	0x1f, 0x9f, 0x5f, 0xdf, 0x3f, 0xbf
   1013a:	ff7f                	.2byte	0xff7f
   1013c:	3130                	.2byte	0x3130
   1013e:	3332                	.2byte	0x3332
   10140:	3534                	.2byte	0x3534
   10142:	3736                	.2byte	0x3736
   10144:	3938                	.2byte	0x3938
   10146:	4241                	.2byte	0x4241
   10148:	46454443          	.4byte	0x46454443
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <reverse_uint32+0x4>
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
