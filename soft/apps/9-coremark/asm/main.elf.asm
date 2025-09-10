
./bin/main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	000047b7          	lui	a5,0x4
   c:	0d000737          	lui	a4,0xd000
  10:	40078793          	add	a5,a5,1024 # 4400 <__modsi3+0x3a68>
  14:	00f72023          	sw	a5,0(a4) # d000000 <IO_BASE+0xcc00000>
  18:	3f4000ef          	jal	40c <main>
  1c:	0d000737          	lui	a4,0xd000
  20:	04400793          	li	a5,68
  24:	00f72023          	sw	a5,0(a4) # d000000 <IO_BASE+0xcc00000>
  28:	00100073          	ebreak

0000002c <loop>:
  2c:	000000ef          	jal	2c <loop>

00000030 <multiply_array>:
  30:	fe010113          	add	sp,sp,-32 # 1ffe0 <__modsi3+0x1f648>
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
  6c:	085000ef          	jal	8f0 <__mulsi3>
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
 168:	7fc000ef          	jal	964 <__umodsi3>
 16c:	00048593          	mv	a1,s1
 170:	fea9ae23          	sw	a0,-4(s3)
 174:	00040513          	mv	a0,s0
 178:	7a4000ef          	jal	91c <__udivsi3>
 17c:	00090593          	mv	a1,s2
 180:	fff90913          	add	s2,s2,-1
 184:	76c000ef          	jal	8f0 <__mulsi3>
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
 1c0:	7a4000ef          	jal	964 <__umodsi3>
 1c4:	00aaa023          	sw	a0,0(s5)
 1c8:	00a00593          	li	a1,10
 1cc:	00040513          	mv	a0,s0
 1d0:	74c000ef          	jal	91c <__udivsi3>
 1d4:	01c12083          	lw	ra,28(sp)
 1d8:	01812403          	lw	s0,24(sp)
 1dc:	01012903          	lw	s2,16(sp)
 1e0:	00812a03          	lw	s4,8(sp)
 1e4:	00412a83          	lw	s5,4(sp)
 1e8:	02010113          	add	sp,sp,32
 1ec:	00008067          	ret

