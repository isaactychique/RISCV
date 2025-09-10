
./bin/riscv_logo.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	068000ef          	jal	70 <main>
   c:	00100073          	ebreak

00000010 <fx_rv32i>:
  10:	00b51463          	bne	a0,a1,18 <fx_rv32i+0x8>
  14:	00008067          	ret
  18:	00a5a633          	slt	a2,a1,a0
  1c:	40c006b3          	neg	a3,a2
  20:	fff60613          	add	a2,a2,-1
  24:	00b6f6b3          	and	a3,a3,a1
  28:	00a67733          	and	a4,a2,a0
  2c:	40d50633          	sub	a2,a0,a3
  30:	40e585b3          	sub	a1,a1,a4
  34:	00060513          	mv	a0,a2
  38:	feb610e3          	bne	a2,a1,18 <fx_rv32i+0x8>
  3c:	00060513          	mv	a0,a2
  40:	00008067          	ret

00000044 <fx_zicond>:
  44:	00b51463          	bne	a0,a1,4c <fx_zicond+0x8>
  48:	00008067          	ret
  4c:	00a5a633          	slt	a2,a1,a0
  50:	0ec5d6b3          	.4byte	0xec5d6b3
  54:	0ec57733          	.4byte	0xec57733
  58:	40d50633          	sub	a2,a0,a3
  5c:	40e585b3          	sub	a1,a1,a4
  60:	00060513          	mv	a0,a2
  64:	feb614e3          	bne	a2,a1,4c <fx_zicond+0x8>
  68:	00060513          	mv	a0,a2
  6c:	00008067          	ret

