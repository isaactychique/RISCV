
./bin/riscv_basic_test.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
       0:	004001b7          	lui	gp,0x400
       4:	00020137          	lui	sp,0x20
       8:	058000ef          	jal	60 <main>
       c:	00100073          	ebreak

00000010 <time>:
      10:	fe010113          	add	sp,sp,-32 # 1ffe0 <__modsi3+0x1af78>
      14:	00812e23          	sw	s0,28(sp)
      18:	02010413          	add	s0,sp,32
      1c:	c00027f3          	rdcycle	a5
      20:	fef42623          	sw	a5,-20(s0)
      24:	fec42783          	lw	a5,-20(s0)
      28:	00078513          	mv	a0,a5
      2c:	01c12403          	lw	s0,28(sp)
      30:	02010113          	add	sp,sp,32
      34:	00008067          	ret

00000038 <insn>:
      38:	fe010113          	add	sp,sp,-32
      3c:	00812e23          	sw	s0,28(sp)
      40:	02010413          	add	s0,sp,32
      44:	c02027f3          	rdinstret	a5
      48:	fef42623          	sw	a5,-20(s0)
      4c:	fec42783          	lw	a5,-20(s0)
      50:	00078513          	mv	a0,a5
      54:	01c12403          	lw	s0,28(sp)
      58:	02010113          	add	sp,sp,32
      5c:	00008067          	ret

