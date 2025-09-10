
./bin/coremark.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
       0:	004001b7          	lui	gp,0x400
       4:	00020137          	lui	sp,0x20
       8:	000047b7          	lui	a5,0x4
       c:	0d000737          	lui	a4,0xd000
      10:	40078793          	add	a5,a5,1024 # 4400 <memset+0xa74>
      14:	00f72023          	sw	a5,0(a4) # d000000 <IO_BASE+0xcc00000>
      18:	161000ef          	jal	978 <main>
      1c:	0d000737          	lui	a4,0xd000
      20:	04400793          	li	a5,68
      24:	00f72023          	sw	a5,0(a4) # d000000 <IO_BASE+0xcc00000>
      28:	00100073          	ebreak

0000002c <loop>:
      2c:	000000ef          	jal	2c <loop>

00000030 <cmp_idx>:
      30:	00060a63          	beqz	a2,44 <cmp_idx+0x14>
      34:	00251503          	lh	a0,2(a0)
      38:	00259783          	lh	a5,2(a1)
      3c:	40f50533          	sub	a0,a0,a5
      40:	00008067          	ret
      44:	00051783          	lh	a5,0(a0)
      48:	01079713          	sll	a4,a5,0x10
      4c:	01075713          	srl	a4,a4,0x10
      50:	00875713          	srl	a4,a4,0x8
      54:	f007f793          	and	a5,a5,-256
      58:	00e7e7b3          	or	a5,a5,a4
      5c:	00f51023          	sh	a5,0(a0)
      60:	00059783          	lh	a5,0(a1)
      64:	00251503          	lh	a0,2(a0)
      68:	01079713          	sll	a4,a5,0x10
      6c:	01075713          	srl	a4,a4,0x10
      70:	00875713          	srl	a4,a4,0x8
      74:	f007f793          	and	a5,a5,-256
      78:	00e7e7b3          	or	a5,a5,a4
      7c:	00f59023          	sh	a5,0(a1)
      80:	00259783          	lh	a5,2(a1)
      84:	40f50533          	sub	a0,a0,a5
      88:	00008067          	ret

0000008c <calc_func>:
      8c:	fe010113          	add	sp,sp,-32 # 1ffe0 <seed5_volatile+0xf820>
      90:	00812c23          	sw	s0,24(sp)
      94:	00051403          	lh	s0,0(a0)
      98:	00112e23          	sw	ra,28(sp)
      9c:	40745793          	sra	a5,s0,0x7
      a0:	0017f793          	and	a5,a5,1
      a4:	00078c63          	beqz	a5,bc <calc_func+0x30>
      a8:	01c12083          	lw	ra,28(sp)
      ac:	07f47513          	and	a0,s0,127
      b0:	01812403          	lw	s0,24(sp)
      b4:	02010113          	add	sp,sp,32
      b8:	00008067          	ret
      bc:	40345713          	sra	a4,s0,0x3
      c0:	00f77713          	and	a4,a4,15
      c4:	00471693          	sll	a3,a4,0x4
      c8:	0385d783          	lhu	a5,56(a1)
      cc:	00912a23          	sw	s1,20(sp)
      d0:	01312623          	sw	s3,12(sp)
      d4:	00058493          	mv	s1,a1
      d8:	01212823          	sw	s2,16(sp)
      dc:	00d705b3          	add	a1,a4,a3
      e0:	00747613          	and	a2,s0,7
      e4:	00050993          	mv	s3,a0
      e8:	00058713          	mv	a4,a1
      ec:	08060063          	beqz	a2,16c <calc_func+0xe0>
      f0:	00100693          	li	a3,1
      f4:	06d61463          	bne	a2,a3,15c <calc_func+0xd0>
      f8:	00078613          	mv	a2,a5
      fc:	02848513          	add	a0,s1,40
     100:	281010ef          	jal	1b80 <core_bench_matrix>
     104:	03c4d783          	lhu	a5,60(s1)
     108:	01051913          	sll	s2,a0,0x10
     10c:	41095913          	sra	s2,s2,0x10
     110:	08079c63          	bnez	a5,1a8 <calc_func+0x11c>
     114:	0384d783          	lhu	a5,56(s1)
     118:	02a49e23          	sh	a0,60(s1)
     11c:	00078593          	mv	a1,a5
     120:	4f0020ef          	jal	2610 <crcu16>
     124:	00050793          	mv	a5,a0
     128:	f0047413          	and	s0,s0,-256
     12c:	07f97513          	and	a0,s2,127
     130:	00856433          	or	s0,a0,s0
     134:	02f49c23          	sh	a5,56(s1)
     138:	08046413          	or	s0,s0,128
     13c:	00899023          	sh	s0,0(s3)
     140:	01c12083          	lw	ra,28(sp)
     144:	01812403          	lw	s0,24(sp)
     148:	01412483          	lw	s1,20(sp)
     14c:	01012903          	lw	s2,16(sp)
     150:	00c12983          	lw	s3,12(sp)
     154:	02010113          	add	sp,sp,32
     158:	00008067          	ret
     15c:	01041513          	sll	a0,s0,0x10
     160:	01055513          	srl	a0,a0,0x10
     164:	00040913          	mv	s2,s0
     168:	fb5ff06f          	j	11c <calc_func+0x90>
     16c:	02100693          	li	a3,33
     170:	00b6e463          	bltu	a3,a1,178 <calc_func+0xec>
     174:	02200713          	li	a4,34
     178:	00249683          	lh	a3,2(s1)
     17c:	00049603          	lh	a2,0(s1)
     180:	0144a583          	lw	a1,20(s1)
     184:	0184a503          	lw	a0,24(s1)
     188:	220020ef          	jal	23a8 <core_bench_state>
     18c:	03e4d783          	lhu	a5,62(s1)
     190:	01051913          	sll	s2,a0,0x10
     194:	41095913          	sra	s2,s2,0x10
     198:	00079863          	bnez	a5,1a8 <calc_func+0x11c>
     19c:	0384d783          	lhu	a5,56(s1)
     1a0:	02a49f23          	sh	a0,62(s1)
     1a4:	f79ff06f          	j	11c <calc_func+0x90>
     1a8:	0384d783          	lhu	a5,56(s1)
     1ac:	f71ff06f          	j	11c <calc_func+0x90>

000001b0 <cmp_complex>:
     1b0:	ff010113          	add	sp,sp,-16
     1b4:	00912223          	sw	s1,4(sp)
     1b8:	00058493          	mv	s1,a1
     1bc:	00060593          	mv	a1,a2
     1c0:	00112623          	sw	ra,12(sp)
     1c4:	00812423          	sw	s0,8(sp)
     1c8:	00060413          	mv	s0,a2
     1cc:	ec1ff0ef          	jal	8c <calc_func>
     1d0:	00050793          	mv	a5,a0
     1d4:	00040593          	mv	a1,s0
     1d8:	00048513          	mv	a0,s1
     1dc:	00078413          	mv	s0,a5
     1e0:	eadff0ef          	jal	8c <calc_func>
     1e4:	00c12083          	lw	ra,12(sp)
     1e8:	40a40533          	sub	a0,s0,a0
     1ec:	00812403          	lw	s0,8(sp)
     1f0:	00412483          	lw	s1,4(sp)
     1f4:	01010113          	add	sp,sp,16
     1f8:	00008067          	ret

000001fc <copy_info>:
     1fc:	00059703          	lh	a4,0(a1)
     200:	00259783          	lh	a5,2(a1)
     204:	00e51023          	sh	a4,0(a0)
     208:	00f51123          	sh	a5,2(a0)
     20c:	00008067          	ret

00000210 <core_list_insert_new>:
     210:	00062803          	lw	a6,0(a2)
     214:	00880893          	add	a7,a6,8
     218:	04e8f663          	bgeu	a7,a4,264 <core_list_insert_new+0x54>
     21c:	0006a703          	lw	a4,0(a3)
     220:	00470313          	add	t1,a4,4
     224:	04f37063          	bgeu	t1,a5,264 <core_list_insert_new+0x54>
     228:	01162023          	sw	a7,0(a2)
     22c:	00052783          	lw	a5,0(a0)
     230:	00059883          	lh	a7,0(a1)
     234:	00259603          	lh	a2,2(a1)
     238:	00f82023          	sw	a5,0(a6)
     23c:	01052023          	sw	a6,0(a0)
     240:	00e82223          	sw	a4,4(a6)
     244:	0006a783          	lw	a5,0(a3)
     248:	00080513          	mv	a0,a6
     24c:	00478793          	add	a5,a5,4
     250:	00f6a023          	sw	a5,0(a3)
     254:	00482783          	lw	a5,4(a6)
     258:	01179023          	sh	a7,0(a5)
     25c:	00c79123          	sh	a2,2(a5)
     260:	00008067          	ret
     264:	00000813          	li	a6,0
     268:	00080513          	mv	a0,a6
     26c:	00008067          	ret

00000270 <core_list_remove>:
     270:	00050793          	mv	a5,a0
     274:	00052503          	lw	a0,0(a0)
     278:	0047a683          	lw	a3,4(a5)
     27c:	00452603          	lw	a2,4(a0)
     280:	00052703          	lw	a4,0(a0)
     284:	00c7a223          	sw	a2,4(a5)
     288:	00d52223          	sw	a3,4(a0)
     28c:	00e7a023          	sw	a4,0(a5)
     290:	00052023          	sw	zero,0(a0)
     294:	00008067          	ret

00000298 <core_list_undo_remove>:
     298:	0045a603          	lw	a2,4(a1)
     29c:	00452683          	lw	a3,4(a0)
     2a0:	0005a703          	lw	a4,0(a1)
     2a4:	00c52223          	sw	a2,4(a0)
     2a8:	00d5a223          	sw	a3,4(a1)
     2ac:	00e52023          	sw	a4,0(a0)
     2b0:	00a5a023          	sw	a0,0(a1)
     2b4:	00008067          	ret

000002b8 <core_list_find>:
     2b8:	00259703          	lh	a4,2(a1)
     2bc:	02074263          	bltz	a4,2e0 <core_list_find+0x28>
     2c0:	00051863          	bnez	a0,2d0 <core_list_find+0x18>
     2c4:	00008067          	ret
     2c8:	00052503          	lw	a0,0(a0)
     2cc:	02050c63          	beqz	a0,304 <core_list_find+0x4c>
     2d0:	00452783          	lw	a5,4(a0)
     2d4:	00279783          	lh	a5,2(a5)
     2d8:	fee798e3          	bne	a5,a4,2c8 <core_list_find+0x10>
     2dc:	00008067          	ret
     2e0:	02050263          	beqz	a0,304 <core_list_find+0x4c>
     2e4:	00059703          	lh	a4,0(a1)
     2e8:	00c0006f          	j	2f4 <core_list_find+0x3c>
     2ec:	00052503          	lw	a0,0(a0)
     2f0:	00050c63          	beqz	a0,308 <core_list_find+0x50>
     2f4:	00452783          	lw	a5,4(a0)
     2f8:	0007c783          	lbu	a5,0(a5)
     2fc:	fee798e3          	bne	a5,a4,2ec <core_list_find+0x34>
     300:	00008067          	ret
     304:	00000513          	li	a0,0
     308:	00008067          	ret

0000030c <core_list_reverse>:
     30c:	02050063          	beqz	a0,32c <core_list_reverse+0x20>
     310:	00000713          	li	a4,0
     314:	0080006f          	j	31c <core_list_reverse+0x10>
     318:	00078513          	mv	a0,a5
     31c:	00052783          	lw	a5,0(a0)
     320:	00e52023          	sw	a4,0(a0)
     324:	00050713          	mv	a4,a0
     328:	fe0798e3          	bnez	a5,318 <core_list_reverse+0xc>
     32c:	00008067          	ret

00000330 <core_list_mergesort>:
     330:	fd010113          	add	sp,sp,-48
     334:	01312e23          	sw	s3,28(sp)
     338:	01512a23          	sw	s5,20(sp)
     33c:	01712623          	sw	s7,12(sp)
     340:	01812423          	sw	s8,8(sp)
     344:	01a12023          	sw	s10,0(sp)
     348:	02112623          	sw	ra,44(sp)
     34c:	02812423          	sw	s0,40(sp)
     350:	02912223          	sw	s1,36(sp)
     354:	03212023          	sw	s2,32(sp)
     358:	01412c23          	sw	s4,24(sp)
     35c:	01612823          	sw	s6,16(sp)
     360:	01912223          	sw	s9,4(sp)
     364:	00050993          	mv	s3,a0
     368:	00058c13          	mv	s8,a1
     36c:	00060b93          	mv	s7,a2
     370:	00100a93          	li	s5,1
     374:	00100d13          	li	s10,1
     378:	0c098263          	beqz	s3,43c <core_list_mergesort+0x10c>
     37c:	00000c93          	li	s9,0
     380:	00000493          	li	s1,0
     384:	00000b13          	li	s6,0
     388:	001c8c93          	add	s9,s9,1
     38c:	00098793          	mv	a5,s3
     390:	00000413          	li	s0,0
     394:	01545863          	bge	s0,s5,3a4 <core_list_mergesort+0x74>
     398:	0007a783          	lw	a5,0(a5)
     39c:	00140413          	add	s0,s0,1
     3a0:	fe079ae3          	bnez	a5,394 <core_list_mergesort+0x64>
     3a4:	00098913          	mv	s2,s3
     3a8:	000a8a13          	mv	s4,s5
     3ac:	00078993          	mv	s3,a5
     3b0:	02805263          	blez	s0,3d4 <core_list_mergesort+0xa4>
     3b4:	040a1463          	bnez	s4,3fc <core_list_mergesort+0xcc>
     3b8:	00090793          	mv	a5,s2
     3bc:	00092903          	lw	s2,0(s2)
     3c0:	fff40413          	add	s0,s0,-1
     3c4:	02048663          	beqz	s1,3f0 <core_list_mergesort+0xc0>
     3c8:	00f4a023          	sw	a5,0(s1)
     3cc:	00078493          	mv	s1,a5
     3d0:	fe8042e3          	bgtz	s0,3b4 <core_list_mergesort+0x84>
     3d4:	05405863          	blez	s4,424 <core_list_mergesort+0xf4>
     3d8:	04098863          	beqz	s3,428 <core_list_mergesort+0xf8>
     3dc:	02041263          	bnez	s0,400 <core_list_mergesort+0xd0>
     3e0:	00098793          	mv	a5,s3
     3e4:	fffa0a13          	add	s4,s4,-1
     3e8:	0009a983          	lw	s3,0(s3)
     3ec:	fc049ee3          	bnez	s1,3c8 <core_list_mergesort+0x98>
     3f0:	00078b13          	mv	s6,a5
     3f4:	00078493          	mv	s1,a5
     3f8:	fd9ff06f          	j	3d0 <core_list_mergesort+0xa0>
     3fc:	fa098ee3          	beqz	s3,3b8 <core_list_mergesort+0x88>
     400:	0049a583          	lw	a1,4(s3)
     404:	00492503          	lw	a0,4(s2)
     408:	000b8613          	mv	a2,s7
     40c:	000c00e7          	jalr	s8
     410:	faa054e3          	blez	a0,3b8 <core_list_mergesort+0x88>
     414:	00098793          	mv	a5,s3
     418:	fffa0a13          	add	s4,s4,-1
     41c:	0009a983          	lw	s3,0(s3)
     420:	fa5ff06f          	j	3c4 <core_list_mergesort+0x94>
     424:	f60992e3          	bnez	s3,388 <core_list_mergesort+0x58>
     428:	0004a023          	sw	zero,0(s1)
     42c:	01ac8c63          	beq	s9,s10,444 <core_list_mergesort+0x114>
     430:	000b0993          	mv	s3,s6
     434:	001a9a93          	sll	s5,s5,0x1
     438:	f40992e3          	bnez	s3,37c <core_list_mergesort+0x4c>
     43c:	00002023          	sw	zero,0(zero) # 0 <start>
     440:	00100073          	ebreak
     444:	02c12083          	lw	ra,44(sp)
     448:	02812403          	lw	s0,40(sp)
     44c:	02412483          	lw	s1,36(sp)
     450:	02012903          	lw	s2,32(sp)
     454:	01c12983          	lw	s3,28(sp)
     458:	01812a03          	lw	s4,24(sp)
     45c:	01412a83          	lw	s5,20(sp)
     460:	00c12b83          	lw	s7,12(sp)
     464:	00812c03          	lw	s8,8(sp)
     468:	00412c83          	lw	s9,4(sp)
     46c:	00012d03          	lw	s10,0(sp)
     470:	000b0513          	mv	a0,s6
     474:	01012b03          	lw	s6,16(sp)
     478:	03010113          	add	sp,sp,48
     47c:	00008067          	ret

00000480 <core_bench_list>:
     480:	00050613          	mv	a2,a0
     484:	00451503          	lh	a0,4(a0)
     488:	fe010113          	add	sp,sp,-32
     48c:	00812c23          	sw	s0,24(sp)
     490:	00112e23          	sw	ra,28(sp)
     494:	00912a23          	sw	s1,20(sp)
     498:	01212823          	sw	s2,16(sp)
     49c:	01312623          	sw	s3,12(sp)
     4a0:	01412423          	sw	s4,8(sp)
     4a4:	01512223          	sw	s5,4(sp)
     4a8:	02462403          	lw	s0,36(a2)
     4ac:	26a05263          	blez	a0,710 <core_bench_list+0x290>
     4b0:	00058493          	mv	s1,a1
     4b4:	00000893          	li	a7,0
     4b8:	00000e13          	li	t3,0
     4bc:	00000313          	li	t1,0
     4c0:	00000813          	li	a6,0
     4c4:	0ff8fa13          	zext.b	s4,a7
     4c8:	1c04c863          	bltz	s1,698 <core_bench_list+0x218>
     4cc:	24040a63          	beqz	s0,720 <core_bench_list+0x2a0>
     4d0:	00040793          	mv	a5,s0
     4d4:	00c0006f          	j	4e0 <core_bench_list+0x60>
     4d8:	0007a783          	lw	a5,0(a5)
     4dc:	00078863          	beqz	a5,4ec <core_bench_list+0x6c>
     4e0:	0047a703          	lw	a4,4(a5)
     4e4:	00271703          	lh	a4,2(a4)
     4e8:	fe9718e3          	bne	a4,s1,4d8 <core_bench_list+0x58>
     4ec:	00000693          	li	a3,0
     4f0:	0080006f          	j	4f8 <core_bench_list+0x78>
     4f4:	00070413          	mv	s0,a4
     4f8:	00042703          	lw	a4,0(s0)
     4fc:	00d42023          	sw	a3,0(s0)
     500:	00040693          	mv	a3,s0
     504:	fe0718e3          	bnez	a4,4f4 <core_bench_list+0x74>
     508:	1a078a63          	beqz	a5,6bc <core_bench_list+0x23c>
     50c:	0047a703          	lw	a4,4(a5)
     510:	00071703          	lh	a4,0(a4)
     514:	00177693          	and	a3,a4,1
     518:	00068c63          	beqz	a3,530 <core_bench_list+0xb0>
     51c:	40975713          	sra	a4,a4,0x9
     520:	00177713          	and	a4,a4,1
     524:	00e80733          	add	a4,a6,a4
     528:	01071813          	sll	a6,a4,0x10
     52c:	01085813          	srl	a6,a6,0x10
     530:	0007a703          	lw	a4,0(a5)
     534:	00070c63          	beqz	a4,54c <core_bench_list+0xcc>
     538:	00072683          	lw	a3,0(a4)
     53c:	00d7a023          	sw	a3,0(a5)
     540:	00042783          	lw	a5,0(s0)
     544:	00f72023          	sw	a5,0(a4)
     548:	00e42023          	sw	a4,0(s0)
     54c:	00130313          	add	t1,t1,1
     550:	01031313          	sll	t1,t1,0x10
     554:	01035313          	srl	t1,t1,0x10
     558:	0004c863          	bltz	s1,568 <core_bench_list+0xe8>
     55c:	00148493          	add	s1,s1,1
     560:	01049493          	sll	s1,s1,0x10
     564:	4104d493          	sra	s1,s1,0x10
     568:	00188793          	add	a5,a7,1
     56c:	01079893          	sll	a7,a5,0x10
     570:	4108d893          	sra	a7,a7,0x10
     574:	f51518e3          	bne	a0,a7,4c4 <core_bench_list+0x44>
     578:	00231793          	sll	a5,t1,0x2
     57c:	41c787b3          	sub	a5,a5,t3
     580:	00f80833          	add	a6,a6,a5
     584:	01081913          	sll	s2,a6,0x10
     588:	01095913          	srl	s2,s2,0x10
     58c:	00b05a63          	blez	a1,5a0 <core_bench_list+0x120>
     590:	00040513          	mv	a0,s0
     594:	1b000593          	li	a1,432
     598:	d99ff0ef          	jal	330 <core_list_mergesort>
     59c:	00050413          	mv	s0,a0
     5a0:	00042783          	lw	a5,0(s0)
     5a4:	00040993          	mv	s3,s0
     5a8:	0007aa83          	lw	s5,0(a5)
     5ac:	0047a703          	lw	a4,4(a5)
     5b0:	004aa603          	lw	a2,4(s5)
     5b4:	000aa683          	lw	a3,0(s5)
     5b8:	00c7a223          	sw	a2,4(a5)
     5bc:	00eaa223          	sw	a4,4(s5)
     5c0:	00d7a023          	sw	a3,0(a5)
     5c4:	000aa023          	sw	zero,0(s5)
     5c8:	0004d863          	bgez	s1,5d8 <core_bench_list+0x158>
     5cc:	0bc0006f          	j	688 <core_bench_list+0x208>
     5d0:	0009a983          	lw	s3,0(s3)
     5d4:	10098a63          	beqz	s3,6e8 <core_bench_list+0x268>
     5d8:	0049a783          	lw	a5,4(s3)
     5dc:	00279783          	lh	a5,2(a5)
     5e0:	fe9798e3          	bne	a5,s1,5d0 <core_bench_list+0x150>
     5e4:	00442783          	lw	a5,4(s0)
     5e8:	00090593          	mv	a1,s2
     5ec:	00079503          	lh	a0,0(a5)
     5f0:	1c8020ef          	jal	27b8 <crc16>
     5f4:	0009a983          	lw	s3,0(s3)
     5f8:	00050913          	mv	s2,a0
     5fc:	fe0994e3          	bnez	s3,5e4 <core_bench_list+0x164>
     600:	00042983          	lw	s3,0(s0)
     604:	004aa703          	lw	a4,4(s5)
     608:	0049a683          	lw	a3,4(s3)
     60c:	0009a783          	lw	a5,0(s3)
     610:	00daa223          	sw	a3,4(s5)
     614:	00e9a223          	sw	a4,4(s3)
     618:	00faa023          	sw	a5,0(s5)
     61c:	00040513          	mv	a0,s0
     620:	0159a023          	sw	s5,0(s3)
     624:	00000613          	li	a2,0
     628:	03000593          	li	a1,48
     62c:	d05ff0ef          	jal	330 <core_list_mergesort>
     630:	00052403          	lw	s0,0(a0)
     634:	00050493          	mv	s1,a0
     638:	02040063          	beqz	s0,658 <core_bench_list+0x1d8>
     63c:	0044a783          	lw	a5,4(s1)
     640:	00090593          	mv	a1,s2
     644:	00079503          	lh	a0,0(a5)
     648:	170020ef          	jal	27b8 <crc16>
     64c:	00042403          	lw	s0,0(s0)
     650:	00050913          	mv	s2,a0
     654:	fe0414e3          	bnez	s0,63c <core_bench_list+0x1bc>
     658:	01c12083          	lw	ra,28(sp)
     65c:	01812403          	lw	s0,24(sp)
     660:	01412483          	lw	s1,20(sp)
     664:	00c12983          	lw	s3,12(sp)
     668:	00812a03          	lw	s4,8(sp)
     66c:	00412a83          	lw	s5,4(sp)
     670:	00090513          	mv	a0,s2
     674:	01012903          	lw	s2,16(sp)
     678:	02010113          	add	sp,sp,32
     67c:	00008067          	ret
     680:	0009a983          	lw	s3,0(s3)
     684:	06098263          	beqz	s3,6e8 <core_bench_list+0x268>
     688:	0049a783          	lw	a5,4(s3)
     68c:	0007c783          	lbu	a5,0(a5)
     690:	fefa18e3          	bne	s4,a5,680 <core_bench_list+0x200>
     694:	f51ff06f          	j	5e4 <core_bench_list+0x164>
     698:	08040463          	beqz	s0,720 <core_bench_list+0x2a0>
     69c:	00040793          	mv	a5,s0
     6a0:	00c0006f          	j	6ac <core_bench_list+0x22c>
     6a4:	0007a783          	lw	a5,0(a5)
     6a8:	e40782e3          	beqz	a5,4ec <core_bench_list+0x6c>
     6ac:	0047a703          	lw	a4,4(a5)
     6b0:	00074703          	lbu	a4,0(a4)
     6b4:	feea18e3          	bne	s4,a4,6a4 <core_bench_list+0x224>
     6b8:	e35ff06f          	j	4ec <core_bench_list+0x6c>
     6bc:	00042783          	lw	a5,0(s0)
     6c0:	001e0e13          	add	t3,t3,1
     6c4:	010e1e13          	sll	t3,t3,0x10
     6c8:	0047a783          	lw	a5,4(a5)
     6cc:	010e5e13          	srl	t3,t3,0x10
     6d0:	00178783          	lb	a5,1(a5)
     6d4:	0017f793          	and	a5,a5,1
     6d8:	00f807b3          	add	a5,a6,a5
     6dc:	01079813          	sll	a6,a5,0x10
     6e0:	01085813          	srl	a6,a6,0x10
     6e4:	e75ff06f          	j	558 <core_bench_list+0xd8>
     6e8:	00042983          	lw	s3,0(s0)
     6ec:	f0098ee3          	beqz	s3,608 <core_bench_list+0x188>
     6f0:	00442783          	lw	a5,4(s0)
     6f4:	00090593          	mv	a1,s2
     6f8:	00079503          	lh	a0,0(a5)
     6fc:	0bc020ef          	jal	27b8 <crc16>
     700:	0009a983          	lw	s3,0(s3)
     704:	00050913          	mv	s2,a0
     708:	ec099ee3          	bnez	s3,5e4 <core_bench_list+0x164>
     70c:	ef5ff06f          	j	600 <core_bench_list+0x180>
     710:	00000a13          	li	s4,0
     714:	00058493          	mv	s1,a1
     718:	00000913          	li	s2,0
     71c:	e71ff06f          	j	58c <core_bench_list+0x10c>
     720:	00002783          	lw	a5,0(zero) # 0 <start>
     724:	00100073          	ebreak

00000728 <core_list_init>:
     728:	fe010113          	add	sp,sp,-32
     72c:	01212823          	sw	s2,16(sp)
     730:	00058913          	mv	s2,a1
     734:	01400593          	li	a1,20
     738:	00812c23          	sw	s0,24(sp)
     73c:	01312623          	sw	s3,12(sp)
     740:	00112e23          	sw	ra,28(sp)
     744:	00060993          	mv	s3,a2
     748:	00912a23          	sw	s1,20(sp)
     74c:	595020ef          	jal	34e0 <__udivsi3>
     750:	ffe50513          	add	a0,a0,-2
     754:	00351613          	sll	a2,a0,0x3
     758:	00c90633          	add	a2,s2,a2
     75c:	ffff87b7          	lui	a5,0xffff8
     760:	00092023          	sw	zero,0(s2)
     764:	00c92223          	sw	a2,4(s2)
     768:	08078793          	add	a5,a5,128 # ffff8080 <IO_BASE+0xffbf8080>
     76c:	00251e13          	sll	t3,a0,0x2
     770:	00f61023          	sh	a5,0(a2)
     774:	00061123          	sh	zero,2(a2)
     778:	01090693          	add	a3,s2,16
     77c:	01c60e33          	add	t3,a2,t3
     780:	00890413          	add	s0,s2,8
     784:	00460793          	add	a5,a2,4
     788:	14c6fc63          	bgeu	a3,a2,8e0 <core_list_init+0x1b8>
     78c:	00860893          	add	a7,a2,8
     790:	15c8f863          	bgeu	a7,t3,8e0 <core_list_init+0x1b8>
     794:	00f92623          	sw	a5,12(s2)
     798:	ffff87b7          	lui	a5,0xffff8
     79c:	00092423          	sw	zero,8(s2)
     7a0:	00892023          	sw	s0,0(s2)
     7a4:	fff00713          	li	a4,-1
     7a8:	fff7c793          	not	a5,a5
     7ac:	00e61223          	sh	a4,4(a2)
     7b0:	00f61323          	sh	a5,6(a2)
     7b4:	06050a63          	beqz	a0,828 <core_list_init+0x100>
     7b8:	01099e93          	sll	t4,s3,0x10
     7bc:	ffff8f37          	lui	t5,0xffff8
     7c0:	010ede93          	srl	t4,t4,0x10
     7c4:	00000813          	li	a6,0
     7c8:	ffff4f13          	not	t5,t5
     7cc:	01081713          	sll	a4,a6,0x10
     7d0:	01075713          	srl	a4,a4,0x10
     7d4:	00eec7b3          	xor	a5,t4,a4
     7d8:	00379793          	sll	a5,a5,0x3
     7dc:	00777713          	and	a4,a4,7
     7e0:	0787f793          	and	a5,a5,120
     7e4:	00e7e7b3          	or	a5,a5,a4
     7e8:	00879593          	sll	a1,a5,0x8
     7ec:	00868713          	add	a4,a3,8
     7f0:	00180813          	add	a6,a6,1
     7f4:	00488313          	add	t1,a7,4
     7f8:	00b787b3          	add	a5,a5,a1
     7fc:	02c77463          	bgeu	a4,a2,824 <core_list_init+0xfc>
     800:	03c37263          	bgeu	t1,t3,824 <core_list_init+0xfc>
     804:	0086a023          	sw	s0,0(a3)
     808:	00d92023          	sw	a3,0(s2)
     80c:	0116a223          	sw	a7,4(a3)
     810:	00f89023          	sh	a5,0(a7)
     814:	01e89123          	sh	t5,2(a7)
     818:	00068413          	mv	s0,a3
     81c:	00030893          	mv	a7,t1
     820:	00070693          	mv	a3,a4
     824:	fb0514e3          	bne	a0,a6,7cc <core_list_init+0xa4>
     828:	00042483          	lw	s1,0(s0)
     82c:	08048663          	beqz	s1,8b8 <core_list_init+0x190>
     830:	00500593          	li	a1,5
     834:	4ad020ef          	jal	34e0 <__udivsi3>
     838:	000045b7          	lui	a1,0x4
     83c:	20000713          	li	a4,512
     840:	00100693          	li	a3,1
     844:	fff58593          	add	a1,a1,-1 # 3fff <memset+0x673>
     848:	0300006f          	j	878 <core_list_init+0x150>
     84c:	01069793          	sll	a5,a3,0x10
     850:	0004a803          	lw	a6,0(s1)
     854:	4107d793          	sra	a5,a5,0x10
     858:	10070713          	add	a4,a4,256
     85c:	01071713          	sll	a4,a4,0x10
     860:	00f61123          	sh	a5,2(a2)
     864:	00048413          	mv	s0,s1
     868:	00168693          	add	a3,a3,1
     86c:	01075713          	srl	a4,a4,0x10
     870:	04080463          	beqz	a6,8b8 <core_list_init+0x190>
     874:	00080493          	mv	s1,a6
     878:	00d9c633          	xor	a2,s3,a3
     87c:	70077793          	and	a5,a4,1792
     880:	00c7e7b3          	or	a5,a5,a2
     884:	00b7f7b3          	and	a5,a5,a1
     888:	00442603          	lw	a2,4(s0)
     88c:	fca6e0e3          	bltu	a3,a0,84c <core_list_init+0x124>
     890:	0004a803          	lw	a6,0(s1)
     894:	01079793          	sll	a5,a5,0x10
     898:	4107d793          	sra	a5,a5,0x10
     89c:	10070713          	add	a4,a4,256
     8a0:	01071713          	sll	a4,a4,0x10
     8a4:	00f61123          	sh	a5,2(a2)
     8a8:	00048413          	mv	s0,s1
     8ac:	00168693          	add	a3,a3,1
     8b0:	01075713          	srl	a4,a4,0x10
     8b4:	fc0810e3          	bnez	a6,874 <core_list_init+0x14c>
     8b8:	01812403          	lw	s0,24(sp)
     8bc:	01c12083          	lw	ra,28(sp)
     8c0:	01412483          	lw	s1,20(sp)
     8c4:	00c12983          	lw	s3,12(sp)
     8c8:	00090513          	mv	a0,s2
     8cc:	01012903          	lw	s2,16(sp)
     8d0:	00000613          	li	a2,0
     8d4:	03000593          	li	a1,48
     8d8:	02010113          	add	sp,sp,32
     8dc:	a55ff06f          	j	330 <core_list_mergesort>
     8e0:	00040693          	mv	a3,s0
     8e4:	00078893          	mv	a7,a5
     8e8:	00000413          	li	s0,0
     8ec:	ec9ff06f          	j	7b4 <core_list_init+0x8c>