00000070 <main>:
  70:	f9010113          	add	sp,sp,-112 # 1ff90 <__modsi3+0x1f770>
  74:	06112623          	sw	ra,108(sp)
  78:	06812423          	sw	s0,104(sp)
  7c:	06912223          	sw	s1,100(sp)
  80:	07212023          	sw	s2,96(sp)
  84:	05312e23          	sw	s3,92(sp)
  88:	05412c23          	sw	s4,88(sp)
  8c:	05512a23          	sw	s5,84(sp)
  90:	05612823          	sw	s6,80(sp)
  94:	05712623          	sw	s7,76(sp)
  98:	05812423          	sw	s8,72(sp)
  9c:	05912223          	sw	s9,68(sp)
  a0:	05a12023          	sw	s10,64(sp)
  a4:	03b12e23          	sw	s11,60(sp)
  a8:	02012823          	sw	zero,48(sp)
  ac:	02012a23          	sw	zero,52(sp)
  b0:	02012c23          	sw	zero,56(sp)
  b4:	02012023          	sw	zero,32(sp)
  b8:	02012223          	sw	zero,36(sp)
  bc:	02012423          	sw	zero,40(sp)
  c0:	02012623          	sw	zero,44(sp)
  c4:	00012a23          	sw	zero,20(sp)
  c8:	00012c23          	sw	zero,24(sp)
  cc:	00012e23          	sw	zero,28(sp)
  d0:	00012223          	sw	zero,4(sp)
  d4:	00012423          	sw	zero,8(sp)
  d8:	00012623          	sw	zero,12(sp)
  dc:	00012823          	sw	zero,16(sp)
  e0:	00010537          	lui	a0,0x10
  e4:	05450513          	add	a0,a0,84 # 10054 <__modsi3+0xf834>
  e8:	2a4000ef          	jal	38c <print_string>
  ec:	00000413          	li	s0,0
  f0:	00410c93          	add	s9,sp,4
  f4:	00010d37          	lui	s10,0x10
  f8:	038d0d13          	add	s10,s10,56 # 10038 <__modsi3+0xf818>
  fc:	02010d93          	add	s11,sp,32
 100:	000109b7          	lui	s3,0x10
 104:	01c98993          	add	s3,s3,28 # 1001c <__modsi3+0xf7fc>
 108:	00010a37          	lui	s4,0x10
 10c:	000a0a13          	mv	s4,s4
 110:	00010937          	lui	s2,0x10
 114:	08590913          	add	s2,s2,133 # 10085 <__modsi3+0xf865>
 118:	0240006f          	j	13c <main+0xcc>
 11c:	00140413          	add	s0,s0,1
 120:	004c8c93          	add	s9,s9,4
 124:	004d0d13          	add	s10,s10,4
 128:	004d8d93          	add	s11,s11,4
 12c:	00498993          	add	s3,s3,4
 130:	004a0a13          	add	s4,s4,4 # 10004 <__modsi3+0xf7e4>
 134:	00700513          	li	a0,7
 138:	0ea40263          	beq	s0,a0,21c <main+0x1ac>
 13c:	578000ef          	jal	6b4 <time>
 140:	000a2a83          	lw	s5,0(s4)
 144:	0009ab03          	lw	s6,0(s3)
 148:	00050c13          	mv	s8,a0
 14c:	000a8513          	mv	a0,s5
 150:	000b0593          	mv	a1,s6
 154:	ebdff0ef          	jal	10 <fx_rv32i>
 158:	00050b93          	mv	s7,a0
 15c:	558000ef          	jal	6b4 <time>
 160:	000d2483          	lw	s1,0(s10)
 164:	41850533          	sub	a0,a0,s8
 168:	00ada023          	sw	a0,0(s11)
 16c:	049b8263          	beq	s7,s1,1b0 <main+0x140>
 170:	00010537          	lui	a0,0x10
 174:	07450513          	add	a0,a0,116 # 10074 <__modsi3+0xf854>
 178:	214000ef          	jal	38c <print_string>
 17c:	00090513          	mv	a0,s2
 180:	20c000ef          	jal	38c <print_string>
 184:	00040513          	mv	a0,s0
 188:	38c000ef          	jal	514 <print_hex>
 18c:	00a00513          	li	a0,10
 190:	1e8000ef          	jal	378 <putchar>
 194:	00010537          	lui	a0,0x10
 198:	09650513          	add	a0,a0,150 # 10096 <__modsi3+0xf876>
 19c:	1f0000ef          	jal	38c <print_string>
 1a0:	000b8513          	mv	a0,s7
 1a4:	370000ef          	jal	514 <print_hex>
 1a8:	00a00513          	li	a0,10
 1ac:	1cc000ef          	jal	378 <putchar>
 1b0:	504000ef          	jal	6b4 <time>
 1b4:	00050b93          	mv	s7,a0
 1b8:	000a8513          	mv	a0,s5
 1bc:	000b0593          	mv	a1,s6
 1c0:	e85ff0ef          	jal	44 <fx_zicond>
 1c4:	00050a93          	mv	s5,a0
 1c8:	4ec000ef          	jal	6b4 <time>
 1cc:	41750533          	sub	a0,a0,s7
 1d0:	00aca023          	sw	a0,0(s9)
 1d4:	f49a84e3          	beq	s5,s1,11c <main+0xac>
 1d8:	00010537          	lui	a0,0x10
 1dc:	07450513          	add	a0,a0,116 # 10074 <__modsi3+0xf854>
 1e0:	1ac000ef          	jal	38c <print_string>
 1e4:	00090513          	mv	a0,s2
 1e8:	1a4000ef          	jal	38c <print_string>
 1ec:	00040513          	mv	a0,s0
 1f0:	324000ef          	jal	514 <print_hex>
 1f4:	00a00513          	li	a0,10
 1f8:	180000ef          	jal	378 <putchar>
 1fc:	00010537          	lui	a0,0x10
 200:	0a750513          	add	a0,a0,167 # 100a7 <__modsi3+0xf887>
 204:	188000ef          	jal	38c <print_string>
 208:	000a8513          	mv	a0,s5
 20c:	308000ef          	jal	514 <print_hex>
 210:	00a00513          	li	a0,10
 214:	164000ef          	jal	378 <putchar>
 218:	f05ff06f          	j	11c <main+0xac>
 21c:	00010537          	lui	a0,0x10
 220:	0b850513          	add	a0,a0,184 # 100b8 <__modsi3+0xf898>
 224:	168000ef          	jal	38c <print_string>
 228:	00010537          	lui	a0,0x10
 22c:	0cc50513          	add	a0,a0,204 # 100cc <__modsi3+0xf8ac>
 230:	15c000ef          	jal	38c <print_string>
 234:	02012503          	lw	a0,32(sp)
 238:	1bc000ef          	jal	3f4 <print_dec>
 23c:	00010437          	lui	s0,0x10
 240:	0d740413          	add	s0,s0,215 # 100d7 <__modsi3+0xf8b7>
 244:	00040513          	mv	a0,s0
 248:	33c000ef          	jal	584 <printf>
 24c:	02412503          	lw	a0,36(sp)
 250:	1a4000ef          	jal	3f4 <print_dec>
 254:	00040513          	mv	a0,s0
 258:	32c000ef          	jal	584 <printf>
 25c:	02812503          	lw	a0,40(sp)
 260:	194000ef          	jal	3f4 <print_dec>
 264:	00040513          	mv	a0,s0
 268:	31c000ef          	jal	584 <printf>
 26c:	02c12503          	lw	a0,44(sp)
 270:	184000ef          	jal	3f4 <print_dec>
 274:	00040513          	mv	a0,s0
 278:	30c000ef          	jal	584 <printf>
 27c:	03012503          	lw	a0,48(sp)
 280:	174000ef          	jal	3f4 <print_dec>
 284:	00040513          	mv	a0,s0
 288:	2fc000ef          	jal	584 <printf>
 28c:	03412503          	lw	a0,52(sp)
 290:	164000ef          	jal	3f4 <print_dec>
 294:	00040513          	mv	a0,s0
 298:	2ec000ef          	jal	584 <printf>
 29c:	03812503          	lw	a0,56(sp)
 2a0:	154000ef          	jal	3f4 <print_dec>
 2a4:	00040513          	mv	a0,s0
 2a8:	2dc000ef          	jal	584 <printf>
 2ac:	00a00513          	li	a0,10
 2b0:	0c8000ef          	jal	378 <putchar>
 2b4:	00010537          	lui	a0,0x10
 2b8:	0da50513          	add	a0,a0,218 # 100da <__modsi3+0xf8ba>
 2bc:	0d0000ef          	jal	38c <print_string>
 2c0:	00412503          	lw	a0,4(sp)
 2c4:	130000ef          	jal	3f4 <print_dec>
 2c8:	00040513          	mv	a0,s0
 2cc:	2b8000ef          	jal	584 <printf>
 2d0:	00812503          	lw	a0,8(sp)
 2d4:	120000ef          	jal	3f4 <print_dec>
 2d8:	00040513          	mv	a0,s0
 2dc:	2a8000ef          	jal	584 <printf>
 2e0:	00c12503          	lw	a0,12(sp)
 2e4:	110000ef          	jal	3f4 <print_dec>
 2e8:	00040513          	mv	a0,s0
 2ec:	298000ef          	jal	584 <printf>
 2f0:	01012503          	lw	a0,16(sp)
 2f4:	100000ef          	jal	3f4 <print_dec>
 2f8:	00040513          	mv	a0,s0
 2fc:	288000ef          	jal	584 <printf>
 300:	01412503          	lw	a0,20(sp)
 304:	0f0000ef          	jal	3f4 <print_dec>
 308:	00040513          	mv	a0,s0
 30c:	278000ef          	jal	584 <printf>
 310:	01812503          	lw	a0,24(sp)
 314:	0e0000ef          	jal	3f4 <print_dec>
 318:	00040513          	mv	a0,s0
 31c:	268000ef          	jal	584 <printf>
 320:	01c12503          	lw	a0,28(sp)
 324:	0d0000ef          	jal	3f4 <print_dec>
 328:	00040513          	mv	a0,s0
 32c:	258000ef          	jal	584 <printf>
 330:	00a00513          	li	a0,10
 334:	044000ef          	jal	378 <putchar>
 338:	00000513          	li	a0,0
 33c:	06c12083          	lw	ra,108(sp)
 340:	06812403          	lw	s0,104(sp)
 344:	06412483          	lw	s1,100(sp)
 348:	06012903          	lw	s2,96(sp)
 34c:	05c12983          	lw	s3,92(sp)
 350:	05812a03          	lw	s4,88(sp)
 354:	05412a83          	lw	s5,84(sp)
 358:	05012b03          	lw	s6,80(sp)
 35c:	04c12b83          	lw	s7,76(sp)
 360:	04812c03          	lw	s8,72(sp)
 364:	04412c83          	lw	s9,68(sp)
 368:	04012d03          	lw	s10,64(sp)
 36c:	03c12d83          	lw	s11,60(sp)
 370:	07010113          	add	sp,sp,112
 374:	00008067          	ret