00000060 <main>:
      60:	fd010113          	add	sp,sp,-48
      64:	02112623          	sw	ra,44(sp)
      68:	02812423          	sw	s0,40(sp)
      6c:	03010413          	add	s0,sp,48
      70:	000107b7          	lui	a5,0x10
      74:	00078513          	mv	a0,a5
      78:	451040ef          	jal	4cc8 <print_string>
      7c:	fe042623          	sw	zero,-20(s0)
      80:	fe042423          	sw	zero,-24(s0)
      84:	fec42783          	lw	a5,-20(s0)
      88:	fe842703          	lw	a4,-24(s0)
      8c:	00e787b3          	add	a5,a5,a4
      90:	fef42223          	sw	a5,-28(s0)
      94:	fe442783          	lw	a5,-28(s0)
      98:	04078063          	beqz	a5,d8 <main+0x78>
      9c:	00100073          	ebreak
      a0:	000107b7          	lui	a5,0x10
      a4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
      a8:	619040ef          	jal	4ec0 <printf>
      ac:	00000513          	li	a0,0
      b0:	481040ef          	jal	4d30 <print_dec>
      b4:	000107b7          	lui	a5,0x10
      b8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
      bc:	605040ef          	jal	4ec0 <printf>
      c0:	fe442783          	lw	a5,-28(s0)
      c4:	00078513          	mv	a0,a5
      c8:	589040ef          	jal	4e50 <print_hex>
      cc:	00a00513          	li	a0,10
      d0:	3e5040ef          	jal	4cb4 <putchar>
      d4:	00100073          	ebreak
      d8:	00100793          	li	a5,1
      dc:	fef42623          	sw	a5,-20(s0)
      e0:	00100793          	li	a5,1
      e4:	fef42423          	sw	a5,-24(s0)
      e8:	fec42783          	lw	a5,-20(s0)
      ec:	fe842703          	lw	a4,-24(s0)
      f0:	00e787b3          	add	a5,a5,a4
      f4:	fef42223          	sw	a5,-28(s0)
      f8:	fe442703          	lw	a4,-28(s0)
      fc:	00200793          	li	a5,2
     100:	04f70063          	beq	a4,a5,140 <main+0xe0>
     104:	00100073          	ebreak
     108:	000107b7          	lui	a5,0x10
     10c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     110:	5b1040ef          	jal	4ec0 <printf>
     114:	00100513          	li	a0,1
     118:	419040ef          	jal	4d30 <print_dec>
     11c:	000107b7          	lui	a5,0x10
     120:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     124:	59d040ef          	jal	4ec0 <printf>
     128:	fe442783          	lw	a5,-28(s0)
     12c:	00078513          	mv	a0,a5
     130:	521040ef          	jal	4e50 <print_hex>
     134:	00a00513          	li	a0,10
     138:	37d040ef          	jal	4cb4 <putchar>
     13c:	00100073          	ebreak
     140:	00300793          	li	a5,3
     144:	fef42623          	sw	a5,-20(s0)
     148:	00700793          	li	a5,7
     14c:	fef42423          	sw	a5,-24(s0)
     150:	fec42783          	lw	a5,-20(s0)
     154:	fe842703          	lw	a4,-24(s0)
     158:	00e787b3          	add	a5,a5,a4
     15c:	fef42223          	sw	a5,-28(s0)
     160:	fe442703          	lw	a4,-28(s0)
     164:	00a00793          	li	a5,10
     168:	04f70063          	beq	a4,a5,1a8 <main+0x148>
     16c:	00100073          	ebreak
     170:	000107b7          	lui	a5,0x10
     174:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     178:	549040ef          	jal	4ec0 <printf>
     17c:	00200513          	li	a0,2
     180:	3b1040ef          	jal	4d30 <print_dec>
     184:	000107b7          	lui	a5,0x10
     188:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     18c:	535040ef          	jal	4ec0 <printf>
     190:	fe442783          	lw	a5,-28(s0)
     194:	00078513          	mv	a0,a5
     198:	4b9040ef          	jal	4e50 <print_hex>
     19c:	00a00513          	li	a0,10
     1a0:	315040ef          	jal	4cb4 <putchar>
     1a4:	00100073          	ebreak
     1a8:	fe042623          	sw	zero,-20(s0)
     1ac:	fec42783          	lw	a5,-20(s0)
     1b0:	00078793          	mv	a5,a5
     1b4:	fef42223          	sw	a5,-28(s0)
     1b8:	fe442783          	lw	a5,-28(s0)
     1bc:	04078063          	beqz	a5,1fc <main+0x19c>
     1c0:	00100073          	ebreak
     1c4:	000107b7          	lui	a5,0x10
     1c8:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     1cc:	4f5040ef          	jal	4ec0 <printf>
     1d0:	00300513          	li	a0,3
     1d4:	35d040ef          	jal	4d30 <print_dec>
     1d8:	000107b7          	lui	a5,0x10
     1dc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     1e0:	4e1040ef          	jal	4ec0 <printf>
     1e4:	fe442783          	lw	a5,-28(s0)
     1e8:	00078513          	mv	a0,a5
     1ec:	465040ef          	jal	4e50 <print_hex>
     1f0:	00a00513          	li	a0,10
     1f4:	2c1040ef          	jal	4cb4 <putchar>
     1f8:	00100073          	ebreak
     1fc:	00100793          	li	a5,1
     200:	fef42623          	sw	a5,-20(s0)
     204:	fec42783          	lw	a5,-20(s0)
     208:	00178793          	add	a5,a5,1
     20c:	fef42223          	sw	a5,-28(s0)
     210:	fe442703          	lw	a4,-28(s0)
     214:	00200793          	li	a5,2
     218:	04f70063          	beq	a4,a5,258 <main+0x1f8>
     21c:	00100073          	ebreak
     220:	000107b7          	lui	a5,0x10
     224:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     228:	499040ef          	jal	4ec0 <printf>
     22c:	00400513          	li	a0,4
     230:	301040ef          	jal	4d30 <print_dec>
     234:	000107b7          	lui	a5,0x10
     238:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     23c:	485040ef          	jal	4ec0 <printf>
     240:	fe442783          	lw	a5,-28(s0)
     244:	00078513          	mv	a0,a5
     248:	409040ef          	jal	4e50 <print_hex>
     24c:	00a00513          	li	a0,10
     250:	265040ef          	jal	4cb4 <putchar>
     254:	00100073          	ebreak
     258:	00300793          	li	a5,3
     25c:	fef42623          	sw	a5,-20(s0)
     260:	fec42783          	lw	a5,-20(s0)
     264:	00778793          	add	a5,a5,7
     268:	fef42223          	sw	a5,-28(s0)
     26c:	fe442703          	lw	a4,-28(s0)
     270:	00a00793          	li	a5,10
     274:	04f70063          	beq	a4,a5,2b4 <main+0x254>
     278:	00100073          	ebreak
     27c:	000107b7          	lui	a5,0x10
     280:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     284:	43d040ef          	jal	4ec0 <printf>
     288:	00500513          	li	a0,5
     28c:	2a5040ef          	jal	4d30 <print_dec>
     290:	000107b7          	lui	a5,0x10
     294:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     298:	429040ef          	jal	4ec0 <printf>
     29c:	fe442783          	lw	a5,-28(s0)
     2a0:	00078513          	mv	a0,a5
     2a4:	3ad040ef          	jal	4e50 <print_hex>
     2a8:	00a00513          	li	a0,10
     2ac:	209040ef          	jal	4cb4 <putchar>
     2b0:	00100073          	ebreak
     2b4:	ff0107b7          	lui	a5,0xff010
     2b8:	f0078793          	add	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     2bc:	fef42623          	sw	a5,-20(s0)
     2c0:	0f0f17b7          	lui	a5,0xf0f1
     2c4:	f0f78793          	add	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
     2c8:	fef42423          	sw	a5,-24(s0)
     2cc:	fec42783          	lw	a5,-20(s0)
     2d0:	fe842703          	lw	a4,-24(s0)
     2d4:	00e7f7b3          	and	a5,a5,a4
     2d8:	fef42223          	sw	a5,-28(s0)
     2dc:	fe442703          	lw	a4,-28(s0)
     2e0:	0f0017b7          	lui	a5,0xf001
     2e4:	f0078793          	add	a5,a5,-256 # f000f00 <IO_BASE+0xec00f00>
     2e8:	04f70063          	beq	a4,a5,328 <main+0x2c8>
     2ec:	00100073          	ebreak
     2f0:	000107b7          	lui	a5,0x10
     2f4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     2f8:	3c9040ef          	jal	4ec0 <printf>
     2fc:	00600513          	li	a0,6
     300:	231040ef          	jal	4d30 <print_dec>
     304:	000107b7          	lui	a5,0x10
     308:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     30c:	3b5040ef          	jal	4ec0 <printf>
     310:	fe442783          	lw	a5,-28(s0)
     314:	00078513          	mv	a0,a5
     318:	339040ef          	jal	4e50 <print_hex>
     31c:	00a00513          	li	a0,10
     320:	195040ef          	jal	4cb4 <putchar>
     324:	00100073          	ebreak
     328:	0ff017b7          	lui	a5,0xff01
     32c:	ff078793          	add	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     330:	fef42623          	sw	a5,-20(s0)
     334:	f0f0f7b7          	lui	a5,0xf0f0f
     338:	0f078793          	add	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
     33c:	fef42423          	sw	a5,-24(s0)
     340:	fec42783          	lw	a5,-20(s0)
     344:	fe842703          	lw	a4,-24(s0)
     348:	00e7f7b3          	and	a5,a5,a4
     34c:	fef42223          	sw	a5,-28(s0)
     350:	fe442703          	lw	a4,-28(s0)
     354:	00f007b7          	lui	a5,0xf00
     358:	0f078793          	add	a5,a5,240 # f000f0 <IO_BASE+0xb000f0>
     35c:	04f70063          	beq	a4,a5,39c <main+0x33c>
     360:	00100073          	ebreak
     364:	000107b7          	lui	a5,0x10
     368:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     36c:	355040ef          	jal	4ec0 <printf>
     370:	00700513          	li	a0,7
     374:	1bd040ef          	jal	4d30 <print_dec>
     378:	000107b7          	lui	a5,0x10
     37c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     380:	341040ef          	jal	4ec0 <printf>
     384:	fe442783          	lw	a5,-28(s0)
     388:	00078513          	mv	a0,a5
     38c:	2c5040ef          	jal	4e50 <print_hex>
     390:	00a00513          	li	a0,10
     394:	121040ef          	jal	4cb4 <putchar>
     398:	00100073          	ebreak
     39c:	00ff07b7          	lui	a5,0xff0
     3a0:	0ff78793          	add	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
     3a4:	fef42623          	sw	a5,-20(s0)
     3a8:	0f0f17b7          	lui	a5,0xf0f1
     3ac:	f0f78793          	add	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
     3b0:	fef42423          	sw	a5,-24(s0)
     3b4:	fec42783          	lw	a5,-20(s0)
     3b8:	fe842703          	lw	a4,-24(s0)
     3bc:	00e7f7b3          	and	a5,a5,a4
     3c0:	fef42223          	sw	a5,-28(s0)
     3c4:	fe442703          	lw	a4,-28(s0)
     3c8:	000f07b7          	lui	a5,0xf0
     3cc:	00f78793          	add	a5,a5,15 # f000f <__modsi3+0xeafa7>
     3d0:	04f70063          	beq	a4,a5,410 <main+0x3b0>
     3d4:	00100073          	ebreak
     3d8:	000107b7          	lui	a5,0x10
     3dc:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     3e0:	2e1040ef          	jal	4ec0 <printf>
     3e4:	00800513          	li	a0,8
     3e8:	149040ef          	jal	4d30 <print_dec>
     3ec:	000107b7          	lui	a5,0x10
     3f0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     3f4:	2cd040ef          	jal	4ec0 <printf>
     3f8:	fe442783          	lw	a5,-28(s0)
     3fc:	00078513          	mv	a0,a5
     400:	251040ef          	jal	4e50 <print_hex>
     404:	00a00513          	li	a0,10
     408:	0ad040ef          	jal	4cb4 <putchar>
     40c:	00100073          	ebreak
     410:	f00ff7b7          	lui	a5,0xf00ff
     414:	00f78793          	add	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
     418:	fef42623          	sw	a5,-20(s0)
     41c:	f0f0f7b7          	lui	a5,0xf0f0f
     420:	0f078793          	add	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
     424:	fef42423          	sw	a5,-24(s0)
     428:	fec42783          	lw	a5,-20(s0)
     42c:	fe842703          	lw	a4,-24(s0)
     430:	00e7f7b3          	and	a5,a5,a4
     434:	fef42223          	sw	a5,-28(s0)
     438:	fe442703          	lw	a4,-28(s0)
     43c:	f000f7b7          	lui	a5,0xf000f
     440:	04f70063          	beq	a4,a5,480 <main+0x420>
     444:	00100073          	ebreak
     448:	000107b7          	lui	a5,0x10
     44c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     450:	271040ef          	jal	4ec0 <printf>
     454:	00900513          	li	a0,9
     458:	0d9040ef          	jal	4d30 <print_dec>
     45c:	000107b7          	lui	a5,0x10
     460:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     464:	25d040ef          	jal	4ec0 <printf>
     468:	fe442783          	lw	a5,-28(s0)
     46c:	00078513          	mv	a0,a5
     470:	1e1040ef          	jal	4e50 <print_hex>
     474:	00a00513          	li	a0,10
     478:	03d040ef          	jal	4cb4 <putchar>
     47c:	00100073          	ebreak
     480:	ff0107b7          	lui	a5,0xff010
     484:	f0078793          	add	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     488:	fef42623          	sw	a5,-20(s0)
     48c:	fec42783          	lw	a5,-20(s0)
     490:	f0f7f793          	and	a5,a5,-241
     494:	fef42223          	sw	a5,-28(s0)
     498:	fe442703          	lw	a4,-28(s0)
     49c:	ff0107b7          	lui	a5,0xff010
     4a0:	f0078793          	add	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     4a4:	04f70063          	beq	a4,a5,4e4 <main+0x484>
     4a8:	00100073          	ebreak
     4ac:	000107b7          	lui	a5,0x10
     4b0:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     4b4:	20d040ef          	jal	4ec0 <printf>
     4b8:	00a00513          	li	a0,10
     4bc:	075040ef          	jal	4d30 <print_dec>
     4c0:	000107b7          	lui	a5,0x10
     4c4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     4c8:	1f9040ef          	jal	4ec0 <printf>
     4cc:	fe442783          	lw	a5,-28(s0)
     4d0:	00078513          	mv	a0,a5
     4d4:	17d040ef          	jal	4e50 <print_hex>
     4d8:	00a00513          	li	a0,10
     4dc:	7d8040ef          	jal	4cb4 <putchar>
     4e0:	00100073          	ebreak
     4e4:	0ff017b7          	lui	a5,0xff01
     4e8:	ff078793          	add	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     4ec:	fef42623          	sw	a5,-20(s0)
     4f0:	fec42783          	lw	a5,-20(s0)
     4f4:	0f07f793          	and	a5,a5,240
     4f8:	fef42223          	sw	a5,-28(s0)
     4fc:	fe442703          	lw	a4,-28(s0)
     500:	0f000793          	li	a5,240
     504:	04f70063          	beq	a4,a5,544 <main+0x4e4>
     508:	00100073          	ebreak
     50c:	000107b7          	lui	a5,0x10
     510:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     514:	1ad040ef          	jal	4ec0 <printf>
     518:	00b00513          	li	a0,11
     51c:	015040ef          	jal	4d30 <print_dec>
     520:	000107b7          	lui	a5,0x10
     524:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     528:	199040ef          	jal	4ec0 <printf>
     52c:	fe442783          	lw	a5,-28(s0)
     530:	00078513          	mv	a0,a5
     534:	11d040ef          	jal	4e50 <print_hex>
     538:	00a00513          	li	a0,10
     53c:	778040ef          	jal	4cb4 <putchar>
     540:	00100073          	ebreak
     544:	00ff07b7          	lui	a5,0xff0
     548:	0ff78793          	add	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
     54c:	fef42623          	sw	a5,-20(s0)
     550:	fec42783          	lw	a5,-20(s0)
     554:	70f7f793          	and	a5,a5,1807
     558:	fef42223          	sw	a5,-28(s0)
     55c:	fe442703          	lw	a4,-28(s0)
     560:	00f00793          	li	a5,15
     564:	04f70063          	beq	a4,a5,5a4 <main+0x544>
     568:	00100073          	ebreak
     56c:	000107b7          	lui	a5,0x10
     570:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     574:	14d040ef          	jal	4ec0 <printf>
     578:	00c00513          	li	a0,12
     57c:	7b4040ef          	jal	4d30 <print_dec>
     580:	000107b7          	lui	a5,0x10
     584:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     588:	139040ef          	jal	4ec0 <printf>
     58c:	fe442783          	lw	a5,-28(s0)
     590:	00078513          	mv	a0,a5
     594:	0bd040ef          	jal	4e50 <print_hex>
     598:	00a00513          	li	a0,10
     59c:	718040ef          	jal	4cb4 <putchar>
     5a0:	00100073          	ebreak
     5a4:	f00ff7b7          	lui	a5,0xf00ff
     5a8:	00f78793          	add	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
     5ac:	fef42623          	sw	a5,-20(s0)
     5b0:	fec42783          	lw	a5,-20(s0)
     5b4:	0f07f793          	and	a5,a5,240
     5b8:	fef42223          	sw	a5,-28(s0)
     5bc:	fe442783          	lw	a5,-28(s0)
     5c0:	04078063          	beqz	a5,600 <main+0x5a0>
     5c4:	00100073          	ebreak
     5c8:	000107b7          	lui	a5,0x10
     5cc:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     5d0:	0f1040ef          	jal	4ec0 <printf>
     5d4:	00d00513          	li	a0,13
     5d8:	758040ef          	jal	4d30 <print_dec>
     5dc:	000107b7          	lui	a5,0x10
     5e0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     5e4:	0dd040ef          	jal	4ec0 <printf>
     5e8:	fe442783          	lw	a5,-28(s0)
     5ec:	00078513          	mv	a0,a5
     5f0:	061040ef          	jal	4e50 <print_hex>
     5f4:	00a00513          	li	a0,10
     5f8:	6bc040ef          	jal	4cb4 <putchar>
     5fc:	00100073          	ebreak
     600:	ff0107b7          	lui	a5,0xff010
     604:	f0078793          	add	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     608:	fef42623          	sw	a5,-20(s0)
     60c:	0f0f17b7          	lui	a5,0xf0f1
     610:	f0f78793          	add	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
     614:	fef42423          	sw	a5,-24(s0)
     618:	fec42783          	lw	a5,-20(s0)
     61c:	fe842703          	lw	a4,-24(s0)
     620:	00e7e7b3          	or	a5,a5,a4
     624:	fef42223          	sw	a5,-28(s0)
     628:	fe442703          	lw	a4,-28(s0)
     62c:	ff1007b7          	lui	a5,0xff100
     630:	f0f78793          	add	a5,a5,-241 # ff0fff0f <IO_BASE+0xfecfff0f>
     634:	04f70063          	beq	a4,a5,674 <main+0x614>
     638:	00100073          	ebreak
     63c:	000107b7          	lui	a5,0x10
     640:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     644:	07d040ef          	jal	4ec0 <printf>
     648:	00e00513          	li	a0,14
     64c:	6e4040ef          	jal	4d30 <print_dec>
     650:	000107b7          	lui	a5,0x10
     654:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     658:	069040ef          	jal	4ec0 <printf>
     65c:	fe442783          	lw	a5,-28(s0)
     660:	00078513          	mv	a0,a5
     664:	7ec040ef          	jal	4e50 <print_hex>
     668:	00a00513          	li	a0,10
     66c:	648040ef          	jal	4cb4 <putchar>
     670:	00100073          	ebreak
     674:	0ff017b7          	lui	a5,0xff01
     678:	ff078793          	add	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     67c:	fef42623          	sw	a5,-20(s0)
     680:	f0f0f7b7          	lui	a5,0xf0f0f
     684:	0f078793          	add	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
     688:	fef42423          	sw	a5,-24(s0)
     68c:	fec42783          	lw	a5,-20(s0)
     690:	fe842703          	lw	a4,-24(s0)
     694:	00e7e7b3          	or	a5,a5,a4
     698:	fef42223          	sw	a5,-28(s0)
     69c:	fe442703          	lw	a4,-28(s0)
     6a0:	fff107b7          	lui	a5,0xfff10
     6a4:	ff078793          	add	a5,a5,-16 # fff0fff0 <IO_BASE+0xffb0fff0>
     6a8:	04f70063          	beq	a4,a5,6e8 <main+0x688>
     6ac:	00100073          	ebreak
     6b0:	000107b7          	lui	a5,0x10
     6b4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     6b8:	009040ef          	jal	4ec0 <printf>
     6bc:	00f00513          	li	a0,15
     6c0:	670040ef          	jal	4d30 <print_dec>
     6c4:	000107b7          	lui	a5,0x10
     6c8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     6cc:	7f4040ef          	jal	4ec0 <printf>
     6d0:	fe442783          	lw	a5,-28(s0)
     6d4:	00078513          	mv	a0,a5
     6d8:	778040ef          	jal	4e50 <print_hex>
     6dc:	00a00513          	li	a0,10
     6e0:	5d4040ef          	jal	4cb4 <putchar>
     6e4:	00100073          	ebreak
     6e8:	00ff07b7          	lui	a5,0xff0
     6ec:	0ff78793          	add	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
     6f0:	fef42623          	sw	a5,-20(s0)
     6f4:	0f0f17b7          	lui	a5,0xf0f1
     6f8:	f0f78793          	add	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
     6fc:	fef42423          	sw	a5,-24(s0)
     700:	fec42783          	lw	a5,-20(s0)
     704:	fe842703          	lw	a4,-24(s0)
     708:	00e7e7b3          	or	a5,a5,a4
     70c:	fef42223          	sw	a5,-28(s0)
     710:	fe442703          	lw	a4,-28(s0)
     714:	0fff17b7          	lui	a5,0xfff1
     718:	fff78793          	add	a5,a5,-1 # fff0fff <IO_BASE+0xfbf0fff>
     71c:	04f70063          	beq	a4,a5,75c <main+0x6fc>
     720:	00100073          	ebreak
     724:	000107b7          	lui	a5,0x10
     728:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     72c:	794040ef          	jal	4ec0 <printf>
     730:	01000513          	li	a0,16
     734:	5fc040ef          	jal	4d30 <print_dec>
     738:	000107b7          	lui	a5,0x10
     73c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     740:	780040ef          	jal	4ec0 <printf>
     744:	fe442783          	lw	a5,-28(s0)
     748:	00078513          	mv	a0,a5
     74c:	704040ef          	jal	4e50 <print_hex>
     750:	00a00513          	li	a0,10
     754:	560040ef          	jal	4cb4 <putchar>
     758:	00100073          	ebreak
     75c:	f00ff7b7          	lui	a5,0xf00ff
     760:	00f78793          	add	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
     764:	fef42623          	sw	a5,-20(s0)
     768:	f0f0f7b7          	lui	a5,0xf0f0f
     76c:	0f078793          	add	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
     770:	fef42423          	sw	a5,-24(s0)
     774:	fec42783          	lw	a5,-20(s0)
     778:	fe842703          	lw	a4,-24(s0)
     77c:	00e7e7b3          	or	a5,a5,a4
     780:	fef42223          	sw	a5,-28(s0)
     784:	fe442703          	lw	a4,-28(s0)
     788:	f0fff7b7          	lui	a5,0xf0fff
     78c:	0ff78793          	add	a5,a5,255 # f0fff0ff <IO_BASE+0xf0bff0ff>
     790:	04f70063          	beq	a4,a5,7d0 <main+0x770>
     794:	00100073          	ebreak
     798:	000107b7          	lui	a5,0x10
     79c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     7a0:	720040ef          	jal	4ec0 <printf>
     7a4:	01100513          	li	a0,17
     7a8:	588040ef          	jal	4d30 <print_dec>
     7ac:	000107b7          	lui	a5,0x10
     7b0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     7b4:	70c040ef          	jal	4ec0 <printf>
     7b8:	fe442783          	lw	a5,-28(s0)
     7bc:	00078513          	mv	a0,a5
     7c0:	690040ef          	jal	4e50 <print_hex>
     7c4:	00a00513          	li	a0,10
     7c8:	4ec040ef          	jal	4cb4 <putchar>
     7cc:	00100073          	ebreak
     7d0:	ff0107b7          	lui	a5,0xff010
     7d4:	f0078793          	add	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     7d8:	fef42623          	sw	a5,-20(s0)
     7dc:	fec42783          	lw	a5,-20(s0)
     7e0:	f0f7e793          	or	a5,a5,-241
     7e4:	fef42223          	sw	a5,-28(s0)
     7e8:	fe442703          	lw	a4,-28(s0)
     7ec:	f0f00793          	li	a5,-241
     7f0:	04f70063          	beq	a4,a5,830 <main+0x7d0>
     7f4:	00100073          	ebreak
     7f8:	000107b7          	lui	a5,0x10
     7fc:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     800:	6c0040ef          	jal	4ec0 <printf>
     804:	01200513          	li	a0,18
     808:	528040ef          	jal	4d30 <print_dec>
     80c:	000107b7          	lui	a5,0x10
     810:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     814:	6ac040ef          	jal	4ec0 <printf>
     818:	fe442783          	lw	a5,-28(s0)
     81c:	00078513          	mv	a0,a5
     820:	630040ef          	jal	4e50 <print_hex>
     824:	00a00513          	li	a0,10
     828:	48c040ef          	jal	4cb4 <putchar>
     82c:	00100073          	ebreak
     830:	0ff017b7          	lui	a5,0xff01
     834:	ff078793          	add	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     838:	fef42623          	sw	a5,-20(s0)
     83c:	fec42783          	lw	a5,-20(s0)
     840:	0f07e793          	or	a5,a5,240
     844:	fef42223          	sw	a5,-28(s0)
     848:	fe442703          	lw	a4,-28(s0)
     84c:	0ff017b7          	lui	a5,0xff01
     850:	ff078793          	add	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     854:	04f70063          	beq	a4,a5,894 <main+0x834>
     858:	00100073          	ebreak
     85c:	000107b7          	lui	a5,0x10
     860:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     864:	65c040ef          	jal	4ec0 <printf>
     868:	01300513          	li	a0,19
     86c:	4c4040ef          	jal	4d30 <print_dec>
     870:	000107b7          	lui	a5,0x10
     874:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     878:	648040ef          	jal	4ec0 <printf>
     87c:	fe442783          	lw	a5,-28(s0)
     880:	00078513          	mv	a0,a5
     884:	5cc040ef          	jal	4e50 <print_hex>
     888:	00a00513          	li	a0,10
     88c:	428040ef          	jal	4cb4 <putchar>
     890:	00100073          	ebreak
     894:	00ff07b7          	lui	a5,0xff0
     898:	0ff78793          	add	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
     89c:	fef42623          	sw	a5,-20(s0)
     8a0:	fec42783          	lw	a5,-20(s0)
     8a4:	70f7e793          	or	a5,a5,1807
     8a8:	fef42223          	sw	a5,-28(s0)
     8ac:	fe442703          	lw	a4,-28(s0)
     8b0:	00ff07b7          	lui	a5,0xff0
     8b4:	7ff78793          	add	a5,a5,2047 # ff07ff <IO_BASE+0xbf07ff>
     8b8:	04f70063          	beq	a4,a5,8f8 <main+0x898>
     8bc:	00100073          	ebreak
     8c0:	000107b7          	lui	a5,0x10
     8c4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     8c8:	5f8040ef          	jal	4ec0 <printf>
     8cc:	01400513          	li	a0,20
     8d0:	460040ef          	jal	4d30 <print_dec>
     8d4:	000107b7          	lui	a5,0x10
     8d8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     8dc:	5e4040ef          	jal	4ec0 <printf>
     8e0:	fe442783          	lw	a5,-28(s0)
     8e4:	00078513          	mv	a0,a5
     8e8:	568040ef          	jal	4e50 <print_hex>
     8ec:	00a00513          	li	a0,10
     8f0:	3c4040ef          	jal	4cb4 <putchar>
     8f4:	00100073          	ebreak
     8f8:	f00ff7b7          	lui	a5,0xf00ff
     8fc:	00f78793          	add	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
     900:	fef42623          	sw	a5,-20(s0)
     904:	fec42783          	lw	a5,-20(s0)
     908:	0f07e793          	or	a5,a5,240
     90c:	fef42223          	sw	a5,-28(s0)
     910:	fe442703          	lw	a4,-28(s0)
     914:	f00ff7b7          	lui	a5,0xf00ff
     918:	0ff78793          	add	a5,a5,255 # f00ff0ff <IO_BASE+0xefcff0ff>
     91c:	04f70063          	beq	a4,a5,95c <main+0x8fc>
     920:	00100073          	ebreak
     924:	000107b7          	lui	a5,0x10
     928:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
     92c:	594040ef          	jal	4ec0 <printf>
     930:	01500513          	li	a0,21
     934:	3fc040ef          	jal	4d30 <print_dec>
     938:	000107b7          	lui	a5,0x10
     93c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     940:	580040ef          	jal	4ec0 <printf>
     944:	fe442783          	lw	a5,-28(s0)
     948:	00078513          	mv	a0,a5
     94c:	504040ef          	jal	4e50 <print_hex>
     950:	00a00513          	li	a0,10
     954:	360040ef          	jal	4cb4 <putchar>
     958:	00100073          	ebreak
     95c:	00100793          	li	a5,1
     960:	fef42623          	sw	a5,-20(s0)
     964:	fe042423          	sw	zero,-24(s0)
     968:	fec42783          	lw	a5,-20(s0)
     96c:	fe842703          	lw	a4,-24(s0)
     970:	00e797b3          	sll	a5,a5,a4
     974:	fef42223          	sw	a5,-28(s0)
     978:	fe442703          	lw	a4,-28(s0)
     97c:	00100793          	li	a5,1
     980:	04f70063          	beq	a4,a5,9c0 <main+0x960>
     984:	00100073          	ebreak
     988:	000107b7          	lui	a5,0x10
     98c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     990:	530040ef          	jal	4ec0 <printf>
     994:	01700513          	li	a0,23
     998:	398040ef          	jal	4d30 <print_dec>
     99c:	000107b7          	lui	a5,0x10
     9a0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     9a4:	51c040ef          	jal	4ec0 <printf>
     9a8:	fe442783          	lw	a5,-28(s0)
     9ac:	00078513          	mv	a0,a5
     9b0:	4a0040ef          	jal	4e50 <print_hex>
     9b4:	00a00513          	li	a0,10
     9b8:	2fc040ef          	jal	4cb4 <putchar>
     9bc:	00100073          	ebreak
     9c0:	00100793          	li	a5,1
     9c4:	fef42623          	sw	a5,-20(s0)
     9c8:	00100793          	li	a5,1
     9cc:	fef42423          	sw	a5,-24(s0)
     9d0:	fec42783          	lw	a5,-20(s0)
     9d4:	fe842703          	lw	a4,-24(s0)
     9d8:	00e797b3          	sll	a5,a5,a4
     9dc:	fef42223          	sw	a5,-28(s0)
     9e0:	fe442703          	lw	a4,-28(s0)
     9e4:	00200793          	li	a5,2
     9e8:	04f70063          	beq	a4,a5,a28 <main+0x9c8>
     9ec:	00100073          	ebreak
     9f0:	000107b7          	lui	a5,0x10
     9f4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     9f8:	4c8040ef          	jal	4ec0 <printf>
     9fc:	01800513          	li	a0,24
     a00:	330040ef          	jal	4d30 <print_dec>
     a04:	000107b7          	lui	a5,0x10
     a08:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     a0c:	4b4040ef          	jal	4ec0 <printf>
     a10:	fe442783          	lw	a5,-28(s0)
     a14:	00078513          	mv	a0,a5
     a18:	438040ef          	jal	4e50 <print_hex>
     a1c:	00a00513          	li	a0,10
     a20:	294040ef          	jal	4cb4 <putchar>
     a24:	00100073          	ebreak
     a28:	00100793          	li	a5,1
     a2c:	fef42623          	sw	a5,-20(s0)
     a30:	00700793          	li	a5,7
     a34:	fef42423          	sw	a5,-24(s0)
     a38:	fec42783          	lw	a5,-20(s0)
     a3c:	fe842703          	lw	a4,-24(s0)
     a40:	00e797b3          	sll	a5,a5,a4
     a44:	fef42223          	sw	a5,-28(s0)
     a48:	fe442703          	lw	a4,-28(s0)
     a4c:	08000793          	li	a5,128
     a50:	04f70063          	beq	a4,a5,a90 <main+0xa30>
     a54:	00100073          	ebreak
     a58:	000107b7          	lui	a5,0x10
     a5c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     a60:	460040ef          	jal	4ec0 <printf>
     a64:	01900513          	li	a0,25
     a68:	2c8040ef          	jal	4d30 <print_dec>
     a6c:	000107b7          	lui	a5,0x10
     a70:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     a74:	44c040ef          	jal	4ec0 <printf>
     a78:	fe442783          	lw	a5,-28(s0)
     a7c:	00078513          	mv	a0,a5
     a80:	3d0040ef          	jal	4e50 <print_hex>
     a84:	00a00513          	li	a0,10
     a88:	22c040ef          	jal	4cb4 <putchar>
     a8c:	00100073          	ebreak
     a90:	00100793          	li	a5,1
     a94:	fef42623          	sw	a5,-20(s0)
     a98:	00e00793          	li	a5,14
     a9c:	fef42423          	sw	a5,-24(s0)
     aa0:	fec42783          	lw	a5,-20(s0)
     aa4:	fe842703          	lw	a4,-24(s0)
     aa8:	00e797b3          	sll	a5,a5,a4
     aac:	fef42223          	sw	a5,-28(s0)
     ab0:	fe442703          	lw	a4,-28(s0)
     ab4:	000047b7          	lui	a5,0x4
     ab8:	04f70063          	beq	a4,a5,af8 <main+0xa98>
     abc:	00100073          	ebreak
     ac0:	000107b7          	lui	a5,0x10
     ac4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     ac8:	3f8040ef          	jal	4ec0 <printf>
     acc:	01a00513          	li	a0,26
     ad0:	260040ef          	jal	4d30 <print_dec>
     ad4:	000107b7          	lui	a5,0x10
     ad8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     adc:	3e4040ef          	jal	4ec0 <printf>
     ae0:	fe442783          	lw	a5,-28(s0)
     ae4:	00078513          	mv	a0,a5
     ae8:	368040ef          	jal	4e50 <print_hex>
     aec:	00a00513          	li	a0,10
     af0:	1c4040ef          	jal	4cb4 <putchar>
     af4:	00100073          	ebreak
     af8:	00100793          	li	a5,1
     afc:	fef42623          	sw	a5,-20(s0)
     b00:	01f00793          	li	a5,31
     b04:	fef42423          	sw	a5,-24(s0)
     b08:	fec42783          	lw	a5,-20(s0)
     b0c:	fe842703          	lw	a4,-24(s0)
     b10:	00e797b3          	sll	a5,a5,a4
     b14:	fef42223          	sw	a5,-28(s0)
     b18:	fe442703          	lw	a4,-28(s0)
     b1c:	800007b7          	lui	a5,0x80000
     b20:	04f70063          	beq	a4,a5,b60 <main+0xb00>
     b24:	00100073          	ebreak
     b28:	000107b7          	lui	a5,0x10
     b2c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     b30:	390040ef          	jal	4ec0 <printf>
     b34:	01b00513          	li	a0,27
     b38:	1f8040ef          	jal	4d30 <print_dec>
     b3c:	000107b7          	lui	a5,0x10
     b40:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     b44:	37c040ef          	jal	4ec0 <printf>
     b48:	fe442783          	lw	a5,-28(s0)
     b4c:	00078513          	mv	a0,a5
     b50:	300040ef          	jal	4e50 <print_hex>
     b54:	00a00513          	li	a0,10
     b58:	15c040ef          	jal	4cb4 <putchar>
     b5c:	00100073          	ebreak
     b60:	fff00793          	li	a5,-1
     b64:	fef42623          	sw	a5,-20(s0)
     b68:	fe042423          	sw	zero,-24(s0)
     b6c:	fec42783          	lw	a5,-20(s0)
     b70:	fe842703          	lw	a4,-24(s0)
     b74:	00e797b3          	sll	a5,a5,a4
     b78:	fef42223          	sw	a5,-28(s0)
     b7c:	fe442703          	lw	a4,-28(s0)
     b80:	fff00793          	li	a5,-1
     b84:	04f70063          	beq	a4,a5,bc4 <main+0xb64>
     b88:	00100073          	ebreak
     b8c:	000107b7          	lui	a5,0x10
     b90:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     b94:	32c040ef          	jal	4ec0 <printf>
     b98:	01c00513          	li	a0,28
     b9c:	194040ef          	jal	4d30 <print_dec>
     ba0:	000107b7          	lui	a5,0x10
     ba4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     ba8:	318040ef          	jal	4ec0 <printf>
     bac:	fe442783          	lw	a5,-28(s0)
     bb0:	00078513          	mv	a0,a5
     bb4:	29c040ef          	jal	4e50 <print_hex>
     bb8:	00a00513          	li	a0,10
     bbc:	0f8040ef          	jal	4cb4 <putchar>
     bc0:	00100073          	ebreak
     bc4:	fff00793          	li	a5,-1
     bc8:	fef42623          	sw	a5,-20(s0)
     bcc:	00100793          	li	a5,1
     bd0:	fef42423          	sw	a5,-24(s0)
     bd4:	fec42783          	lw	a5,-20(s0)
     bd8:	fe842703          	lw	a4,-24(s0)
     bdc:	00e797b3          	sll	a5,a5,a4
     be0:	fef42223          	sw	a5,-28(s0)
     be4:	fe442703          	lw	a4,-28(s0)
     be8:	ffe00793          	li	a5,-2
     bec:	04f70063          	beq	a4,a5,c2c <main+0xbcc>
     bf0:	00100073          	ebreak
     bf4:	000107b7          	lui	a5,0x10
     bf8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     bfc:	2c4040ef          	jal	4ec0 <printf>
     c00:	01d00513          	li	a0,29
     c04:	12c040ef          	jal	4d30 <print_dec>
     c08:	000107b7          	lui	a5,0x10
     c0c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     c10:	2b0040ef          	jal	4ec0 <printf>
     c14:	fe442783          	lw	a5,-28(s0)
     c18:	00078513          	mv	a0,a5
     c1c:	234040ef          	jal	4e50 <print_hex>
     c20:	00a00513          	li	a0,10
     c24:	090040ef          	jal	4cb4 <putchar>
     c28:	00100073          	ebreak
     c2c:	fff00793          	li	a5,-1
     c30:	fef42623          	sw	a5,-20(s0)
     c34:	00700793          	li	a5,7
     c38:	fef42423          	sw	a5,-24(s0)
     c3c:	fec42783          	lw	a5,-20(s0)
     c40:	fe842703          	lw	a4,-24(s0)
     c44:	00e797b3          	sll	a5,a5,a4
     c48:	fef42223          	sw	a5,-28(s0)
     c4c:	fe442703          	lw	a4,-28(s0)
     c50:	f8000793          	li	a5,-128
     c54:	04f70063          	beq	a4,a5,c94 <main+0xc34>
     c58:	00100073          	ebreak
     c5c:	000107b7          	lui	a5,0x10
     c60:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     c64:	25c040ef          	jal	4ec0 <printf>
     c68:	01e00513          	li	a0,30
     c6c:	0c4040ef          	jal	4d30 <print_dec>
     c70:	000107b7          	lui	a5,0x10
     c74:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     c78:	248040ef          	jal	4ec0 <printf>
     c7c:	fe442783          	lw	a5,-28(s0)
     c80:	00078513          	mv	a0,a5
     c84:	1cc040ef          	jal	4e50 <print_hex>
     c88:	00a00513          	li	a0,10
     c8c:	028040ef          	jal	4cb4 <putchar>
     c90:	00100073          	ebreak
     c94:	fff00793          	li	a5,-1
     c98:	fef42623          	sw	a5,-20(s0)
     c9c:	00e00793          	li	a5,14
     ca0:	fef42423          	sw	a5,-24(s0)
     ca4:	fec42783          	lw	a5,-20(s0)
     ca8:	fe842703          	lw	a4,-24(s0)
     cac:	00e797b3          	sll	a5,a5,a4
     cb0:	fef42223          	sw	a5,-28(s0)
     cb4:	fe442703          	lw	a4,-28(s0)
     cb8:	ffffc7b7          	lui	a5,0xffffc
     cbc:	04f70063          	beq	a4,a5,cfc <main+0xc9c>
     cc0:	00100073          	ebreak
     cc4:	000107b7          	lui	a5,0x10
     cc8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     ccc:	1f4040ef          	jal	4ec0 <printf>
     cd0:	01f00513          	li	a0,31
     cd4:	05c040ef          	jal	4d30 <print_dec>
     cd8:	000107b7          	lui	a5,0x10
     cdc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     ce0:	1e0040ef          	jal	4ec0 <printf>
     ce4:	fe442783          	lw	a5,-28(s0)
     ce8:	00078513          	mv	a0,a5
     cec:	164040ef          	jal	4e50 <print_hex>
     cf0:	00a00513          	li	a0,10
     cf4:	7c1030ef          	jal	4cb4 <putchar>
     cf8:	00100073          	ebreak
     cfc:	fff00793          	li	a5,-1
     d00:	fef42623          	sw	a5,-20(s0)
     d04:	01f00793          	li	a5,31
     d08:	fef42423          	sw	a5,-24(s0)
     d0c:	fec42783          	lw	a5,-20(s0)
     d10:	fe842703          	lw	a4,-24(s0)
     d14:	00e797b3          	sll	a5,a5,a4
     d18:	fef42223          	sw	a5,-28(s0)
     d1c:	fe442703          	lw	a4,-28(s0)
     d20:	800007b7          	lui	a5,0x80000
     d24:	04f70063          	beq	a4,a5,d64 <main+0xd04>
     d28:	00100073          	ebreak
     d2c:	000107b7          	lui	a5,0x10
     d30:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     d34:	18c040ef          	jal	4ec0 <printf>
     d38:	02000513          	li	a0,32
     d3c:	7f5030ef          	jal	4d30 <print_dec>
     d40:	000107b7          	lui	a5,0x10
     d44:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     d48:	178040ef          	jal	4ec0 <printf>
     d4c:	fe442783          	lw	a5,-28(s0)
     d50:	00078513          	mv	a0,a5
     d54:	0fc040ef          	jal	4e50 <print_hex>
     d58:	00a00513          	li	a0,10
     d5c:	759030ef          	jal	4cb4 <putchar>
     d60:	00100073          	ebreak
     d64:	212127b7          	lui	a5,0x21212
     d68:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     d6c:	fef42623          	sw	a5,-20(s0)
     d70:	fe042423          	sw	zero,-24(s0)
     d74:	fec42783          	lw	a5,-20(s0)
     d78:	fe842703          	lw	a4,-24(s0)
     d7c:	00e797b3          	sll	a5,a5,a4
     d80:	fef42223          	sw	a5,-28(s0)
     d84:	fe442703          	lw	a4,-28(s0)
     d88:	212127b7          	lui	a5,0x21212
     d8c:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     d90:	04f70063          	beq	a4,a5,dd0 <main+0xd70>
     d94:	00100073          	ebreak
     d98:	000107b7          	lui	a5,0x10
     d9c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     da0:	120040ef          	jal	4ec0 <printf>
     da4:	02100513          	li	a0,33
     da8:	789030ef          	jal	4d30 <print_dec>
     dac:	000107b7          	lui	a5,0x10
     db0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     db4:	10c040ef          	jal	4ec0 <printf>
     db8:	fe442783          	lw	a5,-28(s0)
     dbc:	00078513          	mv	a0,a5
     dc0:	090040ef          	jal	4e50 <print_hex>
     dc4:	00a00513          	li	a0,10
     dc8:	6ed030ef          	jal	4cb4 <putchar>
     dcc:	00100073          	ebreak
     dd0:	212127b7          	lui	a5,0x21212
     dd4:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     dd8:	fef42623          	sw	a5,-20(s0)
     ddc:	00100793          	li	a5,1
     de0:	fef42423          	sw	a5,-24(s0)
     de4:	fec42783          	lw	a5,-20(s0)
     de8:	fe842703          	lw	a4,-24(s0)
     dec:	00e797b3          	sll	a5,a5,a4
     df0:	fef42223          	sw	a5,-28(s0)
     df4:	fe442703          	lw	a4,-28(s0)
     df8:	424247b7          	lui	a5,0x42424
     dfc:	24278793          	add	a5,a5,578 # 42424242 <IO_BASE+0x42024242>
     e00:	04f70063          	beq	a4,a5,e40 <main+0xde0>
     e04:	00100073          	ebreak
     e08:	000107b7          	lui	a5,0x10
     e0c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     e10:	0b0040ef          	jal	4ec0 <printf>
     e14:	02200513          	li	a0,34
     e18:	719030ef          	jal	4d30 <print_dec>
     e1c:	000107b7          	lui	a5,0x10
     e20:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     e24:	09c040ef          	jal	4ec0 <printf>
     e28:	fe442783          	lw	a5,-28(s0)
     e2c:	00078513          	mv	a0,a5
     e30:	020040ef          	jal	4e50 <print_hex>
     e34:	00a00513          	li	a0,10
     e38:	67d030ef          	jal	4cb4 <putchar>
     e3c:	00100073          	ebreak
     e40:	212127b7          	lui	a5,0x21212
     e44:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     e48:	fef42623          	sw	a5,-20(s0)
     e4c:	00700793          	li	a5,7
     e50:	fef42423          	sw	a5,-24(s0)
     e54:	fec42783          	lw	a5,-20(s0)
     e58:	fe842703          	lw	a4,-24(s0)
     e5c:	00e797b3          	sll	a5,a5,a4
     e60:	fef42223          	sw	a5,-28(s0)
     e64:	fe442703          	lw	a4,-28(s0)
     e68:	909097b7          	lui	a5,0x90909
     e6c:	08078793          	add	a5,a5,128 # 90909080 <IO_BASE+0x90509080>
     e70:	04f70063          	beq	a4,a5,eb0 <main+0xe50>
     e74:	00100073          	ebreak
     e78:	000107b7          	lui	a5,0x10
     e7c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     e80:	040040ef          	jal	4ec0 <printf>
     e84:	02300513          	li	a0,35
     e88:	6a9030ef          	jal	4d30 <print_dec>
     e8c:	000107b7          	lui	a5,0x10
     e90:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     e94:	02c040ef          	jal	4ec0 <printf>
     e98:	fe442783          	lw	a5,-28(s0)
     e9c:	00078513          	mv	a0,a5
     ea0:	7b1030ef          	jal	4e50 <print_hex>
     ea4:	00a00513          	li	a0,10
     ea8:	60d030ef          	jal	4cb4 <putchar>
     eac:	00100073          	ebreak
     eb0:	212127b7          	lui	a5,0x21212
     eb4:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     eb8:	fef42623          	sw	a5,-20(s0)
     ebc:	00e00793          	li	a5,14
     ec0:	fef42423          	sw	a5,-24(s0)
     ec4:	fec42783          	lw	a5,-20(s0)
     ec8:	fe842703          	lw	a4,-24(s0)
     ecc:	00e797b3          	sll	a5,a5,a4
     ed0:	fef42223          	sw	a5,-28(s0)
     ed4:	fe442703          	lw	a4,-28(s0)
     ed8:	484847b7          	lui	a5,0x48484
     edc:	04f70063          	beq	a4,a5,f1c <main+0xebc>
     ee0:	00100073          	ebreak
     ee4:	000107b7          	lui	a5,0x10
     ee8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     eec:	7d5030ef          	jal	4ec0 <printf>
     ef0:	02400513          	li	a0,36
     ef4:	63d030ef          	jal	4d30 <print_dec>
     ef8:	000107b7          	lui	a5,0x10
     efc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     f00:	7c1030ef          	jal	4ec0 <printf>
     f04:	fe442783          	lw	a5,-28(s0)
     f08:	00078513          	mv	a0,a5
     f0c:	745030ef          	jal	4e50 <print_hex>
     f10:	00a00513          	li	a0,10
     f14:	5a1030ef          	jal	4cb4 <putchar>
     f18:	00100073          	ebreak
     f1c:	212127b7          	lui	a5,0x21212
     f20:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     f24:	fef42623          	sw	a5,-20(s0)
     f28:	01f00793          	li	a5,31
     f2c:	fef42423          	sw	a5,-24(s0)
     f30:	fec42783          	lw	a5,-20(s0)
     f34:	fe842703          	lw	a4,-24(s0)
     f38:	00e797b3          	sll	a5,a5,a4
     f3c:	fef42223          	sw	a5,-28(s0)
     f40:	fe442703          	lw	a4,-28(s0)
     f44:	800007b7          	lui	a5,0x80000
     f48:	04f70063          	beq	a4,a5,f88 <main+0xf28>
     f4c:	00100073          	ebreak
     f50:	000107b7          	lui	a5,0x10
     f54:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     f58:	769030ef          	jal	4ec0 <printf>
     f5c:	02500513          	li	a0,37
     f60:	5d1030ef          	jal	4d30 <print_dec>
     f64:	000107b7          	lui	a5,0x10
     f68:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     f6c:	755030ef          	jal	4ec0 <printf>
     f70:	fe442783          	lw	a5,-28(s0)
     f74:	00078513          	mv	a0,a5
     f78:	6d9030ef          	jal	4e50 <print_hex>
     f7c:	00a00513          	li	a0,10
     f80:	535030ef          	jal	4cb4 <putchar>
     f84:	00100073          	ebreak
     f88:	212127b7          	lui	a5,0x21212
     f8c:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     f90:	fef42623          	sw	a5,-20(s0)
     f94:	fc000793          	li	a5,-64
     f98:	fef42423          	sw	a5,-24(s0)
     f9c:	fec42783          	lw	a5,-20(s0)
     fa0:	fe842703          	lw	a4,-24(s0)
     fa4:	00e797b3          	sll	a5,a5,a4
     fa8:	fef42223          	sw	a5,-28(s0)
     fac:	fe442703          	lw	a4,-28(s0)
     fb0:	212127b7          	lui	a5,0x21212
     fb4:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     fb8:	04f70063          	beq	a4,a5,ff8 <main+0xf98>
     fbc:	00100073          	ebreak
     fc0:	000107b7          	lui	a5,0x10
     fc4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
     fc8:	6f9030ef          	jal	4ec0 <printf>
     fcc:	02600513          	li	a0,38
     fd0:	561030ef          	jal	4d30 <print_dec>
     fd4:	000107b7          	lui	a5,0x10
     fd8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
     fdc:	6e5030ef          	jal	4ec0 <printf>
     fe0:	fe442783          	lw	a5,-28(s0)
     fe4:	00078513          	mv	a0,a5
     fe8:	669030ef          	jal	4e50 <print_hex>
     fec:	00a00513          	li	a0,10
     ff0:	4c5030ef          	jal	4cb4 <putchar>
     ff4:	00100073          	ebreak
     ff8:	212127b7          	lui	a5,0x21212
     ffc:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1000:	fef42623          	sw	a5,-20(s0)
    1004:	fc100793          	li	a5,-63
    1008:	fef42423          	sw	a5,-24(s0)
    100c:	fec42783          	lw	a5,-20(s0)
    1010:	fe842703          	lw	a4,-24(s0)
    1014:	00e797b3          	sll	a5,a5,a4
    1018:	fef42223          	sw	a5,-28(s0)
    101c:	fe442703          	lw	a4,-28(s0)
    1020:	424247b7          	lui	a5,0x42424
    1024:	24278793          	add	a5,a5,578 # 42424242 <IO_BASE+0x42024242>
    1028:	04f70063          	beq	a4,a5,1068 <main+0x1008>
    102c:	00100073          	ebreak
    1030:	000107b7          	lui	a5,0x10
    1034:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1038:	689030ef          	jal	4ec0 <printf>
    103c:	02700513          	li	a0,39
    1040:	4f1030ef          	jal	4d30 <print_dec>
    1044:	000107b7          	lui	a5,0x10
    1048:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    104c:	675030ef          	jal	4ec0 <printf>
    1050:	fe442783          	lw	a5,-28(s0)
    1054:	00078513          	mv	a0,a5
    1058:	5f9030ef          	jal	4e50 <print_hex>
    105c:	00a00513          	li	a0,10
    1060:	455030ef          	jal	4cb4 <putchar>
    1064:	00100073          	ebreak
    1068:	212127b7          	lui	a5,0x21212
    106c:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1070:	fef42623          	sw	a5,-20(s0)
    1074:	fc700793          	li	a5,-57
    1078:	fef42423          	sw	a5,-24(s0)
    107c:	fec42783          	lw	a5,-20(s0)
    1080:	fe842703          	lw	a4,-24(s0)
    1084:	00e797b3          	sll	a5,a5,a4
    1088:	fef42223          	sw	a5,-28(s0)
    108c:	fe442703          	lw	a4,-28(s0)
    1090:	909097b7          	lui	a5,0x90909
    1094:	08078793          	add	a5,a5,128 # 90909080 <IO_BASE+0x90509080>
    1098:	04f70063          	beq	a4,a5,10d8 <main+0x1078>
    109c:	00100073          	ebreak
    10a0:	000107b7          	lui	a5,0x10
    10a4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    10a8:	619030ef          	jal	4ec0 <printf>
    10ac:	02800513          	li	a0,40
    10b0:	481030ef          	jal	4d30 <print_dec>
    10b4:	000107b7          	lui	a5,0x10
    10b8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    10bc:	605030ef          	jal	4ec0 <printf>
    10c0:	fe442783          	lw	a5,-28(s0)
    10c4:	00078513          	mv	a0,a5
    10c8:	589030ef          	jal	4e50 <print_hex>
    10cc:	00a00513          	li	a0,10
    10d0:	3e5030ef          	jal	4cb4 <putchar>
    10d4:	00100073          	ebreak
    10d8:	212127b7          	lui	a5,0x21212
    10dc:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    10e0:	fef42623          	sw	a5,-20(s0)
    10e4:	fce00793          	li	a5,-50
    10e8:	fef42423          	sw	a5,-24(s0)
    10ec:	fec42783          	lw	a5,-20(s0)
    10f0:	fe842703          	lw	a4,-24(s0)
    10f4:	00e797b3          	sll	a5,a5,a4
    10f8:	fef42223          	sw	a5,-28(s0)
    10fc:	fe442703          	lw	a4,-28(s0)
    1100:	484847b7          	lui	a5,0x48484
    1104:	04f70063          	beq	a4,a5,1144 <main+0x10e4>
    1108:	00100073          	ebreak
    110c:	000107b7          	lui	a5,0x10
    1110:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1114:	5ad030ef          	jal	4ec0 <printf>
    1118:	02900513          	li	a0,41
    111c:	415030ef          	jal	4d30 <print_dec>
    1120:	000107b7          	lui	a5,0x10
    1124:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1128:	599030ef          	jal	4ec0 <printf>
    112c:	fe442783          	lw	a5,-28(s0)
    1130:	00078513          	mv	a0,a5
    1134:	51d030ef          	jal	4e50 <print_hex>
    1138:	00a00513          	li	a0,10
    113c:	379030ef          	jal	4cb4 <putchar>
    1140:	00100073          	ebreak
    1144:	00100793          	li	a5,1
    1148:	fef42623          	sw	a5,-20(s0)
    114c:	fec42783          	lw	a5,-20(s0)
    1150:	00079793          	sll	a5,a5,0x0
    1154:	fef42223          	sw	a5,-28(s0)
    1158:	fe442703          	lw	a4,-28(s0)
    115c:	00100793          	li	a5,1
    1160:	04f70063          	beq	a4,a5,11a0 <main+0x1140>
    1164:	00100073          	ebreak
    1168:	000107b7          	lui	a5,0x10
    116c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1170:	551030ef          	jal	4ec0 <printf>
    1174:	02a00513          	li	a0,42
    1178:	3b9030ef          	jal	4d30 <print_dec>
    117c:	000107b7          	lui	a5,0x10
    1180:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1184:	53d030ef          	jal	4ec0 <printf>
    1188:	fe442783          	lw	a5,-28(s0)
    118c:	00078513          	mv	a0,a5
    1190:	4c1030ef          	jal	4e50 <print_hex>
    1194:	00a00513          	li	a0,10
    1198:	31d030ef          	jal	4cb4 <putchar>
    119c:	00100073          	ebreak
    11a0:	00100793          	li	a5,1
    11a4:	fef42623          	sw	a5,-20(s0)
    11a8:	fec42783          	lw	a5,-20(s0)
    11ac:	00179793          	sll	a5,a5,0x1
    11b0:	fef42223          	sw	a5,-28(s0)
    11b4:	fe442703          	lw	a4,-28(s0)
    11b8:	00200793          	li	a5,2
    11bc:	04f70063          	beq	a4,a5,11fc <main+0x119c>
    11c0:	00100073          	ebreak
    11c4:	000107b7          	lui	a5,0x10
    11c8:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    11cc:	4f5030ef          	jal	4ec0 <printf>
    11d0:	02b00513          	li	a0,43
    11d4:	35d030ef          	jal	4d30 <print_dec>
    11d8:	000107b7          	lui	a5,0x10
    11dc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    11e0:	4e1030ef          	jal	4ec0 <printf>
    11e4:	fe442783          	lw	a5,-28(s0)
    11e8:	00078513          	mv	a0,a5
    11ec:	465030ef          	jal	4e50 <print_hex>
    11f0:	00a00513          	li	a0,10
    11f4:	2c1030ef          	jal	4cb4 <putchar>
    11f8:	00100073          	ebreak
    11fc:	00100793          	li	a5,1
    1200:	fef42623          	sw	a5,-20(s0)
    1204:	fec42783          	lw	a5,-20(s0)
    1208:	00779793          	sll	a5,a5,0x7
    120c:	fef42223          	sw	a5,-28(s0)
    1210:	fe442703          	lw	a4,-28(s0)
    1214:	08000793          	li	a5,128
    1218:	04f70063          	beq	a4,a5,1258 <main+0x11f8>
    121c:	00100073          	ebreak
    1220:	000107b7          	lui	a5,0x10
    1224:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1228:	499030ef          	jal	4ec0 <printf>
    122c:	02c00513          	li	a0,44
    1230:	301030ef          	jal	4d30 <print_dec>
    1234:	000107b7          	lui	a5,0x10
    1238:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    123c:	485030ef          	jal	4ec0 <printf>
    1240:	fe442783          	lw	a5,-28(s0)
    1244:	00078513          	mv	a0,a5
    1248:	409030ef          	jal	4e50 <print_hex>
    124c:	00a00513          	li	a0,10
    1250:	265030ef          	jal	4cb4 <putchar>
    1254:	00100073          	ebreak
    1258:	00100793          	li	a5,1
    125c:	fef42623          	sw	a5,-20(s0)
    1260:	fec42783          	lw	a5,-20(s0)
    1264:	00e79793          	sll	a5,a5,0xe
    1268:	fef42223          	sw	a5,-28(s0)
    126c:	fe442703          	lw	a4,-28(s0)
    1270:	000047b7          	lui	a5,0x4
    1274:	04f70063          	beq	a4,a5,12b4 <main+0x1254>
    1278:	00100073          	ebreak
    127c:	000107b7          	lui	a5,0x10
    1280:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1284:	43d030ef          	jal	4ec0 <printf>
    1288:	02d00513          	li	a0,45
    128c:	2a5030ef          	jal	4d30 <print_dec>
    1290:	000107b7          	lui	a5,0x10
    1294:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1298:	429030ef          	jal	4ec0 <printf>
    129c:	fe442783          	lw	a5,-28(s0)
    12a0:	00078513          	mv	a0,a5
    12a4:	3ad030ef          	jal	4e50 <print_hex>
    12a8:	00a00513          	li	a0,10
    12ac:	209030ef          	jal	4cb4 <putchar>
    12b0:	00100073          	ebreak
    12b4:	00100793          	li	a5,1
    12b8:	fef42623          	sw	a5,-20(s0)
    12bc:	fec42783          	lw	a5,-20(s0)
    12c0:	01f79793          	sll	a5,a5,0x1f
    12c4:	fef42223          	sw	a5,-28(s0)
    12c8:	fe442703          	lw	a4,-28(s0)
    12cc:	800007b7          	lui	a5,0x80000
    12d0:	04f70063          	beq	a4,a5,1310 <main+0x12b0>
    12d4:	00100073          	ebreak
    12d8:	000107b7          	lui	a5,0x10
    12dc:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    12e0:	3e1030ef          	jal	4ec0 <printf>
    12e4:	02e00513          	li	a0,46
    12e8:	249030ef          	jal	4d30 <print_dec>
    12ec:	000107b7          	lui	a5,0x10
    12f0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    12f4:	3cd030ef          	jal	4ec0 <printf>
    12f8:	fe442783          	lw	a5,-28(s0)
    12fc:	00078513          	mv	a0,a5
    1300:	351030ef          	jal	4e50 <print_hex>
    1304:	00a00513          	li	a0,10
    1308:	1ad030ef          	jal	4cb4 <putchar>
    130c:	00100073          	ebreak
    1310:	fff00793          	li	a5,-1
    1314:	fef42623          	sw	a5,-20(s0)
    1318:	fec42783          	lw	a5,-20(s0)
    131c:	00079793          	sll	a5,a5,0x0
    1320:	fef42223          	sw	a5,-28(s0)
    1324:	fe442703          	lw	a4,-28(s0)
    1328:	fff00793          	li	a5,-1
    132c:	04f70063          	beq	a4,a5,136c <main+0x130c>
    1330:	00100073          	ebreak
    1334:	000107b7          	lui	a5,0x10
    1338:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    133c:	385030ef          	jal	4ec0 <printf>
    1340:	02f00513          	li	a0,47
    1344:	1ed030ef          	jal	4d30 <print_dec>
    1348:	000107b7          	lui	a5,0x10
    134c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1350:	371030ef          	jal	4ec0 <printf>
    1354:	fe442783          	lw	a5,-28(s0)
    1358:	00078513          	mv	a0,a5
    135c:	2f5030ef          	jal	4e50 <print_hex>
    1360:	00a00513          	li	a0,10
    1364:	151030ef          	jal	4cb4 <putchar>
    1368:	00100073          	ebreak
    136c:	fff00793          	li	a5,-1
    1370:	fef42623          	sw	a5,-20(s0)
    1374:	fec42783          	lw	a5,-20(s0)
    1378:	00179793          	sll	a5,a5,0x1
    137c:	fef42223          	sw	a5,-28(s0)
    1380:	fe442703          	lw	a4,-28(s0)
    1384:	ffe00793          	li	a5,-2
    1388:	04f70063          	beq	a4,a5,13c8 <main+0x1368>
    138c:	00100073          	ebreak
    1390:	000107b7          	lui	a5,0x10
    1394:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1398:	329030ef          	jal	4ec0 <printf>
    139c:	03000513          	li	a0,48
    13a0:	191030ef          	jal	4d30 <print_dec>
    13a4:	000107b7          	lui	a5,0x10
    13a8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    13ac:	315030ef          	jal	4ec0 <printf>
    13b0:	fe442783          	lw	a5,-28(s0)
    13b4:	00078513          	mv	a0,a5
    13b8:	299030ef          	jal	4e50 <print_hex>
    13bc:	00a00513          	li	a0,10
    13c0:	0f5030ef          	jal	4cb4 <putchar>
    13c4:	00100073          	ebreak
    13c8:	fff00793          	li	a5,-1
    13cc:	fef42623          	sw	a5,-20(s0)
    13d0:	fec42783          	lw	a5,-20(s0)
    13d4:	00779793          	sll	a5,a5,0x7
    13d8:	fef42223          	sw	a5,-28(s0)
    13dc:	fe442703          	lw	a4,-28(s0)
    13e0:	f8000793          	li	a5,-128
    13e4:	04f70063          	beq	a4,a5,1424 <main+0x13c4>
    13e8:	00100073          	ebreak
    13ec:	000107b7          	lui	a5,0x10
    13f0:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    13f4:	2cd030ef          	jal	4ec0 <printf>
    13f8:	03100513          	li	a0,49
    13fc:	135030ef          	jal	4d30 <print_dec>
    1400:	000107b7          	lui	a5,0x10
    1404:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1408:	2b9030ef          	jal	4ec0 <printf>
    140c:	fe442783          	lw	a5,-28(s0)
    1410:	00078513          	mv	a0,a5
    1414:	23d030ef          	jal	4e50 <print_hex>
    1418:	00a00513          	li	a0,10
    141c:	099030ef          	jal	4cb4 <putchar>
    1420:	00100073          	ebreak
    1424:	fff00793          	li	a5,-1
    1428:	fef42623          	sw	a5,-20(s0)
    142c:	fec42783          	lw	a5,-20(s0)
    1430:	00e79793          	sll	a5,a5,0xe
    1434:	fef42223          	sw	a5,-28(s0)
    1438:	fe442703          	lw	a4,-28(s0)
    143c:	ffffc7b7          	lui	a5,0xffffc
    1440:	04f70063          	beq	a4,a5,1480 <main+0x1420>
    1444:	00100073          	ebreak
    1448:	000107b7          	lui	a5,0x10
    144c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1450:	271030ef          	jal	4ec0 <printf>
    1454:	03200513          	li	a0,50
    1458:	0d9030ef          	jal	4d30 <print_dec>
    145c:	000107b7          	lui	a5,0x10
    1460:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1464:	25d030ef          	jal	4ec0 <printf>
    1468:	fe442783          	lw	a5,-28(s0)
    146c:	00078513          	mv	a0,a5
    1470:	1e1030ef          	jal	4e50 <print_hex>
    1474:	00a00513          	li	a0,10
    1478:	03d030ef          	jal	4cb4 <putchar>
    147c:	00100073          	ebreak
    1480:	fff00793          	li	a5,-1
    1484:	fef42623          	sw	a5,-20(s0)
    1488:	fec42783          	lw	a5,-20(s0)
    148c:	01f79793          	sll	a5,a5,0x1f
    1490:	fef42223          	sw	a5,-28(s0)
    1494:	fe442703          	lw	a4,-28(s0)
    1498:	800007b7          	lui	a5,0x80000
    149c:	04f70063          	beq	a4,a5,14dc <main+0x147c>
    14a0:	00100073          	ebreak
    14a4:	000107b7          	lui	a5,0x10
    14a8:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    14ac:	215030ef          	jal	4ec0 <printf>
    14b0:	03300513          	li	a0,51
    14b4:	07d030ef          	jal	4d30 <print_dec>
    14b8:	000107b7          	lui	a5,0x10
    14bc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    14c0:	201030ef          	jal	4ec0 <printf>
    14c4:	fe442783          	lw	a5,-28(s0)
    14c8:	00078513          	mv	a0,a5
    14cc:	185030ef          	jal	4e50 <print_hex>
    14d0:	00a00513          	li	a0,10
    14d4:	7e0030ef          	jal	4cb4 <putchar>
    14d8:	00100073          	ebreak
    14dc:	212127b7          	lui	a5,0x21212
    14e0:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    14e4:	fef42623          	sw	a5,-20(s0)
    14e8:	fec42783          	lw	a5,-20(s0)
    14ec:	00079793          	sll	a5,a5,0x0
    14f0:	fef42223          	sw	a5,-28(s0)
    14f4:	fe442703          	lw	a4,-28(s0)
    14f8:	212127b7          	lui	a5,0x21212
    14fc:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1500:	04f70063          	beq	a4,a5,1540 <main+0x14e0>
    1504:	00100073          	ebreak
    1508:	000107b7          	lui	a5,0x10
    150c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1510:	1b1030ef          	jal	4ec0 <printf>
    1514:	03400513          	li	a0,52
    1518:	019030ef          	jal	4d30 <print_dec>
    151c:	000107b7          	lui	a5,0x10
    1520:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1524:	19d030ef          	jal	4ec0 <printf>
    1528:	fe442783          	lw	a5,-28(s0)
    152c:	00078513          	mv	a0,a5
    1530:	121030ef          	jal	4e50 <print_hex>
    1534:	00a00513          	li	a0,10
    1538:	77c030ef          	jal	4cb4 <putchar>
    153c:	00100073          	ebreak
    1540:	212127b7          	lui	a5,0x21212
    1544:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1548:	fef42623          	sw	a5,-20(s0)
    154c:	fec42783          	lw	a5,-20(s0)
    1550:	00179793          	sll	a5,a5,0x1
    1554:	fef42223          	sw	a5,-28(s0)
    1558:	fe442703          	lw	a4,-28(s0)
    155c:	424247b7          	lui	a5,0x42424
    1560:	24278793          	add	a5,a5,578 # 42424242 <IO_BASE+0x42024242>
    1564:	04f70063          	beq	a4,a5,15a4 <main+0x1544>
    1568:	00100073          	ebreak
    156c:	000107b7          	lui	a5,0x10
    1570:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1574:	14d030ef          	jal	4ec0 <printf>
    1578:	03500513          	li	a0,53
    157c:	7b4030ef          	jal	4d30 <print_dec>
    1580:	000107b7          	lui	a5,0x10
    1584:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1588:	139030ef          	jal	4ec0 <printf>
    158c:	fe442783          	lw	a5,-28(s0)
    1590:	00078513          	mv	a0,a5
    1594:	0bd030ef          	jal	4e50 <print_hex>
    1598:	00a00513          	li	a0,10
    159c:	718030ef          	jal	4cb4 <putchar>
    15a0:	00100073          	ebreak
    15a4:	212127b7          	lui	a5,0x21212
    15a8:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    15ac:	fef42623          	sw	a5,-20(s0)
    15b0:	fec42783          	lw	a5,-20(s0)
    15b4:	00779793          	sll	a5,a5,0x7
    15b8:	fef42223          	sw	a5,-28(s0)
    15bc:	fe442703          	lw	a4,-28(s0)
    15c0:	909097b7          	lui	a5,0x90909
    15c4:	08078793          	add	a5,a5,128 # 90909080 <IO_BASE+0x90509080>
    15c8:	04f70063          	beq	a4,a5,1608 <main+0x15a8>
    15cc:	00100073          	ebreak
    15d0:	000107b7          	lui	a5,0x10
    15d4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    15d8:	0e9030ef          	jal	4ec0 <printf>
    15dc:	03600513          	li	a0,54
    15e0:	750030ef          	jal	4d30 <print_dec>
    15e4:	000107b7          	lui	a5,0x10
    15e8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    15ec:	0d5030ef          	jal	4ec0 <printf>
    15f0:	fe442783          	lw	a5,-28(s0)
    15f4:	00078513          	mv	a0,a5
    15f8:	059030ef          	jal	4e50 <print_hex>
    15fc:	00a00513          	li	a0,10
    1600:	6b4030ef          	jal	4cb4 <putchar>
    1604:	00100073          	ebreak
    1608:	212127b7          	lui	a5,0x21212
    160c:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1610:	fef42623          	sw	a5,-20(s0)
    1614:	fec42783          	lw	a5,-20(s0)
    1618:	00e79793          	sll	a5,a5,0xe
    161c:	fef42223          	sw	a5,-28(s0)
    1620:	fe442703          	lw	a4,-28(s0)
    1624:	484847b7          	lui	a5,0x48484
    1628:	04f70063          	beq	a4,a5,1668 <main+0x1608>
    162c:	00100073          	ebreak
    1630:	000107b7          	lui	a5,0x10
    1634:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1638:	089030ef          	jal	4ec0 <printf>
    163c:	03700513          	li	a0,55
    1640:	6f0030ef          	jal	4d30 <print_dec>
    1644:	000107b7          	lui	a5,0x10
    1648:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    164c:	075030ef          	jal	4ec0 <printf>
    1650:	fe442783          	lw	a5,-28(s0)
    1654:	00078513          	mv	a0,a5
    1658:	7f8030ef          	jal	4e50 <print_hex>
    165c:	00a00513          	li	a0,10
    1660:	654030ef          	jal	4cb4 <putchar>
    1664:	00100073          	ebreak
    1668:	212127b7          	lui	a5,0x21212
    166c:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1670:	fef42623          	sw	a5,-20(s0)
    1674:	fec42783          	lw	a5,-20(s0)
    1678:	01f79793          	sll	a5,a5,0x1f
    167c:	fef42223          	sw	a5,-28(s0)
    1680:	fe442703          	lw	a4,-28(s0)
    1684:	800007b7          	lui	a5,0x80000
    1688:	04f70063          	beq	a4,a5,16c8 <main+0x1668>
    168c:	00100073          	ebreak
    1690:	000107b7          	lui	a5,0x10
    1694:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1698:	029030ef          	jal	4ec0 <printf>
    169c:	03800513          	li	a0,56
    16a0:	690030ef          	jal	4d30 <print_dec>
    16a4:	000107b7          	lui	a5,0x10
    16a8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    16ac:	015030ef          	jal	4ec0 <printf>
    16b0:	fe442783          	lw	a5,-28(s0)
    16b4:	00078513          	mv	a0,a5
    16b8:	798030ef          	jal	4e50 <print_hex>
    16bc:	00a00513          	li	a0,10
    16c0:	5f4030ef          	jal	4cb4 <putchar>
    16c4:	00100073          	ebreak
    16c8:	800007b7          	lui	a5,0x80000
    16cc:	fef42623          	sw	a5,-20(s0)
    16d0:	fe042423          	sw	zero,-24(s0)
    16d4:	fec42783          	lw	a5,-20(s0)
    16d8:	fe842703          	lw	a4,-24(s0)
    16dc:	40e7d7b3          	sra	a5,a5,a4
    16e0:	fef42223          	sw	a5,-28(s0)
    16e4:	fe442703          	lw	a4,-28(s0)
    16e8:	800007b7          	lui	a5,0x80000
    16ec:	04f70063          	beq	a4,a5,172c <main+0x16cc>
    16f0:	00100073          	ebreak
    16f4:	000107b7          	lui	a5,0x10
    16f8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    16fc:	7c4030ef          	jal	4ec0 <printf>
    1700:	03900513          	li	a0,57
    1704:	62c030ef          	jal	4d30 <print_dec>
    1708:	000107b7          	lui	a5,0x10
    170c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1710:	7b0030ef          	jal	4ec0 <printf>
    1714:	fe442783          	lw	a5,-28(s0)
    1718:	00078513          	mv	a0,a5
    171c:	734030ef          	jal	4e50 <print_hex>
    1720:	00a00513          	li	a0,10
    1724:	590030ef          	jal	4cb4 <putchar>
    1728:	00100073          	ebreak
    172c:	800007b7          	lui	a5,0x80000
    1730:	fef42623          	sw	a5,-20(s0)
    1734:	00100793          	li	a5,1
    1738:	fef42423          	sw	a5,-24(s0)
    173c:	fec42783          	lw	a5,-20(s0)
    1740:	fe842703          	lw	a4,-24(s0)
    1744:	40e7d7b3          	sra	a5,a5,a4
    1748:	fef42223          	sw	a5,-28(s0)
    174c:	fe442703          	lw	a4,-28(s0)
    1750:	c00007b7          	lui	a5,0xc0000
    1754:	04f70063          	beq	a4,a5,1794 <main+0x1734>
    1758:	00100073          	ebreak
    175c:	000107b7          	lui	a5,0x10
    1760:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1764:	75c030ef          	jal	4ec0 <printf>
    1768:	03a00513          	li	a0,58
    176c:	5c4030ef          	jal	4d30 <print_dec>
    1770:	000107b7          	lui	a5,0x10
    1774:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1778:	748030ef          	jal	4ec0 <printf>
    177c:	fe442783          	lw	a5,-28(s0)
    1780:	00078513          	mv	a0,a5
    1784:	6cc030ef          	jal	4e50 <print_hex>
    1788:	00a00513          	li	a0,10
    178c:	528030ef          	jal	4cb4 <putchar>
    1790:	00100073          	ebreak
    1794:	800007b7          	lui	a5,0x80000
    1798:	fef42623          	sw	a5,-20(s0)
    179c:	00700793          	li	a5,7
    17a0:	fef42423          	sw	a5,-24(s0)
    17a4:	fec42783          	lw	a5,-20(s0)
    17a8:	fe842703          	lw	a4,-24(s0)
    17ac:	40e7d7b3          	sra	a5,a5,a4
    17b0:	fef42223          	sw	a5,-28(s0)
    17b4:	fe442703          	lw	a4,-28(s0)
    17b8:	ff0007b7          	lui	a5,0xff000
    17bc:	04f70063          	beq	a4,a5,17fc <main+0x179c>
    17c0:	00100073          	ebreak
    17c4:	000107b7          	lui	a5,0x10
    17c8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    17cc:	6f4030ef          	jal	4ec0 <printf>
    17d0:	03b00513          	li	a0,59
    17d4:	55c030ef          	jal	4d30 <print_dec>
    17d8:	000107b7          	lui	a5,0x10
    17dc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    17e0:	6e0030ef          	jal	4ec0 <printf>
    17e4:	fe442783          	lw	a5,-28(s0)
    17e8:	00078513          	mv	a0,a5
    17ec:	664030ef          	jal	4e50 <print_hex>
    17f0:	00a00513          	li	a0,10
    17f4:	4c0030ef          	jal	4cb4 <putchar>
    17f8:	00100073          	ebreak
    17fc:	800007b7          	lui	a5,0x80000
    1800:	fef42623          	sw	a5,-20(s0)
    1804:	00e00793          	li	a5,14
    1808:	fef42423          	sw	a5,-24(s0)
    180c:	fec42783          	lw	a5,-20(s0)
    1810:	fe842703          	lw	a4,-24(s0)
    1814:	40e7d7b3          	sra	a5,a5,a4
    1818:	fef42223          	sw	a5,-28(s0)
    181c:	fe442703          	lw	a4,-28(s0)
    1820:	fffe07b7          	lui	a5,0xfffe0
    1824:	04f70063          	beq	a4,a5,1864 <main+0x1804>
    1828:	00100073          	ebreak
    182c:	000107b7          	lui	a5,0x10
    1830:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1834:	68c030ef          	jal	4ec0 <printf>
    1838:	03c00513          	li	a0,60
    183c:	4f4030ef          	jal	4d30 <print_dec>
    1840:	000107b7          	lui	a5,0x10
    1844:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1848:	678030ef          	jal	4ec0 <printf>
    184c:	fe442783          	lw	a5,-28(s0)
    1850:	00078513          	mv	a0,a5
    1854:	5fc030ef          	jal	4e50 <print_hex>
    1858:	00a00513          	li	a0,10
    185c:	458030ef          	jal	4cb4 <putchar>
    1860:	00100073          	ebreak
    1864:	800007b7          	lui	a5,0x80000
    1868:	00178793          	add	a5,a5,1 # 80000001 <IO_BASE+0x7fc00001>
    186c:	fef42623          	sw	a5,-20(s0)
    1870:	01f00793          	li	a5,31
    1874:	fef42423          	sw	a5,-24(s0)
    1878:	fec42783          	lw	a5,-20(s0)
    187c:	fe842703          	lw	a4,-24(s0)
    1880:	40e7d7b3          	sra	a5,a5,a4
    1884:	fef42223          	sw	a5,-28(s0)
    1888:	fe442703          	lw	a4,-28(s0)
    188c:	fff00793          	li	a5,-1
    1890:	04f70063          	beq	a4,a5,18d0 <main+0x1870>
    1894:	00100073          	ebreak
    1898:	000107b7          	lui	a5,0x10
    189c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    18a0:	620030ef          	jal	4ec0 <printf>
    18a4:	03d00513          	li	a0,61
    18a8:	488030ef          	jal	4d30 <print_dec>
    18ac:	000107b7          	lui	a5,0x10
    18b0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    18b4:	60c030ef          	jal	4ec0 <printf>
    18b8:	fe442783          	lw	a5,-28(s0)
    18bc:	00078513          	mv	a0,a5
    18c0:	590030ef          	jal	4e50 <print_hex>
    18c4:	00a00513          	li	a0,10
    18c8:	3ec030ef          	jal	4cb4 <putchar>
    18cc:	00100073          	ebreak
    18d0:	800007b7          	lui	a5,0x80000
    18d4:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    18d8:	fef42623          	sw	a5,-20(s0)
    18dc:	fe042423          	sw	zero,-24(s0)
    18e0:	fec42783          	lw	a5,-20(s0)
    18e4:	fe842703          	lw	a4,-24(s0)
    18e8:	40e7d7b3          	sra	a5,a5,a4
    18ec:	fef42223          	sw	a5,-28(s0)
    18f0:	fe442703          	lw	a4,-28(s0)
    18f4:	800007b7          	lui	a5,0x80000
    18f8:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    18fc:	04f70063          	beq	a4,a5,193c <main+0x18dc>
    1900:	00100073          	ebreak
    1904:	000107b7          	lui	a5,0x10
    1908:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    190c:	5b4030ef          	jal	4ec0 <printf>
    1910:	03e00513          	li	a0,62
    1914:	41c030ef          	jal	4d30 <print_dec>
    1918:	000107b7          	lui	a5,0x10
    191c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1920:	5a0030ef          	jal	4ec0 <printf>
    1924:	fe442783          	lw	a5,-28(s0)
    1928:	00078513          	mv	a0,a5
    192c:	524030ef          	jal	4e50 <print_hex>
    1930:	00a00513          	li	a0,10
    1934:	380030ef          	jal	4cb4 <putchar>
    1938:	00100073          	ebreak
    193c:	800007b7          	lui	a5,0x80000
    1940:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    1944:	fef42623          	sw	a5,-20(s0)
    1948:	00100793          	li	a5,1
    194c:	fef42423          	sw	a5,-24(s0)
    1950:	fec42783          	lw	a5,-20(s0)
    1954:	fe842703          	lw	a4,-24(s0)
    1958:	40e7d7b3          	sra	a5,a5,a4
    195c:	fef42223          	sw	a5,-28(s0)
    1960:	fe442703          	lw	a4,-28(s0)
    1964:	400007b7          	lui	a5,0x40000
    1968:	fff78793          	add	a5,a5,-1 # 3fffffff <IO_BASE+0x3fbfffff>
    196c:	04f70063          	beq	a4,a5,19ac <main+0x194c>
    1970:	00100073          	ebreak
    1974:	000107b7          	lui	a5,0x10
    1978:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    197c:	544030ef          	jal	4ec0 <printf>
    1980:	03f00513          	li	a0,63
    1984:	3ac030ef          	jal	4d30 <print_dec>
    1988:	000107b7          	lui	a5,0x10
    198c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1990:	530030ef          	jal	4ec0 <printf>
    1994:	fe442783          	lw	a5,-28(s0)
    1998:	00078513          	mv	a0,a5
    199c:	4b4030ef          	jal	4e50 <print_hex>
    19a0:	00a00513          	li	a0,10
    19a4:	310030ef          	jal	4cb4 <putchar>
    19a8:	00100073          	ebreak
    19ac:	800007b7          	lui	a5,0x80000
    19b0:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    19b4:	fef42623          	sw	a5,-20(s0)
    19b8:	00700793          	li	a5,7
    19bc:	fef42423          	sw	a5,-24(s0)
    19c0:	fec42783          	lw	a5,-20(s0)
    19c4:	fe842703          	lw	a4,-24(s0)
    19c8:	40e7d7b3          	sra	a5,a5,a4
    19cc:	fef42223          	sw	a5,-28(s0)
    19d0:	fe442703          	lw	a4,-28(s0)
    19d4:	010007b7          	lui	a5,0x1000
    19d8:	fff78793          	add	a5,a5,-1 # ffffff <IO_BASE+0xbfffff>
    19dc:	04f70063          	beq	a4,a5,1a1c <main+0x19bc>
    19e0:	00100073          	ebreak
    19e4:	000107b7          	lui	a5,0x10
    19e8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    19ec:	4d4030ef          	jal	4ec0 <printf>
    19f0:	04000513          	li	a0,64
    19f4:	33c030ef          	jal	4d30 <print_dec>
    19f8:	000107b7          	lui	a5,0x10
    19fc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1a00:	4c0030ef          	jal	4ec0 <printf>
    1a04:	fe442783          	lw	a5,-28(s0)
    1a08:	00078513          	mv	a0,a5
    1a0c:	444030ef          	jal	4e50 <print_hex>
    1a10:	00a00513          	li	a0,10
    1a14:	2a0030ef          	jal	4cb4 <putchar>
    1a18:	00100073          	ebreak
    1a1c:	800007b7          	lui	a5,0x80000
    1a20:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    1a24:	fef42623          	sw	a5,-20(s0)
    1a28:	00e00793          	li	a5,14
    1a2c:	fef42423          	sw	a5,-24(s0)
    1a30:	fec42783          	lw	a5,-20(s0)
    1a34:	fe842703          	lw	a4,-24(s0)
    1a38:	40e7d7b3          	sra	a5,a5,a4
    1a3c:	fef42223          	sw	a5,-28(s0)
    1a40:	fe442703          	lw	a4,-28(s0)
    1a44:	000207b7          	lui	a5,0x20
    1a48:	fff78793          	add	a5,a5,-1 # 1ffff <__modsi3+0x1af97>
    1a4c:	04f70063          	beq	a4,a5,1a8c <main+0x1a2c>
    1a50:	00100073          	ebreak
    1a54:	000107b7          	lui	a5,0x10
    1a58:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1a5c:	464030ef          	jal	4ec0 <printf>
    1a60:	04100513          	li	a0,65
    1a64:	2cc030ef          	jal	4d30 <print_dec>
    1a68:	000107b7          	lui	a5,0x10
    1a6c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1a70:	450030ef          	jal	4ec0 <printf>
    1a74:	fe442783          	lw	a5,-28(s0)
    1a78:	00078513          	mv	a0,a5
    1a7c:	3d4030ef          	jal	4e50 <print_hex>
    1a80:	00a00513          	li	a0,10
    1a84:	230030ef          	jal	4cb4 <putchar>
    1a88:	00100073          	ebreak
    1a8c:	800007b7          	lui	a5,0x80000
    1a90:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    1a94:	fef42623          	sw	a5,-20(s0)
    1a98:	01f00793          	li	a5,31
    1a9c:	fef42423          	sw	a5,-24(s0)
    1aa0:	fec42783          	lw	a5,-20(s0)
    1aa4:	fe842703          	lw	a4,-24(s0)
    1aa8:	40e7d7b3          	sra	a5,a5,a4
    1aac:	fef42223          	sw	a5,-28(s0)
    1ab0:	fe442783          	lw	a5,-28(s0)
    1ab4:	04078063          	beqz	a5,1af4 <main+0x1a94>
    1ab8:	00100073          	ebreak
    1abc:	000107b7          	lui	a5,0x10
    1ac0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1ac4:	3fc030ef          	jal	4ec0 <printf>
    1ac8:	04200513          	li	a0,66
    1acc:	264030ef          	jal	4d30 <print_dec>
    1ad0:	000107b7          	lui	a5,0x10
    1ad4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1ad8:	3e8030ef          	jal	4ec0 <printf>
    1adc:	fe442783          	lw	a5,-28(s0)
    1ae0:	00078513          	mv	a0,a5
    1ae4:	36c030ef          	jal	4e50 <print_hex>
    1ae8:	00a00513          	li	a0,10
    1aec:	1c8030ef          	jal	4cb4 <putchar>
    1af0:	00100073          	ebreak
    1af4:	818187b7          	lui	a5,0x81818
    1af8:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1afc:	fef42623          	sw	a5,-20(s0)
    1b00:	fe042423          	sw	zero,-24(s0)
    1b04:	fec42783          	lw	a5,-20(s0)
    1b08:	fe842703          	lw	a4,-24(s0)
    1b0c:	40e7d7b3          	sra	a5,a5,a4
    1b10:	fef42223          	sw	a5,-28(s0)
    1b14:	fe442703          	lw	a4,-28(s0)
    1b18:	818187b7          	lui	a5,0x81818
    1b1c:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1b20:	04f70063          	beq	a4,a5,1b60 <main+0x1b00>
    1b24:	00100073          	ebreak
    1b28:	000107b7          	lui	a5,0x10
    1b2c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1b30:	390030ef          	jal	4ec0 <printf>
    1b34:	04300513          	li	a0,67
    1b38:	1f8030ef          	jal	4d30 <print_dec>
    1b3c:	000107b7          	lui	a5,0x10
    1b40:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1b44:	37c030ef          	jal	4ec0 <printf>
    1b48:	fe442783          	lw	a5,-28(s0)
    1b4c:	00078513          	mv	a0,a5
    1b50:	300030ef          	jal	4e50 <print_hex>
    1b54:	00a00513          	li	a0,10
    1b58:	15c030ef          	jal	4cb4 <putchar>
    1b5c:	00100073          	ebreak
    1b60:	818187b7          	lui	a5,0x81818
    1b64:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1b68:	fef42623          	sw	a5,-20(s0)
    1b6c:	00100793          	li	a5,1
    1b70:	fef42423          	sw	a5,-24(s0)
    1b74:	fec42783          	lw	a5,-20(s0)
    1b78:	fe842703          	lw	a4,-24(s0)
    1b7c:	40e7d7b3          	sra	a5,a5,a4
    1b80:	fef42223          	sw	a5,-28(s0)
    1b84:	fe442703          	lw	a4,-28(s0)
    1b88:	c0c0c7b7          	lui	a5,0xc0c0c
    1b8c:	0c078793          	add	a5,a5,192 # c0c0c0c0 <IO_BASE+0xc080c0c0>
    1b90:	04f70063          	beq	a4,a5,1bd0 <main+0x1b70>
    1b94:	00100073          	ebreak
    1b98:	000107b7          	lui	a5,0x10
    1b9c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1ba0:	320030ef          	jal	4ec0 <printf>
    1ba4:	04400513          	li	a0,68
    1ba8:	188030ef          	jal	4d30 <print_dec>
    1bac:	000107b7          	lui	a5,0x10
    1bb0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1bb4:	30c030ef          	jal	4ec0 <printf>
    1bb8:	fe442783          	lw	a5,-28(s0)
    1bbc:	00078513          	mv	a0,a5
    1bc0:	290030ef          	jal	4e50 <print_hex>
    1bc4:	00a00513          	li	a0,10
    1bc8:	0ec030ef          	jal	4cb4 <putchar>
    1bcc:	00100073          	ebreak
    1bd0:	818187b7          	lui	a5,0x81818
    1bd4:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1bd8:	fef42623          	sw	a5,-20(s0)
    1bdc:	00700793          	li	a5,7
    1be0:	fef42423          	sw	a5,-24(s0)
    1be4:	fec42783          	lw	a5,-20(s0)
    1be8:	fe842703          	lw	a4,-24(s0)
    1bec:	40e7d7b3          	sra	a5,a5,a4
    1bf0:	fef42223          	sw	a5,-28(s0)
    1bf4:	fe442703          	lw	a4,-28(s0)
    1bf8:	ff0307b7          	lui	a5,0xff030
    1bfc:	30378793          	add	a5,a5,771 # ff030303 <IO_BASE+0xfec30303>
    1c00:	04f70063          	beq	a4,a5,1c40 <main+0x1be0>
    1c04:	00100073          	ebreak
    1c08:	000107b7          	lui	a5,0x10
    1c0c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1c10:	2b0030ef          	jal	4ec0 <printf>
    1c14:	04500513          	li	a0,69
    1c18:	118030ef          	jal	4d30 <print_dec>
    1c1c:	000107b7          	lui	a5,0x10
    1c20:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1c24:	29c030ef          	jal	4ec0 <printf>
    1c28:	fe442783          	lw	a5,-28(s0)
    1c2c:	00078513          	mv	a0,a5
    1c30:	220030ef          	jal	4e50 <print_hex>
    1c34:	00a00513          	li	a0,10
    1c38:	07c030ef          	jal	4cb4 <putchar>
    1c3c:	00100073          	ebreak
    1c40:	818187b7          	lui	a5,0x81818
    1c44:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1c48:	fef42623          	sw	a5,-20(s0)
    1c4c:	00e00793          	li	a5,14
    1c50:	fef42423          	sw	a5,-24(s0)
    1c54:	fec42783          	lw	a5,-20(s0)
    1c58:	fe842703          	lw	a4,-24(s0)
    1c5c:	40e7d7b3          	sra	a5,a5,a4
    1c60:	fef42223          	sw	a5,-28(s0)
    1c64:	fe442703          	lw	a4,-28(s0)
    1c68:	fffe07b7          	lui	a5,0xfffe0
    1c6c:	60678793          	add	a5,a5,1542 # fffe0606 <IO_BASE+0xffbe0606>
    1c70:	04f70063          	beq	a4,a5,1cb0 <main+0x1c50>
    1c74:	00100073          	ebreak
    1c78:	000107b7          	lui	a5,0x10
    1c7c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1c80:	240030ef          	jal	4ec0 <printf>
    1c84:	04600513          	li	a0,70
    1c88:	0a8030ef          	jal	4d30 <print_dec>
    1c8c:	000107b7          	lui	a5,0x10
    1c90:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1c94:	22c030ef          	jal	4ec0 <printf>
    1c98:	fe442783          	lw	a5,-28(s0)
    1c9c:	00078513          	mv	a0,a5
    1ca0:	1b0030ef          	jal	4e50 <print_hex>
    1ca4:	00a00513          	li	a0,10
    1ca8:	00c030ef          	jal	4cb4 <putchar>
    1cac:	00100073          	ebreak
    1cb0:	818187b7          	lui	a5,0x81818
    1cb4:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1cb8:	fef42623          	sw	a5,-20(s0)
    1cbc:	01f00793          	li	a5,31
    1cc0:	fef42423          	sw	a5,-24(s0)
    1cc4:	fec42783          	lw	a5,-20(s0)
    1cc8:	fe842703          	lw	a4,-24(s0)
    1ccc:	40e7d7b3          	sra	a5,a5,a4
    1cd0:	fef42223          	sw	a5,-28(s0)
    1cd4:	fe442703          	lw	a4,-28(s0)
    1cd8:	fff00793          	li	a5,-1
    1cdc:	04f70063          	beq	a4,a5,1d1c <main+0x1cbc>
    1ce0:	00100073          	ebreak
    1ce4:	000107b7          	lui	a5,0x10
    1ce8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1cec:	1d4030ef          	jal	4ec0 <printf>
    1cf0:	04700513          	li	a0,71
    1cf4:	03c030ef          	jal	4d30 <print_dec>
    1cf8:	000107b7          	lui	a5,0x10
    1cfc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1d00:	1c0030ef          	jal	4ec0 <printf>
    1d04:	fe442783          	lw	a5,-28(s0)
    1d08:	00078513          	mv	a0,a5
    1d0c:	144030ef          	jal	4e50 <print_hex>
    1d10:	00a00513          	li	a0,10
    1d14:	7a1020ef          	jal	4cb4 <putchar>
    1d18:	00100073          	ebreak
    1d1c:	818187b7          	lui	a5,0x81818
    1d20:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1d24:	fef42623          	sw	a5,-20(s0)
    1d28:	fc000793          	li	a5,-64
    1d2c:	fef42423          	sw	a5,-24(s0)
    1d30:	fec42783          	lw	a5,-20(s0)
    1d34:	fe842703          	lw	a4,-24(s0)
    1d38:	40e7d7b3          	sra	a5,a5,a4
    1d3c:	fef42223          	sw	a5,-28(s0)
    1d40:	fe442703          	lw	a4,-28(s0)
    1d44:	818187b7          	lui	a5,0x81818
    1d48:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1d4c:	04f70063          	beq	a4,a5,1d8c <main+0x1d2c>
    1d50:	00100073          	ebreak
    1d54:	000107b7          	lui	a5,0x10
    1d58:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1d5c:	164030ef          	jal	4ec0 <printf>
    1d60:	04800513          	li	a0,72
    1d64:	7cd020ef          	jal	4d30 <print_dec>
    1d68:	000107b7          	lui	a5,0x10
    1d6c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1d70:	150030ef          	jal	4ec0 <printf>
    1d74:	fe442783          	lw	a5,-28(s0)
    1d78:	00078513          	mv	a0,a5
    1d7c:	0d4030ef          	jal	4e50 <print_hex>
    1d80:	00a00513          	li	a0,10
    1d84:	731020ef          	jal	4cb4 <putchar>
    1d88:	00100073          	ebreak
    1d8c:	818187b7          	lui	a5,0x81818
    1d90:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1d94:	fef42623          	sw	a5,-20(s0)
    1d98:	fc100793          	li	a5,-63
    1d9c:	fef42423          	sw	a5,-24(s0)
    1da0:	fec42783          	lw	a5,-20(s0)
    1da4:	fe842703          	lw	a4,-24(s0)
    1da8:	40e7d7b3          	sra	a5,a5,a4
    1dac:	fef42223          	sw	a5,-28(s0)
    1db0:	fe442703          	lw	a4,-28(s0)
    1db4:	c0c0c7b7          	lui	a5,0xc0c0c
    1db8:	0c078793          	add	a5,a5,192 # c0c0c0c0 <IO_BASE+0xc080c0c0>
    1dbc:	04f70063          	beq	a4,a5,1dfc <main+0x1d9c>
    1dc0:	00100073          	ebreak
    1dc4:	000107b7          	lui	a5,0x10
    1dc8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1dcc:	0f4030ef          	jal	4ec0 <printf>
    1dd0:	04900513          	li	a0,73
    1dd4:	75d020ef          	jal	4d30 <print_dec>
    1dd8:	000107b7          	lui	a5,0x10
    1ddc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1de0:	0e0030ef          	jal	4ec0 <printf>
    1de4:	fe442783          	lw	a5,-28(s0)
    1de8:	00078513          	mv	a0,a5
    1dec:	064030ef          	jal	4e50 <print_hex>
    1df0:	00a00513          	li	a0,10
    1df4:	6c1020ef          	jal	4cb4 <putchar>
    1df8:	00100073          	ebreak
    1dfc:	818187b7          	lui	a5,0x81818
    1e00:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1e04:	fef42623          	sw	a5,-20(s0)
    1e08:	fc700793          	li	a5,-57
    1e0c:	fef42423          	sw	a5,-24(s0)
    1e10:	fec42783          	lw	a5,-20(s0)
    1e14:	fe842703          	lw	a4,-24(s0)
    1e18:	40e7d7b3          	sra	a5,a5,a4
    1e1c:	fef42223          	sw	a5,-28(s0)
    1e20:	fe442703          	lw	a4,-28(s0)
    1e24:	ff0307b7          	lui	a5,0xff030
    1e28:	30378793          	add	a5,a5,771 # ff030303 <IO_BASE+0xfec30303>
    1e2c:	04f70063          	beq	a4,a5,1e6c <main+0x1e0c>
    1e30:	00100073          	ebreak
    1e34:	000107b7          	lui	a5,0x10
    1e38:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1e3c:	084030ef          	jal	4ec0 <printf>
    1e40:	04a00513          	li	a0,74
    1e44:	6ed020ef          	jal	4d30 <print_dec>
    1e48:	000107b7          	lui	a5,0x10
    1e4c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1e50:	070030ef          	jal	4ec0 <printf>
    1e54:	fe442783          	lw	a5,-28(s0)
    1e58:	00078513          	mv	a0,a5
    1e5c:	7f5020ef          	jal	4e50 <print_hex>
    1e60:	00a00513          	li	a0,10
    1e64:	651020ef          	jal	4cb4 <putchar>
    1e68:	00100073          	ebreak
    1e6c:	818187b7          	lui	a5,0x81818
    1e70:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1e74:	fef42623          	sw	a5,-20(s0)
    1e78:	fce00793          	li	a5,-50
    1e7c:	fef42423          	sw	a5,-24(s0)
    1e80:	fec42783          	lw	a5,-20(s0)
    1e84:	fe842703          	lw	a4,-24(s0)
    1e88:	40e7d7b3          	sra	a5,a5,a4
    1e8c:	fef42223          	sw	a5,-28(s0)
    1e90:	fe442703          	lw	a4,-28(s0)
    1e94:	fffe07b7          	lui	a5,0xfffe0
    1e98:	60678793          	add	a5,a5,1542 # fffe0606 <IO_BASE+0xffbe0606>
    1e9c:	04f70063          	beq	a4,a5,1edc <main+0x1e7c>
    1ea0:	00100073          	ebreak
    1ea4:	000107b7          	lui	a5,0x10
    1ea8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1eac:	014030ef          	jal	4ec0 <printf>
    1eb0:	04b00513          	li	a0,75
    1eb4:	67d020ef          	jal	4d30 <print_dec>
    1eb8:	000107b7          	lui	a5,0x10
    1ebc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1ec0:	000030ef          	jal	4ec0 <printf>
    1ec4:	fe442783          	lw	a5,-28(s0)
    1ec8:	00078513          	mv	a0,a5
    1ecc:	785020ef          	jal	4e50 <print_hex>
    1ed0:	00a00513          	li	a0,10
    1ed4:	5e1020ef          	jal	4cb4 <putchar>
    1ed8:	00100073          	ebreak
    1edc:	818187b7          	lui	a5,0x81818
    1ee0:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1ee4:	fef42623          	sw	a5,-20(s0)
    1ee8:	fff00793          	li	a5,-1
    1eec:	fef42423          	sw	a5,-24(s0)
    1ef0:	fec42783          	lw	a5,-20(s0)
    1ef4:	fe842703          	lw	a4,-24(s0)
    1ef8:	40e7d7b3          	sra	a5,a5,a4
    1efc:	fef42223          	sw	a5,-28(s0)
    1f00:	fe442703          	lw	a4,-28(s0)
    1f04:	fff00793          	li	a5,-1
    1f08:	04f70063          	beq	a4,a5,1f48 <main+0x1ee8>
    1f0c:	00100073          	ebreak
    1f10:	000107b7          	lui	a5,0x10
    1f14:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    1f18:	7a9020ef          	jal	4ec0 <printf>
    1f1c:	04c00513          	li	a0,76
    1f20:	611020ef          	jal	4d30 <print_dec>
    1f24:	000107b7          	lui	a5,0x10
    1f28:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1f2c:	795020ef          	jal	4ec0 <printf>
    1f30:	fe442783          	lw	a5,-28(s0)
    1f34:	00078513          	mv	a0,a5
    1f38:	719020ef          	jal	4e50 <print_hex>
    1f3c:	00a00513          	li	a0,10
    1f40:	575020ef          	jal	4cb4 <putchar>
    1f44:	00100073          	ebreak
    1f48:	fe042623          	sw	zero,-20(s0)
    1f4c:	fec42783          	lw	a5,-20(s0)
    1f50:	4007d793          	sra	a5,a5,0x0
    1f54:	fef42223          	sw	a5,-28(s0)
    1f58:	fe442783          	lw	a5,-28(s0)
    1f5c:	04078063          	beqz	a5,1f9c <main+0x1f3c>
    1f60:	00100073          	ebreak
    1f64:	000107b7          	lui	a5,0x10
    1f68:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1f6c:	755020ef          	jal	4ec0 <printf>
    1f70:	04d00513          	li	a0,77
    1f74:	5bd020ef          	jal	4d30 <print_dec>
    1f78:	000107b7          	lui	a5,0x10
    1f7c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1f80:	741020ef          	jal	4ec0 <printf>
    1f84:	fe442783          	lw	a5,-28(s0)
    1f88:	00078513          	mv	a0,a5
    1f8c:	6c5020ef          	jal	4e50 <print_hex>
    1f90:	00a00513          	li	a0,10
    1f94:	521020ef          	jal	4cb4 <putchar>
    1f98:	00100073          	ebreak
    1f9c:	800007b7          	lui	a5,0x80000
    1fa0:	fef42623          	sw	a5,-20(s0)
    1fa4:	fec42783          	lw	a5,-20(s0)
    1fa8:	4017d793          	sra	a5,a5,0x1
    1fac:	fef42223          	sw	a5,-28(s0)
    1fb0:	fe442703          	lw	a4,-28(s0)
    1fb4:	c00007b7          	lui	a5,0xc0000
    1fb8:	04f70063          	beq	a4,a5,1ff8 <main+0x1f98>
    1fbc:	00100073          	ebreak
    1fc0:	000107b7          	lui	a5,0x10
    1fc4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    1fc8:	6f9020ef          	jal	4ec0 <printf>
    1fcc:	04e00513          	li	a0,78
    1fd0:	561020ef          	jal	4d30 <print_dec>
    1fd4:	000107b7          	lui	a5,0x10
    1fd8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    1fdc:	6e5020ef          	jal	4ec0 <printf>
    1fe0:	fe442783          	lw	a5,-28(s0)
    1fe4:	00078513          	mv	a0,a5
    1fe8:	669020ef          	jal	4e50 <print_hex>
    1fec:	00a00513          	li	a0,10
    1ff0:	4c5020ef          	jal	4cb4 <putchar>
    1ff4:	00100073          	ebreak
    1ff8:	800007b7          	lui	a5,0x80000
    1ffc:	fef42623          	sw	a5,-20(s0)
    2000:	fec42783          	lw	a5,-20(s0)
    2004:	4077d793          	sra	a5,a5,0x7
    2008:	fef42223          	sw	a5,-28(s0)
    200c:	fe442703          	lw	a4,-28(s0)
    2010:	ff0007b7          	lui	a5,0xff000
    2014:	04f70063          	beq	a4,a5,2054 <main+0x1ff4>
    2018:	00100073          	ebreak
    201c:	000107b7          	lui	a5,0x10
    2020:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2024:	69d020ef          	jal	4ec0 <printf>
    2028:	04f00513          	li	a0,79
    202c:	505020ef          	jal	4d30 <print_dec>
    2030:	000107b7          	lui	a5,0x10
    2034:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2038:	689020ef          	jal	4ec0 <printf>
    203c:	fe442783          	lw	a5,-28(s0)
    2040:	00078513          	mv	a0,a5
    2044:	60d020ef          	jal	4e50 <print_hex>
    2048:	00a00513          	li	a0,10
    204c:	469020ef          	jal	4cb4 <putchar>
    2050:	00100073          	ebreak
    2054:	800007b7          	lui	a5,0x80000
    2058:	fef42623          	sw	a5,-20(s0)
    205c:	fec42783          	lw	a5,-20(s0)
    2060:	40e7d793          	sra	a5,a5,0xe
    2064:	fef42223          	sw	a5,-28(s0)
    2068:	fe442703          	lw	a4,-28(s0)
    206c:	fffe07b7          	lui	a5,0xfffe0
    2070:	04f70063          	beq	a4,a5,20b0 <main+0x2050>
    2074:	00100073          	ebreak
    2078:	000107b7          	lui	a5,0x10
    207c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2080:	641020ef          	jal	4ec0 <printf>
    2084:	05000513          	li	a0,80
    2088:	4a9020ef          	jal	4d30 <print_dec>
    208c:	000107b7          	lui	a5,0x10
    2090:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2094:	62d020ef          	jal	4ec0 <printf>
    2098:	fe442783          	lw	a5,-28(s0)
    209c:	00078513          	mv	a0,a5
    20a0:	5b1020ef          	jal	4e50 <print_hex>
    20a4:	00a00513          	li	a0,10
    20a8:	40d020ef          	jal	4cb4 <putchar>
    20ac:	00100073          	ebreak
    20b0:	800007b7          	lui	a5,0x80000
    20b4:	00178793          	add	a5,a5,1 # 80000001 <IO_BASE+0x7fc00001>
    20b8:	fef42623          	sw	a5,-20(s0)
    20bc:	fec42783          	lw	a5,-20(s0)
    20c0:	41f7d793          	sra	a5,a5,0x1f
    20c4:	fef42223          	sw	a5,-28(s0)
    20c8:	fe442703          	lw	a4,-28(s0)
    20cc:	fff00793          	li	a5,-1
    20d0:	04f70063          	beq	a4,a5,2110 <main+0x20b0>
    20d4:	00100073          	ebreak
    20d8:	000107b7          	lui	a5,0x10
    20dc:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    20e0:	5e1020ef          	jal	4ec0 <printf>
    20e4:	05100513          	li	a0,81
    20e8:	449020ef          	jal	4d30 <print_dec>
    20ec:	000107b7          	lui	a5,0x10
    20f0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    20f4:	5cd020ef          	jal	4ec0 <printf>
    20f8:	fe442783          	lw	a5,-28(s0)
    20fc:	00078513          	mv	a0,a5
    2100:	551020ef          	jal	4e50 <print_hex>
    2104:	00a00513          	li	a0,10
    2108:	3ad020ef          	jal	4cb4 <putchar>
    210c:	00100073          	ebreak
    2110:	800007b7          	lui	a5,0x80000
    2114:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    2118:	fef42623          	sw	a5,-20(s0)
    211c:	fec42783          	lw	a5,-20(s0)
    2120:	4007d793          	sra	a5,a5,0x0
    2124:	fef42223          	sw	a5,-28(s0)
    2128:	fe442703          	lw	a4,-28(s0)
    212c:	800007b7          	lui	a5,0x80000
    2130:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    2134:	04f70063          	beq	a4,a5,2174 <main+0x2114>
    2138:	00100073          	ebreak
    213c:	000107b7          	lui	a5,0x10
    2140:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2144:	57d020ef          	jal	4ec0 <printf>
    2148:	05200513          	li	a0,82
    214c:	3e5020ef          	jal	4d30 <print_dec>
    2150:	000107b7          	lui	a5,0x10
    2154:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2158:	569020ef          	jal	4ec0 <printf>
    215c:	fe442783          	lw	a5,-28(s0)
    2160:	00078513          	mv	a0,a5
    2164:	4ed020ef          	jal	4e50 <print_hex>
    2168:	00a00513          	li	a0,10
    216c:	349020ef          	jal	4cb4 <putchar>
    2170:	00100073          	ebreak
    2174:	800007b7          	lui	a5,0x80000
    2178:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    217c:	fef42623          	sw	a5,-20(s0)
    2180:	fec42783          	lw	a5,-20(s0)
    2184:	4017d793          	sra	a5,a5,0x1
    2188:	fef42223          	sw	a5,-28(s0)
    218c:	fe442703          	lw	a4,-28(s0)
    2190:	400007b7          	lui	a5,0x40000
    2194:	fff78793          	add	a5,a5,-1 # 3fffffff <IO_BASE+0x3fbfffff>
    2198:	04f70063          	beq	a4,a5,21d8 <main+0x2178>
    219c:	00100073          	ebreak
    21a0:	000107b7          	lui	a5,0x10
    21a4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    21a8:	519020ef          	jal	4ec0 <printf>
    21ac:	05300513          	li	a0,83
    21b0:	381020ef          	jal	4d30 <print_dec>
    21b4:	000107b7          	lui	a5,0x10
    21b8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    21bc:	505020ef          	jal	4ec0 <printf>
    21c0:	fe442783          	lw	a5,-28(s0)
    21c4:	00078513          	mv	a0,a5
    21c8:	489020ef          	jal	4e50 <print_hex>
    21cc:	00a00513          	li	a0,10
    21d0:	2e5020ef          	jal	4cb4 <putchar>
    21d4:	00100073          	ebreak
    21d8:	800007b7          	lui	a5,0x80000
    21dc:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    21e0:	fef42623          	sw	a5,-20(s0)
    21e4:	fec42783          	lw	a5,-20(s0)
    21e8:	4077d793          	sra	a5,a5,0x7
    21ec:	fef42223          	sw	a5,-28(s0)
    21f0:	fe442703          	lw	a4,-28(s0)
    21f4:	010007b7          	lui	a5,0x1000
    21f8:	fff78793          	add	a5,a5,-1 # ffffff <IO_BASE+0xbfffff>
    21fc:	04f70063          	beq	a4,a5,223c <main+0x21dc>
    2200:	00100073          	ebreak
    2204:	000107b7          	lui	a5,0x10
    2208:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    220c:	4b5020ef          	jal	4ec0 <printf>
    2210:	05400513          	li	a0,84
    2214:	31d020ef          	jal	4d30 <print_dec>
    2218:	000107b7          	lui	a5,0x10
    221c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2220:	4a1020ef          	jal	4ec0 <printf>
    2224:	fe442783          	lw	a5,-28(s0)
    2228:	00078513          	mv	a0,a5
    222c:	425020ef          	jal	4e50 <print_hex>
    2230:	00a00513          	li	a0,10
    2234:	281020ef          	jal	4cb4 <putchar>
    2238:	00100073          	ebreak
    223c:	800007b7          	lui	a5,0x80000
    2240:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    2244:	fef42623          	sw	a5,-20(s0)
    2248:	fec42783          	lw	a5,-20(s0)
    224c:	40e7d793          	sra	a5,a5,0xe
    2250:	fef42223          	sw	a5,-28(s0)
    2254:	fe442703          	lw	a4,-28(s0)
    2258:	000207b7          	lui	a5,0x20
    225c:	fff78793          	add	a5,a5,-1 # 1ffff <__modsi3+0x1af97>
    2260:	04f70063          	beq	a4,a5,22a0 <main+0x2240>
    2264:	00100073          	ebreak
    2268:	000107b7          	lui	a5,0x10
    226c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2270:	451020ef          	jal	4ec0 <printf>
    2274:	05500513          	li	a0,85
    2278:	2b9020ef          	jal	4d30 <print_dec>
    227c:	000107b7          	lui	a5,0x10
    2280:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2284:	43d020ef          	jal	4ec0 <printf>
    2288:	fe442783          	lw	a5,-28(s0)
    228c:	00078513          	mv	a0,a5
    2290:	3c1020ef          	jal	4e50 <print_hex>
    2294:	00a00513          	li	a0,10
    2298:	21d020ef          	jal	4cb4 <putchar>
    229c:	00100073          	ebreak
    22a0:	800007b7          	lui	a5,0x80000
    22a4:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    22a8:	fef42623          	sw	a5,-20(s0)
    22ac:	fec42783          	lw	a5,-20(s0)
    22b0:	41f7d793          	sra	a5,a5,0x1f
    22b4:	fef42223          	sw	a5,-28(s0)
    22b8:	fe442783          	lw	a5,-28(s0)
    22bc:	04078063          	beqz	a5,22fc <main+0x229c>
    22c0:	00100073          	ebreak
    22c4:	000107b7          	lui	a5,0x10
    22c8:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    22cc:	3f5020ef          	jal	4ec0 <printf>
    22d0:	05600513          	li	a0,86
    22d4:	25d020ef          	jal	4d30 <print_dec>
    22d8:	000107b7          	lui	a5,0x10
    22dc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    22e0:	3e1020ef          	jal	4ec0 <printf>
    22e4:	fe442783          	lw	a5,-28(s0)
    22e8:	00078513          	mv	a0,a5
    22ec:	365020ef          	jal	4e50 <print_hex>
    22f0:	00a00513          	li	a0,10
    22f4:	1c1020ef          	jal	4cb4 <putchar>
    22f8:	00100073          	ebreak
    22fc:	818187b7          	lui	a5,0x81818
    2300:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    2304:	fef42623          	sw	a5,-20(s0)
    2308:	fec42783          	lw	a5,-20(s0)
    230c:	4007d793          	sra	a5,a5,0x0
    2310:	fef42223          	sw	a5,-28(s0)
    2314:	fe442703          	lw	a4,-28(s0)
    2318:	818187b7          	lui	a5,0x81818
    231c:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    2320:	04f70063          	beq	a4,a5,2360 <main+0x2300>
    2324:	00100073          	ebreak
    2328:	000107b7          	lui	a5,0x10
    232c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2330:	391020ef          	jal	4ec0 <printf>
    2334:	05700513          	li	a0,87
    2338:	1f9020ef          	jal	4d30 <print_dec>
    233c:	000107b7          	lui	a5,0x10
    2340:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2344:	37d020ef          	jal	4ec0 <printf>
    2348:	fe442783          	lw	a5,-28(s0)
    234c:	00078513          	mv	a0,a5
    2350:	301020ef          	jal	4e50 <print_hex>
    2354:	00a00513          	li	a0,10
    2358:	15d020ef          	jal	4cb4 <putchar>
    235c:	00100073          	ebreak
    2360:	818187b7          	lui	a5,0x81818
    2364:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    2368:	fef42623          	sw	a5,-20(s0)
    236c:	fec42783          	lw	a5,-20(s0)
    2370:	4017d793          	sra	a5,a5,0x1
    2374:	fef42223          	sw	a5,-28(s0)
    2378:	fe442703          	lw	a4,-28(s0)
    237c:	c0c0c7b7          	lui	a5,0xc0c0c
    2380:	0c078793          	add	a5,a5,192 # c0c0c0c0 <IO_BASE+0xc080c0c0>
    2384:	04f70063          	beq	a4,a5,23c4 <main+0x2364>
    2388:	00100073          	ebreak
    238c:	000107b7          	lui	a5,0x10
    2390:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2394:	32d020ef          	jal	4ec0 <printf>
    2398:	05800513          	li	a0,88
    239c:	195020ef          	jal	4d30 <print_dec>
    23a0:	000107b7          	lui	a5,0x10
    23a4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    23a8:	319020ef          	jal	4ec0 <printf>
    23ac:	fe442783          	lw	a5,-28(s0)
    23b0:	00078513          	mv	a0,a5
    23b4:	29d020ef          	jal	4e50 <print_hex>
    23b8:	00a00513          	li	a0,10
    23bc:	0f9020ef          	jal	4cb4 <putchar>
    23c0:	00100073          	ebreak
    23c4:	818187b7          	lui	a5,0x81818
    23c8:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    23cc:	fef42623          	sw	a5,-20(s0)
    23d0:	fec42783          	lw	a5,-20(s0)
    23d4:	4077d793          	sra	a5,a5,0x7
    23d8:	fef42223          	sw	a5,-28(s0)
    23dc:	fe442703          	lw	a4,-28(s0)
    23e0:	ff0307b7          	lui	a5,0xff030
    23e4:	30378793          	add	a5,a5,771 # ff030303 <IO_BASE+0xfec30303>
    23e8:	04f70063          	beq	a4,a5,2428 <main+0x23c8>
    23ec:	00100073          	ebreak
    23f0:	000107b7          	lui	a5,0x10
    23f4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    23f8:	2c9020ef          	jal	4ec0 <printf>
    23fc:	05900513          	li	a0,89
    2400:	131020ef          	jal	4d30 <print_dec>
    2404:	000107b7          	lui	a5,0x10
    2408:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    240c:	2b5020ef          	jal	4ec0 <printf>
    2410:	fe442783          	lw	a5,-28(s0)
    2414:	00078513          	mv	a0,a5
    2418:	239020ef          	jal	4e50 <print_hex>
    241c:	00a00513          	li	a0,10
    2420:	095020ef          	jal	4cb4 <putchar>
    2424:	00100073          	ebreak
    2428:	818187b7          	lui	a5,0x81818
    242c:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    2430:	fef42623          	sw	a5,-20(s0)
    2434:	fec42783          	lw	a5,-20(s0)
    2438:	40e7d793          	sra	a5,a5,0xe
    243c:	fef42223          	sw	a5,-28(s0)
    2440:	fe442703          	lw	a4,-28(s0)
    2444:	fffe07b7          	lui	a5,0xfffe0
    2448:	60678793          	add	a5,a5,1542 # fffe0606 <IO_BASE+0xffbe0606>
    244c:	04f70063          	beq	a4,a5,248c <main+0x242c>
    2450:	00100073          	ebreak
    2454:	000107b7          	lui	a5,0x10
    2458:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    245c:	265020ef          	jal	4ec0 <printf>
    2460:	05a00513          	li	a0,90
    2464:	0cd020ef          	jal	4d30 <print_dec>
    2468:	000107b7          	lui	a5,0x10
    246c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2470:	251020ef          	jal	4ec0 <printf>
    2474:	fe442783          	lw	a5,-28(s0)
    2478:	00078513          	mv	a0,a5
    247c:	1d5020ef          	jal	4e50 <print_hex>
    2480:	00a00513          	li	a0,10
    2484:	031020ef          	jal	4cb4 <putchar>
    2488:	00100073          	ebreak
    248c:	818187b7          	lui	a5,0x81818
    2490:	18178793          	add	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    2494:	fef42623          	sw	a5,-20(s0)
    2498:	fec42783          	lw	a5,-20(s0)
    249c:	41f7d793          	sra	a5,a5,0x1f
    24a0:	fef42223          	sw	a5,-28(s0)
    24a4:	fe442703          	lw	a4,-28(s0)
    24a8:	fff00793          	li	a5,-1
    24ac:	04f70063          	beq	a4,a5,24ec <main+0x248c>
    24b0:	00100073          	ebreak
    24b4:	000107b7          	lui	a5,0x10
    24b8:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    24bc:	205020ef          	jal	4ec0 <printf>
    24c0:	05b00513          	li	a0,91
    24c4:	06d020ef          	jal	4d30 <print_dec>
    24c8:	000107b7          	lui	a5,0x10
    24cc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    24d0:	1f1020ef          	jal	4ec0 <printf>
    24d4:	fe442783          	lw	a5,-28(s0)
    24d8:	00078513          	mv	a0,a5
    24dc:	175020ef          	jal	4e50 <print_hex>
    24e0:	00a00513          	li	a0,10
    24e4:	7d0020ef          	jal	4cb4 <putchar>
    24e8:	00100073          	ebreak
    24ec:	212127b7          	lui	a5,0x21212
    24f0:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    24f4:	fef42623          	sw	a5,-20(s0)
    24f8:	fc000793          	li	a5,-64
    24fc:	fef42423          	sw	a5,-24(s0)
    2500:	fec42783          	lw	a5,-20(s0)
    2504:	fe842703          	lw	a4,-24(s0)
    2508:	00e7d7b3          	srl	a5,a5,a4
    250c:	fef42223          	sw	a5,-28(s0)
    2510:	fe442703          	lw	a4,-28(s0)
    2514:	212127b7          	lui	a5,0x21212
    2518:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    251c:	04f70063          	beq	a4,a5,255c <main+0x24fc>
    2520:	00100073          	ebreak
    2524:	000107b7          	lui	a5,0x10
    2528:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    252c:	195020ef          	jal	4ec0 <printf>
    2530:	05c00513          	li	a0,92
    2534:	7fc020ef          	jal	4d30 <print_dec>
    2538:	000107b7          	lui	a5,0x10
    253c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2540:	181020ef          	jal	4ec0 <printf>
    2544:	fe442783          	lw	a5,-28(s0)
    2548:	00078513          	mv	a0,a5
    254c:	105020ef          	jal	4e50 <print_hex>
    2550:	00a00513          	li	a0,10
    2554:	760020ef          	jal	4cb4 <putchar>
    2558:	00100073          	ebreak
    255c:	212127b7          	lui	a5,0x21212
    2560:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    2564:	fef42623          	sw	a5,-20(s0)
    2568:	fc100793          	li	a5,-63
    256c:	fef42423          	sw	a5,-24(s0)
    2570:	fec42783          	lw	a5,-20(s0)
    2574:	fe842703          	lw	a4,-24(s0)
    2578:	00e7d7b3          	srl	a5,a5,a4
    257c:	fef42223          	sw	a5,-28(s0)
    2580:	fe442703          	lw	a4,-28(s0)
    2584:	109097b7          	lui	a5,0x10909
    2588:	09078793          	add	a5,a5,144 # 10909090 <IO_BASE+0x10509090>
    258c:	04f70063          	beq	a4,a5,25cc <main+0x256c>
    2590:	00100073          	ebreak
    2594:	000107b7          	lui	a5,0x10
    2598:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    259c:	125020ef          	jal	4ec0 <printf>
    25a0:	05d00513          	li	a0,93
    25a4:	78c020ef          	jal	4d30 <print_dec>
    25a8:	000107b7          	lui	a5,0x10
    25ac:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    25b0:	111020ef          	jal	4ec0 <printf>
    25b4:	fe442783          	lw	a5,-28(s0)
    25b8:	00078513          	mv	a0,a5
    25bc:	095020ef          	jal	4e50 <print_hex>
    25c0:	00a00513          	li	a0,10
    25c4:	6f0020ef          	jal	4cb4 <putchar>
    25c8:	00100073          	ebreak
    25cc:	212127b7          	lui	a5,0x21212
    25d0:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    25d4:	fef42623          	sw	a5,-20(s0)
    25d8:	fc700793          	li	a5,-57
    25dc:	fef42423          	sw	a5,-24(s0)
    25e0:	fec42783          	lw	a5,-20(s0)
    25e4:	fe842703          	lw	a4,-24(s0)
    25e8:	00e7d7b3          	srl	a5,a5,a4
    25ec:	fef42223          	sw	a5,-28(s0)
    25f0:	fe442703          	lw	a4,-28(s0)
    25f4:	004247b7          	lui	a5,0x424
    25f8:	24278793          	add	a5,a5,578 # 424242 <IO_BASE+0x24242>
    25fc:	04f70063          	beq	a4,a5,263c <main+0x25dc>
    2600:	00100073          	ebreak
    2604:	000107b7          	lui	a5,0x10
    2608:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    260c:	0b5020ef          	jal	4ec0 <printf>
    2610:	05e00513          	li	a0,94
    2614:	71c020ef          	jal	4d30 <print_dec>
    2618:	000107b7          	lui	a5,0x10
    261c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2620:	0a1020ef          	jal	4ec0 <printf>
    2624:	fe442783          	lw	a5,-28(s0)
    2628:	00078513          	mv	a0,a5
    262c:	025020ef          	jal	4e50 <print_hex>
    2630:	00a00513          	li	a0,10
    2634:	680020ef          	jal	4cb4 <putchar>
    2638:	00100073          	ebreak
    263c:	212127b7          	lui	a5,0x21212
    2640:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    2644:	fef42623          	sw	a5,-20(s0)
    2648:	fce00793          	li	a5,-50
    264c:	fef42423          	sw	a5,-24(s0)
    2650:	fec42783          	lw	a5,-20(s0)
    2654:	fe842703          	lw	a4,-24(s0)
    2658:	00e7d7b3          	srl	a5,a5,a4
    265c:	fef42223          	sw	a5,-28(s0)
    2660:	fe442703          	lw	a4,-28(s0)
    2664:	000087b7          	lui	a5,0x8
    2668:	48478793          	add	a5,a5,1156 # 8484 <__modsi3+0x341c>
    266c:	04f70063          	beq	a4,a5,26ac <main+0x264c>
    2670:	00100073          	ebreak
    2674:	000107b7          	lui	a5,0x10
    2678:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    267c:	045020ef          	jal	4ec0 <printf>
    2680:	05f00513          	li	a0,95
    2684:	6ac020ef          	jal	4d30 <print_dec>
    2688:	000107b7          	lui	a5,0x10
    268c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2690:	031020ef          	jal	4ec0 <printf>
    2694:	fe442783          	lw	a5,-28(s0)
    2698:	00078513          	mv	a0,a5
    269c:	7b4020ef          	jal	4e50 <print_hex>
    26a0:	00a00513          	li	a0,10
    26a4:	610020ef          	jal	4cb4 <putchar>
    26a8:	00100073          	ebreak
    26ac:	212127b7          	lui	a5,0x21212
    26b0:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    26b4:	fef42623          	sw	a5,-20(s0)
    26b8:	fff00793          	li	a5,-1
    26bc:	fef42423          	sw	a5,-24(s0)
    26c0:	fec42783          	lw	a5,-20(s0)
    26c4:	fe842703          	lw	a4,-24(s0)
    26c8:	00e7d7b3          	srl	a5,a5,a4
    26cc:	fef42223          	sw	a5,-28(s0)
    26d0:	fe442783          	lw	a5,-28(s0)
    26d4:	04078063          	beqz	a5,2714 <main+0x26b4>
    26d8:	00100073          	ebreak
    26dc:	000107b7          	lui	a5,0x10
    26e0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    26e4:	7dc020ef          	jal	4ec0 <printf>
    26e8:	06000513          	li	a0,96
    26ec:	644020ef          	jal	4d30 <print_dec>
    26f0:	000107b7          	lui	a5,0x10
    26f4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    26f8:	7c8020ef          	jal	4ec0 <printf>
    26fc:	fe442783          	lw	a5,-28(s0)
    2700:	00078513          	mv	a0,a5
    2704:	74c020ef          	jal	4e50 <print_hex>
    2708:	00a00513          	li	a0,10
    270c:	5a8020ef          	jal	4cb4 <putchar>
    2710:	00100073          	ebreak
    2714:	800007b7          	lui	a5,0x80000
    2718:	fef42623          	sw	a5,-20(s0)
    271c:	fec42783          	lw	a5,-20(s0)
    2720:	0007d793          	srl	a5,a5,0x0
    2724:	fef42223          	sw	a5,-28(s0)
    2728:	fe442703          	lw	a4,-28(s0)
    272c:	800007b7          	lui	a5,0x80000
    2730:	04f70063          	beq	a4,a5,2770 <main+0x2710>
    2734:	00100073          	ebreak
    2738:	000107b7          	lui	a5,0x10
    273c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2740:	780020ef          	jal	4ec0 <printf>
    2744:	06100513          	li	a0,97
    2748:	5e8020ef          	jal	4d30 <print_dec>
    274c:	000107b7          	lui	a5,0x10
    2750:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2754:	76c020ef          	jal	4ec0 <printf>
    2758:	fe442783          	lw	a5,-28(s0)
    275c:	00078513          	mv	a0,a5
    2760:	6f0020ef          	jal	4e50 <print_hex>
    2764:	00a00513          	li	a0,10
    2768:	54c020ef          	jal	4cb4 <putchar>
    276c:	00100073          	ebreak
    2770:	800007b7          	lui	a5,0x80000
    2774:	fef42623          	sw	a5,-20(s0)
    2778:	fec42783          	lw	a5,-20(s0)
    277c:	0017d793          	srl	a5,a5,0x1
    2780:	fef42223          	sw	a5,-28(s0)
    2784:	fe442703          	lw	a4,-28(s0)
    2788:	400007b7          	lui	a5,0x40000
    278c:	04f70063          	beq	a4,a5,27cc <main+0x276c>
    2790:	00100073          	ebreak
    2794:	000107b7          	lui	a5,0x10
    2798:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    279c:	724020ef          	jal	4ec0 <printf>
    27a0:	06200513          	li	a0,98
    27a4:	58c020ef          	jal	4d30 <print_dec>
    27a8:	000107b7          	lui	a5,0x10
    27ac:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    27b0:	710020ef          	jal	4ec0 <printf>
    27b4:	fe442783          	lw	a5,-28(s0)
    27b8:	00078513          	mv	a0,a5
    27bc:	694020ef          	jal	4e50 <print_hex>
    27c0:	00a00513          	li	a0,10
    27c4:	4f0020ef          	jal	4cb4 <putchar>
    27c8:	00100073          	ebreak
    27cc:	800007b7          	lui	a5,0x80000
    27d0:	fef42623          	sw	a5,-20(s0)
    27d4:	fec42783          	lw	a5,-20(s0)
    27d8:	0077d793          	srl	a5,a5,0x7
    27dc:	fef42223          	sw	a5,-28(s0)
    27e0:	fe442703          	lw	a4,-28(s0)
    27e4:	010007b7          	lui	a5,0x1000
    27e8:	04f70063          	beq	a4,a5,2828 <main+0x27c8>
    27ec:	00100073          	ebreak
    27f0:	000107b7          	lui	a5,0x10
    27f4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    27f8:	6c8020ef          	jal	4ec0 <printf>
    27fc:	06300513          	li	a0,99
    2800:	530020ef          	jal	4d30 <print_dec>
    2804:	000107b7          	lui	a5,0x10
    2808:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    280c:	6b4020ef          	jal	4ec0 <printf>
    2810:	fe442783          	lw	a5,-28(s0)
    2814:	00078513          	mv	a0,a5
    2818:	638020ef          	jal	4e50 <print_hex>
    281c:	00a00513          	li	a0,10
    2820:	494020ef          	jal	4cb4 <putchar>
    2824:	00100073          	ebreak
    2828:	800007b7          	lui	a5,0x80000
    282c:	fef42623          	sw	a5,-20(s0)
    2830:	fec42783          	lw	a5,-20(s0)
    2834:	00e7d793          	srl	a5,a5,0xe
    2838:	fef42223          	sw	a5,-28(s0)
    283c:	fe442703          	lw	a4,-28(s0)
    2840:	000207b7          	lui	a5,0x20
    2844:	04f70063          	beq	a4,a5,2884 <main+0x2824>
    2848:	00100073          	ebreak
    284c:	000107b7          	lui	a5,0x10
    2850:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2854:	66c020ef          	jal	4ec0 <printf>
    2858:	06400513          	li	a0,100
    285c:	4d4020ef          	jal	4d30 <print_dec>
    2860:	000107b7          	lui	a5,0x10
    2864:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2868:	658020ef          	jal	4ec0 <printf>
    286c:	fe442783          	lw	a5,-28(s0)
    2870:	00078513          	mv	a0,a5
    2874:	5dc020ef          	jal	4e50 <print_hex>
    2878:	00a00513          	li	a0,10
    287c:	438020ef          	jal	4cb4 <putchar>
    2880:	00100073          	ebreak
    2884:	800007b7          	lui	a5,0x80000
    2888:	00178793          	add	a5,a5,1 # 80000001 <IO_BASE+0x7fc00001>
    288c:	fef42623          	sw	a5,-20(s0)
    2890:	fec42783          	lw	a5,-20(s0)
    2894:	01f7d793          	srl	a5,a5,0x1f
    2898:	fef42223          	sw	a5,-28(s0)
    289c:	fe442703          	lw	a4,-28(s0)
    28a0:	00100793          	li	a5,1
    28a4:	04f70063          	beq	a4,a5,28e4 <main+0x2884>
    28a8:	00100073          	ebreak
    28ac:	000107b7          	lui	a5,0x10
    28b0:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    28b4:	60c020ef          	jal	4ec0 <printf>
    28b8:	06500513          	li	a0,101
    28bc:	474020ef          	jal	4d30 <print_dec>
    28c0:	000107b7          	lui	a5,0x10
    28c4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    28c8:	5f8020ef          	jal	4ec0 <printf>
    28cc:	fe442783          	lw	a5,-28(s0)
    28d0:	00078513          	mv	a0,a5
    28d4:	57c020ef          	jal	4e50 <print_hex>
    28d8:	00a00513          	li	a0,10
    28dc:	3d8020ef          	jal	4cb4 <putchar>
    28e0:	00100073          	ebreak
    28e4:	fff00793          	li	a5,-1
    28e8:	fef42623          	sw	a5,-20(s0)
    28ec:	fec42783          	lw	a5,-20(s0)
    28f0:	0007d793          	srl	a5,a5,0x0
    28f4:	fef42223          	sw	a5,-28(s0)
    28f8:	fe442703          	lw	a4,-28(s0)
    28fc:	fff00793          	li	a5,-1
    2900:	04f70063          	beq	a4,a5,2940 <main+0x28e0>
    2904:	00100073          	ebreak
    2908:	000107b7          	lui	a5,0x10
    290c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2910:	5b0020ef          	jal	4ec0 <printf>
    2914:	06600513          	li	a0,102
    2918:	418020ef          	jal	4d30 <print_dec>
    291c:	000107b7          	lui	a5,0x10
    2920:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2924:	59c020ef          	jal	4ec0 <printf>
    2928:	fe442783          	lw	a5,-28(s0)
    292c:	00078513          	mv	a0,a5
    2930:	520020ef          	jal	4e50 <print_hex>
    2934:	00a00513          	li	a0,10
    2938:	37c020ef          	jal	4cb4 <putchar>
    293c:	00100073          	ebreak
    2940:	fff00793          	li	a5,-1
    2944:	fef42623          	sw	a5,-20(s0)
    2948:	fec42783          	lw	a5,-20(s0)
    294c:	0017d793          	srl	a5,a5,0x1
    2950:	fef42223          	sw	a5,-28(s0)
    2954:	fe442703          	lw	a4,-28(s0)
    2958:	800007b7          	lui	a5,0x80000
    295c:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    2960:	04f70063          	beq	a4,a5,29a0 <main+0x2940>
    2964:	00100073          	ebreak
    2968:	000107b7          	lui	a5,0x10
    296c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2970:	550020ef          	jal	4ec0 <printf>
    2974:	06700513          	li	a0,103
    2978:	3b8020ef          	jal	4d30 <print_dec>
    297c:	000107b7          	lui	a5,0x10
    2980:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2984:	53c020ef          	jal	4ec0 <printf>
    2988:	fe442783          	lw	a5,-28(s0)
    298c:	00078513          	mv	a0,a5
    2990:	4c0020ef          	jal	4e50 <print_hex>
    2994:	00a00513          	li	a0,10
    2998:	31c020ef          	jal	4cb4 <putchar>
    299c:	00100073          	ebreak
    29a0:	fff00793          	li	a5,-1
    29a4:	fef42623          	sw	a5,-20(s0)
    29a8:	fec42783          	lw	a5,-20(s0)
    29ac:	0077d793          	srl	a5,a5,0x7
    29b0:	fef42223          	sw	a5,-28(s0)
    29b4:	fe442703          	lw	a4,-28(s0)
    29b8:	020007b7          	lui	a5,0x2000
    29bc:	fff78793          	add	a5,a5,-1 # 1ffffff <IO_BASE+0x1bfffff>
    29c0:	04f70063          	beq	a4,a5,2a00 <main+0x29a0>
    29c4:	00100073          	ebreak
    29c8:	000107b7          	lui	a5,0x10
    29cc:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    29d0:	4f0020ef          	jal	4ec0 <printf>
    29d4:	06800513          	li	a0,104
    29d8:	358020ef          	jal	4d30 <print_dec>
    29dc:	000107b7          	lui	a5,0x10
    29e0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    29e4:	4dc020ef          	jal	4ec0 <printf>
    29e8:	fe442783          	lw	a5,-28(s0)
    29ec:	00078513          	mv	a0,a5
    29f0:	460020ef          	jal	4e50 <print_hex>
    29f4:	00a00513          	li	a0,10
    29f8:	2bc020ef          	jal	4cb4 <putchar>
    29fc:	00100073          	ebreak
    2a00:	fff00793          	li	a5,-1
    2a04:	fef42623          	sw	a5,-20(s0)
    2a08:	fec42783          	lw	a5,-20(s0)
    2a0c:	00e7d793          	srl	a5,a5,0xe
    2a10:	fef42223          	sw	a5,-28(s0)
    2a14:	fe442703          	lw	a4,-28(s0)
    2a18:	000407b7          	lui	a5,0x40
    2a1c:	fff78793          	add	a5,a5,-1 # 3ffff <__modsi3+0x3af97>
    2a20:	04f70063          	beq	a4,a5,2a60 <main+0x2a00>
    2a24:	00100073          	ebreak
    2a28:	000107b7          	lui	a5,0x10
    2a2c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2a30:	490020ef          	jal	4ec0 <printf>
    2a34:	06900513          	li	a0,105
    2a38:	2f8020ef          	jal	4d30 <print_dec>
    2a3c:	000107b7          	lui	a5,0x10
    2a40:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2a44:	47c020ef          	jal	4ec0 <printf>
    2a48:	fe442783          	lw	a5,-28(s0)
    2a4c:	00078513          	mv	a0,a5
    2a50:	400020ef          	jal	4e50 <print_hex>
    2a54:	00a00513          	li	a0,10
    2a58:	25c020ef          	jal	4cb4 <putchar>
    2a5c:	00100073          	ebreak
    2a60:	fff00793          	li	a5,-1
    2a64:	fef42623          	sw	a5,-20(s0)
    2a68:	fec42783          	lw	a5,-20(s0)
    2a6c:	01f7d793          	srl	a5,a5,0x1f
    2a70:	fef42223          	sw	a5,-28(s0)
    2a74:	fe442703          	lw	a4,-28(s0)
    2a78:	00100793          	li	a5,1
    2a7c:	04f70063          	beq	a4,a5,2abc <main+0x2a5c>
    2a80:	00100073          	ebreak
    2a84:	000107b7          	lui	a5,0x10
    2a88:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2a8c:	434020ef          	jal	4ec0 <printf>
    2a90:	06a00513          	li	a0,106
    2a94:	29c020ef          	jal	4d30 <print_dec>
    2a98:	000107b7          	lui	a5,0x10
    2a9c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2aa0:	420020ef          	jal	4ec0 <printf>
    2aa4:	fe442783          	lw	a5,-28(s0)
    2aa8:	00078513          	mv	a0,a5
    2aac:	3a4020ef          	jal	4e50 <print_hex>
    2ab0:	00a00513          	li	a0,10
    2ab4:	200020ef          	jal	4cb4 <putchar>
    2ab8:	00100073          	ebreak
    2abc:	212127b7          	lui	a5,0x21212
    2ac0:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    2ac4:	fef42623          	sw	a5,-20(s0)
    2ac8:	fec42783          	lw	a5,-20(s0)
    2acc:	0007d793          	srl	a5,a5,0x0
    2ad0:	fef42223          	sw	a5,-28(s0)
    2ad4:	fe442703          	lw	a4,-28(s0)
    2ad8:	212127b7          	lui	a5,0x21212
    2adc:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    2ae0:	04f70063          	beq	a4,a5,2b20 <main+0x2ac0>
    2ae4:	00100073          	ebreak
    2ae8:	000107b7          	lui	a5,0x10
    2aec:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2af0:	3d0020ef          	jal	4ec0 <printf>
    2af4:	06b00513          	li	a0,107
    2af8:	238020ef          	jal	4d30 <print_dec>
    2afc:	000107b7          	lui	a5,0x10
    2b00:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2b04:	3bc020ef          	jal	4ec0 <printf>
    2b08:	fe442783          	lw	a5,-28(s0)
    2b0c:	00078513          	mv	a0,a5
    2b10:	340020ef          	jal	4e50 <print_hex>
    2b14:	00a00513          	li	a0,10
    2b18:	19c020ef          	jal	4cb4 <putchar>
    2b1c:	00100073          	ebreak
    2b20:	212127b7          	lui	a5,0x21212
    2b24:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    2b28:	fef42623          	sw	a5,-20(s0)
    2b2c:	fec42783          	lw	a5,-20(s0)
    2b30:	0017d793          	srl	a5,a5,0x1
    2b34:	fef42223          	sw	a5,-28(s0)
    2b38:	fe442703          	lw	a4,-28(s0)
    2b3c:	109097b7          	lui	a5,0x10909
    2b40:	09078793          	add	a5,a5,144 # 10909090 <IO_BASE+0x10509090>
    2b44:	04f70063          	beq	a4,a5,2b84 <main+0x2b24>
    2b48:	00100073          	ebreak
    2b4c:	000107b7          	lui	a5,0x10
    2b50:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2b54:	36c020ef          	jal	4ec0 <printf>
    2b58:	06c00513          	li	a0,108
    2b5c:	1d4020ef          	jal	4d30 <print_dec>
    2b60:	000107b7          	lui	a5,0x10
    2b64:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2b68:	358020ef          	jal	4ec0 <printf>
    2b6c:	fe442783          	lw	a5,-28(s0)
    2b70:	00078513          	mv	a0,a5
    2b74:	2dc020ef          	jal	4e50 <print_hex>
    2b78:	00a00513          	li	a0,10
    2b7c:	138020ef          	jal	4cb4 <putchar>
    2b80:	00100073          	ebreak
    2b84:	212127b7          	lui	a5,0x21212
    2b88:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    2b8c:	fef42623          	sw	a5,-20(s0)
    2b90:	fec42783          	lw	a5,-20(s0)
    2b94:	0077d793          	srl	a5,a5,0x7
    2b98:	fef42223          	sw	a5,-28(s0)
    2b9c:	fe442703          	lw	a4,-28(s0)
    2ba0:	004247b7          	lui	a5,0x424
    2ba4:	24278793          	add	a5,a5,578 # 424242 <IO_BASE+0x24242>
    2ba8:	04f70063          	beq	a4,a5,2be8 <main+0x2b88>
    2bac:	00100073          	ebreak
    2bb0:	000107b7          	lui	a5,0x10
    2bb4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2bb8:	308020ef          	jal	4ec0 <printf>
    2bbc:	06d00513          	li	a0,109
    2bc0:	170020ef          	jal	4d30 <print_dec>
    2bc4:	000107b7          	lui	a5,0x10
    2bc8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2bcc:	2f4020ef          	jal	4ec0 <printf>
    2bd0:	fe442783          	lw	a5,-28(s0)
    2bd4:	00078513          	mv	a0,a5
    2bd8:	278020ef          	jal	4e50 <print_hex>
    2bdc:	00a00513          	li	a0,10
    2be0:	0d4020ef          	jal	4cb4 <putchar>
    2be4:	00100073          	ebreak
    2be8:	212127b7          	lui	a5,0x21212
    2bec:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    2bf0:	fef42623          	sw	a5,-20(s0)
    2bf4:	fec42783          	lw	a5,-20(s0)
    2bf8:	00e7d793          	srl	a5,a5,0xe
    2bfc:	fef42223          	sw	a5,-28(s0)
    2c00:	fe442703          	lw	a4,-28(s0)
    2c04:	000087b7          	lui	a5,0x8
    2c08:	48478793          	add	a5,a5,1156 # 8484 <__modsi3+0x341c>
    2c0c:	04f70063          	beq	a4,a5,2c4c <main+0x2bec>
    2c10:	00100073          	ebreak
    2c14:	000107b7          	lui	a5,0x10
    2c18:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2c1c:	2a4020ef          	jal	4ec0 <printf>
    2c20:	06e00513          	li	a0,110
    2c24:	10c020ef          	jal	4d30 <print_dec>
    2c28:	000107b7          	lui	a5,0x10
    2c2c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2c30:	290020ef          	jal	4ec0 <printf>
    2c34:	fe442783          	lw	a5,-28(s0)
    2c38:	00078513          	mv	a0,a5
    2c3c:	214020ef          	jal	4e50 <print_hex>
    2c40:	00a00513          	li	a0,10
    2c44:	070020ef          	jal	4cb4 <putchar>
    2c48:	00100073          	ebreak
    2c4c:	212127b7          	lui	a5,0x21212
    2c50:	12178793          	add	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    2c54:	fef42623          	sw	a5,-20(s0)
    2c58:	fec42783          	lw	a5,-20(s0)
    2c5c:	01f7d793          	srl	a5,a5,0x1f
    2c60:	fef42223          	sw	a5,-28(s0)
    2c64:	fe442783          	lw	a5,-28(s0)
    2c68:	04078063          	beqz	a5,2ca8 <main+0x2c48>
    2c6c:	00100073          	ebreak
    2c70:	000107b7          	lui	a5,0x10
    2c74:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    2c78:	248020ef          	jal	4ec0 <printf>
    2c7c:	06f00513          	li	a0,111
    2c80:	0b0020ef          	jal	4d30 <print_dec>
    2c84:	000107b7          	lui	a5,0x10
    2c88:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2c8c:	234020ef          	jal	4ec0 <printf>
    2c90:	fe442783          	lw	a5,-28(s0)
    2c94:	00078513          	mv	a0,a5
    2c98:	1b8020ef          	jal	4e50 <print_hex>
    2c9c:	00a00513          	li	a0,10
    2ca0:	014020ef          	jal	4cb4 <putchar>
    2ca4:	00100073          	ebreak
    2ca8:	fe042623          	sw	zero,-20(s0)
    2cac:	fe042423          	sw	zero,-24(s0)
    2cb0:	fec42783          	lw	a5,-20(s0)
    2cb4:	fe842703          	lw	a4,-24(s0)
    2cb8:	40e787b3          	sub	a5,a5,a4
    2cbc:	fef42223          	sw	a5,-28(s0)
    2cc0:	fe442783          	lw	a5,-28(s0)
    2cc4:	04078063          	beqz	a5,2d04 <main+0x2ca4>
    2cc8:	00100073          	ebreak
    2ccc:	000107b7          	lui	a5,0x10
    2cd0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    2cd4:	1ec020ef          	jal	4ec0 <printf>
    2cd8:	07000513          	li	a0,112
    2cdc:	054020ef          	jal	4d30 <print_dec>
    2ce0:	000107b7          	lui	a5,0x10
    2ce4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2ce8:	1d8020ef          	jal	4ec0 <printf>
    2cec:	fe442783          	lw	a5,-28(s0)
    2cf0:	00078513          	mv	a0,a5
    2cf4:	15c020ef          	jal	4e50 <print_hex>
    2cf8:	00a00513          	li	a0,10
    2cfc:	7b9010ef          	jal	4cb4 <putchar>
    2d00:	00100073          	ebreak
    2d04:	00100793          	li	a5,1
    2d08:	fef42623          	sw	a5,-20(s0)
    2d0c:	00100793          	li	a5,1
    2d10:	fef42423          	sw	a5,-24(s0)
    2d14:	fec42783          	lw	a5,-20(s0)
    2d18:	fe842703          	lw	a4,-24(s0)
    2d1c:	40e787b3          	sub	a5,a5,a4
    2d20:	fef42223          	sw	a5,-28(s0)
    2d24:	fe442783          	lw	a5,-28(s0)
    2d28:	04078063          	beqz	a5,2d68 <main+0x2d08>
    2d2c:	00100073          	ebreak
    2d30:	000107b7          	lui	a5,0x10
    2d34:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    2d38:	188020ef          	jal	4ec0 <printf>
    2d3c:	07100513          	li	a0,113
    2d40:	7f1010ef          	jal	4d30 <print_dec>
    2d44:	000107b7          	lui	a5,0x10
    2d48:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2d4c:	174020ef          	jal	4ec0 <printf>
    2d50:	fe442783          	lw	a5,-28(s0)
    2d54:	00078513          	mv	a0,a5
    2d58:	0f8020ef          	jal	4e50 <print_hex>
    2d5c:	00a00513          	li	a0,10
    2d60:	755010ef          	jal	4cb4 <putchar>
    2d64:	00100073          	ebreak
    2d68:	00300793          	li	a5,3
    2d6c:	fef42623          	sw	a5,-20(s0)
    2d70:	00700793          	li	a5,7
    2d74:	fef42423          	sw	a5,-24(s0)
    2d78:	fec42783          	lw	a5,-20(s0)
    2d7c:	fe842703          	lw	a4,-24(s0)
    2d80:	40e787b3          	sub	a5,a5,a4
    2d84:	fef42223          	sw	a5,-28(s0)
    2d88:	fe442703          	lw	a4,-28(s0)
    2d8c:	ffc00793          	li	a5,-4
    2d90:	04f70063          	beq	a4,a5,2dd0 <main+0x2d70>
    2d94:	00100073          	ebreak
    2d98:	000107b7          	lui	a5,0x10
    2d9c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    2da0:	120020ef          	jal	4ec0 <printf>
    2da4:	07200513          	li	a0,114
    2da8:	789010ef          	jal	4d30 <print_dec>
    2dac:	000107b7          	lui	a5,0x10
    2db0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2db4:	10c020ef          	jal	4ec0 <printf>
    2db8:	fe442783          	lw	a5,-28(s0)
    2dbc:	00078513          	mv	a0,a5
    2dc0:	090020ef          	jal	4e50 <print_hex>
    2dc4:	00a00513          	li	a0,10
    2dc8:	6ed010ef          	jal	4cb4 <putchar>
    2dcc:	00100073          	ebreak
    2dd0:	fe042623          	sw	zero,-20(s0)
    2dd4:	ffff87b7          	lui	a5,0xffff8
    2dd8:	fef42423          	sw	a5,-24(s0)
    2ddc:	fec42783          	lw	a5,-20(s0)
    2de0:	fe842703          	lw	a4,-24(s0)
    2de4:	40e787b3          	sub	a5,a5,a4
    2de8:	fef42223          	sw	a5,-28(s0)
    2dec:	fe442703          	lw	a4,-28(s0)
    2df0:	000087b7          	lui	a5,0x8
    2df4:	04f70063          	beq	a4,a5,2e34 <main+0x2dd4>
    2df8:	00100073          	ebreak
    2dfc:	000107b7          	lui	a5,0x10
    2e00:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    2e04:	0bc020ef          	jal	4ec0 <printf>
    2e08:	07300513          	li	a0,115
    2e0c:	725010ef          	jal	4d30 <print_dec>
    2e10:	000107b7          	lui	a5,0x10
    2e14:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2e18:	0a8020ef          	jal	4ec0 <printf>
    2e1c:	fe442783          	lw	a5,-28(s0)
    2e20:	00078513          	mv	a0,a5
    2e24:	02c020ef          	jal	4e50 <print_hex>
    2e28:	00a00513          	li	a0,10
    2e2c:	689010ef          	jal	4cb4 <putchar>
    2e30:	00100073          	ebreak
    2e34:	800007b7          	lui	a5,0x80000
    2e38:	fef42623          	sw	a5,-20(s0)
    2e3c:	fe042423          	sw	zero,-24(s0)
    2e40:	fec42783          	lw	a5,-20(s0)
    2e44:	fe842703          	lw	a4,-24(s0)
    2e48:	40e787b3          	sub	a5,a5,a4
    2e4c:	fef42223          	sw	a5,-28(s0)
    2e50:	fe442703          	lw	a4,-28(s0)
    2e54:	800007b7          	lui	a5,0x80000
    2e58:	04f70063          	beq	a4,a5,2e98 <main+0x2e38>
    2e5c:	00100073          	ebreak
    2e60:	000107b7          	lui	a5,0x10
    2e64:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    2e68:	058020ef          	jal	4ec0 <printf>
    2e6c:	07400513          	li	a0,116
    2e70:	6c1010ef          	jal	4d30 <print_dec>
    2e74:	000107b7          	lui	a5,0x10
    2e78:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2e7c:	044020ef          	jal	4ec0 <printf>
    2e80:	fe442783          	lw	a5,-28(s0)
    2e84:	00078513          	mv	a0,a5
    2e88:	7c9010ef          	jal	4e50 <print_hex>
    2e8c:	00a00513          	li	a0,10
    2e90:	625010ef          	jal	4cb4 <putchar>
    2e94:	00100073          	ebreak
    2e98:	800007b7          	lui	a5,0x80000
    2e9c:	fef42623          	sw	a5,-20(s0)
    2ea0:	ffff87b7          	lui	a5,0xffff8
    2ea4:	fef42423          	sw	a5,-24(s0)
    2ea8:	fec42783          	lw	a5,-20(s0)
    2eac:	fe842703          	lw	a4,-24(s0)
    2eb0:	40e787b3          	sub	a5,a5,a4
    2eb4:	fef42223          	sw	a5,-28(s0)
    2eb8:	fe442703          	lw	a4,-28(s0)
    2ebc:	800087b7          	lui	a5,0x80008
    2ec0:	04f70063          	beq	a4,a5,2f00 <main+0x2ea0>
    2ec4:	00100073          	ebreak
    2ec8:	000107b7          	lui	a5,0x10
    2ecc:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    2ed0:	7f1010ef          	jal	4ec0 <printf>
    2ed4:	07500513          	li	a0,117
    2ed8:	659010ef          	jal	4d30 <print_dec>
    2edc:	000107b7          	lui	a5,0x10
    2ee0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2ee4:	7dd010ef          	jal	4ec0 <printf>
    2ee8:	fe442783          	lw	a5,-28(s0)
    2eec:	00078513          	mv	a0,a5
    2ef0:	761010ef          	jal	4e50 <print_hex>
    2ef4:	00a00513          	li	a0,10
    2ef8:	5bd010ef          	jal	4cb4 <putchar>
    2efc:	00100073          	ebreak
    2f00:	fe042623          	sw	zero,-20(s0)
    2f04:	000087b7          	lui	a5,0x8
    2f08:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    2f0c:	fef42423          	sw	a5,-24(s0)
    2f10:	fec42783          	lw	a5,-20(s0)
    2f14:	fe842703          	lw	a4,-24(s0)
    2f18:	40e787b3          	sub	a5,a5,a4
    2f1c:	fef42223          	sw	a5,-28(s0)
    2f20:	fe442703          	lw	a4,-28(s0)
    2f24:	ffff87b7          	lui	a5,0xffff8
    2f28:	00178793          	add	a5,a5,1 # ffff8001 <IO_BASE+0xffbf8001>
    2f2c:	04f70063          	beq	a4,a5,2f6c <main+0x2f0c>
    2f30:	00100073          	ebreak
    2f34:	000107b7          	lui	a5,0x10
    2f38:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    2f3c:	785010ef          	jal	4ec0 <printf>
    2f40:	07600513          	li	a0,118
    2f44:	5ed010ef          	jal	4d30 <print_dec>
    2f48:	000107b7          	lui	a5,0x10
    2f4c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2f50:	771010ef          	jal	4ec0 <printf>
    2f54:	fe442783          	lw	a5,-28(s0)
    2f58:	00078513          	mv	a0,a5
    2f5c:	6f5010ef          	jal	4e50 <print_hex>
    2f60:	00a00513          	li	a0,10
    2f64:	551010ef          	jal	4cb4 <putchar>
    2f68:	00100073          	ebreak
    2f6c:	800007b7          	lui	a5,0x80000
    2f70:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    2f74:	fef42623          	sw	a5,-20(s0)
    2f78:	fe042423          	sw	zero,-24(s0)
    2f7c:	fec42783          	lw	a5,-20(s0)
    2f80:	fe842703          	lw	a4,-24(s0)
    2f84:	40e787b3          	sub	a5,a5,a4
    2f88:	fef42223          	sw	a5,-28(s0)
    2f8c:	fe442703          	lw	a4,-28(s0)
    2f90:	800007b7          	lui	a5,0x80000
    2f94:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    2f98:	04f70063          	beq	a4,a5,2fd8 <main+0x2f78>
    2f9c:	00100073          	ebreak
    2fa0:	000107b7          	lui	a5,0x10
    2fa4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    2fa8:	719010ef          	jal	4ec0 <printf>
    2fac:	07700513          	li	a0,119
    2fb0:	581010ef          	jal	4d30 <print_dec>
    2fb4:	000107b7          	lui	a5,0x10
    2fb8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    2fbc:	705010ef          	jal	4ec0 <printf>
    2fc0:	fe442783          	lw	a5,-28(s0)
    2fc4:	00078513          	mv	a0,a5
    2fc8:	689010ef          	jal	4e50 <print_hex>
    2fcc:	00a00513          	li	a0,10
    2fd0:	4e5010ef          	jal	4cb4 <putchar>
    2fd4:	00100073          	ebreak
    2fd8:	800007b7          	lui	a5,0x80000
    2fdc:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    2fe0:	fef42623          	sw	a5,-20(s0)
    2fe4:	000087b7          	lui	a5,0x8
    2fe8:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    2fec:	fef42423          	sw	a5,-24(s0)
    2ff0:	fec42783          	lw	a5,-20(s0)
    2ff4:	fe842703          	lw	a4,-24(s0)
    2ff8:	40e787b3          	sub	a5,a5,a4
    2ffc:	fef42223          	sw	a5,-28(s0)
    3000:	fe442703          	lw	a4,-28(s0)
    3004:	7fff87b7          	lui	a5,0x7fff8
    3008:	04f70063          	beq	a4,a5,3048 <main+0x2fe8>
    300c:	00100073          	ebreak
    3010:	000107b7          	lui	a5,0x10
    3014:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3018:	6a9010ef          	jal	4ec0 <printf>
    301c:	07800513          	li	a0,120
    3020:	511010ef          	jal	4d30 <print_dec>
    3024:	000107b7          	lui	a5,0x10
    3028:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    302c:	695010ef          	jal	4ec0 <printf>
    3030:	fe442783          	lw	a5,-28(s0)
    3034:	00078513          	mv	a0,a5
    3038:	619010ef          	jal	4e50 <print_hex>
    303c:	00a00513          	li	a0,10
    3040:	475010ef          	jal	4cb4 <putchar>
    3044:	00100073          	ebreak
    3048:	800007b7          	lui	a5,0x80000
    304c:	fef42623          	sw	a5,-20(s0)
    3050:	000087b7          	lui	a5,0x8
    3054:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    3058:	fef42423          	sw	a5,-24(s0)
    305c:	fec42783          	lw	a5,-20(s0)
    3060:	fe842703          	lw	a4,-24(s0)
    3064:	40e787b3          	sub	a5,a5,a4
    3068:	fef42223          	sw	a5,-28(s0)
    306c:	fe442703          	lw	a4,-28(s0)
    3070:	7fff87b7          	lui	a5,0x7fff8
    3074:	00178793          	add	a5,a5,1 # 7fff8001 <IO_BASE+0x7fbf8001>
    3078:	04f70063          	beq	a4,a5,30b8 <main+0x3058>
    307c:	00100073          	ebreak
    3080:	000107b7          	lui	a5,0x10
    3084:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3088:	639010ef          	jal	4ec0 <printf>
    308c:	07900513          	li	a0,121
    3090:	4a1010ef          	jal	4d30 <print_dec>
    3094:	000107b7          	lui	a5,0x10
    3098:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    309c:	625010ef          	jal	4ec0 <printf>
    30a0:	fe442783          	lw	a5,-28(s0)
    30a4:	00078513          	mv	a0,a5
    30a8:	5a9010ef          	jal	4e50 <print_hex>
    30ac:	00a00513          	li	a0,10
    30b0:	405010ef          	jal	4cb4 <putchar>
    30b4:	00100073          	ebreak
    30b8:	800007b7          	lui	a5,0x80000
    30bc:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    30c0:	fef42623          	sw	a5,-20(s0)
    30c4:	ffff87b7          	lui	a5,0xffff8
    30c8:	fef42423          	sw	a5,-24(s0)
    30cc:	fec42783          	lw	a5,-20(s0)
    30d0:	fe842703          	lw	a4,-24(s0)
    30d4:	40e787b3          	sub	a5,a5,a4
    30d8:	fef42223          	sw	a5,-28(s0)
    30dc:	fe442703          	lw	a4,-28(s0)
    30e0:	800087b7          	lui	a5,0x80008
    30e4:	fff78793          	add	a5,a5,-1 # 80007fff <IO_BASE+0x7fc07fff>
    30e8:	04f70063          	beq	a4,a5,3128 <main+0x30c8>
    30ec:	00100073          	ebreak
    30f0:	000107b7          	lui	a5,0x10
    30f4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    30f8:	5c9010ef          	jal	4ec0 <printf>
    30fc:	07a00513          	li	a0,122
    3100:	431010ef          	jal	4d30 <print_dec>
    3104:	000107b7          	lui	a5,0x10
    3108:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    310c:	5b5010ef          	jal	4ec0 <printf>
    3110:	fe442783          	lw	a5,-28(s0)
    3114:	00078513          	mv	a0,a5
    3118:	539010ef          	jal	4e50 <print_hex>
    311c:	00a00513          	li	a0,10
    3120:	395010ef          	jal	4cb4 <putchar>
    3124:	00100073          	ebreak
    3128:	fe042623          	sw	zero,-20(s0)
    312c:	fff00793          	li	a5,-1
    3130:	fef42423          	sw	a5,-24(s0)
    3134:	fec42783          	lw	a5,-20(s0)
    3138:	fe842703          	lw	a4,-24(s0)
    313c:	40e787b3          	sub	a5,a5,a4
    3140:	fef42223          	sw	a5,-28(s0)
    3144:	fe442703          	lw	a4,-28(s0)
    3148:	00100793          	li	a5,1
    314c:	04f70063          	beq	a4,a5,318c <main+0x312c>
    3150:	00100073          	ebreak
    3154:	000107b7          	lui	a5,0x10
    3158:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    315c:	565010ef          	jal	4ec0 <printf>
    3160:	07b00513          	li	a0,123
    3164:	3cd010ef          	jal	4d30 <print_dec>
    3168:	000107b7          	lui	a5,0x10
    316c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3170:	551010ef          	jal	4ec0 <printf>
    3174:	fe442783          	lw	a5,-28(s0)
    3178:	00078513          	mv	a0,a5
    317c:	4d5010ef          	jal	4e50 <print_hex>
    3180:	00a00513          	li	a0,10
    3184:	331010ef          	jal	4cb4 <putchar>
    3188:	00100073          	ebreak
    318c:	fff00793          	li	a5,-1
    3190:	fef42623          	sw	a5,-20(s0)
    3194:	00100793          	li	a5,1
    3198:	fef42423          	sw	a5,-24(s0)
    319c:	fec42783          	lw	a5,-20(s0)
    31a0:	fe842703          	lw	a4,-24(s0)
    31a4:	40e787b3          	sub	a5,a5,a4
    31a8:	fef42223          	sw	a5,-28(s0)
    31ac:	fe442703          	lw	a4,-28(s0)
    31b0:	ffe00793          	li	a5,-2
    31b4:	04f70063          	beq	a4,a5,31f4 <main+0x3194>
    31b8:	00100073          	ebreak
    31bc:	000107b7          	lui	a5,0x10
    31c0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    31c4:	4fd010ef          	jal	4ec0 <printf>
    31c8:	07c00513          	li	a0,124
    31cc:	365010ef          	jal	4d30 <print_dec>
    31d0:	000107b7          	lui	a5,0x10
    31d4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    31d8:	4e9010ef          	jal	4ec0 <printf>
    31dc:	fe442783          	lw	a5,-28(s0)
    31e0:	00078513          	mv	a0,a5
    31e4:	46d010ef          	jal	4e50 <print_hex>
    31e8:	00a00513          	li	a0,10
    31ec:	2c9010ef          	jal	4cb4 <putchar>
    31f0:	00100073          	ebreak
    31f4:	fff00793          	li	a5,-1
    31f8:	fef42623          	sw	a5,-20(s0)
    31fc:	fff00793          	li	a5,-1
    3200:	fef42423          	sw	a5,-24(s0)
    3204:	fec42783          	lw	a5,-20(s0)
    3208:	fe842703          	lw	a4,-24(s0)
    320c:	40e787b3          	sub	a5,a5,a4
    3210:	fef42223          	sw	a5,-28(s0)
    3214:	fe442783          	lw	a5,-28(s0)
    3218:	04078063          	beqz	a5,3258 <main+0x31f8>
    321c:	00100073          	ebreak
    3220:	000107b7          	lui	a5,0x10
    3224:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3228:	499010ef          	jal	4ec0 <printf>
    322c:	07d00513          	li	a0,125
    3230:	301010ef          	jal	4d30 <print_dec>
    3234:	000107b7          	lui	a5,0x10
    3238:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    323c:	485010ef          	jal	4ec0 <printf>
    3240:	fe442783          	lw	a5,-28(s0)
    3244:	00078513          	mv	a0,a5
    3248:	409010ef          	jal	4e50 <print_hex>
    324c:	00a00513          	li	a0,10
    3250:	265010ef          	jal	4cb4 <putchar>
    3254:	00100073          	ebreak
    3258:	ff0107b7          	lui	a5,0xff010
    325c:	f0078793          	add	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
    3260:	fef42623          	sw	a5,-20(s0)
    3264:	0f0f17b7          	lui	a5,0xf0f1
    3268:	f0f78793          	add	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
    326c:	fef42423          	sw	a5,-24(s0)
    3270:	fec42783          	lw	a5,-20(s0)
    3274:	fe842703          	lw	a4,-24(s0)
    3278:	00e7c7b3          	xor	a5,a5,a4
    327c:	fef42223          	sw	a5,-28(s0)
    3280:	fe442703          	lw	a4,-28(s0)
    3284:	f00ff7b7          	lui	a5,0xf00ff
    3288:	00f78793          	add	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
    328c:	04f70063          	beq	a4,a5,32cc <main+0x326c>
    3290:	00100073          	ebreak
    3294:	000107b7          	lui	a5,0x10
    3298:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    329c:	425010ef          	jal	4ec0 <printf>
    32a0:	07e00513          	li	a0,126
    32a4:	28d010ef          	jal	4d30 <print_dec>
    32a8:	000107b7          	lui	a5,0x10
    32ac:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    32b0:	411010ef          	jal	4ec0 <printf>
    32b4:	fe442783          	lw	a5,-28(s0)
    32b8:	00078513          	mv	a0,a5
    32bc:	395010ef          	jal	4e50 <print_hex>
    32c0:	00a00513          	li	a0,10
    32c4:	1f1010ef          	jal	4cb4 <putchar>
    32c8:	00100073          	ebreak
    32cc:	0ff017b7          	lui	a5,0xff01
    32d0:	ff078793          	add	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
    32d4:	fef42623          	sw	a5,-20(s0)
    32d8:	f0f0f7b7          	lui	a5,0xf0f0f
    32dc:	0f078793          	add	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
    32e0:	fef42423          	sw	a5,-24(s0)
    32e4:	fec42783          	lw	a5,-20(s0)
    32e8:	fe842703          	lw	a4,-24(s0)
    32ec:	00e7c7b3          	xor	a5,a5,a4
    32f0:	fef42223          	sw	a5,-28(s0)
    32f4:	fe442703          	lw	a4,-28(s0)
    32f8:	ff0107b7          	lui	a5,0xff010
    32fc:	f0078793          	add	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
    3300:	04f70063          	beq	a4,a5,3340 <main+0x32e0>
    3304:	00100073          	ebreak
    3308:	000107b7          	lui	a5,0x10
    330c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3310:	3b1010ef          	jal	4ec0 <printf>
    3314:	07f00513          	li	a0,127
    3318:	219010ef          	jal	4d30 <print_dec>
    331c:	000107b7          	lui	a5,0x10
    3320:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3324:	39d010ef          	jal	4ec0 <printf>
    3328:	fe442783          	lw	a5,-28(s0)
    332c:	00078513          	mv	a0,a5
    3330:	321010ef          	jal	4e50 <print_hex>
    3334:	00a00513          	li	a0,10
    3338:	17d010ef          	jal	4cb4 <putchar>
    333c:	00100073          	ebreak
    3340:	00ff07b7          	lui	a5,0xff0
    3344:	0ff78793          	add	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
    3348:	fef42623          	sw	a5,-20(s0)
    334c:	0f0f17b7          	lui	a5,0xf0f1
    3350:	f0f78793          	add	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
    3354:	fef42423          	sw	a5,-24(s0)
    3358:	fec42783          	lw	a5,-20(s0)
    335c:	fe842703          	lw	a4,-24(s0)
    3360:	00e7c7b3          	xor	a5,a5,a4
    3364:	fef42223          	sw	a5,-28(s0)
    3368:	fe442703          	lw	a4,-28(s0)
    336c:	0ff017b7          	lui	a5,0xff01
    3370:	ff078793          	add	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
    3374:	04f70063          	beq	a4,a5,33b4 <main+0x3354>
    3378:	00100073          	ebreak
    337c:	000107b7          	lui	a5,0x10
    3380:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3384:	33d010ef          	jal	4ec0 <printf>
    3388:	08000513          	li	a0,128
    338c:	1a5010ef          	jal	4d30 <print_dec>
    3390:	000107b7          	lui	a5,0x10
    3394:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3398:	329010ef          	jal	4ec0 <printf>
    339c:	fe442783          	lw	a5,-28(s0)
    33a0:	00078513          	mv	a0,a5
    33a4:	2ad010ef          	jal	4e50 <print_hex>
    33a8:	00a00513          	li	a0,10
    33ac:	109010ef          	jal	4cb4 <putchar>
    33b0:	00100073          	ebreak
    33b4:	f00ff7b7          	lui	a5,0xf00ff
    33b8:	00f78793          	add	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
    33bc:	fef42623          	sw	a5,-20(s0)
    33c0:	f0f0f7b7          	lui	a5,0xf0f0f
    33c4:	0f078793          	add	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
    33c8:	fef42423          	sw	a5,-24(s0)
    33cc:	fec42783          	lw	a5,-20(s0)
    33d0:	fe842703          	lw	a4,-24(s0)
    33d4:	00e7c7b3          	xor	a5,a5,a4
    33d8:	fef42223          	sw	a5,-28(s0)
    33dc:	fe442703          	lw	a4,-28(s0)
    33e0:	00ff07b7          	lui	a5,0xff0
    33e4:	0ff78793          	add	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
    33e8:	04f70063          	beq	a4,a5,3428 <main+0x33c8>
    33ec:	00100073          	ebreak
    33f0:	000107b7          	lui	a5,0x10
    33f4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    33f8:	2c9010ef          	jal	4ec0 <printf>
    33fc:	08100513          	li	a0,129
    3400:	131010ef          	jal	4d30 <print_dec>
    3404:	000107b7          	lui	a5,0x10
    3408:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    340c:	2b5010ef          	jal	4ec0 <printf>
    3410:	fe442783          	lw	a5,-28(s0)
    3414:	00078513          	mv	a0,a5
    3418:	239010ef          	jal	4e50 <print_hex>
    341c:	00a00513          	li	a0,10
    3420:	095010ef          	jal	4cb4 <putchar>
    3424:	00100073          	ebreak
    3428:	00ff17b7          	lui	a5,0xff1
    342c:	f0078793          	add	a5,a5,-256 # ff0f00 <IO_BASE+0xbf0f00>
    3430:	fef42623          	sw	a5,-20(s0)
    3434:	fec42783          	lw	a5,-20(s0)
    3438:	f0f7c793          	xor	a5,a5,-241
    343c:	fef42223          	sw	a5,-28(s0)
    3440:	fe442703          	lw	a4,-28(s0)
    3444:	ff00f7b7          	lui	a5,0xff00f
    3448:	00f78793          	add	a5,a5,15 # ff00f00f <IO_BASE+0xfec0f00f>
    344c:	04f70063          	beq	a4,a5,348c <main+0x342c>
    3450:	00100073          	ebreak
    3454:	000107b7          	lui	a5,0x10
    3458:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    345c:	265010ef          	jal	4ec0 <printf>
    3460:	08200513          	li	a0,130
    3464:	0cd010ef          	jal	4d30 <print_dec>
    3468:	000107b7          	lui	a5,0x10
    346c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3470:	251010ef          	jal	4ec0 <printf>
    3474:	fe442783          	lw	a5,-28(s0)
    3478:	00078513          	mv	a0,a5
    347c:	1d5010ef          	jal	4e50 <print_hex>
    3480:	00a00513          	li	a0,10
    3484:	031010ef          	jal	4cb4 <putchar>
    3488:	00100073          	ebreak
    348c:	0ff017b7          	lui	a5,0xff01
    3490:	ff078793          	add	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
    3494:	fef42623          	sw	a5,-20(s0)
    3498:	fec42783          	lw	a5,-20(s0)
    349c:	0f07c793          	xor	a5,a5,240
    34a0:	fef42223          	sw	a5,-28(s0)
    34a4:	fe442703          	lw	a4,-28(s0)
    34a8:	0ff017b7          	lui	a5,0xff01
    34ac:	f0078793          	add	a5,a5,-256 # ff00f00 <IO_BASE+0xfb00f00>
    34b0:	04f70063          	beq	a4,a5,34f0 <main+0x3490>
    34b4:	00100073          	ebreak
    34b8:	000107b7          	lui	a5,0x10
    34bc:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    34c0:	201010ef          	jal	4ec0 <printf>
    34c4:	08300513          	li	a0,131
    34c8:	069010ef          	jal	4d30 <print_dec>
    34cc:	000107b7          	lui	a5,0x10
    34d0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    34d4:	1ed010ef          	jal	4ec0 <printf>
    34d8:	fe442783          	lw	a5,-28(s0)
    34dc:	00078513          	mv	a0,a5
    34e0:	171010ef          	jal	4e50 <print_hex>
    34e4:	00a00513          	li	a0,10
    34e8:	7cc010ef          	jal	4cb4 <putchar>
    34ec:	00100073          	ebreak
    34f0:	00ff17b7          	lui	a5,0xff1
    34f4:	8ff78793          	add	a5,a5,-1793 # ff08ff <IO_BASE+0xbf08ff>
    34f8:	fef42623          	sw	a5,-20(s0)
    34fc:	fec42783          	lw	a5,-20(s0)
    3500:	70f7c793          	xor	a5,a5,1807
    3504:	fef42223          	sw	a5,-28(s0)
    3508:	fe442703          	lw	a4,-28(s0)
    350c:	00ff17b7          	lui	a5,0xff1
    3510:	ff078793          	add	a5,a5,-16 # ff0ff0 <IO_BASE+0xbf0ff0>
    3514:	04f70063          	beq	a4,a5,3554 <main+0x34f4>
    3518:	00100073          	ebreak
    351c:	000107b7          	lui	a5,0x10
    3520:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3524:	19d010ef          	jal	4ec0 <printf>
    3528:	08400513          	li	a0,132
    352c:	005010ef          	jal	4d30 <print_dec>
    3530:	000107b7          	lui	a5,0x10
    3534:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3538:	189010ef          	jal	4ec0 <printf>
    353c:	fe442783          	lw	a5,-28(s0)
    3540:	00078513          	mv	a0,a5
    3544:	10d010ef          	jal	4e50 <print_hex>
    3548:	00a00513          	li	a0,10
    354c:	768010ef          	jal	4cb4 <putchar>
    3550:	00100073          	ebreak
    3554:	f00ff7b7          	lui	a5,0xf00ff
    3558:	00f78793          	add	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
    355c:	fef42623          	sw	a5,-20(s0)
    3560:	fec42783          	lw	a5,-20(s0)
    3564:	0f07c793          	xor	a5,a5,240
    3568:	fef42223          	sw	a5,-28(s0)
    356c:	fe442703          	lw	a4,-28(s0)
    3570:	f00ff7b7          	lui	a5,0xf00ff
    3574:	0ff78793          	add	a5,a5,255 # f00ff0ff <IO_BASE+0xefcff0ff>
    3578:	04f70063          	beq	a4,a5,35b8 <main+0x3558>
    357c:	00100073          	ebreak
    3580:	000107b7          	lui	a5,0x10
    3584:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3588:	139010ef          	jal	4ec0 <printf>
    358c:	08500513          	li	a0,133
    3590:	7a0010ef          	jal	4d30 <print_dec>
    3594:	000107b7          	lui	a5,0x10
    3598:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    359c:	125010ef          	jal	4ec0 <printf>
    35a0:	fe442783          	lw	a5,-28(s0)
    35a4:	00078513          	mv	a0,a5
    35a8:	0a9010ef          	jal	4e50 <print_hex>
    35ac:	00a00513          	li	a0,10
    35b0:	704010ef          	jal	4cb4 <putchar>
    35b4:	00100073          	ebreak
    35b8:	fe042623          	sw	zero,-20(s0)
    35bc:	fe042423          	sw	zero,-24(s0)
    35c0:	fec42783          	lw	a5,-20(s0)
    35c4:	fe842703          	lw	a4,-24(s0)
    35c8:	00e7a7b3          	slt	a5,a5,a4
    35cc:	fef42223          	sw	a5,-28(s0)
    35d0:	fe442783          	lw	a5,-28(s0)
    35d4:	04078063          	beqz	a5,3614 <main+0x35b4>
    35d8:	00100073          	ebreak
    35dc:	000107b7          	lui	a5,0x10
    35e0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    35e4:	0dd010ef          	jal	4ec0 <printf>
    35e8:	08600513          	li	a0,134
    35ec:	744010ef          	jal	4d30 <print_dec>
    35f0:	000107b7          	lui	a5,0x10
    35f4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    35f8:	0c9010ef          	jal	4ec0 <printf>
    35fc:	fe442783          	lw	a5,-28(s0)
    3600:	00078513          	mv	a0,a5
    3604:	04d010ef          	jal	4e50 <print_hex>
    3608:	00a00513          	li	a0,10
    360c:	6a8010ef          	jal	4cb4 <putchar>
    3610:	00100073          	ebreak
    3614:	00100793          	li	a5,1
    3618:	fef42623          	sw	a5,-20(s0)
    361c:	00100793          	li	a5,1
    3620:	fef42423          	sw	a5,-24(s0)
    3624:	fec42783          	lw	a5,-20(s0)
    3628:	fe842703          	lw	a4,-24(s0)
    362c:	00e7a7b3          	slt	a5,a5,a4
    3630:	fef42223          	sw	a5,-28(s0)
    3634:	fe442783          	lw	a5,-28(s0)
    3638:	04078063          	beqz	a5,3678 <main+0x3618>
    363c:	00100073          	ebreak
    3640:	000107b7          	lui	a5,0x10
    3644:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3648:	079010ef          	jal	4ec0 <printf>
    364c:	08700513          	li	a0,135
    3650:	6e0010ef          	jal	4d30 <print_dec>
    3654:	000107b7          	lui	a5,0x10
    3658:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    365c:	065010ef          	jal	4ec0 <printf>
    3660:	fe442783          	lw	a5,-28(s0)
    3664:	00078513          	mv	a0,a5
    3668:	7e8010ef          	jal	4e50 <print_hex>
    366c:	00a00513          	li	a0,10
    3670:	644010ef          	jal	4cb4 <putchar>
    3674:	00100073          	ebreak
    3678:	00300793          	li	a5,3
    367c:	fef42623          	sw	a5,-20(s0)
    3680:	00700793          	li	a5,7
    3684:	fef42423          	sw	a5,-24(s0)
    3688:	fec42783          	lw	a5,-20(s0)
    368c:	fe842703          	lw	a4,-24(s0)
    3690:	00e7a7b3          	slt	a5,a5,a4
    3694:	fef42223          	sw	a5,-28(s0)
    3698:	fe442703          	lw	a4,-28(s0)
    369c:	00100793          	li	a5,1
    36a0:	04f70063          	beq	a4,a5,36e0 <main+0x3680>
    36a4:	00100073          	ebreak
    36a8:	000107b7          	lui	a5,0x10
    36ac:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    36b0:	011010ef          	jal	4ec0 <printf>
    36b4:	08800513          	li	a0,136
    36b8:	678010ef          	jal	4d30 <print_dec>
    36bc:	000107b7          	lui	a5,0x10
    36c0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    36c4:	7fc010ef          	jal	4ec0 <printf>
    36c8:	fe442783          	lw	a5,-28(s0)
    36cc:	00078513          	mv	a0,a5
    36d0:	780010ef          	jal	4e50 <print_hex>
    36d4:	00a00513          	li	a0,10
    36d8:	5dc010ef          	jal	4cb4 <putchar>
    36dc:	00100073          	ebreak
    36e0:	00700793          	li	a5,7
    36e4:	fef42623          	sw	a5,-20(s0)
    36e8:	00300793          	li	a5,3
    36ec:	fef42423          	sw	a5,-24(s0)
    36f0:	fec42783          	lw	a5,-20(s0)
    36f4:	fe842703          	lw	a4,-24(s0)
    36f8:	00e7a7b3          	slt	a5,a5,a4
    36fc:	fef42223          	sw	a5,-28(s0)
    3700:	fe442783          	lw	a5,-28(s0)
    3704:	04078063          	beqz	a5,3744 <main+0x36e4>
    3708:	00100073          	ebreak
    370c:	000107b7          	lui	a5,0x10
    3710:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3714:	7ac010ef          	jal	4ec0 <printf>
    3718:	08900513          	li	a0,137
    371c:	614010ef          	jal	4d30 <print_dec>
    3720:	000107b7          	lui	a5,0x10
    3724:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3728:	798010ef          	jal	4ec0 <printf>
    372c:	fe442783          	lw	a5,-28(s0)
    3730:	00078513          	mv	a0,a5
    3734:	71c010ef          	jal	4e50 <print_hex>
    3738:	00a00513          	li	a0,10
    373c:	578010ef          	jal	4cb4 <putchar>
    3740:	00100073          	ebreak
    3744:	fe042623          	sw	zero,-20(s0)
    3748:	ffff87b7          	lui	a5,0xffff8
    374c:	fef42423          	sw	a5,-24(s0)
    3750:	fec42783          	lw	a5,-20(s0)
    3754:	fe842703          	lw	a4,-24(s0)
    3758:	00e7a7b3          	slt	a5,a5,a4
    375c:	fef42223          	sw	a5,-28(s0)
    3760:	fe442783          	lw	a5,-28(s0)
    3764:	04078063          	beqz	a5,37a4 <main+0x3744>
    3768:	00100073          	ebreak
    376c:	000107b7          	lui	a5,0x10
    3770:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3774:	74c010ef          	jal	4ec0 <printf>
    3778:	08a00513          	li	a0,138
    377c:	5b4010ef          	jal	4d30 <print_dec>
    3780:	000107b7          	lui	a5,0x10
    3784:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3788:	738010ef          	jal	4ec0 <printf>
    378c:	fe442783          	lw	a5,-28(s0)
    3790:	00078513          	mv	a0,a5
    3794:	6bc010ef          	jal	4e50 <print_hex>
    3798:	00a00513          	li	a0,10
    379c:	518010ef          	jal	4cb4 <putchar>
    37a0:	00100073          	ebreak
    37a4:	800007b7          	lui	a5,0x80000
    37a8:	fef42623          	sw	a5,-20(s0)
    37ac:	fe042423          	sw	zero,-24(s0)
    37b0:	fec42783          	lw	a5,-20(s0)
    37b4:	fe842703          	lw	a4,-24(s0)
    37b8:	00e7a7b3          	slt	a5,a5,a4
    37bc:	fef42223          	sw	a5,-28(s0)
    37c0:	fe442703          	lw	a4,-28(s0)
    37c4:	00100793          	li	a5,1
    37c8:	04f70063          	beq	a4,a5,3808 <main+0x37a8>
    37cc:	00100073          	ebreak
    37d0:	000107b7          	lui	a5,0x10
    37d4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    37d8:	6e8010ef          	jal	4ec0 <printf>
    37dc:	08b00513          	li	a0,139
    37e0:	550010ef          	jal	4d30 <print_dec>
    37e4:	000107b7          	lui	a5,0x10
    37e8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    37ec:	6d4010ef          	jal	4ec0 <printf>
    37f0:	fe442783          	lw	a5,-28(s0)
    37f4:	00078513          	mv	a0,a5
    37f8:	658010ef          	jal	4e50 <print_hex>
    37fc:	00a00513          	li	a0,10
    3800:	4b4010ef          	jal	4cb4 <putchar>
    3804:	00100073          	ebreak
    3808:	800007b7          	lui	a5,0x80000
    380c:	fef42623          	sw	a5,-20(s0)
    3810:	ffff87b7          	lui	a5,0xffff8
    3814:	fef42423          	sw	a5,-24(s0)
    3818:	fec42783          	lw	a5,-20(s0)
    381c:	fe842703          	lw	a4,-24(s0)
    3820:	00e7a7b3          	slt	a5,a5,a4
    3824:	fef42223          	sw	a5,-28(s0)
    3828:	fe442703          	lw	a4,-28(s0)
    382c:	00100793          	li	a5,1
    3830:	04f70063          	beq	a4,a5,3870 <main+0x3810>
    3834:	00100073          	ebreak
    3838:	000107b7          	lui	a5,0x10
    383c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3840:	680010ef          	jal	4ec0 <printf>
    3844:	08c00513          	li	a0,140
    3848:	4e8010ef          	jal	4d30 <print_dec>
    384c:	000107b7          	lui	a5,0x10
    3850:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3854:	66c010ef          	jal	4ec0 <printf>
    3858:	fe442783          	lw	a5,-28(s0)
    385c:	00078513          	mv	a0,a5
    3860:	5f0010ef          	jal	4e50 <print_hex>
    3864:	00a00513          	li	a0,10
    3868:	44c010ef          	jal	4cb4 <putchar>
    386c:	00100073          	ebreak
    3870:	fe042623          	sw	zero,-20(s0)
    3874:	000087b7          	lui	a5,0x8
    3878:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    387c:	fef42423          	sw	a5,-24(s0)
    3880:	fec42783          	lw	a5,-20(s0)
    3884:	fe842703          	lw	a4,-24(s0)
    3888:	00e7a7b3          	slt	a5,a5,a4
    388c:	fef42223          	sw	a5,-28(s0)
    3890:	fe442703          	lw	a4,-28(s0)
    3894:	00100793          	li	a5,1
    3898:	04f70063          	beq	a4,a5,38d8 <main+0x3878>
    389c:	00100073          	ebreak
    38a0:	000107b7          	lui	a5,0x10
    38a4:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    38a8:	618010ef          	jal	4ec0 <printf>
    38ac:	08d00513          	li	a0,141
    38b0:	480010ef          	jal	4d30 <print_dec>
    38b4:	000107b7          	lui	a5,0x10
    38b8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    38bc:	604010ef          	jal	4ec0 <printf>
    38c0:	fe442783          	lw	a5,-28(s0)
    38c4:	00078513          	mv	a0,a5
    38c8:	588010ef          	jal	4e50 <print_hex>
    38cc:	00a00513          	li	a0,10
    38d0:	3e4010ef          	jal	4cb4 <putchar>
    38d4:	00100073          	ebreak
    38d8:	800007b7          	lui	a5,0x80000
    38dc:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    38e0:	fef42623          	sw	a5,-20(s0)
    38e4:	fe042423          	sw	zero,-24(s0)
    38e8:	fec42783          	lw	a5,-20(s0)
    38ec:	fe842703          	lw	a4,-24(s0)
    38f0:	00e7a7b3          	slt	a5,a5,a4
    38f4:	fef42223          	sw	a5,-28(s0)
    38f8:	fe442783          	lw	a5,-28(s0)
    38fc:	04078063          	beqz	a5,393c <main+0x38dc>
    3900:	00100073          	ebreak
    3904:	000107b7          	lui	a5,0x10
    3908:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    390c:	5b4010ef          	jal	4ec0 <printf>
    3910:	08e00513          	li	a0,142
    3914:	41c010ef          	jal	4d30 <print_dec>
    3918:	000107b7          	lui	a5,0x10
    391c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3920:	5a0010ef          	jal	4ec0 <printf>
    3924:	fe442783          	lw	a5,-28(s0)
    3928:	00078513          	mv	a0,a5
    392c:	524010ef          	jal	4e50 <print_hex>
    3930:	00a00513          	li	a0,10
    3934:	380010ef          	jal	4cb4 <putchar>
    3938:	00100073          	ebreak
    393c:	800007b7          	lui	a5,0x80000
    3940:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    3944:	fef42623          	sw	a5,-20(s0)
    3948:	000087b7          	lui	a5,0x8
    394c:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    3950:	fef42423          	sw	a5,-24(s0)
    3954:	fec42783          	lw	a5,-20(s0)
    3958:	fe842703          	lw	a4,-24(s0)
    395c:	00e7a7b3          	slt	a5,a5,a4
    3960:	fef42223          	sw	a5,-28(s0)
    3964:	fe442783          	lw	a5,-28(s0)
    3968:	04078063          	beqz	a5,39a8 <main+0x3948>
    396c:	00100073          	ebreak
    3970:	000107b7          	lui	a5,0x10
    3974:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3978:	548010ef          	jal	4ec0 <printf>
    397c:	08f00513          	li	a0,143
    3980:	3b0010ef          	jal	4d30 <print_dec>
    3984:	000107b7          	lui	a5,0x10
    3988:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    398c:	534010ef          	jal	4ec0 <printf>
    3990:	fe442783          	lw	a5,-28(s0)
    3994:	00078513          	mv	a0,a5
    3998:	4b8010ef          	jal	4e50 <print_hex>
    399c:	00a00513          	li	a0,10
    39a0:	314010ef          	jal	4cb4 <putchar>
    39a4:	00100073          	ebreak
    39a8:	800007b7          	lui	a5,0x80000
    39ac:	fef42623          	sw	a5,-20(s0)
    39b0:	000087b7          	lui	a5,0x8
    39b4:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    39b8:	fef42423          	sw	a5,-24(s0)
    39bc:	fec42783          	lw	a5,-20(s0)
    39c0:	fe842703          	lw	a4,-24(s0)
    39c4:	00e7a7b3          	slt	a5,a5,a4
    39c8:	fef42223          	sw	a5,-28(s0)
    39cc:	fe442703          	lw	a4,-28(s0)
    39d0:	00100793          	li	a5,1
    39d4:	04f70063          	beq	a4,a5,3a14 <main+0x39b4>
    39d8:	00100073          	ebreak
    39dc:	000107b7          	lui	a5,0x10
    39e0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    39e4:	4dc010ef          	jal	4ec0 <printf>
    39e8:	09000513          	li	a0,144
    39ec:	344010ef          	jal	4d30 <print_dec>
    39f0:	000107b7          	lui	a5,0x10
    39f4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    39f8:	4c8010ef          	jal	4ec0 <printf>
    39fc:	fe442783          	lw	a5,-28(s0)
    3a00:	00078513          	mv	a0,a5
    3a04:	44c010ef          	jal	4e50 <print_hex>
    3a08:	00a00513          	li	a0,10
    3a0c:	2a8010ef          	jal	4cb4 <putchar>
    3a10:	00100073          	ebreak
    3a14:	800007b7          	lui	a5,0x80000
    3a18:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    3a1c:	fef42623          	sw	a5,-20(s0)
    3a20:	ffff87b7          	lui	a5,0xffff8
    3a24:	fef42423          	sw	a5,-24(s0)
    3a28:	fec42783          	lw	a5,-20(s0)
    3a2c:	fe842703          	lw	a4,-24(s0)
    3a30:	00e7a7b3          	slt	a5,a5,a4
    3a34:	fef42223          	sw	a5,-28(s0)
    3a38:	fe442783          	lw	a5,-28(s0)
    3a3c:	04078063          	beqz	a5,3a7c <main+0x3a1c>
    3a40:	00100073          	ebreak
    3a44:	000107b7          	lui	a5,0x10
    3a48:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3a4c:	474010ef          	jal	4ec0 <printf>
    3a50:	09100513          	li	a0,145
    3a54:	2dc010ef          	jal	4d30 <print_dec>
    3a58:	000107b7          	lui	a5,0x10
    3a5c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3a60:	460010ef          	jal	4ec0 <printf>
    3a64:	fe442783          	lw	a5,-28(s0)
    3a68:	00078513          	mv	a0,a5
    3a6c:	3e4010ef          	jal	4e50 <print_hex>
    3a70:	00a00513          	li	a0,10
    3a74:	240010ef          	jal	4cb4 <putchar>
    3a78:	00100073          	ebreak
    3a7c:	fe042623          	sw	zero,-20(s0)
    3a80:	fff00793          	li	a5,-1
    3a84:	fef42423          	sw	a5,-24(s0)
    3a88:	fec42783          	lw	a5,-20(s0)
    3a8c:	fe842703          	lw	a4,-24(s0)
    3a90:	00e7a7b3          	slt	a5,a5,a4
    3a94:	fef42223          	sw	a5,-28(s0)
    3a98:	fe442783          	lw	a5,-28(s0)
    3a9c:	04078063          	beqz	a5,3adc <main+0x3a7c>
    3aa0:	00100073          	ebreak
    3aa4:	000107b7          	lui	a5,0x10
    3aa8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3aac:	414010ef          	jal	4ec0 <printf>
    3ab0:	09200513          	li	a0,146
    3ab4:	27c010ef          	jal	4d30 <print_dec>
    3ab8:	000107b7          	lui	a5,0x10
    3abc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3ac0:	400010ef          	jal	4ec0 <printf>
    3ac4:	fe442783          	lw	a5,-28(s0)
    3ac8:	00078513          	mv	a0,a5
    3acc:	384010ef          	jal	4e50 <print_hex>
    3ad0:	00a00513          	li	a0,10
    3ad4:	1e0010ef          	jal	4cb4 <putchar>
    3ad8:	00100073          	ebreak
    3adc:	fff00793          	li	a5,-1
    3ae0:	fef42623          	sw	a5,-20(s0)
    3ae4:	00100793          	li	a5,1
    3ae8:	fef42423          	sw	a5,-24(s0)
    3aec:	fec42783          	lw	a5,-20(s0)
    3af0:	fe842703          	lw	a4,-24(s0)
    3af4:	00e7a7b3          	slt	a5,a5,a4
    3af8:	fef42223          	sw	a5,-28(s0)
    3afc:	fe442703          	lw	a4,-28(s0)
    3b00:	00100793          	li	a5,1
    3b04:	04f70063          	beq	a4,a5,3b44 <main+0x3ae4>
    3b08:	00100073          	ebreak
    3b0c:	000107b7          	lui	a5,0x10
    3b10:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3b14:	3ac010ef          	jal	4ec0 <printf>
    3b18:	09300513          	li	a0,147
    3b1c:	214010ef          	jal	4d30 <print_dec>
    3b20:	000107b7          	lui	a5,0x10
    3b24:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3b28:	398010ef          	jal	4ec0 <printf>
    3b2c:	fe442783          	lw	a5,-28(s0)
    3b30:	00078513          	mv	a0,a5
    3b34:	31c010ef          	jal	4e50 <print_hex>
    3b38:	00a00513          	li	a0,10
    3b3c:	178010ef          	jal	4cb4 <putchar>
    3b40:	00100073          	ebreak
    3b44:	fff00793          	li	a5,-1
    3b48:	fef42623          	sw	a5,-20(s0)
    3b4c:	fff00793          	li	a5,-1
    3b50:	fef42423          	sw	a5,-24(s0)
    3b54:	fec42783          	lw	a5,-20(s0)
    3b58:	fe842703          	lw	a4,-24(s0)
    3b5c:	00e7a7b3          	slt	a5,a5,a4
    3b60:	fef42223          	sw	a5,-28(s0)
    3b64:	fe442783          	lw	a5,-28(s0)
    3b68:	04078063          	beqz	a5,3ba8 <main+0x3b48>
    3b6c:	00100073          	ebreak
    3b70:	000107b7          	lui	a5,0x10
    3b74:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    3b78:	348010ef          	jal	4ec0 <printf>
    3b7c:	09400513          	li	a0,148
    3b80:	1b0010ef          	jal	4d30 <print_dec>
    3b84:	000107b7          	lui	a5,0x10
    3b88:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3b8c:	334010ef          	jal	4ec0 <printf>
    3b90:	fe442783          	lw	a5,-28(s0)
    3b94:	00078513          	mv	a0,a5
    3b98:	2b8010ef          	jal	4e50 <print_hex>
    3b9c:	00a00513          	li	a0,10
    3ba0:	114010ef          	jal	4cb4 <putchar>
    3ba4:	00100073          	ebreak
    3ba8:	fe042623          	sw	zero,-20(s0)
    3bac:	fec42783          	lw	a5,-20(s0)
    3bb0:	0007a793          	slti	a5,a5,0
    3bb4:	fef42223          	sw	a5,-28(s0)
    3bb8:	fe442783          	lw	a5,-28(s0)
    3bbc:	04078063          	beqz	a5,3bfc <main+0x3b9c>
    3bc0:	00100073          	ebreak
    3bc4:	000107b7          	lui	a5,0x10
    3bc8:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3bcc:	2f4010ef          	jal	4ec0 <printf>
    3bd0:	09500513          	li	a0,149
    3bd4:	15c010ef          	jal	4d30 <print_dec>
    3bd8:	000107b7          	lui	a5,0x10
    3bdc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3be0:	2e0010ef          	jal	4ec0 <printf>
    3be4:	fe442783          	lw	a5,-28(s0)
    3be8:	00078513          	mv	a0,a5
    3bec:	264010ef          	jal	4e50 <print_hex>
    3bf0:	00a00513          	li	a0,10
    3bf4:	0c0010ef          	jal	4cb4 <putchar>
    3bf8:	00100073          	ebreak
    3bfc:	00100793          	li	a5,1
    3c00:	fef42623          	sw	a5,-20(s0)
    3c04:	fec42783          	lw	a5,-20(s0)
    3c08:	0017a793          	slti	a5,a5,1
    3c0c:	fef42223          	sw	a5,-28(s0)
    3c10:	fe442783          	lw	a5,-28(s0)
    3c14:	04078063          	beqz	a5,3c54 <main+0x3bf4>
    3c18:	00100073          	ebreak
    3c1c:	000107b7          	lui	a5,0x10
    3c20:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3c24:	29c010ef          	jal	4ec0 <printf>
    3c28:	09600513          	li	a0,150
    3c2c:	104010ef          	jal	4d30 <print_dec>
    3c30:	000107b7          	lui	a5,0x10
    3c34:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3c38:	288010ef          	jal	4ec0 <printf>
    3c3c:	fe442783          	lw	a5,-28(s0)
    3c40:	00078513          	mv	a0,a5
    3c44:	20c010ef          	jal	4e50 <print_hex>
    3c48:	00a00513          	li	a0,10
    3c4c:	068010ef          	jal	4cb4 <putchar>
    3c50:	00100073          	ebreak
    3c54:	00300793          	li	a5,3
    3c58:	fef42623          	sw	a5,-20(s0)
    3c5c:	fec42783          	lw	a5,-20(s0)
    3c60:	0077a793          	slti	a5,a5,7
    3c64:	fef42223          	sw	a5,-28(s0)
    3c68:	fe442703          	lw	a4,-28(s0)
    3c6c:	00100793          	li	a5,1
    3c70:	04f70063          	beq	a4,a5,3cb0 <main+0x3c50>
    3c74:	00100073          	ebreak
    3c78:	000107b7          	lui	a5,0x10
    3c7c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3c80:	240010ef          	jal	4ec0 <printf>
    3c84:	09700513          	li	a0,151
    3c88:	0a8010ef          	jal	4d30 <print_dec>
    3c8c:	000107b7          	lui	a5,0x10
    3c90:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3c94:	22c010ef          	jal	4ec0 <printf>
    3c98:	fe442783          	lw	a5,-28(s0)
    3c9c:	00078513          	mv	a0,a5
    3ca0:	1b0010ef          	jal	4e50 <print_hex>
    3ca4:	00a00513          	li	a0,10
    3ca8:	00c010ef          	jal	4cb4 <putchar>
    3cac:	00100073          	ebreak
    3cb0:	00700793          	li	a5,7
    3cb4:	fef42623          	sw	a5,-20(s0)
    3cb8:	fec42783          	lw	a5,-20(s0)
    3cbc:	0037a793          	slti	a5,a5,3
    3cc0:	fef42223          	sw	a5,-28(s0)
    3cc4:	fe442783          	lw	a5,-28(s0)
    3cc8:	04078063          	beqz	a5,3d08 <main+0x3ca8>
    3ccc:	00100073          	ebreak
    3cd0:	000107b7          	lui	a5,0x10
    3cd4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3cd8:	1e8010ef          	jal	4ec0 <printf>
    3cdc:	09800513          	li	a0,152
    3ce0:	050010ef          	jal	4d30 <print_dec>
    3ce4:	000107b7          	lui	a5,0x10
    3ce8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3cec:	1d4010ef          	jal	4ec0 <printf>
    3cf0:	fe442783          	lw	a5,-28(s0)
    3cf4:	00078513          	mv	a0,a5
    3cf8:	158010ef          	jal	4e50 <print_hex>
    3cfc:	00a00513          	li	a0,10
    3d00:	7b5000ef          	jal	4cb4 <putchar>
    3d04:	00100073          	ebreak
    3d08:	fe042623          	sw	zero,-20(s0)
    3d0c:	fec42783          	lw	a5,-20(s0)
    3d10:	8007a793          	slti	a5,a5,-2048
    3d14:	fef42223          	sw	a5,-28(s0)
    3d18:	fe442783          	lw	a5,-28(s0)
    3d1c:	04078063          	beqz	a5,3d5c <main+0x3cfc>
    3d20:	00100073          	ebreak
    3d24:	000107b7          	lui	a5,0x10
    3d28:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3d2c:	194010ef          	jal	4ec0 <printf>
    3d30:	09900513          	li	a0,153
    3d34:	7fd000ef          	jal	4d30 <print_dec>
    3d38:	000107b7          	lui	a5,0x10
    3d3c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3d40:	180010ef          	jal	4ec0 <printf>
    3d44:	fe442783          	lw	a5,-28(s0)
    3d48:	00078513          	mv	a0,a5
    3d4c:	104010ef          	jal	4e50 <print_hex>
    3d50:	00a00513          	li	a0,10
    3d54:	761000ef          	jal	4cb4 <putchar>
    3d58:	00100073          	ebreak
    3d5c:	800007b7          	lui	a5,0x80000
    3d60:	fef42623          	sw	a5,-20(s0)
    3d64:	fec42783          	lw	a5,-20(s0)
    3d68:	0007a793          	slti	a5,a5,0
    3d6c:	fef42223          	sw	a5,-28(s0)
    3d70:	fe442703          	lw	a4,-28(s0)
    3d74:	00100793          	li	a5,1
    3d78:	04f70063          	beq	a4,a5,3db8 <main+0x3d58>
    3d7c:	00100073          	ebreak
    3d80:	000107b7          	lui	a5,0x10
    3d84:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3d88:	138010ef          	jal	4ec0 <printf>
    3d8c:	09a00513          	li	a0,154
    3d90:	7a1000ef          	jal	4d30 <print_dec>
    3d94:	000107b7          	lui	a5,0x10
    3d98:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3d9c:	124010ef          	jal	4ec0 <printf>
    3da0:	fe442783          	lw	a5,-28(s0)
    3da4:	00078513          	mv	a0,a5
    3da8:	0a8010ef          	jal	4e50 <print_hex>
    3dac:	00a00513          	li	a0,10
    3db0:	705000ef          	jal	4cb4 <putchar>
    3db4:	00100073          	ebreak
    3db8:	800007b7          	lui	a5,0x80000
    3dbc:	fef42623          	sw	a5,-20(s0)
    3dc0:	fec42783          	lw	a5,-20(s0)
    3dc4:	8007a793          	slti	a5,a5,-2048
    3dc8:	fef42223          	sw	a5,-28(s0)
    3dcc:	fe442703          	lw	a4,-28(s0)
    3dd0:	00100793          	li	a5,1
    3dd4:	04f70063          	beq	a4,a5,3e14 <main+0x3db4>
    3dd8:	00100073          	ebreak
    3ddc:	000107b7          	lui	a5,0x10
    3de0:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3de4:	0dc010ef          	jal	4ec0 <printf>
    3de8:	09b00513          	li	a0,155
    3dec:	745000ef          	jal	4d30 <print_dec>
    3df0:	000107b7          	lui	a5,0x10
    3df4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3df8:	0c8010ef          	jal	4ec0 <printf>
    3dfc:	fe442783          	lw	a5,-28(s0)
    3e00:	00078513          	mv	a0,a5
    3e04:	04c010ef          	jal	4e50 <print_hex>
    3e08:	00a00513          	li	a0,10
    3e0c:	6a9000ef          	jal	4cb4 <putchar>
    3e10:	00100073          	ebreak
    3e14:	fe042623          	sw	zero,-20(s0)
    3e18:	fec42783          	lw	a5,-20(s0)
    3e1c:	7ff7a793          	slti	a5,a5,2047
    3e20:	fef42223          	sw	a5,-28(s0)
    3e24:	fe442703          	lw	a4,-28(s0)
    3e28:	00100793          	li	a5,1
    3e2c:	04f70063          	beq	a4,a5,3e6c <main+0x3e0c>
    3e30:	00100073          	ebreak
    3e34:	000107b7          	lui	a5,0x10
    3e38:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3e3c:	084010ef          	jal	4ec0 <printf>
    3e40:	09c00513          	li	a0,156
    3e44:	6ed000ef          	jal	4d30 <print_dec>
    3e48:	000107b7          	lui	a5,0x10
    3e4c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3e50:	070010ef          	jal	4ec0 <printf>
    3e54:	fe442783          	lw	a5,-28(s0)
    3e58:	00078513          	mv	a0,a5
    3e5c:	7f5000ef          	jal	4e50 <print_hex>
    3e60:	00a00513          	li	a0,10
    3e64:	651000ef          	jal	4cb4 <putchar>
    3e68:	00100073          	ebreak
    3e6c:	800007b7          	lui	a5,0x80000
    3e70:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    3e74:	fef42623          	sw	a5,-20(s0)
    3e78:	fec42783          	lw	a5,-20(s0)
    3e7c:	0007a793          	slti	a5,a5,0
    3e80:	fef42223          	sw	a5,-28(s0)
    3e84:	fe442783          	lw	a5,-28(s0)
    3e88:	04078063          	beqz	a5,3ec8 <main+0x3e68>
    3e8c:	00100073          	ebreak
    3e90:	000107b7          	lui	a5,0x10
    3e94:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3e98:	028010ef          	jal	4ec0 <printf>
    3e9c:	09d00513          	li	a0,157
    3ea0:	691000ef          	jal	4d30 <print_dec>
    3ea4:	000107b7          	lui	a5,0x10
    3ea8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3eac:	014010ef          	jal	4ec0 <printf>
    3eb0:	fe442783          	lw	a5,-28(s0)
    3eb4:	00078513          	mv	a0,a5
    3eb8:	799000ef          	jal	4e50 <print_hex>
    3ebc:	00a00513          	li	a0,10
    3ec0:	5f5000ef          	jal	4cb4 <putchar>
    3ec4:	00100073          	ebreak
    3ec8:	800007b7          	lui	a5,0x80000
    3ecc:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    3ed0:	fef42623          	sw	a5,-20(s0)
    3ed4:	fec42783          	lw	a5,-20(s0)
    3ed8:	7ff7a793          	slti	a5,a5,2047
    3edc:	fef42223          	sw	a5,-28(s0)
    3ee0:	fe442783          	lw	a5,-28(s0)
    3ee4:	04078063          	beqz	a5,3f24 <main+0x3ec4>
    3ee8:	00100073          	ebreak
    3eec:	000107b7          	lui	a5,0x10
    3ef0:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3ef4:	7cd000ef          	jal	4ec0 <printf>
    3ef8:	09e00513          	li	a0,158
    3efc:	635000ef          	jal	4d30 <print_dec>
    3f00:	000107b7          	lui	a5,0x10
    3f04:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3f08:	7b9000ef          	jal	4ec0 <printf>
    3f0c:	fe442783          	lw	a5,-28(s0)
    3f10:	00078513          	mv	a0,a5
    3f14:	73d000ef          	jal	4e50 <print_hex>
    3f18:	00a00513          	li	a0,10
    3f1c:	599000ef          	jal	4cb4 <putchar>
    3f20:	00100073          	ebreak
    3f24:	800007b7          	lui	a5,0x80000
    3f28:	fef42623          	sw	a5,-20(s0)
    3f2c:	fec42783          	lw	a5,-20(s0)
    3f30:	7ff7a793          	slti	a5,a5,2047
    3f34:	fef42223          	sw	a5,-28(s0)
    3f38:	fe442703          	lw	a4,-28(s0)
    3f3c:	00100793          	li	a5,1
    3f40:	04f70063          	beq	a4,a5,3f80 <main+0x3f20>
    3f44:	00100073          	ebreak
    3f48:	000107b7          	lui	a5,0x10
    3f4c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3f50:	771000ef          	jal	4ec0 <printf>
    3f54:	09f00513          	li	a0,159
    3f58:	5d9000ef          	jal	4d30 <print_dec>
    3f5c:	000107b7          	lui	a5,0x10
    3f60:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3f64:	75d000ef          	jal	4ec0 <printf>
    3f68:	fe442783          	lw	a5,-28(s0)
    3f6c:	00078513          	mv	a0,a5
    3f70:	6e1000ef          	jal	4e50 <print_hex>
    3f74:	00a00513          	li	a0,10
    3f78:	53d000ef          	jal	4cb4 <putchar>
    3f7c:	00100073          	ebreak
    3f80:	800007b7          	lui	a5,0x80000
    3f84:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    3f88:	fef42623          	sw	a5,-20(s0)
    3f8c:	fec42783          	lw	a5,-20(s0)
    3f90:	8007a793          	slti	a5,a5,-2048
    3f94:	fef42223          	sw	a5,-28(s0)
    3f98:	fe442783          	lw	a5,-28(s0)
    3f9c:	04078063          	beqz	a5,3fdc <main+0x3f7c>
    3fa0:	00100073          	ebreak
    3fa4:	000107b7          	lui	a5,0x10
    3fa8:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    3fac:	715000ef          	jal	4ec0 <printf>
    3fb0:	0a000513          	li	a0,160
    3fb4:	57d000ef          	jal	4d30 <print_dec>
    3fb8:	000107b7          	lui	a5,0x10
    3fbc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    3fc0:	701000ef          	jal	4ec0 <printf>
    3fc4:	fe442783          	lw	a5,-28(s0)
    3fc8:	00078513          	mv	a0,a5
    3fcc:	685000ef          	jal	4e50 <print_hex>
    3fd0:	00a00513          	li	a0,10
    3fd4:	4e1000ef          	jal	4cb4 <putchar>
    3fd8:	00100073          	ebreak
    3fdc:	fe042623          	sw	zero,-20(s0)
    3fe0:	fec42783          	lw	a5,-20(s0)
    3fe4:	fff7a793          	slti	a5,a5,-1
    3fe8:	fef42223          	sw	a5,-28(s0)
    3fec:	fe442783          	lw	a5,-28(s0)
    3ff0:	04078063          	beqz	a5,4030 <main+0x3fd0>
    3ff4:	00100073          	ebreak
    3ff8:	000107b7          	lui	a5,0x10
    3ffc:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4000:	6c1000ef          	jal	4ec0 <printf>
    4004:	0a100513          	li	a0,161
    4008:	529000ef          	jal	4d30 <print_dec>
    400c:	000107b7          	lui	a5,0x10
    4010:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4014:	6ad000ef          	jal	4ec0 <printf>
    4018:	fe442783          	lw	a5,-28(s0)
    401c:	00078513          	mv	a0,a5
    4020:	631000ef          	jal	4e50 <print_hex>
    4024:	00a00513          	li	a0,10
    4028:	48d000ef          	jal	4cb4 <putchar>
    402c:	00100073          	ebreak
    4030:	fff00793          	li	a5,-1
    4034:	fef42623          	sw	a5,-20(s0)
    4038:	fec42783          	lw	a5,-20(s0)
    403c:	0017a793          	slti	a5,a5,1
    4040:	fef42223          	sw	a5,-28(s0)
    4044:	fe442703          	lw	a4,-28(s0)
    4048:	00100793          	li	a5,1
    404c:	04f70063          	beq	a4,a5,408c <main+0x402c>
    4050:	00100073          	ebreak
    4054:	000107b7          	lui	a5,0x10
    4058:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    405c:	665000ef          	jal	4ec0 <printf>
    4060:	0a200513          	li	a0,162
    4064:	4cd000ef          	jal	4d30 <print_dec>
    4068:	000107b7          	lui	a5,0x10
    406c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4070:	651000ef          	jal	4ec0 <printf>
    4074:	fe442783          	lw	a5,-28(s0)
    4078:	00078513          	mv	a0,a5
    407c:	5d5000ef          	jal	4e50 <print_hex>
    4080:	00a00513          	li	a0,10
    4084:	431000ef          	jal	4cb4 <putchar>
    4088:	00100073          	ebreak
    408c:	fff00793          	li	a5,-1
    4090:	fef42623          	sw	a5,-20(s0)
    4094:	fec42783          	lw	a5,-20(s0)
    4098:	fff7a793          	slti	a5,a5,-1
    409c:	fef42223          	sw	a5,-28(s0)
    40a0:	fe442783          	lw	a5,-28(s0)
    40a4:	04078063          	beqz	a5,40e4 <main+0x4084>
    40a8:	00100073          	ebreak
    40ac:	000107b7          	lui	a5,0x10
    40b0:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    40b4:	60d000ef          	jal	4ec0 <printf>
    40b8:	0a300513          	li	a0,163
    40bc:	475000ef          	jal	4d30 <print_dec>
    40c0:	000107b7          	lui	a5,0x10
    40c4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    40c8:	5f9000ef          	jal	4ec0 <printf>
    40cc:	fe442783          	lw	a5,-28(s0)
    40d0:	00078513          	mv	a0,a5
    40d4:	57d000ef          	jal	4e50 <print_hex>
    40d8:	00a00513          	li	a0,10
    40dc:	3d9000ef          	jal	4cb4 <putchar>
    40e0:	00100073          	ebreak
    40e4:	fe042623          	sw	zero,-20(s0)
    40e8:	fe042423          	sw	zero,-24(s0)
    40ec:	fec42783          	lw	a5,-20(s0)
    40f0:	fe842703          	lw	a4,-24(s0)
    40f4:	00e7b7b3          	sltu	a5,a5,a4
    40f8:	fef42223          	sw	a5,-28(s0)
    40fc:	fe442783          	lw	a5,-28(s0)
    4100:	04078063          	beqz	a5,4140 <main+0x40e0>
    4104:	00100073          	ebreak
    4108:	000107b7          	lui	a5,0x10
    410c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    4110:	5b1000ef          	jal	4ec0 <printf>
    4114:	0a400513          	li	a0,164
    4118:	419000ef          	jal	4d30 <print_dec>
    411c:	000107b7          	lui	a5,0x10
    4120:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4124:	59d000ef          	jal	4ec0 <printf>
    4128:	fe442783          	lw	a5,-28(s0)
    412c:	00078513          	mv	a0,a5
    4130:	521000ef          	jal	4e50 <print_hex>
    4134:	00a00513          	li	a0,10
    4138:	37d000ef          	jal	4cb4 <putchar>
    413c:	00100073          	ebreak
    4140:	00100793          	li	a5,1
    4144:	fef42623          	sw	a5,-20(s0)
    4148:	00100793          	li	a5,1
    414c:	fef42423          	sw	a5,-24(s0)
    4150:	fec42783          	lw	a5,-20(s0)
    4154:	fe842703          	lw	a4,-24(s0)
    4158:	00e7b7b3          	sltu	a5,a5,a4
    415c:	fef42223          	sw	a5,-28(s0)
    4160:	fe442783          	lw	a5,-28(s0)
    4164:	04078063          	beqz	a5,41a4 <main+0x4144>
    4168:	00100073          	ebreak
    416c:	000107b7          	lui	a5,0x10
    4170:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    4174:	54d000ef          	jal	4ec0 <printf>
    4178:	0a500513          	li	a0,165
    417c:	3b5000ef          	jal	4d30 <print_dec>
    4180:	000107b7          	lui	a5,0x10
    4184:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4188:	539000ef          	jal	4ec0 <printf>
    418c:	fe442783          	lw	a5,-28(s0)
    4190:	00078513          	mv	a0,a5
    4194:	4bd000ef          	jal	4e50 <print_hex>
    4198:	00a00513          	li	a0,10
    419c:	319000ef          	jal	4cb4 <putchar>
    41a0:	00100073          	ebreak
    41a4:	00300793          	li	a5,3
    41a8:	fef42623          	sw	a5,-20(s0)
    41ac:	00700793          	li	a5,7
    41b0:	fef42423          	sw	a5,-24(s0)
    41b4:	fec42783          	lw	a5,-20(s0)
    41b8:	fe842703          	lw	a4,-24(s0)
    41bc:	00e7b7b3          	sltu	a5,a5,a4
    41c0:	fef42223          	sw	a5,-28(s0)
    41c4:	fe442703          	lw	a4,-28(s0)
    41c8:	00100793          	li	a5,1
    41cc:	04f70063          	beq	a4,a5,420c <main+0x41ac>
    41d0:	00100073          	ebreak
    41d4:	000107b7          	lui	a5,0x10
    41d8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    41dc:	4e5000ef          	jal	4ec0 <printf>
    41e0:	0a600513          	li	a0,166
    41e4:	34d000ef          	jal	4d30 <print_dec>
    41e8:	000107b7          	lui	a5,0x10
    41ec:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    41f0:	4d1000ef          	jal	4ec0 <printf>
    41f4:	fe442783          	lw	a5,-28(s0)
    41f8:	00078513          	mv	a0,a5
    41fc:	455000ef          	jal	4e50 <print_hex>
    4200:	00a00513          	li	a0,10
    4204:	2b1000ef          	jal	4cb4 <putchar>
    4208:	00100073          	ebreak
    420c:	00700793          	li	a5,7
    4210:	fef42623          	sw	a5,-20(s0)
    4214:	00300793          	li	a5,3
    4218:	fef42423          	sw	a5,-24(s0)
    421c:	fec42783          	lw	a5,-20(s0)
    4220:	fe842703          	lw	a4,-24(s0)
    4224:	00e7b7b3          	sltu	a5,a5,a4
    4228:	fef42223          	sw	a5,-28(s0)
    422c:	fe442783          	lw	a5,-28(s0)
    4230:	04078063          	beqz	a5,4270 <main+0x4210>
    4234:	00100073          	ebreak
    4238:	000107b7          	lui	a5,0x10
    423c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    4240:	481000ef          	jal	4ec0 <printf>
    4244:	0a700513          	li	a0,167
    4248:	2e9000ef          	jal	4d30 <print_dec>
    424c:	000107b7          	lui	a5,0x10
    4250:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4254:	46d000ef          	jal	4ec0 <printf>
    4258:	fe442783          	lw	a5,-28(s0)
    425c:	00078513          	mv	a0,a5
    4260:	3f1000ef          	jal	4e50 <print_hex>
    4264:	00a00513          	li	a0,10
    4268:	24d000ef          	jal	4cb4 <putchar>
    426c:	00100073          	ebreak
    4270:	fe042623          	sw	zero,-20(s0)
    4274:	ffff87b7          	lui	a5,0xffff8
    4278:	fef42423          	sw	a5,-24(s0)
    427c:	fec42783          	lw	a5,-20(s0)
    4280:	fe842703          	lw	a4,-24(s0)
    4284:	00e7b7b3          	sltu	a5,a5,a4
    4288:	fef42223          	sw	a5,-28(s0)
    428c:	fe442703          	lw	a4,-28(s0)
    4290:	00100793          	li	a5,1
    4294:	04f70063          	beq	a4,a5,42d4 <main+0x4274>
    4298:	00100073          	ebreak
    429c:	000107b7          	lui	a5,0x10
    42a0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    42a4:	41d000ef          	jal	4ec0 <printf>
    42a8:	0a800513          	li	a0,168
    42ac:	285000ef          	jal	4d30 <print_dec>
    42b0:	000107b7          	lui	a5,0x10
    42b4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    42b8:	409000ef          	jal	4ec0 <printf>
    42bc:	fe442783          	lw	a5,-28(s0)
    42c0:	00078513          	mv	a0,a5
    42c4:	38d000ef          	jal	4e50 <print_hex>
    42c8:	00a00513          	li	a0,10
    42cc:	1e9000ef          	jal	4cb4 <putchar>
    42d0:	00100073          	ebreak
    42d4:	800007b7          	lui	a5,0x80000
    42d8:	fef42623          	sw	a5,-20(s0)
    42dc:	fe042423          	sw	zero,-24(s0)
    42e0:	fec42783          	lw	a5,-20(s0)
    42e4:	fe842703          	lw	a4,-24(s0)
    42e8:	00e7b7b3          	sltu	a5,a5,a4
    42ec:	fef42223          	sw	a5,-28(s0)
    42f0:	fe442783          	lw	a5,-28(s0)
    42f4:	04078063          	beqz	a5,4334 <main+0x42d4>
    42f8:	00100073          	ebreak
    42fc:	000107b7          	lui	a5,0x10
    4300:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    4304:	3bd000ef          	jal	4ec0 <printf>
    4308:	0a900513          	li	a0,169
    430c:	225000ef          	jal	4d30 <print_dec>
    4310:	000107b7          	lui	a5,0x10
    4314:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4318:	3a9000ef          	jal	4ec0 <printf>
    431c:	fe442783          	lw	a5,-28(s0)
    4320:	00078513          	mv	a0,a5
    4324:	32d000ef          	jal	4e50 <print_hex>
    4328:	00a00513          	li	a0,10
    432c:	189000ef          	jal	4cb4 <putchar>
    4330:	00100073          	ebreak
    4334:	800007b7          	lui	a5,0x80000
    4338:	fef42623          	sw	a5,-20(s0)
    433c:	ffff87b7          	lui	a5,0xffff8
    4340:	fef42423          	sw	a5,-24(s0)
    4344:	fec42783          	lw	a5,-20(s0)
    4348:	fe842703          	lw	a4,-24(s0)
    434c:	00e7b7b3          	sltu	a5,a5,a4
    4350:	fef42223          	sw	a5,-28(s0)
    4354:	fe442703          	lw	a4,-28(s0)
    4358:	00100793          	li	a5,1
    435c:	04f70063          	beq	a4,a5,439c <main+0x433c>
    4360:	00100073          	ebreak
    4364:	000107b7          	lui	a5,0x10
    4368:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    436c:	355000ef          	jal	4ec0 <printf>
    4370:	0aa00513          	li	a0,170
    4374:	1bd000ef          	jal	4d30 <print_dec>
    4378:	000107b7          	lui	a5,0x10
    437c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4380:	341000ef          	jal	4ec0 <printf>
    4384:	fe442783          	lw	a5,-28(s0)
    4388:	00078513          	mv	a0,a5
    438c:	2c5000ef          	jal	4e50 <print_hex>
    4390:	00a00513          	li	a0,10
    4394:	121000ef          	jal	4cb4 <putchar>
    4398:	00100073          	ebreak
    439c:	fe042623          	sw	zero,-20(s0)
    43a0:	000087b7          	lui	a5,0x8
    43a4:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    43a8:	fef42423          	sw	a5,-24(s0)
    43ac:	fec42783          	lw	a5,-20(s0)
    43b0:	fe842703          	lw	a4,-24(s0)
    43b4:	00e7b7b3          	sltu	a5,a5,a4
    43b8:	fef42223          	sw	a5,-28(s0)
    43bc:	fe442703          	lw	a4,-28(s0)
    43c0:	00100793          	li	a5,1
    43c4:	04f70063          	beq	a4,a5,4404 <main+0x43a4>
    43c8:	00100073          	ebreak
    43cc:	000107b7          	lui	a5,0x10
    43d0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    43d4:	2ed000ef          	jal	4ec0 <printf>
    43d8:	0ab00513          	li	a0,171
    43dc:	155000ef          	jal	4d30 <print_dec>
    43e0:	000107b7          	lui	a5,0x10
    43e4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    43e8:	2d9000ef          	jal	4ec0 <printf>
    43ec:	fe442783          	lw	a5,-28(s0)
    43f0:	00078513          	mv	a0,a5
    43f4:	25d000ef          	jal	4e50 <print_hex>
    43f8:	00a00513          	li	a0,10
    43fc:	0b9000ef          	jal	4cb4 <putchar>
    4400:	00100073          	ebreak
    4404:	800007b7          	lui	a5,0x80000
    4408:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    440c:	fef42623          	sw	a5,-20(s0)
    4410:	fe042423          	sw	zero,-24(s0)
    4414:	fec42783          	lw	a5,-20(s0)
    4418:	fe842703          	lw	a4,-24(s0)
    441c:	00e7b7b3          	sltu	a5,a5,a4
    4420:	fef42223          	sw	a5,-28(s0)
    4424:	fe442783          	lw	a5,-28(s0)
    4428:	04078063          	beqz	a5,4468 <main+0x4408>
    442c:	00100073          	ebreak
    4430:	000107b7          	lui	a5,0x10
    4434:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    4438:	289000ef          	jal	4ec0 <printf>
    443c:	0ac00513          	li	a0,172
    4440:	0f1000ef          	jal	4d30 <print_dec>
    4444:	000107b7          	lui	a5,0x10
    4448:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    444c:	275000ef          	jal	4ec0 <printf>
    4450:	fe442783          	lw	a5,-28(s0)
    4454:	00078513          	mv	a0,a5
    4458:	1f9000ef          	jal	4e50 <print_hex>
    445c:	00a00513          	li	a0,10
    4460:	055000ef          	jal	4cb4 <putchar>
    4464:	00100073          	ebreak
    4468:	800007b7          	lui	a5,0x80000
    446c:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    4470:	fef42623          	sw	a5,-20(s0)
    4474:	000087b7          	lui	a5,0x8
    4478:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    447c:	fef42423          	sw	a5,-24(s0)
    4480:	fec42783          	lw	a5,-20(s0)
    4484:	fe842703          	lw	a4,-24(s0)
    4488:	00e7b7b3          	sltu	a5,a5,a4
    448c:	fef42223          	sw	a5,-28(s0)
    4490:	fe442783          	lw	a5,-28(s0)
    4494:	04078063          	beqz	a5,44d4 <main+0x4474>
    4498:	00100073          	ebreak
    449c:	000107b7          	lui	a5,0x10
    44a0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    44a4:	21d000ef          	jal	4ec0 <printf>
    44a8:	0ad00513          	li	a0,173
    44ac:	085000ef          	jal	4d30 <print_dec>
    44b0:	000107b7          	lui	a5,0x10
    44b4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    44b8:	209000ef          	jal	4ec0 <printf>
    44bc:	fe442783          	lw	a5,-28(s0)
    44c0:	00078513          	mv	a0,a5
    44c4:	18d000ef          	jal	4e50 <print_hex>
    44c8:	00a00513          	li	a0,10
    44cc:	7e8000ef          	jal	4cb4 <putchar>
    44d0:	00100073          	ebreak
    44d4:	800007b7          	lui	a5,0x80000
    44d8:	fef42623          	sw	a5,-20(s0)
    44dc:	000087b7          	lui	a5,0x8
    44e0:	fff78793          	add	a5,a5,-1 # 7fff <__modsi3+0x2f97>
    44e4:	fef42423          	sw	a5,-24(s0)
    44e8:	fec42783          	lw	a5,-20(s0)
    44ec:	fe842703          	lw	a4,-24(s0)
    44f0:	00e7b7b3          	sltu	a5,a5,a4
    44f4:	fef42223          	sw	a5,-28(s0)
    44f8:	fe442783          	lw	a5,-28(s0)
    44fc:	04078063          	beqz	a5,453c <main+0x44dc>
    4500:	00100073          	ebreak
    4504:	000107b7          	lui	a5,0x10
    4508:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    450c:	1b5000ef          	jal	4ec0 <printf>
    4510:	0ae00513          	li	a0,174
    4514:	01d000ef          	jal	4d30 <print_dec>
    4518:	000107b7          	lui	a5,0x10
    451c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4520:	1a1000ef          	jal	4ec0 <printf>
    4524:	fe442783          	lw	a5,-28(s0)
    4528:	00078513          	mv	a0,a5
    452c:	125000ef          	jal	4e50 <print_hex>
    4530:	00a00513          	li	a0,10
    4534:	780000ef          	jal	4cb4 <putchar>
    4538:	00100073          	ebreak
    453c:	800007b7          	lui	a5,0x80000
    4540:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    4544:	fef42623          	sw	a5,-20(s0)
    4548:	ffff87b7          	lui	a5,0xffff8
    454c:	fef42423          	sw	a5,-24(s0)
    4550:	fec42783          	lw	a5,-20(s0)
    4554:	fe842703          	lw	a4,-24(s0)
    4558:	00e7b7b3          	sltu	a5,a5,a4
    455c:	fef42223          	sw	a5,-28(s0)
    4560:	fe442703          	lw	a4,-28(s0)
    4564:	00100793          	li	a5,1
    4568:	04f70063          	beq	a4,a5,45a8 <main+0x4548>
    456c:	00100073          	ebreak
    4570:	000107b7          	lui	a5,0x10
    4574:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    4578:	149000ef          	jal	4ec0 <printf>
    457c:	0af00513          	li	a0,175
    4580:	7b0000ef          	jal	4d30 <print_dec>
    4584:	000107b7          	lui	a5,0x10
    4588:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    458c:	135000ef          	jal	4ec0 <printf>
    4590:	fe442783          	lw	a5,-28(s0)
    4594:	00078513          	mv	a0,a5
    4598:	0b9000ef          	jal	4e50 <print_hex>
    459c:	00a00513          	li	a0,10
    45a0:	714000ef          	jal	4cb4 <putchar>
    45a4:	00100073          	ebreak
    45a8:	fe042623          	sw	zero,-20(s0)
    45ac:	fff00793          	li	a5,-1
    45b0:	fef42423          	sw	a5,-24(s0)
    45b4:	fec42783          	lw	a5,-20(s0)
    45b8:	fe842703          	lw	a4,-24(s0)
    45bc:	00e7b7b3          	sltu	a5,a5,a4
    45c0:	fef42223          	sw	a5,-28(s0)
    45c4:	fe442703          	lw	a4,-28(s0)
    45c8:	00100793          	li	a5,1
    45cc:	04f70063          	beq	a4,a5,460c <main+0x45ac>
    45d0:	00100073          	ebreak
    45d4:	000107b7          	lui	a5,0x10
    45d8:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    45dc:	0e5000ef          	jal	4ec0 <printf>
    45e0:	0b000513          	li	a0,176
    45e4:	74c000ef          	jal	4d30 <print_dec>
    45e8:	000107b7          	lui	a5,0x10
    45ec:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    45f0:	0d1000ef          	jal	4ec0 <printf>
    45f4:	fe442783          	lw	a5,-28(s0)
    45f8:	00078513          	mv	a0,a5
    45fc:	055000ef          	jal	4e50 <print_hex>
    4600:	00a00513          	li	a0,10
    4604:	6b0000ef          	jal	4cb4 <putchar>
    4608:	00100073          	ebreak
    460c:	fff00793          	li	a5,-1
    4610:	fef42623          	sw	a5,-20(s0)
    4614:	00100793          	li	a5,1
    4618:	fef42423          	sw	a5,-24(s0)
    461c:	fec42783          	lw	a5,-20(s0)
    4620:	fe842703          	lw	a4,-24(s0)
    4624:	00e7b7b3          	sltu	a5,a5,a4
    4628:	fef42223          	sw	a5,-28(s0)
    462c:	fe442783          	lw	a5,-28(s0)
    4630:	04078063          	beqz	a5,4670 <main+0x4610>
    4634:	00100073          	ebreak
    4638:	000107b7          	lui	a5,0x10
    463c:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    4640:	081000ef          	jal	4ec0 <printf>
    4644:	0b100513          	li	a0,177
    4648:	6e8000ef          	jal	4d30 <print_dec>
    464c:	000107b7          	lui	a5,0x10
    4650:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4654:	06d000ef          	jal	4ec0 <printf>
    4658:	fe442783          	lw	a5,-28(s0)
    465c:	00078513          	mv	a0,a5
    4660:	7f0000ef          	jal	4e50 <print_hex>
    4664:	00a00513          	li	a0,10
    4668:	64c000ef          	jal	4cb4 <putchar>
    466c:	00100073          	ebreak
    4670:	fff00793          	li	a5,-1
    4674:	fef42623          	sw	a5,-20(s0)
    4678:	fff00793          	li	a5,-1
    467c:	fef42423          	sw	a5,-24(s0)
    4680:	fec42783          	lw	a5,-20(s0)
    4684:	fe842703          	lw	a4,-24(s0)
    4688:	00e7b7b3          	sltu	a5,a5,a4
    468c:	fef42223          	sw	a5,-28(s0)
    4690:	fe442783          	lw	a5,-28(s0)
    4694:	04078063          	beqz	a5,46d4 <main+0x4674>
    4698:	00100073          	ebreak
    469c:	000107b7          	lui	a5,0x10
    46a0:	02078513          	add	a0,a5,32 # 10020 <__modsi3+0xafb8>
    46a4:	01d000ef          	jal	4ec0 <printf>
    46a8:	0b200513          	li	a0,178
    46ac:	684000ef          	jal	4d30 <print_dec>
    46b0:	000107b7          	lui	a5,0x10
    46b4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    46b8:	009000ef          	jal	4ec0 <printf>
    46bc:	fe442783          	lw	a5,-28(s0)
    46c0:	00078513          	mv	a0,a5
    46c4:	78c000ef          	jal	4e50 <print_hex>
    46c8:	00a00513          	li	a0,10
    46cc:	5e8000ef          	jal	4cb4 <putchar>
    46d0:	00100073          	ebreak
    46d4:	fe042623          	sw	zero,-20(s0)
    46d8:	fec42783          	lw	a5,-20(s0)
    46dc:	0007b793          	sltiu	a5,a5,0
    46e0:	fef42223          	sw	a5,-28(s0)
    46e4:	fe442783          	lw	a5,-28(s0)
    46e8:	04078063          	beqz	a5,4728 <main+0x46c8>
    46ec:	00100073          	ebreak
    46f0:	000107b7          	lui	a5,0x10
    46f4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    46f8:	7c8000ef          	jal	4ec0 <printf>
    46fc:	0b300513          	li	a0,179
    4700:	630000ef          	jal	4d30 <print_dec>
    4704:	000107b7          	lui	a5,0x10
    4708:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    470c:	7b4000ef          	jal	4ec0 <printf>
    4710:	fe442783          	lw	a5,-28(s0)
    4714:	00078513          	mv	a0,a5
    4718:	738000ef          	jal	4e50 <print_hex>
    471c:	00a00513          	li	a0,10
    4720:	594000ef          	jal	4cb4 <putchar>
    4724:	00100073          	ebreak
    4728:	00100793          	li	a5,1
    472c:	fef42623          	sw	a5,-20(s0)
    4730:	fec42783          	lw	a5,-20(s0)
    4734:	0017b793          	seqz	a5,a5
    4738:	fef42223          	sw	a5,-28(s0)
    473c:	fe442783          	lw	a5,-28(s0)
    4740:	04078063          	beqz	a5,4780 <main+0x4720>
    4744:	00100073          	ebreak
    4748:	000107b7          	lui	a5,0x10
    474c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4750:	770000ef          	jal	4ec0 <printf>
    4754:	0b400513          	li	a0,180
    4758:	5d8000ef          	jal	4d30 <print_dec>
    475c:	000107b7          	lui	a5,0x10
    4760:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4764:	75c000ef          	jal	4ec0 <printf>
    4768:	fe442783          	lw	a5,-28(s0)
    476c:	00078513          	mv	a0,a5
    4770:	6e0000ef          	jal	4e50 <print_hex>
    4774:	00a00513          	li	a0,10
    4778:	53c000ef          	jal	4cb4 <putchar>
    477c:	00100073          	ebreak
    4780:	00300793          	li	a5,3
    4784:	fef42623          	sw	a5,-20(s0)
    4788:	fec42783          	lw	a5,-20(s0)
    478c:	0077b793          	sltiu	a5,a5,7
    4790:	fef42223          	sw	a5,-28(s0)
    4794:	fe442703          	lw	a4,-28(s0)
    4798:	00100793          	li	a5,1
    479c:	04f70063          	beq	a4,a5,47dc <main+0x477c>
    47a0:	00100073          	ebreak
    47a4:	000107b7          	lui	a5,0x10
    47a8:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    47ac:	714000ef          	jal	4ec0 <printf>
    47b0:	0b500513          	li	a0,181
    47b4:	57c000ef          	jal	4d30 <print_dec>
    47b8:	000107b7          	lui	a5,0x10
    47bc:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    47c0:	700000ef          	jal	4ec0 <printf>
    47c4:	fe442783          	lw	a5,-28(s0)
    47c8:	00078513          	mv	a0,a5
    47cc:	684000ef          	jal	4e50 <print_hex>
    47d0:	00a00513          	li	a0,10
    47d4:	4e0000ef          	jal	4cb4 <putchar>
    47d8:	00100073          	ebreak
    47dc:	00700793          	li	a5,7
    47e0:	fef42623          	sw	a5,-20(s0)
    47e4:	fec42783          	lw	a5,-20(s0)
    47e8:	0037b793          	sltiu	a5,a5,3
    47ec:	fef42223          	sw	a5,-28(s0)
    47f0:	fe442783          	lw	a5,-28(s0)
    47f4:	04078063          	beqz	a5,4834 <main+0x47d4>
    47f8:	00100073          	ebreak
    47fc:	000107b7          	lui	a5,0x10
    4800:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4804:	6bc000ef          	jal	4ec0 <printf>
    4808:	0b600513          	li	a0,182
    480c:	524000ef          	jal	4d30 <print_dec>
    4810:	000107b7          	lui	a5,0x10
    4814:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4818:	6a8000ef          	jal	4ec0 <printf>
    481c:	fe442783          	lw	a5,-28(s0)
    4820:	00078513          	mv	a0,a5
    4824:	62c000ef          	jal	4e50 <print_hex>
    4828:	00a00513          	li	a0,10
    482c:	488000ef          	jal	4cb4 <putchar>
    4830:	00100073          	ebreak
    4834:	fe042623          	sw	zero,-20(s0)
    4838:	fec42783          	lw	a5,-20(s0)
    483c:	8007b793          	sltiu	a5,a5,-2048
    4840:	fef42223          	sw	a5,-28(s0)
    4844:	fe442703          	lw	a4,-28(s0)
    4848:	00100793          	li	a5,1
    484c:	04f70063          	beq	a4,a5,488c <main+0x482c>
    4850:	00100073          	ebreak
    4854:	000107b7          	lui	a5,0x10
    4858:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    485c:	664000ef          	jal	4ec0 <printf>
    4860:	0b700513          	li	a0,183
    4864:	4cc000ef          	jal	4d30 <print_dec>
    4868:	000107b7          	lui	a5,0x10
    486c:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4870:	650000ef          	jal	4ec0 <printf>
    4874:	fe442783          	lw	a5,-28(s0)
    4878:	00078513          	mv	a0,a5
    487c:	5d4000ef          	jal	4e50 <print_hex>
    4880:	00a00513          	li	a0,10
    4884:	430000ef          	jal	4cb4 <putchar>
    4888:	00100073          	ebreak
    488c:	800007b7          	lui	a5,0x80000
    4890:	fef42623          	sw	a5,-20(s0)
    4894:	fec42783          	lw	a5,-20(s0)
    4898:	0007b793          	sltiu	a5,a5,0
    489c:	fef42223          	sw	a5,-28(s0)
    48a0:	fe442783          	lw	a5,-28(s0)
    48a4:	04078063          	beqz	a5,48e4 <main+0x4884>
    48a8:	00100073          	ebreak
    48ac:	000107b7          	lui	a5,0x10
    48b0:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    48b4:	60c000ef          	jal	4ec0 <printf>
    48b8:	0b800513          	li	a0,184
    48bc:	474000ef          	jal	4d30 <print_dec>
    48c0:	000107b7          	lui	a5,0x10
    48c4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    48c8:	5f8000ef          	jal	4ec0 <printf>
    48cc:	fe442783          	lw	a5,-28(s0)
    48d0:	00078513          	mv	a0,a5
    48d4:	57c000ef          	jal	4e50 <print_hex>
    48d8:	00a00513          	li	a0,10
    48dc:	3d8000ef          	jal	4cb4 <putchar>
    48e0:	00100073          	ebreak
    48e4:	800007b7          	lui	a5,0x80000
    48e8:	fef42623          	sw	a5,-20(s0)
    48ec:	fec42783          	lw	a5,-20(s0)
    48f0:	8007b793          	sltiu	a5,a5,-2048
    48f4:	fef42223          	sw	a5,-28(s0)
    48f8:	fe442703          	lw	a4,-28(s0)
    48fc:	00100793          	li	a5,1
    4900:	04f70063          	beq	a4,a5,4940 <main+0x48e0>
    4904:	00100073          	ebreak
    4908:	000107b7          	lui	a5,0x10
    490c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4910:	5b0000ef          	jal	4ec0 <printf>
    4914:	0b900513          	li	a0,185
    4918:	418000ef          	jal	4d30 <print_dec>
    491c:	000107b7          	lui	a5,0x10
    4920:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4924:	59c000ef          	jal	4ec0 <printf>
    4928:	fe442783          	lw	a5,-28(s0)
    492c:	00078513          	mv	a0,a5
    4930:	520000ef          	jal	4e50 <print_hex>
    4934:	00a00513          	li	a0,10
    4938:	37c000ef          	jal	4cb4 <putchar>
    493c:	00100073          	ebreak
    4940:	fe042623          	sw	zero,-20(s0)
    4944:	fec42783          	lw	a5,-20(s0)
    4948:	7ff7b793          	sltiu	a5,a5,2047
    494c:	fef42223          	sw	a5,-28(s0)
    4950:	fe442703          	lw	a4,-28(s0)
    4954:	00100793          	li	a5,1
    4958:	04f70063          	beq	a4,a5,4998 <main+0x4938>
    495c:	00100073          	ebreak
    4960:	000107b7          	lui	a5,0x10
    4964:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4968:	558000ef          	jal	4ec0 <printf>
    496c:	0ba00513          	li	a0,186
    4970:	3c0000ef          	jal	4d30 <print_dec>
    4974:	000107b7          	lui	a5,0x10
    4978:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    497c:	544000ef          	jal	4ec0 <printf>
    4980:	fe442783          	lw	a5,-28(s0)
    4984:	00078513          	mv	a0,a5
    4988:	4c8000ef          	jal	4e50 <print_hex>
    498c:	00a00513          	li	a0,10
    4990:	324000ef          	jal	4cb4 <putchar>
    4994:	00100073          	ebreak
    4998:	800007b7          	lui	a5,0x80000
    499c:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    49a0:	fef42623          	sw	a5,-20(s0)
    49a4:	fec42783          	lw	a5,-20(s0)
    49a8:	0007b793          	sltiu	a5,a5,0
    49ac:	fef42223          	sw	a5,-28(s0)
    49b0:	fe442783          	lw	a5,-28(s0)
    49b4:	04078063          	beqz	a5,49f4 <main+0x4994>
    49b8:	00100073          	ebreak
    49bc:	000107b7          	lui	a5,0x10
    49c0:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    49c4:	4fc000ef          	jal	4ec0 <printf>
    49c8:	0bb00513          	li	a0,187
    49cc:	364000ef          	jal	4d30 <print_dec>
    49d0:	000107b7          	lui	a5,0x10
    49d4:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    49d8:	4e8000ef          	jal	4ec0 <printf>
    49dc:	fe442783          	lw	a5,-28(s0)
    49e0:	00078513          	mv	a0,a5
    49e4:	46c000ef          	jal	4e50 <print_hex>
    49e8:	00a00513          	li	a0,10
    49ec:	2c8000ef          	jal	4cb4 <putchar>
    49f0:	00100073          	ebreak
    49f4:	800007b7          	lui	a5,0x80000
    49f8:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    49fc:	fef42623          	sw	a5,-20(s0)
    4a00:	fec42783          	lw	a5,-20(s0)
    4a04:	7ff7b793          	sltiu	a5,a5,2047
    4a08:	fef42223          	sw	a5,-28(s0)
    4a0c:	fe442783          	lw	a5,-28(s0)
    4a10:	04078063          	beqz	a5,4a50 <main+0x49f0>
    4a14:	00100073          	ebreak
    4a18:	000107b7          	lui	a5,0x10
    4a1c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4a20:	4a0000ef          	jal	4ec0 <printf>
    4a24:	0bc00513          	li	a0,188
    4a28:	308000ef          	jal	4d30 <print_dec>
    4a2c:	000107b7          	lui	a5,0x10
    4a30:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4a34:	48c000ef          	jal	4ec0 <printf>
    4a38:	fe442783          	lw	a5,-28(s0)
    4a3c:	00078513          	mv	a0,a5
    4a40:	410000ef          	jal	4e50 <print_hex>
    4a44:	00a00513          	li	a0,10
    4a48:	26c000ef          	jal	4cb4 <putchar>
    4a4c:	00100073          	ebreak
    4a50:	800007b7          	lui	a5,0x80000
    4a54:	fef42623          	sw	a5,-20(s0)
    4a58:	fec42783          	lw	a5,-20(s0)
    4a5c:	7ff7b793          	sltiu	a5,a5,2047
    4a60:	fef42223          	sw	a5,-28(s0)
    4a64:	fe442783          	lw	a5,-28(s0)
    4a68:	04078063          	beqz	a5,4aa8 <main+0x4a48>
    4a6c:	00100073          	ebreak
    4a70:	000107b7          	lui	a5,0x10
    4a74:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4a78:	448000ef          	jal	4ec0 <printf>
    4a7c:	0bd00513          	li	a0,189
    4a80:	2b0000ef          	jal	4d30 <print_dec>
    4a84:	000107b7          	lui	a5,0x10
    4a88:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4a8c:	434000ef          	jal	4ec0 <printf>
    4a90:	fe442783          	lw	a5,-28(s0)
    4a94:	00078513          	mv	a0,a5
    4a98:	3b8000ef          	jal	4e50 <print_hex>
    4a9c:	00a00513          	li	a0,10
    4aa0:	214000ef          	jal	4cb4 <putchar>
    4aa4:	00100073          	ebreak
    4aa8:	800007b7          	lui	a5,0x80000
    4aac:	fff78793          	add	a5,a5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    4ab0:	fef42623          	sw	a5,-20(s0)
    4ab4:	fec42783          	lw	a5,-20(s0)
    4ab8:	8007b793          	sltiu	a5,a5,-2048
    4abc:	fef42223          	sw	a5,-28(s0)
    4ac0:	fe442703          	lw	a4,-28(s0)
    4ac4:	00100793          	li	a5,1
    4ac8:	04f70063          	beq	a4,a5,4b08 <main+0x4aa8>
    4acc:	00100073          	ebreak
    4ad0:	000107b7          	lui	a5,0x10
    4ad4:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4ad8:	3e8000ef          	jal	4ec0 <printf>
    4adc:	0be00513          	li	a0,190
    4ae0:	250000ef          	jal	4d30 <print_dec>
    4ae4:	000107b7          	lui	a5,0x10
    4ae8:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4aec:	3d4000ef          	jal	4ec0 <printf>
    4af0:	fe442783          	lw	a5,-28(s0)
    4af4:	00078513          	mv	a0,a5
    4af8:	358000ef          	jal	4e50 <print_hex>
    4afc:	00a00513          	li	a0,10
    4b00:	1b4000ef          	jal	4cb4 <putchar>
    4b04:	00100073          	ebreak
    4b08:	fe042623          	sw	zero,-20(s0)
    4b0c:	fec42783          	lw	a5,-20(s0)
    4b10:	fff7b793          	sltiu	a5,a5,-1
    4b14:	fef42223          	sw	a5,-28(s0)
    4b18:	fe442703          	lw	a4,-28(s0)
    4b1c:	00100793          	li	a5,1
    4b20:	04f70063          	beq	a4,a5,4b60 <main+0x4b00>
    4b24:	00100073          	ebreak
    4b28:	000107b7          	lui	a5,0x10
    4b2c:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4b30:	390000ef          	jal	4ec0 <printf>
    4b34:	0bf00513          	li	a0,191
    4b38:	1f8000ef          	jal	4d30 <print_dec>
    4b3c:	000107b7          	lui	a5,0x10
    4b40:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4b44:	37c000ef          	jal	4ec0 <printf>
    4b48:	fe442783          	lw	a5,-28(s0)
    4b4c:	00078513          	mv	a0,a5
    4b50:	300000ef          	jal	4e50 <print_hex>
    4b54:	00a00513          	li	a0,10
    4b58:	15c000ef          	jal	4cb4 <putchar>
    4b5c:	00100073          	ebreak
    4b60:	fff00793          	li	a5,-1
    4b64:	fef42623          	sw	a5,-20(s0)
    4b68:	fec42783          	lw	a5,-20(s0)
    4b6c:	0017b793          	seqz	a5,a5
    4b70:	fef42223          	sw	a5,-28(s0)
    4b74:	fe442783          	lw	a5,-28(s0)
    4b78:	04078063          	beqz	a5,4bb8 <main+0x4b58>
    4b7c:	00100073          	ebreak
    4b80:	000107b7          	lui	a5,0x10
    4b84:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4b88:	338000ef          	jal	4ec0 <printf>
    4b8c:	0c000513          	li	a0,192
    4b90:	1a0000ef          	jal	4d30 <print_dec>
    4b94:	000107b7          	lui	a5,0x10
    4b98:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4b9c:	324000ef          	jal	4ec0 <printf>
    4ba0:	fe442783          	lw	a5,-28(s0)
    4ba4:	00078513          	mv	a0,a5
    4ba8:	2a8000ef          	jal	4e50 <print_hex>
    4bac:	00a00513          	li	a0,10
    4bb0:	104000ef          	jal	4cb4 <putchar>
    4bb4:	00100073          	ebreak
    4bb8:	fff00793          	li	a5,-1
    4bbc:	fef42623          	sw	a5,-20(s0)
    4bc0:	fec42783          	lw	a5,-20(s0)
    4bc4:	fff7b793          	sltiu	a5,a5,-1
    4bc8:	fef42223          	sw	a5,-28(s0)
    4bcc:	fe442783          	lw	a5,-28(s0)
    4bd0:	04078063          	beqz	a5,4c10 <main+0x4bb0>
    4bd4:	00100073          	ebreak
    4bd8:	000107b7          	lui	a5,0x10
    4bdc:	03878513          	add	a0,a5,56 # 10038 <__modsi3+0xafd0>
    4be0:	2e0000ef          	jal	4ec0 <printf>
    4be4:	0c100513          	li	a0,193
    4be8:	148000ef          	jal	4d30 <print_dec>
    4bec:	000107b7          	lui	a5,0x10
    4bf0:	03478513          	add	a0,a5,52 # 10034 <__modsi3+0xafcc>
    4bf4:	2cc000ef          	jal	4ec0 <printf>
    4bf8:	fe442783          	lw	a5,-28(s0)
    4bfc:	00078513          	mv	a0,a5
    4c00:	250000ef          	jal	4e50 <print_hex>
    4c04:	00a00513          	li	a0,10
    4c08:	0ac000ef          	jal	4cb4 <putchar>
    4c0c:	00100073          	ebreak
    4c10:	000107b7          	lui	a5,0x10
    4c14:	04c78513          	add	a0,a5,76 # 1004c <__modsi3+0xafe4>
    4c18:	0b0000ef          	jal	4cc8 <print_string>
    4c1c:	c1cfb0ef          	jal	38 <insn>
    4c20:	fea42023          	sw	a0,-32(s0)
    4c24:	becfb0ef          	jal	10 <time>
    4c28:	fca42e23          	sw	a0,-36(s0)
    4c2c:	000107b7          	lui	a5,0x10
    4c30:	06878513          	add	a0,a5,104 # 10068 <__modsi3+0xb000>
    4c34:	094000ef          	jal	4cc8 <print_string>
    4c38:	fdc42503          	lw	a0,-36(s0)
    4c3c:	0f4000ef          	jal	4d30 <print_dec>
    4c40:	000107b7          	lui	a5,0x10
    4c44:	07478513          	add	a0,a5,116 # 10074 <__modsi3+0xb00c>
    4c48:	080000ef          	jal	4cc8 <print_string>
    4c4c:	fdc42783          	lw	a5,-36(s0)
    4c50:	00078513          	mv	a0,a5
    4c54:	1fc000ef          	jal	4e50 <print_hex>
    4c58:	000107b7          	lui	a5,0x10
    4c5c:	07878513          	add	a0,a5,120 # 10078 <__modsi3+0xb010>
    4c60:	068000ef          	jal	4cc8 <print_string>
    4c64:	000107b7          	lui	a5,0x10
    4c68:	07c78513          	add	a0,a5,124 # 1007c <__modsi3+0xb014>
    4c6c:	05c000ef          	jal	4cc8 <print_string>
    4c70:	fe042503          	lw	a0,-32(s0)
    4c74:	0bc000ef          	jal	4d30 <print_dec>
    4c78:	000107b7          	lui	a5,0x10
    4c7c:	07478513          	add	a0,a5,116 # 10074 <__modsi3+0xb00c>
    4c80:	048000ef          	jal	4cc8 <print_string>
    4c84:	fe042783          	lw	a5,-32(s0)
    4c88:	00078513          	mv	a0,a5
    4c8c:	1c4000ef          	jal	4e50 <print_hex>
    4c90:	000107b7          	lui	a5,0x10
    4c94:	07878513          	add	a0,a5,120 # 10078 <__modsi3+0xb010>
    4c98:	030000ef          	jal	4cc8 <print_string>
    4c9c:	00000793          	li	a5,0
    4ca0:	00078513          	mv	a0,a5
    4ca4:	02c12083          	lw	ra,44(sp)
    4ca8:	02812403          	lw	s0,40(sp)
    4cac:	03010113          	add	sp,sp,48
    4cb0:	00008067          	ret

