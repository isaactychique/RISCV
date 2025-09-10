
./bin/main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	000047b7          	lui	a5,0x4
   c:	0d000737          	lui	a4,0xd000
  10:	40078793          	add	a5,a5,1024 # 4400 <__modsi3+0x394c>
  14:	00f72023          	sw	a5,0(a4) # d000000 <IO_BASE+0xcc00000>
  18:	464000ef          	jal	47c <main>
  1c:	0d000737          	lui	a4,0xd000
  20:	04400793          	li	a5,68
  24:	00f72023          	sw	a5,0(a4) # d000000 <IO_BASE+0xcc00000>
  28:	00100073          	ebreak

0000002c <loop>:
  2c:	000000ef          	jal	2c <loop>

00000030 <multiply_array>:
  30:	fe010113          	add	sp,sp,-32 # 1ffe0 <__modsi3+0x1f52c>
  34:	01312623          	sw	s3,12(sp)
  38:	00112e23          	sw	ra,28(sp)
  3c:	00050993          	mv	s3,a0
  40:	04058263          	beqz	a1,84 <multiply_array+0x54>
  44:	00912a23          	sw	s1,20(sp)
  48:	00259493          	sll	s1,a1,0x2
  4c:	00812c23          	sw	s0,24(sp)
  50:	01212823          	sw	s2,16(sp)
  54:	00050413          	mv	s0,a0
  58:	00060913          	mv	s2,a2
  5c:	00a484b3          	add	s1,s1,a0
  60:	00042503          	lw	a0,0(s0)
  64:	00090593          	mv	a1,s2
  68:	00440413          	add	s0,s0,4
  6c:	1a1000ef          	jal	a0c <__mulsi3>
  70:	fea42e23          	sw	a0,-4(s0)
  74:	fe9416e3          	bne	s0,s1,60 <multiply_array+0x30>
  78:	01812403          	lw	s0,24(sp)
  7c:	01412483          	lw	s1,20(sp)
  80:	01012903          	lw	s2,16(sp)
  84:	01c12083          	lw	ra,28(sp)
  88:	00098513          	mv	a0,s3
  8c:	00c12983          	lw	s3,12(sp)
  90:	02010113          	add	sp,sp,32
  94:	00008067          	ret

00000098 <propagate>:
  98:	06058663          	beqz	a1,104 <propagate+0x6c>
  9c:	ffc50513          	add	a0,a0,-4
  a0:	fff58593          	add	a1,a1,-1
  a4:	fff00613          	li	a2,-1
  a8:	00a00893          	li	a7,10
  ac:	00900813          	li	a6,9
  b0:	0100006f          	j	c0 <propagate+0x28>
  b4:	00160613          	add	a2,a2,1
  b8:	00450513          	add	a0,a0,4
  bc:	04b60463          	beq	a2,a1,104 <propagate+0x6c>
  c0:	00452703          	lw	a4,4(a0)
  c4:	00050793          	mv	a5,a0
  c8:	ff1716e3          	bne	a4,a7,b4 <propagate+0x1c>
  cc:	00052683          	lw	a3,0(a0)
  d0:	00052223          	sw	zero,4(a0)
  d4:	ffc50713          	add	a4,a0,-4
  d8:	01069c63          	bne	a3,a6,f0 <propagate+0x58>
  dc:	0007a023          	sw	zero,0(a5)
  e0:	00072683          	lw	a3,0(a4)
  e4:	ffc78793          	add	a5,a5,-4
  e8:	ffc70713          	add	a4,a4,-4
  ec:	ff0688e3          	beq	a3,a6,dc <propagate+0x44>
  f0:	00168693          	add	a3,a3,1
  f4:	00d7a023          	sw	a3,0(a5)
  f8:	00160613          	add	a2,a2,1
  fc:	00450513          	add	a0,a0,4
 100:	fcb610e3          	bne	a2,a1,c0 <propagate+0x28>
 104:	00008067          	ret

00000108 <kernel_interne>:
 108:	fe010113          	add	sp,sp,-32
 10c:	01212823          	sw	s2,16(sp)
 110:	01412423          	sw	s4,8(sp)
 114:	01512223          	sw	s5,4(sp)
 118:	00112e23          	sw	ra,28(sp)
 11c:	00812c23          	sw	s0,24(sp)
 120:	fff60913          	add	s2,a2,-1
 124:	00050a93          	mv	s5,a0
 128:	00060a13          	mv	s4,a2
 12c:	00058513          	mv	a0,a1
 130:	07205463          	blez	s2,198 <kernel_interne+0x90>
 134:	00912a23          	sw	s1,20(sp)
 138:	00161493          	sll	s1,a2,0x1
 13c:	01312623          	sw	s3,12(sp)
 140:	fff48493          	add	s1,s1,-1
 144:	000a8993          	mv	s3,s5
 148:	0009a783          	lw	a5,0(s3)
 14c:	00048593          	mv	a1,s1
 150:	00498993          	add	s3,s3,4
 154:	00279413          	sll	s0,a5,0x2
 158:	00f40433          	add	s0,s0,a5
 15c:	00141413          	sll	s0,s0,0x1
 160:	00a40433          	add	s0,s0,a0
 164:	00040513          	mv	a0,s0
 168:	119000ef          	jal	a80 <__umodsi3>
 16c:	00048593          	mv	a1,s1
 170:	fea9ae23          	sw	a0,-4(s3)
 174:	00040513          	mv	a0,s0
 178:	0c1000ef          	jal	a38 <__udivsi3>
 17c:	00090593          	mv	a1,s2
 180:	fff90913          	add	s2,s2,-1
 184:	089000ef          	jal	a0c <__mulsi3>
 188:	ffe48493          	add	s1,s1,-2
 18c:	fa091ee3          	bnez	s2,148 <kernel_interne+0x40>
 190:	01412483          	lw	s1,20(sp)
 194:	00c12983          	lw	s3,12(sp)
 198:	002a1a13          	sll	s4,s4,0x2
 19c:	ffca0a13          	add	s4,s4,-4
 1a0:	014a8ab3          	add	s5,s5,s4
 1a4:	000aa783          	lw	a5,0(s5)
 1a8:	00a00593          	li	a1,10
 1ac:	00279413          	sll	s0,a5,0x2
 1b0:	00f40433          	add	s0,s0,a5
 1b4:	00141413          	sll	s0,s0,0x1
 1b8:	00a40433          	add	s0,s0,a0
 1bc:	00040513          	mv	a0,s0
 1c0:	0c1000ef          	jal	a80 <__umodsi3>
 1c4:	00aaa023          	sw	a0,0(s5)
 1c8:	00a00593          	li	a1,10
 1cc:	00040513          	mv	a0,s0
 1d0:	069000ef          	jal	a38 <__udivsi3>
 1d4:	01c12083          	lw	ra,28(sp)
 1d8:	01812403          	lw	s0,24(sp)
 1dc:	01012903          	lw	s2,16(sp)
 1e0:	00812a03          	lw	s4,8(sp)
 1e4:	00412a83          	lw	s5,4(sp)
 1e8:	02010113          	add	sp,sp,32
 1ec:	00008067          	ret

