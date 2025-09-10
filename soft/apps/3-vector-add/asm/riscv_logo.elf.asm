
./bin/riscv_logo.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	008000ef          	jal	10 <main>
   c:	00100073          	ebreak

00000010 <main>:
  10:	00010537          	lui	a0,0x10
  14:	fe010113          	add	sp,sp,-32 # 1ffe0 <__modsi3+0x1fba4>
  18:	00050513          	mv	a0,a0
  1c:	00112e23          	sw	ra,28(sp)
  20:	00812c23          	sw	s0,24(sp)
  24:	00912a23          	sw	s1,20(sp)
  28:	01212823          	sw	s2,16(sp)
  2c:	01312623          	sw	s3,12(sp)
  30:	190000ef          	jal	1c0 <print_string>
  34:	00010537          	lui	a0,0x10
  38:	03050513          	add	a0,a0,48 # 10030 <__modsi3+0xfbf4>
  3c:	184000ef          	jal	1c0 <print_string>
  40:	00010537          	lui	a0,0x10
  44:	06050513          	add	a0,a0,96 # 10060 <__modsi3+0xfc24>
  48:	178000ef          	jal	1c0 <print_string>
  4c:	00010537          	lui	a0,0x10
  50:	09050513          	add	a0,a0,144 # 10090 <__modsi3+0xfc54>
  54:	00010437          	lui	s0,0x10
  58:	168000ef          	jal	1c0 <print_string>
  5c:	0c040513          	add	a0,s0,192 # 100c0 <__modsi3+0xfc84>
  60:	160000ef          	jal	1c0 <print_string>
  64:	0c040513          	add	a0,s0,192
  68:	158000ef          	jal	1c0 <print_string>
  6c:	0c040513          	add	a0,s0,192
  70:	150000ef          	jal	1c0 <print_string>
  74:	00010537          	lui	a0,0x10
  78:	0f050513          	add	a0,a0,240 # 100f0 <__modsi3+0xfcb4>
  7c:	144000ef          	jal	1c0 <print_string>
  80:	00010537          	lui	a0,0x10
  84:	12050513          	add	a0,a0,288 # 10120 <__modsi3+0xfce4>
  88:	138000ef          	jal	1c0 <print_string>
  8c:	00010537          	lui	a0,0x10
  90:	15050513          	add	a0,a0,336 # 10150 <__modsi3+0xfd14>
  94:	12c000ef          	jal	1c0 <print_string>
  98:	00010537          	lui	a0,0x10
  9c:	18050513          	add	a0,a0,384 # 10180 <__modsi3+0xfd44>
  a0:	120000ef          	jal	1c0 <print_string>
  a4:	00010537          	lui	a0,0x10
  a8:	1b050513          	add	a0,a0,432 # 101b0 <__modsi3+0xfd74>
  ac:	114000ef          	jal	1c0 <print_string>
  b0:	00010537          	lui	a0,0x10
  b4:	1e050513          	add	a0,a0,480 # 101e0 <__modsi3+0xfda4>
  b8:	108000ef          	jal	1c0 <print_string>
  bc:	00010537          	lui	a0,0x10
  c0:	21050513          	add	a0,a0,528 # 10210 <__modsi3+0xfdd4>
  c4:	0fc000ef          	jal	1c0 <print_string>
  c8:	00010537          	lui	a0,0x10
  cc:	24050513          	add	a0,a0,576 # 10240 <__modsi3+0xfe04>
  d0:	0f0000ef          	jal	1c0 <print_string>
  d4:	00010537          	lui	a0,0x10
  d8:	27050513          	add	a0,a0,624 # 10270 <__modsi3+0xfe34>
  dc:	0e4000ef          	jal	1c0 <print_string>
  e0:	00010537          	lui	a0,0x10
  e4:	2a050513          	add	a0,a0,672 # 102a0 <__modsi3+0xfe64>
  e8:	0d8000ef          	jal	1c0 <print_string>
  ec:	00010537          	lui	a0,0x10
  f0:	2d050513          	add	a0,a0,720 # 102d0 <__modsi3+0xfe94>
  f4:	0cc000ef          	jal	1c0 <print_string>
  f8:	00010537          	lui	a0,0x10
  fc:	30050513          	add	a0,a0,768 # 10300 <__modsi3+0xfec4>
 100:	0c0000ef          	jal	1c0 <print_string>
 104:	00010537          	lui	a0,0x10
 108:	33050513          	add	a0,a0,816 # 10330 <__modsi3+0xfef4>
 10c:	0b4000ef          	jal	1c0 <print_string>
 110:	00010537          	lui	a0,0x10
 114:	36050513          	add	a0,a0,864 # 10360 <__modsi3+0xff24>
 118:	0a8000ef          	jal	1c0 <print_string>
 11c:	c0202473          	rdinstret	s0
 120:	c0002973          	rdcycle	s2
 124:	000109b7          	lui	s3,0x10
 128:	39098513          	add	a0,s3,912 # 10390 <__modsi3+0xff54>
 12c:	094000ef          	jal	1c0 <print_string>
 130:	00090513          	mv	a0,s2
 134:	214000ef          	jal	348 <print_hex>
 138:	00a00513          	li	a0,10
 13c:	070000ef          	jal	1ac <putchar>
 140:	000104b7          	lui	s1,0x10
 144:	39c48513          	add	a0,s1,924 # 1039c <__modsi3+0xff60>
 148:	078000ef          	jal	1c0 <print_string>
 14c:	00040513          	mv	a0,s0
 150:	1f8000ef          	jal	348 <print_hex>
 154:	00a00513          	li	a0,10
 158:	054000ef          	jal	1ac <putchar>
 15c:	39098513          	add	a0,s3,912
 160:	060000ef          	jal	1c0 <print_string>
 164:	00090513          	mv	a0,s2
 168:	0c0000ef          	jal	228 <print_dec>
 16c:	00a00513          	li	a0,10
 170:	03c000ef          	jal	1ac <putchar>
 174:	39c48513          	add	a0,s1,924
 178:	048000ef          	jal	1c0 <print_string>
 17c:	00040513          	mv	a0,s0
 180:	0a8000ef          	jal	228 <print_dec>
 184:	00a00513          	li	a0,10
 188:	024000ef          	jal	1ac <putchar>
 18c:	01c12083          	lw	ra,28(sp)
 190:	01812403          	lw	s0,24(sp)
 194:	01412483          	lw	s1,20(sp)
 198:	01012903          	lw	s2,16(sp)
 19c:	00c12983          	lw	s3,12(sp)
 1a0:	00000513          	li	a0,0
 1a4:	02010113          	add	sp,sp,32
 1a8:	00008067          	ret