000008f0 <iterate>:
     8f0:	ff010113          	add	sp,sp,-16
     8f4:	01212023          	sw	s2,0(sp)
     8f8:	01c52903          	lw	s2,28(a0)
     8fc:	00112623          	sw	ra,12(sp)
     900:	02052c23          	sw	zero,56(a0)
     904:	02052e23          	sw	zero,60(a0)
     908:	04090e63          	beqz	s2,964 <iterate+0x74>
     90c:	00812423          	sw	s0,8(sp)
     910:	00912223          	sw	s1,4(sp)
     914:	00050413          	mv	s0,a0
     918:	00000493          	li	s1,0
     91c:	00100593          	li	a1,1
     920:	00040513          	mv	a0,s0
     924:	b5dff0ef          	jal	480 <core_bench_list>
     928:	03845583          	lhu	a1,56(s0)
     92c:	4e5010ef          	jal	2610 <crcu16>
     930:	02a41c23          	sh	a0,56(s0)
     934:	fff00593          	li	a1,-1
     938:	00040513          	mv	a0,s0
     93c:	b45ff0ef          	jal	480 <core_bench_list>
     940:	03845583          	lhu	a1,56(s0)
     944:	4cd010ef          	jal	2610 <crcu16>
     948:	02a41c23          	sh	a0,56(s0)
     94c:	00049463          	bnez	s1,954 <iterate+0x64>
     950:	02a41d23          	sh	a0,58(s0)
     954:	00148493          	add	s1,s1,1
     958:	fc9912e3          	bne	s2,s1,91c <iterate+0x2c>
     95c:	00812403          	lw	s0,8(sp)
     960:	00412483          	lw	s1,4(sp)
     964:	00c12083          	lw	ra,12(sp)
     968:	00012903          	lw	s2,0(sp)
     96c:	00000513          	li	a0,0
     970:	01010113          	add	sp,sp,16
     974:	00008067          	ret

00000978 <main>:
     978:	b8010113          	add	sp,sp,-1152
     97c:	01010613          	add	a2,sp,16
     980:	00c10593          	add	a1,sp,12
     984:	05610513          	add	a0,sp,86
     988:	46112e23          	sw	ra,1148(sp)
     98c:	46812c23          	sw	s0,1144(sp)
     990:	46912a23          	sw	s1,1140(sp)
     994:	47212823          	sw	s2,1136(sp)
     998:	47312623          	sw	s3,1132(sp)
     99c:	47412423          	sw	s4,1128(sp)
     9a0:	47512223          	sw	s5,1124(sp)
     9a4:	47612023          	sw	s6,1120(sp)
     9a8:	45712e23          	sw	s7,1116(sp)
     9ac:	45912a23          	sw	s9,1108(sp)
     9b0:	00012623          	sw	zero,12(sp)
     9b4:	2a0010ef          	jal	1c54 <portable_init>
     9b8:	00100513          	li	a0,1
     9bc:	3a9010ef          	jal	2564 <get_seed_32>
     9c0:	00050793          	mv	a5,a0
     9c4:	00200513          	li	a0,2
     9c8:	00f11a23          	sh	a5,20(sp)
     9cc:	399010ef          	jal	2564 <get_seed_32>
     9d0:	00050793          	mv	a5,a0
     9d4:	00300513          	li	a0,3
     9d8:	00f11b23          	sh	a5,22(sp)
     9dc:	389010ef          	jal	2564 <get_seed_32>
     9e0:	00050793          	mv	a5,a0
     9e4:	00400513          	li	a0,4
     9e8:	00f11c23          	sh	a5,24(sp)
     9ec:	379010ef          	jal	2564 <get_seed_32>
     9f0:	00050793          	mv	a5,a0
     9f4:	00500513          	li	a0,5
     9f8:	02f12823          	sw	a5,48(sp)
     9fc:	369010ef          	jal	2564 <get_seed_32>
     a00:	00700413          	li	s0,7
     a04:	00050463          	beqz	a0,a0c <main+0x94>
     a08:	00050413          	mv	s0,a0
     a0c:	01412783          	lw	a5,20(sp)
     a10:	02812a23          	sw	s0,52(sp)
     a14:	1e079a63          	bnez	a5,c08 <main+0x290>
     a18:	01811783          	lh	a5,24(sp)
     a1c:	20078463          	beqz	a5,c24 <main+0x2ac>
     a20:	05810493          	add	s1,sp,88
     a24:	00247793          	and	a5,s0,2
     a28:	00147593          	and	a1,s0,1
     a2c:	00f037b3          	snez	a5,a5
     a30:	00912e23          	sw	s1,28(sp)
     a34:	04011a23          	sh	zero,84(sp)
     a38:	00447713          	and	a4,s0,4
     a3c:	00f585b3          	add	a1,a1,a5
     a40:	00070863          	beqz	a4,a50 <main+0xd8>
     a44:	00158593          	add	a1,a1,1
     a48:	01059593          	sll	a1,a1,0x10
     a4c:	0105d593          	srl	a1,a1,0x10
     a50:	3e800513          	li	a0,1000
     a54:	28d020ef          	jal	34e0 <__udivsi3>
     a58:	00050993          	mv	s3,a0
     a5c:	02a12623          	sw	a0,44(sp)
     a60:	01410a13          	add	s4,sp,20
     a64:	00000913          	li	s2,0
     a68:	00000a93          	li	s5,0
     a6c:	00100b93          	li	s7,1
     a70:	00300b13          	li	s6,3
     a74:	012b97b3          	sll	a5,s7,s2
     a78:	0087f7b3          	and	a5,a5,s0
     a7c:	16079463          	bnez	a5,be4 <main+0x26c>
     a80:	00190913          	add	s2,s2,1
     a84:	004a0a13          	add	s4,s4,4
     a88:	ff6916e3          	bne	s2,s6,a74 <main+0xfc>
     a8c:	03412783          	lw	a5,52(sp)
     a90:	0017f713          	and	a4,a5,1
     a94:	00070e63          	beqz	a4,ab0 <main+0x138>
     a98:	01411603          	lh	a2,20(sp)
     a9c:	02012583          	lw	a1,32(sp)
     aa0:	02c12503          	lw	a0,44(sp)
     aa4:	c85ff0ef          	jal	728 <core_list_init>
     aa8:	03412783          	lw	a5,52(sp)
     aac:	02a12c23          	sw	a0,56(sp)
     ab0:	0027f713          	and	a4,a5,2
     ab4:	10071463          	bnez	a4,bbc <main+0x244>
     ab8:	0047f793          	and	a5,a5,4
     abc:	00078a63          	beqz	a5,ad0 <main+0x158>
     ac0:	02812603          	lw	a2,40(sp)
     ac4:	01411583          	lh	a1,20(sp)
     ac8:	02c12503          	lw	a0,44(sp)
     acc:	48c010ef          	jal	1f58 <core_init_state>
     ad0:	03012783          	lw	a5,48(sp)
     ad4:	04079e63          	bnez	a5,b30 <main+0x1b8>
     ad8:	00100793          	li	a5,1
     adc:	02f12823          	sw	a5,48(sp)
     ae0:	03012703          	lw	a4,48(sp)
     ae4:	00271793          	sll	a5,a4,0x2
     ae8:	00e787b3          	add	a5,a5,a4
     aec:	00179793          	sll	a5,a5,0x1
     af0:	02f12823          	sw	a5,48(sp)
     af4:	0cc010ef          	jal	1bc0 <start_time>
     af8:	01410513          	add	a0,sp,20
     afc:	df5ff0ef          	jal	8f0 <iterate>
     b00:	0e4010ef          	jal	1be4 <stop_time>
     b04:	104010ef          	jal	1c08 <get_time>
     b08:	12c010ef          	jal	1c34 <time_in_secs>
     b0c:	fc050ae3          	beqz	a0,ae0 <main+0x168>
     b10:	00050593          	mv	a1,a0
     b14:	00a00513          	li	a0,10
     b18:	1c9020ef          	jal	34e0 <__udivsi3>
     b1c:	00050593          	mv	a1,a0
     b20:	03012503          	lw	a0,48(sp)
     b24:	00158593          	add	a1,a1,1
     b28:	18d020ef          	jal	34b4 <__mulsi3>
     b2c:	02a12823          	sw	a0,48(sp)
     b30:	090010ef          	jal	1bc0 <start_time>
     b34:	01410513          	add	a0,sp,20
     b38:	db9ff0ef          	jal	8f0 <iterate>
     b3c:	0a8010ef          	jal	1be4 <stop_time>
     b40:	0c8010ef          	jal	1c08 <get_time>
     b44:	00050993          	mv	s3,a0
     b48:	01411503          	lh	a0,20(sp)
     b4c:	00058a13          	mv	s4,a1
     b50:	00000593          	li	a1,0
     b54:	465010ef          	jal	27b8 <crc16>
     b58:	00050593          	mv	a1,a0
     b5c:	01611503          	lh	a0,22(sp)
     b60:	459010ef          	jal	27b8 <crc16>
     b64:	00050593          	mv	a1,a0
     b68:	01811503          	lh	a0,24(sp)
     b6c:	44d010ef          	jal	27b8 <crc16>
     b70:	00050593          	mv	a1,a0
     b74:	02c11503          	lh	a0,44(sp)
     b78:	441010ef          	jal	27b8 <crc16>
     b7c:	000087b7          	lui	a5,0x8
     b80:	b0578793          	add	a5,a5,-1275 # 7b05 <memset+0x4179>
     b84:	00050913          	mv	s2,a0
     b88:	48f50463          	beq	a0,a5,1010 <main+0x698>
     b8c:	0aa7f263          	bgeu	a5,a0,c30 <main+0x2b8>
     b90:	000097b7          	lui	a5,0x9
     b94:	a0278793          	add	a5,a5,-1534 # 8a02 <memset+0x5076>
     b98:	46f50263          	beq	a0,a5,ffc <main+0x684>
     b9c:	0000f7b7          	lui	a5,0xf
     ba0:	9f578793          	add	a5,a5,-1547 # e9f5 <memset+0xb069>
     ba4:	1ef51063          	bne	a0,a5,d84 <main+0x40c>
     ba8:	00010537          	lui	a0,0x10
     bac:	0b050513          	add	a0,a0,176 # 100b0 <seed1_volatile+0x94>
     bb0:	7a1010ef          	jal	2b50 <ee_printf>
     bb4:	00300793          	li	a5,3
     bb8:	0a00006f          	j	c58 <main+0x2e0>
     bbc:	01611783          	lh	a5,22(sp)
     bc0:	01411603          	lh	a2,20(sp)
     bc4:	02412583          	lw	a1,36(sp)
     bc8:	02c12503          	lw	a0,44(sp)
     bcc:	01079793          	sll	a5,a5,0x10
     bd0:	00c7e633          	or	a2,a5,a2
     bd4:	03c10693          	add	a3,sp,60
     bd8:	474000ef          	jal	104c <core_init_matrix>
     bdc:	03412783          	lw	a5,52(sp)
     be0:	ed9ff06f          	j	ab8 <main+0x140>
     be4:	000a8513          	mv	a0,s5
     be8:	00098593          	mv	a1,s3
     bec:	0c9020ef          	jal	34b4 <__mulsi3>
     bf0:	001a8a93          	add	s5,s5,1
     bf4:	00a48533          	add	a0,s1,a0
     bf8:	010a9a93          	sll	s5,s5,0x10
     bfc:	00aa2623          	sw	a0,12(s4)
     c00:	010ada93          	srl	s5,s5,0x10
     c04:	e7dff06f          	j	a80 <main+0x108>
     c08:	00100713          	li	a4,1
     c0c:	e0e79ae3          	bne	a5,a4,a20 <main+0xa8>
     c10:	01811783          	lh	a5,24(sp)
     c14:	e00796e3          	bnez	a5,a20 <main+0xa8>
     c18:	341537b7          	lui	a5,0x34153
     c1c:	41578793          	add	a5,a5,1045 # 34153415 <IO_BASE+0x33d53415>
     c20:	00f12a23          	sw	a5,20(sp)
     c24:	06600793          	li	a5,102
     c28:	00f11c23          	sh	a5,24(sp)
     c2c:	df5ff06f          	j	a20 <main+0xa8>
     c30:	000027b7          	lui	a5,0x2
     c34:	8f278793          	add	a5,a5,-1806 # 18f2 <matrix_test+0x1fa>
     c38:	3ef50663          	beq	a0,a5,1024 <main+0x6ac>
     c3c:	000057b7          	lui	a5,0x5
     c40:	eaf78793          	add	a5,a5,-337 # 4eaf <memset+0x1523>
     c44:	14f51063          	bne	a0,a5,d84 <main+0x40c>
     c48:	00010537          	lui	a0,0x10
     c4c:	07c50513          	add	a0,a0,124 # 1007c <seed1_volatile+0x60>
     c50:	701010ef          	jal	2b50 <ee_printf>
     c54:	00200793          	li	a5,2
     c58:	00010cb7          	lui	s9,0x10
     c5c:	00cca703          	lw	a4,12(s9) # 1000c <default_num_contexts>
     c60:	3c070c63          	beqz	a4,1038 <main+0x6c0>
     c64:	45a12823          	sw	s10,1104(sp)
     c68:	00010d37          	lui	s10,0x10
     c6c:	00179793          	sll	a5,a5,0x1
     c70:	398d0d13          	add	s10,s10,920 # 10398 <list_known_crc>
     c74:	45812c23          	sw	s8,1112(sp)
     c78:	45b12623          	sw	s11,1100(sp)
     c7c:	00000c13          	li	s8,0
     c80:	00000d93          	li	s11,0
     c84:	00fd0d33          	add	s10,s10,a5
     c88:	00010bb7          	lui	s7,0x10
     c8c:	00010b37          	lui	s6,0x10
     c90:	00010ab7          	lui	s5,0x10
     c94:	0380006f          	j	ccc <main+0x354>
     c98:	44040793          	add	a5,s0,1088
     c9c:	00278433          	add	s0,a5,sp
     ca0:	c1445783          	lhu	a5,-1004(s0)
     ca4:	001c0c13          	add	s8,s8,1
     ca8:	00cca703          	lw	a4,12(s9)
     cac:	01b787b3          	add	a5,a5,s11
     cb0:	010c1c13          	sll	s8,s8,0x10
     cb4:	01079493          	sll	s1,a5,0x10
     cb8:	01079d93          	sll	s11,a5,0x10
     cbc:	010c5c13          	srl	s8,s8,0x10
     cc0:	0104d493          	srl	s1,s1,0x10
     cc4:	410ddd93          	sra	s11,s11,0x10
     cc8:	2eec7a63          	bgeu	s8,a4,fbc <main+0x644>
     ccc:	004c1413          	sll	s0,s8,0x4
     cd0:	018404b3          	add	s1,s0,s8
     cd4:	00249493          	sll	s1,s1,0x2
     cd8:	44048793          	add	a5,s1,1088
     cdc:	002784b3          	add	s1,a5,sp
     ce0:	bf44a783          	lw	a5,-1036(s1)
     ce4:	c0049a23          	sh	zero,-1004(s1)
     ce8:	0017f713          	and	a4,a5,1
     cec:	02070663          	beqz	a4,d18 <main+0x3a0>
     cf0:	c0e4d603          	lhu	a2,-1010(s1)
     cf4:	000d5683          	lhu	a3,0(s10)
     cf8:	02d60063          	beq	a2,a3,d18 <main+0x3a0>
     cfc:	000c0593          	mv	a1,s8
     d00:	10cb8513          	add	a0,s7,268 # 1010c <seed1_volatile+0xf0>
     d04:	64d010ef          	jal	2b50 <ee_printf>
     d08:	c144d703          	lhu	a4,-1004(s1)
     d0c:	bf44a783          	lw	a5,-1036(s1)
     d10:	00170713          	add	a4,a4,1
     d14:	c0e49a23          	sh	a4,-1004(s1)
     d18:	0027f713          	and	a4,a5,2
     d1c:	02070e63          	beqz	a4,d58 <main+0x3e0>
     d20:	018404b3          	add	s1,s0,s8
     d24:	00249493          	sll	s1,s1,0x2
     d28:	44048713          	add	a4,s1,1088
     d2c:	002704b3          	add	s1,a4,sp
     d30:	c104d603          	lhu	a2,-1008(s1)
     d34:	00cd5683          	lhu	a3,12(s10)
     d38:	02d60063          	beq	a2,a3,d58 <main+0x3e0>
     d3c:	000c0593          	mv	a1,s8
     d40:	13cb0513          	add	a0,s6,316 # 1013c <seed1_volatile+0x120>
     d44:	60d010ef          	jal	2b50 <ee_printf>
     d48:	c144d703          	lhu	a4,-1004(s1)
     d4c:	bf44a783          	lw	a5,-1036(s1)
     d50:	00170713          	add	a4,a4,1
     d54:	c0e49a23          	sh	a4,-1004(s1)
     d58:	01840433          	add	s0,s0,s8
     d5c:	0047f793          	and	a5,a5,4
     d60:	00241413          	sll	s0,s0,0x2
     d64:	f2078ae3          	beqz	a5,c98 <main+0x320>
     d68:	44040793          	add	a5,s0,1088
     d6c:	00278433          	add	s0,a5,sp
     d70:	c1245603          	lhu	a2,-1006(s0)
     d74:	018d5683          	lhu	a3,24(s10)
     d78:	22d61063          	bne	a2,a3,f98 <main+0x620>
     d7c:	c1445783          	lhu	a5,-1004(s0)
     d80:	f25ff06f          	j	ca4 <main+0x32c>
     d84:	00010437          	lui	s0,0x10
     d88:	fff40493          	add	s1,s0,-1 # ffff <memset+0xc673>
     d8c:	00010cb7          	lui	s9,0x10
     d90:	2bd010ef          	jal	284c <check_data_types>
     d94:	02c12583          	lw	a1,44(sp)
     d98:	009504b3          	add	s1,a0,s1
     d9c:	00010537          	lui	a0,0x10
     da0:	1a050513          	add	a0,a0,416 # 101a0 <seed1_volatile+0x184>
     da4:	5ad010ef          	jal	2b50 <ee_printf>
     da8:	00010537          	lui	a0,0x10
     dac:	00098593          	mv	a1,s3
     db0:	1b850513          	add	a0,a0,440 # 101b8 <seed1_volatile+0x19c>
     db4:	59d010ef          	jal	2b50 <ee_printf>
     db8:	00098513          	mv	a0,s3
     dbc:	000a0593          	mv	a1,s4
     dc0:	789000ef          	jal	1d48 <print_coremarks>
     dc4:	00098513          	mv	a0,s3
     dc8:	000a0593          	mv	a1,s4
     dcc:	669000ef          	jal	1c34 <time_in_secs>
     dd0:	01049493          	sll	s1,s1,0x10
     dd4:	00900793          	li	a5,9
     dd8:	4104d493          	sra	s1,s1,0x10
     ddc:	20a7f863          	bgeu	a5,a0,fec <main+0x674>
     de0:	000105b7          	lui	a1,0x10
     de4:	00010537          	lui	a0,0x10
     de8:	21058593          	add	a1,a1,528 # 10210 <seed1_volatile+0x1f4>
     dec:	21850513          	add	a0,a0,536 # 10218 <seed1_volatile+0x1fc>
     df0:	561010ef          	jal	2b50 <ee_printf>
     df4:	00010537          	lui	a0,0x10
     df8:	00090593          	mv	a1,s2
     dfc:	23050513          	add	a0,a0,560 # 10230 <seed1_volatile+0x214>
     e00:	551010ef          	jal	2b50 <ee_printf>
     e04:	03412783          	lw	a5,52(sp)
     e08:	0017f713          	and	a4,a5,1
     e0c:	04070863          	beqz	a4,e5c <main+0x4e4>
     e10:	00cca703          	lw	a4,12(s9) # 1000c <default_num_contexts>
     e14:	04070463          	beqz	a4,e5c <main+0x4e4>
     e18:	00000413          	li	s0,0
     e1c:	00010937          	lui	s2,0x10
     e20:	00441793          	sll	a5,s0,0x4
     e24:	008787b3          	add	a5,a5,s0
     e28:	00279793          	sll	a5,a5,0x2
     e2c:	44078793          	add	a5,a5,1088
     e30:	002787b3          	add	a5,a5,sp
     e34:	c0e7d603          	lhu	a2,-1010(a5)
     e38:	00040593          	mv	a1,s0
     e3c:	24c90513          	add	a0,s2,588 # 1024c <seed1_volatile+0x230>
     e40:	511010ef          	jal	2b50 <ee_printf>
     e44:	00140413          	add	s0,s0,1
     e48:	00cca783          	lw	a5,12(s9)
     e4c:	01041413          	sll	s0,s0,0x10
     e50:	01045413          	srl	s0,s0,0x10
     e54:	fcf466e3          	bltu	s0,a5,e20 <main+0x4a8>
     e58:	03412783          	lw	a5,52(sp)
     e5c:	0027f713          	and	a4,a5,2
     e60:	04070863          	beqz	a4,eb0 <main+0x538>
     e64:	00cca703          	lw	a4,12(s9)
     e68:	1c070c63          	beqz	a4,1040 <main+0x6c8>
     e6c:	00000413          	li	s0,0
     e70:	00010937          	lui	s2,0x10
     e74:	00441793          	sll	a5,s0,0x4
     e78:	008787b3          	add	a5,a5,s0
     e7c:	00279793          	sll	a5,a5,0x2
     e80:	44078793          	add	a5,a5,1088
     e84:	002787b3          	add	a5,a5,sp
     e88:	c107d603          	lhu	a2,-1008(a5)
     e8c:	00040593          	mv	a1,s0
     e90:	26890513          	add	a0,s2,616 # 10268 <seed1_volatile+0x24c>
     e94:	4bd010ef          	jal	2b50 <ee_printf>
     e98:	00140413          	add	s0,s0,1
     e9c:	00cca783          	lw	a5,12(s9)
     ea0:	01041413          	sll	s0,s0,0x10
     ea4:	01045413          	srl	s0,s0,0x10
     ea8:	fcf466e3          	bltu	s0,a5,e74 <main+0x4fc>
     eac:	03412783          	lw	a5,52(sp)
     eb0:	0047f793          	and	a5,a5,4
     eb4:	00cca703          	lw	a4,12(s9)
     eb8:	04078463          	beqz	a5,f00 <main+0x588>
     ebc:	08070663          	beqz	a4,f48 <main+0x5d0>
     ec0:	00000413          	li	s0,0
     ec4:	00010937          	lui	s2,0x10
     ec8:	00441793          	sll	a5,s0,0x4
     ecc:	008787b3          	add	a5,a5,s0
     ed0:	00279793          	sll	a5,a5,0x2
     ed4:	44078793          	add	a5,a5,1088
     ed8:	002787b3          	add	a5,a5,sp
     edc:	c127d603          	lhu	a2,-1006(a5)
     ee0:	00040593          	mv	a1,s0
     ee4:	28490513          	add	a0,s2,644 # 10284 <seed1_volatile+0x268>
     ee8:	469010ef          	jal	2b50 <ee_printf>
     eec:	00140413          	add	s0,s0,1
     ef0:	00cca783          	lw	a5,12(s9)
     ef4:	01041413          	sll	s0,s0,0x10
     ef8:	01045413          	srl	s0,s0,0x10
     efc:	fcf466e3          	bltu	s0,a5,ec8 <main+0x550>
     f00:	00cca783          	lw	a5,12(s9)
     f04:	00000413          	li	s0,0
     f08:	00010937          	lui	s2,0x10
     f0c:	02078e63          	beqz	a5,f48 <main+0x5d0>
     f10:	00441793          	sll	a5,s0,0x4
     f14:	008787b3          	add	a5,a5,s0
     f18:	00279793          	sll	a5,a5,0x2
     f1c:	44078793          	add	a5,a5,1088
     f20:	002787b3          	add	a5,a5,sp
     f24:	c0c7d603          	lhu	a2,-1012(a5)
     f28:	00040593          	mv	a1,s0
     f2c:	2a090513          	add	a0,s2,672 # 102a0 <seed1_volatile+0x284>
     f30:	421010ef          	jal	2b50 <ee_printf>
     f34:	00140413          	add	s0,s0,1
     f38:	00cca783          	lw	a5,12(s9)
     f3c:	01041413          	sll	s0,s0,0x10
     f40:	01045413          	srl	s0,s0,0x10
     f44:	fcf466e3          	bltu	s0,a5,f10 <main+0x598>
     f48:	08048a63          	beqz	s1,fdc <main+0x664>
     f4c:	08904063          	bgtz	s1,fcc <main+0x654>
     f50:	00010537          	lui	a0,0x10
     f54:	30850513          	add	a0,a0,776 # 10308 <seed1_volatile+0x2ec>
     f58:	3f9010ef          	jal	2b50 <ee_printf>
     f5c:	05610513          	add	a0,sp,86
     f60:	7f1000ef          	jal	1f50 <portable_fini>
     f64:	47c12083          	lw	ra,1148(sp)
     f68:	47812403          	lw	s0,1144(sp)
     f6c:	47412483          	lw	s1,1140(sp)
     f70:	47012903          	lw	s2,1136(sp)
     f74:	46c12983          	lw	s3,1132(sp)
     f78:	46812a03          	lw	s4,1128(sp)
     f7c:	46412a83          	lw	s5,1124(sp)
     f80:	46012b03          	lw	s6,1120(sp)
     f84:	45c12b83          	lw	s7,1116(sp)
     f88:	45412c83          	lw	s9,1108(sp)
     f8c:	00000513          	li	a0,0
     f90:	48010113          	add	sp,sp,1152
     f94:	00008067          	ret
     f98:	000c0593          	mv	a1,s8
     f9c:	170a8513          	add	a0,s5,368 # 10170 <seed1_volatile+0x154>
     fa0:	3b1010ef          	jal	2b50 <ee_printf>
     fa4:	c1445783          	lhu	a5,-1004(s0)
     fa8:	00178793          	add	a5,a5,1
     fac:	01079793          	sll	a5,a5,0x10
     fb0:	0107d793          	srl	a5,a5,0x10
     fb4:	c0f41a23          	sh	a5,-1004(s0)
     fb8:	cedff06f          	j	ca4 <main+0x32c>
     fbc:	45812c03          	lw	s8,1112(sp)
     fc0:	45012d03          	lw	s10,1104(sp)
     fc4:	44c12d83          	lw	s11,1100(sp)
     fc8:	dc9ff06f          	j	d90 <main+0x418>
     fcc:	00010537          	lui	a0,0x10
     fd0:	36c50513          	add	a0,a0,876 # 1036c <seed1_volatile+0x350>
     fd4:	37d010ef          	jal	2b50 <ee_printf>
     fd8:	f85ff06f          	j	f5c <main+0x5e4>
     fdc:	00010537          	lui	a0,0x10
     fe0:	2bc50513          	add	a0,a0,700 # 102bc <seed1_volatile+0x2a0>
     fe4:	36d010ef          	jal	2b50 <ee_printf>
     fe8:	f75ff06f          	j	f5c <main+0x5e4>
     fec:	00010537          	lui	a0,0x10
     ff0:	1d050513          	add	a0,a0,464 # 101d0 <seed1_volatile+0x1b4>
     ff4:	35d010ef          	jal	2b50 <ee_printf>
     ff8:	de9ff06f          	j	de0 <main+0x468>
     ffc:	00010537          	lui	a0,0x10
    1000:	02050513          	add	a0,a0,32 # 10020 <seed1_volatile+0x4>
    1004:	34d010ef          	jal	2b50 <ee_printf>
    1008:	00000793          	li	a5,0
    100c:	c4dff06f          	j	c58 <main+0x2e0>
    1010:	00010537          	lui	a0,0x10
    1014:	05050513          	add	a0,a0,80 # 10050 <seed1_volatile+0x34>
    1018:	339010ef          	jal	2b50 <ee_printf>
    101c:	00100793          	li	a5,1
    1020:	c39ff06f          	j	c58 <main+0x2e0>
    1024:	00010537          	lui	a0,0x10
    1028:	0e050513          	add	a0,a0,224 # 100e0 <seed1_volatile+0xc4>
    102c:	325010ef          	jal	2b50 <ee_printf>
    1030:	00400793          	li	a5,4
    1034:	c25ff06f          	j	c58 <main+0x2e0>
    1038:	00000493          	li	s1,0
    103c:	d55ff06f          	j	d90 <main+0x418>
    1040:	0047f793          	and	a5,a5,4
    1044:	ea078ee3          	beqz	a5,f00 <main+0x588>
    1048:	f01ff06f          	j	f48 <main+0x5d0>

0000104c <core_init_matrix>:
    104c:	fb010113          	add	sp,sp,-80
    1050:	04912223          	sw	s1,68(sp)
    1054:	03712623          	sw	s7,44(sp)
    1058:	03a12023          	sw	s10,32(sp)
    105c:	01b12e23          	sw	s11,28(sp)
    1060:	04112623          	sw	ra,76(sp)
    1064:	04812423          	sw	s0,72(sp)
    1068:	03312e23          	sw	s3,60(sp)
    106c:	00050493          	mv	s1,a0
    1070:	00058b93          	mv	s7,a1
    1074:	00068d13          	mv	s10,a3
    1078:	00060d93          	mv	s11,a2
    107c:	00061463          	bnez	a2,1084 <core_init_matrix+0x38>
    1080:	00100d93          	li	s11,1
    1084:	00000413          	li	s0,0
    1088:	16048e63          	beqz	s1,1204 <core_init_matrix+0x1b8>
    108c:	00040993          	mv	s3,s0
    1090:	00140413          	add	s0,s0,1
    1094:	00040593          	mv	a1,s0
    1098:	00040513          	mv	a0,s0
    109c:	418020ef          	jal	34b4 <__mulsi3>
    10a0:	00351513          	sll	a0,a0,0x3
    10a4:	fe9564e3          	bltu	a0,s1,108c <core_init_matrix+0x40>
    10a8:	00098593          	mv	a1,s3
    10ac:	00098513          	mv	a0,s3
    10b0:	404020ef          	jal	34b4 <__mulsi3>
    10b4:	fffb8793          	add	a5,s7,-1
    10b8:	ffc7f793          	and	a5,a5,-4
    10bc:	00478793          	add	a5,a5,4
    10c0:	00151713          	sll	a4,a0,0x1
    10c4:	00f12423          	sw	a5,8(sp)
    10c8:	00078493          	mv	s1,a5
    10cc:	00e787b3          	add	a5,a5,a4
    10d0:	00e12223          	sw	a4,4(sp)
    10d4:	01312623          	sw	s3,12(sp)
    10d8:	00f12023          	sw	a5,0(sp)
    10dc:	12098063          	beqz	s3,11fc <core_init_matrix+0x1b0>
    10e0:	05212023          	sw	s2,64(sp)
    10e4:	03412c23          	sw	s4,56(sp)
    10e8:	03512a23          	sw	s5,52(sp)
    10ec:	03612823          	sw	s6,48(sp)
    10f0:	03812423          	sw	s8,40(sp)
    10f4:	03912223          	sw	s9,36(sp)
    10f8:	00012783          	lw	a5,0(sp)
    10fc:	00010937          	lui	s2,0x10
    1100:	00198413          	add	s0,s3,1
    1104:	00199c93          	sll	s9,s3,0x1
    1108:	00078a13          	mv	s4,a5
    110c:	00000a93          	li	s5,0
    1110:	00100c13          	li	s8,1
    1114:	40f484b3          	sub	s1,s1,a5
    1118:	fff90913          	add	s2,s2,-1 # ffff <memset+0xc673>
    111c:	000c0b13          	mv	s6,s8
    1120:	000a0b93          	mv	s7,s4
    1124:	000c0593          	mv	a1,s8
    1128:	000d8513          	mv	a0,s11
    112c:	388020ef          	jal	34b4 <__mulsi3>
    1130:	41f55713          	sra	a4,a0,0x1f
    1134:	01075713          	srl	a4,a4,0x10
    1138:	00e50633          	add	a2,a0,a4
    113c:	010c1793          	sll	a5,s8,0x10
    1140:	01267633          	and	a2,a2,s2
    1144:	0107d793          	srl	a5,a5,0x10
    1148:	40e60db3          	sub	s11,a2,a4
    114c:	01b78733          	add	a4,a5,s11
    1150:	01071713          	sll	a4,a4,0x10
    1154:	01075713          	srl	a4,a4,0x10
    1158:	00f707b3          	add	a5,a4,a5
    115c:	00eb9023          	sh	a4,0(s7)
    1160:	0ff7f793          	zext.b	a5,a5
    1164:	01748733          	add	a4,s1,s7
    1168:	00f71023          	sh	a5,0(a4)
    116c:	001c0c13          	add	s8,s8,1
    1170:	002b8b93          	add	s7,s7,2
    1174:	fa8c18e3          	bne	s8,s0,1124 <core_init_matrix+0xd8>
    1178:	001a8a93          	add	s5,s5,1
    117c:	01698c33          	add	s8,s3,s6
    1180:	01340433          	add	s0,s0,s3
    1184:	019a0a33          	add	s4,s4,s9
    1188:	f93a9ae3          	bne	s5,s3,111c <core_init_matrix+0xd0>
    118c:	04012903          	lw	s2,64(sp)
    1190:	03812a03          	lw	s4,56(sp)
    1194:	03412a83          	lw	s5,52(sp)
    1198:	03012b03          	lw	s6,48(sp)
    119c:	02812c03          	lw	s8,40(sp)
    11a0:	02412c83          	lw	s9,36(sp)
    11a4:	00012703          	lw	a4,0(sp)
    11a8:	00412783          	lw	a5,4(sp)
    11ac:	00812683          	lw	a3,8(sp)
    11b0:	04c12083          	lw	ra,76(sp)
    11b4:	00f707b3          	add	a5,a4,a5
    11b8:	fff78793          	add	a5,a5,-1
    11bc:	ffc7f793          	and	a5,a5,-4
    11c0:	00478793          	add	a5,a5,4
    11c4:	00fd2623          	sw	a5,12(s10)
    11c8:	00c12783          	lw	a5,12(sp)
    11cc:	04812403          	lw	s0,72(sp)
    11d0:	00dd2223          	sw	a3,4(s10)
    11d4:	00ed2423          	sw	a4,8(s10)
    11d8:	00fd2023          	sw	a5,0(s10)
    11dc:	04412483          	lw	s1,68(sp)
    11e0:	02c12b83          	lw	s7,44(sp)
    11e4:	02012d03          	lw	s10,32(sp)
    11e8:	01c12d83          	lw	s11,28(sp)
    11ec:	00098513          	mv	a0,s3
    11f0:	03c12983          	lw	s3,60(sp)
    11f4:	05010113          	add	sp,sp,80
    11f8:	00008067          	ret
    11fc:	00012223          	sw	zero,4(sp)
    1200:	fa5ff06f          	j	11a4 <core_init_matrix+0x158>
    1204:	fffb8b93          	add	s7,s7,-1
    1208:	ffcbfb93          	and	s7,s7,-4
    120c:	006b8793          	add	a5,s7,6
    1210:	00f12023          	sw	a5,0(sp)
    1214:	fff00793          	li	a5,-1
    1218:	004b8493          	add	s1,s7,4
    121c:	00f12623          	sw	a5,12(sp)
    1220:	00200793          	li	a5,2
    1224:	05212023          	sw	s2,64(sp)
    1228:	03412c23          	sw	s4,56(sp)
    122c:	03512a23          	sw	s5,52(sp)
    1230:	03612823          	sw	s6,48(sp)
    1234:	03812423          	sw	s8,40(sp)
    1238:	03912223          	sw	s9,36(sp)
    123c:	00912423          	sw	s1,8(sp)
    1240:	00f12223          	sw	a5,4(sp)
    1244:	fff00993          	li	s3,-1
    1248:	eb1ff06f          	j	10f8 <core_init_matrix+0xac>

