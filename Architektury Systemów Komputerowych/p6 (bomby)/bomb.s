
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 3f 00 00 	mov    0x3fdd(%rip),%rax        # 4fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 5008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 5010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 5018 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <__errno_location@plt>:
    1040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 5020 <__errno_location@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <strcpy@plt>:
    1050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 5028 <strcpy@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <puts@plt>:
    1060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 5030 <puts@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <write@plt>:
    1070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 5038 <write@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <printf@plt>:
    1080:	ff 25 ba 3f 00 00    	jmpq   *0x3fba(%rip)        # 5040 <printf@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <.plt>

0000000000001090 <snprintf@plt>:
    1090:	ff 25 b2 3f 00 00    	jmpq   *0x3fb2(%rip)        # 5048 <snprintf@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <.plt>

00000000000010a0 <alarm@plt>:
    10a0:	ff 25 aa 3f 00 00    	jmpq   *0x3faa(%rip)        # 5050 <alarm@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <.plt>

00000000000010b0 <close@plt>:
    10b0:	ff 25 a2 3f 00 00    	jmpq   *0x3fa2(%rip)        # 5058 <close@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <.plt>

00000000000010c0 <read@plt>:
    10c0:	ff 25 9a 3f 00 00    	jmpq   *0x3f9a(%rip)        # 5060 <read@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <.plt>

00000000000010d0 <fgets@plt>:
    10d0:	ff 25 92 3f 00 00    	jmpq   *0x3f92(%rip)        # 5068 <fgets@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <.plt>

00000000000010e0 <signal@plt>:
    10e0:	ff 25 8a 3f 00 00    	jmpq   *0x3f8a(%rip)        # 5070 <signal@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <.plt>

00000000000010f0 <gethostbyname@plt>:
    10f0:	ff 25 82 3f 00 00    	jmpq   *0x3f82(%rip)        # 5078 <gethostbyname@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <.plt>

0000000000001100 <fprintf@plt>:
    1100:	ff 25 7a 3f 00 00    	jmpq   *0x3f7a(%rip)        # 5080 <fprintf@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <.plt>

0000000000001110 <strtol@plt>:
    1110:	ff 25 72 3f 00 00    	jmpq   *0x3f72(%rip)        # 5088 <strtol@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <.plt>

0000000000001120 <fflush@plt>:
    1120:	ff 25 6a 3f 00 00    	jmpq   *0x3f6a(%rip)        # 5090 <fflush@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	pushq  $0xf
    112b:	e9 f0 fe ff ff       	jmpq   1020 <.plt>

0000000000001130 <__isoc99_sscanf@plt>:
    1130:	ff 25 62 3f 00 00    	jmpq   *0x3f62(%rip)        # 5098 <__isoc99_sscanf@GLIBC_2.7>
    1136:	68 10 00 00 00       	pushq  $0x10
    113b:	e9 e0 fe ff ff       	jmpq   1020 <.plt>

0000000000001140 <memmove@plt>:
    1140:	ff 25 5a 3f 00 00    	jmpq   *0x3f5a(%rip)        # 50a0 <memmove@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	pushq  $0x11
    114b:	e9 d0 fe ff ff       	jmpq   1020 <.plt>

0000000000001150 <fopen@plt>:
    1150:	ff 25 52 3f 00 00    	jmpq   *0x3f52(%rip)        # 50a8 <fopen@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	pushq  $0x12
    115b:	e9 c0 fe ff ff       	jmpq   1020 <.plt>

0000000000001160 <sprintf@plt>:
    1160:	ff 25 4a 3f 00 00    	jmpq   *0x3f4a(%rip)        # 50b0 <sprintf@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	pushq  $0x13
    116b:	e9 b0 fe ff ff       	jmpq   1020 <.plt>

0000000000001170 <exit@plt>:
    1170:	ff 25 42 3f 00 00    	jmpq   *0x3f42(%rip)        # 50b8 <exit@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	pushq  $0x14
    117b:	e9 a0 fe ff ff       	jmpq   1020 <.plt>

0000000000001180 <connect@plt>:
    1180:	ff 25 3a 3f 00 00    	jmpq   *0x3f3a(%rip)        # 50c0 <connect@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	pushq  $0x15
    118b:	e9 90 fe ff ff       	jmpq   1020 <.plt>

0000000000001190 <sleep@plt>:
    1190:	ff 25 32 3f 00 00    	jmpq   *0x3f32(%rip)        # 50c8 <sleep@GLIBC_2.2.5>
    1196:	68 16 00 00 00       	pushq  $0x16
    119b:	e9 80 fe ff ff       	jmpq   1020 <.plt>

00000000000011a0 <__ctype_b_loc@plt>:
    11a0:	ff 25 2a 3f 00 00    	jmpq   *0x3f2a(%rip)        # 50d0 <__ctype_b_loc@GLIBC_2.3>
    11a6:	68 17 00 00 00       	pushq  $0x17
    11ab:	e9 70 fe ff ff       	jmpq   1020 <.plt>

00000000000011b0 <socket@plt>:
    11b0:	ff 25 22 3f 00 00    	jmpq   *0x3f22(%rip)        # 50d8 <socket@GLIBC_2.2.5>
    11b6:	68 18 00 00 00       	pushq  $0x18
    11bb:	e9 60 fe ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