00004cb4 <putchar>:
    4cb4:	06000737          	lui	a4,0x6000
    4cb8:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    4cbc:	fe078ee3          	beqz	a5,4cb8 <putchar+0x4>
    4cc0:	00a72023          	sw	a0,0(a4)
    4cc4:	00008067          	ret

00004cc8 <print_string>:
    4cc8:	00054683          	lbu	a3,0(a0)
    4ccc:	02068063          	beqz	a3,4cec <print_string+0x24>
    4cd0:	06000737          	lui	a4,0x6000
    4cd4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    4cd8:	fe078ee3          	beqz	a5,4cd4 <print_string+0xc>
    4cdc:	00d72023          	sw	a3,0(a4)
    4ce0:	00154683          	lbu	a3,1(a0)
    4ce4:	00150513          	add	a0,a0,1
    4ce8:	fe0696e3          	bnez	a3,4cd4 <print_string+0xc>
    4cec:	00008067          	ret

00004cf0 <puts>:
    4cf0:	00054683          	lbu	a3,0(a0)
    4cf4:	02068063          	beqz	a3,4d14 <puts+0x24>
    4cf8:	06000737          	lui	a4,0x6000
    4cfc:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    4d00:	fe078ee3          	beqz	a5,4cfc <puts+0xc>
    4d04:	00d72023          	sw	a3,0(a4)
    4d08:	00154683          	lbu	a3,1(a0)
    4d0c:	00150513          	add	a0,a0,1
    4d10:	fe0696e3          	bnez	a3,4cfc <puts+0xc>
    4d14:	06000737          	lui	a4,0x6000
    4d18:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    4d1c:	fe078ee3          	beqz	a5,4d18 <puts+0x28>
    4d20:	00a00793          	li	a5,10
    4d24:	00f72023          	sw	a5,0(a4)
    4d28:	00100513          	li	a0,1
    4d2c:	00008067          	ret