00000378 <putchar>:
 378:	06000737          	lui	a4,0x6000
 37c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 380:	fe078ee3          	beqz	a5,37c <putchar+0x4>
 384:	00a72023          	sw	a0,0(a4)
 388:	00008067          	ret

0000038c <print_string>:
 38c:	00054683          	lbu	a3,0(a0)
 390:	02068063          	beqz	a3,3b0 <print_string+0x24>
 394:	06000737          	lui	a4,0x6000
 398:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 39c:	fe078ee3          	beqz	a5,398 <print_string+0xc>
 3a0:	00d72023          	sw	a3,0(a4)
 3a4:	00154683          	lbu	a3,1(a0)
 3a8:	00150513          	add	a0,a0,1
 3ac:	fe0696e3          	bnez	a3,398 <print_string+0xc>
 3b0:	00008067          	ret

000003b4 <puts>:
 3b4:	00054683          	lbu	a3,0(a0)
 3b8:	02068063          	beqz	a3,3d8 <puts+0x24>
 3bc:	06000737          	lui	a4,0x6000
 3c0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 3c4:	fe078ee3          	beqz	a5,3c0 <puts+0xc>
 3c8:	00d72023          	sw	a3,0(a4)
 3cc:	00154683          	lbu	a3,1(a0)
 3d0:	00150513          	add	a0,a0,1
 3d4:	fe0696e3          	bnez	a3,3c0 <puts+0xc>
 3d8:	06000737          	lui	a4,0x6000
 3dc:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 3e0:	fe078ee3          	beqz	a5,3dc <puts+0x28>
 3e4:	00a00793          	li	a5,10
 3e8:	00f72023          	sw	a5,0(a4)
 3ec:	00100513          	li	a0,1
 3f0:	00008067          	ret