000001f0 <kernel>:
 1f0:	fd010113          	add	sp,sp,-48
 1f4:	02812423          	sw	s0,40(sp)
 1f8:	01512a23          	sw	s5,20(sp)
 1fc:	01712623          	sw	s7,12(sp)
 200:	02112623          	sw	ra,44(sp)
 204:	02912223          	sw	s1,36(sp)
 208:	03212023          	sw	s2,32(sp)
 20c:	01312e23          	sw	s3,28(sp)
 210:	01412c23          	sw	s4,24(sp)
 214:	01612823          	sw	s6,16(sp)
 218:	01812423          	sw	s8,8(sp)
 21c:	03010413          	add	s0,sp,48
 220:	c9010113          	add	sp,sp,-880
 224:	00010a93          	mv	s5,sp
 228:	00050b93          	mv	s7,a0
 22c:	370a8693          	add	a3,s5,880
 230:	000a8793          	mv	a5,s5
 234:	00200713          	li	a4,2
 238:	00e7a023          	sw	a4,0(a5)
 23c:	00478793          	add	a5,a5,4
 240:	fed79ce3          	bne	a5,a3,238 <kernel+0x48>
 244:	108b8b13          	add	s6,s7,264
 248:	000b8a13          	mv	s4,s7
 24c:	000a8c13          	mv	s8,s5
 250:	0db00993          	li	s3,219
 254:	1b700913          	li	s2,439
 258:	00000513          	li	a0,0
 25c:	000c2783          	lw	a5,0(s8)
 260:	00090593          	mv	a1,s2
 264:	004c0c13          	add	s8,s8,4
 268:	00279493          	sll	s1,a5,0x2
 26c:	00f484b3          	add	s1,s1,a5
 270:	00149493          	sll	s1,s1,0x1
 274:	00a484b3          	add	s1,s1,a0
 278:	00048513          	mv	a0,s1
 27c:	6e8000ef          	jal	964 <__umodsi3>
 280:	00050793          	mv	a5,a0
 284:	00090593          	mv	a1,s2
 288:	fefc2e23          	sw	a5,-4(s8)
 28c:	00048513          	mv	a0,s1
 290:	68c000ef          	jal	91c <__udivsi3>
 294:	00098593          	mv	a1,s3
 298:	fff98993          	add	s3,s3,-1
 29c:	654000ef          	jal	8f0 <__mulsi3>
 2a0:	ffe90913          	add	s2,s2,-2
 2a4:	fa099ce3          	bnez	s3,25c <kernel+0x6c>
 2a8:	36caa783          	lw	a5,876(s5)
 2ac:	00a00593          	li	a1,10
 2b0:	004a0a13          	add	s4,s4,4
 2b4:	00279493          	sll	s1,a5,0x2
 2b8:	00f484b3          	add	s1,s1,a5
 2bc:	00149493          	sll	s1,s1,0x1
 2c0:	00a484b3          	add	s1,s1,a0
 2c4:	00048513          	mv	a0,s1
 2c8:	69c000ef          	jal	964 <__umodsi3>
 2cc:	00050793          	mv	a5,a0
 2d0:	00a00593          	li	a1,10
 2d4:	00048513          	mv	a0,s1
 2d8:	36faa623          	sw	a5,876(s5)
 2dc:	640000ef          	jal	91c <__udivsi3>
 2e0:	feaa2e23          	sw	a0,-4(s4)
 2e4:	f76a14e3          	bne	s4,s6,24c <kernel+0x5c>
 2e8:	ffcb8793          	add	a5,s7,-4
 2ec:	00a00513          	li	a0,10
 2f0:	104b8b93          	add	s7,s7,260
 2f4:	00900593          	li	a1,9
 2f8:	00c0006f          	j	304 <kernel+0x114>
 2fc:	00478793          	add	a5,a5,4
 300:	05778263          	beq	a5,s7,344 <kernel+0x154>
 304:	0047a683          	lw	a3,4(a5)
 308:	00078713          	mv	a4,a5
 30c:	fea698e3          	bne	a3,a0,2fc <kernel+0x10c>
 310:	0007a603          	lw	a2,0(a5)
 314:	0007a223          	sw	zero,4(a5)
 318:	ffc78693          	add	a3,a5,-4
 31c:	00b61c63          	bne	a2,a1,334 <kernel+0x144>
 320:	00072023          	sw	zero,0(a4)
 324:	0006a603          	lw	a2,0(a3)
 328:	ffc70713          	add	a4,a4,-4
 32c:	ffc68693          	add	a3,a3,-4
 330:	feb608e3          	beq	a2,a1,320 <kernel+0x130>
 334:	00160613          	add	a2,a2,1
 338:	00c72023          	sw	a2,0(a4)
 33c:	00478793          	add	a5,a5,4
 340:	fd7792e3          	bne	a5,s7,304 <kernel+0x114>
 344:	fd040113          	add	sp,s0,-48
 348:	02c12083          	lw	ra,44(sp)
 34c:	02812403          	lw	s0,40(sp)
 350:	02412483          	lw	s1,36(sp)
 354:	02012903          	lw	s2,32(sp)
 358:	01c12983          	lw	s3,28(sp)
 35c:	01812a03          	lw	s4,24(sp)
 360:	01412a83          	lw	s5,20(sp)
 364:	01012b03          	lw	s6,16(sp)
 368:	00c12b83          	lw	s7,12(sp)
 36c:	00812c03          	lw	s8,8(sp)
 370:	03010113          	add	sp,sp,48
 374:	00008067          	ret

00000378 <to_ascii>:
 378:	ee010113          	add	sp,sp,-288
 37c:	00050593          	mv	a1,a0
 380:	10812c23          	sw	s0,280(sp)
 384:	10400613          	li	a2,260
 388:	00050413          	mv	s0,a0
 38c:	00810513          	add	a0,sp,8
 390:	10112e23          	sw	ra,284(sp)
 394:	4c4000ef          	jal	858 <memcpy>
 398:	00042783          	lw	a5,0(s0)
 39c:	02e00713          	li	a4,46
 3a0:	00e42223          	sw	a4,4(s0)
 3a4:	03078793          	add	a5,a5,48
 3a8:	00f42023          	sw	a5,0(s0)
 3ac:	00c10613          	add	a2,sp,12
 3b0:	00840713          	add	a4,s0,8
 3b4:	00200693          	li	a3,2
 3b8:	04200593          	li	a1,66
 3bc:	00062783          	lw	a5,0(a2)
 3c0:	00168693          	add	a3,a3,1
 3c4:	00460613          	add	a2,a2,4
 3c8:	03078793          	add	a5,a5,48
 3cc:	00f72023          	sw	a5,0(a4)
 3d0:	00470713          	add	a4,a4,4
 3d4:	feb694e3          	bne	a3,a1,3bc <to_ascii+0x44>
 3d8:	11c12083          	lw	ra,284(sp)
 3dc:	11812403          	lw	s0,280(sp)
 3e0:	12010113          	add	sp,sp,288
 3e4:	00008067          	ret