000001f0 <kernel>:
 1f0:	fd010113          	add	sp,sp,-48
 1f4:	ffffd7b7          	lui	a5,0xffffd
 1f8:	02812423          	sw	s0,40(sp)
 1fc:	01712623          	sw	s7,12(sp)
 200:	01812423          	sw	s8,8(sp)
 204:	02112623          	sw	ra,44(sp)
 208:	02912223          	sw	s1,36(sp)
 20c:	03212023          	sw	s2,32(sp)
 210:	01312e23          	sw	s3,28(sp)
 214:	01412c23          	sw	s4,24(sp)
 218:	01512a23          	sw	s5,20(sp)
 21c:	01612823          	sw	s6,16(sp)
 220:	01912223          	sw	s9,4(sp)
 224:	03010413          	add	s0,sp,48
 228:	a9078793          	add	a5,a5,-1392 # ffffca90 <IO_BASE+0xffbfca90>
 22c:	00003737          	lui	a4,0x3
 230:	00f10133          	add	sp,sp,a5
 234:	00010b93          	mv	s7,sp
 238:	57070713          	add	a4,a4,1392 # 3570 <__modsi3+0x2abc>
 23c:	00050c13          	mv	s8,a0
 240:	00eb8733          	add	a4,s7,a4
 244:	000b8793          	mv	a5,s7
 248:	00200693          	li	a3,2
 24c:	00d7a023          	sw	a3,0(a5)
 250:	00478793          	add	a5,a5,4
 254:	fee79ce3          	bne	a5,a4,24c <kernel+0x5c>
 258:	00001b37          	lui	s6,0x1
 25c:	008b0b13          	add	s6,s6,8 # 1008 <__modsi3+0x554>
 260:	00003ab7          	lui	s5,0x3
 264:	016c0b33          	add	s6,s8,s6
 268:	000c0a13          	mv	s4,s8
 26c:	015b8ab3          	add	s5,s7,s5
 270:	000019b7          	lui	s3,0x1
 274:	00002937          	lui	s2,0x2
 278:	000b8c93          	mv	s9,s7
 27c:	d5b98993          	add	s3,s3,-677 # d5b <__modsi3+0x2a7>
 280:	ab790913          	add	s2,s2,-1353 # 1ab7 <__modsi3+0x1003>
 284:	00000513          	li	a0,0
 288:	000ca783          	lw	a5,0(s9)
 28c:	00090593          	mv	a1,s2
 290:	004c8c93          	add	s9,s9,4
 294:	00279493          	sll	s1,a5,0x2
 298:	00f484b3          	add	s1,s1,a5
 29c:	00149493          	sll	s1,s1,0x1
 2a0:	00a484b3          	add	s1,s1,a0
 2a4:	00048513          	mv	a0,s1
 2a8:	7d8000ef          	jal	a80 <__umodsi3>
 2ac:	00050793          	mv	a5,a0
 2b0:	00090593          	mv	a1,s2
 2b4:	fefcae23          	sw	a5,-4(s9)
 2b8:	00048513          	mv	a0,s1
 2bc:	77c000ef          	jal	a38 <__udivsi3>
 2c0:	00098593          	mv	a1,s3
 2c4:	fff98993          	add	s3,s3,-1
 2c8:	744000ef          	jal	a0c <__mulsi3>
 2cc:	ffe90913          	add	s2,s2,-2
 2d0:	fa099ce3          	bnez	s3,288 <kernel+0x98>
 2d4:	56caa783          	lw	a5,1388(s5) # 356c <__modsi3+0x2ab8>
 2d8:	00a00593          	li	a1,10
 2dc:	004a0a13          	add	s4,s4,4
 2e0:	00279493          	sll	s1,a5,0x2
 2e4:	00f484b3          	add	s1,s1,a5
 2e8:	00149493          	sll	s1,s1,0x1
 2ec:	00a484b3          	add	s1,s1,a0
 2f0:	00048513          	mv	a0,s1
 2f4:	78c000ef          	jal	a80 <__umodsi3>
 2f8:	00050793          	mv	a5,a0
 2fc:	00a00593          	li	a1,10
 300:	00048513          	mv	a0,s1
 304:	56faa623          	sw	a5,1388(s5)
 308:	730000ef          	jal	a38 <__udivsi3>
 30c:	feaa2e23          	sw	a0,-4(s4)
 310:	f76a10e3          	bne	s4,s6,270 <kernel+0x80>
 314:	00001737          	lui	a4,0x1
 318:	00470713          	add	a4,a4,4 # 1004 <__modsi3+0x550>
 31c:	ffcc0793          	add	a5,s8,-4
 320:	00a00513          	li	a0,10
 324:	00ec0c33          	add	s8,s8,a4
 328:	00900593          	li	a1,9
 32c:	00c0006f          	j	338 <kernel+0x148>
 330:	00478793          	add	a5,a5,4
 334:	05878263          	beq	a5,s8,378 <kernel+0x188>
 338:	0047a683          	lw	a3,4(a5)
 33c:	00078713          	mv	a4,a5
 340:	fea698e3          	bne	a3,a0,330 <kernel+0x140>
 344:	0007a603          	lw	a2,0(a5)
 348:	0007a223          	sw	zero,4(a5)
 34c:	ffc78693          	add	a3,a5,-4
 350:	00b61c63          	bne	a2,a1,368 <kernel+0x178>
 354:	00072023          	sw	zero,0(a4)
 358:	0006a603          	lw	a2,0(a3)
 35c:	ffc70713          	add	a4,a4,-4
 360:	ffc68693          	add	a3,a3,-4
 364:	feb608e3          	beq	a2,a1,354 <kernel+0x164>
 368:	00160613          	add	a2,a2,1
 36c:	00c72023          	sw	a2,0(a4)
 370:	00478793          	add	a5,a5,4
 374:	fd8792e3          	bne	a5,s8,338 <kernel+0x148>
 378:	fd040113          	add	sp,s0,-48
 37c:	02c12083          	lw	ra,44(sp)
 380:	02812403          	lw	s0,40(sp)
 384:	02412483          	lw	s1,36(sp)
 388:	02012903          	lw	s2,32(sp)
 38c:	01c12983          	lw	s3,28(sp)
 390:	01812a03          	lw	s4,24(sp)
 394:	01412a83          	lw	s5,20(sp)
 398:	01012b03          	lw	s6,16(sp)
 39c:	00c12b83          	lw	s7,12(sp)
 3a0:	00812c03          	lw	s8,8(sp)
 3a4:	00412c83          	lw	s9,4(sp)
 3a8:	03010113          	add	sp,sp,48
 3ac:	00008067          	ret