0000124c <matrix_sum>:
    124c:	00050e93          	mv	t4,a0
    1250:	08050463          	beqz	a0,12d8 <matrix_sum+0x8c>
    1254:	00251f93          	sll	t6,a0,0x2
    1258:	40a00f33          	neg	t5,a0
    125c:	01f588b3          	add	a7,a1,t6
    1260:	00000e13          	li	t3,0
    1264:	00000513          	li	a0,0
    1268:	00000713          	li	a4,0
    126c:	00000593          	li	a1,0
    1270:	003f1f13          	sll	t5,t5,0x3
    1274:	41f88333          	sub	t1,a7,t6
    1278:	00030793          	mv	a5,t1
    127c:	0140006f          	j	1290 <matrix_sum+0x44>
    1280:	01051513          	sll	a0,a0,0x10
    1284:	00478793          	add	a5,a5,4
    1288:	41055513          	sra	a0,a0,0x10
    128c:	02f88e63          	beq	a7,a5,12c8 <matrix_sum+0x7c>
    1290:	00070693          	mv	a3,a4
    1294:	0007a703          	lw	a4,0(a5)
    1298:	01051513          	sll	a0,a0,0x10
    129c:	01055513          	srl	a0,a0,0x10
    12a0:	00e6a6b3          	slt	a3,a3,a4
    12a4:	00e585b3          	add	a1,a1,a4
    12a8:	00a50813          	add	a6,a0,10
    12ac:	00d50533          	add	a0,a0,a3
    12b0:	fcb658e3          	bge	a2,a1,1280 <matrix_sum+0x34>
    12b4:	01081513          	sll	a0,a6,0x10
    12b8:	00478793          	add	a5,a5,4
    12bc:	41055513          	sra	a0,a0,0x10
    12c0:	00000593          	li	a1,0
    12c4:	fcf896e3          	bne	a7,a5,1290 <matrix_sum+0x44>
    12c8:	001e0e13          	add	t3,t3,1
    12cc:	41e308b3          	sub	a7,t1,t5
    12d0:	fbce92e3          	bne	t4,t3,1274 <matrix_sum+0x28>
    12d4:	00008067          	ret
    12d8:	00000513          	li	a0,0
    12dc:	00008067          	ret

000012e0 <matrix_mul_const>:
    12e0:	0c050863          	beqz	a0,13b0 <matrix_mul_const+0xd0>
    12e4:	fd010113          	add	sp,sp,-48
    12e8:	01812423          	sw	s8,8(sp)
    12ec:	01a12023          	sw	s10,0(sp)
    12f0:	40a00c33          	neg	s8,a0
    12f4:	00151d13          	sll	s10,a0,0x1
    12f8:	03212023          	sw	s2,32(sp)
    12fc:	01312e23          	sw	s3,28(sp)
    1300:	01512a23          	sw	s5,20(sp)
    1304:	01612823          	sw	s6,16(sp)
    1308:	01712623          	sw	s7,12(sp)
    130c:	01912223          	sw	s9,4(sp)
    1310:	02112623          	sw	ra,44(sp)
    1314:	02812423          	sw	s0,40(sp)
    1318:	02912223          	sw	s1,36(sp)
    131c:	01412c23          	sw	s4,24(sp)
    1320:	00050b93          	mv	s7,a0
    1324:	00058c93          	mv	s9,a1
    1328:	00068993          	mv	s3,a3
    132c:	01a60933          	add	s2,a2,s10
    1330:	00000a93          	li	s5,0
    1334:	00000b13          	li	s6,0
    1338:	002c1c13          	sll	s8,s8,0x2
    133c:	41a90a33          	sub	s4,s2,s10
    1340:	002a9493          	sll	s1,s5,0x2
    1344:	009c84b3          	add	s1,s9,s1
    1348:	000a0413          	mv	s0,s4
    134c:	00041503          	lh	a0,0(s0)
    1350:	00098593          	mv	a1,s3
    1354:	00240413          	add	s0,s0,2
    1358:	15c020ef          	jal	34b4 <__mulsi3>
    135c:	00a4a023          	sw	a0,0(s1)
    1360:	00448493          	add	s1,s1,4
    1364:	ff2414e3          	bne	s0,s2,134c <matrix_mul_const+0x6c>
    1368:	001b0b13          	add	s6,s6,1
    136c:	017a8ab3          	add	s5,s5,s7
    1370:	418a0933          	sub	s2,s4,s8
    1374:	fd6b94e3          	bne	s7,s6,133c <matrix_mul_const+0x5c>
    1378:	02c12083          	lw	ra,44(sp)
    137c:	02812403          	lw	s0,40(sp)
    1380:	02412483          	lw	s1,36(sp)
    1384:	02012903          	lw	s2,32(sp)
    1388:	01c12983          	lw	s3,28(sp)
    138c:	01812a03          	lw	s4,24(sp)
    1390:	01412a83          	lw	s5,20(sp)
    1394:	01012b03          	lw	s6,16(sp)
    1398:	00c12b83          	lw	s7,12(sp)
    139c:	00812c03          	lw	s8,8(sp)
    13a0:	00412c83          	lw	s9,4(sp)
    13a4:	00012d03          	lw	s10,0(sp)
    13a8:	03010113          	add	sp,sp,48
    13ac:	00008067          	ret
    13b0:	00008067          	ret

000013b4 <matrix_add_const>:
    13b4:	04050463          	beqz	a0,13fc <matrix_add_const+0x48>
    13b8:	00151313          	sll	t1,a0,0x1
    13bc:	40a008b3          	neg	a7,a0
    13c0:	01061613          	sll	a2,a2,0x10
    13c4:	01065613          	srl	a2,a2,0x10
    13c8:	006586b3          	add	a3,a1,t1
    13cc:	00000813          	li	a6,0
    13d0:	00289893          	sll	a7,a7,0x2
    13d4:	406685b3          	sub	a1,a3,t1
    13d8:	00058793          	mv	a5,a1
    13dc:	0007d703          	lhu	a4,0(a5)
    13e0:	00278793          	add	a5,a5,2
    13e4:	00e60733          	add	a4,a2,a4
    13e8:	fee79f23          	sh	a4,-2(a5)
    13ec:	fef698e3          	bne	a3,a5,13dc <matrix_add_const+0x28>
    13f0:	00180813          	add	a6,a6,1
    13f4:	411586b3          	sub	a3,a1,a7
    13f8:	fd051ee3          	bne	a0,a6,13d4 <matrix_add_const+0x20>
    13fc:	00008067          	ret

00001400 <matrix_mul_vect>:
    1400:	0c050463          	beqz	a0,14c8 <matrix_mul_vect+0xc8>
    1404:	fd010113          	add	sp,sp,-48
    1408:	01312e23          	sw	s3,28(sp)
    140c:	01712623          	sw	s7,12(sp)
    1410:	00151993          	sll	s3,a0,0x1
    1414:	00251b93          	sll	s7,a0,0x2
    1418:	01412c23          	sw	s4,24(sp)
    141c:	01512a23          	sw	s5,20(sp)
    1420:	01612823          	sw	s6,16(sp)
    1424:	01812423          	sw	s8,8(sp)
    1428:	01912223          	sw	s9,4(sp)
    142c:	02112623          	sw	ra,44(sp)
    1430:	02812423          	sw	s0,40(sp)
    1434:	02912223          	sw	s1,36(sp)
    1438:	03212023          	sw	s2,32(sp)
    143c:	00050a93          	mv	s5,a0
    1440:	00060c13          	mv	s8,a2
    1444:	00068b13          	mv	s6,a3
    1448:	00058a13          	mv	s4,a1
    144c:	01758bb3          	add	s7,a1,s7
    1450:	013689b3          	add	s3,a3,s3
    1454:	00000c93          	li	s9,0
    1458:	001c9493          	sll	s1,s9,0x1
    145c:	009c04b3          	add	s1,s8,s1
    1460:	000b0413          	mv	s0,s6
    1464:	00000913          	li	s2,0
    1468:	00041583          	lh	a1,0(s0)
    146c:	00049503          	lh	a0,0(s1)
    1470:	00240413          	add	s0,s0,2
    1474:	00248493          	add	s1,s1,2
    1478:	03c020ef          	jal	34b4 <__mulsi3>
    147c:	00a90933          	add	s2,s2,a0
    1480:	fe8994e3          	bne	s3,s0,1468 <matrix_mul_vect+0x68>
    1484:	012a2023          	sw	s2,0(s4)
    1488:	004a0a13          	add	s4,s4,4
    148c:	015c8cb3          	add	s9,s9,s5
    1490:	fd4b94e3          	bne	s7,s4,1458 <matrix_mul_vect+0x58>
    1494:	02c12083          	lw	ra,44(sp)
    1498:	02812403          	lw	s0,40(sp)
    149c:	02412483          	lw	s1,36(sp)
    14a0:	02012903          	lw	s2,32(sp)
    14a4:	01c12983          	lw	s3,28(sp)
    14a8:	01812a03          	lw	s4,24(sp)
    14ac:	01412a83          	lw	s5,20(sp)
    14b0:	01012b03          	lw	s6,16(sp)
    14b4:	00c12b83          	lw	s7,12(sp)
    14b8:	00812c03          	lw	s8,8(sp)
    14bc:	00412c83          	lw	s9,4(sp)
    14c0:	03010113          	add	sp,sp,48
    14c4:	00008067          	ret
    14c8:	00008067          	ret

000014cc <matrix_mul_matrix>:
    14cc:	fb010113          	add	sp,sp,-80
    14d0:	04112623          	sw	ra,76(sp)
    14d4:	00b12423          	sw	a1,8(sp)
    14d8:	00d12623          	sw	a3,12(sp)
    14dc:	0e050863          	beqz	a0,15cc <matrix_mul_matrix+0x100>
    14e0:	04912223          	sw	s1,68(sp)
    14e4:	00151493          	sll	s1,a0,0x1
    14e8:	05212023          	sw	s2,64(sp)
    14ec:	03612823          	sw	s6,48(sp)
    14f0:	03712623          	sw	s7,44(sp)
    14f4:	03812423          	sw	s8,40(sp)
    14f8:	03912223          	sw	s9,36(sp)
    14fc:	04812423          	sw	s0,72(sp)
    1500:	03312e23          	sw	s3,60(sp)
    1504:	03412c23          	sw	s4,56(sp)
    1508:	03512a23          	sw	s5,52(sp)
    150c:	03a12023          	sw	s10,32(sp)
    1510:	01b12e23          	sw	s11,28(sp)
    1514:	00050b93          	mv	s7,a0
    1518:	00060b13          	mv	s6,a2
    151c:	00960933          	add	s2,a2,s1
    1520:	00000c13          	li	s8,0
    1524:	00000c93          	li	s9,0
    1528:	00812783          	lw	a5,8(sp)
    152c:	00c12a03          	lw	s4,12(sp)
    1530:	002c1993          	sll	s3,s8,0x2
    1534:	013789b3          	add	s3,a5,s3
    1538:	00000a93          	li	s5,0
    153c:	000a0d93          	mv	s11,s4
    1540:	000b0413          	mv	s0,s6
    1544:	00000d13          	li	s10,0
    1548:	000d9583          	lh	a1,0(s11)
    154c:	00041503          	lh	a0,0(s0)
    1550:	00240413          	add	s0,s0,2
    1554:	009d8db3          	add	s11,s11,s1
    1558:	75d010ef          	jal	34b4 <__mulsi3>
    155c:	00ad0d33          	add	s10,s10,a0
    1560:	fe8914e3          	bne	s2,s0,1548 <matrix_mul_matrix+0x7c>
    1564:	01a9a023          	sw	s10,0(s3)
    1568:	001a8793          	add	a5,s5,1
    156c:	00498993          	add	s3,s3,4
    1570:	002a0a13          	add	s4,s4,2
    1574:	00fb8663          	beq	s7,a5,1580 <matrix_mul_matrix+0xb4>
    1578:	00078a93          	mv	s5,a5
    157c:	fc1ff06f          	j	153c <matrix_mul_matrix+0x70>
    1580:	001c8793          	add	a5,s9,1
    1584:	009b0b33          	add	s6,s6,s1
    1588:	017c0c33          	add	s8,s8,s7
    158c:	00990933          	add	s2,s2,s1
    1590:	015c8663          	beq	s9,s5,159c <matrix_mul_matrix+0xd0>
    1594:	00078c93          	mv	s9,a5
    1598:	f91ff06f          	j	1528 <matrix_mul_matrix+0x5c>
    159c:	04812403          	lw	s0,72(sp)
    15a0:	04412483          	lw	s1,68(sp)
    15a4:	04012903          	lw	s2,64(sp)
    15a8:	03c12983          	lw	s3,60(sp)
    15ac:	03812a03          	lw	s4,56(sp)
    15b0:	03412a83          	lw	s5,52(sp)
    15b4:	03012b03          	lw	s6,48(sp)
    15b8:	02c12b83          	lw	s7,44(sp)
    15bc:	02812c03          	lw	s8,40(sp)
    15c0:	02412c83          	lw	s9,36(sp)
    15c4:	02012d03          	lw	s10,32(sp)
    15c8:	01c12d83          	lw	s11,28(sp)
    15cc:	04c12083          	lw	ra,76(sp)
    15d0:	05010113          	add	sp,sp,80
    15d4:	00008067          	ret

000015d8 <matrix_mul_matrix_bitextract>:
    15d8:	fb010113          	add	sp,sp,-80
    15dc:	04112623          	sw	ra,76(sp)
    15e0:	00b12423          	sw	a1,8(sp)
    15e4:	00d12623          	sw	a3,12(sp)
    15e8:	10050263          	beqz	a0,16ec <matrix_mul_matrix_bitextract+0x114>
    15ec:	04812423          	sw	s0,72(sp)
    15f0:	00151413          	sll	s0,a0,0x1
    15f4:	04912223          	sw	s1,68(sp)
    15f8:	03512a23          	sw	s5,52(sp)
    15fc:	03612823          	sw	s6,48(sp)
    1600:	03712623          	sw	s7,44(sp)
    1604:	03812423          	sw	s8,40(sp)
    1608:	05212023          	sw	s2,64(sp)
    160c:	03312e23          	sw	s3,60(sp)
    1610:	03412c23          	sw	s4,56(sp)
    1614:	03912223          	sw	s9,36(sp)
    1618:	03a12023          	sw	s10,32(sp)
    161c:	01b12e23          	sw	s11,28(sp)
    1620:	00050b13          	mv	s6,a0
    1624:	00060a93          	mv	s5,a2
    1628:	008604b3          	add	s1,a2,s0
    162c:	00000b93          	li	s7,0
    1630:	00000c13          	li	s8,0
    1634:	00812783          	lw	a5,8(sp)
    1638:	00c12983          	lw	s3,12(sp)
    163c:	002b9913          	sll	s2,s7,0x2
    1640:	01278933          	add	s2,a5,s2
    1644:	00000a13          	li	s4,0
    1648:	00098d13          	mv	s10,s3
    164c:	000a8d93          	mv	s11,s5
    1650:	00000c93          	li	s9,0
    1654:	000d1583          	lh	a1,0(s10)
    1658:	000d9503          	lh	a0,0(s11)
    165c:	002d8d93          	add	s11,s11,2
    1660:	008d0d33          	add	s10,s10,s0
    1664:	651010ef          	jal	34b4 <__mulsi3>
    1668:	40255693          	sra	a3,a0,0x2
    166c:	40555593          	sra	a1,a0,0x5
    1670:	07f5f593          	and	a1,a1,127
    1674:	00f6f513          	and	a0,a3,15
    1678:	63d010ef          	jal	34b4 <__mulsi3>
    167c:	00ac8cb3          	add	s9,s9,a0
    1680:	fdb49ae3          	bne	s1,s11,1654 <matrix_mul_matrix_bitextract+0x7c>
    1684:	01992023          	sw	s9,0(s2)
    1688:	001a0793          	add	a5,s4,1
    168c:	00490913          	add	s2,s2,4
    1690:	00298993          	add	s3,s3,2
    1694:	00fb0663          	beq	s6,a5,16a0 <matrix_mul_matrix_bitextract+0xc8>
    1698:	00078a13          	mv	s4,a5
    169c:	fadff06f          	j	1648 <matrix_mul_matrix_bitextract+0x70>
    16a0:	001c0793          	add	a5,s8,1
    16a4:	008a8ab3          	add	s5,s5,s0
    16a8:	016b8bb3          	add	s7,s7,s6
    16ac:	008484b3          	add	s1,s1,s0
    16b0:	014c0663          	beq	s8,s4,16bc <matrix_mul_matrix_bitextract+0xe4>
    16b4:	00078c13          	mv	s8,a5
    16b8:	f7dff06f          	j	1634 <matrix_mul_matrix_bitextract+0x5c>
    16bc:	04812403          	lw	s0,72(sp)
    16c0:	04412483          	lw	s1,68(sp)
    16c4:	04012903          	lw	s2,64(sp)
    16c8:	03c12983          	lw	s3,60(sp)
    16cc:	03812a03          	lw	s4,56(sp)
    16d0:	03412a83          	lw	s5,52(sp)
    16d4:	03012b03          	lw	s6,48(sp)
    16d8:	02c12b83          	lw	s7,44(sp)
    16dc:	02812c03          	lw	s8,40(sp)
    16e0:	02412c83          	lw	s9,36(sp)
    16e4:	02012d03          	lw	s10,32(sp)
    16e8:	01c12d83          	lw	s11,28(sp)
    16ec:	04c12083          	lw	ra,76(sp)
    16f0:	05010113          	add	sp,sp,80
    16f4:	00008067          	ret

000016f8 <matrix_test>:
    16f8:	fa010113          	add	sp,sp,-96
    16fc:	04112e23          	sw	ra,92(sp)
    1700:	04812c23          	sw	s0,88(sp)
    1704:	04912a23          	sw	s1,84(sp)
    1708:	05212823          	sw	s2,80(sp)
    170c:	05312623          	sw	s3,76(sp)
    1710:	00b12823          	sw	a1,16(sp)
    1714:	00c12a23          	sw	a2,20(sp)
    1718:	00d12c23          	sw	a3,24(sp)
    171c:	3e050063          	beqz	a0,1afc <matrix_test+0x404>
    1720:	00070913          	mv	s2,a4
    1724:	00151713          	sll	a4,a0,0x1
    1728:	40a007b3          	neg	a5,a0
    172c:	00e604b3          	add	s1,a2,a4
    1730:	01091413          	sll	s0,s2,0x10
    1734:	05412423          	sw	s4,72(sp)
    1738:	05512223          	sw	s5,68(sp)
    173c:	03812c23          	sw	s8,56(sp)
    1740:	05612023          	sw	s6,64(sp)
    1744:	03712e23          	sw	s7,60(sp)
    1748:	03912a23          	sw	s9,52(sp)
    174c:	03a12823          	sw	s10,48(sp)
    1750:	03b12623          	sw	s11,44(sp)
    1754:	00050c13          	mv	s8,a0
    1758:	00e12623          	sw	a4,12(sp)
    175c:	00f12e23          	sw	a5,28(sp)
    1760:	01045413          	srl	s0,s0,0x10
    1764:	00048693          	mv	a3,s1
    1768:	00000a13          	li	s4,0
    176c:	00279a93          	sll	s5,a5,0x2
    1770:	00c12783          	lw	a5,12(sp)
    1774:	40f68633          	sub	a2,a3,a5
    1778:	00060793          	mv	a5,a2
    177c:	0007d703          	lhu	a4,0(a5)
    1780:	00278793          	add	a5,a5,2
    1784:	00e40733          	add	a4,s0,a4
    1788:	fee79f23          	sh	a4,-2(a5)
    178c:	fed798e3          	bne	a5,a3,177c <matrix_test+0x84>
    1790:	001a0993          	add	s3,s4,1
    1794:	415606b3          	sub	a3,a2,s5
    1798:	013c0663          	beq	s8,s3,17a4 <matrix_test+0xac>
    179c:	00098a13          	mv	s4,s3
    17a0:	fd1ff06f          	j	1770 <matrix_test+0x78>
    17a4:	00000b93          	li	s7,0
    17a8:	00000c93          	li	s9,0
    17ac:	00c12783          	lw	a5,12(sp)
    17b0:	002b9713          	sll	a4,s7,0x2
    17b4:	40f48b33          	sub	s6,s1,a5
    17b8:	01012783          	lw	a5,16(sp)
    17bc:	000b0d93          	mv	s11,s6
    17c0:	00f70d33          	add	s10,a4,a5
    17c4:	000d9503          	lh	a0,0(s11)
    17c8:	00090593          	mv	a1,s2
    17cc:	002d8d93          	add	s11,s11,2
    17d0:	4e5010ef          	jal	34b4 <__mulsi3>
    17d4:	00ad2023          	sw	a0,0(s10)
    17d8:	004d0d13          	add	s10,s10,4
    17dc:	fe9d94e3          	bne	s11,s1,17c4 <matrix_test+0xcc>
    17e0:	001c8793          	add	a5,s9,1
    17e4:	013b8bb3          	add	s7,s7,s3
    17e8:	415b04b3          	sub	s1,s6,s5
    17ec:	014c8663          	beq	s9,s4,17f8 <matrix_test+0x100>
    17f0:	00078c93          	mv	s9,a5
    17f4:	fb9ff06f          	j	17ac <matrix_test+0xb4>
    17f8:	01012783          	lw	a5,16(sp)
    17fc:	41300e33          	neg	t3,s3
    1800:	fffff4b7          	lui	s1,0xfffff
    1804:	009964b3          	or	s1,s2,s1
    1808:	41578833          	sub	a6,a5,s5
    180c:	00000513          	li	a0,0
    1810:	00000713          	li	a4,0
    1814:	00000613          	li	a2,0
    1818:	00000313          	li	t1,0
    181c:	003e1e13          	sll	t3,t3,0x3
    1820:	015808b3          	add	a7,a6,s5
    1824:	00088793          	mv	a5,a7
    1828:	0140006f          	j	183c <matrix_test+0x144>
    182c:	01051513          	sll	a0,a0,0x10
    1830:	00478793          	add	a5,a5,4
    1834:	41055513          	sra	a0,a0,0x10
    1838:	03078e63          	beq	a5,a6,1874 <matrix_test+0x17c>
    183c:	00070693          	mv	a3,a4
    1840:	0007a703          	lw	a4,0(a5)
    1844:	01051513          	sll	a0,a0,0x10
    1848:	01055513          	srl	a0,a0,0x10
    184c:	00e6a6b3          	slt	a3,a3,a4
    1850:	00e60633          	add	a2,a2,a4
    1854:	00a50593          	add	a1,a0,10
    1858:	00d50533          	add	a0,a0,a3
    185c:	fcc4d8e3          	bge	s1,a2,182c <matrix_test+0x134>
    1860:	01059513          	sll	a0,a1,0x10
    1864:	00478793          	add	a5,a5,4
    1868:	41055513          	sra	a0,a0,0x10
    186c:	00000613          	li	a2,0
    1870:	fd0796e3          	bne	a5,a6,183c <matrix_test+0x144>
    1874:	00130793          	add	a5,t1,1
    1878:	41c88833          	sub	a6,a7,t3
    187c:	006a0663          	beq	s4,t1,1888 <matrix_test+0x190>
    1880:	00078313          	mv	t1,a5
    1884:	f9dff06f          	j	1820 <matrix_test+0x128>
    1888:	00000593          	li	a1,0
    188c:	72d000ef          	jal	27b8 <crc16>
    1890:	01012903          	lw	s2,16(sp)
    1894:	01412603          	lw	a2,20(sp)
    1898:	01812683          	lw	a3,24(sp)
    189c:	00090593          	mv	a1,s2
    18a0:	00050993          	mv	s3,a0
    18a4:	000c0513          	mv	a0,s8
    18a8:	b59ff0ef          	jal	1400 <matrix_mul_vect>
    18ac:	01c12783          	lw	a5,28(sp)
    18b0:	002c1a93          	sll	s5,s8,0x2
    18b4:	01590ab3          	add	s5,s2,s5
    18b8:	00279a13          	sll	s4,a5,0x2
    18bc:	000a8813          	mv	a6,s5
    18c0:	00000513          	li	a0,0
    18c4:	00000713          	li	a4,0
    18c8:	00000613          	li	a2,0
    18cc:	00000913          	li	s2,0
    18d0:	00379b13          	sll	s6,a5,0x3
    18d4:	010a08b3          	add	a7,s4,a6
    18d8:	00088793          	mv	a5,a7
    18dc:	0140006f          	j	18f0 <matrix_test+0x1f8>
    18e0:	01051513          	sll	a0,a0,0x10
    18e4:	00478793          	add	a5,a5,4
    18e8:	41055513          	sra	a0,a0,0x10
    18ec:	03078e63          	beq	a5,a6,1928 <matrix_test+0x230>
    18f0:	00070693          	mv	a3,a4
    18f4:	0007a703          	lw	a4,0(a5)
    18f8:	01051513          	sll	a0,a0,0x10
    18fc:	01055513          	srl	a0,a0,0x10
    1900:	00e6a6b3          	slt	a3,a3,a4
    1904:	00e60633          	add	a2,a2,a4
    1908:	00a50593          	add	a1,a0,10
    190c:	00d50533          	add	a0,a0,a3
    1910:	fcc4d8e3          	bge	s1,a2,18e0 <matrix_test+0x1e8>
    1914:	01059513          	sll	a0,a1,0x10
    1918:	00478793          	add	a5,a5,4
    191c:	41055513          	sra	a0,a0,0x10
    1920:	00000613          	li	a2,0
    1924:	fd0796e3          	bne	a5,a6,18f0 <matrix_test+0x1f8>
    1928:	00190b93          	add	s7,s2,1
    192c:	41688833          	sub	a6,a7,s6
    1930:	017c0663          	beq	s8,s7,193c <matrix_test+0x244>
    1934:	000b8913          	mv	s2,s7
    1938:	f9dff06f          	j	18d4 <matrix_test+0x1dc>
    193c:	00098593          	mv	a1,s3
    1940:	679000ef          	jal	27b8 <crc16>
    1944:	01412603          	lw	a2,20(sp)
    1948:	01812683          	lw	a3,24(sp)
    194c:	01012583          	lw	a1,16(sp)
    1950:	00050993          	mv	s3,a0
    1954:	000b8513          	mv	a0,s7
    1958:	b75ff0ef          	jal	14cc <matrix_mul_matrix>
    195c:	000a8813          	mv	a6,s5
    1960:	00000513          	li	a0,0
    1964:	00000713          	li	a4,0
    1968:	00000613          	li	a2,0
    196c:	00000313          	li	t1,0
    1970:	014808b3          	add	a7,a6,s4
    1974:	00088793          	mv	a5,a7
    1978:	0140006f          	j	198c <matrix_test+0x294>
    197c:	01051513          	sll	a0,a0,0x10
    1980:	00478793          	add	a5,a5,4
    1984:	41055513          	sra	a0,a0,0x10
    1988:	02f80e63          	beq	a6,a5,19c4 <matrix_test+0x2cc>
    198c:	00070693          	mv	a3,a4
    1990:	0007a703          	lw	a4,0(a5)
    1994:	01051513          	sll	a0,a0,0x10
    1998:	01055513          	srl	a0,a0,0x10
    199c:	00e6a6b3          	slt	a3,a3,a4
    19a0:	00e60633          	add	a2,a2,a4
    19a4:	00a50593          	add	a1,a0,10
    19a8:	00d50533          	add	a0,a0,a3
    19ac:	fcc4d8e3          	bge	s1,a2,197c <matrix_test+0x284>
    19b0:	01059513          	sll	a0,a1,0x10
    19b4:	00478793          	add	a5,a5,4
    19b8:	41055513          	sra	a0,a0,0x10
    19bc:	00000613          	li	a2,0
    19c0:	fcf816e3          	bne	a6,a5,198c <matrix_test+0x294>
    19c4:	00130793          	add	a5,t1,1
    19c8:	41688833          	sub	a6,a7,s6
    19cc:	01230663          	beq	t1,s2,19d8 <matrix_test+0x2e0>
    19d0:	00078313          	mv	t1,a5
    19d4:	f9dff06f          	j	1970 <matrix_test+0x278>
    19d8:	00098593          	mv	a1,s3
    19dc:	5dd000ef          	jal	27b8 <crc16>
    19e0:	01412603          	lw	a2,20(sp)
    19e4:	01812683          	lw	a3,24(sp)
    19e8:	01012583          	lw	a1,16(sp)
    19ec:	00050993          	mv	s3,a0
    19f0:	000b8513          	mv	a0,s7
    19f4:	be5ff0ef          	jal	15d8 <matrix_mul_matrix_bitextract>
    19f8:	00000513          	li	a0,0
    19fc:	00000713          	li	a4,0
    1a00:	00000613          	li	a2,0
    1a04:	00000893          	li	a7,0
    1a08:	015a0833          	add	a6,s4,s5
    1a0c:	00080793          	mv	a5,a6
    1a10:	0140006f          	j	1a24 <matrix_test+0x32c>
    1a14:	01051513          	sll	a0,a0,0x10
    1a18:	00478793          	add	a5,a5,4
    1a1c:	41055513          	sra	a0,a0,0x10
    1a20:	02fa8e63          	beq	s5,a5,1a5c <matrix_test+0x364>
    1a24:	00070693          	mv	a3,a4
    1a28:	0007a703          	lw	a4,0(a5)
    1a2c:	01051513          	sll	a0,a0,0x10
    1a30:	01055513          	srl	a0,a0,0x10
    1a34:	00e6a6b3          	slt	a3,a3,a4
    1a38:	00e60633          	add	a2,a2,a4
    1a3c:	00a50593          	add	a1,a0,10
    1a40:	00d50533          	add	a0,a0,a3
    1a44:	fcc4d8e3          	bge	s1,a2,1a14 <matrix_test+0x31c>
    1a48:	01059513          	sll	a0,a1,0x10
    1a4c:	00478793          	add	a5,a5,4
    1a50:	41055513          	sra	a0,a0,0x10
    1a54:	00000613          	li	a2,0
    1a58:	fcfa96e3          	bne	s5,a5,1a24 <matrix_test+0x32c>
    1a5c:	00188793          	add	a5,a7,1
    1a60:	41680ab3          	sub	s5,a6,s6
    1a64:	01288663          	beq	a7,s2,1a70 <matrix_test+0x378>
    1a68:	00078893          	mv	a7,a5
    1a6c:	f9dff06f          	j	1a08 <matrix_test+0x310>
    1a70:	00098593          	mv	a1,s3
    1a74:	545000ef          	jal	27b8 <crc16>
    1a78:	01412783          	lw	a5,20(sp)
    1a7c:	001b9b93          	sll	s7,s7,0x1
    1a80:	00000593          	li	a1,0
    1a84:	017786b3          	add	a3,a5,s7
    1a88:	41768633          	sub	a2,a3,s7
    1a8c:	00060793          	mv	a5,a2
    1a90:	0007d703          	lhu	a4,0(a5)
    1a94:	00278793          	add	a5,a5,2
    1a98:	40870733          	sub	a4,a4,s0
    1a9c:	fee79f23          	sh	a4,-2(a5)
    1aa0:	fed798e3          	bne	a5,a3,1a90 <matrix_test+0x398>
    1aa4:	00158793          	add	a5,a1,1
    1aa8:	414606b3          	sub	a3,a2,s4
    1aac:	01258663          	beq	a1,s2,1ab8 <matrix_test+0x3c0>
    1ab0:	00078593          	mv	a1,a5
    1ab4:	fd5ff06f          	j	1a88 <matrix_test+0x390>
    1ab8:	04812a03          	lw	s4,72(sp)
    1abc:	04412a83          	lw	s5,68(sp)
    1ac0:	04012b03          	lw	s6,64(sp)
    1ac4:	03c12b83          	lw	s7,60(sp)
    1ac8:	03812c03          	lw	s8,56(sp)
    1acc:	03412c83          	lw	s9,52(sp)
    1ad0:	03012d03          	lw	s10,48(sp)
    1ad4:	02c12d83          	lw	s11,44(sp)
    1ad8:	05c12083          	lw	ra,92(sp)
    1adc:	05812403          	lw	s0,88(sp)
    1ae0:	01051513          	sll	a0,a0,0x10
    1ae4:	05412483          	lw	s1,84(sp)
    1ae8:	05012903          	lw	s2,80(sp)
    1aec:	04c12983          	lw	s3,76(sp)
    1af0:	41055513          	sra	a0,a0,0x10
    1af4:	06010113          	add	sp,sp,96
    1af8:	00008067          	ret
    1afc:	00000593          	li	a1,0
    1b00:	4b9000ef          	jal	27b8 <crc16>
    1b04:	01812983          	lw	s3,24(sp)
    1b08:	01412903          	lw	s2,20(sp)
    1b0c:	01012483          	lw	s1,16(sp)
    1b10:	00098693          	mv	a3,s3
    1b14:	00090613          	mv	a2,s2
    1b18:	00050413          	mv	s0,a0
    1b1c:	00048593          	mv	a1,s1
    1b20:	00000513          	li	a0,0
    1b24:	8ddff0ef          	jal	1400 <matrix_mul_vect>
    1b28:	00040593          	mv	a1,s0
    1b2c:	00000513          	li	a0,0
    1b30:	489000ef          	jal	27b8 <crc16>
    1b34:	00098693          	mv	a3,s3
    1b38:	00090613          	mv	a2,s2
    1b3c:	00050413          	mv	s0,a0
    1b40:	00048593          	mv	a1,s1
    1b44:	00000513          	li	a0,0
    1b48:	985ff0ef          	jal	14cc <matrix_mul_matrix>
    1b4c:	00040593          	mv	a1,s0
    1b50:	00000513          	li	a0,0
    1b54:	465000ef          	jal	27b8 <crc16>
    1b58:	00050413          	mv	s0,a0
    1b5c:	00048593          	mv	a1,s1
    1b60:	00098693          	mv	a3,s3
    1b64:	00090613          	mv	a2,s2
    1b68:	00000513          	li	a0,0
    1b6c:	a6dff0ef          	jal	15d8 <matrix_mul_matrix_bitextract>
    1b70:	00040593          	mv	a1,s0
    1b74:	00000513          	li	a0,0
    1b78:	441000ef          	jal	27b8 <crc16>
    1b7c:	f5dff06f          	j	1ad8 <matrix_test+0x3e0>