00004d30 <print_dec>:
    4d30:	ef010113          	add	sp,sp,-272
    4d34:	10812423          	sw	s0,264(sp)
    4d38:	10112623          	sw	ra,268(sp)
    4d3c:	10912223          	sw	s1,260(sp)
    4d40:	11212023          	sw	s2,256(sp)
    4d44:	00050413          	mv	s0,a0
    4d48:	06000737          	lui	a4,0x6000
    4d4c:	00055c63          	bgez	a0,4d64 <print_dec+0x34>
    4d50:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    4d54:	fe078ee3          	beqz	a5,4d50 <print_dec+0x20>
    4d58:	02d00793          	li	a5,45
    4d5c:	00f72023          	sw	a5,0(a4)
    4d60:	40800433          	neg	s0,s0
    4d64:	00010913          	mv	s2,sp
    4d68:	00090493          	mv	s1,s2
    4d6c:	0240006f          	j	4d90 <print_dec+0x60>
    4d70:	2f8000ef          	jal	5068 <__modsi3>
    4d74:	00050793          	mv	a5,a0
    4d78:	00a00593          	li	a1,10
    4d7c:	00040513          	mv	a0,s0
    4d80:	00f48023          	sb	a5,0(s1)
    4d84:	260000ef          	jal	4fe4 <__divsi3>
    4d88:	00148493          	add	s1,s1,1
    4d8c:	00050413          	mv	s0,a0
    4d90:	00a00593          	li	a1,10
    4d94:	00040513          	mv	a0,s0
    4d98:	fc041ce3          	bnez	s0,4d70 <print_dec+0x40>
    4d9c:	fd248ae3          	beq	s1,s2,4d70 <print_dec+0x40>
    4da0:	06000737          	lui	a4,0x6000
    4da4:	fff4c683          	lbu	a3,-1(s1)
    4da8:	fff48493          	add	s1,s1,-1
    4dac:	03068693          	add	a3,a3,48
    4db0:	0ff6f693          	zext.b	a3,a3
    4db4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    4db8:	fe078ee3          	beqz	a5,4db4 <print_dec+0x84>
    4dbc:	00d72023          	sw	a3,0(a4)
    4dc0:	ff2492e3          	bne	s1,s2,4da4 <print_dec+0x74>
    4dc4:	10c12083          	lw	ra,268(sp)
    4dc8:	10812403          	lw	s0,264(sp)
    4dcc:	10412483          	lw	s1,260(sp)
    4dd0:	10012903          	lw	s2,256(sp)
    4dd4:	11010113          	add	sp,sp,272
    4dd8:	00008067          	ret