000003e8 <green>:
 3e8:	00010537          	lui	a0,0x10
 3ec:	00050513          	mv	a0,a0
 3f0:	3440006f          	j	734 <printf>

000003f4 <red>:
 3f4:	00010537          	lui	a0,0x10
 3f8:	00850513          	add	a0,a0,8 # 10008 <__modsi3+0xf670>
 3fc:	3380006f          	j	734 <printf>

00000400 <white>:
 400:	00010537          	lui	a0,0x10
 404:	01050513          	add	a0,a0,16 # 10010 <__modsi3+0xf678>
 408:	32c0006f          	j	734 <printf>

0000040c <main>:
 40c:	00010537          	lui	a0,0x10
 410:	ee010113          	add	sp,sp,-288
 414:	01850513          	add	a0,a0,24 # 10018 <__modsi3+0xf680>
 418:	10112e23          	sw	ra,284(sp)
 41c:	10812c23          	sw	s0,280(sp)
 420:	10912a23          	sw	s1,276(sp)
 424:	140000ef          	jal	564 <puts>
 428:	000105b7          	lui	a1,0x10
 42c:	00010537          	lui	a0,0x10
 430:	03c58593          	add	a1,a1,60 # 1003c <__modsi3+0xf6a4>
 434:	04850513          	add	a0,a0,72 # 10048 <__modsi3+0xf6b0>
 438:	2fc000ef          	jal	734 <printf>
 43c:	000105b7          	lui	a1,0x10
 440:	00010537          	lui	a0,0x10
 444:	06458593          	add	a1,a1,100 # 10064 <__modsi3+0xf6cc>
 448:	07050513          	add	a0,a0,112 # 10070 <__modsi3+0xf6d8>
 44c:	2e8000ef          	jal	734 <printf>
 450:	00010437          	lui	s0,0x10
 454:	08c40513          	add	a0,s0,140 # 1008c <__modsi3+0xf6f4>
 458:	10c000ef          	jal	564 <puts>
 45c:	00010537          	lui	a0,0x10
 460:	04000593          	li	a1,64
 464:	09450513          	add	a0,a0,148 # 10094 <__modsi3+0xf6fc>
 468:	2cc000ef          	jal	734 <printf>
 46c:	08c40513          	add	a0,s0,140
 470:	0f4000ef          	jal	564 <puts>
 474:	00010537          	lui	a0,0x10
 478:	0b050513          	add	a0,a0,176 # 100b0 <__modsi3+0xf718>
 47c:	0e8000ef          	jal	564 <puts>
 480:	00010537          	lui	a0,0x10
 484:	00000593          	li	a1,0
 488:	0c850513          	add	a0,a0,200 # 100c8 <__modsi3+0xf730>
 48c:	2a8000ef          	jal	734 <printf>
 490:	00010537          	lui	a0,0x10
 494:	00000593          	li	a1,0
 498:	0e850513          	add	a0,a0,232 # 100e8 <__modsi3+0xf750>
 49c:	298000ef          	jal	734 <printf>
 4a0:	08c40513          	add	a0,s0,140
 4a4:	0c0000ef          	jal	564 <puts>
 4a8:	10800613          	li	a2,264
 4ac:	00000593          	li	a1,0
 4b0:	00810513          	add	a0,sp,8
 4b4:	41c000ef          	jal	8d0 <memset>
 4b8:	00810513          	add	a0,sp,8
 4bc:	d35ff0ef          	jal	1f0 <kernel>
 4c0:	00810513          	add	a0,sp,8
 4c4:	eb5ff0ef          	jal	378 <to_ascii>
 4c8:	00010537          	lui	a0,0x10
 4cc:	00050513          	mv	a0,a0
 4d0:	264000ef          	jal	734 <printf>
 4d4:	00010537          	lui	a0,0x10
 4d8:	10850513          	add	a0,a0,264 # 10108 <__modsi3+0xf770>
 4dc:	258000ef          	jal	734 <printf>
 4e0:	01010413          	add	s0,sp,16
 4e4:	11010493          	add	s1,sp,272
 4e8:	00042503          	lw	a0,0(s0)
 4ec:	00440413          	add	s0,s0,4
 4f0:	038000ef          	jal	528 <putchar>
 4f4:	fe849ae3          	bne	s1,s0,4e8 <main+0xdc>
 4f8:	00010537          	lui	a0,0x10
 4fc:	01050513          	add	a0,a0,16 # 10010 <__modsi3+0xf678>
 500:	234000ef          	jal	734 <printf>
 504:	00010537          	lui	a0,0x10
 508:	11450513          	add	a0,a0,276 # 10114 <__modsi3+0xf77c>
 50c:	228000ef          	jal	734 <printf>
 510:	11c12083          	lw	ra,284(sp)
 514:	11812403          	lw	s0,280(sp)
 518:	11412483          	lw	s1,276(sp)
 51c:	00000513          	li	a0,0
 520:	12010113          	add	sp,sp,288
 524:	00008067          	ret