00001b80 <core_bench_matrix>:
    1b80:	ff010113          	add	sp,sp,-16
    1b84:	00812423          	sw	s0,8(sp)
    1b88:	00852683          	lw	a3,8(a0)
    1b8c:	00060413          	mv	s0,a2
    1b90:	00058713          	mv	a4,a1
    1b94:	00452603          	lw	a2,4(a0)
    1b98:	00c52583          	lw	a1,12(a0)
    1b9c:	00052503          	lw	a0,0(a0)
    1ba0:	00112623          	sw	ra,12(sp)
    1ba4:	b55ff0ef          	jal	16f8 <matrix_test>
    1ba8:	00040593          	mv	a1,s0
    1bac:	00812403          	lw	s0,8(sp)
    1bb0:	00c12083          	lw	ra,12(sp)
    1bb4:	01010113          	add	sp,sp,16
    1bb8:	4010006f          	j	27b8 <crc16>

00001bbc <barebones_clock>:
    1bbc:	0d10106f          	j	348c <rdcycle>

00001bc0 <start_time>:
    1bc0:	ff010113          	add	sp,sp,-16
    1bc4:	00112623          	sw	ra,12(sp)
    1bc8:	0c5010ef          	jal	348c <rdcycle>
    1bcc:	00c12083          	lw	ra,12(sp)
    1bd0:	000107b7          	lui	a5,0x10
    1bd4:	7aa7ac23          	sw	a0,1976(a5) # 107b8 <start_time_val>
    1bd8:	7ab7ae23          	sw	a1,1980(a5)
    1bdc:	01010113          	add	sp,sp,16
    1be0:	00008067          	ret

00001be4 <stop_time>:
    1be4:	ff010113          	add	sp,sp,-16
    1be8:	00112623          	sw	ra,12(sp)
    1bec:	0a1010ef          	jal	348c <rdcycle>
    1bf0:	00c12083          	lw	ra,12(sp)
    1bf4:	000107b7          	lui	a5,0x10
    1bf8:	7aa7a823          	sw	a0,1968(a5) # 107b0 <stop_time_val>
    1bfc:	7ab7aa23          	sw	a1,1972(a5)
    1c00:	01010113          	add	sp,sp,16
    1c04:	00008067          	ret

00001c08 <get_time>:
    1c08:	000106b7          	lui	a3,0x10
    1c0c:	00010737          	lui	a4,0x10
    1c10:	7b06a783          	lw	a5,1968(a3) # 107b0 <stop_time_val>
    1c14:	7b872503          	lw	a0,1976(a4) # 107b8 <start_time_val>
    1c18:	7b46a583          	lw	a1,1972(a3)
    1c1c:	7bc72703          	lw	a4,1980(a4)
    1c20:	40a78533          	sub	a0,a5,a0
    1c24:	00a7b7b3          	sltu	a5,a5,a0
    1c28:	40e585b3          	sub	a1,a1,a4
    1c2c:	40f585b3          	sub	a1,a1,a5
    1c30:	00008067          	ret

00001c34 <time_in_secs>:
    1c34:	009895b7          	lui	a1,0x989
    1c38:	ff010113          	add	sp,sp,-16
    1c3c:	68058593          	add	a1,a1,1664 # 989680 <IO_BASE+0x589680>
    1c40:	00112623          	sw	ra,12(sp)
    1c44:	09d010ef          	jal	34e0 <__udivsi3>
    1c48:	00c12083          	lw	ra,12(sp)
    1c4c:	01010113          	add	sp,sp,16
    1c50:	00008067          	ret

00001c54 <portable_init>:
    1c54:	ff010113          	add	sp,sp,-16
    1c58:	00812423          	sw	s0,8(sp)
    1c5c:	00010637          	lui	a2,0x10
    1c60:	00050413          	mv	s0,a0
    1c64:	000105b7          	lui	a1,0x10
    1c68:	00010537          	lui	a0,0x10
    1c6c:	3bc60613          	add	a2,a2,956 # 103bc <state_known_crc+0xc>
    1c70:	3c858593          	add	a1,a1,968 # 103c8 <state_known_crc+0x18>
    1c74:	3d450513          	add	a0,a0,980 # 103d4 <state_known_crc+0x24>
    1c78:	00112623          	sw	ra,12(sp)
    1c7c:	6d5000ef          	jal	2b50 <ee_printf>
    1c80:	00010537          	lui	a0,0x10
    1c84:	20c50513          	add	a0,a0,524 # 1020c <seed1_volatile+0x1f0>
    1c88:	6c9000ef          	jal	2b50 <ee_printf>
    1c8c:	00010537          	lui	a0,0x10
    1c90:	3e850513          	add	a0,a0,1000 # 103e8 <state_known_crc+0x38>
    1c94:	6bd000ef          	jal	2b50 <ee_printf>
    1c98:	00100793          	li	a5,1
    1c9c:	00f40023          	sb	a5,0(s0)
    1ca0:	00c12083          	lw	ra,12(sp)
    1ca4:	00812403          	lw	s0,8(sp)
    1ca8:	01010113          	add	sp,sp,16
    1cac:	00008067          	ret

00001cb0 <printk>:
    1cb0:	ff010113          	add	sp,sp,-16
    1cb4:	3e800613          	li	a2,1000
    1cb8:	00000693          	li	a3,0
    1cbc:	00112623          	sw	ra,12(sp)
    1cc0:	00812423          	sw	s0,8(sp)
    1cc4:	00912223          	sw	s1,4(sp)
    1cc8:	01212023          	sw	s2,0(sp)
    1ccc:	00058493          	mv	s1,a1
    1cd0:	00050913          	mv	s2,a0
    1cd4:	101010ef          	jal	35d4 <__umoddi3>
    1cd8:	3e800613          	li	a2,1000
    1cdc:	00000693          	li	a3,0
    1ce0:	00050413          	mv	s0,a0
    1ce4:	00048593          	mv	a1,s1
    1ce8:	00090513          	mv	a0,s2
    1cec:	0a1010ef          	jal	358c <__udivdi3>
    1cf0:	00050593          	mv	a1,a0
    1cf4:	00010537          	lui	a0,0x10
    1cf8:	3ec50513          	add	a0,a0,1004 # 103ec <state_known_crc+0x3c>
    1cfc:	2f5010ef          	jal	37f0 <printf>
    1d00:	06300793          	li	a5,99
    1d04:	0287d463          	bge	a5,s0,1d2c <printk+0x7c>
    1d08:	00040593          	mv	a1,s0
    1d0c:	00812403          	lw	s0,8(sp)
    1d10:	00c12083          	lw	ra,12(sp)
    1d14:	00412483          	lw	s1,4(sp)
    1d18:	00012903          	lw	s2,0(sp)
    1d1c:	00010537          	lui	a0,0x10
    1d20:	3f050513          	add	a0,a0,1008 # 103f0 <state_known_crc+0x40>
    1d24:	01010113          	add	sp,sp,16
    1d28:	2c90106f          	j	37f0 <printf>
    1d2c:	03000513          	li	a0,48
    1d30:	0b5010ef          	jal	35e4 <putchar>
    1d34:	00900793          	li	a5,9
    1d38:	fc87c8e3          	blt	a5,s0,1d08 <printk+0x58>
    1d3c:	03000513          	li	a0,48
    1d40:	0a5010ef          	jal	35e4 <putchar>
    1d44:	fc5ff06f          	j	1d08 <printk+0x58>

00001d48 <print_coremarks>:
    1d48:	fe010113          	add	sp,sp,-32
    1d4c:	00812c23          	sw	s0,24(sp)
    1d50:	00050413          	mv	s0,a0
    1d54:	00010537          	lui	a0,0x10
    1d58:	00912a23          	sw	s1,20(sp)
    1d5c:	3f450513          	add	a0,a0,1012 # 103f4 <state_known_crc+0x44>
    1d60:	00058493          	mv	s1,a1
    1d64:	00040593          	mv	a1,s0
    1d68:	00112e23          	sw	ra,28(sp)
    1d6c:	01212823          	sw	s2,16(sp)
    1d70:	01312623          	sw	s3,12(sp)
    1d74:	01412423          	sw	s4,8(sp)
    1d78:	01512223          	sw	s5,4(sp)
    1d7c:	275010ef          	jal	37f0 <printf>
    1d80:	00010537          	lui	a0,0x10
    1d84:	40c50513          	add	a0,a0,1036 # 1040c <state_known_crc+0x5c>
    1d88:	269010ef          	jal	37f0 <printf>
    1d8c:	00002637          	lui	a2,0x2
    1d90:	71060613          	add	a2,a2,1808 # 2710 <crcu32+0x74>
    1d94:	00000693          	li	a3,0
    1d98:	00040513          	mv	a0,s0
    1d9c:	00048593          	mv	a1,s1
    1da0:	7ec010ef          	jal	358c <__udivdi3>
    1da4:	00050613          	mv	a2,a0
    1da8:	11e1a537          	lui	a0,0x11e1a
    1dac:	00058693          	mv	a3,a1
    1db0:	30050513          	add	a0,a0,768 # 11e1a300 <IO_BASE+0x11a1a300>
    1db4:	00000593          	li	a1,0
    1db8:	7d4010ef          	jal	358c <__udivdi3>
    1dbc:	00a00613          	li	a2,10
    1dc0:	00000693          	li	a3,0
    1dc4:	7c8010ef          	jal	358c <__udivdi3>
    1dc8:	3e800613          	li	a2,1000
    1dcc:	00000693          	li	a3,0
    1dd0:	00058493          	mv	s1,a1
    1dd4:	00050913          	mv	s2,a0
    1dd8:	7fc010ef          	jal	35d4 <__umoddi3>
    1ddc:	3e800613          	li	a2,1000
    1de0:	00000693          	li	a3,0
    1de4:	00048593          	mv	a1,s1
    1de8:	00050413          	mv	s0,a0
    1dec:	00090513          	mv	a0,s2
    1df0:	79c010ef          	jal	358c <__udivdi3>
    1df4:	000104b7          	lui	s1,0x10
    1df8:	00050593          	mv	a1,a0
    1dfc:	3ec48513          	add	a0,s1,1004 # 103ec <state_known_crc+0x3c>
    1e00:	1f1010ef          	jal	37f0 <printf>
    1e04:	06300793          	li	a5,99
    1e08:	1087d863          	bge	a5,s0,1f18 <print_coremarks+0x1d0>
    1e0c:	00010ab7          	lui	s5,0x10
    1e10:	00040593          	mv	a1,s0
    1e14:	3f0a8513          	add	a0,s5,1008 # 103f0 <state_known_crc+0x40>
    1e18:	1d9010ef          	jal	37f0 <printf>
    1e1c:	00a00513          	li	a0,10
    1e20:	7c4010ef          	jal	35e4 <putchar>
    1e24:	668010ef          	jal	348c <rdcycle>
    1e28:	00050413          	mv	s0,a0
    1e2c:	00058a13          	mv	s4,a1
    1e30:	670010ef          	jal	34a0 <rdinstret>
    1e34:	00050993          	mv	s3,a0
    1e38:	00010537          	lui	a0,0x10
    1e3c:	42050513          	add	a0,a0,1056 # 10420 <state_known_crc+0x70>
    1e40:	00058913          	mv	s2,a1
    1e44:	1ad010ef          	jal	37f0 <printf>
    1e48:	00541713          	sll	a4,s0,0x5
    1e4c:	01b45613          	srl	a2,s0,0x1b
    1e50:	005a1793          	sll	a5,s4,0x5
    1e54:	408706b3          	sub	a3,a4,s0
    1e58:	00f667b3          	or	a5,a2,a5
    1e5c:	00d73733          	sltu	a4,a4,a3
    1e60:	414787b3          	sub	a5,a5,s4
    1e64:	40e787b3          	sub	a5,a5,a4
    1e68:	00279793          	sll	a5,a5,0x2
    1e6c:	00269713          	sll	a4,a3,0x2
    1e70:	01e6d693          	srl	a3,a3,0x1e
    1e74:	00870433          	add	s0,a4,s0
    1e78:	00f6e7b3          	or	a5,a3,a5
    1e7c:	014787b3          	add	a5,a5,s4
    1e80:	00e43733          	sltu	a4,s0,a4
    1e84:	00f70733          	add	a4,a4,a5
    1e88:	00371713          	sll	a4,a4,0x3
    1e8c:	01d45593          	srl	a1,s0,0x1d
    1e90:	00e5e5b3          	or	a1,a1,a4
    1e94:	00098613          	mv	a2,s3
    1e98:	00090693          	mv	a3,s2
    1e9c:	00341513          	sll	a0,s0,0x3
    1ea0:	6ec010ef          	jal	358c <__udivdi3>
    1ea4:	3e800613          	li	a2,1000
    1ea8:	00000693          	li	a3,0
    1eac:	00050993          	mv	s3,a0
    1eb0:	00058913          	mv	s2,a1
    1eb4:	720010ef          	jal	35d4 <__umoddi3>
    1eb8:	3e800613          	li	a2,1000
    1ebc:	00000693          	li	a3,0
    1ec0:	00050413          	mv	s0,a0
    1ec4:	00090593          	mv	a1,s2
    1ec8:	00098513          	mv	a0,s3
    1ecc:	6c0010ef          	jal	358c <__udivdi3>
    1ed0:	00050593          	mv	a1,a0
    1ed4:	3ec48513          	add	a0,s1,1004
    1ed8:	119010ef          	jal	37f0 <printf>
    1edc:	06300793          	li	a5,99
    1ee0:	0487da63          	bge	a5,s0,1f34 <print_coremarks+0x1ec>
    1ee4:	00040593          	mv	a1,s0
    1ee8:	3f0a8513          	add	a0,s5,1008
    1eec:	105010ef          	jal	37f0 <printf>
    1ef0:	01812403          	lw	s0,24(sp)
    1ef4:	01c12083          	lw	ra,28(sp)
    1ef8:	01412483          	lw	s1,20(sp)
    1efc:	01012903          	lw	s2,16(sp)
    1f00:	00c12983          	lw	s3,12(sp)
    1f04:	00812a03          	lw	s4,8(sp)
    1f08:	00412a83          	lw	s5,4(sp)
    1f0c:	00a00513          	li	a0,10
    1f10:	02010113          	add	sp,sp,32
    1f14:	6d00106f          	j	35e4 <putchar>
    1f18:	03000513          	li	a0,48
    1f1c:	6c8010ef          	jal	35e4 <putchar>
    1f20:	00900793          	li	a5,9
    1f24:	ee87c4e3          	blt	a5,s0,1e0c <print_coremarks+0xc4>
    1f28:	03000513          	li	a0,48
    1f2c:	6b8010ef          	jal	35e4 <putchar>
    1f30:	eddff06f          	j	1e0c <print_coremarks+0xc4>
    1f34:	03000513          	li	a0,48
    1f38:	6ac010ef          	jal	35e4 <putchar>
    1f3c:	00900793          	li	a5,9
    1f40:	fa87c2e3          	blt	a5,s0,1ee4 <print_coremarks+0x19c>
    1f44:	03000513          	li	a0,48
    1f48:	69c010ef          	jal	35e4 <putchar>
    1f4c:	f99ff06f          	j	1ee4 <print_coremarks+0x19c>

00001f50 <portable_fini>:
    1f50:	00050023          	sb	zero,0(a0)
    1f54:	00008067          	ret

00001f58 <core_init_state>:
    1f58:	fff50893          	add	a7,a0,-1
    1f5c:	00100793          	li	a5,1
    1f60:	00060813          	mv	a6,a2
    1f64:	1317fe63          	bgeu	a5,a7,20a0 <core_init_state+0x148>
    1f68:	00158593          	add	a1,a1,1
    1f6c:	01059593          	sll	a1,a1,0x10
    1f70:	0105d593          	srl	a1,a1,0x10
    1f74:	ff010113          	add	sp,sp,-16
    1f78:	00010637          	lui	a2,0x10
    1f7c:	0035d793          	srl	a5,a1,0x3
    1f80:	00812623          	sw	s0,12(sp)
    1f84:	00700313          	li	t1,7
    1f88:	0075f693          	and	a3,a1,7
    1f8c:	00000393          	li	t2,0
    1f90:	4e460613          	add	a2,a2,1252 # 104e4 <intpat>
    1f94:	00400e13          	li	t3,4
    1f98:	00100e93          	li	t4,1
    1f9c:	02c00f13          	li	t5,44
    1fa0:	0037f793          	and	a5,a5,3
    1fa4:	06668e63          	beq	a3,t1,2020 <core_init_state+0xc8>
    1fa8:	0cde6063          	bltu	t3,a3,2068 <core_init_state+0x110>
    1fac:	ffd68693          	add	a3,a3,-3
    1fb0:	01069693          	sll	a3,a3,0x10
    1fb4:	00279793          	sll	a5,a5,0x2
    1fb8:	0106d693          	srl	a3,a3,0x10
    1fbc:	00f607b3          	add	a5,a2,a5
    1fc0:	08deee63          	bltu	t4,a3,205c <core_init_state+0x104>
    1fc4:	0107a783          	lw	a5,16(a5)
    1fc8:	00800f93          	li	t6,8
    1fcc:	00138693          	add	a3,t2,1
    1fd0:	01f68433          	add	s0,a3,t6
    1fd4:	07147463          	bgeu	s0,a7,203c <core_init_state+0xe4>
    1fd8:	007803b3          	add	t2,a6,t2
    1fdc:	00038713          	mv	a4,t2
    1fe0:	01f782b3          	add	t0,a5,t6
    1fe4:	0007c683          	lbu	a3,0(a5)
    1fe8:	00178793          	add	a5,a5,1
    1fec:	00170713          	add	a4,a4,1
    1ff0:	fed70fa3          	sb	a3,-1(a4)
    1ff4:	fef298e3          	bne	t0,a5,1fe4 <core_init_state+0x8c>
    1ff8:	00158593          	add	a1,a1,1
    1ffc:	01059593          	sll	a1,a1,0x10
    2000:	01f38733          	add	a4,t2,t6
    2004:	0105d593          	srl	a1,a1,0x10
    2008:	0035d793          	srl	a5,a1,0x3
    200c:	01e70023          	sb	t5,0(a4)
    2010:	0075f693          	and	a3,a1,7
    2014:	00040393          	mv	t2,s0
    2018:	0037f793          	and	a5,a5,3
    201c:	f86696e3          	bne	a3,t1,1fa8 <core_init_state+0x50>
    2020:	00279793          	sll	a5,a5,0x2
    2024:	00800f93          	li	t6,8
    2028:	00138693          	add	a3,t2,1
    202c:	00f607b3          	add	a5,a2,a5
    2030:	01f68433          	add	s0,a3,t6
    2034:	0307a783          	lw	a5,48(a5)
    2038:	fb1460e3          	bltu	s0,a7,1fd8 <core_init_state+0x80>
    203c:	04a3fc63          	bgeu	t2,a0,2094 <core_init_state+0x13c>
    2040:	00100613          	li	a2,1
    2044:	02d57c63          	bgeu	a0,a3,207c <core_init_state+0x124>
    2048:	00c12403          	lw	s0,12(sp)
    204c:	00000593          	li	a1,0
    2050:	00780533          	add	a0,a6,t2
    2054:	01010113          	add	sp,sp,16
    2058:	1350106f          	j	398c <memset>
    205c:	0007a783          	lw	a5,0(a5)
    2060:	00400f93          	li	t6,4
    2064:	f69ff06f          	j	1fcc <core_init_state+0x74>
    2068:	00279793          	sll	a5,a5,0x2
    206c:	00f607b3          	add	a5,a2,a5
    2070:	0207a783          	lw	a5,32(a5)
    2074:	00800f93          	li	t6,8
    2078:	f55ff06f          	j	1fcc <core_init_state+0x74>
    207c:	00c12403          	lw	s0,12(sp)
    2080:	40750633          	sub	a2,a0,t2
    2084:	00000593          	li	a1,0
    2088:	00780533          	add	a0,a6,t2
    208c:	01010113          	add	sp,sp,16
    2090:	0fd0106f          	j	398c <memset>
    2094:	00c12403          	lw	s0,12(sp)
    2098:	01010113          	add	sp,sp,16
    209c:	00008067          	ret
    20a0:	00100693          	li	a3,1
    20a4:	00000393          	li	t2,0
    20a8:	00100613          	li	a2,1
    20ac:	00d56463          	bltu	a0,a3,20b4 <core_init_state+0x15c>
    20b0:	40750633          	sub	a2,a0,t2
    20b4:	00000593          	li	a1,0
    20b8:	00780533          	add	a0,a6,t2
    20bc:	0d10106f          	j	398c <memset>

000020c0 <core_state_transition>:
    20c0:	00052783          	lw	a5,0(a0)
    20c4:	00050813          	mv	a6,a0
    20c8:	0007c703          	lbu	a4,0(a5)
    20cc:	28070263          	beqz	a4,2350 <core_state_transition+0x290>
    20d0:	02c00693          	li	a3,44
    20d4:	00000513          	li	a0,0
    20d8:	20d70a63          	beq	a4,a3,22ec <core_state_transition+0x22c>
    20dc:	02e00513          	li	a0,46
    20e0:	22a70663          	beq	a4,a0,230c <core_state_transition+0x24c>
    20e4:	1ce56a63          	bltu	a0,a4,22b8 <core_state_transition+0x1f8>
    20e8:	fd570713          	add	a4,a4,-43
    20ec:	0fd77713          	and	a4,a4,253
    20f0:	02070663          	beqz	a4,211c <core_state_transition+0x5c>
    20f4:	0045a683          	lw	a3,4(a1)
    20f8:	0005a703          	lw	a4,0(a1)
    20fc:	00178793          	add	a5,a5,1
    2100:	00168693          	add	a3,a3,1
    2104:	00170713          	add	a4,a4,1
    2108:	00d5a223          	sw	a3,4(a1)
    210c:	00e5a023          	sw	a4,0(a1)
    2110:	00100513          	li	a0,1
    2114:	00f82023          	sw	a5,0(a6)
    2118:	00008067          	ret
    211c:	0005a703          	lw	a4,0(a1)
    2120:	00178613          	add	a2,a5,1
    2124:	00170713          	add	a4,a4,1
    2128:	00e5a023          	sw	a4,0(a1)
    212c:	0017c883          	lbu	a7,1(a5)
    2130:	26088663          	beqz	a7,239c <core_state_transition+0x2dc>
    2134:	20d88663          	beq	a7,a3,2340 <core_state_transition+0x280>
    2138:	0085a683          	lw	a3,8(a1)
    213c:	fd088713          	add	a4,a7,-48
    2140:	0ff77713          	zext.b	a4,a4
    2144:	00900313          	li	t1,9
    2148:	00168693          	add	a3,a3,1
    214c:	00e37e63          	bgeu	t1,a4,2168 <core_state_transition+0xa8>
    2150:	1ea88463          	beq	a7,a0,2338 <core_state_transition+0x278>
    2154:	00d5a423          	sw	a3,8(a1)
    2158:	00278793          	add	a5,a5,2
    215c:	00100513          	li	a0,1
    2160:	00f82023          	sw	a5,0(a6)
    2164:	00008067          	ret
    2168:	00d5a423          	sw	a3,8(a1)
    216c:	00164783          	lbu	a5,1(a2)
    2170:	00160613          	add	a2,a2,1
    2174:	1e078263          	beqz	a5,2358 <core_state_transition+0x298>
    2178:	02c00713          	li	a4,44
    217c:	16e78463          	beq	a5,a4,22e4 <core_state_transition+0x224>
    2180:	02e00713          	li	a4,46
    2184:	02e78863          	beq	a5,a4,21b4 <core_state_transition+0xf4>
    2188:	fd078793          	add	a5,a5,-48
    218c:	0ff7f793          	zext.b	a5,a5
    2190:	00900713          	li	a4,9
    2194:	fcf77ce3          	bgeu	a4,a5,216c <core_state_transition+0xac>
    2198:	0105a703          	lw	a4,16(a1)
    219c:	00160793          	add	a5,a2,1
    21a0:	00100513          	li	a0,1
    21a4:	00170713          	add	a4,a4,1
    21a8:	00e5a823          	sw	a4,16(a1)
    21ac:	00f82023          	sw	a5,0(a6)
    21b0:	00008067          	ret
    21b4:	0105a783          	lw	a5,16(a1)
    21b8:	00178793          	add	a5,a5,1
    21bc:	00f5a823          	sw	a5,16(a1)
    21c0:	0140006f          	j	21d4 <core_state_transition+0x114>
    21c4:	fd078793          	add	a5,a5,-48
    21c8:	0ff7f793          	zext.b	a5,a5
    21cc:	00900713          	li	a4,9
    21d0:	12f76263          	bltu	a4,a5,22f4 <core_state_transition+0x234>
    21d4:	00164783          	lbu	a5,1(a2)
    21d8:	00160613          	add	a2,a2,1
    21dc:	1a078a63          	beqz	a5,2390 <core_state_transition+0x2d0>
    21e0:	02c00713          	li	a4,44
    21e4:	14e78263          	beq	a5,a4,2328 <core_state_transition+0x268>
    21e8:	0df7f713          	and	a4,a5,223
    21ec:	04500693          	li	a3,69
    21f0:	fcd71ae3          	bne	a4,a3,21c4 <core_state_transition+0x104>
    21f4:	0145a703          	lw	a4,20(a1)
    21f8:	00160793          	add	a5,a2,1
    21fc:	00300513          	li	a0,3
    2200:	00170713          	add	a4,a4,1
    2204:	00e5aa23          	sw	a4,20(a1)
    2208:	00164703          	lbu	a4,1(a2)
    220c:	f00704e3          	beqz	a4,2114 <core_state_transition+0x54>
    2210:	02c00693          	li	a3,44
    2214:	14d70863          	beq	a4,a3,2364 <core_state_transition+0x2a4>
    2218:	00c5a783          	lw	a5,12(a1)
    221c:	fd570713          	add	a4,a4,-43
    2220:	0fd77713          	and	a4,a4,253
    2224:	00178793          	add	a5,a5,1
    2228:	00f5a623          	sw	a5,12(a1)
    222c:	00100513          	li	a0,1
    2230:	00260793          	add	a5,a2,2
    2234:	ee0710e3          	bnez	a4,2114 <core_state_transition+0x54>
    2238:	00264703          	lbu	a4,2(a2)
    223c:	00260793          	add	a5,a2,2
    2240:	00600513          	li	a0,6
    2244:	ec0708e3          	beqz	a4,2114 <core_state_transition+0x54>
    2248:	12d70463          	beq	a4,a3,2370 <core_state_transition+0x2b0>
    224c:	0185a683          	lw	a3,24(a1)
    2250:	fd070713          	add	a4,a4,-48
    2254:	0ff77713          	zext.b	a4,a4
    2258:	00168693          	add	a3,a3,1
    225c:	00900513          	li	a0,9
    2260:	00d5ac23          	sw	a3,24(a1)
    2264:	00e57a63          	bgeu	a0,a4,2278 <core_state_transition+0x1b8>
    2268:	00360793          	add	a5,a2,3
    226c:	00100513          	li	a0,1
    2270:	00f82023          	sw	a5,0(a6)
    2274:	00008067          	ret
    2278:	00900613          	li	a2,9
    227c:	0017c683          	lbu	a3,1(a5)
    2280:	00078513          	mv	a0,a5
    2284:	02c00893          	li	a7,44
    2288:	fd068713          	add	a4,a3,-48
    228c:	00178793          	add	a5,a5,1
    2290:	0ff77713          	zext.b	a4,a4
    2294:	0e068463          	beqz	a3,237c <core_state_transition+0x2bc>
    2298:	0f168663          	beq	a3,a7,2384 <core_state_transition+0x2c4>
    229c:	fee670e3          	bgeu	a2,a4,227c <core_state_transition+0x1bc>
    22a0:	0045a703          	lw	a4,4(a1)
    22a4:	00250793          	add	a5,a0,2
    22a8:	00100513          	li	a0,1
    22ac:	00170713          	add	a4,a4,1
    22b0:	00e5a223          	sw	a4,4(a1)
    22b4:	e61ff06f          	j	2114 <core_state_transition+0x54>
    22b8:	fd070713          	add	a4,a4,-48
    22bc:	0ff77713          	zext.b	a4,a4
    22c0:	00900613          	li	a2,9
    22c4:	e2e668e3          	bltu	a2,a4,20f4 <core_state_transition+0x34>
    22c8:	0005a703          	lw	a4,0(a1)
    22cc:	00178613          	add	a2,a5,1
    22d0:	00170713          	add	a4,a4,1
    22d4:	00e5a023          	sw	a4,0(a1)
    22d8:	0017c783          	lbu	a5,1(a5)
    22dc:	06078e63          	beqz	a5,2358 <core_state_transition+0x298>
    22e0:	ead790e3          	bne	a5,a3,2180 <core_state_transition+0xc0>
    22e4:	00060793          	mv	a5,a2
    22e8:	00400513          	li	a0,4
    22ec:	00178793          	add	a5,a5,1
    22f0:	e25ff06f          	j	2114 <core_state_transition+0x54>
    22f4:	0145a703          	lw	a4,20(a1)
    22f8:	00160793          	add	a5,a2,1
    22fc:	00100513          	li	a0,1
    2300:	00170713          	add	a4,a4,1
    2304:	00e5aa23          	sw	a4,20(a1)
    2308:	e0dff06f          	j	2114 <core_state_transition+0x54>
    230c:	0005a703          	lw	a4,0(a1)
    2310:	00178613          	add	a2,a5,1
    2314:	00170713          	add	a4,a4,1
    2318:	00e5a023          	sw	a4,0(a1)
    231c:	0017c783          	lbu	a5,1(a5)
    2320:	06078863          	beqz	a5,2390 <core_state_transition+0x2d0>
    2324:	ecd792e3          	bne	a5,a3,21e8 <core_state_transition+0x128>
    2328:	00060793          	mv	a5,a2
    232c:	00500513          	li	a0,5
    2330:	00178793          	add	a5,a5,1
    2334:	de1ff06f          	j	2114 <core_state_transition+0x54>
    2338:	00d5a423          	sw	a3,8(a1)
    233c:	e99ff06f          	j	21d4 <core_state_transition+0x114>
    2340:	00060793          	mv	a5,a2
    2344:	00200513          	li	a0,2
    2348:	00178793          	add	a5,a5,1
    234c:	dc9ff06f          	j	2114 <core_state_transition+0x54>
    2350:	00000513          	li	a0,0
    2354:	dc1ff06f          	j	2114 <core_state_transition+0x54>
    2358:	00060793          	mv	a5,a2
    235c:	00400513          	li	a0,4
    2360:	db5ff06f          	j	2114 <core_state_transition+0x54>
    2364:	00300513          	li	a0,3
    2368:	00178793          	add	a5,a5,1
    236c:	da9ff06f          	j	2114 <core_state_transition+0x54>
    2370:	00600513          	li	a0,6
    2374:	00178793          	add	a5,a5,1
    2378:	d9dff06f          	j	2114 <core_state_transition+0x54>
    237c:	00700513          	li	a0,7
    2380:	d95ff06f          	j	2114 <core_state_transition+0x54>
    2384:	00700513          	li	a0,7
    2388:	00178793          	add	a5,a5,1
    238c:	d89ff06f          	j	2114 <core_state_transition+0x54>
    2390:	00060793          	mv	a5,a2
    2394:	00500513          	li	a0,5
    2398:	d7dff06f          	j	2114 <core_state_transition+0x54>
    239c:	00060793          	mv	a5,a2
    23a0:	00200513          	li	a0,2
    23a4:	d71ff06f          	j	2114 <core_state_transition+0x54>