00004ddc <print_hex_digits>:
    4ddc:	000107b7          	lui	a5,0x10
    4de0:	08878793          	add	a5,a5,136 # 10088 <__modsi3+0xb020>
    4de4:	0007a883          	lw	a7,0(a5)
    4de8:	0047a803          	lw	a6,4(a5)
    4dec:	0087a603          	lw	a2,8(a5)
    4df0:	00c7a703          	lw	a4,12(a5)
    4df4:	0107c783          	lbu	a5,16(a5)
    4df8:	fe010113          	add	sp,sp,-32
    4dfc:	fff58693          	add	a3,a1,-1
    4e00:	01112623          	sw	a7,12(sp)
    4e04:	01012823          	sw	a6,16(sp)
    4e08:	00c12a23          	sw	a2,20(sp)
    4e0c:	00e12c23          	sw	a4,24(sp)
    4e10:	00f10e23          	sb	a5,28(sp)
    4e14:	00269693          	sll	a3,a3,0x2
    4e18:	0206c863          	bltz	a3,4e48 <print_hex_digits+0x6c>
    4e1c:	06000737          	lui	a4,0x6000
    4e20:	00d557b3          	srl	a5,a0,a3
    4e24:	00f7f793          	and	a5,a5,15
    4e28:	02078793          	add	a5,a5,32
    4e2c:	002787b3          	add	a5,a5,sp
    4e30:	fec7c603          	lbu	a2,-20(a5)
    4e34:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    4e38:	fe078ee3          	beqz	a5,4e34 <print_hex_digits+0x58>
    4e3c:	00c72023          	sw	a2,0(a4)
    4e40:	ffc68693          	add	a3,a3,-4
    4e44:	fc06dee3          	bgez	a3,4e20 <print_hex_digits+0x44>
    4e48:	02010113          	add	sp,sp,32
    4e4c:	00008067          	ret