00000000000011c0 <__cxa_finalize@plt>:
    11c0:	ff 25 32 3e 00 00    	jmpq   *0x3e32(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000011d0 <_start>:
    11d0:	31 ed                	xor    %ebp,%ebp
    11d2:	49 89 d1             	mov    %rdx,%r9
    11d5:	5e                   	pop    %rsi
    11d6:	48 89 e2             	mov    %rsp,%rdx
    11d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11dd:	50                   	push   %rax
    11de:	54                   	push   %rsp
    11df:	4c 8d 05 0a 16 00 00 	lea    0x160a(%rip),%r8        # 27f0 <__libc_csu_fini>
    11e6:	48 8d 0d a3 15 00 00 	lea    0x15a3(%rip),%rcx        # 2790 <__libc_csu_init>
    11ed:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 12b5 <main>
    11f4:	ff 15 e6 3d 00 00    	callq  *0x3de6(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    11fa:	f4                   	hlt    
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <deregister_tm_clones>:
    1200:	48 8d 3d 39 41 00 00 	lea    0x4139(%rip),%rdi        # 5340 <stdout@@GLIBC_2.2.5>
    1207:	48 8d 05 32 41 00 00 	lea    0x4132(%rip),%rax        # 5340 <stdout@@GLIBC_2.2.5>
    120e:	48 39 f8             	cmp    %rdi,%rax
    1211:	74 15                	je     1228 <deregister_tm_clones+0x28>
    1213:	48 8b 05 be 3d 00 00 	mov    0x3dbe(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    121a:	48 85 c0             	test   %rax,%rax
    121d:	74 09                	je     1228 <deregister_tm_clones+0x28>
    121f:	ff e0                	jmpq   *%rax
    1221:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1228:	c3                   	retq   
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <register_tm_clones>:
    1230:	48 8d 3d 09 41 00 00 	lea    0x4109(%rip),%rdi        # 5340 <stdout@@GLIBC_2.2.5>
    1237:	48 8d 35 02 41 00 00 	lea    0x4102(%rip),%rsi        # 5340 <stdout@@GLIBC_2.2.5>
    123e:	48 29 fe             	sub    %rdi,%rsi
    1241:	48 c1 fe 03          	sar    $0x3,%rsi
    1245:	48 89 f0             	mov    %rsi,%rax
    1248:	48 c1 e8 3f          	shr    $0x3f,%rax
    124c:	48 01 c6             	add    %rax,%rsi
    124f:	48 d1 fe             	sar    %rsi
    1252:	74 14                	je     1268 <register_tm_clones+0x38>
    1254:	48 8b 05 95 3d 00 00 	mov    0x3d95(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    125b:	48 85 c0             	test   %rax,%rax
    125e:	74 08                	je     1268 <register_tm_clones+0x38>
    1260:	ff e0                	jmpq   *%rax
    1262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1268:	c3                   	retq   
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <__do_global_dtors_aux>:
    1270:	80 3d f1 40 00 00 00 	cmpb   $0x0,0x40f1(%rip)        # 5368 <completed.7325>
    1277:	75 2f                	jne    12a8 <__do_global_dtors_aux+0x38>
    1279:	55                   	push   %rbp
    127a:	48 83 3d 76 3d 00 00 	cmpq   $0x0,0x3d76(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1281:	00 
    1282:	48 89 e5             	mov    %rsp,%rbp
    1285:	74 0c                	je     1293 <__do_global_dtors_aux+0x23>
    1287:	48 8b 3d 5a 3e 00 00 	mov    0x3e5a(%rip),%rdi        # 50e8 <__dso_handle>
    128e:	e8 2d ff ff ff       	callq  11c0 <__cxa_finalize@plt>
    1293:	e8 68 ff ff ff       	callq  1200 <deregister_tm_clones>
    1298:	c6 05 c9 40 00 00 01 	movb   $0x1,0x40c9(%rip)        # 5368 <completed.7325>
    129f:	5d                   	pop    %rbp
    12a0:	c3                   	retq   
    12a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12a8:	c3                   	retq   
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012b0 <frame_dummy>:
    12b0:	e9 7b ff ff ff       	jmpq   1230 <register_tm_clones>

00000000000012b5 <main>:
    12b5:	53                   	push   %rbx
    12b6:	83 ff 01             	cmp    $0x1,%edi
    12b9:	0f 84 f8 00 00 00    	je     13b7 <main+0x102>
    12bf:	48 89 f3             	mov    %rsi,%rbx
    12c2:	83 ff 02             	cmp    $0x2,%edi
    12c5:	0f 85 1c 01 00 00    	jne    13e7 <main+0x132>
    12cb:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12cf:	48 8d 35 2e 1d 00 00 	lea    0x1d2e(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    12d6:	e8 75 fe ff ff       	callq  1150 <fopen@plt>
    12db:	48 89 05 be 44 00 00 	mov    %rax,0x44be(%rip)        # 57a0 <infile>
    12e2:	48 85 c0             	test   %rax,%rax
    12e5:	0f 84 df 00 00 00    	je     13ca <main+0x115>
    12eb:	e8 78 06 00 00       	callq  1968 <initialize_bomb>
    12f0:	48 8d 3d 91 1d 00 00 	lea    0x1d91(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    12f7:	e8 64 fd ff ff       	callq  1060 <puts@plt>
    12fc:	48 8d 3d c5 1d 00 00 	lea    0x1dc5(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    1303:	e8 58 fd ff ff       	callq  1060 <puts@plt>
    1308:	e8 66 07 00 00       	callq  1a73 <read_line>
    130d:	48 89 c7             	mov    %rax,%rdi
    1310:	e8 f0 00 00 00       	callq  1405 <phase_1>
    1315:	e8 9d 08 00 00       	callq  1bb7 <phase_defused>
    131a:	48 8d 3d d7 1d 00 00 	lea    0x1dd7(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    1321:	e8 3a fd ff ff       	callq  1060 <puts@plt>
    1326:	e8 48 07 00 00       	callq  1a73 <read_line>
    132b:	48 89 c7             	mov    %rax,%rdi
    132e:	e8 f2 00 00 00       	callq  1425 <phase_2>
    1333:	e8 7f 08 00 00       	callq  1bb7 <phase_defused>
    1338:	48 8d 3d fe 1c 00 00 	lea    0x1cfe(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    133f:	e8 1c fd ff ff       	callq  1060 <puts@plt>
    1344:	e8 2a 07 00 00       	callq  1a73 <read_line>
    1349:	48 89 c7             	mov    %rax,%rdi
    134c:	e8 1e 01 00 00       	callq  146f <phase_3>
    1351:	e8 61 08 00 00       	callq  1bb7 <phase_defused>
    1356:	48 8d 3d fe 1c 00 00 	lea    0x1cfe(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    135d:	e8 fe fc ff ff       	callq  1060 <puts@plt>
    1362:	e8 0c 07 00 00       	callq  1a73 <read_line>
    1367:	48 89 c7             	mov    %rax,%rdi
    136a:	e8 8b 02 00 00       	callq  15fa <phase_4>
    136f:	e8 43 08 00 00       	callq  1bb7 <phase_defused>
    1374:	48 8d 3d ad 1d 00 00 	lea    0x1dad(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    137b:	e8 e0 fc ff ff       	callq  1060 <puts@plt>
    1380:	e8 ee 06 00 00       	callq  1a73 <read_line>
    1385:	48 89 c7             	mov    %rax,%rdi
    1388:	e8 c6 02 00 00       	callq  1653 <phase_5>
    138d:	e8 25 08 00 00       	callq  1bb7 <phase_defused>
    1392:	48 8d 3d d1 1c 00 00 	lea    0x1cd1(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1399:	e8 c2 fc ff ff       	callq  1060 <puts@plt>
    139e:	e8 d0 06 00 00       	callq  1a73 <read_line>
    13a3:	48 89 c7             	mov    %rax,%rdi
    13a6:	e8 0d 03 00 00       	callq  16b8 <phase_6>
    13ab:	e8 07 08 00 00       	callq  1bb7 <phase_defused>
    13b0:	b8 00 00 00 00       	mov    $0x0,%eax
    13b5:	5b                   	pop    %rbx
    13b6:	c3                   	retq   
    13b7:	48 8b 05 92 3f 00 00 	mov    0x3f92(%rip),%rax        # 5350 <stdin@@GLIBC_2.2.5>
    13be:	48 89 05 db 43 00 00 	mov    %rax,0x43db(%rip)        # 57a0 <infile>
    13c5:	e9 21 ff ff ff       	jmpq   12eb <main+0x36>
    13ca:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    13ce:	48 8b 33             	mov    (%rbx),%rsi
    13d1:	48 8d 3d 2e 1c 00 00 	lea    0x1c2e(%rip),%rdi        # 3006 <_IO_stdin_used+0x6>
    13d8:	e8 a3 fc ff ff       	callq  1080 <printf@plt>
    13dd:	bf 08 00 00 00       	mov    $0x8,%edi
    13e2:	e8 89 fd ff ff       	callq  1170 <exit@plt>
    13e7:	48 8b 36             	mov    (%rsi),%rsi
    13ea:	48 8d 3d 32 1c 00 00 	lea    0x1c32(%rip),%rdi        # 3023 <_IO_stdin_used+0x23>
    13f1:	b8 00 00 00 00       	mov    $0x0,%eax
    13f6:	e8 85 fc ff ff       	callq  1080 <printf@plt>
    13fb:	bf 08 00 00 00       	mov    $0x8,%edi
    1400:	e8 6b fd ff ff       	callq  1170 <exit@plt>

0000000000001405 <phase_1>:
    1405:	48 83 ec 08          	sub    $0x8,%rsp
    1409:	48 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    1410:	e8 eb 04 00 00       	callq  1900 <strings_not_equal>
    1415:	85 c0                	test   %eax,%eax
    1417:	75 05                	jne    141e <phase_1+0x19>
    1419:	48 83 c4 08          	add    $0x8,%rsp
    141d:	c3                   	retq   
    141e:	e8 e9 05 00 00       	callq  1a0c <explode_bomb>
    1423:	eb f4                	jmp    1419 <phase_1+0x14>

0000000000001425 <phase_2>:
    1425:	55                   	push   %rbp
    1426:	53                   	push   %rbx
    1427:	48 83 ec 28          	sub    $0x28,%rsp
    142b:	48 89 e6             	mov    %rsp,%rsi
    142e:	e8 ff 05 00 00       	callq  1a32 <read_six_numbers>
    1433:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1437:	75 07                	jne    1440 <phase_2+0x1b>
    1439:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    143e:	74 05                	je     1445 <phase_2+0x20>
    1440:	e8 c7 05 00 00       	callq  1a0c <explode_bomb>
    1445:	48 89 e3             	mov    %rsp,%rbx
    1448:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    144c:	eb 0e                	jmp    145c <phase_2+0x37>
    144e:	e8 b9 05 00 00       	callq  1a0c <explode_bomb>
    1453:	48 83 c3 04          	add    $0x4,%rbx
    1457:	48 39 eb             	cmp    %rbp,%rbx
    145a:	74 0c                	je     1468 <phase_2+0x43>
    145c:	8b 43 04             	mov    0x4(%rbx),%eax
    145f:	03 03                	add    (%rbx),%eax
    1461:	39 43 08             	cmp    %eax,0x8(%rbx)
    1464:	74 ed                	je     1453 <phase_2+0x2e>
    1466:	eb e6                	jmp    144e <phase_2+0x29>
    1468:	48 83 c4 28          	add    $0x28,%rsp
    146c:	5b                   	pop    %rbx
    146d:	5d                   	pop    %rbp
    146e:	c3                   	retq   

000000000000146f <phase_3>:
    146f:	48 83 ec 18          	sub    $0x18,%rsp
    1473:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx
    1478:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    147d:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    1482:	48 8d 35 1d 1d 00 00 	lea    0x1d1d(%rip),%rsi        # 31a6 <_IO_stdin_used+0x1a6>
    1489:	b8 00 00 00 00       	mov    $0x0,%eax
    148e:	e8 9d fc ff ff       	callq  1130 <__isoc99_sscanf@plt>
    1493:	83 f8 02             	cmp    $0x2,%eax
    1496:	7e 1f                	jle    14b7 <phase_3+0x48>
    1498:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    149d:	0f 87 09 01 00 00    	ja     15ac <phase_3+0x13d>
    14a3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    14a7:	48 8d 15 12 1d 00 00 	lea    0x1d12(%rip),%rdx        # 31c0 <_IO_stdin_used+0x1c0>
    14ae:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    14b2:	48 01 d0             	add    %rdx,%rax
    14b5:	ff e0                	jmpq   *%rax
    14b7:	e8 50 05 00 00       	callq  1a0c <explode_bomb>
    14bc:	eb da                	jmp    1498 <phase_3+0x29>
    14be:	b8 66 00 00 00       	mov    $0x66,%eax
    14c3:	81 7c 24 08 a8 01 00 	cmpl   $0x1a8,0x8(%rsp)
    14ca:	00 
    14cb:	0f 84 e5 00 00 00    	je     15b6 <phase_3+0x147>
    14d1:	e8 36 05 00 00       	callq  1a0c <explode_bomb>
    14d6:	b8 66 00 00 00       	mov    $0x66,%eax
    14db:	e9 d6 00 00 00       	jmpq   15b6 <phase_3+0x147>
    14e0:	b8 73 00 00 00       	mov    $0x73,%eax
    14e5:	83 7c 24 08 77       	cmpl   $0x77,0x8(%rsp)
    14ea:	0f 84 c6 00 00 00    	je     15b6 <phase_3+0x147>
    14f0:	e8 17 05 00 00       	callq  1a0c <explode_bomb>
    14f5:	b8 73 00 00 00       	mov    $0x73,%eax
    14fa:	e9 b7 00 00 00       	jmpq   15b6 <phase_3+0x147>
    14ff:	b8 66 00 00 00       	mov    $0x66,%eax
    1504:	81 7c 24 08 86 00 00 	cmpl   $0x86,0x8(%rsp)
    150b:	00 
    150c:	0f 84 a4 00 00 00    	je     15b6 <phase_3+0x147>
    1512:	e8 f5 04 00 00       	callq  1a0c <explode_bomb>
    1517:	b8 66 00 00 00       	mov    $0x66,%eax
    151c:	e9 95 00 00 00       	jmpq   15b6 <phase_3+0x147>
    1521:	b8 72 00 00 00       	mov    $0x72,%eax
    1526:	81 7c 24 08 b3 03 00 	cmpl   $0x3b3,0x8(%rsp)
    152d:	00 
    152e:	0f 84 82 00 00 00    	je     15b6 <phase_3+0x147>
    1534:	e8 d3 04 00 00       	callq  1a0c <explode_bomb>
    1539:	b8 72 00 00 00       	mov    $0x72,%eax
    153e:	eb 76                	jmp    15b6 <phase_3+0x147>
    1540:	b8 74 00 00 00       	mov    $0x74,%eax
    1545:	81 7c 24 08 a2 03 00 	cmpl   $0x3a2,0x8(%rsp)
    154c:	00 
    154d:	74 67                	je     15b6 <phase_3+0x147>
    154f:	e8 b8 04 00 00       	callq  1a0c <explode_bomb>
    1554:	b8 74 00 00 00       	mov    $0x74,%eax
    1559:	eb 5b                	jmp    15b6 <phase_3+0x147>
    155b:	b8 71 00 00 00       	mov    $0x71,%eax
    1560:	81 7c 24 08 0e 02 00 	cmpl   $0x20e,0x8(%rsp)
    1567:	00 
    1568:	74 4c                	je     15b6 <phase_3+0x147>
    156a:	e8 9d 04 00 00       	callq  1a0c <explode_bomb>
    156f:	b8 71 00 00 00       	mov    $0x71,%eax
    1574:	eb 40                	jmp    15b6 <phase_3+0x147>
    1576:	b8 70 00 00 00       	mov    $0x70,%eax
    157b:	81 7c 24 08 61 01 00 	cmpl   $0x161,0x8(%rsp)
    1582:	00 
    1583:	74 31                	je     15b6 <phase_3+0x147>
    1585:	e8 82 04 00 00       	callq  1a0c <explode_bomb>
    158a:	b8 70 00 00 00       	mov    $0x70,%eax
    158f:	eb 25                	jmp    15b6 <phase_3+0x147>
    1591:	b8 78 00 00 00       	mov    $0x78,%eax
    1596:	81 7c 24 08 5a 03 00 	cmpl   $0x35a,0x8(%rsp)
    159d:	00 
    159e:	74 16                	je     15b6 <phase_3+0x147>
    15a0:	e8 67 04 00 00       	callq  1a0c <explode_bomb>
    15a5:	b8 78 00 00 00       	mov    $0x78,%eax
    15aa:	eb 0a                	jmp    15b6 <phase_3+0x147>
    15ac:	e8 5b 04 00 00       	callq  1a0c <explode_bomb>
    15b1:	b8 63 00 00 00       	mov    $0x63,%eax
    15b6:	38 44 24 07          	cmp    %al,0x7(%rsp)
    15ba:	75 05                	jne    15c1 <phase_3+0x152>
    15bc:	48 83 c4 18          	add    $0x18,%rsp
    15c0:	c3                   	retq   
    15c1:	e8 46 04 00 00       	callq  1a0c <explode_bomb>
    15c6:	eb f4                	jmp    15bc <phase_3+0x14d>

00000000000015c8 <func4>:
    15c8:	53                   	push   %rbx
    15c9:	89 d0                	mov    %edx,%eax
    15cb:	29 f0                	sub    %esi,%eax
    15cd:	89 c3                	mov    %eax,%ebx
    15cf:	c1 eb 1f             	shr    $0x1f,%ebx
    15d2:	01 c3                	add    %eax,%ebx
    15d4:	d1 fb                	sar    %ebx
    15d6:	01 f3                	add    %esi,%ebx
    15d8:	39 fb                	cmp    %edi,%ebx
    15da:	7f 06                	jg     15e2 <func4+0x1a>
    15dc:	7c 10                	jl     15ee <func4+0x26>
    15de:	89 d8                	mov    %ebx,%eax
    15e0:	5b                   	pop    %rbx
    15e1:	c3                   	retq   
    15e2:	8d 53 ff             	lea    -0x1(%rbx),%edx
    15e5:	e8 de ff ff ff       	callq  15c8 <func4>
    15ea:	01 c3                	add    %eax,%ebx
    15ec:	eb f0                	jmp    15de <func4+0x16>
    15ee:	8d 73 01             	lea    0x1(%rbx),%esi
    15f1:	e8 d2 ff ff ff       	callq  15c8 <func4>
    15f6:	01 c3                	add    %eax,%ebx
    15f8:	eb e4                	jmp    15de <func4+0x16>

00000000000015fa <phase_4>:
    15fa:	48 83 ec 18          	sub    $0x18,%rsp
    15fe:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1603:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1608:	48 8d 35 f0 1c 00 00 	lea    0x1cf0(%rip),%rsi        # 32ff <array.3198+0x11f>
    160f:	b8 00 00 00 00       	mov    $0x0,%eax
    1614:	e8 17 fb ff ff       	callq  1130 <__isoc99_sscanf@plt>
    1619:	83 f8 02             	cmp    $0x2,%eax
    161c:	75 07                	jne    1625 <phase_4+0x2b>
    161e:	83 7c 24 0c 0e       	cmpl   $0xe,0xc(%rsp)
    1623:	76 05                	jbe    162a <phase_4+0x30>
    1625:	e8 e2 03 00 00       	callq  1a0c <explode_bomb>
    162a:	ba 0e 00 00 00       	mov    $0xe,%edx
    162f:	be 00 00 00 00       	mov    $0x0,%esi
    1634:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1638:	e8 8b ff ff ff       	callq  15c8 <func4>
    163d:	83 f8 1f             	cmp    $0x1f,%eax
    1640:	75 07                	jne    1649 <phase_4+0x4f>
    1642:	83 7c 24 08 1f       	cmpl   $0x1f,0x8(%rsp)
    1647:	74 05                	je     164e <phase_4+0x54>
    1649:	e8 be 03 00 00       	callq  1a0c <explode_bomb>
    164e:	48 83 c4 18          	add    $0x18,%rsp
    1652:	c3                   	retq   

0000000000001653 <phase_5>:
    1653:	53                   	push   %rbx
    1654:	48 83 ec 10          	sub    $0x10,%rsp
    1658:	48 89 fb             	mov    %rdi,%rbx
    165b:	e8 83 02 00 00       	callq  18e3 <string_length>
    1660:	83 f8 06             	cmp    $0x6,%eax
    1663:	75 45                	jne    16aa <phase_5+0x57>
    1665:	b8 00 00 00 00       	mov    $0x0,%eax
    166a:	48 8d 0d 6f 1b 00 00 	lea    0x1b6f(%rip),%rcx        # 31e0 <array.3198>
    1671:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1675:	83 e2 0f             	and    $0xf,%edx
    1678:	0f b6 14 11          	movzbl (%rcx,%rdx,1),%edx
    167c:	88 54 04 09          	mov    %dl,0x9(%rsp,%rax,1)
    1680:	48 83 c0 01          	add    $0x1,%rax
    1684:	48 83 f8 06          	cmp    $0x6,%rax
    1688:	75 e7                	jne    1671 <phase_5+0x1e>
    168a:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
    168f:	48 8d 7c 24 09       	lea    0x9(%rsp),%rdi
    1694:	48 8d 35 14 1b 00 00 	lea    0x1b14(%rip),%rsi        # 31af <_IO_stdin_used+0x1af>
    169b:	e8 60 02 00 00       	callq  1900 <strings_not_equal>
    16a0:	85 c0                	test   %eax,%eax
    16a2:	75 0d                	jne    16b1 <phase_5+0x5e>
    16a4:	48 83 c4 10          	add    $0x10,%rsp
    16a8:	5b                   	pop    %rbx
    16a9:	c3                   	retq   
    16aa:	e8 5d 03 00 00       	callq  1a0c <explode_bomb>
    16af:	eb b4                	jmp    1665 <phase_5+0x12>
    16b1:	e8 56 03 00 00       	callq  1a0c <explode_bomb>
    16b6:	eb ec                	jmp    16a4 <phase_5+0x51>

00000000000016b8 <phase_6>:
    16b8:	41 57                	push   %r15
    16ba:	41 56                	push   %r14
    16bc:	41 55                	push   %r13
    16be:	41 54                	push   %r12
    16c0:	55                   	push   %rbp
    16c1:	53                   	push   %rbx
    16c2:	48 83 ec 58          	sub    $0x58,%rsp
    16c6:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
    16cb:	4c 89 f6             	mov    %r14,%rsi
    16ce:	e8 5f 03 00 00       	callq  1a32 <read_six_numbers>
    16d3:	4d 89 f4             	mov    %r14,%r12
    16d6:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    16dc:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    16e1:	e9 a4 00 00 00       	jmpq   178a <phase_6+0xd2>
    16e6:	e8 21 03 00 00       	callq  1a0c <explode_bomb>
    16eb:	e9 ac 00 00 00       	jmpq   179c <phase_6+0xe4>
    16f0:	48 89 e6             	mov    %rsp,%rsi
    16f3:	49 8d 7c 24 18       	lea    0x18(%r12),%rdi
    16f8:	41 8b 0c 24          	mov    (%r12),%ecx
    16fc:	b8 01 00 00 00       	mov    $0x1,%eax
    1701:	48 8d 15 e8 3b 00 00 	lea    0x3be8(%rip),%rdx        # 52f0 <node1>
    1708:	83 f9 01             	cmp    $0x1,%ecx
    170b:	7e 0b                	jle    1718 <phase_6+0x60>
    170d:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1711:	83 c0 01             	add    $0x1,%eax
    1714:	39 c8                	cmp    %ecx,%eax
    1716:	75 f5                	jne    170d <phase_6+0x55>
    1718:	48 89 16             	mov    %rdx,(%rsi)
    171b:	49 83 c4 04          	add    $0x4,%r12
    171f:	48 83 c6 08          	add    $0x8,%rsi
    1723:	4c 39 e7             	cmp    %r12,%rdi
    1726:	75 d0                	jne    16f8 <phase_6+0x40>
    1728:	48 8b 1c 24          	mov    (%rsp),%rbx
    172c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1731:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1735:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    173a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    173e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1743:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1747:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    174c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1750:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1755:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1759:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1760:	00 
    1761:	bd 05 00 00 00       	mov    $0x5,%ebp
    1766:	eb 4c                	jmp    17b4 <phase_6+0xfc>
    1768:	e8 9f 02 00 00       	callq  1a0c <explode_bomb>
    176d:	48 83 c3 01          	add    $0x1,%rbx
    1771:	83 fb 05             	cmp    $0x5,%ebx
    1774:	7f 0c                	jg     1782 <phase_6+0xca>
    1776:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax
    177b:	39 45 00             	cmp    %eax,0x0(%rbp)
    177e:	75 ed                	jne    176d <phase_6+0xb5>
    1780:	eb e6                	jmp    1768 <phase_6+0xb0>
    1782:	49 83 c7 01          	add    $0x1,%r15
    1786:	49 83 c6 04          	add    $0x4,%r14
    178a:	4c 89 f5             	mov    %r14,%rbp
    178d:	41 8b 06             	mov    (%r14),%eax
    1790:	83 e8 01             	sub    $0x1,%eax
    1793:	83 f8 05             	cmp    $0x5,%eax
    1796:	0f 87 4a ff ff ff    	ja     16e6 <phase_6+0x2e>
    179c:	49 83 ff 06          	cmp    $0x6,%r15
    17a0:	0f 84 4a ff ff ff    	je     16f0 <phase_6+0x38>
    17a6:	4c 89 fb             	mov    %r15,%rbx
    17a9:	eb cb                	jmp    1776 <phase_6+0xbe>
    17ab:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    17af:	83 ed 01             	sub    $0x1,%ebp
    17b2:	74 11                	je     17c5 <phase_6+0x10d>
    17b4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    17b8:	8b 00                	mov    (%rax),%eax
    17ba:	39 03                	cmp    %eax,(%rbx)
    17bc:	7d ed                	jge    17ab <phase_6+0xf3>
    17be:	e8 49 02 00 00       	callq  1a0c <explode_bomb>
    17c3:	eb e6                	jmp    17ab <phase_6+0xf3>
    17c5:	48 83 c4 58          	add    $0x58,%rsp
    17c9:	5b                   	pop    %rbx
    17ca:	5d                   	pop    %rbp
    17cb:	41 5c                	pop    %r12
    17cd:	41 5d                	pop    %r13
    17cf:	41 5e                	pop    %r14
    17d1:	41 5f                	pop    %r15
    17d3:	c3                   	retq   

00000000000017d4 <fun7>:
    17d4:	48 85 ff             	test   %rdi,%rdi
    17d7:	74 32                	je     180b <fun7+0x37>
    17d9:	48 83 ec 08          	sub    $0x8,%rsp
    17dd:	8b 17                	mov    (%rdi),%edx
    17df:	39 f2                	cmp    %esi,%edx
    17e1:	7f 0c                	jg     17ef <fun7+0x1b>
    17e3:	b8 00 00 00 00       	mov    $0x0,%eax
    17e8:	75 12                	jne    17fc <fun7+0x28>
    17ea:	48 83 c4 08          	add    $0x8,%rsp
    17ee:	c3                   	retq   
    17ef:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    17f3:	e8 dc ff ff ff       	callq  17d4 <fun7>
    17f8:	01 c0                	add    %eax,%eax
    17fa:	eb ee                	jmp    17ea <fun7+0x16>
    17fc:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1800:	e8 cf ff ff ff       	callq  17d4 <fun7>
    1805:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1809:	eb df                	jmp    17ea <fun7+0x16>
    180b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1810:	c3                   	retq   

0000000000001811 <secret_phase>:
    1811:	53                   	push   %rbx
    1812:	e8 5c 02 00 00       	callq  1a73 <read_line>
    1817:	ba 0a 00 00 00       	mov    $0xa,%edx
    181c:	be 00 00 00 00       	mov    $0x0,%esi
    1821:	48 89 c7             	mov    %rax,%rdi
    1824:	e8 e7 f8 ff ff       	callq  1110 <strtol@plt>
    1829:	48 89 c3             	mov    %rax,%rbx
    182c:	8d 40 ff             	lea    -0x1(%rax),%eax
    182f:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1834:	77 26                	ja     185c <secret_phase+0x4b>
    1836:	89 de                	mov    %ebx,%esi
    1838:	48 8d 3d d1 39 00 00 	lea    0x39d1(%rip),%rdi        # 5210 <n1>
    183f:	e8 90 ff ff ff       	callq  17d4 <fun7>
    1844:	83 f8 06             	cmp    $0x6,%eax
    1847:	75 1a                	jne    1863 <secret_phase+0x52>
    1849:	48 8d 3d 30 19 00 00 	lea    0x1930(%rip),%rdi        # 3180 <_IO_stdin_used+0x180>
    1850:	e8 0b f8 ff ff       	callq  1060 <puts@plt>
    1855:	e8 5d 03 00 00       	callq  1bb7 <phase_defused>
    185a:	5b                   	pop    %rbx
    185b:	c3                   	retq   
    185c:	e8 ab 01 00 00       	callq  1a0c <explode_bomb>
    1861:	eb d3                	jmp    1836 <secret_phase+0x25>
    1863:	e8 a4 01 00 00       	callq  1a0c <explode_bomb>
    1868:	eb df                	jmp    1849 <secret_phase+0x38>

000000000000186a <sig_handler>:
    186a:	48 83 ec 08          	sub    $0x8,%rsp
    186e:	48 8d 3d 7b 19 00 00 	lea    0x197b(%rip),%rdi        # 31f0 <array.3198+0x10>
    1875:	e8 e6 f7 ff ff       	callq  1060 <puts@plt>
    187a:	bf 03 00 00 00       	mov    $0x3,%edi
    187f:	e8 0c f9 ff ff       	callq  1190 <sleep@plt>
    1884:	48 8d 3d 27 1a 00 00 	lea    0x1a27(%rip),%rdi        # 32b2 <array.3198+0xd2>
    188b:	b8 00 00 00 00       	mov    $0x0,%eax
    1890:	e8 eb f7 ff ff       	callq  1080 <printf@plt>
    1895:	48 8b 3d a4 3a 00 00 	mov    0x3aa4(%rip),%rdi        # 5340 <stdout@@GLIBC_2.2.5>
    189c:	e8 7f f8 ff ff       	callq  1120 <fflush@plt>
    18a1:	bf 01 00 00 00       	mov    $0x1,%edi
    18a6:	e8 e5 f8 ff ff       	callq  1190 <sleep@plt>
    18ab:	48 8d 3d 08 1a 00 00 	lea    0x1a08(%rip),%rdi        # 32ba <array.3198+0xda>
    18b2:	e8 a9 f7 ff ff       	callq  1060 <puts@plt>
    18b7:	bf 10 00 00 00       	mov    $0x10,%edi
    18bc:	e8 af f8 ff ff       	callq  1170 <exit@plt>

00000000000018c1 <invalid_phase>:
    18c1:	48 83 ec 08          	sub    $0x8,%rsp
    18c5:	48 89 fe             	mov    %rdi,%rsi
    18c8:	48 8d 3d f3 19 00 00 	lea    0x19f3(%rip),%rdi        # 32c2 <array.3198+0xe2>
    18cf:	b8 00 00 00 00       	mov    $0x0,%eax
    18d4:	e8 a7 f7 ff ff       	callq  1080 <printf@plt>
    18d9:	bf 08 00 00 00       	mov    $0x8,%edi
    18de:	e8 8d f8 ff ff       	callq  1170 <exit@plt>

00000000000018e3 <string_length>:
    18e3:	80 3f 00             	cmpb   $0x0,(%rdi)
    18e6:	74 12                	je     18fa <string_length+0x17>
    18e8:	b8 00 00 00 00       	mov    $0x0,%eax
    18ed:	48 83 c7 01          	add    $0x1,%rdi
    18f1:	83 c0 01             	add    $0x1,%eax
    18f4:	80 3f 00             	cmpb   $0x0,(%rdi)
    18f7:	75 f4                	jne    18ed <string_length+0xa>
    18f9:	c3                   	retq   
    18fa:	b8 00 00 00 00       	mov    $0x0,%eax
    18ff:	c3                   	retq   

0000000000001900 <strings_not_equal>:
    1900:	41 54                	push   %r12
    1902:	55                   	push   %rbp
    1903:	53                   	push   %rbx
    1904:	48 89 fb             	mov    %rdi,%rbx
    1907:	48 89 f5             	mov    %rsi,%rbp
    190a:	e8 d4 ff ff ff       	callq  18e3 <string_length>
    190f:	41 89 c4             	mov    %eax,%r12d
    1912:	48 89 ef             	mov    %rbp,%rdi
    1915:	e8 c9 ff ff ff       	callq  18e3 <string_length>
    191a:	ba 01 00 00 00       	mov    $0x1,%edx
    191f:	41 39 c4             	cmp    %eax,%r12d
    1922:	75 2f                	jne    1953 <strings_not_equal+0x53>
    1924:	0f b6 03             	movzbl (%rbx),%eax
    1927:	84 c0                	test   %al,%al
    1929:	74 2f                	je     195a <strings_not_equal+0x5a>
    192b:	3a 45 00             	cmp    0x0(%rbp),%al
    192e:	75 31                	jne    1961 <strings_not_equal+0x61>
    1930:	b8 01 00 00 00       	mov    $0x1,%eax
    1935:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1939:	84 d2                	test   %dl,%dl
    193b:	74 11                	je     194e <strings_not_equal+0x4e>
    193d:	48 83 c0 01          	add    $0x1,%rax
    1941:	38 54 05 ff          	cmp    %dl,-0x1(%rbp,%rax,1)
    1945:	74 ee                	je     1935 <strings_not_equal+0x35>
    1947:	ba 01 00 00 00       	mov    $0x1,%edx
    194c:	eb 05                	jmp    1953 <strings_not_equal+0x53>
    194e:	ba 00 00 00 00       	mov    $0x0,%edx
    1953:	89 d0                	mov    %edx,%eax
    1955:	5b                   	pop    %rbx
    1956:	5d                   	pop    %rbp
    1957:	41 5c                	pop    %r12
    1959:	c3                   	retq   
    195a:	ba 00 00 00 00       	mov    $0x0,%edx
    195f:	eb f2                	jmp    1953 <strings_not_equal+0x53>
    1961:	ba 01 00 00 00       	mov    $0x1,%edx
    1966:	eb eb                	jmp    1953 <strings_not_equal+0x53>

0000000000001968 <initialize_bomb>:
    1968:	48 83 ec 08          	sub    $0x8,%rsp
    196c:	48 8d 35 f7 fe ff ff 	lea    -0x109(%rip),%rsi        # 186a <sig_handler>
    1973:	bf 02 00 00 00       	mov    $0x2,%edi
    1978:	e8 63 f7 ff ff       	callq  10e0 <signal@plt>
    197d:	48 83 c4 08          	add    $0x8,%rsp
    1981:	c3                   	retq   

0000000000001982 <initialize_bomb_solve>:
    1982:	c3                   	retq   

0000000000001983 <blank_line>:
    1983:	55                   	push   %rbp
    1984:	53                   	push   %rbx
    1985:	48 83 ec 08          	sub    $0x8,%rsp
    1989:	48 89 fd             	mov    %rdi,%rbp
    198c:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1990:	84 db                	test   %bl,%bl
    1992:	74 1e                	je     19b2 <blank_line+0x2f>
    1994:	e8 07 f8 ff ff       	callq  11a0 <__ctype_b_loc@plt>
    1999:	48 83 c5 01          	add    $0x1,%rbp
    199d:	48 0f be db          	movsbq %bl,%rbx
    19a1:	48 8b 00             	mov    (%rax),%rax
    19a4:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    19a9:	75 e1                	jne    198c <blank_line+0x9>
    19ab:	b8 00 00 00 00       	mov    $0x0,%eax
    19b0:	eb 05                	jmp    19b7 <blank_line+0x34>
    19b2:	b8 01 00 00 00       	mov    $0x1,%eax
    19b7:	48 83 c4 08          	add    $0x8,%rsp
    19bb:	5b                   	pop    %rbx
    19bc:	5d                   	pop    %rbp
    19bd:	c3                   	retq   

00000000000019be <skip>:
    19be:	55                   	push   %rbp
    19bf:	53                   	push   %rbx
    19c0:	48 83 ec 08          	sub    $0x8,%rsp
    19c4:	48 8d 2d f5 3d 00 00 	lea    0x3df5(%rip),%rbp        # 57c0 <input_strings>
    19cb:	48 63 05 ae 39 00 00 	movslq 0x39ae(%rip),%rax        # 5380 <num_input_strings>
    19d2:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    19d6:	48 c1 e7 04          	shl    $0x4,%rdi
    19da:	48 01 ef             	add    %rbp,%rdi
    19dd:	48 8b 15 bc 3d 00 00 	mov    0x3dbc(%rip),%rdx        # 57a0 <infile>
    19e4:	be 50 00 00 00       	mov    $0x50,%esi
    19e9:	e8 e2 f6 ff ff       	callq  10d0 <fgets@plt>
    19ee:	48 89 c3             	mov    %rax,%rbx
    19f1:	48 85 c0             	test   %rax,%rax
    19f4:	74 0c                	je     1a02 <skip+0x44>
    19f6:	48 89 c7             	mov    %rax,%rdi
    19f9:	e8 85 ff ff ff       	callq  1983 <blank_line>
    19fe:	85 c0                	test   %eax,%eax
    1a00:	75 c9                	jne    19cb <skip+0xd>
    1a02:	48 89 d8             	mov    %rbx,%rax
    1a05:	48 83 c4 08          	add    $0x8,%rsp
    1a09:	5b                   	pop    %rbx
    1a0a:	5d                   	pop    %rbp
    1a0b:	c3                   	retq   

0000000000001a0c <explode_bomb>:
    1a0c:	48 83 ec 08          	sub    $0x8,%rsp
    1a10:	48 8d 3d bc 18 00 00 	lea    0x18bc(%rip),%rdi        # 32d3 <array.3198+0xf3>
    1a17:	e8 44 f6 ff ff       	callq  1060 <puts@plt>
    1a1c:	48 8d 3d b9 18 00 00 	lea    0x18b9(%rip),%rdi        # 32dc <array.3198+0xfc>
    1a23:	e8 38 f6 ff ff       	callq  1060 <puts@plt>
    1a28:	bf 08 00 00 00       	mov    $0x8,%edi
    1a2d:	e8 3e f7 ff ff       	callq  1170 <exit@plt>

0000000000001a32 <read_six_numbers>:
    1a32:	48 83 ec 08          	sub    $0x8,%rsp
    1a36:	48 89 f2             	mov    %rsi,%rdx
    1a39:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1a3d:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1a41:	50                   	push   %rax
    1a42:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1a46:	50                   	push   %rax
    1a47:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1a4b:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1a4f:	48 8d 35 9d 18 00 00 	lea    0x189d(%rip),%rsi        # 32f3 <array.3198+0x113>
    1a56:	b8 00 00 00 00       	mov    $0x0,%eax
    1a5b:	e8 d0 f6 ff ff       	callq  1130 <__isoc99_sscanf@plt>
    1a60:	48 83 c4 10          	add    $0x10,%rsp
    1a64:	83 f8 05             	cmp    $0x5,%eax
    1a67:	7e 05                	jle    1a6e <read_six_numbers+0x3c>
    1a69:	48 83 c4 08          	add    $0x8,%rsp
    1a6d:	c3                   	retq   
    1a6e:	e8 99 ff ff ff       	callq  1a0c <explode_bomb>

0000000000001a73 <read_line>:
    1a73:	48 83 ec 08          	sub    $0x8,%rsp
    1a77:	b8 00 00 00 00       	mov    $0x0,%eax
    1a7c:	e8 3d ff ff ff       	callq  19be <skip>
    1a81:	48 85 c0             	test   %rax,%rax
    1a84:	74 6f                	je     1af5 <read_line+0x82>
    1a86:	8b 35 f4 38 00 00    	mov    0x38f4(%rip),%esi        # 5380 <num_input_strings>
    1a8c:	48 63 c6             	movslq %esi,%rax
    1a8f:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1a93:	48 c1 e2 04          	shl    $0x4,%rdx
    1a97:	48 8d 05 22 3d 00 00 	lea    0x3d22(%rip),%rax        # 57c0 <input_strings>
    1a9e:	48 01 c2             	add    %rax,%rdx
    1aa1:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1aa8:	b8 00 00 00 00       	mov    $0x0,%eax
    1aad:	48 89 d7             	mov    %rdx,%rdi
    1ab0:	f2 ae                	repnz scas %es:(%rdi),%al
    1ab2:	48 f7 d1             	not    %rcx
    1ab5:	48 83 e9 01          	sub    $0x1,%rcx
    1ab9:	83 f9 4e             	cmp    $0x4e,%ecx
    1abc:	0f 8f ab 00 00 00    	jg     1b6d <read_line+0xfa>
    1ac2:	83 e9 01             	sub    $0x1,%ecx
    1ac5:	48 63 c9             	movslq %ecx,%rcx
    1ac8:	48 63 c6             	movslq %esi,%rax
    1acb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1acf:	48 c1 e0 04          	shl    $0x4,%rax
    1ad3:	48 89 c7             	mov    %rax,%rdi
    1ad6:	48 8d 05 e3 3c 00 00 	lea    0x3ce3(%rip),%rax        # 57c0 <input_strings>
    1add:	48 01 f8             	add    %rdi,%rax
    1ae0:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1ae4:	83 c6 01             	add    $0x1,%esi
    1ae7:	89 35 93 38 00 00    	mov    %esi,0x3893(%rip)        # 5380 <num_input_strings>
    1aed:	48 89 d0             	mov    %rdx,%rax
    1af0:	48 83 c4 08          	add    $0x8,%rsp
    1af4:	c3                   	retq   
    1af5:	48 8b 05 54 38 00 00 	mov    0x3854(%rip),%rax        # 5350 <stdin@@GLIBC_2.2.5>
    1afc:	48 39 05 9d 3c 00 00 	cmp    %rax,0x3c9d(%rip)        # 57a0 <infile>
    1b03:	74 1b                	je     1b20 <read_line+0xad>
    1b05:	48 8d 3d 17 18 00 00 	lea    0x1817(%rip),%rdi        # 3323 <array.3198+0x143>
    1b0c:	e8 1f f5 ff ff       	callq  1030 <getenv@plt>
    1b11:	48 85 c0             	test   %rax,%rax
    1b14:	74 20                	je     1b36 <read_line+0xc3>
    1b16:	bf 00 00 00 00       	mov    $0x0,%edi
    1b1b:	e8 50 f6 ff ff       	callq  1170 <exit@plt>
    1b20:	48 8d 3d de 17 00 00 	lea    0x17de(%rip),%rdi        # 3305 <array.3198+0x125>
    1b27:	e8 34 f5 ff ff       	callq  1060 <puts@plt>
    1b2c:	bf 08 00 00 00       	mov    $0x8,%edi
    1b31:	e8 3a f6 ff ff       	callq  1170 <exit@plt>
    1b36:	48 8b 05 13 38 00 00 	mov    0x3813(%rip),%rax        # 5350 <stdin@@GLIBC_2.2.5>
    1b3d:	48 89 05 5c 3c 00 00 	mov    %rax,0x3c5c(%rip)        # 57a0 <infile>
    1b44:	b8 00 00 00 00       	mov    $0x0,%eax
    1b49:	e8 70 fe ff ff       	callq  19be <skip>
    1b4e:	48 85 c0             	test   %rax,%rax
    1b51:	0f 85 2f ff ff ff    	jne    1a86 <read_line+0x13>
    1b57:	48 8d 3d a7 17 00 00 	lea    0x17a7(%rip),%rdi        # 3305 <array.3198+0x125>
    1b5e:	e8 fd f4 ff ff       	callq  1060 <puts@plt>
    1b63:	bf 00 00 00 00       	mov    $0x0,%edi
    1b68:	e8 03 f6 ff ff       	callq  1170 <exit@plt>
    1b6d:	48 8d 3d ba 17 00 00 	lea    0x17ba(%rip),%rdi        # 332e <array.3198+0x14e>
    1b74:	e8 e7 f4 ff ff       	callq  1060 <puts@plt>
    1b79:	8b 05 01 38 00 00    	mov    0x3801(%rip),%eax        # 5380 <num_input_strings>
    1b7f:	8d 50 01             	lea    0x1(%rax),%edx
    1b82:	89 15 f8 37 00 00    	mov    %edx,0x37f8(%rip)        # 5380 <num_input_strings>
    1b88:	48 98                	cltq   
    1b8a:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1b8e:	48 8d 15 2b 3c 00 00 	lea    0x3c2b(%rip),%rdx        # 57c0 <input_strings>
    1b95:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1b9c:	75 6e 63 
    1b9f:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1ba6:	2a 2a 00 
    1ba9:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1bad:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1bb2:	e8 55 fe ff ff       	callq  1a0c <explode_bomb>

0000000000001bb7 <phase_defused>:
    1bb7:	83 3d c2 37 00 00 06 	cmpl   $0x6,0x37c2(%rip)        # 5380 <num_input_strings>
    1bbe:	74 01                	je     1bc1 <phase_defused+0xa>
    1bc0:	c3                   	retq   
    1bc1:	48 83 ec 68          	sub    $0x68,%rsp
    1bc5:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1bca:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1bcf:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1bd4:	48 8d 35 6e 17 00 00 	lea    0x176e(%rip),%rsi        # 3349 <array.3198+0x169>
    1bdb:	48 8d 3d ce 3c 00 00 	lea    0x3cce(%rip),%rdi        # 58b0 <input_strings+0xf0>
    1be2:	b8 00 00 00 00       	mov    $0x0,%eax
    1be7:	e8 44 f5 ff ff       	callq  1130 <__isoc99_sscanf@plt>
    1bec:	83 f8 03             	cmp    $0x3,%eax
    1bef:	74 11                	je     1c02 <phase_defused+0x4b>
    1bf1:	48 8d 3d 90 16 00 00 	lea    0x1690(%rip),%rdi        # 3288 <array.3198+0xa8>
    1bf8:	e8 63 f4 ff ff       	callq  1060 <puts@plt>
    1bfd:	48 83 c4 68          	add    $0x68,%rsp
    1c01:	c3                   	retq   
    1c02:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1c07:	48 8d 35 44 17 00 00 	lea    0x1744(%rip),%rsi        # 3352 <array.3198+0x172>
    1c0e:	e8 ed fc ff ff       	callq  1900 <strings_not_equal>
    1c13:	85 c0                	test   %eax,%eax
    1c15:	75 da                	jne    1bf1 <phase_defused+0x3a>
    1c17:	48 8d 3d 0a 16 00 00 	lea    0x160a(%rip),%rdi        # 3228 <array.3198+0x48>
    1c1e:	e8 3d f4 ff ff       	callq  1060 <puts@plt>
    1c23:	48 8d 3d 26 16 00 00 	lea    0x1626(%rip),%rdi        # 3250 <array.3198+0x70>
    1c2a:	e8 31 f4 ff ff       	callq  1060 <puts@plt>
    1c2f:	b8 00 00 00 00       	mov    $0x0,%eax
    1c34:	e8 d8 fb ff ff       	callq  1811 <secret_phase>
    1c39:	eb b6                	jmp    1bf1 <phase_defused+0x3a>

0000000000001c3b <sigalrm_handler>:
    1c3b:	48 83 ec 08          	sub    $0x8,%rsp
    1c3f:	ba 00 00 00 00       	mov    $0x0,%edx
    1c44:	48 8d 35 15 17 00 00 	lea    0x1715(%rip),%rsi        # 3360 <array.3198+0x180>
    1c4b:	48 8b 3d 0e 37 00 00 	mov    0x370e(%rip),%rdi        # 5360 <stderr@@GLIBC_2.2.5>
    1c52:	b8 00 00 00 00       	mov    $0x0,%eax
    1c57:	e8 a4 f4 ff ff       	callq  1100 <fprintf@plt>
    1c5c:	bf 01 00 00 00       	mov    $0x1,%edi
    1c61:	e8 0a f5 ff ff       	callq  1170 <exit@plt>

0000000000001c66 <rio_readlineb>:
    1c66:	41 56                	push   %r14
    1c68:	41 55                	push   %r13
    1c6a:	41 54                	push   %r12
    1c6c:	55                   	push   %rbp
    1c6d:	53                   	push   %rbx
    1c6e:	48 89 f5             	mov    %rsi,%rbp
    1c71:	48 83 fa 01          	cmp    $0x1,%rdx
    1c75:	0f 86 9d 00 00 00    	jbe    1d18 <rio_readlineb+0xb2>
    1c7b:	48 89 fb             	mov    %rdi,%rbx
    1c7e:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1c83:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1c89:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    1c8d:	eb 17                	jmp    1ca6 <rio_readlineb+0x40>
    1c8f:	e8 ac f3 ff ff       	callq  1040 <__errno_location@plt>
    1c94:	83 38 04             	cmpl   $0x4,(%rax)
    1c97:	74 0d                	je     1ca6 <rio_readlineb+0x40>
    1c99:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1ca0:	eb 28                	jmp    1cca <rio_readlineb+0x64>
    1ca2:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    1ca6:	8b 43 04             	mov    0x4(%rbx),%eax
    1ca9:	85 c0                	test   %eax,%eax
    1cab:	7f 2e                	jg     1cdb <rio_readlineb+0x75>
    1cad:	ba 00 20 00 00       	mov    $0x2000,%edx
    1cb2:	4c 89 e6             	mov    %r12,%rsi
    1cb5:	8b 3b                	mov    (%rbx),%edi
    1cb7:	e8 04 f4 ff ff       	callq  10c0 <read@plt>
    1cbc:	89 43 04             	mov    %eax,0x4(%rbx)
    1cbf:	85 c0                	test   %eax,%eax
    1cc1:	78 cc                	js     1c8f <rio_readlineb+0x29>
    1cc3:	75 dd                	jne    1ca2 <rio_readlineb+0x3c>
    1cc5:	b8 00 00 00 00       	mov    $0x0,%eax
    1cca:	85 c0                	test   %eax,%eax
    1ccc:	75 52                	jne    1d20 <rio_readlineb+0xba>
    1cce:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd3:	41 83 fd 01          	cmp    $0x1,%r13d
    1cd7:	75 2f                	jne    1d08 <rio_readlineb+0xa2>
    1cd9:	eb 34                	jmp    1d0f <rio_readlineb+0xa9>
    1cdb:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1cdf:	0f b6 0a             	movzbl (%rdx),%ecx
    1ce2:	48 83 c2 01          	add    $0x1,%rdx
    1ce6:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    1cea:	83 e8 01             	sub    $0x1,%eax
    1ced:	89 43 04             	mov    %eax,0x4(%rbx)
    1cf0:	48 83 c5 01          	add    $0x1,%rbp
    1cf4:	88 4d ff             	mov    %cl,-0x1(%rbp)
    1cf7:	80 f9 0a             	cmp    $0xa,%cl
    1cfa:	74 0c                	je     1d08 <rio_readlineb+0xa2>
    1cfc:	41 83 c5 01          	add    $0x1,%r13d
    1d00:	4c 39 f5             	cmp    %r14,%rbp
    1d03:	75 a1                	jne    1ca6 <rio_readlineb+0x40>
    1d05:	4c 89 f5             	mov    %r14,%rbp
    1d08:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    1d0c:	49 63 c5             	movslq %r13d,%rax
    1d0f:	5b                   	pop    %rbx
    1d10:	5d                   	pop    %rbp
    1d11:	41 5c                	pop    %r12
    1d13:	41 5d                	pop    %r13
    1d15:	41 5e                	pop    %r14
    1d17:	c3                   	retq   
    1d18:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1d1e:	eb e8                	jmp    1d08 <rio_readlineb+0xa2>
    1d20:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1d27:	eb e6                	jmp    1d0f <rio_readlineb+0xa9>

0000000000001d29 <submitr>:
    1d29:	41 57                	push   %r15
    1d2b:	41 56                	push   %r14
    1d2d:	41 55                	push   %r13
    1d2f:	41 54                	push   %r12
    1d31:	55                   	push   %rbp
    1d32:	53                   	push   %rbx
    1d33:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    1d3a:	49 89 fd             	mov    %rdi,%r13
    1d3d:	89 f5                	mov    %esi,%ebp
    1d3f:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1d44:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1d49:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1d4e:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    1d53:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    1d5a:	00 
    1d5b:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    1d62:	00 
    1d63:	c7 84 24 4c 20 00 00 	movl   $0x0,0x204c(%rsp)
    1d6a:	00 00 00 00 
    1d6e:	ba 00 00 00 00       	mov    $0x0,%edx
    1d73:	be 01 00 00 00       	mov    $0x1,%esi
    1d78:	bf 02 00 00 00       	mov    $0x2,%edi
    1d7d:	e8 2e f4 ff ff       	callq  11b0 <socket@plt>
    1d82:	85 c0                	test   %eax,%eax
    1d84:	0f 88 42 01 00 00    	js     1ecc <submitr+0x1a3>
    1d8a:	41 89 c4             	mov    %eax,%r12d
    1d8d:	4c 89 ef             	mov    %r13,%rdi
    1d90:	e8 5b f3 ff ff       	callq  10f0 <gethostbyname@plt>
    1d95:	48 85 c0             	test   %rax,%rax
    1d98:	0f 84 7e 01 00 00    	je     1f1c <submitr+0x1f3>
    1d9e:	4c 8d ac 24 60 a0 00 	lea    0xa060(%rsp),%r13
    1da5:	00 
    1da6:	48 c7 84 24 62 a0 00 	movq   $0x0,0xa062(%rsp)
    1dad:	00 00 00 00 00 
    1db2:	c7 84 24 6a a0 00 00 	movl   $0x0,0xa06a(%rsp)
    1db9:	00 00 00 00 
    1dbd:	66 c7 84 24 6e a0 00 	movw   $0x0,0xa06e(%rsp)
    1dc4:	00 00 00 
    1dc7:	66 c7 84 24 60 a0 00 	movw   $0x2,0xa060(%rsp)
    1dce:	00 02 00 
    1dd1:	48 63 50 14          	movslq 0x14(%rax),%rdx
    1dd5:	48 8b 40 18          	mov    0x18(%rax),%rax
    1dd9:	48 8d bc 24 64 a0 00 	lea    0xa064(%rsp),%rdi
    1de0:	00 
    1de1:	48 8b 30             	mov    (%rax),%rsi
    1de4:	e8 57 f3 ff ff       	callq  1140 <memmove@plt>
    1de9:	66 c1 c5 08          	rol    $0x8,%bp
    1ded:	66 89 ac 24 62 a0 00 	mov    %bp,0xa062(%rsp)
    1df4:	00 
    1df5:	ba 10 00 00 00       	mov    $0x10,%edx
    1dfa:	4c 89 ee             	mov    %r13,%rsi
    1dfd:	44 89 e7             	mov    %r12d,%edi
    1e00:	e8 7b f3 ff ff       	callq  1180 <connect@plt>
    1e05:	85 c0                	test   %eax,%eax
    1e07:	0f 88 7a 01 00 00    	js     1f87 <submitr+0x25e>
    1e0d:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    1e14:	b8 00 00 00 00       	mov    $0x0,%eax
    1e19:	4c 89 c9             	mov    %r9,%rcx
    1e1c:	48 89 df             	mov    %rbx,%rdi
    1e1f:	f2 ae                	repnz scas %es:(%rdi),%al
    1e21:	48 89 ce             	mov    %rcx,%rsi
    1e24:	48 f7 d6             	not    %rsi
    1e27:	4c 89 c9             	mov    %r9,%rcx
    1e2a:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1e2f:	f2 ae                	repnz scas %es:(%rdi),%al
    1e31:	49 89 c8             	mov    %rcx,%r8
    1e34:	4c 89 c9             	mov    %r9,%rcx
    1e37:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1e3c:	f2 ae                	repnz scas %es:(%rdi),%al
    1e3e:	48 89 ca             	mov    %rcx,%rdx
    1e41:	48 f7 d2             	not    %rdx
    1e44:	4c 89 c9             	mov    %r9,%rcx
    1e47:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    1e4c:	f2 ae                	repnz scas %es:(%rdi),%al
    1e4e:	4c 29 c2             	sub    %r8,%rdx
    1e51:	48 29 ca             	sub    %rcx,%rdx
    1e54:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    1e59:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    1e5e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1e64:	0f 87 7a 01 00 00    	ja     1fe4 <submitr+0x2bb>
    1e6a:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    1e71:	00 
    1e72:	b9 00 04 00 00       	mov    $0x400,%ecx
    1e77:	b8 00 00 00 00       	mov    $0x0,%eax
    1e7c:	48 89 d7             	mov    %rdx,%rdi
    1e7f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1e82:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1e89:	48 89 df             	mov    %rbx,%rdi
    1e8c:	f2 ae                	repnz scas %es:(%rdi),%al
    1e8e:	48 89 ca             	mov    %rcx,%rdx
    1e91:	48 f7 d2             	not    %rdx
    1e94:	48 89 d1             	mov    %rdx,%rcx
    1e97:	48 83 e9 01          	sub    $0x1,%rcx
    1e9b:	85 c9                	test   %ecx,%ecx
    1e9d:	0f 84 d2 04 00 00    	je     2375 <submitr+0x64c>
    1ea3:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1ea6:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    1eab:	48 8d ac 24 50 40 00 	lea    0x4050(%rsp),%rbp
    1eb2:	00 
    1eb3:	48 8d 44 24 38       	lea    0x38(%rsp),%rax
    1eb8:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1ebd:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    1ec4:	00 20 00 
    1ec7:	e9 a5 01 00 00       	jmpq   2071 <submitr+0x348>
    1ecc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    1ed3:	3a 20 43 
    1ed6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    1edd:	20 75 6e 
    1ee0:	49 89 07             	mov    %rax,(%r15)
    1ee3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1ee7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1eee:	74 6f 20 
    1ef1:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    1ef8:	65 20 73 
    1efb:	49 89 47 10          	mov    %rax,0x10(%r15)
    1eff:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1f03:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    1f0a:	65 
    1f0b:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    1f12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1f17:	e9 e8 02 00 00       	jmpq   2204 <submitr+0x4db>
    1f1c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    1f23:	3a 20 44 
    1f26:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    1f2d:	20 75 6e 
    1f30:	49 89 07             	mov    %rax,(%r15)
    1f33:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1f37:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1f3e:	74 6f 20 
    1f41:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    1f48:	76 65 20 
    1f4b:	49 89 47 10          	mov    %rax,0x10(%r15)
    1f4f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1f53:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    1f5a:	72 20 61 
    1f5d:	49 89 47 20          	mov    %rax,0x20(%r15)
    1f61:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    1f68:	65 
    1f69:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    1f70:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    1f75:	44 89 e7             	mov    %r12d,%edi
    1f78:	e8 33 f1 ff ff       	callq  10b0 <close@plt>
    1f7d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1f82:	e9 7d 02 00 00       	jmpq   2204 <submitr+0x4db>
    1f87:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    1f8e:	3a 20 55 
    1f91:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    1f98:	20 74 6f 
    1f9b:	49 89 07             	mov    %rax,(%r15)
    1f9e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1fa2:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    1fa9:	65 63 74 
    1fac:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    1fb3:	68 65 20 
    1fb6:	49 89 47 10          	mov    %rax,0x10(%r15)
    1fba:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1fbe:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    1fc5:	76 
    1fc6:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    1fcd:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    1fd2:	44 89 e7             	mov    %r12d,%edi
    1fd5:	e8 d6 f0 ff ff       	callq  10b0 <close@plt>
    1fda:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1fdf:	e9 20 02 00 00       	jmpq   2204 <submitr+0x4db>
    1fe4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    1feb:	3a 20 52 
    1fee:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    1ff5:	20 73 74 
    1ff8:	49 89 07             	mov    %rax,(%r15)
    1ffb:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1fff:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2006:	74 6f 6f 
    2009:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2010:	65 2e 20 
    2013:	49 89 47 10          	mov    %rax,0x10(%r15)
    2017:	49 89 57 18          	mov    %rdx,0x18(%r15)
    201b:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2022:	61 73 65 
    2025:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    202c:	49 54 52 
    202f:	49 89 47 20          	mov    %rax,0x20(%r15)
    2033:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2037:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    203e:	55 46 00 
    2041:	49 89 47 30          	mov    %rax,0x30(%r15)
    2045:	44 89 e7             	mov    %r12d,%edi
    2048:	e8 63 f0 ff ff       	callq  10b0 <close@plt>
    204d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2052:	e9 ad 01 00 00       	jmpq   2204 <submitr+0x4db>
    2057:	49 0f a3 c5          	bt     %rax,%r13
    205b:	73 1e                	jae    207b <submitr+0x352>
    205d:	88 4d 00             	mov    %cl,0x0(%rbp)
    2060:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2064:	48 83 c3 01          	add    $0x1,%rbx
    2068:	4c 39 f3             	cmp    %r14,%rbx
    206b:	0f 84 04 03 00 00    	je     2375 <submitr+0x64c>
    2071:	0f b6 0b             	movzbl (%rbx),%ecx
    2074:	8d 41 d6             	lea    -0x2a(%rcx),%eax
    2077:	3c 35                	cmp    $0x35,%al
    2079:	76 dc                	jbe    2057 <submitr+0x32e>
    207b:	89 c8                	mov    %ecx,%eax
    207d:	83 e0 df             	and    $0xffffffdf,%eax
    2080:	83 e8 41             	sub    $0x41,%eax
    2083:	3c 19                	cmp    $0x19,%al
    2085:	76 d6                	jbe    205d <submitr+0x334>
    2087:	80 f9 20             	cmp    $0x20,%cl
    208a:	74 4c                	je     20d8 <submitr+0x3af>
    208c:	8d 41 e0             	lea    -0x20(%rcx),%eax
    208f:	3c 5f                	cmp    $0x5f,%al
    2091:	76 09                	jbe    209c <submitr+0x373>
    2093:	80 f9 09             	cmp    $0x9,%cl
    2096:	0f 85 4c 02 00 00    	jne    22e8 <submitr+0x5bf>
    209c:	0f b6 c9             	movzbl %cl,%ecx
    209f:	48 8d 15 92 13 00 00 	lea    0x1392(%rip),%rdx        # 3438 <array.3198+0x258>
    20a6:	be 08 00 00 00       	mov    $0x8,%esi
    20ab:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    20b0:	b8 00 00 00 00       	mov    $0x0,%eax
    20b5:	e8 d6 ef ff ff       	callq  1090 <snprintf@plt>
    20ba:	0f b6 44 24 38       	movzbl 0x38(%rsp),%eax
    20bf:	88 45 00             	mov    %al,0x0(%rbp)
    20c2:	0f b6 44 24 39       	movzbl 0x39(%rsp),%eax
    20c7:	88 45 01             	mov    %al,0x1(%rbp)
    20ca:	0f b6 44 24 3a       	movzbl 0x3a(%rsp),%eax
    20cf:	88 45 02             	mov    %al,0x2(%rbp)
    20d2:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    20d6:	eb 8c                	jmp    2064 <submitr+0x33b>
    20d8:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    20dc:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    20e0:	eb 82                	jmp    2064 <submitr+0x33b>
    20e2:	48 01 c5             	add    %rax,%rbp
    20e5:	48 29 c3             	sub    %rax,%rbx
    20e8:	0f 84 fa 02 00 00    	je     23e8 <submitr+0x6bf>
    20ee:	48 89 da             	mov    %rbx,%rdx
    20f1:	48 89 ee             	mov    %rbp,%rsi
    20f4:	44 89 e7             	mov    %r12d,%edi
    20f7:	e8 74 ef ff ff       	callq  1070 <write@plt>
    20fc:	48 85 c0             	test   %rax,%rax
    20ff:	7f e1                	jg     20e2 <submitr+0x3b9>
    2101:	e8 3a ef ff ff       	callq  1040 <__errno_location@plt>
    2106:	83 38 04             	cmpl   $0x4,(%rax)
    2109:	0f 85 7a 01 00 00    	jne    2289 <submitr+0x560>
    210f:	4c 89 e8             	mov    %r13,%rax
    2112:	eb ce                	jmp    20e2 <submitr+0x3b9>
    2114:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    211b:	3a 20 43 
    211e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2125:	20 75 6e 
    2128:	49 89 07             	mov    %rax,(%r15)
    212b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    212f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2136:	74 6f 20 
    2139:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2140:	66 69 72 
    2143:	49 89 47 10          	mov    %rax,0x10(%r15)
    2147:	49 89 57 18          	mov    %rdx,0x18(%r15)
    214b:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2152:	61 64 65 
    2155:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    215c:	6d 20 73 
    215f:	49 89 47 20          	mov    %rax,0x20(%r15)
    2163:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2167:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    216e:	65 
    216f:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2176:	44 89 e7             	mov    %r12d,%edi
    2179:	e8 32 ef ff ff       	callq  10b0 <close@plt>
    217e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2183:	eb 7f                	jmp    2204 <submitr+0x4db>
    2185:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
    218a:	48 8d 35 f7 11 00 00 	lea    0x11f7(%rip),%rsi        # 3388 <array.3198+0x1a8>
    2191:	4c 89 ff             	mov    %r15,%rdi
    2194:	b8 00 00 00 00       	mov    $0x0,%eax
    2199:	e8 c2 ef ff ff       	callq  1160 <sprintf@plt>
    219e:	44 89 e7             	mov    %r12d,%edi
    21a1:	e8 0a ef ff ff       	callq  10b0 <close@plt>
    21a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21ab:	eb 57                	jmp    2204 <submitr+0x4db>
    21ad:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    21b4:	00 
    21b5:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    21bc:	00 
    21bd:	ba 00 20 00 00       	mov    $0x2000,%edx
    21c2:	e8 9f fa ff ff       	callq  1c66 <rio_readlineb>
    21c7:	48 85 c0             	test   %rax,%rax
    21ca:	7e 4a                	jle    2216 <submitr+0x4ed>
    21cc:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    21d3:	00 
    21d4:	4c 89 ff             	mov    %r15,%rdi
    21d7:	e8 74 ee ff ff       	callq  1050 <strcpy@plt>
    21dc:	44 89 e7             	mov    %r12d,%edi
    21df:	e8 cc ee ff ff       	callq  10b0 <close@plt>
    21e4:	b9 03 00 00 00       	mov    $0x3,%ecx
    21e9:	48 8d 3d 63 12 00 00 	lea    0x1263(%rip),%rdi        # 3453 <array.3198+0x273>
    21f0:	4c 89 fe             	mov    %r15,%rsi
    21f3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    21f5:	0f 97 c0             	seta   %al
    21f8:	1c 00                	sbb    $0x0,%al
    21fa:	84 c0                	test   %al,%al
    21fc:	0f 95 c0             	setne  %al
    21ff:	0f b6 c0             	movzbl %al,%eax
    2202:	f7 d8                	neg    %eax
    2204:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    220b:	5b                   	pop    %rbx
    220c:	5d                   	pop    %rbp
    220d:	41 5c                	pop    %r12
    220f:	41 5d                	pop    %r13
    2211:	41 5e                	pop    %r14
    2213:	41 5f                	pop    %r15
    2215:	c3                   	retq   
    2216:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    221d:	3a 20 43 
    2220:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2227:	20 75 6e 
    222a:	49 89 07             	mov    %rax,(%r15)
    222d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2231:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2238:	74 6f 20 
    223b:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2242:	73 74 61 
    2245:	49 89 47 10          	mov    %rax,0x10(%r15)
    2249:	49 89 57 18          	mov    %rdx,0x18(%r15)
    224d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2254:	65 73 73 
    2257:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    225e:	72 6f 6d 
    2261:	49 89 47 20          	mov    %rax,0x20(%r15)
    2265:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2269:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2270:	65 72 00 
    2273:	49 89 47 30          	mov    %rax,0x30(%r15)
    2277:	44 89 e7             	mov    %r12d,%edi
    227a:	e8 31 ee ff ff       	callq  10b0 <close@plt>
    227f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2284:	e9 7b ff ff ff       	jmpq   2204 <submitr+0x4db>
    2289:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2290:	3a 20 43 
    2293:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    229a:	20 75 6e 
    229d:	49 89 07             	mov    %rax,(%r15)
    22a0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22a4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    22ab:	74 6f 20 
    22ae:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    22b5:	20 74 6f 
    22b8:	49 89 47 10          	mov    %rax,0x10(%r15)
    22bc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22c0:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    22c7:	73 65 72 
    22ca:	49 89 47 20          	mov    %rax,0x20(%r15)
    22ce:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    22d5:	00 
    22d6:	44 89 e7             	mov    %r12d,%edi
    22d9:	e8 d2 ed ff ff       	callq  10b0 <close@plt>
    22de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22e3:	e9 1c ff ff ff       	jmpq   2204 <submitr+0x4db>
    22e8:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    22ef:	3a 20 52 
    22f2:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    22f9:	20 73 74 
    22fc:	49 89 07             	mov    %rax,(%r15)
    22ff:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2303:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    230a:	63 6f 6e 
    230d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2314:	20 61 6e 
    2317:	49 89 47 10          	mov    %rax,0x10(%r15)
    231b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    231f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2326:	67 61 6c 
    2329:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2330:	6e 70 72 
    2333:	49 89 47 20          	mov    %rax,0x20(%r15)
    2337:	49 89 57 28          	mov    %rdx,0x28(%r15)
    233b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2342:	6c 65 20 
    2345:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    234c:	63 74 65 
    234f:	49 89 47 30          	mov    %rax,0x30(%r15)
    2353:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2357:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    235e:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2363:	44 89 e7             	mov    %r12d,%edi
    2366:	e8 45 ed ff ff       	callq  10b0 <close@plt>
    236b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2370:	e9 8f fe ff ff       	jmpq   2204 <submitr+0x4db>
    2375:	48 8d 9c 24 50 60 00 	lea    0x6050(%rsp),%rbx
    237c:	00 
    237d:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
    2384:	00 
    2385:	50                   	push   %rax
    2386:	ff 74 24 20          	pushq  0x20(%rsp)
    238a:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    238f:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
    2394:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2399:	48 8d 15 18 10 00 00 	lea    0x1018(%rip),%rdx        # 33b8 <array.3198+0x1d8>
    23a0:	be 00 20 00 00       	mov    $0x2000,%esi
    23a5:	48 89 df             	mov    %rbx,%rdi
    23a8:	b8 00 00 00 00       	mov    $0x0,%eax
    23ad:	e8 de ec ff ff       	callq  1090 <snprintf@plt>
    23b2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    23b9:	b8 00 00 00 00       	mov    $0x0,%eax
    23be:	48 89 df             	mov    %rbx,%rdi
    23c1:	f2 ae                	repnz scas %es:(%rdi),%al
    23c3:	48 89 ca             	mov    %rcx,%rdx
    23c6:	48 f7 d2             	not    %rdx
    23c9:	48 83 c4 10          	add    $0x10,%rsp
    23cd:	48 8d ac 24 50 60 00 	lea    0x6050(%rsp),%rbp
    23d4:	00 
    23d5:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    23db:	48 89 d3             	mov    %rdx,%rbx
    23de:	48 83 eb 01          	sub    $0x1,%rbx
    23e2:	0f 85 06 fd ff ff    	jne    20ee <submitr+0x3c5>
    23e8:	44 89 a4 24 50 80 00 	mov    %r12d,0x8050(%rsp)
    23ef:	00 
    23f0:	c7 84 24 54 80 00 00 	movl   $0x0,0x8054(%rsp)
    23f7:	00 00 00 00 
    23fb:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    2402:	00 
    2403:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2407:	48 89 84 24 58 80 00 	mov    %rax,0x8058(%rsp)
    240e:	00 
    240f:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    2416:	00 
    2417:	ba 00 20 00 00       	mov    $0x2000,%edx
    241c:	e8 45 f8 ff ff       	callq  1c66 <rio_readlineb>
    2421:	48 85 c0             	test   %rax,%rax
    2424:	0f 8e ea fc ff ff    	jle    2114 <submitr+0x3eb>
    242a:	48 8d 8c 24 4c 20 00 	lea    0x204c(%rsp),%rcx
    2431:	00 
    2432:	48 8d 94 24 50 20 00 	lea    0x2050(%rsp),%rdx
    2439:	00 
    243a:	48 8d bc 24 50 60 00 	lea    0x6050(%rsp),%rdi
    2441:	00 
    2442:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
    2447:	48 8d 35 f1 0f 00 00 	lea    0xff1(%rip),%rsi        # 343f <array.3198+0x25f>
    244e:	b8 00 00 00 00       	mov    $0x0,%eax
    2453:	e8 d8 ec ff ff       	callq  1130 <__isoc99_sscanf@plt>
    2458:	8b 94 24 4c 20 00 00 	mov    0x204c(%rsp),%edx
    245f:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    2465:	0f 85 1a fd ff ff    	jne    2185 <submitr+0x45c>
    246b:	48 8d 9c 24 50 60 00 	lea    0x6050(%rsp),%rbx
    2472:	00 
    2473:	48 8d 2d d6 0f 00 00 	lea    0xfd6(%rip),%rbp        # 3450 <array.3198+0x270>
    247a:	4c 8d ac 24 50 80 00 	lea    0x8050(%rsp),%r13
    2481:	00 
    2482:	b9 03 00 00 00       	mov    $0x3,%ecx
    2487:	48 89 de             	mov    %rbx,%rsi
    248a:	48 89 ef             	mov    %rbp,%rdi
    248d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    248f:	0f 97 c0             	seta   %al
    2492:	1c 00                	sbb    $0x0,%al
    2494:	84 c0                	test   %al,%al
    2496:	0f 84 11 fd ff ff    	je     21ad <submitr+0x484>
    249c:	ba 00 20 00 00       	mov    $0x2000,%edx
    24a1:	48 89 de             	mov    %rbx,%rsi
    24a4:	4c 89 ef             	mov    %r13,%rdi
    24a7:	e8 ba f7 ff ff       	callq  1c66 <rio_readlineb>
    24ac:	48 85 c0             	test   %rax,%rax
    24af:	7f d1                	jg     2482 <submitr+0x759>
    24b1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24b8:	3a 20 43 
    24bb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24c2:	20 75 6e 
    24c5:	49 89 07             	mov    %rax,(%r15)
    24c8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24cc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24d3:	74 6f 20 
    24d6:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    24dd:	68 65 61 
    24e0:	49 89 47 10          	mov    %rax,0x10(%r15)
    24e4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24e8:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    24ef:	66 72 6f 
    24f2:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    24f9:	76 65 72 
    24fc:	49 89 47 20          	mov    %rax,0x20(%r15)
    2500:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2504:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2509:	44 89 e7             	mov    %r12d,%edi
    250c:	e8 9f eb ff ff       	callq  10b0 <close@plt>
    2511:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2516:	e9 e9 fc ff ff       	jmpq   2204 <submitr+0x4db>

000000000000251b <init_timeout>:
    251b:	85 ff                	test   %edi,%edi
    251d:	74 25                	je     2544 <init_timeout+0x29>
    251f:	53                   	push   %rbx
    2520:	89 fb                	mov    %edi,%ebx
    2522:	48 8d 35 12 f7 ff ff 	lea    -0x8ee(%rip),%rsi        # 1c3b <sigalrm_handler>
    2529:	bf 0e 00 00 00       	mov    $0xe,%edi
    252e:	e8 ad eb ff ff       	callq  10e0 <signal@plt>
    2533:	85 db                	test   %ebx,%ebx
    2535:	bf 00 00 00 00       	mov    $0x0,%edi
    253a:	0f 49 fb             	cmovns %ebx,%edi
    253d:	e8 5e eb ff ff       	callq  10a0 <alarm@plt>
    2542:	5b                   	pop    %rbx
    2543:	c3                   	retq   
    2544:	c3                   	retq   

0000000000002545 <init_driver>:
    2545:	41 54                	push   %r12
    2547:	55                   	push   %rbp
    2548:	53                   	push   %rbx
    2549:	48 83 ec 10          	sub    $0x10,%rsp
    254d:	49 89 fc             	mov    %rdi,%r12
    2550:	be 01 00 00 00       	mov    $0x1,%esi
    2555:	bf 0d 00 00 00       	mov    $0xd,%edi
    255a:	e8 81 eb ff ff       	callq  10e0 <signal@plt>
    255f:	be 01 00 00 00       	mov    $0x1,%esi
    2564:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2569:	e8 72 eb ff ff       	callq  10e0 <signal@plt>
    256e:	be 01 00 00 00       	mov    $0x1,%esi
    2573:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2578:	e8 63 eb ff ff       	callq  10e0 <signal@plt>
    257d:	ba 00 00 00 00       	mov    $0x0,%edx
    2582:	be 01 00 00 00       	mov    $0x1,%esi
    2587:	bf 02 00 00 00       	mov    $0x2,%edi
    258c:	e8 1f ec ff ff       	callq  11b0 <socket@plt>
    2591:	85 c0                	test   %eax,%eax
    2593:	0f 88 8a 00 00 00    	js     2623 <init_driver+0xde>
    2599:	89 c3                	mov    %eax,%ebx
    259b:	48 8d 3d b4 0e 00 00 	lea    0xeb4(%rip),%rdi        # 3456 <array.3198+0x276>
    25a2:	e8 49 eb ff ff       	callq  10f0 <gethostbyname@plt>
    25a7:	48 85 c0             	test   %rax,%rax
    25aa:	0f 84 c6 00 00 00    	je     2676 <init_driver+0x131>
    25b0:	48 89 e5             	mov    %rsp,%rbp
    25b3:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    25ba:	00 00 
    25bc:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    25c3:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    25c9:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    25cf:	48 63 50 14          	movslq 0x14(%rax),%rdx
    25d3:	48 8b 40 18          	mov    0x18(%rax),%rax
    25d7:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    25db:	48 8b 30             	mov    (%rax),%rsi
    25de:	e8 5d eb ff ff       	callq  1140 <memmove@plt>
    25e3:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    25ea:	ba 10 00 00 00       	mov    $0x10,%edx
    25ef:	48 89 ee             	mov    %rbp,%rsi
    25f2:	89 df                	mov    %ebx,%edi
    25f4:	e8 87 eb ff ff       	callq  1180 <connect@plt>
    25f9:	85 c0                	test   %eax,%eax
    25fb:	0f 88 e7 00 00 00    	js     26e8 <init_driver+0x1a3>
    2601:	89 df                	mov    %ebx,%edi
    2603:	e8 a8 ea ff ff       	callq  10b0 <close@plt>
    2608:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    260f:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2615:	b8 00 00 00 00       	mov    $0x0,%eax
    261a:	48 83 c4 10          	add    $0x10,%rsp
    261e:	5b                   	pop    %rbx
    261f:	5d                   	pop    %rbp
    2620:	41 5c                	pop    %r12
    2622:	c3                   	retq   
    2623:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    262a:	3a 20 43 
    262d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2634:	20 75 6e 
    2637:	49 89 04 24          	mov    %rax,(%r12)
    263b:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2640:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2647:	74 6f 20 
    264a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2651:	65 20 73 
    2654:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2659:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    265e:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2665:	6b 65 
    2667:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    266e:	00 
    266f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2674:	eb a4                	jmp    261a <init_driver+0xd5>
    2676:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    267d:	3a 20 44 
    2680:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2687:	20 75 6e 
    268a:	49 89 04 24          	mov    %rax,(%r12)
    268e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2693:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    269a:	74 6f 20 
    269d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    26a4:	76 65 20 
    26a7:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    26ac:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    26b1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    26b8:	72 20 61 
    26bb:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    26c0:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    26c7:	72 65 
    26c9:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    26d0:	73 
    26d1:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    26d7:	89 df                	mov    %ebx,%edi
    26d9:	e8 d2 e9 ff ff       	callq  10b0 <close@plt>
    26de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26e3:	e9 32 ff ff ff       	jmpq   261a <init_driver+0xd5>
    26e8:	48 8d 15 67 0d 00 00 	lea    0xd67(%rip),%rdx        # 3456 <array.3198+0x276>
    26ef:	48 8d 35 1a 0d 00 00 	lea    0xd1a(%rip),%rsi        # 3410 <array.3198+0x230>
    26f6:	4c 89 e7             	mov    %r12,%rdi
    26f9:	b8 00 00 00 00       	mov    $0x0,%eax
    26fe:	e8 5d ea ff ff       	callq  1160 <sprintf@plt>
    2703:	89 df                	mov    %ebx,%edi
    2705:	e8 a6 e9 ff ff       	callq  10b0 <close@plt>
    270a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    270f:	e9 06 ff ff ff       	jmpq   261a <init_driver+0xd5>

0000000000002714 <driver_post>:
    2714:	53                   	push   %rbx
    2715:	4c 89 c3             	mov    %r8,%rbx
    2718:	85 c9                	test   %ecx,%ecx
    271a:	75 17                	jne    2733 <driver_post+0x1f>
    271c:	48 85 ff             	test   %rdi,%rdi
    271f:	74 05                	je     2726 <driver_post+0x12>
    2721:	80 3f 00             	cmpb   $0x0,(%rdi)
    2724:	75 31                	jne    2757 <driver_post+0x43>
    2726:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    272b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    272f:	89 c8                	mov    %ecx,%eax
    2731:	5b                   	pop    %rbx
    2732:	c3                   	retq   
    2733:	48 89 d6             	mov    %rdx,%rsi
    2736:	48 8d 3d 31 0d 00 00 	lea    0xd31(%rip),%rdi        # 346e <array.3198+0x28e>
    273d:	b8 00 00 00 00       	mov    $0x0,%eax
    2742:	e8 39 e9 ff ff       	callq  1080 <printf@plt>
    2747:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    274c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2750:	b8 00 00 00 00       	mov    $0x0,%eax
    2755:	eb da                	jmp    2731 <driver_post+0x1d>
    2757:	41 50                	push   %r8
    2759:	52                   	push   %rdx
    275a:	4c 8d 0d 24 0d 00 00 	lea    0xd24(%rip),%r9        # 3485 <array.3198+0x2a5>
    2761:	49 89 f0             	mov    %rsi,%r8
    2764:	48 89 f9             	mov    %rdi,%rcx
    2767:	48 8d 15 1f 0d 00 00 	lea    0xd1f(%rip),%rdx        # 348d <array.3198+0x2ad>
    276e:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2773:	48 8d 3d dc 0c 00 00 	lea    0xcdc(%rip),%rdi        # 3456 <array.3198+0x276>
    277a:	e8 aa f5 ff ff       	callq  1d29 <submitr>
    277f:	48 83 c4 10          	add    $0x10,%rsp
    2783:	eb ac                	jmp    2731 <driver_post+0x1d>
    2785:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    278c:	00 00 00 
    278f:	90                   	nop

0000000000002790 <__libc_csu_init>:
    2790:	41 57                	push   %r15
    2792:	49 89 d7             	mov    %rdx,%r15
    2795:	41 56                	push   %r14
    2797:	49 89 f6             	mov    %rsi,%r14
    279a:	41 55                	push   %r13
    279c:	41 89 fd             	mov    %edi,%r13d
    279f:	41 54                	push   %r12
    27a1:	4c 8d 25 40 26 00 00 	lea    0x2640(%rip),%r12        # 4de8 <__frame_dummy_init_array_entry>
    27a8:	55                   	push   %rbp
    27a9:	48 8d 2d 40 26 00 00 	lea    0x2640(%rip),%rbp        # 4df0 <__do_global_dtors_aux_fini_array_entry>
    27b0:	53                   	push   %rbx
    27b1:	4c 29 e5             	sub    %r12,%rbp
    27b4:	48 83 ec 08          	sub    $0x8,%rsp
    27b8:	e8 43 e8 ff ff       	callq  1000 <_init>
    27bd:	48 c1 fd 03          	sar    $0x3,%rbp
    27c1:	74 1b                	je     27de <__libc_csu_init+0x4e>
    27c3:	31 db                	xor    %ebx,%ebx
    27c5:	0f 1f 00             	nopl   (%rax)
    27c8:	4c 89 fa             	mov    %r15,%rdx
    27cb:	4c 89 f6             	mov    %r14,%rsi
    27ce:	44 89 ef             	mov    %r13d,%edi
    27d1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    27d5:	48 83 c3 01          	add    $0x1,%rbx
    27d9:	48 39 dd             	cmp    %rbx,%rbp
    27dc:	75 ea                	jne    27c8 <__libc_csu_init+0x38>
    27de:	48 83 c4 08          	add    $0x8,%rsp
    27e2:	5b                   	pop    %rbx
    27e3:	5d                   	pop    %rbp
    27e4:	41 5c                	pop    %r12
    27e6:	41 5d                	pop    %r13
    27e8:	41 5e                	pop    %r14
    27ea:	41 5f                	pop    %r15
    27ec:	c3                   	retq   
    27ed:	0f 1f 00             	nopl   (%rax)

00000000000027f0 <__libc_csu_fini>:
    27f0:	c3                   	retq   

Disassembly of section .fini:

00000000000027f4 <_fini>:
    27f4:	48 83 ec 08          	sub    $0x8,%rsp
    27f8:	48 83 c4 08          	add    $0x8,%rsp
    27fc:	c3                   	retq   