000003f4 <print_dec>:
 3f4:	ef010113          	add	sp,sp,-272
 3f8:	10812423          	sw	s0,264(sp)
 3fc:	10112623          	sw	ra,268(sp)
 400:	10912223          	sw	s1,260(sp)
 404:	11212023          	sw	s2,256(sp)
 408:	00050413          	mv	s0,a0
 40c:	06000737          	lui	a4,0x6000
 410:	00055c63          	bgez	a0,428 <print_dec+0x34>
 414:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 418:	fe078ee3          	beqz	a5,414 <print_dec+0x20>
 41c:	02d00793          	li	a5,45
 420:	00f72023          	sw	a5,0(a4)
 424:	40800433          	neg	s0,s0
 428:	00010913          	mv	s2,sp
 42c:	00090493          	mv	s1,s2
 430:	0240006f          	j	454 <print_dec+0x60>
 434:	3ec000ef          	jal	820 <__modsi3>
 438:	00050793          	mv	a5,a0
 43c:	00a00593          	li	a1,10
 440:	00040513          	mv	a0,s0
 444:	00f48023          	sb	a5,0(s1)
 448:	354000ef          	jal	79c <__divsi3>
 44c:	00148493          	add	s1,s1,1
 450:	00050413          	mv	s0,a0
 454:	00a00593          	li	a1,10
 458:	00040513          	mv	a0,s0
 45c:	fc041ce3          	bnez	s0,434 <print_dec+0x40>
 460:	fd248ae3          	beq	s1,s2,434 <print_dec+0x40>
 464:	06000737          	lui	a4,0x6000
 468:	fff4c683          	lbu	a3,-1(s1)
 46c:	fff48493          	add	s1,s1,-1
 470:	03068693          	add	a3,a3,48
 474:	0ff6f693          	zext.b	a3,a3
 478:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 47c:	fe078ee3          	beqz	a5,478 <print_dec+0x84>
 480:	00d72023          	sw	a3,0(a4)
 484:	ff2492e3          	bne	s1,s2,468 <print_dec+0x74>
 488:	10c12083          	lw	ra,268(sp)
 48c:	10812403          	lw	s0,264(sp)
 490:	10412483          	lw	s1,260(sp)
 494:	10012903          	lw	s2,256(sp)
 498:	11010113          	add	sp,sp,272
 49c:	00008067          	ret

000004a0 <print_hex_digits>:
 4a0:	000107b7          	lui	a5,0x10
 4a4:	0e878793          	add	a5,a5,232 # 100e8 <__modsi3+0xf8c8>
 4a8:	0007a883          	lw	a7,0(a5)
 4ac:	0047a803          	lw	a6,4(a5)
 4b0:	0087a603          	lw	a2,8(a5)
 4b4:	00c7a703          	lw	a4,12(a5)
 4b8:	0107c783          	lbu	a5,16(a5)
 4bc:	fe010113          	add	sp,sp,-32
 4c0:	fff58693          	add	a3,a1,-1
 4c4:	01112623          	sw	a7,12(sp)
 4c8:	01012823          	sw	a6,16(sp)
 4cc:	00c12a23          	sw	a2,20(sp)
 4d0:	00e12c23          	sw	a4,24(sp)
 4d4:	00f10e23          	sb	a5,28(sp)
 4d8:	00269693          	sll	a3,a3,0x2
 4dc:	0206c863          	bltz	a3,50c <print_hex_digits+0x6c>
 4e0:	06000737          	lui	a4,0x6000
 4e4:	00d557b3          	srl	a5,a0,a3
 4e8:	00f7f793          	and	a5,a5,15
 4ec:	02078793          	add	a5,a5,32
 4f0:	002787b3          	add	a5,a5,sp
 4f4:	fec7c603          	lbu	a2,-20(a5)
 4f8:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 4fc:	fe078ee3          	beqz	a5,4f8 <print_hex_digits+0x58>
 500:	00c72023          	sw	a2,0(a4)
 504:	ffc68693          	add	a3,a3,-4
 508:	fc06dee3          	bgez	a3,4e4 <print_hex_digits+0x44>
 50c:	02010113          	add	sp,sp,32
 510:	00008067          	ret