00004e50 <print_hex>:
    4e50:	000107b7          	lui	a5,0x10
    4e54:	08878793          	add	a5,a5,136 # 10088 <__modsi3+0xb020>
    4e58:	0007a583          	lw	a1,0(a5)
    4e5c:	0087a683          	lw	a3,8(a5)
    4e60:	00c7a703          	lw	a4,12(a5)
    4e64:	0047a603          	lw	a2,4(a5)
    4e68:	0107c783          	lbu	a5,16(a5)
    4e6c:	fe010113          	add	sp,sp,-32
    4e70:	00b12623          	sw	a1,12(sp)
    4e74:	00d12a23          	sw	a3,20(sp)
    4e78:	00e12c23          	sw	a4,24(sp)
    4e7c:	00c12823          	sw	a2,16(sp)
    4e80:	00f10e23          	sb	a5,28(sp)
    4e84:	01c00693          	li	a3,28
    4e88:	06000737          	lui	a4,0x6000
    4e8c:	ffc00593          	li	a1,-4
    4e90:	00d557b3          	srl	a5,a0,a3
    4e94:	00f7f793          	and	a5,a5,15
    4e98:	02078793          	add	a5,a5,32
    4e9c:	002787b3          	add	a5,a5,sp
    4ea0:	fec7c603          	lbu	a2,-20(a5)
    4ea4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
    4ea8:	fe078ee3          	beqz	a5,4ea4 <print_hex+0x54>
    4eac:	00c72023          	sw	a2,0(a4)
    4eb0:	ffc68693          	add	a3,a3,-4
    4eb4:	fcb69ee3          	bne	a3,a1,4e90 <print_hex+0x40>
    4eb8:	02010113          	add	sp,sp,32
    4ebc:	00008067          	ret