000003b0 <to_ascii>:
 3b0:	fd010113          	add	sp,sp,-48
 3b4:	fffff2b7          	lui	t0,0xfffff
 3b8:	fffff7b7          	lui	a5,0xfffff
 3bc:	00001737          	lui	a4,0x1
 3c0:	02812423          	sw	s0,40(sp)
 3c4:	02112623          	sw	ra,44(sp)
 3c8:	ff878793          	add	a5,a5,-8 # ffffeff8 <IO_BASE+0xffbfeff8>
 3cc:	00510133          	add	sp,sp,t0
 3d0:	01070713          	add	a4,a4,16 # 1010 <__modsi3+0x55c>
 3d4:	00f70733          	add	a4,a4,a5
 3d8:	01010793          	add	a5,sp,16
 3dc:	00f707b3          	add	a5,a4,a5
 3e0:	00001637          	lui	a2,0x1
 3e4:	00050413          	mv	s0,a0
 3e8:	00050593          	mv	a1,a0
 3ec:	00460613          	add	a2,a2,4 # 1004 <__modsi3+0x550>
 3f0:	00078513          	mv	a0,a5
 3f4:	00f12623          	sw	a5,12(sp)
 3f8:	57c000ef          	jal	974 <memcpy>
 3fc:	00042783          	lw	a5,0(s0)
 400:	02e00713          	li	a4,46
 404:	00e42223          	sw	a4,4(s0)
 408:	03078793          	add	a5,a5,48
 40c:	00f42023          	sw	a5,0(s0)
 410:	00c12783          	lw	a5,12(sp)
 414:	00840713          	add	a4,s0,8
 418:	00200613          	li	a2,2
 41c:	00478693          	add	a3,a5,4
 420:	40200593          	li	a1,1026
 424:	0006a783          	lw	a5,0(a3)
 428:	00160613          	add	a2,a2,1
 42c:	00468693          	add	a3,a3,4
 430:	03078793          	add	a5,a5,48
 434:	00f72023          	sw	a5,0(a4)
 438:	00470713          	add	a4,a4,4
 43c:	feb614e3          	bne	a2,a1,424 <to_ascii+0x74>
 440:	000012b7          	lui	t0,0x1
 444:	00510133          	add	sp,sp,t0
 448:	02c12083          	lw	ra,44(sp)
 44c:	02812403          	lw	s0,40(sp)
 450:	03010113          	add	sp,sp,48
 454:	00008067          	ret

00000458 <green>:
 458:	00010537          	lui	a0,0x10
 45c:	00050513          	mv	a0,a0
 460:	3f00006f          	j	850 <printf>

00000464 <red>:
 464:	00010537          	lui	a0,0x10
 468:	00850513          	add	a0,a0,8 # 10008 <__modsi3+0xf554>
 46c:	3e40006f          	j	850 <printf>

00000470 <white>:
 470:	00010537          	lui	a0,0x10
 474:	01050513          	add	a0,a0,16 # 10010 <__modsi3+0xf55c>
 478:	3d80006f          	j	850 <printf>

