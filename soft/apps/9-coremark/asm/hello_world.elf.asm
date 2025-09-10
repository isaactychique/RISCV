
./bin/hello_world.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	008000ef          	jal	10 <main>
   c:	00100073          	ebreak

00000010 <main>:
  10:	ff010113          	add	sp,sp,-16 # 1fff0 <val.0+0xff58>
  14:	00812423          	sw	s0,8(sp)
  18:	00010437          	lui	s0,0x10
  1c:	00040513          	mv	a0,s0
  20:	00112623          	sw	ra,12(sp)
  24:	080000ef          	jal	a4 <print_string>
  28:	00010537          	lui	a0,0x10
  2c:	00850513          	add	a0,a0,8 # 10008 <__modsi3+0xfc94>
  30:	074000ef          	jal	a4 <print_string>
  34:	00010537          	lui	a0,0x10
  38:	01c50513          	add	a0,a0,28 # 1001c <__modsi3+0xfca8>
  3c:	068000ef          	jal	a4 <print_string>
  40:	00010537          	lui	a0,0x10
  44:	05450513          	add	a0,a0,84 # 10054 <__modsi3+0xfce0>
  48:	05c000ef          	jal	a4 <print_string>
  4c:	00010537          	lui	a0,0x10
  50:	06450513          	add	a0,a0,100 # 10064 <__modsi3+0xfcf0>
  54:	050000ef          	jal	a4 <print_string>
  58:	00010537          	lui	a0,0x10
  5c:	06c50513          	add	a0,a0,108 # 1006c <__modsi3+0xfcf8>
  60:	044000ef          	jal	a4 <print_string>
  64:	00010537          	lui	a0,0x10
  68:	06850513          	add	a0,a0,104 # 10068 <__modsi3+0xfcf4>
  6c:	038000ef          	jal	a4 <print_string>
  70:	00010537          	lui	a0,0x10
  74:	07850513          	add	a0,a0,120 # 10078 <__modsi3+0xfd04>
  78:	02c000ef          	jal	a4 <print_string>
  7c:	00010537          	lui	a0,0x10
  80:	00450513          	add	a0,a0,4 # 10004 <__modsi3+0xfc90>
  84:	020000ef          	jal	a4 <print_string>
  88:	00040513          	mv	a0,s0
  8c:	018000ef          	jal	a4 <print_string>
  90:	00c12083          	lw	ra,12(sp)
  94:	00812403          	lw	s0,8(sp)
  98:	00000513          	li	a0,0
  9c:	01010113          	add	sp,sp,16
  a0:	00008067          	ret

000000a4 <print_string>:
  a4:	00054683          	lbu	a3,0(a0)
  a8:	02068063          	beqz	a3,c8 <print_string+0x24>
  ac:	06000737          	lui	a4,0x6000
  b0:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  b4:	fe078ee3          	beqz	a5,b0 <print_string+0xc>
  b8:	00d72023          	sw	a3,0(a4)
  bc:	00154683          	lbu	a3,1(a0)
  c0:	00150513          	add	a0,a0,1
  c4:	fe0696e3          	bnez	a3,b0 <print_string+0xc>
  c8:	00008067          	ret

000000cc <puts>:
  cc:	00054683          	lbu	a3,0(a0)
  d0:	02068063          	beqz	a3,f0 <puts+0x24>
  d4:	06000737          	lui	a4,0x6000
  d8:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  dc:	fe078ee3          	beqz	a5,d8 <puts+0xc>
  e0:	00d72023          	sw	a3,0(a4)
  e4:	00154683          	lbu	a3,1(a0)
  e8:	00150513          	add	a0,a0,1
  ec:	fe0696e3          	bnez	a3,d8 <puts+0xc>
  f0:	06000737          	lui	a4,0x6000
  f4:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
  f8:	fe078ee3          	beqz	a5,f4 <puts+0x28>
  fc:	00a00793          	li	a5,10
 100:	00f72023          	sw	a5,0(a4)
 104:	00100513          	li	a0,1
 108:	00008067          	ret