00004ec0 <printf>:
    4ec0:	fb010113          	add	sp,sp,-80
    4ec4:	02812423          	sw	s0,40(sp)
    4ec8:	04f12223          	sw	a5,68(sp)
    4ecc:	02112623          	sw	ra,44(sp)
    4ed0:	02b12a23          	sw	a1,52(sp)
    4ed4:	02c12c23          	sw	a2,56(sp)
    4ed8:	02d12e23          	sw	a3,60(sp)
    4edc:	04e12023          	sw	a4,64(sp)
    4ee0:	05012423          	sw	a6,72(sp)
    4ee4:	05112623          	sw	a7,76(sp)
    4ee8:	00050413          	mv	s0,a0
    4eec:	00054503          	lbu	a0,0(a0)
    4ef0:	03410793          	add	a5,sp,52
    4ef4:	00f12623          	sw	a5,12(sp)
    4ef8:	06050663          	beqz	a0,4f64 <printf+0xa4>
    4efc:	02912223          	sw	s1,36(sp)
    4f00:	03212023          	sw	s2,32(sp)
    4f04:	01312e23          	sw	s3,28(sp)
    4f08:	01412c23          	sw	s4,24(sp)
    4f0c:	01512a23          	sw	s5,20(sp)
    4f10:	02500493          	li	s1,37
    4f14:	07300913          	li	s2,115
    4f18:	07800993          	li	s3,120
    4f1c:	06400a13          	li	s4,100
    4f20:	06300a93          	li	s5,99
    4f24:	04951a63          	bne	a0,s1,4f78 <printf+0xb8>
    4f28:	00144503          	lbu	a0,1(s0)
    4f2c:	05250c63          	beq	a0,s2,4f84 <printf+0xc4>
    4f30:	09350263          	beq	a0,s3,4fb4 <printf+0xf4>
    4f34:	09450c63          	beq	a0,s4,4fcc <printf+0x10c>
    4f38:	07550263          	beq	a0,s5,4f9c <printf+0xdc>
    4f3c:	d79ff0ef          	jal	4cb4 <putchar>
    4f40:	00140793          	add	a5,s0,1
    4f44:	0017c503          	lbu	a0,1(a5)
    4f48:	00178413          	add	s0,a5,1
    4f4c:	fc051ce3          	bnez	a0,4f24 <printf+0x64>
    4f50:	02412483          	lw	s1,36(sp)
    4f54:	02012903          	lw	s2,32(sp)
    4f58:	01c12983          	lw	s3,28(sp)
    4f5c:	01812a03          	lw	s4,24(sp)
    4f60:	01412a83          	lw	s5,20(sp)
    4f64:	02c12083          	lw	ra,44(sp)
    4f68:	02812403          	lw	s0,40(sp)
    4f6c:	00000513          	li	a0,0
    4f70:	05010113          	add	sp,sp,80
    4f74:	00008067          	ret
    4f78:	d3dff0ef          	jal	4cb4 <putchar>
    4f7c:	00040793          	mv	a5,s0
    4f80:	fc5ff06f          	j	4f44 <printf+0x84>
    4f84:	00c12783          	lw	a5,12(sp)
    4f88:	0007a503          	lw	a0,0(a5)
    4f8c:	00478793          	add	a5,a5,4
    4f90:	00f12623          	sw	a5,12(sp)
    4f94:	d35ff0ef          	jal	4cc8 <print_string>
    4f98:	fa9ff06f          	j	4f40 <printf+0x80>
    4f9c:	00c12783          	lw	a5,12(sp)
    4fa0:	0007c503          	lbu	a0,0(a5)
    4fa4:	00478793          	add	a5,a5,4
    4fa8:	00f12623          	sw	a5,12(sp)
    4fac:	d09ff0ef          	jal	4cb4 <putchar>
    4fb0:	f91ff06f          	j	4f40 <printf+0x80>
    4fb4:	00c12783          	lw	a5,12(sp)
    4fb8:	0007a503          	lw	a0,0(a5)
    4fbc:	00478793          	add	a5,a5,4
    4fc0:	00f12623          	sw	a5,12(sp)
    4fc4:	e8dff0ef          	jal	4e50 <print_hex>
    4fc8:	f79ff06f          	j	4f40 <printf+0x80>
    4fcc:	00c12783          	lw	a5,12(sp)
    4fd0:	0007a503          	lw	a0,0(a5)
    4fd4:	00478793          	add	a5,a5,4
    4fd8:	00f12623          	sw	a5,12(sp)
    4fdc:	d55ff0ef          	jal	4d30 <print_dec>
    4fe0:	f61ff06f          	j	4f40 <printf+0x80>