0000047c <main>:
 47c:	fffff2b7          	lui	t0,0xfffff
 480:	fc010113          	add	sp,sp,-64
 484:	00010537          	lui	a0,0x10
 488:	02112e23          	sw	ra,60(sp)
 48c:	02912a23          	sw	s1,52(sp)
 490:	02812c23          	sw	s0,56(sp)
 494:	03212823          	sw	s2,48(sp)
 498:	03312623          	sw	s3,44(sp)
 49c:	03412423          	sw	s4,40(sp)
 4a0:	03512223          	sw	s5,36(sp)
 4a4:	01850513          	add	a0,a0,24 # 10018 <__modsi3+0xf564>
 4a8:	00510133          	add	sp,sp,t0
 4ac:	1d4000ef          	jal	680 <puts>
 4b0:	000105b7          	lui	a1,0x10
 4b4:	00010537          	lui	a0,0x10
 4b8:	03c58593          	add	a1,a1,60 # 1003c <__modsi3+0xf588>
 4bc:	04850513          	add	a0,a0,72 # 10048 <__modsi3+0xf594>
 4c0:	390000ef          	jal	850 <printf>
 4c4:	000105b7          	lui	a1,0x10
 4c8:	00010537          	lui	a0,0x10
 4cc:	06458593          	add	a1,a1,100 # 10064 <__modsi3+0xf5b0>
 4d0:	07050513          	add	a0,a0,112 # 10070 <__modsi3+0xf5bc>
 4d4:	37c000ef          	jal	850 <printf>
 4d8:	00010437          	lui	s0,0x10
 4dc:	08c40513          	add	a0,s0,140 # 1008c <__modsi3+0xf5d8>
 4e0:	1a0000ef          	jal	680 <puts>
 4e4:	00010537          	lui	a0,0x10
 4e8:	40000593          	li	a1,1024
 4ec:	09450513          	add	a0,a0,148 # 10094 <__modsi3+0xf5e0>
 4f0:	360000ef          	jal	850 <printf>
 4f4:	08c40513          	add	a0,s0,140
 4f8:	188000ef          	jal	680 <puts>
 4fc:	00010537          	lui	a0,0x10
 500:	0b050513          	add	a0,a0,176 # 100b0 <__modsi3+0xf5fc>
 504:	17c000ef          	jal	680 <puts>
 508:	00010537          	lui	a0,0x10
 50c:	00400593          	li	a1,4
 510:	0c850513          	add	a0,a0,200 # 100c8 <__modsi3+0xf614>
 514:	33c000ef          	jal	850 <printf>
 518:	00010537          	lui	a0,0x10
 51c:	00d00593          	li	a1,13
 520:	0e850513          	add	a0,a0,232 # 100e8 <__modsi3+0xf634>
 524:	32c000ef          	jal	850 <printf>
 528:	08c40513          	add	a0,s0,140
 52c:	154000ef          	jal	680 <puts>
 530:	fffff7b7          	lui	a5,0xfffff
 534:	00001737          	lui	a4,0x1
 538:	ff878793          	add	a5,a5,-8 # ffffeff8 <IO_BASE+0xffbfeff8>
 53c:	01070713          	add	a4,a4,16 # 1010 <__modsi3+0x55c>
 540:	00f70733          	add	a4,a4,a5
 544:	01010793          	add	a5,sp,16
 548:	00f707b3          	add	a5,a4,a5
 54c:	00001637          	lui	a2,0x1
 550:	00860613          	add	a2,a2,8 # 1008 <__modsi3+0x554>
 554:	00000593          	li	a1,0
 558:	00078513          	mv	a0,a5
 55c:	00f12623          	sw	a5,12(sp)
 560:	48c000ef          	jal	9ec <memset>
 564:	00c12503          	lw	a0,12(sp)
 568:	00010a37          	lui	s4,0x10
 56c:	00100413          	li	s0,1
 570:	c81ff0ef          	jal	1f0 <kernel>
 574:	00c12503          	lw	a0,12(sp)
 578:	00010937          	lui	s2,0x10
 57c:	00140413          	add	s0,s0,1
 580:	e31ff0ef          	jal	3b0 <to_ascii>
 584:	000a0513          	mv	a0,s4
 588:	2c8000ef          	jal	850 <printf>
 58c:	00010537          	lui	a0,0x10
 590:	10850513          	add	a0,a0,264 # 10108 <__modsi3+0xf654>
 594:	2bc000ef          	jal	850 <printf>
 598:	00c12783          	lw	a5,12(sp)
 59c:	40000993          	li	s3,1024
 5a0:	00010ab7          	lui	s5,0x10
 5a4:	0087a503          	lw	a0,8(a5)
 5a8:	09c000ef          	jal	644 <putchar>
 5ac:	00c12783          	lw	a5,12(sp)
 5b0:	00c7a503          	lw	a0,12(a5)
 5b4:	00c78493          	add	s1,a5,12
 5b8:	08c000ef          	jal	644 <putchar>
 5bc:	01090513          	add	a0,s2,16 # 10010 <__modsi3+0xf55c>
 5c0:	03f47793          	and	a5,s0,63
 5c4:	03340e63          	beq	s0,s3,600 <main+0x184>
 5c8:	00079e63          	bnez	a5,5e4 <main+0x168>
 5cc:	284000ef          	jal	850 <printf>
 5d0:	00040593          	mv	a1,s0
 5d4:	114a8513          	add	a0,s5,276 # 10114 <__modsi3+0xf660>
 5d8:	278000ef          	jal	850 <printf>
 5dc:	000a0513          	mv	a0,s4
 5e0:	270000ef          	jal	850 <printf>
 5e4:	0044a503          	lw	a0,4(s1)
 5e8:	00140413          	add	s0,s0,1
 5ec:	00448493          	add	s1,s1,4
 5f0:	054000ef          	jal	644 <putchar>
 5f4:	01090513          	add	a0,s2,16
 5f8:	03f47793          	and	a5,s0,63
 5fc:	fd3416e3          	bne	s0,s3,5c8 <main+0x14c>
 600:	01090513          	add	a0,s2,16
 604:	24c000ef          	jal	850 <printf>
 608:	00010537          	lui	a0,0x10
 60c:	11c50513          	add	a0,a0,284 # 1011c <__modsi3+0xf668>
 610:	240000ef          	jal	850 <printf>
 614:	000012b7          	lui	t0,0x1
 618:	00510133          	add	sp,sp,t0
 61c:	03c12083          	lw	ra,60(sp)
 620:	03812403          	lw	s0,56(sp)
 624:	03412483          	lw	s1,52(sp)
 628:	03012903          	lw	s2,48(sp)
 62c:	02c12983          	lw	s3,44(sp)
 630:	02812a03          	lw	s4,40(sp)
 634:	02412a83          	lw	s5,36(sp)
 638:	00000513          	li	a0,0
 63c:	04010113          	add	sp,sp,64
 640:	00008067          	ret

00000644 <putchar>:
 644:	06000737          	lui	a4,0x6000
 648:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 64c:	fe078ee3          	beqz	a5,648 <putchar+0x4>
 650:	00a72023          	sw	a0,0(a4)
 654:	00008067          	ret

00000658 <print_string>:
 658:	00054683          	lbu	a3,0(a0)
 65c:	02068063          	beqz	a3,67c <print_string+0x24>
 660:	06000737          	lui	a4,0x6000
 664:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 668:	fe078ee3          	beqz	a5,664 <print_string+0xc>
 66c:	00d72023          	sw	a3,0(a4)
 670:	00154683          	lbu	a3,1(a0)
 674:	00150513          	add	a0,a0,1
 678:	fe0696e3          	bnez	a3,664 <print_string+0xc>
 67c:	00008067          	ret