00000514 <print_hex>:
 514:	000107b7          	lui	a5,0x10
 518:	0e878793          	add	a5,a5,232 # 100e8 <__modsi3+0xf8c8>
 51c:	0007a583          	lw	a1,0(a5)
 520:	0087a683          	lw	a3,8(a5)
 524:	00c7a703          	lw	a4,12(a5)
 528:	0047a603          	lw	a2,4(a5)
 52c:	0107c783          	lbu	a5,16(a5)
 530:	fe010113          	add	sp,sp,-32
 534:	00b12623          	sw	a1,12(sp)
 538:	00d12a23          	sw	a3,20(sp)
 53c:	00e12c23          	sw	a4,24(sp)
 540:	00c12823          	sw	a2,16(sp)
 544:	00f10e23          	sb	a5,28(sp)
 548:	01c00693          	li	a3,28
 54c:	06000737          	lui	a4,0x6000
 550:	ffc00593          	li	a1,-4
 554:	00d557b3          	srl	a5,a0,a3
 558:	00f7f793          	and	a5,a5,15
 55c:	02078793          	add	a5,a5,32
 560:	002787b3          	add	a5,a5,sp
 564:	fec7c603          	lbu	a2,-20(a5)
 568:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 56c:	fe078ee3          	beqz	a5,568 <print_hex+0x54>
 570:	00c72023          	sw	a2,0(a4)
 574:	ffc68693          	add	a3,a3,-4
 578:	fcb69ee3          	bne	a3,a1,554 <print_hex+0x40>
 57c:	02010113          	add	sp,sp,32
 580:	00008067          	ret

00000584 <printf>:
 584:	fb010113          	add	sp,sp,-80
 588:	02812423          	sw	s0,40(sp)
 58c:	04f12223          	sw	a5,68(sp)
 590:	02112623          	sw	ra,44(sp)
 594:	02b12a23          	sw	a1,52(sp)
 598:	02c12c23          	sw	a2,56(sp)
 59c:	02d12e23          	sw	a3,60(sp)
 5a0:	04e12023          	sw	a4,64(sp)
 5a4:	05012423          	sw	a6,72(sp)
 5a8:	05112623          	sw	a7,76(sp)
 5ac:	00050413          	mv	s0,a0
 5b0:	00054503          	lbu	a0,0(a0)
 5b4:	03410793          	add	a5,sp,52
 5b8:	00f12623          	sw	a5,12(sp)
 5bc:	06050663          	beqz	a0,628 <printf+0xa4>
 5c0:	02912223          	sw	s1,36(sp)
 5c4:	03212023          	sw	s2,32(sp)
 5c8:	01312e23          	sw	s3,28(sp)
 5cc:	01412c23          	sw	s4,24(sp)
 5d0:	01512a23          	sw	s5,20(sp)
 5d4:	02500493          	li	s1,37
 5d8:	07300913          	li	s2,115
 5dc:	07800993          	li	s3,120
 5e0:	06400a13          	li	s4,100
 5e4:	06300a93          	li	s5,99
 5e8:	04951a63          	bne	a0,s1,63c <printf+0xb8>
 5ec:	00144503          	lbu	a0,1(s0)
 5f0:	05250c63          	beq	a0,s2,648 <printf+0xc4>
 5f4:	09350263          	beq	a0,s3,678 <printf+0xf4>
 5f8:	09450c63          	beq	a0,s4,690 <printf+0x10c>
 5fc:	07550263          	beq	a0,s5,660 <printf+0xdc>
 600:	d79ff0ef          	jal	378 <putchar>
 604:	00140793          	add	a5,s0,1
 608:	0017c503          	lbu	a0,1(a5)
 60c:	00178413          	add	s0,a5,1
 610:	fc051ce3          	bnez	a0,5e8 <printf+0x64>
 614:	02412483          	lw	s1,36(sp)
 618:	02012903          	lw	s2,32(sp)
 61c:	01c12983          	lw	s3,28(sp)
 620:	01812a03          	lw	s4,24(sp)
 624:	01412a83          	lw	s5,20(sp)
 628:	02c12083          	lw	ra,44(sp)
 62c:	02812403          	lw	s0,40(sp)
 630:	00000513          	li	a0,0
 634:	05010113          	add	sp,sp,80
 638:	00008067          	ret
 63c:	d3dff0ef          	jal	378 <putchar>
 640:	00040793          	mv	a5,s0
 644:	fc5ff06f          	j	608 <printf+0x84>
 648:	00c12783          	lw	a5,12(sp)
 64c:	0007a503          	lw	a0,0(a5)
 650:	00478793          	add	a5,a5,4
 654:	00f12623          	sw	a5,12(sp)
 658:	d35ff0ef          	jal	38c <print_string>
 65c:	fa9ff06f          	j	604 <printf+0x80>
 660:	00c12783          	lw	a5,12(sp)
 664:	0007c503          	lbu	a0,0(a5)
 668:	00478793          	add	a5,a5,4
 66c:	00f12623          	sw	a5,12(sp)
 670:	d09ff0ef          	jal	378 <putchar>
 674:	f91ff06f          	j	604 <printf+0x80>
 678:	00c12783          	lw	a5,12(sp)
 67c:	0007a503          	lw	a0,0(a5)
 680:	00478793          	add	a5,a5,4
 684:	00f12623          	sw	a5,12(sp)
 688:	e8dff0ef          	jal	514 <print_hex>
 68c:	f79ff06f          	j	604 <printf+0x80>
 690:	00c12783          	lw	a5,12(sp)
 694:	0007a503          	lw	a0,0(a5)
 698:	00478793          	add	a5,a5,4
 69c:	00f12623          	sw	a5,12(sp)
 6a0:	d55ff0ef          	jal	3f4 <print_dec>
 6a4:	f61ff06f          	j	604 <printf+0x80>