000001ac <putchar>:
 1ac:	06000737          	lui	a4,0x6000
 1b0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 1b4:	fe078ee3          	beqz	a5,1b0 <putchar+0x4>
 1b8:	00a72023          	sw	a0,0(a4)
 1bc:	00008067          	ret

000001c0 <print_string>:
 1c0:	00054683          	lbu	a3,0(a0)
 1c4:	02068063          	beqz	a3,1e4 <print_string+0x24>
 1c8:	06000737          	lui	a4,0x6000
 1cc:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 1d0:	fe078ee3          	beqz	a5,1cc <print_string+0xc>
 1d4:	00d72023          	sw	a3,0(a4)
 1d8:	00154683          	lbu	a3,1(a0)
 1dc:	00150513          	add	a0,a0,1
 1e0:	fe0696e3          	bnez	a3,1cc <print_string+0xc>
 1e4:	00008067          	ret

000001e8 <puts>:
 1e8:	00054683          	lbu	a3,0(a0)
 1ec:	02068063          	beqz	a3,20c <puts+0x24>
 1f0:	06000737          	lui	a4,0x6000
 1f4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 1f8:	fe078ee3          	beqz	a5,1f4 <puts+0xc>
 1fc:	00d72023          	sw	a3,0(a4)
 200:	00154683          	lbu	a3,1(a0)
 204:	00150513          	add	a0,a0,1
 208:	fe0696e3          	bnez	a3,1f4 <puts+0xc>
 20c:	06000737          	lui	a4,0x6000
 210:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 214:	fe078ee3          	beqz	a5,210 <puts+0x28>
 218:	00a00793          	li	a5,10
 21c:	00f72023          	sw	a5,0(a4)
 220:	00100513          	li	a0,1
 224:	00008067          	ret

00000228 <print_dec>:
 228:	ef010113          	add	sp,sp,-272
 22c:	10812423          	sw	s0,264(sp)
 230:	10112623          	sw	ra,268(sp)
 234:	10912223          	sw	s1,260(sp)
 238:	11212023          	sw	s2,256(sp)
 23c:	00050413          	mv	s0,a0
 240:	06000737          	lui	a4,0x6000
 244:	00055c63          	bgez	a0,25c <print_dec+0x34>
 248:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 24c:	fe078ee3          	beqz	a5,248 <print_dec+0x20>
 250:	02d00793          	li	a5,45
 254:	00f72023          	sw	a5,0(a4)
 258:	40800433          	neg	s0,s0
 25c:	00010913          	mv	s2,sp
 260:	00090493          	mv	s1,s2
 264:	0240006f          	j	288 <print_dec+0x60>
 268:	1d4000ef          	jal	43c <__modsi3>
 26c:	00050793          	mv	a5,a0
 270:	00a00593          	li	a1,10
 274:	00040513          	mv	a0,s0
 278:	00f48023          	sb	a5,0(s1)
 27c:	13c000ef          	jal	3b8 <__divsi3>
 280:	00148493          	add	s1,s1,1
 284:	00050413          	mv	s0,a0
 288:	00a00593          	li	a1,10
 28c:	00040513          	mv	a0,s0
 290:	fc041ce3          	bnez	s0,268 <print_dec+0x40>
 294:	fd248ae3          	beq	s1,s2,268 <print_dec+0x40>
 298:	06000737          	lui	a4,0x6000
 29c:	fff4c683          	lbu	a3,-1(s1)
 2a0:	fff48493          	add	s1,s1,-1
 2a4:	03068693          	add	a3,a3,48
 2a8:	0ff6f693          	zext.b	a3,a3
 2ac:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 2b0:	fe078ee3          	beqz	a5,2ac <print_dec+0x84>
 2b4:	00d72023          	sw	a3,0(a4)
 2b8:	ff2492e3          	bne	s1,s2,29c <print_dec+0x74>
 2bc:	10c12083          	lw	ra,268(sp)
 2c0:	10812403          	lw	s0,264(sp)
 2c4:	10412483          	lw	s1,260(sp)
 2c8:	10012903          	lw	s2,256(sp)
 2cc:	11010113          	add	sp,sp,272
 2d0:	00008067          	ret