00000528 <putchar>:
 528:	06000737          	lui	a4,0x6000
 52c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 530:	fe078ee3          	beqz	a5,52c <putchar+0x4>
 534:	00a72023          	sw	a0,0(a4)
 538:	00008067          	ret

0000053c <print_string>:
 53c:	00054683          	lbu	a3,0(a0)
 540:	02068063          	beqz	a3,560 <print_string+0x24>
 544:	06000737          	lui	a4,0x6000
 548:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 54c:	fe078ee3          	beqz	a5,548 <print_string+0xc>
 550:	00d72023          	sw	a3,0(a4)
 554:	00154683          	lbu	a3,1(a0)
 558:	00150513          	add	a0,a0,1
 55c:	fe0696e3          	bnez	a3,548 <print_string+0xc>
 560:	00008067          	ret

00000564 <puts>:
 564:	00054683          	lbu	a3,0(a0)
 568:	02068063          	beqz	a3,588 <puts+0x24>
 56c:	06000737          	lui	a4,0x6000
 570:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 574:	fe078ee3          	beqz	a5,570 <puts+0xc>
 578:	00d72023          	sw	a3,0(a4)
 57c:	00154683          	lbu	a3,1(a0)
 580:	00150513          	add	a0,a0,1
 584:	fe0696e3          	bnez	a3,570 <puts+0xc>
 588:	06000737          	lui	a4,0x6000
 58c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 590:	fe078ee3          	beqz	a5,58c <puts+0x28>
 594:	00a00793          	li	a5,10
 598:	00f72023          	sw	a5,0(a4)
 59c:	00100513          	li	a0,1
 5a0:	00008067          	ret

000005a4 <print_dec>:
 5a4:	ef010113          	add	sp,sp,-272
 5a8:	10812423          	sw	s0,264(sp)
 5ac:	10112623          	sw	ra,268(sp)
 5b0:	10912223          	sw	s1,260(sp)
 5b4:	11212023          	sw	s2,256(sp)
 5b8:	00050413          	mv	s0,a0
 5bc:	06000737          	lui	a4,0x6000
 5c0:	00055c63          	bgez	a0,5d8 <print_dec+0x34>
 5c4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 5c8:	fe078ee3          	beqz	a5,5c4 <print_dec+0x20>
 5cc:	02d00793          	li	a5,45
 5d0:	00f72023          	sw	a5,0(a4)
 5d4:	40800433          	neg	s0,s0
 5d8:	00010913          	mv	s2,sp
 5dc:	00090493          	mv	s1,s2
 5e0:	0240006f          	j	604 <print_dec+0x60>
 5e4:	3b4000ef          	jal	998 <__modsi3>
 5e8:	00050793          	mv	a5,a0
 5ec:	00a00593          	li	a1,10
 5f0:	00040513          	mv	a0,s0
 5f4:	00f48023          	sb	a5,0(s1)
 5f8:	31c000ef          	jal	914 <__divsi3>
 5fc:	00148493          	add	s1,s1,1
 600:	00050413          	mv	s0,a0
 604:	00a00593          	li	a1,10
 608:	00040513          	mv	a0,s0
 60c:	fc041ce3          	bnez	s0,5e4 <print_dec+0x40>
 610:	fd248ae3          	beq	s1,s2,5e4 <print_dec+0x40>
 614:	06000737          	lui	a4,0x6000
 618:	fff4c683          	lbu	a3,-1(s1)
 61c:	fff48493          	add	s1,s1,-1
 620:	03068693          	add	a3,a3,48
 624:	0ff6f693          	zext.b	a3,a3
 628:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 62c:	fe078ee3          	beqz	a5,628 <print_dec+0x84>
 630:	00d72023          	sw	a3,0(a4)
 634:	ff2492e3          	bne	s1,s2,618 <print_dec+0x74>
 638:	10c12083          	lw	ra,268(sp)
 63c:	10812403          	lw	s0,264(sp)
 640:	10412483          	lw	s1,260(sp)
 644:	10012903          	lw	s2,256(sp)
 648:	11010113          	add	sp,sp,272
 64c:	00008067          	ret