000006a8 <get_cycles>:
 6a8:	0c0007b7          	lui	a5,0xc000
 6ac:	0007a503          	lw	a0,0(a5) # c000000 <IO_BASE+0xbc00000>
 6b0:	00008067          	ret

000006b4 <time>:
 6b4:	0c0007b7          	lui	a5,0xc000
 6b8:	0007a503          	lw	a0,0(a5) # c000000 <IO_BASE+0xbc00000>
 6bc:	00008067          	ret

000006c0 <sleep_cycles>:
 6c0:	0c000737          	lui	a4,0xc000
 6c4:	00470713          	add	a4,a4,4 # c000004 <IO_BASE+0xbc00004>
 6c8:	00a72023          	sw	a0,0(a4)
 6cc:	00072783          	lw	a5,0(a4)
 6d0:	fe079ee3          	bnez	a5,6cc <sleep_cycles+0xc>
 6d4:	00008067          	ret

000006d8 <sleep_us>:
 6d8:	00151793          	sll	a5,a0,0x1
 6dc:	00a787b3          	add	a5,a5,a0
 6e0:	00379793          	sll	a5,a5,0x3
 6e4:	0c000737          	lui	a4,0xc000
 6e8:	00a787b3          	add	a5,a5,a0
 6ec:	00279793          	sll	a5,a5,0x2
 6f0:	00470713          	add	a4,a4,4 # c000004 <IO_BASE+0xbc00004>
 6f4:	00f72023          	sw	a5,0(a4)
 6f8:	00072783          	lw	a5,0(a4)
 6fc:	fe079ee3          	bnez	a5,6f8 <sleep_us+0x20>
 700:	00008067          	ret

00000704 <sleep_ms>:
 704:	00151793          	sll	a5,a0,0x1
 708:	00a787b3          	add	a5,a5,a0
 70c:	00679713          	sll	a4,a5,0x6
 710:	00e787b3          	add	a5,a5,a4
 714:	00279793          	sll	a5,a5,0x2
 718:	00a787b3          	add	a5,a5,a0
 71c:	00279793          	sll	a5,a5,0x2
 720:	0c000737          	lui	a4,0xc000
 724:	00a787b3          	add	a5,a5,a0
 728:	00579793          	sll	a5,a5,0x5
 72c:	00470713          	add	a4,a4,4 # c000004 <IO_BASE+0xbc00004>
 730:	00f72023          	sw	a5,0(a4)
 734:	00072783          	lw	a5,0(a4)
 738:	fe079ee3          	bnez	a5,734 <sleep_ms+0x30>
 73c:	00008067          	ret

00000740 <sleep>:
 740:	00151793          	sll	a5,a0,0x1
 744:	00a787b3          	add	a5,a5,a0
 748:	00679793          	sll	a5,a5,0x6
 74c:	40a787b3          	sub	a5,a5,a0
 750:	00279793          	sll	a5,a5,0x2
 754:	40a787b3          	sub	a5,a5,a0
 758:	00479793          	sll	a5,a5,0x4
 75c:	40a787b3          	sub	a5,a5,a0
 760:	00579793          	sll	a5,a5,0x5
 764:	0c000737          	lui	a4,0xc000
 768:	00a787b3          	add	a5,a5,a0
 76c:	00879793          	sll	a5,a5,0x8
 770:	00470713          	add	a4,a4,4 # c000004 <IO_BASE+0xbc00004>
 774:	00f72023          	sw	a5,0(a4)
 778:	00072783          	lw	a5,0(a4)
 77c:	fe079ee3          	bnez	a5,778 <sleep+0x38>
 780:	00008067          	ret

00000784 <start_timer>:
 784:	0c0007b7          	lui	a5,0xc000
 788:	00a7a223          	sw	a0,4(a5) # c000004 <IO_BASE+0xbc00004>
 78c:	00008067          	ret

00000790 <is_timer_finished>:
 790:	0c0007b7          	lui	a5,0xc000
 794:	0047a703          	lw	a4,4(a5) # c000004 <IO_BASE+0xbc00004>
 798:	00008067          	ret

0000079c <__divsi3>:
 79c:	06054063          	bltz	a0,7fc <__umodsi3+0x10>
 7a0:	0605c663          	bltz	a1,80c <__umodsi3+0x20>