00000680 <puts>:
 680:	00054683          	lbu	a3,0(a0)
 684:	02068063          	beqz	a3,6a4 <puts+0x24>
 688:	06000737          	lui	a4,0x6000
 68c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 690:	fe078ee3          	beqz	a5,68c <puts+0xc>
 694:	00d72023          	sw	a3,0(a4)
 698:	00154683          	lbu	a3,1(a0)
 69c:	00150513          	add	a0,a0,1
 6a0:	fe0696e3          	bnez	a3,68c <puts+0xc>
 6a4:	06000737          	lui	a4,0x6000
 6a8:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 6ac:	fe078ee3          	beqz	a5,6a8 <puts+0x28>
 6b0:	00a00793          	li	a5,10
 6b4:	00f72023          	sw	a5,0(a4)
 6b8:	00100513          	li	a0,1
 6bc:	00008067          	ret

000006c0 <print_dec>:
 6c0:	ef010113          	add	sp,sp,-272
 6c4:	10812423          	sw	s0,264(sp)
 6c8:	10112623          	sw	ra,268(sp)
 6cc:	10912223          	sw	s1,260(sp)
 6d0:	11212023          	sw	s2,256(sp)
 6d4:	00050413          	mv	s0,a0
 6d8:	06000737          	lui	a4,0x6000
 6dc:	00055c63          	bgez	a0,6f4 <print_dec+0x34>
 6e0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 6e4:	fe078ee3          	beqz	a5,6e0 <print_dec+0x20>
 6e8:	02d00793          	li	a5,45
 6ec:	00f72023          	sw	a5,0(a4)
 6f0:	40800433          	neg	s0,s0
 6f4:	00010913          	mv	s2,sp
 6f8:	00090493          	mv	s1,s2
 6fc:	0240006f          	j	720 <print_dec+0x60>
 700:	3b4000ef          	jal	ab4 <__modsi3>
 704:	00050793          	mv	a5,a0
 708:	00a00593          	li	a1,10
 70c:	00040513          	mv	a0,s0
 710:	00f48023          	sb	a5,0(s1)
 714:	31c000ef          	jal	a30 <__divsi3>
 718:	00148493          	add	s1,s1,1
 71c:	00050413          	mv	s0,a0
 720:	00a00593          	li	a1,10
 724:	00040513          	mv	a0,s0
 728:	fc041ce3          	bnez	s0,700 <print_dec+0x40>
 72c:	fd248ae3          	beq	s1,s2,700 <print_dec+0x40>
 730:	06000737          	lui	a4,0x6000
 734:	fff4c683          	lbu	a3,-1(s1)
 738:	fff48493          	add	s1,s1,-1
 73c:	03068693          	add	a3,a3,48
 740:	0ff6f693          	zext.b	a3,a3
 744:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 748:	fe078ee3          	beqz	a5,744 <print_dec+0x84>
 74c:	00d72023          	sw	a3,0(a4)
 750:	ff2492e3          	bne	s1,s2,734 <print_dec+0x74>
 754:	10c12083          	lw	ra,268(sp)
 758:	10812403          	lw	s0,264(sp)
 75c:	10412483          	lw	s1,260(sp)
 760:	10012903          	lw	s2,256(sp)
 764:	11010113          	add	sp,sp,272
 768:	00008067          	ret

0000076c <print_hex_digits>:
 76c:	000107b7          	lui	a5,0x10
 770:	12078793          	add	a5,a5,288 # 10120 <__modsi3+0xf66c>
 774:	0007a883          	lw	a7,0(a5)
 778:	0047a803          	lw	a6,4(a5)
 77c:	0087a603          	lw	a2,8(a5)
 780:	00c7a703          	lw	a4,12(a5)
 784:	0107c783          	lbu	a5,16(a5)
 788:	fe010113          	add	sp,sp,-32
 78c:	fff58693          	add	a3,a1,-1
 790:	01112623          	sw	a7,12(sp)
 794:	01012823          	sw	a6,16(sp)
 798:	00c12a23          	sw	a2,20(sp)
 79c:	00e12c23          	sw	a4,24(sp)
 7a0:	00f10e23          	sb	a5,28(sp)
 7a4:	00269693          	sll	a3,a3,0x2
 7a8:	0206c863          	bltz	a3,7d8 <print_hex_digits+0x6c>
 7ac:	06000737          	lui	a4,0x6000
 7b0:	00d557b3          	srl	a5,a0,a3
 7b4:	00f7f793          	and	a5,a5,15
 7b8:	02078793          	add	a5,a5,32
 7bc:	002787b3          	add	a5,a5,sp
 7c0:	fec7c603          	lbu	a2,-20(a5)
 7c4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 7c8:	fe078ee3          	beqz	a5,7c4 <print_hex_digits+0x58>
 7cc:	00c72023          	sw	a2,0(a4)
 7d0:	ffc68693          	add	a3,a3,-4
 7d4:	fc06dee3          	bgez	a3,7b0 <print_hex_digits+0x44>
 7d8:	02010113          	add	sp,sp,32
 7dc:	00008067          	ret