00004fe4 <__divsi3>:
    4fe4:	06054063          	bltz	a0,5044 <__umodsi3+0x10>
    4fe8:	0605c663          	bltz	a1,5054 <__umodsi3+0x20>

00004fec <__udivsi3>:
    4fec:	00058613          	mv	a2,a1
    4ff0:	00050593          	mv	a1,a0
    4ff4:	fff00513          	li	a0,-1
    4ff8:	02060c63          	beqz	a2,5030 <__udivsi3+0x44>
    4ffc:	00100693          	li	a3,1
    5000:	00b67a63          	bgeu	a2,a1,5014 <__udivsi3+0x28>
    5004:	00c05863          	blez	a2,5014 <__udivsi3+0x28>
    5008:	00161613          	sll	a2,a2,0x1
    500c:	00169693          	sll	a3,a3,0x1
    5010:	feb66ae3          	bltu	a2,a1,5004 <__udivsi3+0x18>
    5014:	00000513          	li	a0,0
    5018:	00c5e663          	bltu	a1,a2,5024 <__udivsi3+0x38>
    501c:	40c585b3          	sub	a1,a1,a2
    5020:	00d56533          	or	a0,a0,a3
    5024:	0016d693          	srl	a3,a3,0x1
    5028:	00165613          	srl	a2,a2,0x1
    502c:	fe0696e3          	bnez	a3,5018 <__udivsi3+0x2c>
    5030:	00008067          	ret

00005034 <__umodsi3>:
    5034:	00008293          	mv	t0,ra
    5038:	fb5ff0ef          	jal	4fec <__udivsi3>
    503c:	00058513          	mv	a0,a1
    5040:	00028067          	jr	t0
    5044:	40a00533          	neg	a0,a0
    5048:	0005d863          	bgez	a1,5058 <__umodsi3+0x24>
    504c:	40b005b3          	neg	a1,a1
    5050:	f95ff06f          	j	4fe4 <__divsi3>
    5054:	40b005b3          	neg	a1,a1
    5058:	00008293          	mv	t0,ra
    505c:	f89ff0ef          	jal	4fe4 <__divsi3>
    5060:	40a00533          	neg	a0,a0
    5064:	00028067          	jr	t0

00005068 <__modsi3>:
    5068:	00008293          	mv	t0,ra
    506c:	0005ca63          	bltz	a1,5080 <__modsi3+0x18>
    5070:	00054c63          	bltz	a0,5088 <__modsi3+0x20>
    5074:	f79ff0ef          	jal	4fec <__udivsi3>
    5078:	00058513          	mv	a0,a1
    507c:	00028067          	jr	t0
    5080:	40b005b3          	neg	a1,a1
    5084:	fe0558e3          	bgez	a0,5074 <__modsi3+0xc>
    5088:	40a00533          	neg	a0,a0
    508c:	f61ff0ef          	jal	4fec <__udivsi3>
    5090:	40b00533          	neg	a0,a1
    5094:	00028067          	jr	t0

Disassembly of section .data:

00010000 <.data>:
   10000:	6928                	.2byte	0x6928
   10002:	2969                	.2byte	0x2969
   10004:	5320                	.2byte	0x5320
   10006:	6174                	.2byte	0x6174
   10008:	7472                	.2byte	0x7472
   1000a:	6e69                	.2byte	0x6e69
   1000c:	49522067          	.4byte	0x49522067
   10010:	562d4353          	.4byte	0x562d4353
   10014:	7420                	.2byte	0x7420
   10016:	7365                	.2byte	0x7365
   10018:	2e74                	.2byte	0x2e74
   1001a:	2e2e                	.2byte	0x2e2e
   1001c:	000a                	.2byte	0xa
   1001e:	0000                	.2byte	0x0
   10020:	4520                	.2byte	0x4520
   10022:	7272                	.2byte	0x7272
   10024:	5220726f          	jal	tp,17546 <__modsi3+0x124de>
   10028:	5232                	.2byte	0x5232
   1002a:	6920                	.2byte	0x6920
   1002c:	206e                	.2byte	0x206e
   1002e:	6574                	.2byte	0x6574
   10030:	00207473          	.4byte	0x207473
   10034:	3a20                	.2byte	0x3a20
   10036:	0020                	.2byte	0x20
   10038:	4520                	.2byte	0x4520
   1003a:	7272                	.2byte	0x7272
   1003c:	5220726f          	jal	tp,1755e <__modsi3+0x124f6>
   10040:	4932                	.2byte	0x4932
   10042:	6920                	.2byte	0x6920
   10044:	206e                	.2byte	0x206e
   10046:	6574                	.2byte	0x6574
   10048:	00207473          	.4byte	0x207473
   1004c:	6928                	.2byte	0x6928
   1004e:	2969                	.2byte	0x2969
   10050:	4520                	.2byte	0x4520
   10052:	646e                	.2byte	0x646e
   10054:	6f20                	.2byte	0x6f20
   10056:	2066                	.2byte	0x2066
   10058:	4952                	.2byte	0x4952
   1005a:	562d4353          	.4byte	0x562d4353
   1005e:	7420                	.2byte	0x7420
   10060:	7365                	.2byte	0x7365
   10062:	2e74                	.2byte	0x2e74
   10064:	2e2e                	.2byte	0x2e2e
   10066:	000a                	.2byte	0xa
   10068:	203e                	.2byte	0x203e
   1006a:	6974                	.2byte	0x6974
   1006c:	656d                	.2byte	0x656d
   1006e:	3a20                	.2byte	0x3a20
   10070:	0020                	.2byte	0x20
   10072:	0000                	.2byte	0x0
   10074:	2820                	.2byte	0x2820
   10076:	0000                	.2byte	0x0
   10078:	0a29                	.2byte	0xa29
   1007a:	0000                	.2byte	0x0
   1007c:	203e                	.2byte	0x203e
   1007e:	6e69                	.2byte	0x6e69
   10080:	3a206e73          	.4byte	0x3a206e73
   10084:	0020                	.2byte	0x20
   10086:	0000                	.2byte	0x0
   10088:	3130                	.2byte	0x3130
   1008a:	3332                	.2byte	0x3332
   1008c:	3534                	.2byte	0x3534
   1008e:	3736                	.2byte	0x3736
   10090:	3938                	.2byte	0x3938
   10092:	4241                	.2byte	0x4241
   10094:	46454443          	.4byte	0x46454443
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <time+0x4>
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