00000650 <print_hex_digits>:
 650:	000107b7          	lui	a5,0x10
 654:	11878793          	add	a5,a5,280 # 10118 <__modsi3+0xf780>
 658:	0007a883          	lw	a7,0(a5)
 65c:	0047a803          	lw	a6,4(a5)
 660:	0087a603          	lw	a2,8(a5)
 664:	00c7a703          	lw	a4,12(a5)
 668:	0107c783          	lbu	a5,16(a5)
 66c:	fe010113          	add	sp,sp,-32
 670:	fff58693          	add	a3,a1,-1
 674:	01112623          	sw	a7,12(sp)
 678:	01012823          	sw	a6,16(sp)
 67c:	00c12a23          	sw	a2,20(sp)
 680:	00e12c23          	sw	a4,24(sp)
 684:	00f10e23          	sb	a5,28(sp)
 688:	00269693          	sll	a3,a3,0x2
 68c:	0206c863          	bltz	a3,6bc <print_hex_digits+0x6c>
 690:	06000737          	lui	a4,0x6000
 694:	00d557b3          	srl	a5,a0,a3
 698:	00f7f793          	and	a5,a5,15
 69c:	02078793          	add	a5,a5,32
 6a0:	002787b3          	add	a5,a5,sp
 6a4:	fec7c603          	lbu	a2,-20(a5)
 6a8:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 6ac:	fe078ee3          	beqz	a5,6a8 <print_hex_digits+0x58>
 6b0:	00c72023          	sw	a2,0(a4)
 6b4:	ffc68693          	add	a3,a3,-4
 6b8:	fc06dee3          	bgez	a3,694 <print_hex_digits+0x44>
 6bc:	02010113          	add	sp,sp,32
 6c0:	00008067          	ret

000006c4 <print_hex>:
 6c4:	000107b7          	lui	a5,0x10
 6c8:	11878793          	add	a5,a5,280 # 10118 <__modsi3+0xf780>
 6cc:	0007a583          	lw	a1,0(a5)
 6d0:	0087a683          	lw	a3,8(a5)
 6d4:	00c7a703          	lw	a4,12(a5)
 6d8:	0047a603          	lw	a2,4(a5)
 6dc:	0107c783          	lbu	a5,16(a5)
 6e0:	fe010113          	add	sp,sp,-32
 6e4:	00b12623          	sw	a1,12(sp)
 6e8:	00d12a23          	sw	a3,20(sp)
 6ec:	00e12c23          	sw	a4,24(sp)
 6f0:	00c12823          	sw	a2,16(sp)
 6f4:	00f10e23          	sb	a5,28(sp)
 6f8:	01c00693          	li	a3,28
 6fc:	06000737          	lui	a4,0x6000
 700:	ffc00593          	li	a1,-4
 704:	00d557b3          	srl	a5,a0,a3
 708:	00f7f793          	and	a5,a5,15
 70c:	02078793          	add	a5,a5,32
 710:	002787b3          	add	a5,a5,sp
 714:	fec7c603          	lbu	a2,-20(a5)
 718:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 71c:	fe078ee3          	beqz	a5,718 <print_hex+0x54>
 720:	00c72023          	sw	a2,0(a4)
 724:	ffc68693          	add	a3,a3,-4
 728:	fcb69ee3          	bne	a3,a1,704 <print_hex+0x40>
 72c:	02010113          	add	sp,sp,32
 730:	00008067          	ret