0000010c <print_dec>:
 10c:	ef010113          	add	sp,sp,-272
 110:	10812423          	sw	s0,264(sp)
 114:	10112623          	sw	ra,268(sp)
 118:	10912223          	sw	s1,260(sp)
 11c:	11212023          	sw	s2,256(sp)
 120:	00050413          	mv	s0,a0
 124:	06000737          	lui	a4,0x6000
 128:	00055c63          	bgez	a0,140 <print_dec+0x34>
 12c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 130:	fe078ee3          	beqz	a5,12c <print_dec+0x20>
 134:	02d00793          	li	a5,45
 138:	00f72023          	sw	a5,0(a4)
 13c:	40800433          	neg	s0,s0
 140:	00010913          	mv	s2,sp
 144:	00090493          	mv	s1,s2
 148:	0240006f          	j	16c <print_dec+0x60>
 14c:	228000ef          	jal	374 <__modsi3>
 150:	00050793          	mv	a5,a0
 154:	00a00593          	li	a1,10
 158:	00040513          	mv	a0,s0
 15c:	00f48023          	sb	a5,0(s1)
 160:	190000ef          	jal	2f0 <__divsi3>
 164:	00148493          	add	s1,s1,1
 168:	00050413          	mv	s0,a0
 16c:	00a00593          	li	a1,10
 170:	00040513          	mv	a0,s0
 174:	fc041ce3          	bnez	s0,14c <print_dec+0x40>
 178:	fd248ae3          	beq	s1,s2,14c <print_dec+0x40>
 17c:	06000737          	lui	a4,0x6000
 180:	fff4c683          	lbu	a3,-1(s1)
 184:	fff48493          	add	s1,s1,-1
 188:	03068693          	add	a3,a3,48
 18c:	0ff6f693          	zext.b	a3,a3
 190:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 194:	fe078ee3          	beqz	a5,190 <print_dec+0x84>
 198:	00d72023          	sw	a3,0(a4)
 19c:	ff2492e3          	bne	s1,s2,180 <print_dec+0x74>
 1a0:	10c12083          	lw	ra,268(sp)
 1a4:	10812403          	lw	s0,264(sp)
 1a8:	10412483          	lw	s1,260(sp)
 1ac:	10012903          	lw	s2,256(sp)
 1b0:	11010113          	add	sp,sp,272
 1b4:	00008067          	ret

000001b8 <print_hex>:
 1b8:	000105b7          	lui	a1,0x10
 1bc:	01c00693          	li	a3,28
 1c0:	08458593          	add	a1,a1,132 # 10084 <__modsi3+0xfd10>
 1c4:	06000737          	lui	a4,0x6000
 1c8:	ffc00813          	li	a6,-4
 1cc:	00d557b3          	srl	a5,a0,a3
 1d0:	00f7f793          	and	a5,a5,15
 1d4:	00f587b3          	add	a5,a1,a5
 1d8:	0007c603          	lbu	a2,0(a5)
 1dc:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 1e0:	fe078ee3          	beqz	a5,1dc <print_hex+0x24>
 1e4:	00c72023          	sw	a2,0(a4)
 1e8:	ffc68693          	add	a3,a3,-4
 1ec:	ff0690e3          	bne	a3,a6,1cc <print_hex+0x14>
 1f0:	00008067          	ret

000001f4 <print_hex_digits>:
 1f4:	fff58693          	add	a3,a1,-1
 1f8:	00269693          	sll	a3,a3,0x2
 1fc:	0206ca63          	bltz	a3,230 <print_hex_digits+0x3c>
 200:	000105b7          	lui	a1,0x10
 204:	08458593          	add	a1,a1,132 # 10084 <__modsi3+0xfd10>
 208:	06000737          	lui	a4,0x6000
 20c:	00d557b3          	srl	a5,a0,a3
 210:	00f7f793          	and	a5,a5,15
 214:	00f587b3          	add	a5,a1,a5
 218:	0007c603          	lbu	a2,0(a5)
 21c:	00072783          	lw	a5,0(a4) # 6000000 <IO_BASE+0x5c00000>
 220:	fe078ee3          	beqz	a5,21c <print_hex_digits+0x28>
 224:	00c72023          	sw	a2,0(a4)
 228:	ffc68693          	add	a3,a3,-4
 22c:	fe06d0e3          	bgez	a3,20c <print_hex_digits+0x18>
 230:	00008067          	ret

00000234 <memcpy>:
 234:	00b567b3          	or	a5,a0,a1
 238:	0037f713          	and	a4,a5,3
 23c:	00050793          	mv	a5,a0
 240:	02070263          	beqz	a4,264 <memcpy+0x30>
 244:	00c786b3          	add	a3,a5,a2
 248:	06060063          	beqz	a2,2a8 <memcpy+0x74>
 24c:	0005c703          	lbu	a4,0(a1)
 250:	00178793          	add	a5,a5,1
 254:	00158593          	add	a1,a1,1
 258:	fee78fa3          	sb	a4,-1(a5)
 25c:	fef698e3          	bne	a3,a5,24c <memcpy+0x18>
 260:	00008067          	ret
 264:	00300713          	li	a4,3
 268:	fcc77ee3          	bgeu	a4,a2,244 <memcpy+0x10>
 26c:	ffc60893          	add	a7,a2,-4
 270:	ffc8f893          	and	a7,a7,-4
 274:	00488893          	add	a7,a7,4
 278:	011507b3          	add	a5,a0,a7
 27c:	00058693          	mv	a3,a1
 280:	00050713          	mv	a4,a0
 284:	0006a803          	lw	a6,0(a3)
 288:	00470713          	add	a4,a4,4
 28c:	00468693          	add	a3,a3,4
 290:	ff072e23          	sw	a6,-4(a4)
 294:	fef718e3          	bne	a4,a5,284 <memcpy+0x50>
 298:	00367613          	and	a2,a2,3
 29c:	011585b3          	add	a1,a1,a7
 2a0:	00c786b3          	add	a3,a5,a2
 2a4:	fa0614e3          	bnez	a2,24c <memcpy+0x18>
 2a8:	00008067          	ret