000023a8 <core_bench_state>:
    23a8:	f8010113          	add	sp,sp,-128
    23ac:	06812c23          	sw	s0,120(sp)
    23b0:	06912a23          	sw	s1,116(sp)
    23b4:	07212823          	sw	s2,112(sp)
    23b8:	07312623          	sw	s3,108(sp)
    23bc:	07412423          	sw	s4,104(sp)
    23c0:	07512223          	sw	s5,100(sp)
    23c4:	07612023          	sw	s6,96(sp)
    23c8:	05712e23          	sw	s7,92(sp)
    23cc:	06112e23          	sw	ra,124(sp)
    23d0:	00058413          	mv	s0,a1
    23d4:	0005c583          	lbu	a1,0(a1)
    23d8:	00812623          	sw	s0,12(sp)
    23dc:	02012823          	sw	zero,48(sp)
    23e0:	00012823          	sw	zero,16(sp)
    23e4:	02012a23          	sw	zero,52(sp)
    23e8:	02012c23          	sw	zero,56(sp)
    23ec:	02012e23          	sw	zero,60(sp)
    23f0:	04012023          	sw	zero,64(sp)
    23f4:	04012223          	sw	zero,68(sp)
    23f8:	04012423          	sw	zero,72(sp)
    23fc:	04012623          	sw	zero,76(sp)
    2400:	00012a23          	sw	zero,20(sp)
    2404:	00012c23          	sw	zero,24(sp)
    2408:	00012e23          	sw	zero,28(sp)
    240c:	02012023          	sw	zero,32(sp)
    2410:	02012223          	sw	zero,36(sp)
    2414:	02012423          	sw	zero,40(sp)
    2418:	02012623          	sw	zero,44(sp)
    241c:	03010913          	add	s2,sp,48
    2420:	00050b93          	mv	s7,a0
    2424:	00060b13          	mv	s6,a2
    2428:	00068a13          	mv	s4,a3
    242c:	00070993          	mv	s3,a4
    2430:	00078493          	mv	s1,a5
    2434:	00c10a93          	add	s5,sp,12
    2438:	12058063          	beqz	a1,2558 <core_bench_state+0x1b0>
    243c:	00090593          	mv	a1,s2
    2440:	000a8513          	mv	a0,s5
    2444:	c7dff0ef          	jal	20c0 <core_state_transition>
    2448:	00251813          	sll	a6,a0,0x2
    244c:	05080793          	add	a5,a6,80
    2450:	00278833          	add	a6,a5,sp
    2454:	00c12703          	lw	a4,12(sp)
    2458:	fc082783          	lw	a5,-64(a6)
    245c:	00074703          	lbu	a4,0(a4)
    2460:	00178793          	add	a5,a5,1
    2464:	fcf82023          	sw	a5,-64(a6)
    2468:	fc071ae3          	bnez	a4,243c <core_bench_state+0x94>
    246c:	00812623          	sw	s0,12(sp)
    2470:	01740bb3          	add	s7,s0,s7
    2474:	03747863          	bgeu	s0,s7,24a4 <core_bench_state+0xfc>
    2478:	00040793          	mv	a5,s0
    247c:	02c00613          	li	a2,44
    2480:	0007c703          	lbu	a4,0(a5)
    2484:	016746b3          	xor	a3,a4,s6
    2488:	00c70463          	beq	a4,a2,2490 <core_bench_state+0xe8>
    248c:	00d78023          	sb	a3,0(a5)
    2490:	013787b3          	add	a5,a5,s3
    2494:	ff77e6e3          	bltu	a5,s7,2480 <core_bench_state+0xd8>
    2498:	00044783          	lbu	a5,0(s0)
    249c:	00c10a93          	add	s5,sp,12
    24a0:	02078a63          	beqz	a5,24d4 <core_bench_state+0x12c>
    24a4:	00090593          	mv	a1,s2
    24a8:	000a8513          	mv	a0,s5
    24ac:	c15ff0ef          	jal	20c0 <core_state_transition>
    24b0:	00251613          	sll	a2,a0,0x2
    24b4:	05060793          	add	a5,a2,80
    24b8:	00278633          	add	a2,a5,sp
    24bc:	00c12703          	lw	a4,12(sp)
    24c0:	fc062783          	lw	a5,-64(a2)
    24c4:	00074703          	lbu	a4,0(a4)
    24c8:	00178793          	add	a5,a5,1
    24cc:	fcf62023          	sw	a5,-64(a2)
    24d0:	fc071ae3          	bnez	a4,24a4 <core_bench_state+0xfc>
    24d4:	00812623          	sw	s0,12(sp)
    24d8:	00040613          	mv	a2,s0
    24dc:	02c00693          	li	a3,44
    24e0:	01747e63          	bgeu	s0,s7,24fc <core_bench_state+0x154>
    24e4:	00064783          	lbu	a5,0(a2)
    24e8:	0147c733          	xor	a4,a5,s4
    24ec:	00d78463          	beq	a5,a3,24f4 <core_bench_state+0x14c>
    24f0:	00e60023          	sb	a4,0(a2)
    24f4:	01360633          	add	a2,a2,s3
    24f8:	ff7666e3          	bltu	a2,s7,24e4 <core_bench_state+0x13c>
    24fc:	01010413          	add	s0,sp,16
    2500:	00090993          	mv	s3,s2
    2504:	00042503          	lw	a0,0(s0)
    2508:	00048593          	mv	a1,s1
    250c:	00440413          	add	s0,s0,4
    2510:	18c000ef          	jal	269c <crcu32>
    2514:	00050593          	mv	a1,a0
    2518:	0009a503          	lw	a0,0(s3)
    251c:	00498993          	add	s3,s3,4
    2520:	17c000ef          	jal	269c <crcu32>
    2524:	00050493          	mv	s1,a0
    2528:	fc891ee3          	bne	s2,s0,2504 <core_bench_state+0x15c>
    252c:	07c12083          	lw	ra,124(sp)
    2530:	07812403          	lw	s0,120(sp)
    2534:	07412483          	lw	s1,116(sp)
    2538:	07012903          	lw	s2,112(sp)
    253c:	06c12983          	lw	s3,108(sp)
    2540:	06812a03          	lw	s4,104(sp)
    2544:	06412a83          	lw	s5,100(sp)
    2548:	06012b03          	lw	s6,96(sp)
    254c:	05c12b83          	lw	s7,92(sp)
    2550:	08010113          	add	sp,sp,128
    2554:	00008067          	ret
    2558:	00a40bb3          	add	s7,s0,a0
    255c:	f1746ee3          	bltu	s0,s7,2478 <core_bench_state+0xd0>
    2560:	f9dff06f          	j	24fc <core_bench_state+0x154>

00002564 <get_seed_32>:
    2564:	00500793          	li	a5,5
    2568:	04a7ec63          	bltu	a5,a0,25c0 <get_seed_32+0x5c>
    256c:	000107b7          	lui	a5,0x10
    2570:	52478793          	add	a5,a5,1316 # 10524 <errpat+0x10>
    2574:	00251513          	sll	a0,a0,0x2
    2578:	00f50533          	add	a0,a0,a5
    257c:	00052783          	lw	a5,0(a0)
    2580:	00078067          	jr	a5
    2584:	000107b7          	lui	a5,0x10
    2588:	7c07a503          	lw	a0,1984(a5) # 107c0 <seed5_volatile>
    258c:	00008067          	ret
    2590:	000107b7          	lui	a5,0x10
    2594:	01c7a503          	lw	a0,28(a5) # 1001c <seed1_volatile>
    2598:	00008067          	ret
    259c:	000107b7          	lui	a5,0x10
    25a0:	0187a503          	lw	a0,24(a5) # 10018 <seed2_volatile>
    25a4:	00008067          	ret
    25a8:	000107b7          	lui	a5,0x10
    25ac:	0147a503          	lw	a0,20(a5) # 10014 <seed3_volatile>
    25b0:	00008067          	ret
    25b4:	000107b7          	lui	a5,0x10
    25b8:	0107a503          	lw	a0,16(a5) # 10010 <seed4_volatile>
    25bc:	00008067          	ret
    25c0:	00000513          	li	a0,0
    25c4:	00008067          	ret

000025c8 <crcu8>:
    25c8:	ffffa637          	lui	a2,0xffffa
    25cc:	00050693          	mv	a3,a0
    25d0:	00800713          	li	a4,8
    25d4:	00058513          	mv	a0,a1
    25d8:	00160613          	add	a2,a2,1 # ffffa001 <IO_BASE+0xffbfa001>
    25dc:	00a6c7b3          	xor	a5,a3,a0
    25e0:	0017f793          	and	a5,a5,1
    25e4:	40f007b3          	neg	a5,a5
    25e8:	00155513          	srl	a0,a0,0x1
    25ec:	00c7f7b3          	and	a5,a5,a2
    25f0:	fff70713          	add	a4,a4,-1
    25f4:	00a7c7b3          	xor	a5,a5,a0
    25f8:	01079513          	sll	a0,a5,0x10
    25fc:	0ff77713          	zext.b	a4,a4
    2600:	0016d693          	srl	a3,a3,0x1
    2604:	01055513          	srl	a0,a0,0x10
    2608:	fc071ae3          	bnez	a4,25dc <crcu8+0x14>
    260c:	00008067          	ret

00002610 <crcu16>:
    2610:	00050693          	mv	a3,a0
    2614:	ffffa837          	lui	a6,0xffffa
    2618:	00058513          	mv	a0,a1
    261c:	0ff6f613          	zext.b	a2,a3
    2620:	00800713          	li	a4,8
    2624:	00180813          	add	a6,a6,1 # ffffa001 <IO_BASE+0xffbfa001>
    2628:	00a647b3          	xor	a5,a2,a0
    262c:	0017f793          	and	a5,a5,1
    2630:	40f007b3          	neg	a5,a5
    2634:	00155513          	srl	a0,a0,0x1
    2638:	0107f7b3          	and	a5,a5,a6
    263c:	fff70713          	add	a4,a4,-1
    2640:	00a7c7b3          	xor	a5,a5,a0
    2644:	01079513          	sll	a0,a5,0x10
    2648:	0ff77713          	zext.b	a4,a4
    264c:	00165613          	srl	a2,a2,0x1
    2650:	01055513          	srl	a0,a0,0x10
    2654:	fc071ae3          	bnez	a4,2628 <crcu16+0x18>
    2658:	ffffa637          	lui	a2,0xffffa
    265c:	0086d693          	srl	a3,a3,0x8
    2660:	00800713          	li	a4,8
    2664:	00160613          	add	a2,a2,1 # ffffa001 <IO_BASE+0xffbfa001>
    2668:	00a6c7b3          	xor	a5,a3,a0
    266c:	0017f793          	and	a5,a5,1
    2670:	40f007b3          	neg	a5,a5
    2674:	00155513          	srl	a0,a0,0x1
    2678:	00c7f7b3          	and	a5,a5,a2
    267c:	fff70713          	add	a4,a4,-1
    2680:	00a7c7b3          	xor	a5,a5,a0
    2684:	01079513          	sll	a0,a5,0x10
    2688:	0ff77713          	zext.b	a4,a4
    268c:	0016d693          	srl	a3,a3,0x1
    2690:	01055513          	srl	a0,a0,0x10
    2694:	fc071ae3          	bnez	a4,2668 <crcu16+0x58>
    2698:	00008067          	ret

0000269c <crcu32>:
    269c:	00050693          	mv	a3,a0
    26a0:	ffffa837          	lui	a6,0xffffa
    26a4:	01069613          	sll	a2,a3,0x10
    26a8:	00058513          	mv	a0,a1
    26ac:	01065613          	srl	a2,a2,0x10
    26b0:	0ff6f593          	zext.b	a1,a3
    26b4:	00800713          	li	a4,8
    26b8:	00180813          	add	a6,a6,1 # ffffa001 <IO_BASE+0xffbfa001>
    26bc:	00a5c7b3          	xor	a5,a1,a0
    26c0:	0017f793          	and	a5,a5,1
    26c4:	40f007b3          	neg	a5,a5
    26c8:	00155513          	srl	a0,a0,0x1
    26cc:	0107f7b3          	and	a5,a5,a6
    26d0:	fff70713          	add	a4,a4,-1
    26d4:	00a7c7b3          	xor	a5,a5,a0
    26d8:	01079513          	sll	a0,a5,0x10
    26dc:	0ff77713          	zext.b	a4,a4
    26e0:	0015d593          	srl	a1,a1,0x1
    26e4:	01055513          	srl	a0,a0,0x10
    26e8:	fc071ae3          	bnez	a4,26bc <crcu32+0x20>
    26ec:	ffffa5b7          	lui	a1,0xffffa
    26f0:	00865613          	srl	a2,a2,0x8
    26f4:	00800713          	li	a4,8
    26f8:	00158593          	add	a1,a1,1 # ffffa001 <IO_BASE+0xffbfa001>
    26fc:	00a647b3          	xor	a5,a2,a0
    2700:	0017f793          	and	a5,a5,1
    2704:	40f007b3          	neg	a5,a5
    2708:	00155513          	srl	a0,a0,0x1
    270c:	00b7f7b3          	and	a5,a5,a1
    2710:	fff70713          	add	a4,a4,-1
    2714:	00a7c7b3          	xor	a5,a5,a0
    2718:	01079513          	sll	a0,a5,0x10
    271c:	0ff77713          	zext.b	a4,a4
    2720:	00165613          	srl	a2,a2,0x1
    2724:	01055513          	srl	a0,a0,0x10
    2728:	fc071ae3          	bnez	a4,26fc <crcu32+0x60>
    272c:	0106d613          	srl	a2,a3,0x10
    2730:	ffffa5b7          	lui	a1,0xffffa
    2734:	00060693          	mv	a3,a2
    2738:	00800713          	li	a4,8
    273c:	0ff67613          	zext.b	a2,a2
    2740:	00158593          	add	a1,a1,1 # ffffa001 <IO_BASE+0xffbfa001>
    2744:	00a647b3          	xor	a5,a2,a0
    2748:	0017f793          	and	a5,a5,1
    274c:	40f007b3          	neg	a5,a5
    2750:	00155513          	srl	a0,a0,0x1
    2754:	00b7f7b3          	and	a5,a5,a1
    2758:	fff70713          	add	a4,a4,-1
    275c:	00a7c7b3          	xor	a5,a5,a0
    2760:	01079513          	sll	a0,a5,0x10
    2764:	0ff77713          	zext.b	a4,a4
    2768:	00165613          	srl	a2,a2,0x1
    276c:	01055513          	srl	a0,a0,0x10
    2770:	fc071ae3          	bnez	a4,2744 <crcu32+0xa8>
    2774:	ffffa637          	lui	a2,0xffffa
    2778:	0086d693          	srl	a3,a3,0x8
    277c:	00800713          	li	a4,8
    2780:	00160613          	add	a2,a2,1 # ffffa001 <IO_BASE+0xffbfa001>
    2784:	00a6c7b3          	xor	a5,a3,a0
    2788:	0017f793          	and	a5,a5,1
    278c:	40f007b3          	neg	a5,a5
    2790:	00155513          	srl	a0,a0,0x1
    2794:	00c7f7b3          	and	a5,a5,a2
    2798:	fff70713          	add	a4,a4,-1
    279c:	00a7c7b3          	xor	a5,a5,a0
    27a0:	01079513          	sll	a0,a5,0x10
    27a4:	0ff77713          	zext.b	a4,a4
    27a8:	0016d693          	srl	a3,a3,0x1
    27ac:	01055513          	srl	a0,a0,0x10
    27b0:	fc071ae3          	bnez	a4,2784 <crcu32+0xe8>
    27b4:	00008067          	ret

000027b8 <crc16>:
    27b8:	00050693          	mv	a3,a0
    27bc:	01069613          	sll	a2,a3,0x10
    27c0:	ffffa837          	lui	a6,0xffffa
    27c4:	00058513          	mv	a0,a1
    27c8:	01065613          	srl	a2,a2,0x10
    27cc:	0ff6f693          	zext.b	a3,a3
    27d0:	00800713          	li	a4,8
    27d4:	00180813          	add	a6,a6,1 # ffffa001 <IO_BASE+0xffbfa001>
    27d8:	00a6c7b3          	xor	a5,a3,a0
    27dc:	0017f793          	and	a5,a5,1
    27e0:	40f007b3          	neg	a5,a5
    27e4:	00155513          	srl	a0,a0,0x1
    27e8:	0107f7b3          	and	a5,a5,a6
    27ec:	fff70713          	add	a4,a4,-1
    27f0:	00a7c7b3          	xor	a5,a5,a0
    27f4:	01079513          	sll	a0,a5,0x10
    27f8:	0ff77713          	zext.b	a4,a4
    27fc:	0016d693          	srl	a3,a3,0x1
    2800:	01055513          	srl	a0,a0,0x10
    2804:	fc071ae3          	bnez	a4,27d8 <crc16+0x20>
    2808:	ffffa5b7          	lui	a1,0xffffa
    280c:	00865693          	srl	a3,a2,0x8
    2810:	00800713          	li	a4,8
    2814:	00158593          	add	a1,a1,1 # ffffa001 <IO_BASE+0xffbfa001>
    2818:	00a6c7b3          	xor	a5,a3,a0
    281c:	0017f793          	and	a5,a5,1
    2820:	40f007b3          	neg	a5,a5
    2824:	00155513          	srl	a0,a0,0x1
    2828:	00b7f7b3          	and	a5,a5,a1
    282c:	fff70713          	add	a4,a4,-1
    2830:	00a7c7b3          	xor	a5,a5,a0
    2834:	01079513          	sll	a0,a5,0x10
    2838:	0ff77713          	zext.b	a4,a4
    283c:	0016d693          	srl	a3,a3,0x1
    2840:	01055513          	srl	a0,a0,0x10
    2844:	fc071ae3          	bnez	a4,2818 <crc16+0x60>
    2848:	00008067          	ret

0000284c <check_data_types>:
    284c:	00000513          	li	a0,0
    2850:	00008067          	ret

00002854 <number>:
    2854:	f6010113          	add	sp,sp,-160
    2858:	08812c23          	sw	s0,152(sp)
    285c:	08912a23          	sw	s1,148(sp)
    2860:	09212823          	sw	s2,144(sp)
    2864:	09312623          	sw	s3,140(sp)
    2868:	09612023          	sw	s6,128(sp)
    286c:	08112e23          	sw	ra,156(sp)
    2870:	09412423          	sw	s4,136(sp)
    2874:	09512223          	sw	s5,132(sp)
    2878:	07712e23          	sw	s7,124(sp)
    287c:	07812c23          	sw	s8,120(sp)
    2880:	07a12823          	sw	s10,112(sp)
    2884:	07b12623          	sw	s11,108(sp)
    2888:	0407f813          	and	a6,a5,64
    288c:	00050413          	mv	s0,a0
    2890:	00058993          	mv	s3,a1
    2894:	00060493          	mv	s1,a2
    2898:	00068913          	mv	s2,a3
    289c:	00070b13          	mv	s6,a4
    28a0:	1c081063          	bnez	a6,2a60 <number+0x20c>
    28a4:	00010ab7          	lui	s5,0x10
    28a8:	53ca8a93          	add	s5,s5,1340 # 1053c <errpat+0x28>
    28ac:	0107fc13          	and	s8,a5,16
    28b0:	180c0463          	beqz	s8,2a38 <number+0x1e4>
    28b4:	01000713          	li	a4,16
    28b8:	00e12223          	sw	a4,4(sp)
    28bc:	02000713          	li	a4,32
    28c0:	ffe7f793          	and	a5,a5,-2
    28c4:	00e12623          	sw	a4,12(sp)
    28c8:	0027f713          	and	a4,a5,2
    28cc:	0207fb93          	and	s7,a5,32
    28d0:	18070e63          	beqz	a4,2a6c <number+0x218>
    28d4:	2009ca63          	bltz	s3,2ae8 <number+0x294>
    28d8:	0047f713          	and	a4,a5,4
    28dc:	1e071263          	bnez	a4,2ac0 <number+0x26c>
    28e0:	0087f793          	and	a5,a5,8
    28e4:	00012423          	sw	zero,8(sp)
    28e8:	00078863          	beqz	a5,28f8 <number+0xa4>
    28ec:	02000793          	li	a5,32
    28f0:	fff90913          	add	s2,s2,-1
    28f4:	00f12423          	sw	a5,8(sp)
    28f8:	000b8e63          	beqz	s7,2914 <number+0xc0>
    28fc:	01000793          	li	a5,16
    2900:	20f48263          	beq	s1,a5,2b04 <number+0x2b0>
    2904:	ff848793          	add	a5,s1,-8
    2908:	0017b793          	seqz	a5,a5
    290c:	02000b93          	li	s7,32
    2910:	40f90933          	sub	s2,s2,a5
    2914:	16099063          	bnez	s3,2a74 <number+0x220>
    2918:	03000793          	li	a5,48
    291c:	00f10e23          	sb	a5,28(sp)
    2920:	00100d13          	li	s10,1
    2924:	01c10d93          	add	s11,sp,28
    2928:	000d0a13          	mv	s4,s10
    292c:	016d5463          	bge	s10,s6,2934 <number+0xe0>
    2930:	000b0a13          	mv	s4,s6
    2934:	00412783          	lw	a5,4(sp)
    2938:	41490933          	sub	s2,s2,s4
    293c:	02079063          	bnez	a5,295c <number+0x108>
    2940:	1f205a63          	blez	s2,2b34 <number+0x2e0>
    2944:	00090613          	mv	a2,s2
    2948:	00040513          	mv	a0,s0
    294c:	02000593          	li	a1,32
    2950:	01240433          	add	s0,s0,s2
    2954:	038010ef          	jal	398c <memset>
    2958:	fff00913          	li	s2,-1
    295c:	00812783          	lw	a5,8(sp)
    2960:	00078663          	beqz	a5,296c <number+0x118>
    2964:	00f40023          	sb	a5,0(s0)
    2968:	00140413          	add	s0,s0,1
    296c:	000b8a63          	beqz	s7,2980 <number+0x12c>
    2970:	00800713          	li	a4,8
    2974:	18e48e63          	beq	s1,a4,2b10 <number+0x2bc>
    2978:	01000713          	li	a4,16
    297c:	14e48a63          	beq	s1,a4,2ad0 <number+0x27c>
    2980:	020c1063          	bnez	s8,29a0 <number+0x14c>
    2984:	1b205463          	blez	s2,2b2c <number+0x2d8>
    2988:	00c12583          	lw	a1,12(sp)
    298c:	00090613          	mv	a2,s2
    2990:	00040513          	mv	a0,s0
    2994:	7f9000ef          	jal	398c <memset>
    2998:	01240433          	add	s0,s0,s2
    299c:	fff00913          	li	s2,-1
    29a0:	014d5e63          	bge	s10,s4,29bc <number+0x168>
    29a4:	41aa0a33          	sub	s4,s4,s10
    29a8:	00040513          	mv	a0,s0
    29ac:	000a0613          	mv	a2,s4
    29b0:	03000593          	li	a1,48
    29b4:	7d9000ef          	jal	398c <memset>
    29b8:	01440433          	add	s0,s0,s4
    29bc:	013d87b3          	add	a5,s11,s3
    29c0:	00040713          	mv	a4,s0
    29c4:	0007c603          	lbu	a2,0(a5)
    29c8:	00078693          	mv	a3,a5
    29cc:	00170713          	add	a4,a4,1
    29d0:	fec70fa3          	sb	a2,-1(a4)
    29d4:	fff78793          	add	a5,a5,-1
    29d8:	fedd96e3          	bne	s11,a3,29c4 <number+0x170>
    29dc:	00198993          	add	s3,s3,1
    29e0:	01340433          	add	s0,s0,s3
    29e4:	01205c63          	blez	s2,29fc <number+0x1a8>
    29e8:	00040513          	mv	a0,s0
    29ec:	00090613          	mv	a2,s2
    29f0:	02000593          	li	a1,32
    29f4:	799000ef          	jal	398c <memset>
    29f8:	01240433          	add	s0,s0,s2
    29fc:	09c12083          	lw	ra,156(sp)
    2a00:	00040513          	mv	a0,s0
    2a04:	09812403          	lw	s0,152(sp)
    2a08:	09412483          	lw	s1,148(sp)
    2a0c:	09012903          	lw	s2,144(sp)
    2a10:	08c12983          	lw	s3,140(sp)
    2a14:	08812a03          	lw	s4,136(sp)
    2a18:	08412a83          	lw	s5,132(sp)
    2a1c:	08012b03          	lw	s6,128(sp)
    2a20:	07c12b83          	lw	s7,124(sp)
    2a24:	07812c03          	lw	s8,120(sp)
    2a28:	07012d03          	lw	s10,112(sp)
    2a2c:	06c12d83          	lw	s11,108(sp)
    2a30:	0a010113          	add	sp,sp,160
    2a34:	00008067          	ret
    2a38:	0117f693          	and	a3,a5,17
    2a3c:	0017f713          	and	a4,a5,1
    2a40:	00d12223          	sw	a3,4(sp)
    2a44:	0e070c63          	beqz	a4,2b3c <number+0x2e8>
    2a48:	03000713          	li	a4,48
    2a4c:	00e12623          	sw	a4,12(sp)
    2a50:	0027f713          	and	a4,a5,2
    2a54:	0207fb93          	and	s7,a5,32
    2a58:	00070a63          	beqz	a4,2a6c <number+0x218>
    2a5c:	e79ff06f          	j	28d4 <number+0x80>
    2a60:	00010ab7          	lui	s5,0x10
    2a64:	564a8a93          	add	s5,s5,1380 # 10564 <errpat+0x50>
    2a68:	e45ff06f          	j	28ac <number+0x58>
    2a6c:	00012423          	sw	zero,8(sp)
    2a70:	e89ff06f          	j	28f8 <number+0xa4>
    2a74:	07912a23          	sw	s9,116(sp)
    2a78:	00098513          	mv	a0,s3
    2a7c:	00000d13          	li	s10,0
    2a80:	01c10d93          	add	s11,sp,28
    2a84:	00048593          	mv	a1,s1
    2a88:	00050a13          	mv	s4,a0
    2a8c:	29d000ef          	jal	3528 <__umodsi3>
    2a90:	00aa8533          	add	a0,s5,a0
    2a94:	00054683          	lbu	a3,0(a0)
    2a98:	000d0993          	mv	s3,s10
    2a9c:	001d0d13          	add	s10,s10,1
    2aa0:	01ad8cb3          	add	s9,s11,s10
    2aa4:	00048593          	mv	a1,s1
    2aa8:	000a0513          	mv	a0,s4
    2aac:	fedc8fa3          	sb	a3,-1(s9)
    2ab0:	231000ef          	jal	34e0 <__udivsi3>
    2ab4:	fc9a78e3          	bgeu	s4,s1,2a84 <number+0x230>
    2ab8:	07412c83          	lw	s9,116(sp)
    2abc:	e6dff06f          	j	2928 <number+0xd4>
    2ac0:	02b00793          	li	a5,43
    2ac4:	fff90913          	add	s2,s2,-1
    2ac8:	00f12423          	sw	a5,8(sp)
    2acc:	e2dff06f          	j	28f8 <number+0xa4>
    2ad0:	03000713          	li	a4,48
    2ad4:	00e40023          	sb	a4,0(s0)
    2ad8:	07800713          	li	a4,120
    2adc:	00e400a3          	sb	a4,1(s0)
    2ae0:	00240413          	add	s0,s0,2
    2ae4:	e9dff06f          	j	2980 <number+0x12c>
    2ae8:	413009b3          	neg	s3,s3
    2aec:	fff90913          	add	s2,s2,-1
    2af0:	020b9863          	bnez	s7,2b20 <number+0x2cc>
    2af4:	02d00793          	li	a5,45
    2af8:	07912a23          	sw	s9,116(sp)
    2afc:	00f12423          	sw	a5,8(sp)
    2b00:	f79ff06f          	j	2a78 <number+0x224>
    2b04:	ffe90913          	add	s2,s2,-2
    2b08:	02000b93          	li	s7,32
    2b0c:	e09ff06f          	j	2914 <number+0xc0>
    2b10:	03000713          	li	a4,48
    2b14:	00e40023          	sb	a4,0(s0)
    2b18:	00140413          	add	s0,s0,1
    2b1c:	e65ff06f          	j	2980 <number+0x12c>
    2b20:	02d00793          	li	a5,45
    2b24:	00f12423          	sw	a5,8(sp)
    2b28:	dd5ff06f          	j	28fc <number+0xa8>
    2b2c:	fff90913          	add	s2,s2,-1
    2b30:	e71ff06f          	j	29a0 <number+0x14c>
    2b34:	fff90913          	add	s2,s2,-1
    2b38:	e25ff06f          	j	295c <number+0x108>
    2b3c:	02000713          	li	a4,32
    2b40:	00012223          	sw	zero,4(sp)
    2b44:	00e12623          	sw	a4,12(sp)
    2b48:	d81ff06f          	j	28c8 <number+0x74>

00002b4c <uart_send_char>:
    2b4c:	2990006f          	j	35e4 <putchar>