00000734 <printf>:
 734:	fb010113          	add	sp,sp,-80
 738:	02812423          	sw	s0,40(sp)
 73c:	04f12223          	sw	a5,68(sp)
 740:	02112623          	sw	ra,44(sp)
 744:	02b12a23          	sw	a1,52(sp)
 748:	02c12c23          	sw	a2,56(sp)
 74c:	02d12e23          	sw	a3,60(sp)
 750:	04e12023          	sw	a4,64(sp)
 754:	05012423          	sw	a6,72(sp)
 758:	05112623          	sw	a7,76(sp)
 75c:	00050413          	mv	s0,a0
 760:	00054503          	lbu	a0,0(a0)
 764:	03410793          	add	a5,sp,52
 768:	00f12623          	sw	a5,12(sp)
 76c:	06050663          	beqz	a0,7d8 <printf+0xa4>
 770:	02912223          	sw	s1,36(sp)
 774:	03212023          	sw	s2,32(sp)
 778:	01312e23          	sw	s3,28(sp)
 77c:	01412c23          	sw	s4,24(sp)
 780:	01512a23          	sw	s5,20(sp)
 784:	02500493          	li	s1,37
 788:	07300913          	li	s2,115
 78c:	07800993          	li	s3,120
 790:	06400a13          	li	s4,100
 794:	06300a93          	li	s5,99
 798:	04951a63          	bne	a0,s1,7ec <printf+0xb8>
 79c:	00144503          	lbu	a0,1(s0)
 7a0:	05250c63          	beq	a0,s2,7f8 <printf+0xc4>
 7a4:	09350263          	beq	a0,s3,828 <printf+0xf4>
 7a8:	09450c63          	beq	a0,s4,840 <printf+0x10c>
 7ac:	07550263          	beq	a0,s5,810 <printf+0xdc>
 7b0:	d79ff0ef          	jal	528 <putchar>
 7b4:	00140793          	add	a5,s0,1
 7b8:	0017c503          	lbu	a0,1(a5)
 7bc:	00178413          	add	s0,a5,1
 7c0:	fc051ce3          	bnez	a0,798 <printf+0x64>
 7c4:	02412483          	lw	s1,36(sp)
 7c8:	02012903          	lw	s2,32(sp)
 7cc:	01c12983          	lw	s3,28(sp)
 7d0:	01812a03          	lw	s4,24(sp)
 7d4:	01412a83          	lw	s5,20(sp)
 7d8:	02c12083          	lw	ra,44(sp)
 7dc:	02812403          	lw	s0,40(sp)
 7e0:	00000513          	li	a0,0
 7e4:	05010113          	add	sp,sp,80
 7e8:	00008067          	ret
 7ec:	d3dff0ef          	jal	528 <putchar>
 7f0:	00040793          	mv	a5,s0
 7f4:	fc5ff06f          	j	7b8 <printf+0x84>
 7f8:	00c12783          	lw	a5,12(sp)
 7fc:	0007a503          	lw	a0,0(a5)
 800:	00478793          	add	a5,a5,4
 804:	00f12623          	sw	a5,12(sp)
 808:	d35ff0ef          	jal	53c <print_string>
 80c:	fa9ff06f          	j	7b4 <printf+0x80>
 810:	00c12783          	lw	a5,12(sp)
 814:	0007c503          	lbu	a0,0(a5)
 818:	00478793          	add	a5,a5,4
 81c:	00f12623          	sw	a5,12(sp)
 820:	d09ff0ef          	jal	528 <putchar>
 824:	f91ff06f          	j	7b4 <printf+0x80>
 828:	00c12783          	lw	a5,12(sp)
 82c:	0007a503          	lw	a0,0(a5)
 830:	00478793          	add	a5,a5,4
 834:	00f12623          	sw	a5,12(sp)
 838:	e8dff0ef          	jal	6c4 <print_hex>
 83c:	f79ff06f          	j	7b4 <printf+0x80>
 840:	00c12783          	lw	a5,12(sp)
 844:	0007a503          	lw	a0,0(a5)
 848:	00478793          	add	a5,a5,4
 84c:	00f12623          	sw	a5,12(sp)
 850:	d55ff0ef          	jal	5a4 <print_dec>
 854:	f61ff06f          	j	7b4 <printf+0x80>