000007e0 <print_hex>:
 7e0:	000107b7          	lui	a5,0x10
 7e4:	12078793          	add	a5,a5,288 # 10120 <__modsi3+0xf66c>
 7e8:	0007a583          	lw	a1,0(a5)
 7ec:	0087a683          	lw	a3,8(a5)
 7f0:	00c7a703          	lw	a4,12(a5)
 7f4:	0047a603          	lw	a2,4(a5)
 7f8:	0107c783          	lbu	a5,16(a5)
 7fc:	fe010113          	add	sp,sp,-32
 800:	00b12623          	sw	a1,12(sp)
 804:	00d12a23          	sw	a3,20(sp)
 808:	00e12c23          	sw	a4,24(sp)
 80c:	00c12823          	sw	a2,16(sp)
 810:	00f10e23          	sb	a5,28(sp)
 814:	01c00693          	li	a3,28
 818:	06000737          	lui	a4,0x6000
 81c:	ffc00593          	li	a1,-4
 820:	00d557b3          	srl	a5,a0,a3
 824:	00f7f793          	and	a5,a5,15
 828:	02078793          	add	a5,a5,32
 82c:	002787b3          	add	a5,a5,sp
 830:	fec7c603          	lbu	a2,-20(a5)
 834:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 838:	fe078ee3          	beqz	a5,834 <print_hex+0x54>
 83c:	00c72023          	sw	a2,0(a4)
 840:	ffc68693          	add	a3,a3,-4
 844:	fcb69ee3          	bne	a3,a1,820 <print_hex+0x40>
 848:	02010113          	add	sp,sp,32
 84c:	00008067          	ret

00000850 <printf>:
 850:	fb010113          	add	sp,sp,-80
 854:	02812423          	sw	s0,40(sp)
 858:	04f12223          	sw	a5,68(sp)
 85c:	02112623          	sw	ra,44(sp)
 860:	02b12a23          	sw	a1,52(sp)
 864:	02c12c23          	sw	a2,56(sp)
 868:	02d12e23          	sw	a3,60(sp)
 86c:	04e12023          	sw	a4,64(sp)
 870:	05012423          	sw	a6,72(sp)
 874:	05112623          	sw	a7,76(sp)
 878:	00050413          	mv	s0,a0
 87c:	00054503          	lbu	a0,0(a0)
 880:	03410793          	add	a5,sp,52
 884:	00f12623          	sw	a5,12(sp)
 888:	06050663          	beqz	a0,8f4 <printf+0xa4>
 88c:	02912223          	sw	s1,36(sp)
 890:	03212023          	sw	s2,32(sp)
 894:	01312e23          	sw	s3,28(sp)
 898:	01412c23          	sw	s4,24(sp)
 89c:	01512a23          	sw	s5,20(sp)
 8a0:	02500493          	li	s1,37
 8a4:	07300913          	li	s2,115
 8a8:	07800993          	li	s3,120
 8ac:	06400a13          	li	s4,100
 8b0:	06300a93          	li	s5,99
 8b4:	04951a63          	bne	a0,s1,908 <printf+0xb8>
 8b8:	00144503          	lbu	a0,1(s0)
 8bc:	05250c63          	beq	a0,s2,914 <printf+0xc4>
 8c0:	09350263          	beq	a0,s3,944 <printf+0xf4>
 8c4:	09450c63          	beq	a0,s4,95c <printf+0x10c>
 8c8:	07550263          	beq	a0,s5,92c <printf+0xdc>
 8cc:	d79ff0ef          	jal	644 <putchar>
 8d0:	00140793          	add	a5,s0,1
 8d4:	0017c503          	lbu	a0,1(a5)
 8d8:	00178413          	add	s0,a5,1
 8dc:	fc051ce3          	bnez	a0,8b4 <printf+0x64>
 8e0:	02412483          	lw	s1,36(sp)
 8e4:	02012903          	lw	s2,32(sp)
 8e8:	01c12983          	lw	s3,28(sp)
 8ec:	01812a03          	lw	s4,24(sp)
 8f0:	01412a83          	lw	s5,20(sp)
 8f4:	02c12083          	lw	ra,44(sp)
 8f8:	02812403          	lw	s0,40(sp)
 8fc:	00000513          	li	a0,0
 900:	05010113          	add	sp,sp,80
 904:	00008067          	ret
 908:	d3dff0ef          	jal	644 <putchar>
 90c:	00040793          	mv	a5,s0
 910:	fc5ff06f          	j	8d4 <printf+0x84>
 914:	00c12783          	lw	a5,12(sp)
 918:	0007a503          	lw	a0,0(a5)
 91c:	00478793          	add	a5,a5,4
 920:	00f12623          	sw	a5,12(sp)
 924:	d35ff0ef          	jal	658 <print_string>
 928:	fa9ff06f          	j	8d0 <printf+0x80>
 92c:	00c12783          	lw	a5,12(sp)
 930:	0007c503          	lbu	a0,0(a5)
 934:	00478793          	add	a5,a5,4
 938:	00f12623          	sw	a5,12(sp)
 93c:	d09ff0ef          	jal	644 <putchar>
 940:	f91ff06f          	j	8d0 <printf+0x80>
 944:	00c12783          	lw	a5,12(sp)
 948:	0007a503          	lw	a0,0(a5)
 94c:	00478793          	add	a5,a5,4
 950:	00f12623          	sw	a5,12(sp)
 954:	e8dff0ef          	jal	7e0 <print_hex>
 958:	f79ff06f          	j	8d0 <printf+0x80>
 95c:	00c12783          	lw	a5,12(sp)
 960:	0007a503          	lw	a0,0(a5)
 964:	00478793          	add	a5,a5,4
 968:	00f12623          	sw	a5,12(sp)
 96c:	d55ff0ef          	jal	6c0 <print_dec>
 970:	f61ff06f          	j	8d0 <printf+0x80>

00000974 <memcpy>:
 974:	00a5e7b3          	or	a5,a1,a0
 978:	0037f713          	and	a4,a5,3
 97c:	00050793          	mv	a5,a0
 980:	02070263          	beqz	a4,9a4 <memcpy+0x30>
 984:	00c786b3          	add	a3,a5,a2
 988:	06060063          	beqz	a2,9e8 <memcpy+0x74>
 98c:	0005c703          	lbu	a4,0(a1)
 990:	00178793          	add	a5,a5,1
 994:	00158593          	add	a1,a1,1
 998:	fee78fa3          	sb	a4,-1(a5)
 99c:	fef698e3          	bne	a3,a5,98c <memcpy+0x18>
 9a0:	00008067          	ret
 9a4:	00300713          	li	a4,3
 9a8:	fcc77ee3          	bgeu	a4,a2,984 <memcpy+0x10>
 9ac:	ffc60893          	add	a7,a2,-4
 9b0:	ffc8f893          	and	a7,a7,-4
 9b4:	00488893          	add	a7,a7,4
 9b8:	011507b3          	add	a5,a0,a7
 9bc:	00058693          	mv	a3,a1
 9c0:	00050713          	mv	a4,a0
 9c4:	0006a803          	lw	a6,0(a3)
 9c8:	00470713          	add	a4,a4,4
 9cc:	00468693          	add	a3,a3,4
 9d0:	ff072e23          	sw	a6,-4(a4)
 9d4:	fef718e3          	bne	a4,a5,9c4 <memcpy+0x50>
 9d8:	00367613          	and	a2,a2,3
 9dc:	011585b3          	add	a1,a1,a7
 9e0:	00c786b3          	add	a3,a5,a2
 9e4:	fa0614e3          	bnez	a2,98c <memcpy+0x18>
 9e8:	00008067          	ret