000002ac <__errno>:
 2ac:	00010537          	lui	a0,0x10
 2b0:	09850513          	add	a0,a0,152 # 10098 <val.0>
 2b4:	00008067          	ret

000002b8 <wait>:
 2b8:	00100293          	li	t0,1
 2bc:	01129293          	sll	t0,t0,0x11
 2c0:	fff28293          	add	t0,t0,-1
 2c4:	fe029ee3          	bnez	t0,2c0 <wait+0x8>
 2c8:	00008067          	ret

000002cc <__mulsi3>:
 2cc:	00050613          	mv	a2,a0
 2d0:	00000513          	li	a0,0
 2d4:	0015f693          	and	a3,a1,1
 2d8:	00068463          	beqz	a3,2e0 <__mulsi3+0x14>
 2dc:	00c50533          	add	a0,a0,a2
 2e0:	0015d593          	srl	a1,a1,0x1
 2e4:	00161613          	sll	a2,a2,0x1
 2e8:	fe0596e3          	bnez	a1,2d4 <__mulsi3+0x8>
 2ec:	00008067          	ret

000002f0 <__divsi3>:
 2f0:	06054063          	bltz	a0,350 <__umodsi3+0x10>
 2f4:	0605c663          	bltz	a1,360 <__umodsi3+0x20>

000002f8 <__udivsi3>:
 2f8:	00058613          	mv	a2,a1
 2fc:	00050593          	mv	a1,a0
 300:	fff00513          	li	a0,-1
 304:	02060c63          	beqz	a2,33c <__udivsi3+0x44>
 308:	00100693          	li	a3,1
 30c:	00b67a63          	bgeu	a2,a1,320 <__udivsi3+0x28>
 310:	00c05863          	blez	a2,320 <__udivsi3+0x28>
 314:	00161613          	sll	a2,a2,0x1
 318:	00169693          	sll	a3,a3,0x1
 31c:	feb66ae3          	bltu	a2,a1,310 <__udivsi3+0x18>
 320:	00000513          	li	a0,0
 324:	00c5e663          	bltu	a1,a2,330 <__udivsi3+0x38>
 328:	40c585b3          	sub	a1,a1,a2
 32c:	00d56533          	or	a0,a0,a3
 330:	0016d693          	srl	a3,a3,0x1
 334:	00165613          	srl	a2,a2,0x1
 338:	fe0696e3          	bnez	a3,324 <__udivsi3+0x2c>
 33c:	00008067          	ret

00000340 <__umodsi3>:
 340:	00008293          	mv	t0,ra
 344:	fb5ff0ef          	jal	2f8 <__udivsi3>
 348:	00058513          	mv	a0,a1
 34c:	00028067          	jr	t0
 350:	40a00533          	neg	a0,a0
 354:	0005d863          	bgez	a1,364 <__umodsi3+0x24>
 358:	40b005b3          	neg	a1,a1
 35c:	f95ff06f          	j	2f0 <__divsi3>
 360:	40b005b3          	neg	a1,a1
 364:	00008293          	mv	t0,ra
 368:	f89ff0ef          	jal	2f0 <__divsi3>
 36c:	40a00533          	neg	a0,a0
 370:	00028067          	jr	t0

00000374 <__modsi3>:
 374:	00008293          	mv	t0,ra
 378:	0005ca63          	bltz	a1,38c <__modsi3+0x18>
 37c:	00054c63          	bltz	a0,394 <__modsi3+0x20>
 380:	f79ff0ef          	jal	2f8 <__udivsi3>
 384:	00058513          	mv	a0,a1
 388:	00028067          	jr	t0
 38c:	40b005b3          	neg	a1,a1
 390:	fe0558e3          	bgez	a0,380 <__modsi3+0xc>
 394:	40a00533          	neg	a0,a0
 398:	f61ff0ef          	jal	2f8 <__udivsi3>
 39c:	40b00533          	neg	a0,a1
 3a0:	00028067          	jr	t0

Disassembly of section .data:

00010000 <val.0-0x98>:
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
   10014:	646c726f          	jal	tp,d765a <val.0+0xc75c2>
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
   1002c:	6375646f          	jal	s0,66e62 <val.0+0x56dca>
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
   10070:	3731                	.2byte	0x3731
   10072:	3220                	.2byte	0x3220
   10074:	3230                	.2byte	0x3230
   10076:	0034                	.2byte	0x34
   10078:	3830                	.2byte	0x3830
   1007a:	313a                	.2byte	0x313a
   1007c:	33353a33          	.4byte	0x33353a33
   10080:	0000                	.2byte	0x0
   10082:	0000                	.2byte	0x0
   10084:	3130                	.2byte	0x3130
   10086:	3332                	.2byte	0x3332
   10088:	3534                	.2byte	0x3534
   1008a:	3736                	.2byte	0x3736
   1008c:	3938                	.2byte	0x3938
   1008e:	4241                	.2byte	0x4241
   10090:	46454443          	.4byte	0x46454443
   10094:	0000                	.2byte	0x0
	...

00010098 <val.0>:
   10098:	0000                	.2byte	0x0
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