000002d4 <print_hex_digits>:
 2d4:	000107b7          	lui	a5,0x10
 2d8:	3a878793          	add	a5,a5,936 # 103a8 <__modsi3+0xff6c>
 2dc:	0007a883          	lw	a7,0(a5)
 2e0:	0047a803          	lw	a6,4(a5)
 2e4:	0087a603          	lw	a2,8(a5)
 2e8:	00c7a703          	lw	a4,12(a5)
 2ec:	0107c783          	lbu	a5,16(a5)
 2f0:	fe010113          	add	sp,sp,-32
 2f4:	fff58693          	add	a3,a1,-1
 2f8:	01112623          	sw	a7,12(sp)
 2fc:	01012823          	sw	a6,16(sp)
 300:	00c12a23          	sw	a2,20(sp)
 304:	00e12c23          	sw	a4,24(sp)
 308:	00f10e23          	sb	a5,28(sp)
 30c:	00269693          	sll	a3,a3,0x2
 310:	0206c863          	bltz	a3,340 <print_hex_digits+0x6c>
 314:	06000737          	lui	a4,0x6000
 318:	00d557b3          	srl	a5,a0,a3
 31c:	00f7f793          	and	a5,a5,15
 320:	02078793          	add	a5,a5,32
 324:	002787b3          	add	a5,a5,sp
 328:	fec7c603          	lbu	a2,-20(a5)
 32c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 330:	fe078ee3          	beqz	a5,32c <print_hex_digits+0x58>
 334:	00c72023          	sw	a2,0(a4)
 338:	ffc68693          	add	a3,a3,-4
 33c:	fc06dee3          	bgez	a3,318 <print_hex_digits+0x44>
 340:	02010113          	add	sp,sp,32
 344:	00008067          	ret

00000348 <print_hex>:
 348:	000107b7          	lui	a5,0x10
 34c:	3a878793          	add	a5,a5,936 # 103a8 <__modsi3+0xff6c>
 350:	0007a583          	lw	a1,0(a5)
 354:	0087a683          	lw	a3,8(a5)
 358:	00c7a703          	lw	a4,12(a5)
 35c:	0047a603          	lw	a2,4(a5)
 360:	0107c783          	lbu	a5,16(a5)
 364:	fe010113          	add	sp,sp,-32
 368:	00b12623          	sw	a1,12(sp)
 36c:	00d12a23          	sw	a3,20(sp)
 370:	00e12c23          	sw	a4,24(sp)
 374:	00c12823          	sw	a2,16(sp)
 378:	00f10e23          	sb	a5,28(sp)
 37c:	01c00693          	li	a3,28
 380:	06000737          	lui	a4,0x6000
 384:	ffc00593          	li	a1,-4
 388:	00d557b3          	srl	a5,a0,a3
 38c:	00f7f793          	and	a5,a5,15
 390:	02078793          	add	a5,a5,32
 394:	002787b3          	add	a5,a5,sp
 398:	fec7c603          	lbu	a2,-20(a5)
 39c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 3a0:	fe078ee3          	beqz	a5,39c <print_hex+0x54>
 3a4:	00c72023          	sw	a2,0(a4)
 3a8:	ffc68693          	add	a3,a3,-4
 3ac:	fcb69ee3          	bne	a3,a1,388 <print_hex+0x40>
 3b0:	02010113          	add	sp,sp,32
 3b4:	00008067          	ret

000003b8 <__divsi3>:
 3b8:	06054063          	bltz	a0,418 <__umodsi3+0x10>
 3bc:	0605c663          	bltz	a1,428 <__umodsi3+0x20>

000003c0 <__udivsi3>:
 3c0:	00058613          	mv	a2,a1
 3c4:	00050593          	mv	a1,a0
 3c8:	fff00513          	li	a0,-1
 3cc:	02060c63          	beqz	a2,404 <__udivsi3+0x44>
 3d0:	00100693          	li	a3,1
 3d4:	00b67a63          	bgeu	a2,a1,3e8 <__udivsi3+0x28>
 3d8:	00c05863          	blez	a2,3e8 <__udivsi3+0x28>
 3dc:	00161613          	sll	a2,a2,0x1
 3e0:	00169693          	sll	a3,a3,0x1
 3e4:	feb66ae3          	bltu	a2,a1,3d8 <__udivsi3+0x18>
 3e8:	00000513          	li	a0,0
 3ec:	00c5e663          	bltu	a1,a2,3f8 <__udivsi3+0x38>
 3f0:	40c585b3          	sub	a1,a1,a2
 3f4:	00d56533          	or	a0,a0,a3
 3f8:	0016d693          	srl	a3,a3,0x1
 3fc:	00165613          	srl	a2,a2,0x1
 400:	fe0696e3          	bnez	a3,3ec <__udivsi3+0x2c>
 404:	00008067          	ret