000007a4 <__udivsi3>:
 7a4:	00058613          	mv	a2,a1
 7a8:	00050593          	mv	a1,a0
 7ac:	fff00513          	li	a0,-1
 7b0:	02060c63          	beqz	a2,7e8 <__udivsi3+0x44>
 7b4:	00100693          	li	a3,1
 7b8:	00b67a63          	bgeu	a2,a1,7cc <__udivsi3+0x28>
 7bc:	00c05863          	blez	a2,7cc <__udivsi3+0x28>
 7c0:	00161613          	sll	a2,a2,0x1
 7c4:	00169693          	sll	a3,a3,0x1
 7c8:	feb66ae3          	bltu	a2,a1,7bc <__udivsi3+0x18>
 7cc:	00000513          	li	a0,0
 7d0:	00c5e663          	bltu	a1,a2,7dc <__udivsi3+0x38>
 7d4:	40c585b3          	sub	a1,a1,a2
 7d8:	00d56533          	or	a0,a0,a3
 7dc:	0016d693          	srl	a3,a3,0x1
 7e0:	00165613          	srl	a2,a2,0x1
 7e4:	fe0696e3          	bnez	a3,7d0 <__udivsi3+0x2c>
 7e8:	00008067          	ret

000007ec <__umodsi3>:
 7ec:	00008293          	mv	t0,ra
 7f0:	fb5ff0ef          	jal	7a4 <__udivsi3>
 7f4:	00058513          	mv	a0,a1
 7f8:	00028067          	jr	t0
 7fc:	40a00533          	neg	a0,a0
 800:	0005d863          	bgez	a1,810 <__umodsi3+0x24>
 804:	40b005b3          	neg	a1,a1
 808:	f95ff06f          	j	79c <__divsi3>
 80c:	40b005b3          	neg	a1,a1
 810:	00008293          	mv	t0,ra
 814:	f89ff0ef          	jal	79c <__divsi3>
 818:	40a00533          	neg	a0,a0
 81c:	00028067          	jr	t0

00000820 <__modsi3>:
 820:	00008293          	mv	t0,ra
 824:	0005ca63          	bltz	a1,838 <__modsi3+0x18>
 828:	00054c63          	bltz	a0,840 <__modsi3+0x20>
 82c:	f79ff0ef          	jal	7a4 <__udivsi3>
 830:	00058513          	mv	a0,a1
 834:	00028067          	jr	t0
 838:	40b005b3          	neg	a1,a1
 83c:	fe0558e3          	bgez	a0,82c <__modsi3+0xc>
 840:	40a00533          	neg	a0,a0
 844:	f61ff0ef          	jal	7a4 <__udivsi3>
 848:	40b00533          	neg	a0,a1
 84c:	00028067          	jr	t0

Disassembly of section .data:

00010000 <.data>:
   10000:	0001                	.2byte	0x1
   10002:	0000                	.2byte	0x0
   10004:	000d                	.2byte	0xd
   10006:	0000                	.2byte	0x0
   10008:	000c                	.2byte	0xc
   1000a:	0000                	.2byte	0x0
   1000c:	0000003f 00000001 	.8byte	0x10000003f
   10014:	00dd                	.2byte	0xdd
   10016:	0000                	.2byte	0x0
   10018:	f466                	.2byte	0xf466
   1001a:	000d000b          	.4byte	0xd000b
   1001e:	0000                	.2byte	0x0
   10020:	0001                	.2byte	0x1
   10022:	0000                	.2byte	0x0
   10024:	0009                	.2byte	0x9
   10026:	0000                	.2byte	0x0
   10028:	0001                	.2byte	0x1
   1002a:	0000                	.2byte	0x0
   1002c:	0049                	.2byte	0x49
   1002e:	0000                	.2byte	0x0
   10030:	030e                	.2byte	0x30e
   10032:	0000                	.2byte	0x0
   10034:	0534                	.2byte	0x534
   10036:	0001000f          	.4byte	0x1000f
   1003a:	0000                	.2byte	0x0
   1003c:	0001                	.2byte	0x1
   1003e:	0000                	.2byte	0x0
   10040:	00000003          	lb	zero,0(zero) # 0 <start>
   10044:	0001                	.2byte	0x1
   10046:	0000                	.2byte	0x0
   10048:	0001                	.2byte	0x1
   1004a:	0000                	.2byte	0x0
   1004c:	0011                	.2byte	0x11
   1004e:	0000                	.2byte	0x0
   10050:	0006                	.2byte	0x6
   10052:	0000                	.2byte	0x0
   10054:	695a                	.2byte	0x695a
   10056:	646e6f63          	bltu	t3,t1,106b4 <__modsi3+0xfe94>
   1005a:	4920                	.2byte	0x4920
   1005c:	74204153          	.4byte	0x74204153
   10060:	7365                	.2byte	0x7365
   10062:	2074                	.2byte	0x2074
   10064:	7061                	.2byte	0x7061
   10066:	6c70                	.2byte	0x6c70
   10068:	6369                	.2byte	0x6369
   1006a:	7461                	.2byte	0x7461
   1006c:	6f69                	.2byte	0x6f69
   1006e:	2e6e                	.2byte	0x2e6e
   10070:	2e2e                	.2byte	0x2e2e
   10072:	000a                	.2byte	0xa
   10074:	203e                	.2byte	0x203e
   10076:	6e6f7277          	.4byte	0x6e6f7277
   1007a:	65722067          	.4byte	0x65722067
   1007e:	746c7573          	.4byte	0x746c7573
   10082:	0a3a                	.2byte	0xa3a
   10084:	2000                	.2byte	0x2000
   10086:	6920                	.2byte	0x6920
   10088:	6574                	.2byte	0x6574
   1008a:	6172                	.2byte	0x6172
   1008c:	6974                	.2byte	0x6974
   1008e:	20206e6f          	jal	t3,16290 <__modsi3+0x15a70>
   10092:	3a20                	.2byte	0x3a20
   10094:	0020                	.2byte	0x20
   10096:	2020                	.2byte	0x2020
   10098:	6572                	.2byte	0x6572
   1009a:	746c7573          	.4byte	0x746c7573
   1009e:	2820                	.2byte	0x2820
   100a0:	2931                	.2byte	0x2931
   100a2:	2020                	.2byte	0x2020
   100a4:	203a                	.2byte	0x203a
   100a6:	2000                	.2byte	0x2000
   100a8:	7220                	.2byte	0x7220
   100aa:	7365                	.2byte	0x7365
   100ac:	6c75                	.2byte	0x6c75
   100ae:	2074                	.2byte	0x2074
   100b0:	3228                	.2byte	0x3228
   100b2:	2029                	.2byte	0x2029
   100b4:	3a20                	.2byte	0x3a20
   100b6:	0020                	.2byte	0x20
   100b8:	7845                	.2byte	0x7845
   100ba:	6365                	.2byte	0x6365
   100bc:	202e                	.2byte	0x202e
   100be:	6974                	.2byte	0x6974
   100c0:	656d                	.2byte	0x656d
   100c2:	7220                	.2byte	0x7220
   100c4:	7065                	.2byte	0x7065
   100c6:	3a74726f          	jal	tp,57c6c <__modsi3+0x5744c>
   100ca:	000a                	.2byte	0xa
   100cc:	7220                	.2byte	0x7220
   100ce:	6665                	.2byte	0x6665
   100d0:	202e                	.2byte	0x202e
   100d2:	2020                	.2byte	0x2020
   100d4:	203a                	.2byte	0x203a
   100d6:	2000                	.2byte	0x2000
   100d8:	0020                	.2byte	0x20
   100da:	7a20                	.2byte	0x7a20
   100dc:	6369                	.2byte	0x6369
   100de:	20646e6f          	jal	t3,562e4 <__modsi3+0x55ac4>
   100e2:	203a                	.2byte	0x203a
   100e4:	0000                	.2byte	0x0
   100e6:	0000                	.2byte	0x0
   100e8:	3130                	.2byte	0x3130
   100ea:	3332                	.2byte	0x3332
   100ec:	3534                	.2byte	0x3534
   100ee:	3736                	.2byte	0x3736
   100f0:	3938                	.2byte	0x3938
   100f2:	4241                	.2byte	0x4241
   100f4:	46454443          	.4byte	0x46454443
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	6f48                	.2byte	0x6f48
   2:	656d                	.2byte	0x656d
   4:	7262                	.2byte	0x7262
   6:	7765                	.2byte	0x7765
   8:	6320                	.2byte	0x6320
   a:	616c                	.2byte	0x616c
   c:	676e                	.2byte	0x676e
   e:	7620                	.2byte	0x7620
  10:	7265                	.2byte	0x7265
  12:	6e6f6973          	.4byte	0x6e6f6973
  16:	3220                	.2byte	0x3220
  18:	2e30                	.2byte	0x2e30
  1a:	2e31                	.2byte	0x2e31
  1c:	0034                	.2byte	0x34
  1e:	3a434347          	.4byte	0x3a434347
  22:	2820                	.2byte	0x2820
  24:	29554e47          	.4byte	0x29554e47
  28:	3120                	.2byte	0x3120
  2a:	2e312e33          	.4byte	0x2e312e33
  2e:	0030                	.2byte	0x30

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	2541                	.2byte	0x2541
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <fx_rv32i+0x4>
   c:	0000001b          	.4byte	0x1b
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	5f31                	.2byte	0x5f31
  1c:	697a                	.2byte	0x697a
  1e:	646e6f63          	bltu	t3,t1,67c <printf+0xf8>
  22:	7031                	.2byte	0x7031
  24:	0030                	.2byte	0x30