00002b50 <ee_printf>:
    2b50:	b6010113          	add	sp,sp,-1184
    2b54:	45812c23          	sw	s8,1112(sp)
    2b58:	46112e23          	sw	ra,1148(sp)
    2b5c:	46812c23          	sw	s0,1144(sp)
    2b60:	47212823          	sw	s2,1136(sp)
    2b64:	47612023          	sw	s6,1120(sp)
    2b68:	48b12223          	sw	a1,1156(sp)
    2b6c:	48c12423          	sw	a2,1160(sp)
    2b70:	48d12623          	sw	a3,1164(sp)
    2b74:	48e12823          	sw	a4,1168(sp)
    2b78:	48f12a23          	sw	a5,1172(sp)
    2b7c:	49012c23          	sw	a6,1176(sp)
    2b80:	49112e23          	sw	a7,1180(sp)
    2b84:	00054783          	lbu	a5,0(a0)
    2b88:	48410c13          	add	s8,sp,1156
    2b8c:	03812223          	sw	s8,36(sp)
    2b90:	020780e3          	beqz	a5,33b0 <ee_printf+0x860>
    2b94:	45912a23          	sw	s9,1108(sp)
    2b98:	04010913          	add	s2,sp,64
    2b9c:	00010cb7          	lui	s9,0x10
    2ba0:	47412423          	sw	s4,1128(sp)
    2ba4:	47512223          	sw	s5,1124(sp)
    2ba8:	45712e23          	sw	s7,1116(sp)
    2bac:	45a12823          	sw	s10,1104(sp)
    2bb0:	46912a23          	sw	s1,1140(sp)
    2bb4:	47312623          	sw	s3,1132(sp)
    2bb8:	45b12623          	sw	s11,1100(sp)
    2bbc:	00050413          	mv	s0,a0
    2bc0:	00090b13          	mv	s6,s2
    2bc4:	02500d13          	li	s10,37
    2bc8:	01000b93          	li	s7,16
    2bcc:	594c8c93          	add	s9,s9,1428 # 10594 <errpat+0x80>
    2bd0:	00900a93          	li	s5,9
    2bd4:	02e00a13          	li	s4,46
    2bd8:	09a78063          	beq	a5,s10,2c58 <ee_printf+0x108>
    2bdc:	00fb0023          	sb	a5,0(s6)
    2be0:	00144783          	lbu	a5,1(s0)
    2be4:	001b0b13          	add	s6,s6,1
    2be8:	00140413          	add	s0,s0,1
    2bec:	fe0796e3          	bnez	a5,2bd8 <ee_printf+0x88>
    2bf0:	47412483          	lw	s1,1140(sp)
    2bf4:	46c12983          	lw	s3,1132(sp)
    2bf8:	46812a03          	lw	s4,1128(sp)
    2bfc:	46412a83          	lw	s5,1124(sp)
    2c00:	45c12b83          	lw	s7,1116(sp)
    2c04:	45412c83          	lw	s9,1108(sp)
    2c08:	45012d03          	lw	s10,1104(sp)
    2c0c:	44c12d83          	lw	s11,1100(sp)
    2c10:	000b0023          	sb	zero,0(s6)
    2c14:	04014503          	lbu	a0,64(sp)
    2c18:	7a050663          	beqz	a0,33c4 <ee_printf+0x874>
    2c1c:	00090413          	mv	s0,s2
    2c20:	1c5000ef          	jal	35e4 <putchar>
    2c24:	00144503          	lbu	a0,1(s0)
    2c28:	00040793          	mv	a5,s0
    2c2c:	00140413          	add	s0,s0,1
    2c30:	fe0518e3          	bnez	a0,2c20 <ee_printf+0xd0>
    2c34:	47c12083          	lw	ra,1148(sp)
    2c38:	47812403          	lw	s0,1144(sp)
    2c3c:	41278533          	sub	a0,a5,s2
    2c40:	46012b03          	lw	s6,1120(sp)
    2c44:	47012903          	lw	s2,1136(sp)
    2c48:	45812c03          	lw	s8,1112(sp)
    2c4c:	00150513          	add	a0,a0,1
    2c50:	4a010113          	add	sp,sp,1184
    2c54:	00008067          	ret
    2c58:	00000793          	li	a5,0
    2c5c:	00144603          	lbu	a2,1(s0)
    2c60:	00140493          	add	s1,s0,1
    2c64:	fe060713          	add	a4,a2,-32
    2c68:	0ff77713          	zext.b	a4,a4
    2c6c:	00ebea63          	bltu	s7,a4,2c80 <ee_printf+0x130>
    2c70:	00271713          	sll	a4,a4,0x2
    2c74:	01970733          	add	a4,a4,s9
    2c78:	00072703          	lw	a4,0(a4)
    2c7c:	00070067          	jr	a4
    2c80:	fd060713          	add	a4,a2,-48
    2c84:	0ff77713          	zext.b	a4,a4
    2c88:	10eaf463          	bgeu	s5,a4,2d90 <ee_printf+0x240>
    2c8c:	02a00713          	li	a4,42
    2c90:	fff00d93          	li	s11,-1
    2c94:	12e60863          	beq	a2,a4,2dc4 <ee_printf+0x274>
    2c98:	fff00713          	li	a4,-1
    2c9c:	0d460463          	beq	a2,s4,2d64 <ee_printf+0x214>
    2ca0:	0df67693          	and	a3,a2,223
    2ca4:	04c00593          	li	a1,76
    2ca8:	08b68463          	beq	a3,a1,2d30 <ee_printf+0x1e0>
    2cac:	fbf60693          	add	a3,a2,-65
    2cb0:	0ff6f693          	zext.b	a3,a3
    2cb4:	03700593          	li	a1,55
    2cb8:	04d5ec63          	bltu	a1,a3,2d10 <ee_printf+0x1c0>
    2cbc:	000105b7          	lui	a1,0x10
    2cc0:	00269693          	sll	a3,a3,0x2
    2cc4:	5d858593          	add	a1,a1,1496 # 105d8 <errpat+0xc4>
    2cc8:	00b686b3          	add	a3,a3,a1
    2ccc:	0006a683          	lw	a3,0(a3)
    2cd0:	00068067          	jr	a3
    2cd4:	0017e793          	or	a5,a5,1
    2cd8:	00048413          	mv	s0,s1
    2cdc:	f81ff06f          	j	2c5c <ee_printf+0x10c>
    2ce0:	0107e793          	or	a5,a5,16
    2ce4:	00048413          	mv	s0,s1
    2ce8:	f75ff06f          	j	2c5c <ee_printf+0x10c>
    2cec:	0047e793          	or	a5,a5,4
    2cf0:	00048413          	mv	s0,s1
    2cf4:	f69ff06f          	j	2c5c <ee_printf+0x10c>
    2cf8:	0207e793          	or	a5,a5,32
    2cfc:	00048413          	mv	s0,s1
    2d00:	f5dff06f          	j	2c5c <ee_printf+0x10c>
    2d04:	0087e793          	or	a5,a5,8
    2d08:	00048413          	mv	s0,s1
    2d0c:	f51ff06f          	j	2c5c <ee_printf+0x10c>
    2d10:	00048993          	mv	s3,s1
    2d14:	02500793          	li	a5,37
    2d18:	28f60c63          	beq	a2,a5,2fb0 <ee_printf+0x460>
    2d1c:	00fb0023          	sb	a5,0(s6)
    2d20:	0009c783          	lbu	a5,0(s3)
    2d24:	001b0b13          	add	s6,s6,1
    2d28:	ec0784e3          	beqz	a5,2bf0 <ee_printf+0xa0>
    2d2c:	2880006f          	j	2fb4 <ee_printf+0x464>
    2d30:	00060513          	mv	a0,a2
    2d34:	0014c603          	lbu	a2,1(s1)
    2d38:	03700593          	li	a1,55
    2d3c:	00148993          	add	s3,s1,1
    2d40:	fbf60693          	add	a3,a2,-65
    2d44:	0ff6f693          	zext.b	a3,a3
    2d48:	fcd5e6e3          	bltu	a1,a3,2d14 <ee_printf+0x1c4>
    2d4c:	000105b7          	lui	a1,0x10
    2d50:	00269693          	sll	a3,a3,0x2
    2d54:	6b858593          	add	a1,a1,1720 # 106b8 <errpat+0x1a4>
    2d58:	00b686b3          	add	a3,a3,a1
    2d5c:	0006a683          	lw	a3,0(a3)
    2d60:	00068067          	jr	a3
    2d64:	0014c603          	lbu	a2,1(s1)
    2d68:	00900693          	li	a3,9
    2d6c:	00148593          	add	a1,s1,1
    2d70:	fd060713          	add	a4,a2,-48
    2d74:	0ff77713          	zext.b	a4,a4
    2d78:	1ce6f463          	bgeu	a3,a4,2f40 <ee_printf+0x3f0>
    2d7c:	02a00713          	li	a4,42
    2d80:	20e60263          	beq	a2,a4,2f84 <ee_printf+0x434>
    2d84:	00058493          	mv	s1,a1
    2d88:	00000713          	li	a4,0
    2d8c:	f15ff06f          	j	2ca0 <ee_printf+0x150>
    2d90:	00000d93          	li	s11,0
    2d94:	00900693          	li	a3,9
    2d98:	002d9713          	sll	a4,s11,0x2
    2d9c:	01b70733          	add	a4,a4,s11
    2da0:	00148493          	add	s1,s1,1
    2da4:	00171713          	sll	a4,a4,0x1
    2da8:	00c70733          	add	a4,a4,a2
    2dac:	0004c603          	lbu	a2,0(s1)
    2db0:	fd070d93          	add	s11,a4,-48
    2db4:	fd060713          	add	a4,a2,-48
    2db8:	0ff77713          	zext.b	a4,a4
    2dbc:	fce6fee3          	bgeu	a3,a4,2d98 <ee_printf+0x248>
    2dc0:	ed9ff06f          	j	2c98 <ee_printf+0x148>
    2dc4:	000c2d83          	lw	s11,0(s8)
    2dc8:	00244603          	lbu	a2,2(s0)
    2dcc:	00240493          	add	s1,s0,2
    2dd0:	004c0c13          	add	s8,s8,4
    2dd4:	ec0dd2e3          	bgez	s11,2c98 <ee_printf+0x148>
    2dd8:	41b00db3          	neg	s11,s11
    2ddc:	0107e793          	or	a5,a5,16
    2de0:	eb9ff06f          	j	2c98 <ee_printf+0x148>
    2de4:	00048993          	mv	s3,s1
    2de8:	00a00613          	li	a2,10
    2dec:	000c2583          	lw	a1,0(s8)
    2df0:	004c0c13          	add	s8,s8,4
    2df4:	000b0513          	mv	a0,s6
    2df8:	000d8693          	mv	a3,s11
    2dfc:	a59ff0ef          	jal	2854 <number>
    2e00:	0019c783          	lbu	a5,1(s3)
    2e04:	00050b13          	mv	s6,a0
    2e08:	00198413          	add	s0,s3,1
    2e0c:	dc0796e3          	bnez	a5,2bd8 <ee_printf+0x88>
    2e10:	de1ff06f          	j	2bf0 <ee_printf+0xa0>
    2e14:	00048993          	mv	s3,s1
    2e18:	000c2403          	lw	s0,0(s8)
    2e1c:	004c0c13          	add	s8,s8,4
    2e20:	1a040663          	beqz	s0,2fcc <ee_printf+0x47c>
    2e24:	00044683          	lbu	a3,0(s0)
    2e28:	5e068c63          	beqz	a3,3420 <ee_printf+0x8d0>
    2e2c:	5e070a63          	beqz	a4,3420 <ee_printf+0x8d0>
    2e30:	00040693          	mv	a3,s0
    2e34:	00c0006f          	j	2e40 <ee_printf+0x2f0>
    2e38:	40e68633          	sub	a2,a3,a4
    2e3c:	00860863          	beq	a2,s0,2e4c <ee_printf+0x2fc>
    2e40:	0016c603          	lbu	a2,1(a3)
    2e44:	00168693          	add	a3,a3,1
    2e48:	fe0618e3          	bnez	a2,2e38 <ee_printf+0x2e8>
    2e4c:	0107f793          	and	a5,a5,16
    2e50:	408684b3          	sub	s1,a3,s0
    2e54:	1a078663          	beqz	a5,3000 <ee_printf+0x4b0>
    2e58:	02905263          	blez	s1,2e7c <ee_printf+0x32c>
    2e5c:	009406b3          	add	a3,s0,s1
    2e60:	000b0793          	mv	a5,s6
    2e64:	00044703          	lbu	a4,0(s0)
    2e68:	00140413          	add	s0,s0,1
    2e6c:	00178793          	add	a5,a5,1
    2e70:	fee78fa3          	sb	a4,-1(a5)
    2e74:	fed418e3          	bne	s0,a3,2e64 <ee_printf+0x314>
    2e78:	009b0b33          	add	s6,s6,s1
    2e7c:	00198413          	add	s0,s3,1
    2e80:	5db4da63          	bge	s1,s11,3454 <ee_printf+0x904>
    2e84:	409d84b3          	sub	s1,s11,s1
    2e88:	000b0513          	mv	a0,s6
    2e8c:	00048613          	mv	a2,s1
    2e90:	02000593          	li	a1,32
    2e94:	2f9000ef          	jal	398c <memset>
    2e98:	0019c783          	lbu	a5,1(s3)
    2e9c:	009b0b33          	add	s6,s6,s1
    2ea0:	d2079ce3          	bnez	a5,2bd8 <ee_printf+0x88>
    2ea4:	d4dff06f          	j	2bf0 <ee_printf+0xa0>
    2ea8:	00048993          	mv	s3,s1
    2eac:	fff00693          	li	a3,-1
    2eb0:	0edd8a63          	beq	s11,a3,2fa4 <ee_printf+0x454>
    2eb4:	000c2583          	lw	a1,0(s8)
    2eb8:	000b0513          	mv	a0,s6
    2ebc:	000d8693          	mv	a3,s11
    2ec0:	01000613          	li	a2,16
    2ec4:	991ff0ef          	jal	2854 <number>
    2ec8:	0019c783          	lbu	a5,1(s3)
    2ecc:	004c0c13          	add	s8,s8,4
    2ed0:	00050b13          	mv	s6,a0
    2ed4:	00198413          	add	s0,s3,1
    2ed8:	d00790e3          	bnez	a5,2bd8 <ee_printf+0x88>
    2edc:	d15ff06f          	j	2bf0 <ee_printf+0xa0>
    2ee0:	00048993          	mv	s3,s1
    2ee4:	00800613          	li	a2,8
    2ee8:	f05ff06f          	j	2dec <ee_printf+0x29c>
    2eec:	00048993          	mv	s3,s1
    2ef0:	0107f793          	and	a5,a5,16
    2ef4:	004c0493          	add	s1,s8,4
    2ef8:	00198413          	add	s0,s3,1
    2efc:	0c078e63          	beqz	a5,2fd8 <ee_printf+0x488>
    2f00:	000c2703          	lw	a4,0(s8)
    2f04:	00100793          	li	a5,1
    2f08:	001b0513          	add	a0,s6,1
    2f0c:	00eb0023          	sb	a4,0(s6)
    2f10:	55b7d863          	bge	a5,s11,3460 <ee_printf+0x910>
    2f14:	fffd8613          	add	a2,s11,-1
    2f18:	02000593          	li	a1,32
    2f1c:	271000ef          	jal	398c <memset>
    2f20:	0019c783          	lbu	a5,1(s3)
    2f24:	01bb0b33          	add	s6,s6,s11
    2f28:	00048c13          	mv	s8,s1
    2f2c:	ca0796e3          	bnez	a5,2bd8 <ee_printf+0x88>
    2f30:	cc1ff06f          	j	2bf0 <ee_printf+0xa0>
    2f34:	00048993          	mv	s3,s1
    2f38:	01000613          	li	a2,16
    2f3c:	eb1ff06f          	j	2dec <ee_printf+0x29c>
    2f40:	00000513          	li	a0,0
    2f44:	00900813          	li	a6,9
    2f48:	00251713          	sll	a4,a0,0x2
    2f4c:	00a70733          	add	a4,a4,a0
    2f50:	00158593          	add	a1,a1,1
    2f54:	00171713          	sll	a4,a4,0x1
    2f58:	00c70733          	add	a4,a4,a2
    2f5c:	0005c603          	lbu	a2,0(a1)
    2f60:	fd070513          	add	a0,a4,-48
    2f64:	fd060693          	add	a3,a2,-48
    2f68:	0ff6f693          	zext.b	a3,a3
    2f6c:	fcd87ee3          	bgeu	a6,a3,2f48 <ee_printf+0x3f8>
    2f70:	fff54713          	not	a4,a0
    2f74:	41f75713          	sra	a4,a4,0x1f
    2f78:	00e57733          	and	a4,a0,a4
    2f7c:	00058493          	mv	s1,a1
    2f80:	d21ff06f          	j	2ca0 <ee_printf+0x150>
    2f84:	000c2703          	lw	a4,0(s8)
    2f88:	0024c603          	lbu	a2,2(s1)
    2f8c:	004c0c13          	add	s8,s8,4
    2f90:	fff74693          	not	a3,a4
    2f94:	41f6d693          	sra	a3,a3,0x1f
    2f98:	00d77733          	and	a4,a4,a3
    2f9c:	00248493          	add	s1,s1,2
    2fa0:	d01ff06f          	j	2ca0 <ee_printf+0x150>
    2fa4:	0017e793          	or	a5,a5,1
    2fa8:	00800d93          	li	s11,8
    2fac:	f09ff06f          	j	2eb4 <ee_printf+0x364>
    2fb0:	0009c783          	lbu	a5,0(s3)
    2fb4:	00fb0023          	sb	a5,0(s6)
    2fb8:	0019c783          	lbu	a5,1(s3)
    2fbc:	001b0b13          	add	s6,s6,1
    2fc0:	00198413          	add	s0,s3,1
    2fc4:	c0079ae3          	bnez	a5,2bd8 <ee_printf+0x88>
    2fc8:	c29ff06f          	j	2bf0 <ee_printf+0xa0>
    2fcc:	00010437          	lui	s0,0x10
    2fd0:	58c40413          	add	s0,s0,1420 # 1058c <errpat+0x78>
    2fd4:	e59ff06f          	j	2e2c <ee_printf+0x2dc>
    2fd8:	00100793          	li	a5,1
    2fdc:	45b7da63          	bge	a5,s11,3430 <ee_printf+0x8e0>
    2fe0:	fffd8d93          	add	s11,s11,-1
    2fe4:	000d8613          	mv	a2,s11
    2fe8:	000b0513          	mv	a0,s6
    2fec:	02000593          	li	a1,32
    2ff0:	01bb0b33          	add	s6,s6,s11
    2ff4:	199000ef          	jal	398c <memset>
    2ff8:	00000d93          	li	s11,0
    2ffc:	f05ff06f          	j	2f00 <ee_printf+0x3b0>
    3000:	fffd8793          	add	a5,s11,-1
    3004:	45b4d463          	bge	s1,s11,344c <ee_printf+0x8fc>
    3008:	409d8633          	sub	a2,s11,s1
    300c:	000b0513          	mv	a0,s6
    3010:	02000593          	li	a1,32
    3014:	00f12623          	sw	a5,12(sp)
    3018:	00c12423          	sw	a2,8(sp)
    301c:	171000ef          	jal	398c <memset>
    3020:	00812603          	lw	a2,8(sp)
    3024:	00c12783          	lw	a5,12(sp)
    3028:	41b48db3          	sub	s11,s1,s11
    302c:	00cb0b33          	add	s6,s6,a2
    3030:	00fd8db3          	add	s11,s11,a5
    3034:	e25ff06f          	j	2e58 <ee_printf+0x308>
    3038:	06c00693          	li	a3,108
    303c:	0027e793          	or	a5,a5,2
    3040:	dad504e3          	beq	a0,a3,2de8 <ee_printf+0x298>
    3044:	004c0693          	add	a3,s8,4
    3048:	000c2583          	lw	a1,0(s8)
    304c:	00a00613          	li	a2,10
    3050:	00068c13          	mv	s8,a3
    3054:	da1ff06f          	j	2df4 <ee_printf+0x2a4>
    3058:	06c00713          	li	a4,108
    305c:	38e50463          	beq	a0,a4,33e4 <ee_printf+0x894>
    3060:	000c2e03          	lw	t3,0(s8)
    3064:	004c0713          	add	a4,s8,4
    3068:	00000893          	li	a7,0
    306c:	00e12423          	sw	a4,8(sp)
    3070:	011e0733          	add	a4,t3,a7
    3074:	00074403          	lbu	s0,0(a4)
    3078:	00000493          	li	s1,0
    307c:	06300f93          	li	t6,99
    3080:	03000f13          	li	t5,48
    3084:	00400313          	li	t1,4
    3088:	02e00e93          	li	t4,46
    308c:	00148c13          	add	s8,s1,1
    3090:	04041063          	bnez	s0,30d0 <ee_printf+0x580>
    3094:	42048713          	add	a4,s1,1056
    3098:	02010693          	add	a3,sp,32
    309c:	00d704b3          	add	s1,a4,a3
    30a0:	bfe48423          	sb	t5,-1048(s1)
    30a4:	00188893          	add	a7,a7,1
    30a8:	0e688e63          	beq	a7,t1,31a4 <ee_printf+0x654>
    30ac:	420c0713          	add	a4,s8,1056
    30b0:	02010693          	add	a3,sp,32
    30b4:	00d706b3          	add	a3,a4,a3
    30b8:	011e0733          	add	a4,t3,a7
    30bc:	00074403          	lbu	s0,0(a4)
    30c0:	001c0493          	add	s1,s8,1
    30c4:	bfd68423          	sb	t4,-1048(a3)
    30c8:	00148c13          	add	s8,s1,1
    30cc:	fc0404e3          	beqz	s0,3094 <ee_printf+0x544>
    30d0:	248fda63          	bge	t6,s0,3324 <ee_printf+0x7d4>
    30d4:	02010713          	add	a4,sp,32
    30d8:	00f12a23          	sw	a5,20(sp)
    30dc:	42048793          	add	a5,s1,1056
    30e0:	00e78633          	add	a2,a5,a4
    30e4:	06400593          	li	a1,100
    30e8:	00040513          	mv	a0,s0
    30ec:	01112e23          	sw	a7,28(sp)
    30f0:	01c12c23          	sw	t3,24(sp)
    30f4:	00c12823          	sw	a2,16(sp)
    30f8:	3e0000ef          	jal	34d8 <__divsi3>
    30fc:	000106b7          	lui	a3,0x10
    3100:	53c68693          	add	a3,a3,1340 # 1053c <errpat+0x28>
    3104:	00a68533          	add	a0,a3,a0
    3108:	00054283          	lbu	t0,0(a0)
    310c:	01012603          	lw	a2,16(sp)
    3110:	06400593          	li	a1,100
    3114:	00040513          	mv	a0,s0
    3118:	be560423          	sb	t0,-1048(a2)
    311c:	00d12623          	sw	a3,12(sp)
    3120:	43c000ef          	jal	355c <__modsi3>
    3124:	420c0793          	add	a5,s8,1056
    3128:	02010713          	add	a4,sp,32
    312c:	00a00593          	li	a1,10
    3130:	00e78c33          	add	s8,a5,a4
    3134:	00050413          	mv	s0,a0
    3138:	3a0000ef          	jal	34d8 <__divsi3>
    313c:	00c12683          	lw	a3,12(sp)
    3140:	00a00593          	li	a1,10
    3144:	00248493          	add	s1,s1,2
    3148:	00a68533          	add	a0,a3,a0
    314c:	00054603          	lbu	a2,0(a0)
    3150:	00040513          	mv	a0,s0
    3154:	becc0423          	sb	a2,-1048(s8)
    3158:	404000ef          	jal	355c <__modsi3>
    315c:	00c12683          	lw	a3,12(sp)
    3160:	01412783          	lw	a5,20(sp)
    3164:	01812e03          	lw	t3,24(sp)
    3168:	01c12883          	lw	a7,28(sp)
    316c:	00050413          	mv	s0,a0
    3170:	00148c13          	add	s8,s1,1
    3174:	00400313          	li	t1,4
    3178:	06300f93          	li	t6,99
    317c:	03000f13          	li	t5,48
    3180:	02e00e93          	li	t4,46
    3184:	008686b3          	add	a3,a3,s0
    3188:	0006c683          	lbu	a3,0(a3)
    318c:	42048713          	add	a4,s1,1056
    3190:	02010613          	add	a2,sp,32
    3194:	00c704b3          	add	s1,a4,a2
    3198:	bed48423          	sb	a3,-1048(s1)
    319c:	00188893          	add	a7,a7,1
    31a0:	f06896e3          	bne	a7,t1,30ac <ee_printf+0x55c>
    31a4:	0107f793          	and	a5,a5,16
    31a8:	02079663          	bnez	a5,31d4 <ee_printf+0x684>
    31ac:	fffd8493          	add	s1,s11,-1
    31b0:	2dbc5263          	bge	s8,s11,3474 <ee_printf+0x924>
    31b4:	418d8433          	sub	s0,s11,s8
    31b8:	000b0513          	mv	a0,s6
    31bc:	00040613          	mv	a2,s0
    31c0:	02000593          	li	a1,32
    31c4:	41bc0db3          	sub	s11,s8,s11
    31c8:	7c4000ef          	jal	398c <memset>
    31cc:	008b0b33          	add	s6,s6,s0
    31d0:	009d8db3          	add	s11,s11,s1
    31d4:	01805c63          	blez	s8,31ec <ee_printf+0x69c>
    31d8:	000b0513          	mv	a0,s6
    31dc:	000c0613          	mv	a2,s8
    31e0:	02810593          	add	a1,sp,40
    31e4:	730000ef          	jal	3914 <memcpy>
    31e8:	018b0b33          	add	s6,s6,s8
    31ec:	01bc5e63          	bge	s8,s11,3208 <ee_printf+0x6b8>
    31f0:	418d8db3          	sub	s11,s11,s8
    31f4:	000b0513          	mv	a0,s6
    31f8:	000d8613          	mv	a2,s11
    31fc:	02000593          	li	a1,32
    3200:	78c000ef          	jal	398c <memset>
    3204:	01bb0b33          	add	s6,s6,s11
    3208:	0019c783          	lbu	a5,1(s3)
    320c:	00812c03          	lw	s8,8(sp)
    3210:	00198413          	add	s0,s3,1
    3214:	9c0792e3          	bnez	a5,2bd8 <ee_printf+0x88>
    3218:	9d9ff06f          	j	2bf0 <ee_printf+0xa0>
    321c:	0407e793          	or	a5,a5,64
    3220:	01000613          	li	a2,16
    3224:	bc9ff06f          	j	2dec <ee_printf+0x29c>
    3228:	06c00713          	li	a4,108
    322c:	0407e793          	or	a5,a5,64
    3230:	e2e518e3          	bne	a0,a4,3060 <ee_printf+0x510>
    3234:	00010737          	lui	a4,0x10
    3238:	000c2e03          	lw	t3,0(s8)
    323c:	56470713          	add	a4,a4,1380 # 10564 <errpat+0x50>
    3240:	004c0c13          	add	s8,s8,4
    3244:	00000593          	li	a1,0
    3248:	00000513          	li	a0,0
    324c:	00600313          	li	t1,6
    3250:	03a00e93          	li	t4,58
    3254:	0140006f          	j	3268 <ee_printf+0x718>
    3258:	42250693          	add	a3,a0,1058
    325c:	01e68633          	add	a2,a3,t5
    3260:	00350513          	add	a0,a0,3
    3264:	bfd60423          	sb	t4,-1048(a2)
    3268:	00be06b3          	add	a3,t3,a1
    326c:	0006c683          	lbu	a3,0(a3)
    3270:	02010f13          	add	t5,sp,32
    3274:	00158593          	add	a1,a1,1
    3278:	0046d613          	srl	a2,a3,0x4
    327c:	00f6f693          	and	a3,a3,15
    3280:	00d706b3          	add	a3,a4,a3
    3284:	00c70633          	add	a2,a4,a2
    3288:	0006c803          	lbu	a6,0(a3)
    328c:	00064883          	lbu	a7,0(a2)
    3290:	42050693          	add	a3,a0,1056
    3294:	01e686b3          	add	a3,a3,t5
    3298:	bf168423          	sb	a7,-1048(a3)
    329c:	bf0684a3          	sb	a6,-1047(a3)
    32a0:	fa659ce3          	bne	a1,t1,3258 <ee_printf+0x708>
    32a4:	0107f793          	and	a5,a5,16
    32a8:	02079a63          	bnez	a5,32dc <ee_printf+0x78c>
    32ac:	01100413          	li	s0,17
    32b0:	fffd8993          	add	s3,s11,-1
    32b4:	1db45863          	bge	s0,s11,3484 <ee_printf+0x934>
    32b8:	fefd8613          	add	a2,s11,-17
    32bc:	000b0513          	mv	a0,s6
    32c0:	02000593          	li	a1,32
    32c4:	00c12423          	sw	a2,8(sp)
    32c8:	6c4000ef          	jal	398c <memset>
    32cc:	00812603          	lw	a2,8(sp)
    32d0:	41b40433          	sub	s0,s0,s11
    32d4:	01340db3          	add	s11,s0,s3
    32d8:	00cb0b33          	add	s6,s6,a2
    32dc:	01100613          	li	a2,17
    32e0:	02810593          	add	a1,sp,40
    32e4:	000b0513          	mv	a0,s6
    32e8:	62c000ef          	jal	3914 <memcpy>
    32ec:	01100413          	li	s0,17
    32f0:	011b0513          	add	a0,s6,17
    32f4:	19b45463          	bge	s0,s11,347c <ee_printf+0x92c>
    32f8:	fefd8613          	add	a2,s11,-17
    32fc:	02000593          	li	a1,32
    3300:	68c000ef          	jal	398c <memset>
    3304:	01bb0b33          	add	s6,s6,s11
    3308:	0024c783          	lbu	a5,2(s1)
    330c:	00248413          	add	s0,s1,2
    3310:	8c0794e3          	bnez	a5,2bd8 <ee_printf+0x88>
    3314:	8ddff06f          	j	2bf0 <ee_printf+0xa0>
    3318:	0407e793          	or	a5,a5,64
    331c:	00048993          	mv	s3,s1
    3320:	d41ff06f          	j	3060 <ee_printf+0x510>
    3324:	00900693          	li	a3,9
    3328:	0086c863          	blt	a3,s0,3338 <ee_printf+0x7e8>
    332c:	000106b7          	lui	a3,0x10
    3330:	53c68693          	add	a3,a3,1340 # 1053c <errpat+0x28>
    3334:	e51ff06f          	j	3184 <ee_printf+0x634>
    3338:	02010713          	add	a4,sp,32
    333c:	00f12823          	sw	a5,16(sp)
    3340:	00a00593          	li	a1,10
    3344:	42048793          	add	a5,s1,1056
    3348:	00040513          	mv	a0,s0
    334c:	00e784b3          	add	s1,a5,a4
    3350:	01112c23          	sw	a7,24(sp)
    3354:	01c12a23          	sw	t3,20(sp)
    3358:	180000ef          	jal	34d8 <__divsi3>
    335c:	000106b7          	lui	a3,0x10
    3360:	53c68693          	add	a3,a3,1340 # 1053c <errpat+0x28>
    3364:	00a68633          	add	a2,a3,a0
    3368:	00064603          	lbu	a2,0(a2)
    336c:	00040513          	mv	a0,s0
    3370:	00a00593          	li	a1,10
    3374:	bec48423          	sb	a2,-1048(s1)
    3378:	00d12623          	sw	a3,12(sp)
    337c:	1e0000ef          	jal	355c <__modsi3>
    3380:	000c0493          	mv	s1,s8
    3384:	01812883          	lw	a7,24(sp)
    3388:	01412e03          	lw	t3,20(sp)
    338c:	01012783          	lw	a5,16(sp)
    3390:	00c12683          	lw	a3,12(sp)
    3394:	00050413          	mv	s0,a0
    3398:	001c0c13          	add	s8,s8,1
    339c:	02e00e93          	li	t4,46
    33a0:	03000f13          	li	t5,48
    33a4:	06300f93          	li	t6,99
    33a8:	00400313          	li	t1,4
    33ac:	dd9ff06f          	j	3184 <ee_printf+0x634>
    33b0:	04010913          	add	s2,sp,64
    33b4:	00090b13          	mv	s6,s2
    33b8:	000b0023          	sb	zero,0(s6)
    33bc:	04014503          	lbu	a0,64(sp)
    33c0:	84051ee3          	bnez	a0,2c1c <ee_printf+0xcc>
    33c4:	47c12083          	lw	ra,1148(sp)
    33c8:	47812403          	lw	s0,1144(sp)
    33cc:	47012903          	lw	s2,1136(sp)
    33d0:	46012b03          	lw	s6,1120(sp)
    33d4:	45812c03          	lw	s8,1112(sp)
    33d8:	00000513          	li	a0,0
    33dc:	4a010113          	add	sp,sp,1184
    33e0:	00008067          	ret
    33e4:	000106b7          	lui	a3,0x10
    33e8:	000c2e03          	lw	t3,0(s8)
    33ec:	53c68713          	add	a4,a3,1340 # 1053c <errpat+0x28>
    33f0:	004c0c13          	add	s8,s8,4
    33f4:	e51ff06f          	j	3244 <ee_printf+0x6f4>
    33f8:	0027e793          	or	a5,a5,2
    33fc:	004c0693          	add	a3,s8,4
    3400:	00048993          	mv	s3,s1
    3404:	c45ff06f          	j	3048 <ee_printf+0x4f8>
    3408:	00048993          	mv	s3,s1
    340c:	c55ff06f          	j	3060 <ee_printf+0x510>
    3410:	0407e793          	or	a5,a5,64
    3414:	00048993          	mv	s3,s1
    3418:	01000613          	li	a2,16
    341c:	9d1ff06f          	j	2dec <ee_printf+0x29c>
    3420:	0107f493          	and	s1,a5,16
    3424:	bc048ee3          	beqz	s1,3000 <ee_printf+0x4b0>
    3428:	00000493          	li	s1,0
    342c:	a51ff06f          	j	2e7c <ee_printf+0x32c>
    3430:	000c2783          	lw	a5,0(s8)
    3434:	001b0b13          	add	s6,s6,1
    3438:	00048c13          	mv	s8,s1
    343c:	fefb0fa3          	sb	a5,-1(s6)
    3440:	0019c783          	lbu	a5,1(s3)
    3444:	f8079a63          	bnez	a5,2bd8 <ee_printf+0x88>
    3448:	fa8ff06f          	j	2bf0 <ee_printf+0xa0>
    344c:	00078d93          	mv	s11,a5
    3450:	a09ff06f          	j	2e58 <ee_printf+0x308>
    3454:	0019c783          	lbu	a5,1(s3)
    3458:	f8079063          	bnez	a5,2bd8 <ee_printf+0x88>
    345c:	f94ff06f          	j	2bf0 <ee_printf+0xa0>
    3460:	0019c783          	lbu	a5,1(s3)
    3464:	00048c13          	mv	s8,s1
    3468:	00050b13          	mv	s6,a0
    346c:	f6079663          	bnez	a5,2bd8 <ee_printf+0x88>
    3470:	f80ff06f          	j	2bf0 <ee_printf+0xa0>
    3474:	00048d93          	mv	s11,s1
    3478:	d5dff06f          	j	31d4 <ee_printf+0x684>
    347c:	00050b13          	mv	s6,a0
    3480:	e89ff06f          	j	3308 <ee_printf+0x7b8>
    3484:	00098d93          	mv	s11,s3
    3488:	e55ff06f          	j	32dc <ee_printf+0x78c>