00000408 <__umodsi3>:
 408:	00008293          	mv	t0,ra
 40c:	fb5ff0ef          	jal	3c0 <__udivsi3>
 410:	00058513          	mv	a0,a1
 414:	00028067          	jr	t0
 418:	40a00533          	neg	a0,a0
 41c:	0005d863          	bgez	a1,42c <__umodsi3+0x24>
 420:	40b005b3          	neg	a1,a1
 424:	f95ff06f          	j	3b8 <__divsi3>
 428:	40b005b3          	neg	a1,a1
 42c:	00008293          	mv	t0,ra
 430:	f89ff0ef          	jal	3b8 <__divsi3>
 434:	40a00533          	neg	a0,a0
 438:	00028067          	jr	t0

0000043c <__modsi3>:
 43c:	00008293          	mv	t0,ra
 440:	0005ca63          	bltz	a1,454 <__modsi3+0x18>
 444:	00054c63          	bltz	a0,45c <__modsi3+0x20>
 448:	f79ff0ef          	jal	3c0 <__udivsi3>
 44c:	00058513          	mv	a0,a1
 450:	00028067          	jr	t0
 454:	40b005b3          	neg	a1,a1
 458:	fe0558e3          	bgez	a0,448 <__modsi3+0xc>
 45c:	40a00533          	neg	a0,a0
 460:	f61ff0ef          	jal	3c0 <__udivsi3>
 464:	40b00533          	neg	a0,a1
 468:	00028067          	jr	t0

Disassembly of section .data:

00010000 <.data>:
   10000:	2020                	.2byte	0x2020
   10002:	2020                	.2byte	0x2020
   10004:	2020                	.2byte	0x2020
   10006:	2020                	.2byte	0x2020
   10008:	2020                	.2byte	0x2020
   1000a:	2020                	.2byte	0x2020
   1000c:	2020                	.2byte	0x2020
   1000e:	7676                	.2byte	0x7676
   10010:	7676                	.2byte	0x7676
   10012:	7676                	.2byte	0x7676
   10014:	7676                	.2byte	0x7676
   10016:	7676                	.2byte	0x7676
   10018:	7676                	.2byte	0x7676
   1001a:	7676                	.2byte	0x7676
   1001c:	7676                	.2byte	0x7676
   1001e:	7676                	.2byte	0x7676
   10020:	7676                	.2byte	0x7676
   10022:	7676                	.2byte	0x7676
   10024:	7676                	.2byte	0x7676
   10026:	7676                	.2byte	0x7676
   10028:	7676                	.2byte	0x7676
   1002a:	7676                	.2byte	0x7676
   1002c:	7676                	.2byte	0x7676
   1002e:	000a                	.2byte	0xa
   10030:	2020                	.2byte	0x2020
   10032:	2020                	.2byte	0x2020
   10034:	2020                	.2byte	0x2020
   10036:	2020                	.2byte	0x2020
   10038:	2020                	.2byte	0x2020
   1003a:	2020                	.2byte	0x2020
   1003c:	2020                	.2byte	0x2020
   1003e:	2020                	.2byte	0x2020
   10040:	2020                	.2byte	0x2020
   10042:	7676                	.2byte	0x7676
   10044:	7676                	.2byte	0x7676
   10046:	7676                	.2byte	0x7676
   10048:	7676                	.2byte	0x7676
   1004a:	7676                	.2byte	0x7676
   1004c:	7676                	.2byte	0x7676
   1004e:	7676                	.2byte	0x7676
   10050:	7676                	.2byte	0x7676
   10052:	7676                	.2byte	0x7676
   10054:	7676                	.2byte	0x7676
   10056:	7676                	.2byte	0x7676
   10058:	7676                	.2byte	0x7676
   1005a:	7676                	.2byte	0x7676
   1005c:	7676                	.2byte	0x7676
   1005e:	000a                	.2byte	0xa
   10060:	7272                	.2byte	0x7272
   10062:	7272                	.2byte	0x7272
   10064:	7272                	.2byte	0x7272
   10066:	7272                	.2byte	0x7272
   10068:	7272                	.2byte	0x7272
   1006a:	7272                	.2byte	0x7272
   1006c:	2072                	.2byte	0x2072
   1006e:	2020                	.2byte	0x2020
   10070:	2020                	.2byte	0x2020
   10072:	2020                	.2byte	0x2020
   10074:	7676                	.2byte	0x7676
   10076:	7676                	.2byte	0x7676
   10078:	7676                	.2byte	0x7676
   1007a:	7676                	.2byte	0x7676
   1007c:	7676                	.2byte	0x7676
   1007e:	7676                	.2byte	0x7676
   10080:	7676                	.2byte	0x7676
   10082:	7676                	.2byte	0x7676
   10084:	7676                	.2byte	0x7676
   10086:	7676                	.2byte	0x7676
   10088:	7676                	.2byte	0x7676
   1008a:	7676                	.2byte	0x7676
   1008c:	7676                	.2byte	0x7676
   1008e:	000a                	.2byte	0xa
   10090:	7272                	.2byte	0x7272
   10092:	7272                	.2byte	0x7272
   10094:	7272                	.2byte	0x7272
   10096:	7272                	.2byte	0x7272
   10098:	7272                	.2byte	0x7272
   1009a:	7272                	.2byte	0x7272
   1009c:	7272                	.2byte	0x7272
   1009e:	7272                	.2byte	0x7272
   100a0:	2020                	.2byte	0x2020
   100a2:	2020                	.2byte	0x2020
   100a4:	2020                	.2byte	0x2020
   100a6:	7676                	.2byte	0x7676
   100a8:	7676                	.2byte	0x7676
   100aa:	7676                	.2byte	0x7676
   100ac:	7676                	.2byte	0x7676
   100ae:	7676                	.2byte	0x7676
   100b0:	7676                	.2byte	0x7676
   100b2:	7676                	.2byte	0x7676
   100b4:	7676                	.2byte	0x7676
   100b6:	7676                	.2byte	0x7676
   100b8:	7676                	.2byte	0x7676
   100ba:	7676                	.2byte	0x7676
   100bc:	7676                	.2byte	0x7676
   100be:	000a                	.2byte	0xa
   100c0:	7272                	.2byte	0x7272
   100c2:	7272                	.2byte	0x7272
   100c4:	7272                	.2byte	0x7272
   100c6:	7272                	.2byte	0x7272
   100c8:	7272                	.2byte	0x7272
   100ca:	7272                	.2byte	0x7272
   100cc:	7272                	.2byte	0x7272
   100ce:	7272                	.2byte	0x7272
   100d0:	7272                	.2byte	0x7272
   100d2:	2020                	.2byte	0x2020
   100d4:	2020                	.2byte	0x2020
   100d6:	7676                	.2byte	0x7676
   100d8:	7676                	.2byte	0x7676
   100da:	7676                	.2byte	0x7676
   100dc:	7676                	.2byte	0x7676
   100de:	7676                	.2byte	0x7676
   100e0:	7676                	.2byte	0x7676
   100e2:	7676                	.2byte	0x7676
   100e4:	7676                	.2byte	0x7676
   100e6:	7676                	.2byte	0x7676
   100e8:	7676                	.2byte	0x7676
   100ea:	7676                	.2byte	0x7676
   100ec:	7676                	.2byte	0x7676
   100ee:	000a                	.2byte	0xa
   100f0:	7272                	.2byte	0x7272
   100f2:	7272                	.2byte	0x7272
   100f4:	7272                	.2byte	0x7272
   100f6:	7272                	.2byte	0x7272
   100f8:	7272                	.2byte	0x7272
   100fa:	7272                	.2byte	0x7272
   100fc:	7272                	.2byte	0x7272
   100fe:	7272                	.2byte	0x7272
   10100:	2020                	.2byte	0x2020
   10102:	2020                	.2byte	0x2020
   10104:	2020                	.2byte	0x2020
   10106:	7676                	.2byte	0x7676
   10108:	7676                	.2byte	0x7676
   1010a:	7676                	.2byte	0x7676
   1010c:	7676                	.2byte	0x7676
   1010e:	7676                	.2byte	0x7676
   10110:	7676                	.2byte	0x7676
   10112:	7676                	.2byte	0x7676
   10114:	7676                	.2byte	0x7676
   10116:	7676                	.2byte	0x7676
   10118:	7676                	.2byte	0x7676
   1011a:	7676                	.2byte	0x7676
   1011c:	2020                	.2byte	0x2020
   1011e:	000a                	.2byte	0xa
   10120:	7272                	.2byte	0x7272
   10122:	7272                	.2byte	0x7272
   10124:	7272                	.2byte	0x7272
   10126:	7272                	.2byte	0x7272
   10128:	7272                	.2byte	0x7272
   1012a:	7272                	.2byte	0x7272
   1012c:	2072                	.2byte	0x2072
   1012e:	2020                	.2byte	0x2020
   10130:	2020                	.2byte	0x2020
   10132:	2020                	.2byte	0x2020
   10134:	7676                	.2byte	0x7676
   10136:	7676                	.2byte	0x7676
   10138:	7676                	.2byte	0x7676
   1013a:	7676                	.2byte	0x7676
   1013c:	7676                	.2byte	0x7676
   1013e:	7676                	.2byte	0x7676
   10140:	7676                	.2byte	0x7676
   10142:	7676                	.2byte	0x7676
   10144:	7676                	.2byte	0x7676
   10146:	7676                	.2byte	0x7676
   10148:	7676                	.2byte	0x7676
   1014a:	2020                	.2byte	0x2020
   1014c:	2020                	.2byte	0x2020
   1014e:	000a                	.2byte	0xa
   10150:	7272                	.2byte	0x7272
   10152:	2020                	.2byte	0x2020
   10154:	2020                	.2byte	0x2020
   10156:	2020                	.2byte	0x2020
   10158:	2020                	.2byte	0x2020
   1015a:	2020                	.2byte	0x2020
   1015c:	2020                	.2byte	0x2020
   1015e:	2020                	.2byte	0x2020
   10160:	2020                	.2byte	0x2020
   10162:	7676                	.2byte	0x7676
   10164:	7676                	.2byte	0x7676
   10166:	7676                	.2byte	0x7676
   10168:	7676                	.2byte	0x7676
   1016a:	7676                	.2byte	0x7676
   1016c:	7676                	.2byte	0x7676
   1016e:	7676                	.2byte	0x7676
   10170:	7676                	.2byte	0x7676
   10172:	7676                	.2byte	0x7676
   10174:	7676                	.2byte	0x7676
   10176:	7676                	.2byte	0x7676
   10178:	2020                	.2byte	0x2020
   1017a:	2020                	.2byte	0x2020
   1017c:	2020                	.2byte	0x2020
   1017e:	000a                	.2byte	0xa
   10180:	7272                	.2byte	0x7272
   10182:	2020                	.2byte	0x2020
   10184:	2020                	.2byte	0x2020
   10186:	2020                	.2byte	0x2020
   10188:	2020                	.2byte	0x2020
   1018a:	2020                	.2byte	0x2020
   1018c:	2020                	.2byte	0x2020
   1018e:	7676                	.2byte	0x7676
   10190:	7676                	.2byte	0x7676
   10192:	7676                	.2byte	0x7676
   10194:	7676                	.2byte	0x7676
   10196:	7676                	.2byte	0x7676
   10198:	7676                	.2byte	0x7676
   1019a:	7676                	.2byte	0x7676
   1019c:	7676                	.2byte	0x7676
   1019e:	7676                	.2byte	0x7676
   101a0:	7676                	.2byte	0x7676
   101a2:	7676                	.2byte	0x7676
   101a4:	7676                	.2byte	0x7676
   101a6:	2020                	.2byte	0x2020
   101a8:	2020                	.2byte	0x2020
   101aa:	2020                	.2byte	0x2020
   101ac:	7272                	.2byte	0x7272
   101ae:	000a                	.2byte	0xa
   101b0:	7272                	.2byte	0x7272
   101b2:	7272                	.2byte	0x7272
   101b4:	2020                	.2byte	0x2020
   101b6:	2020                	.2byte	0x2020
   101b8:	2020                	.2byte	0x2020
   101ba:	7676                	.2byte	0x7676
   101bc:	7676                	.2byte	0x7676
   101be:	7676                	.2byte	0x7676
   101c0:	7676                	.2byte	0x7676
   101c2:	7676                	.2byte	0x7676
   101c4:	7676                	.2byte	0x7676
   101c6:	7676                	.2byte	0x7676
   101c8:	7676                	.2byte	0x7676
   101ca:	7676                	.2byte	0x7676
   101cc:	7676                	.2byte	0x7676
   101ce:	7676                	.2byte	0x7676
   101d0:	7676                	.2byte	0x7676
   101d2:	7676                	.2byte	0x7676
   101d4:	2020                	.2byte	0x2020
   101d6:	2020                	.2byte	0x2020
   101d8:	2020                	.2byte	0x2020
   101da:	7272                	.2byte	0x7272
   101dc:	7272                	.2byte	0x7272
   101de:	000a                	.2byte	0xa
   101e0:	7272                	.2byte	0x7272
   101e2:	7272                	.2byte	0x7272
   101e4:	7272                	.2byte	0x7272
   101e6:	2020                	.2byte	0x2020
   101e8:	2020                	.2byte	0x2020
   101ea:	2020                	.2byte	0x2020
   101ec:	7676                	.2byte	0x7676
   101ee:	7676                	.2byte	0x7676
   101f0:	7676                	.2byte	0x7676
   101f2:	7676                	.2byte	0x7676
   101f4:	7676                	.2byte	0x7676
   101f6:	7676                	.2byte	0x7676
   101f8:	7676                	.2byte	0x7676
   101fa:	7676                	.2byte	0x7676
   101fc:	7676                	.2byte	0x7676
   101fe:	7676                	.2byte	0x7676
   10200:	7676                	.2byte	0x7676
   10202:	2020                	.2byte	0x2020
   10204:	2020                	.2byte	0x2020
   10206:	2020                	.2byte	0x2020
   10208:	7272                	.2byte	0x7272
   1020a:	7272                	.2byte	0x7272
   1020c:	7272                	.2byte	0x7272
   1020e:	000a                	.2byte	0xa
   10210:	7272                	.2byte	0x7272
   10212:	7272                	.2byte	0x7272
   10214:	7272                	.2byte	0x7272
   10216:	7272                	.2byte	0x7272
   10218:	2020                	.2byte	0x2020
   1021a:	2020                	.2byte	0x2020
   1021c:	2020                	.2byte	0x2020
   1021e:	7676                	.2byte	0x7676
   10220:	7676                	.2byte	0x7676
   10222:	7676                	.2byte	0x7676
   10224:	7676                	.2byte	0x7676
   10226:	7676                	.2byte	0x7676
   10228:	7676                	.2byte	0x7676
   1022a:	7676                	.2byte	0x7676
   1022c:	7676                	.2byte	0x7676
   1022e:	7676                	.2byte	0x7676
   10230:	2020                	.2byte	0x2020
   10232:	2020                	.2byte	0x2020
   10234:	2020                	.2byte	0x2020
   10236:	7272                	.2byte	0x7272
   10238:	7272                	.2byte	0x7272
   1023a:	7272                	.2byte	0x7272
   1023c:	7272                	.2byte	0x7272
   1023e:	000a                	.2byte	0xa
   10240:	7272                	.2byte	0x7272
   10242:	7272                	.2byte	0x7272
   10244:	7272                	.2byte	0x7272
   10246:	7272                	.2byte	0x7272
   10248:	7272                	.2byte	0x7272
   1024a:	2020                	.2byte	0x2020
   1024c:	2020                	.2byte	0x2020
   1024e:	2020                	.2byte	0x2020
   10250:	7676                	.2byte	0x7676
   10252:	7676                	.2byte	0x7676
   10254:	7676                	.2byte	0x7676
   10256:	7676                	.2byte	0x7676
   10258:	7676                	.2byte	0x7676
   1025a:	7676                	.2byte	0x7676
   1025c:	7676                	.2byte	0x7676
   1025e:	2020                	.2byte	0x2020
   10260:	2020                	.2byte	0x2020
   10262:	2020                	.2byte	0x2020
   10264:	7272                	.2byte	0x7272
   10266:	7272                	.2byte	0x7272
   10268:	7272                	.2byte	0x7272
   1026a:	7272                	.2byte	0x7272
   1026c:	7272                	.2byte	0x7272
   1026e:	000a                	.2byte	0xa
   10270:	7272                	.2byte	0x7272
   10272:	7272                	.2byte	0x7272
   10274:	7272                	.2byte	0x7272
   10276:	7272                	.2byte	0x7272
   10278:	7272                	.2byte	0x7272
   1027a:	7272                	.2byte	0x7272
   1027c:	2020                	.2byte	0x2020
   1027e:	2020                	.2byte	0x2020
   10280:	2020                	.2byte	0x2020
   10282:	7676                	.2byte	0x7676
   10284:	7676                	.2byte	0x7676
   10286:	7676                	.2byte	0x7676
   10288:	7676                	.2byte	0x7676
   1028a:	7676                	.2byte	0x7676
   1028c:	2020                	.2byte	0x2020
   1028e:	2020                	.2byte	0x2020
   10290:	2020                	.2byte	0x2020
   10292:	7272                	.2byte	0x7272
   10294:	7272                	.2byte	0x7272
   10296:	7272                	.2byte	0x7272
   10298:	7272                	.2byte	0x7272
   1029a:	7272                	.2byte	0x7272
   1029c:	7272                	.2byte	0x7272
   1029e:	000a                	.2byte	0xa
   102a0:	7272                	.2byte	0x7272
   102a2:	7272                	.2byte	0x7272
   102a4:	7272                	.2byte	0x7272
   102a6:	7272                	.2byte	0x7272
   102a8:	7272                	.2byte	0x7272
   102aa:	7272                	.2byte	0x7272
   102ac:	7272                	.2byte	0x7272
   102ae:	2020                	.2byte	0x2020
   102b0:	2020                	.2byte	0x2020
   102b2:	2020                	.2byte	0x2020
   102b4:	7676                	.2byte	0x7676
   102b6:	7676                	.2byte	0x7676
   102b8:	7676                	.2byte	0x7676
   102ba:	2020                	.2byte	0x2020
   102bc:	2020                	.2byte	0x2020
   102be:	2020                	.2byte	0x2020
   102c0:	7272                	.2byte	0x7272
   102c2:	7272                	.2byte	0x7272
   102c4:	7272                	.2byte	0x7272
   102c6:	7272                	.2byte	0x7272
   102c8:	7272                	.2byte	0x7272
   102ca:	7272                	.2byte	0x7272
   102cc:	7272                	.2byte	0x7272
   102ce:	000a                	.2byte	0xa
   102d0:	7272                	.2byte	0x7272
   102d2:	7272                	.2byte	0x7272
   102d4:	7272                	.2byte	0x7272
   102d6:	7272                	.2byte	0x7272
   102d8:	7272                	.2byte	0x7272
   102da:	7272                	.2byte	0x7272
   102dc:	7272                	.2byte	0x7272
   102de:	7272                	.2byte	0x7272
   102e0:	2020                	.2byte	0x2020
   102e2:	2020                	.2byte	0x2020
   102e4:	2020                	.2byte	0x2020
   102e6:	7676                	.2byte	0x7676
   102e8:	2020                	.2byte	0x2020
   102ea:	2020                	.2byte	0x2020
   102ec:	2020                	.2byte	0x2020
   102ee:	7272                	.2byte	0x7272
   102f0:	7272                	.2byte	0x7272
   102f2:	7272                	.2byte	0x7272
   102f4:	7272                	.2byte	0x7272
   102f6:	7272                	.2byte	0x7272
   102f8:	7272                	.2byte	0x7272
   102fa:	7272                	.2byte	0x7272
   102fc:	7272                	.2byte	0x7272
   102fe:	000a                	.2byte	0xa
   10300:	7272                	.2byte	0x7272
   10302:	7272                	.2byte	0x7272
   10304:	7272                	.2byte	0x7272
   10306:	7272                	.2byte	0x7272
   10308:	7272                	.2byte	0x7272
   1030a:	7272                	.2byte	0x7272
   1030c:	7272                	.2byte	0x7272
   1030e:	7272                	.2byte	0x7272
   10310:	7272                	.2byte	0x7272
   10312:	2020                	.2byte	0x2020
   10314:	2020                	.2byte	0x2020
   10316:	2020                	.2byte	0x2020
   10318:	2020                	.2byte	0x2020
   1031a:	2020                	.2byte	0x2020
   1031c:	7272                	.2byte	0x7272
   1031e:	7272                	.2byte	0x7272
   10320:	7272                	.2byte	0x7272
   10322:	7272                	.2byte	0x7272
   10324:	7272                	.2byte	0x7272
   10326:	7272                	.2byte	0x7272
   10328:	7272                	.2byte	0x7272
   1032a:	7272                	.2byte	0x7272
   1032c:	7272                	.2byte	0x7272
   1032e:	000a                	.2byte	0xa
   10330:	7272                	.2byte	0x7272
   10332:	7272                	.2byte	0x7272
   10334:	7272                	.2byte	0x7272
   10336:	7272                	.2byte	0x7272
   10338:	7272                	.2byte	0x7272
   1033a:	7272                	.2byte	0x7272
   1033c:	7272                	.2byte	0x7272
   1033e:	7272                	.2byte	0x7272
   10340:	7272                	.2byte	0x7272
   10342:	7272                	.2byte	0x7272
   10344:	2020                	.2byte	0x2020
   10346:	2020                	.2byte	0x2020
   10348:	2020                	.2byte	0x2020
   1034a:	7272                	.2byte	0x7272
   1034c:	7272                	.2byte	0x7272
   1034e:	7272                	.2byte	0x7272
   10350:	7272                	.2byte	0x7272
   10352:	7272                	.2byte	0x7272
   10354:	7272                	.2byte	0x7272
   10356:	7272                	.2byte	0x7272
   10358:	7272                	.2byte	0x7272
   1035a:	7272                	.2byte	0x7272
   1035c:	7272                	.2byte	0x7272
   1035e:	000a                	.2byte	0xa
   10360:	7272                	.2byte	0x7272
   10362:	7272                	.2byte	0x7272
   10364:	7272                	.2byte	0x7272
   10366:	7272                	.2byte	0x7272
   10368:	7272                	.2byte	0x7272
   1036a:	7272                	.2byte	0x7272
   1036c:	7272                	.2byte	0x7272
   1036e:	7272                	.2byte	0x7272
   10370:	7272                	.2byte	0x7272
   10372:	7272                	.2byte	0x7272
   10374:	7272                	.2byte	0x7272
   10376:	2020                	.2byte	0x2020
   10378:	7272                	.2byte	0x7272
   1037a:	7272                	.2byte	0x7272
   1037c:	7272                	.2byte	0x7272
   1037e:	7272                	.2byte	0x7272
   10380:	7272                	.2byte	0x7272
   10382:	7272                	.2byte	0x7272
   10384:	7272                	.2byte	0x7272
   10386:	7272                	.2byte	0x7272
   10388:	7272                	.2byte	0x7272
   1038a:	7272                	.2byte	0x7272
   1038c:	7272                	.2byte	0x7272
   1038e:	000a                	.2byte	0xa
   10390:	203e                	.2byte	0x203e
   10392:	6974                	.2byte	0x6974
   10394:	656d                	.2byte	0x656d
   10396:	3a20                	.2byte	0x3a20
   10398:	0020                	.2byte	0x20
   1039a:	0000                	.2byte	0x0
   1039c:	203e                	.2byte	0x203e
   1039e:	6e69                	.2byte	0x6e69
   103a0:	3a206e73          	.4byte	0x3a206e73
   103a4:	0020                	.2byte	0x20
   103a6:	0000                	.2byte	0x0
   103a8:	3130                	.2byte	0x3130
   103aa:	3332                	.2byte	0x3332
   103ac:	3534                	.2byte	0x3534
   103ae:	3736                	.2byte	0x3736
   103b0:	3938                	.2byte	0x3938
   103b2:	4241                	.2byte	0x4241
   103b4:	46454443          	.4byte	0x46454443
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