000009ec <memset>:
 9ec:	0ff5f593          	zext.b	a1,a1
 9f0:	00c50733          	add	a4,a0,a2
 9f4:	00050793          	mv	a5,a0
 9f8:	00060863          	beqz	a2,a08 <memset+0x1c>
 9fc:	00b78023          	sb	a1,0(a5)
 a00:	00178793          	add	a5,a5,1
 a04:	fef71ce3          	bne	a4,a5,9fc <memset+0x10>
 a08:	00008067          	ret

00000a0c <__mulsi3>:
 a0c:	00050613          	mv	a2,a0
 a10:	00000513          	li	a0,0
 a14:	0015f693          	and	a3,a1,1
 a18:	00068463          	beqz	a3,a20 <__mulsi3+0x14>
 a1c:	00c50533          	add	a0,a0,a2
 a20:	0015d593          	srl	a1,a1,0x1
 a24:	00161613          	sll	a2,a2,0x1
 a28:	fe0596e3          	bnez	a1,a14 <__mulsi3+0x8>
 a2c:	00008067          	ret

00000a30 <__divsi3>:
 a30:	06054063          	bltz	a0,a90 <__umodsi3+0x10>
 a34:	0605c663          	bltz	a1,aa0 <__umodsi3+0x20>

00000a38 <__udivsi3>:
 a38:	00058613          	mv	a2,a1
 a3c:	00050593          	mv	a1,a0
 a40:	fff00513          	li	a0,-1
 a44:	02060c63          	beqz	a2,a7c <__udivsi3+0x44>
 a48:	00100693          	li	a3,1
 a4c:	00b67a63          	bgeu	a2,a1,a60 <__udivsi3+0x28>
 a50:	00c05863          	blez	a2,a60 <__udivsi3+0x28>
 a54:	00161613          	sll	a2,a2,0x1
 a58:	00169693          	sll	a3,a3,0x1
 a5c:	feb66ae3          	bltu	a2,a1,a50 <__udivsi3+0x18>
 a60:	00000513          	li	a0,0
 a64:	00c5e663          	bltu	a1,a2,a70 <__udivsi3+0x38>
 a68:	40c585b3          	sub	a1,a1,a2
 a6c:	00d56533          	or	a0,a0,a3
 a70:	0016d693          	srl	a3,a3,0x1
 a74:	00165613          	srl	a2,a2,0x1
 a78:	fe0696e3          	bnez	a3,a64 <__udivsi3+0x2c>
 a7c:	00008067          	ret

00000a80 <__umodsi3>:
 a80:	00008293          	mv	t0,ra
 a84:	fb5ff0ef          	jal	a38 <__udivsi3>
 a88:	00058513          	mv	a0,a1
 a8c:	00028067          	jr	t0 # 1000 <__modsi3+0x54c>
 a90:	40a00533          	neg	a0,a0
 a94:	0005d863          	bgez	a1,aa4 <__umodsi3+0x24>
 a98:	40b005b3          	neg	a1,a1
 a9c:	f95ff06f          	j	a30 <__divsi3>
 aa0:	40b005b3          	neg	a1,a1
 aa4:	00008293          	mv	t0,ra
 aa8:	f89ff0ef          	jal	a30 <__divsi3>
 aac:	40a00533          	neg	a0,a0
 ab0:	00028067          	jr	t0

00000ab4 <__modsi3>:
 ab4:	00008293          	mv	t0,ra
 ab8:	0005ca63          	bltz	a1,acc <__modsi3+0x18>
 abc:	00054c63          	bltz	a0,ad4 <__modsi3+0x20>
 ac0:	f79ff0ef          	jal	a38 <__udivsi3>
 ac4:	00058513          	mv	a0,a1
 ac8:	00028067          	jr	t0
 acc:	40b005b3          	neg	a1,a1
 ad0:	fe0558e3          	bgez	a0,ac0 <__modsi3+0xc>
 ad4:	40a00533          	neg	a0,a0
 ad8:	f61ff0ef          	jal	a38 <__udivsi3>
 adc:	40b00533          	neg	a0,a1
 ae0:	00028067          	jr	t0

Disassembly of section .data:

00010000 <.data>:
   10000:	3b305b1b          	.4byte	0x3b305b1b
   10004:	006d3233          	sltu	tp,s10,t1
   10008:	3b305b1b          	.4byte	0x3b305b1b
   1000c:	006d3133          	sltu	sp,s10,t1
   10010:	3b305b1b          	.4byte	0x3b305b1b
   10014:	006d3733          	sltu	a4,s10,t1
   10018:	4928                	.2byte	0x4928
   1001a:	2949                	.2byte	0x2949
   1001c:	4320                	.2byte	0x4320
   1001e:	75706d6f          	jal	s10,16f74 <__modsi3+0x164c0>
   10022:	6174                	.2byte	0x6174
   10024:	6974                	.2byte	0x6974
   10026:	6f206e6f          	jal	t3,16718 <__modsi3+0x15c64>
   1002a:	2066                	.2byte	0x2066
   1002c:	4950                	.2byte	0x4950
   1002e:	6120                	.2byte	0x6120
   10030:	7070                	.2byte	0x7070
   10032:	6972                	.2byte	0x6972
   10034:	6178                	.2byte	0x6178
   10036:	6974                	.2byte	0x6974
   10038:	00006e6f          	jal	t3,16038 <__modsi3+0x15584>
   1003c:	614d                	.2byte	0x614d
   1003e:	2072                	.2byte	0x2072
   10040:	3032                	.2byte	0x3032
   10042:	3220                	.2byte	0x3220
   10044:	3230                	.2byte	0x3230
   10046:	0035                	.2byte	0x35
   10048:	4928                	.2byte	0x4928
   1004a:	2949                	.2byte	0x2949
   1004c:	4320                	.2byte	0x4320
   1004e:	69706d6f          	jal	s10,16ee4 <__modsi3+0x16430>
   10052:	616c                	.2byte	0x616c
   10054:	6974                	.2byte	0x6974
   10056:	64206e6f          	jal	t3,16698 <__modsi3+0x15be4>
   1005a:	7461                	.2byte	0x7461
   1005c:	2065                	.2byte	0x2065
   1005e:	203a                	.2byte	0x203a
   10060:	7325                	.2byte	0x7325
   10062:	000a                	.2byte	0xa
   10064:	3930                	.2byte	0x3930
   10066:	303a                	.2byte	0x303a
   10068:	3a39                	.2byte	0x3a39
   1006a:	3834                	.2byte	0x3834
   1006c:	0000                	.2byte	0x0
   1006e:	0000                	.2byte	0x0
   10070:	4928                	.2byte	0x4928
   10072:	2949                	.2byte	0x2949
   10074:	4320                	.2byte	0x4320
   10076:	69706d6f          	jal	s10,16f0c <__modsi3+0x16458>
   1007a:	616c                	.2byte	0x616c
   1007c:	6974                	.2byte	0x6974
   1007e:	74206e6f          	jal	t3,167c0 <__modsi3+0x15d0c>
   10082:	6d69                	.2byte	0x6d69
   10084:	2065                	.2byte	0x2065
   10086:	203a                	.2byte	0x203a
   10088:	7325                	.2byte	0x7325
   1008a:	000a                	.2byte	0xa
   1008c:	4928                	.2byte	0x4928
   1008e:	2949                	.2byte	0x2949
   10090:	0000                	.2byte	0x0
   10092:	0000                	.2byte	0x0
   10094:	4928                	.2byte	0x4928
   10096:	2949                	.2byte	0x2949
   10098:	4e20                	.2byte	0x4e20
   1009a:	6d75                	.2byte	0x6d75
   1009c:	6562                	.2byte	0x6562
   1009e:	2072                	.2byte	0x2072
   100a0:	6420666f          	jal	a2,166e2 <__modsi3+0x15c2e>
   100a4:	6769                	.2byte	0x6769
   100a6:	7469                	.2byte	0x7469
   100a8:	203a2073          	.4byte	0x203a2073
   100ac:	6425                	.2byte	0x6425
   100ae:	000a                	.2byte	0xa
   100b0:	4928                	.2byte	0x4928
   100b2:	2949                	.2byte	0x2949
   100b4:	4d20                	.2byte	0x4d20
   100b6:	6d65                	.2byte	0x6d65
   100b8:	2079726f          	jal	tp,a7abe <__modsi3+0xa700a>
   100bc:	6f66                	.2byte	0x6f66
   100be:	7270746f          	jal	s0,17fe4 <__modsi3+0x17530>
   100c2:	6e69                	.2byte	0x6e69
   100c4:	0074                	.2byte	0x74
   100c6:	0000                	.2byte	0x0
   100c8:	4928                	.2byte	0x4928
   100ca:	2949                	.2byte	0x2949
   100cc:	2d20                	.2byte	0x2d20
   100ce:	5020                	.2byte	0x5020
   100d0:	2049                	.2byte	0x2049
   100d2:	6964                	.2byte	0x6964
   100d4:	73746967          	.4byte	0x73746967
   100d8:	2020                	.2byte	0x2020
   100da:	2020                	.2byte	0x2020
   100dc:	2020                	.2byte	0x2020
   100de:	3a20                	.2byte	0x3a20
   100e0:	2520                	.2byte	0x2520
   100e2:	2064                	.2byte	0x2064
   100e4:	000a426b          	.4byte	0xa426b
   100e8:	4928                	.2byte	0x4928
   100ea:	2949                	.2byte	0x2949
   100ec:	2d20                	.2byte	0x2d20
   100ee:	4920                	.2byte	0x4920
   100f0:	746e                	.2byte	0x746e
   100f2:	7265                	.2byte	0x7265
   100f4:	616e                	.2byte	0x616e
   100f6:	206c                	.2byte	0x206c
   100f8:	6176                	.2byte	0x6176
   100fa:	756c                	.2byte	0x756c
   100fc:	7365                	.2byte	0x7365
   100fe:	3a20                	.2byte	0x3a20
   10100:	2520                	.2byte	0x2520
   10102:	2064                	.2byte	0x2064
   10104:	000a426b          	.4byte	0xa426b
   10108:	2020                	.2byte	0x2020
   1010a:	2020                	.2byte	0x2020
   1010c:	2020                	.2byte	0x2020
   1010e:	00002e33          	sltz	t3,zero
   10112:	0000                	.2byte	0x0
   10114:	250a                	.2byte	0x250a
   10116:	6435                	.2byte	0x6435
   10118:	7c20                	.2byte	0x7c20
   1011a:	0020                	.2byte	0x20
   1011c:	200a                	.2byte	0x200a
   1011e:	0020                	.2byte	0x20
   10120:	3130                	.2byte	0x3130
   10122:	3332                	.2byte	0x3332
   10124:	3534                	.2byte	0x3534
   10126:	3736                	.2byte	0x3736
   10128:	3938                	.2byte	0x3938
   1012a:	4241                	.2byte	0x4241
   1012c:	46454443          	.4byte	0x46454443
	...

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

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.4byte	0x3a434347
   4:	2820                	.2byte	0x2820
   6:	29554e47          	.4byte	0x29554e47
   a:	3120                	.2byte	0x3120
   c:	2e312e33          	.4byte	0x2e312e33
  10:	0030                	.2byte	0x30