0000348c <rdcycle>:
    348c:	c80025f3          	rdcycleh	a1
    3490:	c0002573          	rdcycle	a0
    3494:	c80022f3          	rdcycleh	t0
    3498:	fe559ae3          	bne	a1,t0,348c <rdcycle>
    349c:	00008067          	ret

000034a0 <rdinstret>:
    34a0:	c82025f3          	rdinstreth	a1
    34a4:	c0202573          	rdinstret	a0
    34a8:	c82022f3          	rdinstreth	t0
    34ac:	fe559ae3          	bne	a1,t0,34a0 <rdinstret>
    34b0:	00008067          	ret

000034b4 <__mulsi3>:
    34b4:	00050613          	mv	a2,a0
    34b8:	00000513          	li	a0,0
    34bc:	0015f693          	and	a3,a1,1
    34c0:	00068463          	beqz	a3,34c8 <__mulsi3+0x14>
    34c4:	00c50533          	add	a0,a0,a2
    34c8:	0015d593          	srl	a1,a1,0x1
    34cc:	00161613          	sll	a2,a2,0x1
    34d0:	fe0596e3          	bnez	a1,34bc <__mulsi3+0x8>
    34d4:	00008067          	ret

000034d8 <__divsi3>:
    34d8:	06054063          	bltz	a0,3538 <__umodsi3+0x10>
    34dc:	0605c663          	bltz	a1,3548 <__umodsi3+0x20>

000034e0 <__udivsi3>:
    34e0:	00058613          	mv	a2,a1
    34e4:	00050593          	mv	a1,a0
    34e8:	fff00513          	li	a0,-1
    34ec:	02060c63          	beqz	a2,3524 <__udivsi3+0x44>
    34f0:	00100693          	li	a3,1
    34f4:	00b67a63          	bgeu	a2,a1,3508 <__udivsi3+0x28>
    34f8:	00c05863          	blez	a2,3508 <__udivsi3+0x28>
    34fc:	00161613          	sll	a2,a2,0x1
    3500:	00169693          	sll	a3,a3,0x1
    3504:	feb66ae3          	bltu	a2,a1,34f8 <__udivsi3+0x18>
    3508:	00000513          	li	a0,0
    350c:	00c5e663          	bltu	a1,a2,3518 <__udivsi3+0x38>
    3510:	40c585b3          	sub	a1,a1,a2
    3514:	00d56533          	or	a0,a0,a3
    3518:	0016d693          	srl	a3,a3,0x1
    351c:	00165613          	srl	a2,a2,0x1
    3520:	fe0696e3          	bnez	a3,350c <__udivsi3+0x2c>
    3524:	00008067          	ret

00003528 <__umodsi3>:
    3528:	00008293          	mv	t0,ra
    352c:	fb5ff0ef          	jal	34e0 <__udivsi3>
    3530:	00058513          	mv	a0,a1
    3534:	00028067          	jr	t0
    3538:	40a00533          	neg	a0,a0
    353c:	0005d863          	bgez	a1,354c <__umodsi3+0x24>
    3540:	40b005b3          	neg	a1,a1
    3544:	f95ff06f          	j	34d8 <__divsi3>
    3548:	40b005b3          	neg	a1,a1
    354c:	00008293          	mv	t0,ra
    3550:	f89ff0ef          	jal	34d8 <__divsi3>
    3554:	40a00533          	neg	a0,a0
    3558:	00028067          	jr	t0

0000355c <__modsi3>:
    355c:	00008293          	mv	t0,ra
    3560:	0005ca63          	bltz	a1,3574 <__modsi3+0x18>
    3564:	00054c63          	bltz	a0,357c <__modsi3+0x20>
    3568:	f79ff0ef          	jal	34e0 <__udivsi3>
    356c:	00058513          	mv	a0,a1
    3570:	00028067          	jr	t0
    3574:	40b005b3          	neg	a1,a1
    3578:	fe0558e3          	bgez	a0,3568 <__modsi3+0xc>
    357c:	40a00533          	neg	a0,a0
    3580:	f61ff0ef          	jal	34e0 <__udivsi3>
    3584:	40b00533          	neg	a0,a1
    3588:	00028067          	jr	t0

0000358c <__udivdi3>:
    358c:	00058613          	mv	a2,a1
    3590:	00050593          	mv	a1,a0
    3594:	fff00513          	li	a0,-1
    3598:	02060c63          	beqz	a2,35d0 <__udivdi3+0x44>
    359c:	00100693          	li	a3,1
    35a0:	00b67a63          	bgeu	a2,a1,35b4 <__udivdi3+0x28>
    35a4:	00c05863          	blez	a2,35b4 <__udivdi3+0x28>
    35a8:	00161613          	sll	a2,a2,0x1
    35ac:	00169693          	sll	a3,a3,0x1
    35b0:	feb66ae3          	bltu	a2,a1,35a4 <__udivdi3+0x18>
    35b4:	00000513          	li	a0,0
    35b8:	00c5e663          	bltu	a1,a2,35c4 <__udivdi3+0x38>
    35bc:	40c585b3          	sub	a1,a1,a2
    35c0:	00d56533          	or	a0,a0,a3
    35c4:	0016d693          	srl	a3,a3,0x1
    35c8:	00165613          	srl	a2,a2,0x1
    35cc:	fe0696e3          	bnez	a3,35b8 <__udivdi3+0x2c>
    35d0:	00008067          	ret

000035d4 <__umoddi3>:
    35d4:	00008293          	mv	t0,ra
    35d8:	fb5ff0ef          	jal	358c <__udivdi3>
    35dc:	00058513          	mv	a0,a1
    35e0:	00028067          	jr	t0

000035e4 <putchar>:
    35e4:	06000737          	lui	a4,0x6000
    35e8:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    35ec:	fe078ee3          	beqz	a5,35e8 <putchar+0x4>
    35f0:	00a72023          	sw	a0,0(a4)
    35f4:	00008067          	ret

000035f8 <print_string>:
    35f8:	00054683          	lbu	a3,0(a0)
    35fc:	02068063          	beqz	a3,361c <print_string+0x24>
    3600:	06000737          	lui	a4,0x6000
    3604:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    3608:	fe078ee3          	beqz	a5,3604 <print_string+0xc>
    360c:	00d72023          	sw	a3,0(a4)
    3610:	00154683          	lbu	a3,1(a0)
    3614:	00150513          	add	a0,a0,1
    3618:	fe0696e3          	bnez	a3,3604 <print_string+0xc>
    361c:	00008067          	ret

00003620 <puts>:
    3620:	00054683          	lbu	a3,0(a0)
    3624:	02068063          	beqz	a3,3644 <puts+0x24>
    3628:	06000737          	lui	a4,0x6000
    362c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    3630:	fe078ee3          	beqz	a5,362c <puts+0xc>
    3634:	00d72023          	sw	a3,0(a4)
    3638:	00154683          	lbu	a3,1(a0)
    363c:	00150513          	add	a0,a0,1
    3640:	fe0696e3          	bnez	a3,362c <puts+0xc>
    3644:	06000737          	lui	a4,0x6000
    3648:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    364c:	fe078ee3          	beqz	a5,3648 <puts+0x28>
    3650:	00a00793          	li	a5,10
    3654:	00f72023          	sw	a5,0(a4)
    3658:	00100513          	li	a0,1
    365c:	00008067          	ret

00003660 <print_dec>:
    3660:	ef010113          	add	sp,sp,-272
    3664:	10812423          	sw	s0,264(sp)
    3668:	10112623          	sw	ra,268(sp)
    366c:	10912223          	sw	s1,260(sp)
    3670:	11212023          	sw	s2,256(sp)
    3674:	00050413          	mv	s0,a0
    3678:	06000737          	lui	a4,0x6000
    367c:	00055c63          	bgez	a0,3694 <print_dec+0x34>
    3680:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    3684:	fe078ee3          	beqz	a5,3680 <print_dec+0x20>
    3688:	02d00793          	li	a5,45
    368c:	00f72023          	sw	a5,0(a4)
    3690:	40800433          	neg	s0,s0
    3694:	00010913          	mv	s2,sp
    3698:	00090493          	mv	s1,s2
    369c:	0240006f          	j	36c0 <print_dec+0x60>
    36a0:	ebdff0ef          	jal	355c <__modsi3>
    36a4:	00050793          	mv	a5,a0
    36a8:	00a00593          	li	a1,10
    36ac:	00040513          	mv	a0,s0
    36b0:	00f48023          	sb	a5,0(s1)
    36b4:	e25ff0ef          	jal	34d8 <__divsi3>
    36b8:	00148493          	add	s1,s1,1
    36bc:	00050413          	mv	s0,a0
    36c0:	00a00593          	li	a1,10
    36c4:	00040513          	mv	a0,s0
    36c8:	fc041ce3          	bnez	s0,36a0 <print_dec+0x40>
    36cc:	fd248ae3          	beq	s1,s2,36a0 <print_dec+0x40>
    36d0:	06000737          	lui	a4,0x6000
    36d4:	fff4c683          	lbu	a3,-1(s1)
    36d8:	fff48493          	add	s1,s1,-1
    36dc:	03068693          	add	a3,a3,48
    36e0:	0ff6f693          	zext.b	a3,a3
    36e4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    36e8:	fe078ee3          	beqz	a5,36e4 <print_dec+0x84>
    36ec:	00d72023          	sw	a3,0(a4)
    36f0:	ff2492e3          	bne	s1,s2,36d4 <print_dec+0x74>
    36f4:	10c12083          	lw	ra,268(sp)
    36f8:	10812403          	lw	s0,264(sp)
    36fc:	10412483          	lw	s1,260(sp)
    3700:	10012903          	lw	s2,256(sp)
    3704:	11010113          	add	sp,sp,272
    3708:	00008067          	ret

0000370c <print_hex_digits>:
    370c:	000107b7          	lui	a5,0x10
    3710:	79878793          	add	a5,a5,1944 # 10798 <errpat+0x284>
    3714:	0007a883          	lw	a7,0(a5)
    3718:	0047a803          	lw	a6,4(a5)
    371c:	0087a603          	lw	a2,8(a5)
    3720:	00c7a703          	lw	a4,12(a5)
    3724:	0107c783          	lbu	a5,16(a5)
    3728:	fe010113          	add	sp,sp,-32
    372c:	fff58693          	add	a3,a1,-1
    3730:	01112623          	sw	a7,12(sp)
    3734:	01012823          	sw	a6,16(sp)
    3738:	00c12a23          	sw	a2,20(sp)
    373c:	00e12c23          	sw	a4,24(sp)
    3740:	00f10e23          	sb	a5,28(sp)
    3744:	00269693          	sll	a3,a3,0x2
    3748:	0206c863          	bltz	a3,3778 <print_hex_digits+0x6c>
    374c:	06000737          	lui	a4,0x6000
    3750:	00d557b3          	srl	a5,a0,a3
    3754:	00f7f793          	and	a5,a5,15
    3758:	02078793          	add	a5,a5,32
    375c:	002787b3          	add	a5,a5,sp
    3760:	fec7c603          	lbu	a2,-20(a5)
    3764:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    3768:	fe078ee3          	beqz	a5,3764 <print_hex_digits+0x58>
    376c:	00c72023          	sw	a2,0(a4)
    3770:	ffc68693          	add	a3,a3,-4
    3774:	fc06dee3          	bgez	a3,3750 <print_hex_digits+0x44>
    3778:	02010113          	add	sp,sp,32
    377c:	00008067          	ret

00003780 <print_hex>:
    3780:	000107b7          	lui	a5,0x10
    3784:	79878793          	add	a5,a5,1944 # 10798 <errpat+0x284>
    3788:	0007a583          	lw	a1,0(a5)
    378c:	0087a683          	lw	a3,8(a5)
    3790:	00c7a703          	lw	a4,12(a5)
    3794:	0047a603          	lw	a2,4(a5)
    3798:	0107c783          	lbu	a5,16(a5)
    379c:	fe010113          	add	sp,sp,-32
    37a0:	00b12623          	sw	a1,12(sp)
    37a4:	00d12a23          	sw	a3,20(sp)
    37a8:	00e12c23          	sw	a4,24(sp)
    37ac:	00c12823          	sw	a2,16(sp)
    37b0:	00f10e23          	sb	a5,28(sp)
    37b4:	01c00693          	li	a3,28
    37b8:	06000737          	lui	a4,0x6000
    37bc:	ffc00593          	li	a1,-4
    37c0:	00d557b3          	srl	a5,a0,a3
    37c4:	00f7f793          	and	a5,a5,15
    37c8:	02078793          	add	a5,a5,32
    37cc:	002787b3          	add	a5,a5,sp
    37d0:	fec7c603          	lbu	a2,-20(a5)
    37d4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    37d8:	fe078ee3          	beqz	a5,37d4 <print_hex+0x54>
    37dc:	00c72023          	sw	a2,0(a4)
    37e0:	ffc68693          	add	a3,a3,-4
    37e4:	fcb69ee3          	bne	a3,a1,37c0 <print_hex+0x40>
    37e8:	02010113          	add	sp,sp,32
    37ec:	00008067          	ret

000037f0 <printf>:
    37f0:	fb010113          	add	sp,sp,-80
    37f4:	02812423          	sw	s0,40(sp)
    37f8:	04f12223          	sw	a5,68(sp)
    37fc:	02112623          	sw	ra,44(sp)
    3800:	02b12a23          	sw	a1,52(sp)
    3804:	02c12c23          	sw	a2,56(sp)
    3808:	02d12e23          	sw	a3,60(sp)
    380c:	04e12023          	sw	a4,64(sp)
    3810:	05012423          	sw	a6,72(sp)
    3814:	05112623          	sw	a7,76(sp)
    3818:	00050413          	mv	s0,a0
    381c:	00054503          	lbu	a0,0(a0)
    3820:	03410793          	add	a5,sp,52
    3824:	00f12623          	sw	a5,12(sp)
    3828:	06050663          	beqz	a0,3894 <printf+0xa4>
    382c:	02912223          	sw	s1,36(sp)
    3830:	03212023          	sw	s2,32(sp)
    3834:	01312e23          	sw	s3,28(sp)
    3838:	01412c23          	sw	s4,24(sp)
    383c:	01512a23          	sw	s5,20(sp)
    3840:	02500493          	li	s1,37
    3844:	07300913          	li	s2,115
    3848:	07800993          	li	s3,120
    384c:	06400a13          	li	s4,100
    3850:	06300a93          	li	s5,99
    3854:	04951a63          	bne	a0,s1,38a8 <printf+0xb8>
    3858:	00144503          	lbu	a0,1(s0)
    385c:	05250c63          	beq	a0,s2,38b4 <printf+0xc4>
    3860:	09350263          	beq	a0,s3,38e4 <printf+0xf4>
    3864:	09450c63          	beq	a0,s4,38fc <printf+0x10c>
    3868:	07550263          	beq	a0,s5,38cc <printf+0xdc>
    386c:	d79ff0ef          	jal	35e4 <putchar>
    3870:	00140793          	add	a5,s0,1
    3874:	0017c503          	lbu	a0,1(a5)
    3878:	00178413          	add	s0,a5,1
    387c:	fc051ce3          	bnez	a0,3854 <printf+0x64>
    3880:	02412483          	lw	s1,36(sp)
    3884:	02012903          	lw	s2,32(sp)
    3888:	01c12983          	lw	s3,28(sp)
    388c:	01812a03          	lw	s4,24(sp)
    3890:	01412a83          	lw	s5,20(sp)
    3894:	02c12083          	lw	ra,44(sp)
    3898:	02812403          	lw	s0,40(sp)
    389c:	00000513          	li	a0,0
    38a0:	05010113          	add	sp,sp,80
    38a4:	00008067          	ret
    38a8:	d3dff0ef          	jal	35e4 <putchar>
    38ac:	00040793          	mv	a5,s0
    38b0:	fc5ff06f          	j	3874 <printf+0x84>
    38b4:	00c12783          	lw	a5,12(sp)
    38b8:	0007a503          	lw	a0,0(a5)
    38bc:	00478793          	add	a5,a5,4
    38c0:	00f12623          	sw	a5,12(sp)
    38c4:	d35ff0ef          	jal	35f8 <print_string>
    38c8:	fa9ff06f          	j	3870 <printf+0x80>
    38cc:	00c12783          	lw	a5,12(sp)
    38d0:	0007c503          	lbu	a0,0(a5)
    38d4:	00478793          	add	a5,a5,4
    38d8:	00f12623          	sw	a5,12(sp)
    38dc:	d09ff0ef          	jal	35e4 <putchar>
    38e0:	f91ff06f          	j	3870 <printf+0x80>
    38e4:	00c12783          	lw	a5,12(sp)
    38e8:	0007a503          	lw	a0,0(a5)
    38ec:	00478793          	add	a5,a5,4
    38f0:	00f12623          	sw	a5,12(sp)
    38f4:	e8dff0ef          	jal	3780 <print_hex>
    38f8:	f79ff06f          	j	3870 <printf+0x80>
    38fc:	00c12783          	lw	a5,12(sp)
    3900:	0007a503          	lw	a0,0(a5)
    3904:	00478793          	add	a5,a5,4
    3908:	00f12623          	sw	a5,12(sp)
    390c:	d55ff0ef          	jal	3660 <print_dec>
    3910:	f61ff06f          	j	3870 <printf+0x80>

00003914 <memcpy>:
    3914:	00a5e7b3          	or	a5,a1,a0
    3918:	0037f713          	and	a4,a5,3
    391c:	00050793          	mv	a5,a0
    3920:	02070263          	beqz	a4,3944 <memcpy+0x30>
    3924:	00c786b3          	add	a3,a5,a2
    3928:	06060063          	beqz	a2,3988 <memcpy+0x74>
    392c:	0005c703          	lbu	a4,0(a1)
    3930:	00178793          	add	a5,a5,1
    3934:	00158593          	add	a1,a1,1
    3938:	fee78fa3          	sb	a4,-1(a5)
    393c:	fef698e3          	bne	a3,a5,392c <memcpy+0x18>
    3940:	00008067          	ret
    3944:	00300713          	li	a4,3
    3948:	fcc77ee3          	bgeu	a4,a2,3924 <memcpy+0x10>
    394c:	ffc60893          	add	a7,a2,-4
    3950:	ffc8f893          	and	a7,a7,-4
    3954:	00488893          	add	a7,a7,4
    3958:	011507b3          	add	a5,a0,a7
    395c:	00058693          	mv	a3,a1
    3960:	00050713          	mv	a4,a0
    3964:	0006a803          	lw	a6,0(a3)
    3968:	00470713          	add	a4,a4,4
    396c:	00468693          	add	a3,a3,4
    3970:	ff072e23          	sw	a6,-4(a4)
    3974:	fef718e3          	bne	a4,a5,3964 <memcpy+0x50>
    3978:	00367613          	and	a2,a2,3
    397c:	011585b3          	add	a1,a1,a7
    3980:	00c786b3          	add	a3,a5,a2
    3984:	fa0614e3          	bnez	a2,392c <memcpy+0x18>
    3988:	00008067          	ret

0000398c <memset>:
    398c:	0ff5f593          	zext.b	a1,a1
    3990:	00c50733          	add	a4,a0,a2
    3994:	00050793          	mv	a5,a0
    3998:	00060863          	beqz	a2,39a8 <memset+0x1c>
    399c:	00b78023          	sb	a1,0(a5)
    39a0:	00178793          	add	a5,a5,1
    39a4:	fef71ce3          	bne	a4,a5,399c <memset+0x10>
    39a8:	00008067          	ret

Disassembly of section .data:

00010000 <mem_name>:
   10000:	0380                	.2byte	0x380
   10002:	0001                	.2byte	0x1
   10004:	0388                	.2byte	0x388
   10006:	0001                	.2byte	0x1
   10008:	0390                	.2byte	0x390
   1000a:	0001                	.2byte	0x1

0001000c <default_num_contexts>:
   1000c:	0001                	.2byte	0x1
	...

00010010 <seed4_volatile>:
   10010:	012c                	.2byte	0x12c
	...

00010014 <seed3_volatile>:
   10014:	0066                	.2byte	0x66
	...

00010018 <seed2_volatile>:
   10018:	3415                	.2byte	0x3415
	...

0001001c <seed1_volatile>:
   1001c:	3415                	.2byte	0x3415
   1001e:	0000                	.2byte	0x0
   10020:	6b36                	.2byte	0x6b36
   10022:	7020                	.2byte	0x7020
   10024:	7265                	.2byte	0x7265
   10026:	6f66                	.2byte	0x6f66
   10028:	6d72                	.2byte	0x6d72
   1002a:	6e61                	.2byte	0x6e61
   1002c:	72206563          	bltu	zero,sp,10756 <errpat+0x242>
   10030:	6e75                	.2byte	0x6e75
   10032:	7020                	.2byte	0x7020
   10034:	7261                	.2byte	0x7261
   10036:	6d61                	.2byte	0x6d61
   10038:	7465                	.2byte	0x7465
   1003a:	7265                	.2byte	0x7265
   1003c:	6f662073          	.4byte	0x6f662073
   10040:	2072                	.2byte	0x2072
   10042:	65726f63          	bltu	tp,s7,106a0 <errpat+0x18c>
   10046:	616d                	.2byte	0x616d
   10048:	6b72                	.2byte	0x6b72
   1004a:	0a2e                	.2byte	0xa2e
   1004c:	0000                	.2byte	0x0
   1004e:	0000                	.2byte	0x0
   10050:	6b36                	.2byte	0x6b36
   10052:	7620                	.2byte	0x7620
   10054:	6c61                	.2byte	0x6c61
   10056:	6469                	.2byte	0x6469
   10058:	7461                	.2byte	0x7461
   1005a:	6f69                	.2byte	0x6f69
   1005c:	206e                	.2byte	0x206e
   1005e:	7572                	.2byte	0x7572
   10060:	206e                	.2byte	0x206e
   10062:	6170                	.2byte	0x6170
   10064:	6172                	.2byte	0x6172
   10066:	656d                	.2byte	0x656d
   10068:	6574                	.2byte	0x6574
   1006a:	7372                	.2byte	0x7372
   1006c:	6620                	.2byte	0x6620
   1006e:	6320726f          	jal	tp,176a0 <seed5_volatile+0x6ee0>
   10072:	6d65726f          	jal	tp,67748 <seed5_volatile+0x56f88>
   10076:	7261                	.2byte	0x7261
   10078:	000a2e6b          	.4byte	0xa2e6b
   1007c:	7250                	.2byte	0x7250
   1007e:	6c69666f          	jal	a2,a6744 <seed5_volatile+0x95f84>
   10082:	2065                	.2byte	0x2065
   10084:	656e6567          	.4byte	0x656e6567
   10088:	6172                	.2byte	0x6172
   1008a:	6974                	.2byte	0x6974
   1008c:	72206e6f          	jal	t3,167ae <seed5_volatile+0x5fee>
   10090:	6e75                	.2byte	0x6e75
   10092:	7020                	.2byte	0x7020
   10094:	7261                	.2byte	0x7261
   10096:	6d61                	.2byte	0x6d61
   10098:	7465                	.2byte	0x7465
   1009a:	7265                	.2byte	0x7265
   1009c:	6f662073          	.4byte	0x6f662073
   100a0:	2072                	.2byte	0x2072
   100a2:	65726f63          	bltu	tp,s7,10700 <errpat+0x1ec>
   100a6:	616d                	.2byte	0x616d
   100a8:	6b72                	.2byte	0x6b72
   100aa:	0a2e                	.2byte	0xa2e
   100ac:	0000                	.2byte	0x0
   100ae:	0000                	.2byte	0x0
   100b0:	4b32                	.2byte	0x4b32
   100b2:	7020                	.2byte	0x7020
   100b4:	7265                	.2byte	0x7265
   100b6:	6f66                	.2byte	0x6f66
   100b8:	6d72                	.2byte	0x6d72
   100ba:	6e61                	.2byte	0x6e61
   100bc:	72206563          	bltu	zero,sp,107e6 <seed5_volatile+0x26>
   100c0:	6e75                	.2byte	0x6e75
   100c2:	7020                	.2byte	0x7020
   100c4:	7261                	.2byte	0x7261
   100c6:	6d61                	.2byte	0x6d61
   100c8:	7465                	.2byte	0x7465
   100ca:	7265                	.2byte	0x7265
   100cc:	6f662073          	.4byte	0x6f662073
   100d0:	2072                	.2byte	0x2072
   100d2:	65726f63          	bltu	tp,s7,10730 <errpat+0x21c>
   100d6:	616d                	.2byte	0x616d
   100d8:	6b72                	.2byte	0x6b72
   100da:	0a2e                	.2byte	0xa2e
   100dc:	0000                	.2byte	0x0
   100de:	0000                	.2byte	0x0
   100e0:	4b32                	.2byte	0x4b32
   100e2:	7620                	.2byte	0x7620
   100e4:	6c61                	.2byte	0x6c61
   100e6:	6469                	.2byte	0x6469
   100e8:	7461                	.2byte	0x7461
   100ea:	6f69                	.2byte	0x6f69
   100ec:	206e                	.2byte	0x206e
   100ee:	7572                	.2byte	0x7572
   100f0:	206e                	.2byte	0x206e
   100f2:	6170                	.2byte	0x6170
   100f4:	6172                	.2byte	0x6172
   100f6:	656d                	.2byte	0x656d
   100f8:	6574                	.2byte	0x6574
   100fa:	7372                	.2byte	0x7372
   100fc:	6620                	.2byte	0x6620
   100fe:	6320726f          	jal	tp,17730 <seed5_volatile+0x6f70>
   10102:	6d65726f          	jal	tp,677d8 <seed5_volatile+0x57018>
   10106:	7261                	.2byte	0x7261
   10108:	000a2e6b          	.4byte	0xa2e6b
   1010c:	5d75255b          	.4byte	0x5d75255b
   10110:	5245                	.2byte	0x5245
   10112:	4f52                	.2byte	0x4f52
   10114:	2152                	.2byte	0x2152
   10116:	6c20                	.2byte	0x6c20
   10118:	7369                	.2byte	0x7369
   1011a:	2074                	.2byte	0x2074
   1011c:	20637263          	bgeu	t1,t1,10320 <seed1_volatile+0x304>
   10120:	7830                	.2byte	0x7830
   10122:	3025                	.2byte	0x3025
   10124:	7834                	.2byte	0x7834
   10126:	2d20                	.2byte	0x2d20
   10128:	7320                	.2byte	0x7320
   1012a:	6f68                	.2byte	0x6f68
   1012c:	6c75                	.2byte	0x6c75
   1012e:	2064                	.2byte	0x2064
   10130:	6562                	.2byte	0x6562
   10132:	3020                	.2byte	0x3020
   10134:	2578                	.2byte	0x2578
   10136:	3430                	.2byte	0x3430
   10138:	0a78                	.2byte	0xa78
   1013a:	0000                	.2byte	0x0
   1013c:	5d75255b          	.4byte	0x5d75255b
   10140:	5245                	.2byte	0x5245
   10142:	4f52                	.2byte	0x4f52
   10144:	2152                	.2byte	0x2152
   10146:	6d20                	.2byte	0x6d20
   10148:	7461                	.2byte	0x7461
   1014a:	6972                	.2byte	0x6972
   1014c:	2078                	.2byte	0x2078
   1014e:	20637263          	bgeu	t1,t1,10352 <seed1_volatile+0x336>
   10152:	7830                	.2byte	0x7830
   10154:	3025                	.2byte	0x3025
   10156:	7834                	.2byte	0x7834
   10158:	2d20                	.2byte	0x2d20
   1015a:	7320                	.2byte	0x7320
   1015c:	6f68                	.2byte	0x6f68
   1015e:	6c75                	.2byte	0x6c75
   10160:	2064                	.2byte	0x2064
   10162:	6562                	.2byte	0x6562
   10164:	3020                	.2byte	0x3020
   10166:	2578                	.2byte	0x2578
   10168:	3430                	.2byte	0x3430
   1016a:	0a78                	.2byte	0xa78
   1016c:	0000                	.2byte	0x0
   1016e:	0000                	.2byte	0x0
   10170:	5d75255b          	.4byte	0x5d75255b
   10174:	5245                	.2byte	0x5245
   10176:	4f52                	.2byte	0x4f52
   10178:	2152                	.2byte	0x2152
   1017a:	7320                	.2byte	0x7320
   1017c:	6174                	.2byte	0x6174
   1017e:	6574                	.2byte	0x6574
   10180:	6320                	.2byte	0x6320
   10182:	6372                	.2byte	0x6372
   10184:	3020                	.2byte	0x3020
   10186:	2578                	.2byte	0x2578
   10188:	3430                	.2byte	0x3430
   1018a:	2078                	.2byte	0x2078
   1018c:	202d                	.2byte	0x202d
   1018e:	756f6873          	.4byte	0x756f6873
   10192:	646c                	.2byte	0x646c
   10194:	6220                	.2byte	0x6220
   10196:	2065                	.2byte	0x2065
   10198:	7830                	.2byte	0x7830
   1019a:	3025                	.2byte	0x3025
   1019c:	7834                	.2byte	0x7834
   1019e:	000a                	.2byte	0xa
   101a0:	65726f43          	.4byte	0x65726f43
   101a4:	614d                	.2byte	0x614d
   101a6:	6b72                	.2byte	0x6b72
   101a8:	5320                	.2byte	0x5320
   101aa:	7a69                	.2byte	0x7a69
   101ac:	2065                	.2byte	0x2065
   101ae:	2020                	.2byte	0x2020
   101b0:	3a20                	.2byte	0x3a20
   101b2:	2520                	.2byte	0x2520
   101b4:	756c                	.2byte	0x756c
   101b6:	000a                	.2byte	0xa
   101b8:	6f54                	.2byte	0x6f54
   101ba:	6174                	.2byte	0x6174
   101bc:	206c                	.2byte	0x206c
   101be:	6974                	.2byte	0x6974
   101c0:	20736b63          	bltu	t1,t2,103d6 <state_known_crc+0x26>
   101c4:	2020                	.2byte	0x2020
   101c6:	2020                	.2byte	0x2020
   101c8:	3a20                	.2byte	0x3a20
   101ca:	2520                	.2byte	0x2520
   101cc:	756c                	.2byte	0x756c
   101ce:	000a                	.2byte	0xa
   101d0:	5245                	.2byte	0x5245
   101d2:	4f52                	.2byte	0x4f52
   101d4:	2152                	.2byte	0x2152
   101d6:	4d20                	.2byte	0x4d20
   101d8:	7375                	.2byte	0x7375
   101da:	2074                	.2byte	0x2074
   101dc:	7865                	.2byte	0x7865
   101de:	6365                	.2byte	0x6365
   101e0:	7475                	.2byte	0x7475
   101e2:	2065                	.2byte	0x2065
   101e4:	6f66                	.2byte	0x6f66
   101e6:	2072                	.2byte	0x2072
   101e8:	7461                	.2byte	0x7461
   101ea:	6c20                	.2byte	0x6c20
   101ec:	6165                	.2byte	0x6165
   101ee:	31207473          	.4byte	0x31207473
   101f2:	2030                	.2byte	0x2030
   101f4:	73636573          	.4byte	0x73636573
   101f8:	6620                	.2byte	0x6620
   101fa:	6120726f          	jal	tp,1780c <seed5_volatile+0x704c>
   101fe:	7620                	.2byte	0x7620
   10200:	6c61                	.2byte	0x6c61
   10202:	6469                	.2byte	0x6469
   10204:	7220                	.2byte	0x7220
   10206:	7365                	.2byte	0x7365
   10208:	6c75                	.2byte	0x6c75
   1020a:	2174                	.2byte	0x2174
   1020c:	000a                	.2byte	0xa
   1020e:	0000                	.2byte	0x0
   10210:	43415453          	.4byte	0x43415453
   10214:	0000004b          	.4byte	0x4b
   10218:	654d                	.2byte	0x654d
   1021a:	6f6d                	.2byte	0x6f6d
   1021c:	7972                	.2byte	0x7972
   1021e:	6c20                	.2byte	0x6c20
   10220:	7461636f          	jal	t1,26966 <seed5_volatile+0x161a6>
   10224:	6f69                	.2byte	0x6f69
   10226:	206e                	.2byte	0x206e
   10228:	3a20                	.2byte	0x3a20
   1022a:	2520                	.2byte	0x2520
   1022c:	00000a73          	.4byte	0xa73
   10230:	64656573          	.4byte	0x64656573
   10234:	20637263          	bgeu	t1,t1,10438 <state_known_crc+0x88>
   10238:	2020                	.2byte	0x2020
   1023a:	2020                	.2byte	0x2020
   1023c:	2020                	.2byte	0x2020
   1023e:	2020                	.2byte	0x2020
   10240:	3a20                	.2byte	0x3a20
   10242:	3020                	.2byte	0x3020
   10244:	2578                	.2byte	0x2578
   10246:	3430                	.2byte	0x3430
   10248:	0a78                	.2byte	0xa78
   1024a:	0000                	.2byte	0x0
   1024c:	5d64255b          	.4byte	0x5d64255b
   10250:	6c637263          	bgeu	t1,t1,10914 <seed5_volatile+0x154>
   10254:	7369                	.2byte	0x7369
   10256:	2074                	.2byte	0x2074
   10258:	2020                	.2byte	0x2020
   1025a:	2020                	.2byte	0x2020
   1025c:	2020                	.2byte	0x2020
   1025e:	203a                	.2byte	0x203a
   10260:	7830                	.2byte	0x7830
   10262:	3025                	.2byte	0x3025
   10264:	7834                	.2byte	0x7834
   10266:	000a                	.2byte	0xa
   10268:	5d64255b          	.4byte	0x5d64255b
   1026c:	6d637263          	bgeu	t1,s6,10930 <seed5_volatile+0x170>
   10270:	7461                	.2byte	0x7461
   10272:	6972                	.2byte	0x6972
   10274:	2078                	.2byte	0x2078
   10276:	2020                	.2byte	0x2020
   10278:	2020                	.2byte	0x2020
   1027a:	203a                	.2byte	0x203a
   1027c:	7830                	.2byte	0x7830
   1027e:	3025                	.2byte	0x3025
   10280:	7834                	.2byte	0x7834
   10282:	000a                	.2byte	0xa
   10284:	5d64255b          	.4byte	0x5d64255b
   10288:	73637263          	bgeu	t1,s6,109ac <seed5_volatile+0x1ec>
   1028c:	6174                	.2byte	0x6174
   1028e:	6574                	.2byte	0x6574
   10290:	2020                	.2byte	0x2020
   10292:	2020                	.2byte	0x2020
   10294:	2020                	.2byte	0x2020
   10296:	203a                	.2byte	0x203a
   10298:	7830                	.2byte	0x7830
   1029a:	3025                	.2byte	0x3025
   1029c:	7834                	.2byte	0x7834
   1029e:	000a                	.2byte	0xa
   102a0:	5d64255b          	.4byte	0x5d64255b
   102a4:	66637263          	bgeu	t1,t1,10908 <seed5_volatile+0x148>
   102a8:	6e69                	.2byte	0x6e69
   102aa:	6c61                	.2byte	0x6c61
   102ac:	2020                	.2byte	0x2020
   102ae:	2020                	.2byte	0x2020
   102b0:	2020                	.2byte	0x2020
   102b2:	203a                	.2byte	0x203a
   102b4:	7830                	.2byte	0x7830
   102b6:	3025                	.2byte	0x3025
   102b8:	7834                	.2byte	0x7834
   102ba:	000a                	.2byte	0xa
   102bc:	72726f43          	.4byte	0x72726f43
   102c0:	6365                	.2byte	0x6365
   102c2:	2074                	.2byte	0x2074
   102c4:	7265706f          	j	679ea <seed5_volatile+0x5722a>
   102c8:	7461                	.2byte	0x7461
   102ca:	6f69                	.2byte	0x6f69
   102cc:	206e                	.2byte	0x206e
   102ce:	6176                	.2byte	0x6176
   102d0:	696c                	.2byte	0x696c
   102d2:	6164                	.2byte	0x6164
   102d4:	6574                	.2byte	0x6574
   102d6:	2e64                	.2byte	0x2e64
   102d8:	5320                	.2byte	0x5320
   102da:	6565                	.2byte	0x6565
   102dc:	5220                	.2byte	0x5220
   102de:	4145                	.2byte	0x4145
   102e0:	4d44                	.2byte	0x4d44
   102e2:	2e45                	.2byte	0x2e45
   102e4:	646d                	.2byte	0x646d
   102e6:	6620                	.2byte	0x6620
   102e8:	7220726f          	jal	tp,17a0a <seed5_volatile+0x724a>
   102ec:	6e75                	.2byte	0x6e75
   102ee:	6120                	.2byte	0x6120
   102f0:	646e                	.2byte	0x646e
   102f2:	7220                	.2byte	0x7220
   102f4:	7065                	.2byte	0x7065
   102f6:	6974726f          	jal	tp,5818c <seed5_volatile+0x479cc>
   102fa:	676e                	.2byte	0x676e
   102fc:	7220                	.2byte	0x7220
   102fe:	6c75                	.2byte	0x6c75
   10300:	7365                	.2byte	0x7365
   10302:	0a2e                	.2byte	0xa2e
   10304:	0000                	.2byte	0x0
   10306:	0000                	.2byte	0x0
   10308:	6e6e6143          	.4byte	0x6e6e6143
   1030c:	7620746f          	jal	s0,17a6e <seed5_volatile+0x72ae>
   10310:	6c61                	.2byte	0x6c61
   10312:	6469                	.2byte	0x6469
   10314:	7461                	.2byte	0x7461
   10316:	2065                	.2byte	0x2065
   10318:	7265706f          	j	67a3e <seed5_volatile+0x5727e>
   1031c:	7461                	.2byte	0x7461
   1031e:	6f69                	.2byte	0x6f69
   10320:	206e                	.2byte	0x206e
   10322:	6f66                	.2byte	0x6f66
   10324:	2072                	.2byte	0x2072
   10326:	6874                	.2byte	0x6874
   10328:	7365                	.2byte	0x7365
   1032a:	2065                	.2byte	0x2065
   1032c:	64656573          	.4byte	0x64656573
   10330:	7620                	.2byte	0x7620
   10332:	6c61                	.2byte	0x6c61
   10334:	6575                	.2byte	0x6575
   10336:	70202c73          	.4byte	0x70202c73
   1033a:	656c                	.2byte	0x656c
   1033c:	7361                	.2byte	0x7361
   1033e:	2065                	.2byte	0x2065
   10340:	706d6f63          	bltu	s10,t1,10a5e <seed5_volatile+0x29e>
   10344:	7261                	.2byte	0x7261
   10346:	2065                	.2byte	0x2065
   10348:	68746977          	.4byte	0x68746977
   1034c:	7220                	.2byte	0x7220
   1034e:	7365                	.2byte	0x7365
   10350:	6c75                	.2byte	0x6c75
   10352:	7374                	.2byte	0x7374
   10354:	6f20                	.2byte	0x6f20
   10356:	206e                	.2byte	0x206e
   10358:	2061                	.2byte	0x2061
   1035a:	776f6e6b          	.4byte	0x776f6e6b
   1035e:	206e                	.2byte	0x206e
   10360:	6c70                	.2byte	0x6c70
   10362:	7461                	.2byte	0x7461
   10364:	6f66                	.2byte	0x6f66
   10366:	6d72                	.2byte	0x6d72
   10368:	0a2e                	.2byte	0xa2e
   1036a:	0000                	.2byte	0x0
   1036c:	7245                	.2byte	0x7245
   1036e:	6f72                	.2byte	0x6f72
   10370:	7372                	.2byte	0x7372
   10372:	6420                	.2byte	0x6420
   10374:	7465                	.2byte	0x7465
   10376:	6365                	.2byte	0x6365
   10378:	6574                	.2byte	0x6574
   1037a:	0a64                	.2byte	0xa64
   1037c:	0000                	.2byte	0x0
   1037e:	0000                	.2byte	0x0
   10380:	74617453          	.4byte	0x74617453
   10384:	6369                	.2byte	0x6369
   10386:	0000                	.2byte	0x0
   10388:	6548                	.2byte	0x6548
   1038a:	7061                	.2byte	0x7061
   1038c:	0000                	.2byte	0x0
   1038e:	0000                	.2byte	0x0
   10390:	63617453          	.4byte	0x63617453
   10394:	0000006b          	.4byte	0x6b