00000858 <memcpy>:
 858:	00a5e7b3          	or	a5,a1,a0
 85c:	0037f713          	and	a4,a5,3
 860:	00050793          	mv	a5,a0
 864:	02070263          	beqz	a4,888 <memcpy+0x30>
 868:	00c786b3          	add	a3,a5,a2
 86c:	06060063          	beqz	a2,8cc <memcpy+0x74>
 870:	0005c703          	lbu	a4,0(a1)
 874:	00178793          	add	a5,a5,1
 878:	00158593          	add	a1,a1,1
 87c:	fee78fa3          	sb	a4,-1(a5)
 880:	fef698e3          	bne	a3,a5,870 <memcpy+0x18>
 884:	00008067          	ret
 888:	00300713          	li	a4,3
 88c:	fcc77ee3          	bgeu	a4,a2,868 <memcpy+0x10>
 890:	ffc60893          	add	a7,a2,-4
 894:	ffc8f893          	and	a7,a7,-4
 898:	00488893          	add	a7,a7,4
 89c:	011507b3          	add	a5,a0,a7
 8a0:	00058693          	mv	a3,a1
 8a4:	00050713          	mv	a4,a0
 8a8:	0006a803          	lw	a6,0(a3)
 8ac:	00470713          	add	a4,a4,4
 8b0:	00468693          	add	a3,a3,4
 8b4:	ff072e23          	sw	a6,-4(a4)
 8b8:	fef718e3          	bne	a4,a5,8a8 <memcpy+0x50>
 8bc:	00367613          	and	a2,a2,3
 8c0:	011585b3          	add	a1,a1,a7
 8c4:	00c786b3          	add	a3,a5,a2
 8c8:	fa0614e3          	bnez	a2,870 <memcpy+0x18>
 8cc:	00008067          	ret

000008d0 <memset>:
 8d0:	0ff5f593          	zext.b	a1,a1
 8d4:	00c50733          	add	a4,a0,a2
 8d8:	00050793          	mv	a5,a0
 8dc:	00060863          	beqz	a2,8ec <memset+0x1c>
 8e0:	00b78023          	sb	a1,0(a5)
 8e4:	00178793          	add	a5,a5,1
 8e8:	fef71ce3          	bne	a4,a5,8e0 <memset+0x10>
 8ec:	00008067          	ret

000008f0 <__mulsi3>:
 8f0:	00050613          	mv	a2,a0
 8f4:	00000513          	li	a0,0
 8f8:	0015f693          	and	a3,a1,1
 8fc:	00068463          	beqz	a3,904 <__mulsi3+0x14>
 900:	00c50533          	add	a0,a0,a2
 904:	0015d593          	srl	a1,a1,0x1
 908:	00161613          	sll	a2,a2,0x1
 90c:	fe0596e3          	bnez	a1,8f8 <__mulsi3+0x8>
 910:	00008067          	ret

00000914 <__divsi3>:
 914:	06054063          	bltz	a0,974 <__umodsi3+0x10>
 918:	0605c663          	bltz	a1,984 <__umodsi3+0x20>

0000091c <__udivsi3>:
 91c:	00058613          	mv	a2,a1
 920:	00050593          	mv	a1,a0
 924:	fff00513          	li	a0,-1
 928:	02060c63          	beqz	a2,960 <__udivsi3+0x44>
 92c:	00100693          	li	a3,1
 930:	00b67a63          	bgeu	a2,a1,944 <__udivsi3+0x28>
 934:	00c05863          	blez	a2,944 <__udivsi3+0x28>
 938:	00161613          	sll	a2,a2,0x1
 93c:	00169693          	sll	a3,a3,0x1
 940:	feb66ae3          	bltu	a2,a1,934 <__udivsi3+0x18>
 944:	00000513          	li	a0,0
 948:	00c5e663          	bltu	a1,a2,954 <__udivsi3+0x38>
 94c:	40c585b3          	sub	a1,a1,a2
 950:	00d56533          	or	a0,a0,a3
 954:	0016d693          	srl	a3,a3,0x1
 958:	00165613          	srl	a2,a2,0x1
 95c:	fe0696e3          	bnez	a3,948 <__udivsi3+0x2c>
 960:	00008067          	ret

00000964 <__umodsi3>:
 964:	00008293          	mv	t0,ra
 968:	fb5ff0ef          	jal	91c <__udivsi3>
 96c:	00058513          	mv	a0,a1
 970:	00028067          	jr	t0
 974:	40a00533          	neg	a0,a0
 978:	0005d863          	bgez	a1,988 <__umodsi3+0x24>
 97c:	40b005b3          	neg	a1,a1
 980:	f95ff06f          	j	914 <__divsi3>
 984:	40b005b3          	neg	a1,a1
 988:	00008293          	mv	t0,ra
 98c:	f89ff0ef          	jal	914 <__divsi3>
 990:	40a00533          	neg	a0,a0
 994:	00028067          	jr	t0

00000998 <__modsi3>:
 998:	00008293          	mv	t0,ra
 99c:	0005ca63          	bltz	a1,9b0 <__modsi3+0x18>
 9a0:	00054c63          	bltz	a0,9b8 <__modsi3+0x20>
 9a4:	f79ff0ef          	jal	91c <__udivsi3>
 9a8:	00058513          	mv	a0,a1
 9ac:	00028067          	jr	t0
 9b0:	40b005b3          	neg	a1,a1
 9b4:	fe0558e3          	bgez	a0,9a4 <__modsi3+0xc>
 9b8:	40a00533          	neg	a0,a0
 9bc:	f61ff0ef          	jal	91c <__udivsi3>
 9c0:	40b00533          	neg	a0,a1
 9c4:	00028067          	jr	t0

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
   1001e:	75706d6f          	jal	s10,16f74 <__modsi3+0x165dc>
   10022:	6174                	.2byte	0x6174
   10024:	6974                	.2byte	0x6974
   10026:	6f206e6f          	jal	t3,16718 <__modsi3+0x15d80>
   1002a:	2066                	.2byte	0x2066
   1002c:	4950                	.2byte	0x4950
   1002e:	6120                	.2byte	0x6120
   10030:	7070                	.2byte	0x7070
   10032:	6972                	.2byte	0x6972
   10034:	6178                	.2byte	0x6178
   10036:	6974                	.2byte	0x6974
   10038:	00006e6f          	jal	t3,16038 <__modsi3+0x156a0>
   1003c:	754a                	.2byte	0x754a
   1003e:	206e                	.2byte	0x206e
   10040:	3320                	.2byte	0x3320
   10042:	3220                	.2byte	0x3220
   10044:	3230                	.2byte	0x3230
   10046:	0034                	.2byte	0x34
   10048:	4928                	.2byte	0x4928
   1004a:	2949                	.2byte	0x2949
   1004c:	4320                	.2byte	0x4320
   1004e:	69706d6f          	jal	s10,16ee4 <__modsi3+0x1654c>
   10052:	616c                	.2byte	0x616c
   10054:	6974                	.2byte	0x6974
   10056:	64206e6f          	jal	t3,16698 <__modsi3+0x15d00>
   1005a:	7461                	.2byte	0x7461
   1005c:	2065                	.2byte	0x2065
   1005e:	203a                	.2byte	0x203a
   10060:	7325                	.2byte	0x7325
   10062:	000a                	.2byte	0xa
   10064:	3730                	.2byte	0x3730
   10066:	323a                	.2byte	0x323a
   10068:	3a38                	.2byte	0x3a38
   1006a:	3032                	.2byte	0x3032
   1006c:	0000                	.2byte	0x0
   1006e:	0000                	.2byte	0x0
   10070:	4928                	.2byte	0x4928
   10072:	2949                	.2byte	0x2949
   10074:	4320                	.2byte	0x4320
   10076:	69706d6f          	jal	s10,16f0c <__modsi3+0x16574>
   1007a:	616c                	.2byte	0x616c
   1007c:	6974                	.2byte	0x6974
   1007e:	74206e6f          	jal	t3,167c0 <__modsi3+0x15e28>
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
   100a0:	6420666f          	jal	a2,166e2 <__modsi3+0x15d4a>
   100a4:	6769                	.2byte	0x6769
   100a6:	7469                	.2byte	0x7469
   100a8:	203a2073          	.4byte	0x203a2073
   100ac:	6425                	.2byte	0x6425
   100ae:	000a                	.2byte	0xa
   100b0:	4928                	.2byte	0x4928
   100b2:	2949                	.2byte	0x2949
   100b4:	4d20                	.2byte	0x4d20
   100b6:	6d65                	.2byte	0x6d65
   100b8:	2079726f          	jal	tp,a7abe <__modsi3+0xa7126>
   100bc:	6f66                	.2byte	0x6f66
   100be:	7270746f          	jal	s0,17fe4 <__modsi3+0x1764c>
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
   10114:	200a                	.2byte	0x200a
   10116:	0020                	.2byte	0x20
   10118:	3130                	.2byte	0x3130
   1011a:	3332                	.2byte	0x3332
   1011c:	3534                	.2byte	0x3534
   1011e:	3736                	.2byte	0x3736
   10120:	3938                	.2byte	0x3938
   10122:	4241                	.2byte	0x4241
   10124:	46454443          	.4byte	0x46454443
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