00010398 <list_known_crc>:
   10398:	d4b0                	.2byte	0xd4b0
   1039a:	3340                	.2byte	0x3340
   1039c:	6a79                	.2byte	0x6a79
   1039e:	e714                	.2byte	0xe714
   103a0:	e3c1                	.2byte	0xe3c1
	...

000103a4 <matrix_known_crc>:
   103a4:	be52                	.2byte	0xbe52
   103a6:	1199                	.2byte	0x1199
   103a8:	5608                	.2byte	0x5608
   103aa:	07471fd7          	.4byte	0x7471fd7
	...

000103b0 <state_known_crc>:
   103b0:	39bf5e47          	.4byte	0x39bf5e47
   103b4:	e5a4                	.2byte	0xe5a4
   103b6:	8e3a                	.2byte	0x8e3a
   103b8:	8d84                	.2byte	0x8d84
   103ba:	0000                	.2byte	0x0
   103bc:	6570                	.2byte	0x6570
   103be:	6974                	.2byte	0x6974
   103c0:	7574                	.2byte	0x7574
   103c2:	6179                	.2byte	0x6179
   103c4:	0075                	.2byte	0x75
   103c6:	0000                	.2byte	0x0
   103c8:	6574                	.2byte	0x6574
   103ca:	65627473          	.4byte	0x65627473
   103ce:	636e                	.2byte	0x636e
   103d0:	0068                	.2byte	0x68
   103d2:	0000                	.2byte	0x0
   103d4:	7562                	.2byte	0x7562
   103d6:	6c69                	.2byte	0x6c69
   103d8:	3a64                	.2byte	0x3a64
   103da:	2520                	.2byte	0x2520
   103dc:	6f662073          	.4byte	0x6f662073
   103e0:	2072                	.2byte	0x2072
   103e2:	7325                	.2byte	0x7325
   103e4:	000a                	.2byte	0xa
   103e6:	0000                	.2byte	0x0
   103e8:	0a0a                	.2byte	0xa0a
   103ea:	0000                	.2byte	0x0
   103ec:	6425                	.2byte	0x6425
   103ee:	002e                	.2byte	0x2e
   103f0:	6425                	.2byte	0x6425
   103f2:	0000                	.2byte	0x0
   103f4:	2a2a                	.2byte	0x2a2a
   103f6:	202a                	.2byte	0x202a
   103f8:	6954                	.2byte	0x6954
   103fa:	20736b63          	bltu	t1,t2,10610 <errpat+0xfc>
   103fe:	2020                	.2byte	0x2020
   10400:	2020                	.2byte	0x2020
   10402:	2020                	.2byte	0x2020
   10404:	3a20                	.2byte	0x3a20
   10406:	2520                	.2byte	0x2520
   10408:	0a64                	.2byte	0xa64
   1040a:	0000                	.2byte	0x0
   1040c:	2a2a                	.2byte	0x2a2a
   1040e:	202a                	.2byte	0x202a
   10410:	65726f43          	.4byte	0x65726f43
   10414:	616d                	.2byte	0x616d
   10416:	6b72                	.2byte	0x6b72
   10418:	7a484d2f          	.4byte	0x7a484d2f
   1041c:	3a20                	.2byte	0x3a20
   1041e:	0020                	.2byte	0x20
   10420:	2a2a                	.2byte	0x2a2a
   10422:	202a                	.2byte	0x202a
   10424:	20495043          	.4byte	0x20495043
   10428:	3228                	.2byte	0x3228
   1042a:	2029                	.2byte	0x2029
   1042c:	2020                	.2byte	0x2020
   1042e:	2020                	.2byte	0x2020
   10430:	3a20                	.2byte	0x3a20
   10432:	0020                	.2byte	0x20
   10434:	3054                	.2byte	0x3054
   10436:	332e                	.2byte	0x332e
   10438:	2d65                	.2byte	0x2d65
   1043a:	4631                	.2byte	0x4631
   1043c:	0000                	.2byte	0x0
   1043e:	0000                	.2byte	0x0
   10440:	542d                	.2byte	0x542d
   10442:	542e                	.2byte	0x542e
   10444:	71542b2b          	.4byte	0x71542b2b
   10448:	0000                	.2byte	0x0
   1044a:	0000                	.2byte	0x0
   1044c:	5431                	.2byte	0x5431
   1044e:	65342e33          	.4byte	0x65342e33
   10452:	7a34                	.2byte	0x7a34
   10454:	0000                	.2byte	0x0
   10456:	0000                	.2byte	0x0
   10458:	302e3433          	.4byte	0x302e3433
   1045c:	2d65                	.2byte	0x2d65
   1045e:	5e54                	.2byte	0x5e54
   10460:	0000                	.2byte	0x0
   10462:	0000                	.2byte	0x0
   10464:	2e35                	.2byte	0x2e35
   10466:	3035                	.2byte	0x3035
   10468:	6530                	.2byte	0x6530
   1046a:	0000332b          	.4byte	0x332b
   1046e:	0000                	.2byte	0x0
   10470:	2e2d                	.2byte	0x2e2d
   10472:	3231                	.2byte	0x3231
   10474:	322d6533          	.4byte	0x322d6533
   10478:	0000                	.2byte	0x0
   1047a:	0000                	.2byte	0x0
   1047c:	382d                	.2byte	0x382d
   1047e:	382b6537          	lui	a0,0x382b6
   10482:	00003233          	snez	tp,zero
   10486:	0000                	.2byte	0x0
   10488:	362e302b          	.4byte	0x362e302b
   1048c:	2d65                	.2byte	0x2d65
   1048e:	3231                	.2byte	0x3231
   10490:	0000                	.2byte	0x0
   10492:	0000                	.2byte	0x0
   10494:	352e3533          	.4byte	0x352e3533
   10498:	3434                	.2byte	0x3434
   1049a:	3030                	.2byte	0x3030
   1049c:	0000                	.2byte	0x0
   1049e:	0000                	.2byte	0x0
   104a0:	312e                	.2byte	0x312e
   104a2:	3332                	.2byte	0x3332
   104a4:	3534                	.2byte	0x3534
   104a6:	3030                	.2byte	0x3030
   104a8:	0000                	.2byte	0x0
   104aa:	0000                	.2byte	0x0
   104ac:	312d                	.2byte	0x312d
   104ae:	3031                	.2byte	0x3031
   104b0:	372e                	.2byte	0x372e
   104b2:	3030                	.2byte	0x3030
   104b4:	0000                	.2byte	0x0
   104b6:	0000                	.2byte	0x0
   104b8:	362e302b          	.4byte	0x362e302b
   104bc:	3434                	.2byte	0x3434
   104be:	3030                	.2byte	0x3030
   104c0:	0000                	.2byte	0x0
   104c2:	0000                	.2byte	0x0
   104c4:	3035                	.2byte	0x3035
   104c6:	3231                	.2byte	0x3231
   104c8:	0000                	.2byte	0x0
   104ca:	0000                	.2byte	0x0
   104cc:	3231                	.2byte	0x3231
   104ce:	00003433          	snez	s0,zero
   104d2:	0000                	.2byte	0x0
   104d4:	382d                	.2byte	0x382d
   104d6:	00003437          	lui	s0,0x3
   104da:	0000                	.2byte	0x0
   104dc:	3232312b          	.4byte	0x3232312b
   104e0:	0000                	.2byte	0x0
	...

000104e4 <intpat>:
   104e4:	04c4                	.2byte	0x4c4
   104e6:	0001                	.2byte	0x1
   104e8:	04cc                	.2byte	0x4cc
   104ea:	0001                	.2byte	0x1
   104ec:	04d4                	.2byte	0x4d4
   104ee:	0001                	.2byte	0x1
   104f0:	04dc                	.2byte	0x4dc
   104f2:	0001                	.2byte	0x1

000104f4 <floatpat>:
   104f4:	0494                	.2byte	0x494
   104f6:	0001                	.2byte	0x1
   104f8:	04a0                	.2byte	0x4a0
   104fa:	0001                	.2byte	0x1
   104fc:	04ac                	.2byte	0x4ac
   104fe:	0001                	.2byte	0x1
   10500:	04b8                	.2byte	0x4b8
   10502:	0001                	.2byte	0x1

00010504 <scipat>:
   10504:	0464                	.2byte	0x464
   10506:	0001                	.2byte	0x1
   10508:	0470                	.2byte	0x470
   1050a:	0001                	.2byte	0x1
   1050c:	047c                	.2byte	0x47c
   1050e:	0001                	.2byte	0x1
   10510:	0488                	.2byte	0x488
   10512:	0001                	.2byte	0x1

00010514 <errpat>:
   10514:	0434                	.2byte	0x434
   10516:	0001                	.2byte	0x1
   10518:	0440                	.2byte	0x440
   1051a:	0001                	.2byte	0x1
   1051c:	044c                	.2byte	0x44c
   1051e:	0001                	.2byte	0x1
   10520:	0458                	.2byte	0x458
   10522:	0001                	.2byte	0x1
   10524:	25c0                	.2byte	0x25c0
   10526:	0000                	.2byte	0x0
   10528:	2590                	.2byte	0x2590
   1052a:	0000                	.2byte	0x0
   1052c:	259c                	.2byte	0x259c
   1052e:	0000                	.2byte	0x0
   10530:	25a8                	.2byte	0x25a8
   10532:	0000                	.2byte	0x0
   10534:	25b4                	.2byte	0x25b4
   10536:	0000                	.2byte	0x0
   10538:	2584                	.2byte	0x2584
   1053a:	0000                	.2byte	0x0
   1053c:	3130                	.2byte	0x3130
   1053e:	3332                	.2byte	0x3332
   10540:	3534                	.2byte	0x3534
   10542:	3736                	.2byte	0x3736
   10544:	3938                	.2byte	0x3938
   10546:	6261                	.2byte	0x6261
   10548:	66656463          	bltu	a0,t1,10bb0 <seed5_volatile+0x3f0>
   1054c:	6a696867          	.4byte	0x6a696867
   10550:	6e6d6c6b          	.4byte	0x6e6d6c6b
   10554:	7271706f          	j	2847a <seed5_volatile+0x17cba>
   10558:	76757473          	.4byte	0x76757473
   1055c:	7a797877          	.4byte	0x7a797877
   10560:	0000                	.2byte	0x0
   10562:	0000                	.2byte	0x0
   10564:	3130                	.2byte	0x3130
   10566:	3332                	.2byte	0x3332
   10568:	3534                	.2byte	0x3534
   1056a:	3736                	.2byte	0x3736
   1056c:	3938                	.2byte	0x3938
   1056e:	4241                	.2byte	0x4241
   10570:	46454443          	.4byte	0x46454443
   10574:	4a494847          	.4byte	0x4a494847
   10578:	4e4d4c4b          	.4byte	0x4e4d4c4b
   1057c:	5251504f          	.4byte	0x5251504f
   10580:	56555453          	.4byte	0x56555453
   10584:	5a595857          	.4byte	0x5a595857
   10588:	0000                	.2byte	0x0
   1058a:	0000                	.2byte	0x0
   1058c:	4e3c                	.2byte	0x4e3c
   1058e:	4c55                	.2byte	0x4c55
   10590:	3e4c                	.2byte	0x3e4c
   10592:	0000                	.2byte	0x0
   10594:	2d04                	.2byte	0x2d04
   10596:	0000                	.2byte	0x0
   10598:	2c80                	.2byte	0x2c80
   1059a:	0000                	.2byte	0x0
   1059c:	2c80                	.2byte	0x2c80
   1059e:	0000                	.2byte	0x0
   105a0:	2cf8                	.2byte	0x2cf8
   105a2:	0000                	.2byte	0x0
   105a4:	2c80                	.2byte	0x2c80
   105a6:	0000                	.2byte	0x0
   105a8:	2c80                	.2byte	0x2c80
   105aa:	0000                	.2byte	0x0
   105ac:	2c80                	.2byte	0x2c80
   105ae:	0000                	.2byte	0x0
   105b0:	2c80                	.2byte	0x2c80
   105b2:	0000                	.2byte	0x0
   105b4:	2c80                	.2byte	0x2c80
   105b6:	0000                	.2byte	0x0
   105b8:	2c80                	.2byte	0x2c80
   105ba:	0000                	.2byte	0x0
   105bc:	2c80                	.2byte	0x2c80
   105be:	0000                	.2byte	0x0
   105c0:	2cec                	.2byte	0x2cec
   105c2:	0000                	.2byte	0x0
   105c4:	2c80                	.2byte	0x2c80
   105c6:	0000                	.2byte	0x0
   105c8:	2ce0                	.2byte	0x2ce0
   105ca:	0000                	.2byte	0x0
   105cc:	2c80                	.2byte	0x2c80
   105ce:	0000                	.2byte	0x0
   105d0:	2c80                	.2byte	0x2c80
   105d2:	0000                	.2byte	0x0
   105d4:	2cd4                	.2byte	0x2cd4
   105d6:	0000                	.2byte	0x0
   105d8:	3318                	.2byte	0x3318
   105da:	0000                	.2byte	0x0
   105dc:	2d10                	.2byte	0x2d10
   105de:	0000                	.2byte	0x0
   105e0:	2d10                	.2byte	0x2d10
   105e2:	0000                	.2byte	0x0
   105e4:	2d10                	.2byte	0x2d10
   105e6:	0000                	.2byte	0x0
   105e8:	2d10                	.2byte	0x2d10
   105ea:	0000                	.2byte	0x0
   105ec:	2d10                	.2byte	0x2d10
   105ee:	0000                	.2byte	0x0
   105f0:	2d10                	.2byte	0x2d10
   105f2:	0000                	.2byte	0x0
   105f4:	2d10                	.2byte	0x2d10
   105f6:	0000                	.2byte	0x0
   105f8:	2d10                	.2byte	0x2d10
   105fa:	0000                	.2byte	0x0
   105fc:	2d10                	.2byte	0x2d10
   105fe:	0000                	.2byte	0x0
   10600:	2d10                	.2byte	0x2d10
   10602:	0000                	.2byte	0x0
   10604:	2d10                	.2byte	0x2d10
   10606:	0000                	.2byte	0x0
   10608:	2d10                	.2byte	0x2d10
   1060a:	0000                	.2byte	0x0
   1060c:	2d10                	.2byte	0x2d10
   1060e:	0000                	.2byte	0x0
   10610:	2d10                	.2byte	0x2d10
   10612:	0000                	.2byte	0x0
   10614:	2d10                	.2byte	0x2d10
   10616:	0000                	.2byte	0x0
   10618:	2d10                	.2byte	0x2d10
   1061a:	0000                	.2byte	0x0
   1061c:	2d10                	.2byte	0x2d10
   1061e:	0000                	.2byte	0x0
   10620:	2d10                	.2byte	0x2d10
   10622:	0000                	.2byte	0x0
   10624:	2d10                	.2byte	0x2d10
   10626:	0000                	.2byte	0x0
   10628:	2d10                	.2byte	0x2d10
   1062a:	0000                	.2byte	0x0
   1062c:	2d10                	.2byte	0x2d10
   1062e:	0000                	.2byte	0x0
   10630:	2d10                	.2byte	0x2d10
   10632:	0000                	.2byte	0x0
   10634:	3410                	.2byte	0x3410
   10636:	0000                	.2byte	0x0
   10638:	2d10                	.2byte	0x2d10
   1063a:	0000                	.2byte	0x0
   1063c:	2d10                	.2byte	0x2d10
   1063e:	0000                	.2byte	0x0
   10640:	2d10                	.2byte	0x2d10
   10642:	0000                	.2byte	0x0
   10644:	2d10                	.2byte	0x2d10
   10646:	0000                	.2byte	0x0
   10648:	2d10                	.2byte	0x2d10
   1064a:	0000                	.2byte	0x0
   1064c:	2d10                	.2byte	0x2d10
   1064e:	0000                	.2byte	0x0
   10650:	2d10                	.2byte	0x2d10
   10652:	0000                	.2byte	0x0
   10654:	2d10                	.2byte	0x2d10
   10656:	0000                	.2byte	0x0
   10658:	3408                	.2byte	0x3408
   1065a:	0000                	.2byte	0x0
   1065c:	2d10                	.2byte	0x2d10
   1065e:	0000                	.2byte	0x0
   10660:	2eec                	.2byte	0x2eec
   10662:	0000                	.2byte	0x0
   10664:	33f8                	.2byte	0x33f8
   10666:	0000                	.2byte	0x0
   10668:	2d10                	.2byte	0x2d10
   1066a:	0000                	.2byte	0x0
   1066c:	2d10                	.2byte	0x2d10
   1066e:	0000                	.2byte	0x0
   10670:	2d10                	.2byte	0x2d10
   10672:	0000                	.2byte	0x0
   10674:	2d10                	.2byte	0x2d10
   10676:	0000                	.2byte	0x0
   10678:	33f8                	.2byte	0x33f8
   1067a:	0000                	.2byte	0x0
   1067c:	2d10                	.2byte	0x2d10
   1067e:	0000                	.2byte	0x0
   10680:	2d10                	.2byte	0x2d10
   10682:	0000                	.2byte	0x0
   10684:	2d10                	.2byte	0x2d10
   10686:	0000                	.2byte	0x0
   10688:	2d10                	.2byte	0x2d10
   1068a:	0000                	.2byte	0x0
   1068c:	2d10                	.2byte	0x2d10
   1068e:	0000                	.2byte	0x0
   10690:	2ee0                	.2byte	0x2ee0
   10692:	0000                	.2byte	0x0
   10694:	2ea8                	.2byte	0x2ea8
   10696:	0000                	.2byte	0x0
   10698:	2d10                	.2byte	0x2d10
   1069a:	0000                	.2byte	0x0
   1069c:	2d10                	.2byte	0x2d10
   1069e:	0000                	.2byte	0x0
   106a0:	2e14                	.2byte	0x2e14
   106a2:	0000                	.2byte	0x0
   106a4:	2d10                	.2byte	0x2d10
   106a6:	0000                	.2byte	0x0
   106a8:	2de4                	.2byte	0x2de4
   106aa:	0000                	.2byte	0x0
   106ac:	2d10                	.2byte	0x2d10
   106ae:	0000                	.2byte	0x0
   106b0:	2d10                	.2byte	0x2d10
   106b2:	0000                	.2byte	0x0
   106b4:	2f34                	.2byte	0x2f34
   106b6:	0000                	.2byte	0x0
   106b8:	3228                	.2byte	0x3228
   106ba:	0000                	.2byte	0x0
   106bc:	2d14                	.2byte	0x2d14
   106be:	0000                	.2byte	0x0
   106c0:	2d14                	.2byte	0x2d14
   106c2:	0000                	.2byte	0x0
   106c4:	2d14                	.2byte	0x2d14
   106c6:	0000                	.2byte	0x0
   106c8:	2d14                	.2byte	0x2d14
   106ca:	0000                	.2byte	0x0
   106cc:	2d14                	.2byte	0x2d14
   106ce:	0000                	.2byte	0x0
   106d0:	2d14                	.2byte	0x2d14
   106d2:	0000                	.2byte	0x0
   106d4:	2d14                	.2byte	0x2d14
   106d6:	0000                	.2byte	0x0
   106d8:	2d14                	.2byte	0x2d14
   106da:	0000                	.2byte	0x0
   106dc:	2d14                	.2byte	0x2d14
   106de:	0000                	.2byte	0x0
   106e0:	2d14                	.2byte	0x2d14
   106e2:	0000                	.2byte	0x0
   106e4:	2d14                	.2byte	0x2d14
   106e6:	0000                	.2byte	0x0
   106e8:	2d14                	.2byte	0x2d14
   106ea:	0000                	.2byte	0x0
   106ec:	2d14                	.2byte	0x2d14
   106ee:	0000                	.2byte	0x0
   106f0:	2d14                	.2byte	0x2d14
   106f2:	0000                	.2byte	0x0
   106f4:	2d14                	.2byte	0x2d14
   106f6:	0000                	.2byte	0x0
   106f8:	2d14                	.2byte	0x2d14
   106fa:	0000                	.2byte	0x0
   106fc:	2d14                	.2byte	0x2d14
   106fe:	0000                	.2byte	0x0
   10700:	2d14                	.2byte	0x2d14
   10702:	0000                	.2byte	0x0
   10704:	2d14                	.2byte	0x2d14
   10706:	0000                	.2byte	0x0
   10708:	2d14                	.2byte	0x2d14
   1070a:	0000                	.2byte	0x0
   1070c:	2d14                	.2byte	0x2d14
   1070e:	0000                	.2byte	0x0
   10710:	2d14                	.2byte	0x2d14
   10712:	0000                	.2byte	0x0
   10714:	321c                	.2byte	0x321c
   10716:	0000                	.2byte	0x0
   10718:	2d14                	.2byte	0x2d14
   1071a:	0000                	.2byte	0x0
   1071c:	2d14                	.2byte	0x2d14
   1071e:	0000                	.2byte	0x0
   10720:	2d14                	.2byte	0x2d14
   10722:	0000                	.2byte	0x0
   10724:	2d14                	.2byte	0x2d14
   10726:	0000                	.2byte	0x0
   10728:	2d14                	.2byte	0x2d14
   1072a:	0000                	.2byte	0x0
   1072c:	2d14                	.2byte	0x2d14
   1072e:	0000                	.2byte	0x0
   10730:	2d14                	.2byte	0x2d14
   10732:	0000                	.2byte	0x0
   10734:	2d14                	.2byte	0x2d14
   10736:	0000                	.2byte	0x0
   10738:	3058                	.2byte	0x3058
   1073a:	0000                	.2byte	0x0
   1073c:	2d14                	.2byte	0x2d14
   1073e:	0000                	.2byte	0x0
   10740:	2ef0                	.2byte	0x2ef0
   10742:	0000                	.2byte	0x0
   10744:	3038                	.2byte	0x3038
   10746:	0000                	.2byte	0x0
   10748:	2d14                	.2byte	0x2d14
   1074a:	0000                	.2byte	0x0
   1074c:	2d14                	.2byte	0x2d14
   1074e:	0000                	.2byte	0x0
   10750:	2d14                	.2byte	0x2d14
   10752:	0000                	.2byte	0x0
   10754:	2d14                	.2byte	0x2d14
   10756:	0000                	.2byte	0x0
   10758:	3038                	.2byte	0x3038
   1075a:	0000                	.2byte	0x0
   1075c:	2d14                	.2byte	0x2d14
   1075e:	0000                	.2byte	0x0
   10760:	2d14                	.2byte	0x2d14
   10762:	0000                	.2byte	0x0
   10764:	2d14                	.2byte	0x2d14
   10766:	0000                	.2byte	0x0
   10768:	2d14                	.2byte	0x2d14
   1076a:	0000                	.2byte	0x0
   1076c:	2d14                	.2byte	0x2d14
   1076e:	0000                	.2byte	0x0
   10770:	2ee4                	.2byte	0x2ee4
   10772:	0000                	.2byte	0x0
   10774:	2eac                	.2byte	0x2eac
   10776:	0000                	.2byte	0x0
   10778:	2d14                	.2byte	0x2d14
   1077a:	0000                	.2byte	0x0
   1077c:	2d14                	.2byte	0x2d14
   1077e:	0000                	.2byte	0x0
   10780:	2e18                	.2byte	0x2e18
   10782:	0000                	.2byte	0x0
   10784:	2d14                	.2byte	0x2d14
   10786:	0000                	.2byte	0x0
   10788:	2de8                	.2byte	0x2de8
   1078a:	0000                	.2byte	0x0
   1078c:	2d14                	.2byte	0x2d14
   1078e:	0000                	.2byte	0x0
   10790:	2d14                	.2byte	0x2d14
   10792:	0000                	.2byte	0x0
   10794:	2f38                	.2byte	0x2f38
   10796:	0000                	.2byte	0x0
   10798:	3130                	.2byte	0x3130
   1079a:	3332                	.2byte	0x3332
   1079c:	3534                	.2byte	0x3534
   1079e:	3736                	.2byte	0x3736
   107a0:	3938                	.2byte	0x3938
   107a2:	4241                	.2byte	0x4241
   107a4:	46454443          	.4byte	0x46454443
	...

000107b0 <stop_time_val>:
	...

000107b8 <start_time_val>:
	...

000107c0 <seed5_volatile>:
   107c0:	0000                	.2byte	0x0
	...

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
