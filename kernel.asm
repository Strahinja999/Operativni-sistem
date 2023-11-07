
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	77013103          	ld	sp,1904(sp) # 80005770 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	465010ef          	jal	ra,80001c80 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	6c8000ef          	jal	ra,8000174c <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001124:	fe010113          	addi	sp,sp,-32
    80001128:	00113c23          	sd	ra,24(sp)
    8000112c:	00813823          	sd	s0,16(sp)
    80001130:	00913423          	sd	s1,8(sp)
    80001134:	01213023          	sd	s2,0(sp)
    80001138:	02010413          	addi	s0,sp,32
    8000113c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001140:	00100793          	li	a5,1
    80001144:	02a7f863          	bgeu	a5,a0,80001174 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001148:	00a00793          	li	a5,10
    8000114c:	02f577b3          	remu	a5,a0,a5
    80001150:	02078e63          	beqz	a5,8000118c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001154:	fff48513          	addi	a0,s1,-1
    80001158:	00000097          	auipc	ra,0x0
    8000115c:	fcc080e7          	jalr	-52(ra) # 80001124 <_ZL9fibonaccim>
    80001160:	00050913          	mv	s2,a0
    80001164:	ffe48513          	addi	a0,s1,-2
    80001168:	00000097          	auipc	ra,0x0
    8000116c:	fbc080e7          	jalr	-68(ra) # 80001124 <_ZL9fibonaccim>
    80001170:	00a90533          	add	a0,s2,a0
}
    80001174:	01813083          	ld	ra,24(sp)
    80001178:	01013403          	ld	s0,16(sp)
    8000117c:	00813483          	ld	s1,8(sp)
    80001180:	00013903          	ld	s2,0(sp)
    80001184:	02010113          	addi	sp,sp,32
    80001188:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000118c:	00000097          	auipc	ra,0x0
    80001190:	7a4080e7          	jalr	1956(ra) # 80001930 <_ZN3TCB5yieldEv>
    80001194:	fc1ff06f          	j	80001154 <_ZL9fibonaccim+0x30>

0000000080001198 <_Z11workerBodyAv>:
{
    80001198:	fe010113          	addi	sp,sp,-32
    8000119c:	00113c23          	sd	ra,24(sp)
    800011a0:	00813823          	sd	s0,16(sp)
    800011a4:	00913423          	sd	s1,8(sp)
    800011a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800011ac:	00000493          	li	s1,0
    800011b0:	0300006f          	j	800011e0 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800011b4:	00168693          	addi	a3,a3,1
    800011b8:	000027b7          	lui	a5,0x2
    800011bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800011c0:	00d7ee63          	bltu	a5,a3,800011dc <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800011c4:	00000713          	li	a4,0
    800011c8:	000077b7          	lui	a5,0x7
    800011cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800011d0:	fee7e2e3          	bltu	a5,a4,800011b4 <_Z11workerBodyAv+0x1c>
    800011d4:	00170713          	addi	a4,a4,1
    800011d8:	ff1ff06f          	j	800011c8 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800011dc:	00148493          	addi	s1,s1,1
    800011e0:	00900793          	li	a5,9
    800011e4:	0297ec63          	bltu	a5,s1,8000121c <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800011e8:	00004517          	auipc	a0,0x4
    800011ec:	e1850513          	addi	a0,a0,-488 # 80005000 <kvmincrease+0xf80>
    800011f0:	00001097          	auipc	ra,0x1
    800011f4:	964080e7          	jalr	-1692(ra) # 80001b54 <_Z11printStringPKc>
        printInteger(i);
    800011f8:	00048513          	mv	a0,s1
    800011fc:	00001097          	auipc	ra,0x1
    80001200:	9c8080e7          	jalr	-1592(ra) # 80001bc4 <_Z12printIntegerm>
        printString("\n");
    80001204:	00004517          	auipc	a0,0x4
    80001208:	ecc50513          	addi	a0,a0,-308 # 800050d0 <kvmincrease+0x1050>
    8000120c:	00001097          	auipc	ra,0x1
    80001210:	948080e7          	jalr	-1720(ra) # 80001b54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001214:	00000693          	li	a3,0
    80001218:	fa1ff06f          	j	800011b8 <_Z11workerBodyAv+0x20>
}
    8000121c:	01813083          	ld	ra,24(sp)
    80001220:	01013403          	ld	s0,16(sp)
    80001224:	00813483          	ld	s1,8(sp)
    80001228:	02010113          	addi	sp,sp,32
    8000122c:	00008067          	ret

0000000080001230 <_Z11workerBodyBv>:
{
    80001230:	fe010113          	addi	sp,sp,-32
    80001234:	00113c23          	sd	ra,24(sp)
    80001238:	00813823          	sd	s0,16(sp)
    8000123c:	00913423          	sd	s1,8(sp)
    80001240:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001244:	00000493          	li	s1,0
    80001248:	0300006f          	j	80001278 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000124c:	00168693          	addi	a3,a3,1
    80001250:	000027b7          	lui	a5,0x2
    80001254:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001258:	00d7ee63          	bltu	a5,a3,80001274 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000125c:	00000713          	li	a4,0
    80001260:	000077b7          	lui	a5,0x7
    80001264:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001268:	fee7e2e3          	bltu	a5,a4,8000124c <_Z11workerBodyBv+0x1c>
    8000126c:	00170713          	addi	a4,a4,1
    80001270:	ff1ff06f          	j	80001260 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001274:	00148493          	addi	s1,s1,1
    80001278:	00f00793          	li	a5,15
    8000127c:	0297ec63          	bltu	a5,s1,800012b4 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001280:	00004517          	auipc	a0,0x4
    80001284:	d8850513          	addi	a0,a0,-632 # 80005008 <kvmincrease+0xf88>
    80001288:	00001097          	auipc	ra,0x1
    8000128c:	8cc080e7          	jalr	-1844(ra) # 80001b54 <_Z11printStringPKc>
        printInteger(i);
    80001290:	00048513          	mv	a0,s1
    80001294:	00001097          	auipc	ra,0x1
    80001298:	930080e7          	jalr	-1744(ra) # 80001bc4 <_Z12printIntegerm>
        printString("\n");
    8000129c:	00004517          	auipc	a0,0x4
    800012a0:	e3450513          	addi	a0,a0,-460 # 800050d0 <kvmincrease+0x1050>
    800012a4:	00001097          	auipc	ra,0x1
    800012a8:	8b0080e7          	jalr	-1872(ra) # 80001b54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800012ac:	00000693          	li	a3,0
    800012b0:	fa1ff06f          	j	80001250 <_Z11workerBodyBv+0x20>
}
    800012b4:	01813083          	ld	ra,24(sp)
    800012b8:	01013403          	ld	s0,16(sp)
    800012bc:	00813483          	ld	s1,8(sp)
    800012c0:	02010113          	addi	sp,sp,32
    800012c4:	00008067          	ret

00000000800012c8 <_Z11workerBodyCv>:

void workerBodyC()
{
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00113c23          	sd	ra,24(sp)
    800012d0:	00813823          	sd	s0,16(sp)
    800012d4:	00913423          	sd	s1,8(sp)
    800012d8:	01213023          	sd	s2,0(sp)
    800012dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800012e0:	00000493          	li	s1,0
    800012e4:	0380006f          	j	8000131c <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800012e8:	00004517          	auipc	a0,0x4
    800012ec:	d2850513          	addi	a0,a0,-728 # 80005010 <kvmincrease+0xf90>
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	864080e7          	jalr	-1948(ra) # 80001b54 <_Z11printStringPKc>
        printInteger(i);
    800012f8:	00048513          	mv	a0,s1
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	8c8080e7          	jalr	-1848(ra) # 80001bc4 <_Z12printIntegerm>
        printString("\n");
    80001304:	00004517          	auipc	a0,0x4
    80001308:	dcc50513          	addi	a0,a0,-564 # 800050d0 <kvmincrease+0x1050>
    8000130c:	00001097          	auipc	ra,0x1
    80001310:	848080e7          	jalr	-1976(ra) # 80001b54 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001314:	0014849b          	addiw	s1,s1,1
    80001318:	0ff4f493          	andi	s1,s1,255
    8000131c:	00200793          	li	a5,2
    80001320:	fc97f4e3          	bgeu	a5,s1,800012e8 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001324:	00004517          	auipc	a0,0x4
    80001328:	cf450513          	addi	a0,a0,-780 # 80005018 <kvmincrease+0xf98>
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	828080e7          	jalr	-2008(ra) # 80001b54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001334:	00700313          	li	t1,7
    TCB::yield();
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	5f8080e7          	jalr	1528(ra) # 80001930 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001340:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001344:	00004517          	auipc	a0,0x4
    80001348:	ce450513          	addi	a0,a0,-796 # 80005028 <kvmincrease+0xfa8>
    8000134c:	00001097          	auipc	ra,0x1
    80001350:	808080e7          	jalr	-2040(ra) # 80001b54 <_Z11printStringPKc>
    printInteger(t1);
    80001354:	00090513          	mv	a0,s2
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	86c080e7          	jalr	-1940(ra) # 80001bc4 <_Z12printIntegerm>
    printString("\n");
    80001360:	00004517          	auipc	a0,0x4
    80001364:	d7050513          	addi	a0,a0,-656 # 800050d0 <kvmincrease+0x1050>
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	7ec080e7          	jalr	2028(ra) # 80001b54 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001370:	00c00513          	li	a0,12
    80001374:	00000097          	auipc	ra,0x0
    80001378:	db0080e7          	jalr	-592(ra) # 80001124 <_ZL9fibonaccim>
    8000137c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	cb050513          	addi	a0,a0,-848 # 80005030 <kvmincrease+0xfb0>
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	7cc080e7          	jalr	1996(ra) # 80001b54 <_Z11printStringPKc>
    printInteger(result);
    80001390:	00090513          	mv	a0,s2
    80001394:	00001097          	auipc	ra,0x1
    80001398:	830080e7          	jalr	-2000(ra) # 80001bc4 <_Z12printIntegerm>
    printString("\n");
    8000139c:	00004517          	auipc	a0,0x4
    800013a0:	d3450513          	addi	a0,a0,-716 # 800050d0 <kvmincrease+0x1050>
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	7b0080e7          	jalr	1968(ra) # 80001b54 <_Z11printStringPKc>
    800013ac:	0380006f          	j	800013e4 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800013b0:	00004517          	auipc	a0,0x4
    800013b4:	c6050513          	addi	a0,a0,-928 # 80005010 <kvmincrease+0xf90>
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	79c080e7          	jalr	1948(ra) # 80001b54 <_Z11printStringPKc>
        printInteger(i);
    800013c0:	00048513          	mv	a0,s1
    800013c4:	00001097          	auipc	ra,0x1
    800013c8:	800080e7          	jalr	-2048(ra) # 80001bc4 <_Z12printIntegerm>
        printString("\n");
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	d0450513          	addi	a0,a0,-764 # 800050d0 <kvmincrease+0x1050>
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	780080e7          	jalr	1920(ra) # 80001b54 <_Z11printStringPKc>
    for (; i < 6; i++)
    800013dc:	0014849b          	addiw	s1,s1,1
    800013e0:	0ff4f493          	andi	s1,s1,255
    800013e4:	00500793          	li	a5,5
    800013e8:	fc97f4e3          	bgeu	a5,s1,800013b0 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800013ec:	01813083          	ld	ra,24(sp)
    800013f0:	01013403          	ld	s0,16(sp)
    800013f4:	00813483          	ld	s1,8(sp)
    800013f8:	00013903          	ld	s2,0(sp)
    800013fc:	02010113          	addi	sp,sp,32
    80001400:	00008067          	ret

0000000080001404 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001404:	fe010113          	addi	sp,sp,-32
    80001408:	00113c23          	sd	ra,24(sp)
    8000140c:	00813823          	sd	s0,16(sp)
    80001410:	00913423          	sd	s1,8(sp)
    80001414:	01213023          	sd	s2,0(sp)
    80001418:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000141c:	00a00493          	li	s1,10
    80001420:	0380006f          	j	80001458 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c1c50513          	addi	a0,a0,-996 # 80005040 <kvmincrease+0xfc0>
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	728080e7          	jalr	1832(ra) # 80001b54 <_Z11printStringPKc>
        printInteger(i);
    80001434:	00048513          	mv	a0,s1
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	78c080e7          	jalr	1932(ra) # 80001bc4 <_Z12printIntegerm>
        printString("\n");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	c9050513          	addi	a0,a0,-880 # 800050d0 <kvmincrease+0x1050>
    80001448:	00000097          	auipc	ra,0x0
    8000144c:	70c080e7          	jalr	1804(ra) # 80001b54 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001450:	0014849b          	addiw	s1,s1,1
    80001454:	0ff4f493          	andi	s1,s1,255
    80001458:	00c00793          	li	a5,12
    8000145c:	fc97f4e3          	bgeu	a5,s1,80001424 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	be850513          	addi	a0,a0,-1048 # 80005048 <kvmincrease+0xfc8>
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	6ec080e7          	jalr	1772(ra) # 80001b54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001470:	00500313          	li	t1,5
    TCB::yield();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	4bc080e7          	jalr	1212(ra) # 80001930 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000147c:	01000513          	li	a0,16
    80001480:	00000097          	auipc	ra,0x0
    80001484:	ca4080e7          	jalr	-860(ra) # 80001124 <_ZL9fibonaccim>
    80001488:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000148c:	00004517          	auipc	a0,0x4
    80001490:	bcc50513          	addi	a0,a0,-1076 # 80005058 <kvmincrease+0xfd8>
    80001494:	00000097          	auipc	ra,0x0
    80001498:	6c0080e7          	jalr	1728(ra) # 80001b54 <_Z11printStringPKc>
    printInteger(result);
    8000149c:	00090513          	mv	a0,s2
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	724080e7          	jalr	1828(ra) # 80001bc4 <_Z12printIntegerm>
    printString("\n");
    800014a8:	00004517          	auipc	a0,0x4
    800014ac:	c2850513          	addi	a0,a0,-984 # 800050d0 <kvmincrease+0x1050>
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	6a4080e7          	jalr	1700(ra) # 80001b54 <_Z11printStringPKc>
    800014b8:	0380006f          	j	800014f0 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800014bc:	00004517          	auipc	a0,0x4
    800014c0:	b8450513          	addi	a0,a0,-1148 # 80005040 <kvmincrease+0xfc0>
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	690080e7          	jalr	1680(ra) # 80001b54 <_Z11printStringPKc>
        printInteger(i);
    800014cc:	00048513          	mv	a0,s1
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	6f4080e7          	jalr	1780(ra) # 80001bc4 <_Z12printIntegerm>
        printString("\n");
    800014d8:	00004517          	auipc	a0,0x4
    800014dc:	bf850513          	addi	a0,a0,-1032 # 800050d0 <kvmincrease+0x1050>
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	674080e7          	jalr	1652(ra) # 80001b54 <_Z11printStringPKc>
    for (; i < 16; i++)
    800014e8:	0014849b          	addiw	s1,s1,1
    800014ec:	0ff4f493          	andi	s1,s1,255
    800014f0:	00f00793          	li	a5,15
    800014f4:	fc97f4e3          	bgeu	a5,s1,800014bc <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800014f8:	01813083          	ld	ra,24(sp)
    800014fc:	01013403          	ld	s0,16(sp)
    80001500:	00813483          	ld	s1,8(sp)
    80001504:	00013903          	ld	s2,0(sp)
    80001508:	02010113          	addi	sp,sp,32
    8000150c:	00008067          	ret

0000000080001510 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00113423          	sd	ra,8(sp)
    80001518:	00813023          	sd	s0,0(sp)
    8000151c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001520:	00003097          	auipc	ra,0x3
    80001524:	8e8080e7          	jalr	-1816(ra) # 80003e08 <__mem_alloc>
}
    80001528:	00813083          	ld	ra,8(sp)
    8000152c:	00013403          	ld	s0,0(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Znam>:

void *operator new[](size_t n)
{
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00113423          	sd	ra,8(sp)
    80001540:	00813023          	sd	s0,0(sp)
    80001544:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001548:	00003097          	auipc	ra,0x3
    8000154c:	8c0080e7          	jalr	-1856(ra) # 80003e08 <__mem_alloc>
}
    80001550:	00813083          	ld	ra,8(sp)
    80001554:	00013403          	ld	s0,0(sp)
    80001558:	01010113          	addi	sp,sp,16
    8000155c:	00008067          	ret

0000000080001560 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00113423          	sd	ra,8(sp)
    80001568:	00813023          	sd	s0,0(sp)
    8000156c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001570:	00002097          	auipc	ra,0x2
    80001574:	7cc080e7          	jalr	1996(ra) # 80003d3c <__mem_free>
}
    80001578:	00813083          	ld	ra,8(sp)
    8000157c:	00013403          	ld	s0,0(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00113423          	sd	ra,8(sp)
    80001590:	00813023          	sd	s0,0(sp)
    80001594:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001598:	00002097          	auipc	ra,0x2
    8000159c:	7a4080e7          	jalr	1956(ra) # 80003d3c <__mem_free>
    800015a0:	00813083          	ld	ra,8(sp)
    800015a4:	00013403          	ld	s0,0(sp)
    800015a8:	01010113          	addi	sp,sp,16
    800015ac:	00008067          	ret

00000000800015b0 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    800015b0:	fb010113          	addi	sp,sp,-80
    800015b4:	04113423          	sd	ra,72(sp)
    800015b8:	04813023          	sd	s0,64(sp)
    800015bc:	02913c23          	sd	s1,56(sp)
    800015c0:	03213823          	sd	s2,48(sp)
    800015c4:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    800015c8:	00000513          	li	a0,0
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	29c080e7          	jalr	668(ra) # 80001868 <_ZN3TCB12createThreadEPFvvE>
    800015d4:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    800015d8:	00004797          	auipc	a5,0x4
    800015dc:	1a07b783          	ld	a5,416(a5) # 80005778 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015e0:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    800015e4:	00004517          	auipc	a0,0x4
    800015e8:	18453503          	ld	a0,388(a0) # 80005768 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	27c080e7          	jalr	636(ra) # 80001868 <_ZN3TCB12createThreadEPFvvE>
    800015f4:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    800015f8:	00004517          	auipc	a0,0x4
    800015fc:	a7050513          	addi	a0,a0,-1424 # 80005068 <kvmincrease+0xfe8>
    80001600:	00000097          	auipc	ra,0x0
    80001604:	554080e7          	jalr	1364(ra) # 80001b54 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	15053503          	ld	a0,336(a0) # 80005758 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001610:	00000097          	auipc	ra,0x0
    80001614:	258080e7          	jalr	600(ra) # 80001868 <_ZN3TCB12createThreadEPFvvE>
    80001618:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	a6450513          	addi	a0,a0,-1436 # 80005080 <kvmincrease+0x1000>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	530080e7          	jalr	1328(ra) # 80001b54 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    8000162c:	00004517          	auipc	a0,0x4
    80001630:	15453503          	ld	a0,340(a0) # 80005780 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001634:	00000097          	auipc	ra,0x0
    80001638:	234080e7          	jalr	564(ra) # 80001868 <_ZN3TCB12createThreadEPFvvE>
    8000163c:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80001640:	00004517          	auipc	a0,0x4
    80001644:	a5850513          	addi	a0,a0,-1448 # 80005098 <kvmincrease+0x1018>
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	50c080e7          	jalr	1292(ra) # 80001b54 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    80001650:	00004517          	auipc	a0,0x4
    80001654:	13853503          	ld	a0,312(a0) # 80005788 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	210080e7          	jalr	528(ra) # 80001868 <_ZN3TCB12createThreadEPFvvE>
    80001660:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80001664:	00004517          	auipc	a0,0x4
    80001668:	a4c50513          	addi	a0,a0,-1460 # 800050b0 <kvmincrease+0x1030>
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	4e8080e7          	jalr	1256(ra) # 80001b54 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001674:	00004797          	auipc	a5,0x4
    80001678:	0dc7b783          	ld	a5,220(a5) # 80005750 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000167c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001680:	00200793          	li	a5,2
    80001684:	1007a073          	csrs	sstatus,a5
}
    80001688:	00c0006f          	j	80001694 <main+0xe4>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	2a4080e7          	jalr	676(ra) # 80001930 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    80001694:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001698:	0287c783          	lbu	a5,40(a5)
    8000169c:	fe0788e3          	beqz	a5,8000168c <main+0xdc>
             threads[2]->isFinished() &&
    800016a0:	fc843783          	ld	a5,-56(s0)
    800016a4:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    800016a8:	fe0782e3          	beqz	a5,8000168c <main+0xdc>
             threads[3]->isFinished() &&
    800016ac:	fd043783          	ld	a5,-48(s0)
    800016b0:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    800016b4:	fc078ce3          	beqz	a5,8000168c <main+0xdc>
             threads[4]->isFinished()))
    800016b8:	fd843783          	ld	a5,-40(s0)
    800016bc:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    800016c0:	fc0786e3          	beqz	a5,8000168c <main+0xdc>
    800016c4:	fb840493          	addi	s1,s0,-72
    800016c8:	0140006f          	j	800016dc <main+0x12c>
    }

    for (auto &thread: threads)
    {
        delete thread;
    800016cc:	00090513          	mv	a0,s2
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	e90080e7          	jalr	-368(ra) # 80001560 <_ZdlPv>
    for (auto &thread: threads)
    800016d8:	00848493          	addi	s1,s1,8
    800016dc:	fe040793          	addi	a5,s0,-32
    800016e0:	02f48063          	beq	s1,a5,80001700 <main+0x150>
        delete thread;
    800016e4:	0004b903          	ld	s2,0(s1)
    800016e8:	fe0908e3          	beqz	s2,800016d8 <main+0x128>
    ~TCB() { delete[] stack; }
    800016ec:	00893503          	ld	a0,8(s2)
    800016f0:	fc050ee3          	beqz	a0,800016cc <main+0x11c>
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	e94080e7          	jalr	-364(ra) # 80001588 <_ZdaPv>
    800016fc:	fd1ff06f          	j	800016cc <main+0x11c>
    }
    printString("Finished\n");
    80001700:	00004517          	auipc	a0,0x4
    80001704:	9c850513          	addi	a0,a0,-1592 # 800050c8 <kvmincrease+0x1048>
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	44c080e7          	jalr	1100(ra) # 80001b54 <_Z11printStringPKc>

    return 0;
}
    80001710:	00000513          	li	a0,0
    80001714:	04813083          	ld	ra,72(sp)
    80001718:	04013403          	ld	s0,64(sp)
    8000171c:	03813483          	ld	s1,56(sp)
    80001720:	03013903          	ld	s2,48(sp)
    80001724:	05010113          	addi	sp,sp,80
    80001728:	00008067          	ret

000000008000172c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    8000172c:	ff010113          	addi	sp,sp,-16
    80001730:	00813423          	sd	s0,8(sp)
    80001734:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001738:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000173c:	10200073          	sret
}
    80001740:	00813403          	ld	s0,8(sp)
    80001744:	01010113          	addi	sp,sp,16
    80001748:	00008067          	ret

000000008000174c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000174c:	fb010113          	addi	sp,sp,-80
    80001750:	04113423          	sd	ra,72(sp)
    80001754:	04813023          	sd	s0,64(sp)
    80001758:	02913c23          	sd	s1,56(sp)
    8000175c:	03213823          	sd	s2,48(sp)
    80001760:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001764:	142027f3          	csrr	a5,scause
    80001768:	faf43c23          	sd	a5,-72(s0)
    return scause;
    8000176c:	fb843703          	ld	a4,-72(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001770:	ff870693          	addi	a3,a4,-8
    80001774:	00100793          	li	a5,1
    80001778:	02d7fe63          	bgeu	a5,a3,800017b4 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
        uint64 sstatus = r_sstatus();
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL)
    8000177c:	fff00793          	li	a5,-1
    80001780:	03f79793          	slli	a5,a5,0x3f
    80001784:	00178793          	addi	a5,a5,1
    80001788:	06f70463          	beq	a4,a5,800017f0 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    8000178c:	fff00793          	li	a5,-1
    80001790:	03f79793          	slli	a5,a5,0x3f
    80001794:	00978793          	addi	a5,a5,9
    80001798:	0cf70263          	beq	a4,a5,8000185c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
        console_handler();
    } else
    {
        // unexpected trap cause
    }
    8000179c:	04813083          	ld	ra,72(sp)
    800017a0:	04013403          	ld	s0,64(sp)
    800017a4:	03813483          	ld	s1,56(sp)
    800017a8:	03013903          	ld	s2,48(sp)
    800017ac:	05010113          	addi	sp,sp,80
    800017b0:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800017b4:	141027f3          	csrr	a5,sepc
    800017b8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800017bc:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    800017c0:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800017c4:	100027f3          	csrr	a5,sstatus
    800017c8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800017cc:	fc043903          	ld	s2,-64(s0)
        TCB::timeSliceCounter = 0;
    800017d0:	00004797          	auipc	a5,0x4
    800017d4:	f907b783          	ld	a5,-112(a5) # 80005760 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017d8:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	1c8080e7          	jalr	456(ra) # 800019a4 <_ZN3TCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800017e4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800017e8:	14149073          	csrw	sepc,s1
}
    800017ec:	fb1ff06f          	j	8000179c <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        TCB::timeSliceCounter++;
    800017f0:	00004717          	auipc	a4,0x4
    800017f4:	f7073703          	ld	a4,-144(a4) # 80005760 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017f8:	00073783          	ld	a5,0(a4)
    800017fc:	00178793          	addi	a5,a5,1
    80001800:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001804:	00004717          	auipc	a4,0x4
    80001808:	f7473703          	ld	a4,-140(a4) # 80005778 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000180c:	00073703          	ld	a4,0(a4)

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }
    80001810:	02073703          	ld	a4,32(a4)
    80001814:	00e7f863          	bgeu	a5,a4,80001824 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001818:	00200793          	li	a5,2
    8000181c:	1447b073          	csrc	sip,a5
}
    80001820:	f7dff06f          	j	8000179c <_ZN5Riscv20handleSupervisorTrapEv+0x50>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001824:	141027f3          	csrr	a5,sepc
    80001828:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000182c:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001830:	100027f3          	csrr	a5,sstatus
    80001834:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001838:	fd043903          	ld	s2,-48(s0)
            TCB::timeSliceCounter = 0;
    8000183c:	00004797          	auipc	a5,0x4
    80001840:	f247b783          	ld	a5,-220(a5) # 80005760 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001844:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	15c080e7          	jalr	348(ra) # 800019a4 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001850:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001854:	14149073          	csrw	sepc,s1
}
    80001858:	fc1ff06f          	j	80001818 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
        console_handler();
    8000185c:	00002097          	auipc	ra,0x2
    80001860:	778080e7          	jalr	1912(ra) # 80003fd4 <console_handler>
    80001864:	f39ff06f          	j	8000179c <_ZN5Riscv20handleSupervisorTrapEv+0x50>

0000000080001868 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001868:	fe010113          	addi	sp,sp,-32
    8000186c:	00113c23          	sd	ra,24(sp)
    80001870:	00813823          	sd	s0,16(sp)
    80001874:	00913423          	sd	s1,8(sp)
    80001878:	01213023          	sd	s2,0(sp)
    8000187c:	02010413          	addi	s0,sp,32
    80001880:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001884:	03000513          	li	a0,48
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	c88080e7          	jalr	-888(ra) # 80001510 <_Znwm>
    80001890:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001894:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001898:	00090a63          	beqz	s2,800018ac <_ZN3TCB12createThreadEPFvvE+0x44>
    8000189c:	00002537          	lui	a0,0x2
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	c98080e7          	jalr	-872(ra) # 80001538 <_Znam>
    800018a8:	0080006f          	j	800018b0 <_ZN3TCB12createThreadEPFvvE+0x48>
    800018ac:	00000513          	li	a0,0
            finished(false)
    800018b0:	00a4b423          	sd	a0,8(s1)
    800018b4:	00000797          	auipc	a5,0x0
    800018b8:	09878793          	addi	a5,a5,152 # 8000194c <_ZN3TCB13threadWrapperEv>
    800018bc:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800018c0:	02050863          	beqz	a0,800018f0 <_ZN3TCB12createThreadEPFvvE+0x88>
    800018c4:	000027b7          	lui	a5,0x2
    800018c8:	00f507b3          	add	a5,a0,a5
            finished(false)
    800018cc:	00f4bc23          	sd	a5,24(s1)
    800018d0:	00200793          	li	a5,2
    800018d4:	02f4b023          	sd	a5,32(s1)
    800018d8:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    800018dc:	02090c63          	beqz	s2,80001914 <_ZN3TCB12createThreadEPFvvE+0xac>
    800018e0:	00048513          	mv	a0,s1
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	1d0080e7          	jalr	464(ra) # 80001ab4 <_ZN9Scheduler3putEP3TCB>
    800018ec:	0280006f          	j	80001914 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800018f0:	00000793          	li	a5,0
    800018f4:	fd9ff06f          	j	800018cc <_ZN3TCB12createThreadEPFvvE+0x64>
    800018f8:	00050913          	mv	s2,a0
    800018fc:	00048513          	mv	a0,s1
    80001900:	00000097          	auipc	ra,0x0
    80001904:	c60080e7          	jalr	-928(ra) # 80001560 <_ZdlPv>
    80001908:	00090513          	mv	a0,s2
    8000190c:	00005097          	auipc	ra,0x5
    80001910:	fbc080e7          	jalr	-68(ra) # 800068c8 <_Unwind_Resume>
}
    80001914:	00048513          	mv	a0,s1
    80001918:	01813083          	ld	ra,24(sp)
    8000191c:	01013403          	ld	s0,16(sp)
    80001920:	00813483          	ld	s1,8(sp)
    80001924:	00013903          	ld	s2,0(sp)
    80001928:	02010113          	addi	sp,sp,32
    8000192c:	00008067          	ret

0000000080001930 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00813423          	sd	s0,8(sp)
    80001938:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    8000193c:	00000073          	ecall
}
    80001940:	00813403          	ld	s0,8(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    8000194c:	fe010113          	addi	sp,sp,-32
    80001950:	00113c23          	sd	ra,24(sp)
    80001954:	00813823          	sd	s0,16(sp)
    80001958:	00913423          	sd	s1,8(sp)
    8000195c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001960:	00000097          	auipc	ra,0x0
    80001964:	dcc080e7          	jalr	-564(ra) # 8000172c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001968:	00004497          	auipc	s1,0x4
    8000196c:	e7848493          	addi	s1,s1,-392 # 800057e0 <_ZN3TCB7runningE>
    80001970:	0004b783          	ld	a5,0(s1)
    80001974:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001978:	000780e7          	jalr	a5
    running->setFinished(true);
    8000197c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001980:	00100713          	li	a4,1
    80001984:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	fa8080e7          	jalr	-88(ra) # 80001930 <_ZN3TCB5yieldEv>
}
    80001990:	01813083          	ld	ra,24(sp)
    80001994:	01013403          	ld	s0,16(sp)
    80001998:	00813483          	ld	s1,8(sp)
    8000199c:	02010113          	addi	sp,sp,32
    800019a0:	00008067          	ret

00000000800019a4 <_ZN3TCB8dispatchEv>:
{
    800019a4:	fe010113          	addi	sp,sp,-32
    800019a8:	00113c23          	sd	ra,24(sp)
    800019ac:	00813823          	sd	s0,16(sp)
    800019b0:	00913423          	sd	s1,8(sp)
    800019b4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800019b8:	00004497          	auipc	s1,0x4
    800019bc:	e284b483          	ld	s1,-472(s1) # 800057e0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800019c0:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800019c4:	02078c63          	beqz	a5,800019fc <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	084080e7          	jalr	132(ra) # 80001a4c <_ZN9Scheduler3getEv>
    800019d0:	00004797          	auipc	a5,0x4
    800019d4:	e0a7b823          	sd	a0,-496(a5) # 800057e0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800019d8:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    800019dc:	01048513          	addi	a0,s1,16
    800019e0:	fffff097          	auipc	ra,0xfffff
    800019e4:	730080e7          	jalr	1840(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800019e8:	01813083          	ld	ra,24(sp)
    800019ec:	01013403          	ld	s0,16(sp)
    800019f0:	00813483          	ld	s1,8(sp)
    800019f4:	02010113          	addi	sp,sp,32
    800019f8:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800019fc:	00048513          	mv	a0,s1
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	0b4080e7          	jalr	180(ra) # 80001ab4 <_ZN9Scheduler3putEP3TCB>
    80001a08:	fc1ff06f          	j	800019c8 <_ZN3TCB8dispatchEv+0x24>

0000000080001a0c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00813423          	sd	s0,8(sp)
    80001a14:	01010413          	addi	s0,sp,16
    80001a18:	00100793          	li	a5,1
    80001a1c:	00f50863          	beq	a0,a5,80001a2c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001a20:	00813403          	ld	s0,8(sp)
    80001a24:	01010113          	addi	sp,sp,16
    80001a28:	00008067          	ret
    80001a2c:	000107b7          	lui	a5,0x10
    80001a30:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001a34:	fef596e3          	bne	a1,a5,80001a20 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001a38:	00004797          	auipc	a5,0x4
    80001a3c:	db878793          	addi	a5,a5,-584 # 800057f0 <_ZN9Scheduler16readyThreadQueueE>
    80001a40:	0007b023          	sd	zero,0(a5)
    80001a44:	0007b423          	sd	zero,8(a5)
    80001a48:	fd9ff06f          	j	80001a20 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001a4c <_ZN9Scheduler3getEv>:
{
    80001a4c:	fe010113          	addi	sp,sp,-32
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	00813823          	sd	s0,16(sp)
    80001a58:	00913423          	sd	s1,8(sp)
    80001a5c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001a60:	00004517          	auipc	a0,0x4
    80001a64:	d9053503          	ld	a0,-624(a0) # 800057f0 <_ZN9Scheduler16readyThreadQueueE>
    80001a68:	04050263          	beqz	a0,80001aac <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001a6c:	00853783          	ld	a5,8(a0)
    80001a70:	00004717          	auipc	a4,0x4
    80001a74:	d8f73023          	sd	a5,-640(a4) # 800057f0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001a78:	02078463          	beqz	a5,80001aa0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001a7c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	ae0080e7          	jalr	-1312(ra) # 80001560 <_ZdlPv>
}
    80001a88:	00048513          	mv	a0,s1
    80001a8c:	01813083          	ld	ra,24(sp)
    80001a90:	01013403          	ld	s0,16(sp)
    80001a94:	00813483          	ld	s1,8(sp)
    80001a98:	02010113          	addi	sp,sp,32
    80001a9c:	00008067          	ret
        if (!head) { tail = 0; }
    80001aa0:	00004797          	auipc	a5,0x4
    80001aa4:	d407bc23          	sd	zero,-680(a5) # 800057f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001aa8:	fd5ff06f          	j	80001a7c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001aac:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001ab0:	fd9ff06f          	j	80001a88 <_ZN9Scheduler3getEv+0x3c>

0000000080001ab4 <_ZN9Scheduler3putEP3TCB>:
{
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	02010413          	addi	s0,sp,32
    80001ac8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001acc:	01000513          	li	a0,16
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	a40080e7          	jalr	-1472(ra) # 80001510 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ad8:	00953023          	sd	s1,0(a0)
    80001adc:	00053423          	sd	zero,8(a0)
        if (tail)
    80001ae0:	00004797          	auipc	a5,0x4
    80001ae4:	d187b783          	ld	a5,-744(a5) # 800057f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ae8:	02078263          	beqz	a5,80001b0c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001aec:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001af0:	00004797          	auipc	a5,0x4
    80001af4:	d0a7b423          	sd	a0,-760(a5) # 800057f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001af8:	01813083          	ld	ra,24(sp)
    80001afc:	01013403          	ld	s0,16(sp)
    80001b00:	00813483          	ld	s1,8(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret
            head = tail = elem;
    80001b0c:	00004797          	auipc	a5,0x4
    80001b10:	ce478793          	addi	a5,a5,-796 # 800057f0 <_ZN9Scheduler16readyThreadQueueE>
    80001b14:	00a7b423          	sd	a0,8(a5)
    80001b18:	00a7b023          	sd	a0,0(a5)
    80001b1c:	fddff06f          	j	80001af8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001b20 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00113423          	sd	ra,8(sp)
    80001b28:	00813023          	sd	s0,0(sp)
    80001b2c:	01010413          	addi	s0,sp,16
    80001b30:	000105b7          	lui	a1,0x10
    80001b34:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001b38:	00100513          	li	a0,1
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	ed0080e7          	jalr	-304(ra) # 80001a0c <_Z41__static_initialization_and_destruction_0ii>
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret

0000000080001b54 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001b54:	fd010113          	addi	sp,sp,-48
    80001b58:	02113423          	sd	ra,40(sp)
    80001b5c:	02813023          	sd	s0,32(sp)
    80001b60:	00913c23          	sd	s1,24(sp)
    80001b64:	01213823          	sd	s2,16(sp)
    80001b68:	03010413          	addi	s0,sp,48
    80001b6c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b70:	100027f3          	csrr	a5,sstatus
    80001b74:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001b78:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001b7c:	00200793          	li	a5,2
    80001b80:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001b84:	0004c503          	lbu	a0,0(s1)
    80001b88:	00050a63          	beqz	a0,80001b9c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001b8c:	00002097          	auipc	ra,0x2
    80001b90:	3d4080e7          	jalr	980(ra) # 80003f60 <__putc>
        string++;
    80001b94:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001b98:	fedff06f          	j	80001b84 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001b9c:	0009091b          	sext.w	s2,s2
    80001ba0:	00297913          	andi	s2,s2,2
    80001ba4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ba8:	10092073          	csrs	sstatus,s2
}
    80001bac:	02813083          	ld	ra,40(sp)
    80001bb0:	02013403          	ld	s0,32(sp)
    80001bb4:	01813483          	ld	s1,24(sp)
    80001bb8:	01013903          	ld	s2,16(sp)
    80001bbc:	03010113          	addi	sp,sp,48
    80001bc0:	00008067          	ret

0000000080001bc4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001bc4:	fc010113          	addi	sp,sp,-64
    80001bc8:	02113c23          	sd	ra,56(sp)
    80001bcc:	02813823          	sd	s0,48(sp)
    80001bd0:	02913423          	sd	s1,40(sp)
    80001bd4:	03213023          	sd	s2,32(sp)
    80001bd8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001bdc:	100027f3          	csrr	a5,sstatus
    80001be0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001be4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001be8:	00200793          	li	a5,2
    80001bec:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001bf0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001bf4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001bf8:	00a00613          	li	a2,10
    80001bfc:	02c5773b          	remuw	a4,a0,a2
    80001c00:	02071693          	slli	a3,a4,0x20
    80001c04:	0206d693          	srli	a3,a3,0x20
    80001c08:	00003717          	auipc	a4,0x3
    80001c0c:	4d070713          	addi	a4,a4,1232 # 800050d8 <_ZZ12printIntegermE6digits>
    80001c10:	00d70733          	add	a4,a4,a3
    80001c14:	00074703          	lbu	a4,0(a4)
    80001c18:	fe040693          	addi	a3,s0,-32
    80001c1c:	009687b3          	add	a5,a3,s1
    80001c20:	0014849b          	addiw	s1,s1,1
    80001c24:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001c28:	0005071b          	sext.w	a4,a0
    80001c2c:	02c5553b          	divuw	a0,a0,a2
    80001c30:	00900793          	li	a5,9
    80001c34:	fce7e2e3          	bltu	a5,a4,80001bf8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001c38:	fff4849b          	addiw	s1,s1,-1
    80001c3c:	0004ce63          	bltz	s1,80001c58 <_Z12printIntegerm+0x94>
    80001c40:	fe040793          	addi	a5,s0,-32
    80001c44:	009787b3          	add	a5,a5,s1
    80001c48:	ff07c503          	lbu	a0,-16(a5)
    80001c4c:	00002097          	auipc	ra,0x2
    80001c50:	314080e7          	jalr	788(ra) # 80003f60 <__putc>
    80001c54:	fe5ff06f          	j	80001c38 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001c58:	0009091b          	sext.w	s2,s2
    80001c5c:	00297913          	andi	s2,s2,2
    80001c60:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c64:	10092073          	csrs	sstatus,s2
    80001c68:	03813083          	ld	ra,56(sp)
    80001c6c:	03013403          	ld	s0,48(sp)
    80001c70:	02813483          	ld	s1,40(sp)
    80001c74:	02013903          	ld	s2,32(sp)
    80001c78:	04010113          	addi	sp,sp,64
    80001c7c:	00008067          	ret

0000000080001c80 <start>:
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00813423          	sd	s0,8(sp)
    80001c88:	01010413          	addi	s0,sp,16
    80001c8c:	300027f3          	csrr	a5,mstatus
    80001c90:	ffffe737          	lui	a4,0xffffe
    80001c94:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d8f>
    80001c98:	00e7f7b3          	and	a5,a5,a4
    80001c9c:	00001737          	lui	a4,0x1
    80001ca0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001ca4:	00e7e7b3          	or	a5,a5,a4
    80001ca8:	30079073          	csrw	mstatus,a5
    80001cac:	00000797          	auipc	a5,0x0
    80001cb0:	16078793          	addi	a5,a5,352 # 80001e0c <system_main>
    80001cb4:	34179073          	csrw	mepc,a5
    80001cb8:	00000793          	li	a5,0
    80001cbc:	18079073          	csrw	satp,a5
    80001cc0:	000107b7          	lui	a5,0x10
    80001cc4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001cc8:	30279073          	csrw	medeleg,a5
    80001ccc:	30379073          	csrw	mideleg,a5
    80001cd0:	104027f3          	csrr	a5,sie
    80001cd4:	2227e793          	ori	a5,a5,546
    80001cd8:	10479073          	csrw	sie,a5
    80001cdc:	fff00793          	li	a5,-1
    80001ce0:	00a7d793          	srli	a5,a5,0xa
    80001ce4:	3b079073          	csrw	pmpaddr0,a5
    80001ce8:	00f00793          	li	a5,15
    80001cec:	3a079073          	csrw	pmpcfg0,a5
    80001cf0:	f14027f3          	csrr	a5,mhartid
    80001cf4:	0200c737          	lui	a4,0x200c
    80001cf8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001cfc:	0007869b          	sext.w	a3,a5
    80001d00:	00269713          	slli	a4,a3,0x2
    80001d04:	000f4637          	lui	a2,0xf4
    80001d08:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d0c:	00d70733          	add	a4,a4,a3
    80001d10:	0037979b          	slliw	a5,a5,0x3
    80001d14:	020046b7          	lui	a3,0x2004
    80001d18:	00d787b3          	add	a5,a5,a3
    80001d1c:	00c585b3          	add	a1,a1,a2
    80001d20:	00371693          	slli	a3,a4,0x3
    80001d24:	00004717          	auipc	a4,0x4
    80001d28:	adc70713          	addi	a4,a4,-1316 # 80005800 <timer_scratch>
    80001d2c:	00b7b023          	sd	a1,0(a5)
    80001d30:	00d70733          	add	a4,a4,a3
    80001d34:	00f73c23          	sd	a5,24(a4)
    80001d38:	02c73023          	sd	a2,32(a4)
    80001d3c:	34071073          	csrw	mscratch,a4
    80001d40:	00000797          	auipc	a5,0x0
    80001d44:	6e078793          	addi	a5,a5,1760 # 80002420 <timervec>
    80001d48:	30579073          	csrw	mtvec,a5
    80001d4c:	300027f3          	csrr	a5,mstatus
    80001d50:	0087e793          	ori	a5,a5,8
    80001d54:	30079073          	csrw	mstatus,a5
    80001d58:	304027f3          	csrr	a5,mie
    80001d5c:	0807e793          	ori	a5,a5,128
    80001d60:	30479073          	csrw	mie,a5
    80001d64:	f14027f3          	csrr	a5,mhartid
    80001d68:	0007879b          	sext.w	a5,a5
    80001d6c:	00078213          	mv	tp,a5
    80001d70:	30200073          	mret
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <timerinit>:
    80001d80:	ff010113          	addi	sp,sp,-16
    80001d84:	00813423          	sd	s0,8(sp)
    80001d88:	01010413          	addi	s0,sp,16
    80001d8c:	f14027f3          	csrr	a5,mhartid
    80001d90:	0200c737          	lui	a4,0x200c
    80001d94:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001d98:	0007869b          	sext.w	a3,a5
    80001d9c:	00269713          	slli	a4,a3,0x2
    80001da0:	000f4637          	lui	a2,0xf4
    80001da4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001da8:	00d70733          	add	a4,a4,a3
    80001dac:	0037979b          	slliw	a5,a5,0x3
    80001db0:	020046b7          	lui	a3,0x2004
    80001db4:	00d787b3          	add	a5,a5,a3
    80001db8:	00c585b3          	add	a1,a1,a2
    80001dbc:	00371693          	slli	a3,a4,0x3
    80001dc0:	00004717          	auipc	a4,0x4
    80001dc4:	a4070713          	addi	a4,a4,-1472 # 80005800 <timer_scratch>
    80001dc8:	00b7b023          	sd	a1,0(a5)
    80001dcc:	00d70733          	add	a4,a4,a3
    80001dd0:	00f73c23          	sd	a5,24(a4)
    80001dd4:	02c73023          	sd	a2,32(a4)
    80001dd8:	34071073          	csrw	mscratch,a4
    80001ddc:	00000797          	auipc	a5,0x0
    80001de0:	64478793          	addi	a5,a5,1604 # 80002420 <timervec>
    80001de4:	30579073          	csrw	mtvec,a5
    80001de8:	300027f3          	csrr	a5,mstatus
    80001dec:	0087e793          	ori	a5,a5,8
    80001df0:	30079073          	csrw	mstatus,a5
    80001df4:	304027f3          	csrr	a5,mie
    80001df8:	0807e793          	ori	a5,a5,128
    80001dfc:	30479073          	csrw	mie,a5
    80001e00:	00813403          	ld	s0,8(sp)
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret

0000000080001e0c <system_main>:
    80001e0c:	fe010113          	addi	sp,sp,-32
    80001e10:	00813823          	sd	s0,16(sp)
    80001e14:	00913423          	sd	s1,8(sp)
    80001e18:	00113c23          	sd	ra,24(sp)
    80001e1c:	02010413          	addi	s0,sp,32
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	0c4080e7          	jalr	196(ra) # 80001ee4 <cpuid>
    80001e28:	00004497          	auipc	s1,0x4
    80001e2c:	98848493          	addi	s1,s1,-1656 # 800057b0 <started>
    80001e30:	02050263          	beqz	a0,80001e54 <system_main+0x48>
    80001e34:	0004a783          	lw	a5,0(s1)
    80001e38:	0007879b          	sext.w	a5,a5
    80001e3c:	fe078ce3          	beqz	a5,80001e34 <system_main+0x28>
    80001e40:	0ff0000f          	fence
    80001e44:	00003517          	auipc	a0,0x3
    80001e48:	2d450513          	addi	a0,a0,724 # 80005118 <_ZZ12printIntegermE6digits+0x40>
    80001e4c:	00001097          	auipc	ra,0x1
    80001e50:	a70080e7          	jalr	-1424(ra) # 800028bc <panic>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	9c4080e7          	jalr	-1596(ra) # 80002818 <consoleinit>
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	150080e7          	jalr	336(ra) # 80002fac <printfinit>
    80001e64:	00003517          	auipc	a0,0x3
    80001e68:	26c50513          	addi	a0,a0,620 # 800050d0 <kvmincrease+0x1050>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	aac080e7          	jalr	-1364(ra) # 80002918 <__printf>
    80001e74:	00003517          	auipc	a0,0x3
    80001e78:	27450513          	addi	a0,a0,628 # 800050e8 <_ZZ12printIntegermE6digits+0x10>
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	a9c080e7          	jalr	-1380(ra) # 80002918 <__printf>
    80001e84:	00003517          	auipc	a0,0x3
    80001e88:	24c50513          	addi	a0,a0,588 # 800050d0 <kvmincrease+0x1050>
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	a8c080e7          	jalr	-1396(ra) # 80002918 <__printf>
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	4a4080e7          	jalr	1188(ra) # 80003338 <kinit>
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	148080e7          	jalr	328(ra) # 80001fe4 <trapinit>
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	16c080e7          	jalr	364(ra) # 80002010 <trapinithart>
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	5b4080e7          	jalr	1460(ra) # 80002460 <plicinit>
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	5d4080e7          	jalr	1492(ra) # 80002488 <plicinithart>
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	078080e7          	jalr	120(ra) # 80001f34 <userinit>
    80001ec4:	0ff0000f          	fence
    80001ec8:	00100793          	li	a5,1
    80001ecc:	00003517          	auipc	a0,0x3
    80001ed0:	23450513          	addi	a0,a0,564 # 80005100 <_ZZ12printIntegermE6digits+0x28>
    80001ed4:	00f4a023          	sw	a5,0(s1)
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	a40080e7          	jalr	-1472(ra) # 80002918 <__printf>
    80001ee0:	0000006f          	j	80001ee0 <system_main+0xd4>

0000000080001ee4 <cpuid>:
    80001ee4:	ff010113          	addi	sp,sp,-16
    80001ee8:	00813423          	sd	s0,8(sp)
    80001eec:	01010413          	addi	s0,sp,16
    80001ef0:	00020513          	mv	a0,tp
    80001ef4:	00813403          	ld	s0,8(sp)
    80001ef8:	0005051b          	sext.w	a0,a0
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <mycpu>:
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813423          	sd	s0,8(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    80001f10:	00020793          	mv	a5,tp
    80001f14:	00813403          	ld	s0,8(sp)
    80001f18:	0007879b          	sext.w	a5,a5
    80001f1c:	00779793          	slli	a5,a5,0x7
    80001f20:	00005517          	auipc	a0,0x5
    80001f24:	91050513          	addi	a0,a0,-1776 # 80006830 <cpus>
    80001f28:	00f50533          	add	a0,a0,a5
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <userinit>:
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00813423          	sd	s0,8(sp)
    80001f3c:	01010413          	addi	s0,sp,16
    80001f40:	00813403          	ld	s0,8(sp)
    80001f44:	01010113          	addi	sp,sp,16
    80001f48:	fffff317          	auipc	t1,0xfffff
    80001f4c:	66830067          	jr	1640(t1) # 800015b0 <main>

0000000080001f50 <either_copyout>:
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    80001f60:	02051663          	bnez	a0,80001f8c <either_copyout+0x3c>
    80001f64:	00058513          	mv	a0,a1
    80001f68:	00060593          	mv	a1,a2
    80001f6c:	0006861b          	sext.w	a2,a3
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	c54080e7          	jalr	-940(ra) # 80003bc4 <__memmove>
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	00000513          	li	a0,0
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret
    80001f8c:	00003517          	auipc	a0,0x3
    80001f90:	1b450513          	addi	a0,a0,436 # 80005140 <_ZZ12printIntegermE6digits+0x68>
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	928080e7          	jalr	-1752(ra) # 800028bc <panic>

0000000080001f9c <either_copyin>:
    80001f9c:	ff010113          	addi	sp,sp,-16
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	00113423          	sd	ra,8(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    80001fac:	02059463          	bnez	a1,80001fd4 <either_copyin+0x38>
    80001fb0:	00060593          	mv	a1,a2
    80001fb4:	0006861b          	sext.w	a2,a3
    80001fb8:	00002097          	auipc	ra,0x2
    80001fbc:	c0c080e7          	jalr	-1012(ra) # 80003bc4 <__memmove>
    80001fc0:	00813083          	ld	ra,8(sp)
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	00000513          	li	a0,0
    80001fcc:	01010113          	addi	sp,sp,16
    80001fd0:	00008067          	ret
    80001fd4:	00003517          	auipc	a0,0x3
    80001fd8:	19450513          	addi	a0,a0,404 # 80005168 <_ZZ12printIntegermE6digits+0x90>
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	8e0080e7          	jalr	-1824(ra) # 800028bc <panic>

0000000080001fe4 <trapinit>:
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00813423          	sd	s0,8(sp)
    80001fec:	01010413          	addi	s0,sp,16
    80001ff0:	00813403          	ld	s0,8(sp)
    80001ff4:	00003597          	auipc	a1,0x3
    80001ff8:	19c58593          	addi	a1,a1,412 # 80005190 <_ZZ12printIntegermE6digits+0xb8>
    80001ffc:	00005517          	auipc	a0,0x5
    80002000:	8b450513          	addi	a0,a0,-1868 # 800068b0 <tickslock>
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00001317          	auipc	t1,0x1
    8000200c:	5c030067          	jr	1472(t1) # 800035c8 <initlock>

0000000080002010 <trapinithart>:
    80002010:	ff010113          	addi	sp,sp,-16
    80002014:	00813423          	sd	s0,8(sp)
    80002018:	01010413          	addi	s0,sp,16
    8000201c:	00000797          	auipc	a5,0x0
    80002020:	2f478793          	addi	a5,a5,756 # 80002310 <kernelvec>
    80002024:	10579073          	csrw	stvec,a5
    80002028:	00813403          	ld	s0,8(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <usertrap>:
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00813423          	sd	s0,8(sp)
    8000203c:	01010413          	addi	s0,sp,16
    80002040:	00813403          	ld	s0,8(sp)
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <usertrapret>:
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    80002058:	00813403          	ld	s0,8(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret

0000000080002064 <kerneltrap>:
    80002064:	fe010113          	addi	sp,sp,-32
    80002068:	00813823          	sd	s0,16(sp)
    8000206c:	00113c23          	sd	ra,24(sp)
    80002070:	00913423          	sd	s1,8(sp)
    80002074:	02010413          	addi	s0,sp,32
    80002078:	142025f3          	csrr	a1,scause
    8000207c:	100027f3          	csrr	a5,sstatus
    80002080:	0027f793          	andi	a5,a5,2
    80002084:	10079c63          	bnez	a5,8000219c <kerneltrap+0x138>
    80002088:	142027f3          	csrr	a5,scause
    8000208c:	0207ce63          	bltz	a5,800020c8 <kerneltrap+0x64>
    80002090:	00003517          	auipc	a0,0x3
    80002094:	14850513          	addi	a0,a0,328 # 800051d8 <_ZZ12printIntegermE6digits+0x100>
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	880080e7          	jalr	-1920(ra) # 80002918 <__printf>
    800020a0:	141025f3          	csrr	a1,sepc
    800020a4:	14302673          	csrr	a2,stval
    800020a8:	00003517          	auipc	a0,0x3
    800020ac:	14050513          	addi	a0,a0,320 # 800051e8 <_ZZ12printIntegermE6digits+0x110>
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	868080e7          	jalr	-1944(ra) # 80002918 <__printf>
    800020b8:	00003517          	auipc	a0,0x3
    800020bc:	14850513          	addi	a0,a0,328 # 80005200 <_ZZ12printIntegermE6digits+0x128>
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	7fc080e7          	jalr	2044(ra) # 800028bc <panic>
    800020c8:	0ff7f713          	andi	a4,a5,255
    800020cc:	00900693          	li	a3,9
    800020d0:	04d70063          	beq	a4,a3,80002110 <kerneltrap+0xac>
    800020d4:	fff00713          	li	a4,-1
    800020d8:	03f71713          	slli	a4,a4,0x3f
    800020dc:	00170713          	addi	a4,a4,1
    800020e0:	fae798e3          	bne	a5,a4,80002090 <kerneltrap+0x2c>
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	e00080e7          	jalr	-512(ra) # 80001ee4 <cpuid>
    800020ec:	06050663          	beqz	a0,80002158 <kerneltrap+0xf4>
    800020f0:	144027f3          	csrr	a5,sip
    800020f4:	ffd7f793          	andi	a5,a5,-3
    800020f8:	14479073          	csrw	sip,a5
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	01013403          	ld	s0,16(sp)
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	02010113          	addi	sp,sp,32
    8000210c:	00008067          	ret
    80002110:	00000097          	auipc	ra,0x0
    80002114:	3c4080e7          	jalr	964(ra) # 800024d4 <plic_claim>
    80002118:	00a00793          	li	a5,10
    8000211c:	00050493          	mv	s1,a0
    80002120:	06f50863          	beq	a0,a5,80002190 <kerneltrap+0x12c>
    80002124:	fc050ce3          	beqz	a0,800020fc <kerneltrap+0x98>
    80002128:	00050593          	mv	a1,a0
    8000212c:	00003517          	auipc	a0,0x3
    80002130:	08c50513          	addi	a0,a0,140 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80002134:	00000097          	auipc	ra,0x0
    80002138:	7e4080e7          	jalr	2020(ra) # 80002918 <__printf>
    8000213c:	01013403          	ld	s0,16(sp)
    80002140:	01813083          	ld	ra,24(sp)
    80002144:	00048513          	mv	a0,s1
    80002148:	00813483          	ld	s1,8(sp)
    8000214c:	02010113          	addi	sp,sp,32
    80002150:	00000317          	auipc	t1,0x0
    80002154:	3bc30067          	jr	956(t1) # 8000250c <plic_complete>
    80002158:	00004517          	auipc	a0,0x4
    8000215c:	75850513          	addi	a0,a0,1880 # 800068b0 <tickslock>
    80002160:	00001097          	auipc	ra,0x1
    80002164:	48c080e7          	jalr	1164(ra) # 800035ec <acquire>
    80002168:	00003717          	auipc	a4,0x3
    8000216c:	64c70713          	addi	a4,a4,1612 # 800057b4 <ticks>
    80002170:	00072783          	lw	a5,0(a4)
    80002174:	00004517          	auipc	a0,0x4
    80002178:	73c50513          	addi	a0,a0,1852 # 800068b0 <tickslock>
    8000217c:	0017879b          	addiw	a5,a5,1
    80002180:	00f72023          	sw	a5,0(a4)
    80002184:	00001097          	auipc	ra,0x1
    80002188:	534080e7          	jalr	1332(ra) # 800036b8 <release>
    8000218c:	f65ff06f          	j	800020f0 <kerneltrap+0x8c>
    80002190:	00001097          	auipc	ra,0x1
    80002194:	090080e7          	jalr	144(ra) # 80003220 <uartintr>
    80002198:	fa5ff06f          	j	8000213c <kerneltrap+0xd8>
    8000219c:	00003517          	auipc	a0,0x3
    800021a0:	ffc50513          	addi	a0,a0,-4 # 80005198 <_ZZ12printIntegermE6digits+0xc0>
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	718080e7          	jalr	1816(ra) # 800028bc <panic>

00000000800021ac <clockintr>:
    800021ac:	fe010113          	addi	sp,sp,-32
    800021b0:	00813823          	sd	s0,16(sp)
    800021b4:	00913423          	sd	s1,8(sp)
    800021b8:	00113c23          	sd	ra,24(sp)
    800021bc:	02010413          	addi	s0,sp,32
    800021c0:	00004497          	auipc	s1,0x4
    800021c4:	6f048493          	addi	s1,s1,1776 # 800068b0 <tickslock>
    800021c8:	00048513          	mv	a0,s1
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	420080e7          	jalr	1056(ra) # 800035ec <acquire>
    800021d4:	00003717          	auipc	a4,0x3
    800021d8:	5e070713          	addi	a4,a4,1504 # 800057b4 <ticks>
    800021dc:	00072783          	lw	a5,0(a4)
    800021e0:	01013403          	ld	s0,16(sp)
    800021e4:	01813083          	ld	ra,24(sp)
    800021e8:	00048513          	mv	a0,s1
    800021ec:	0017879b          	addiw	a5,a5,1
    800021f0:	00813483          	ld	s1,8(sp)
    800021f4:	00f72023          	sw	a5,0(a4)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00001317          	auipc	t1,0x1
    80002200:	4bc30067          	jr	1212(t1) # 800036b8 <release>

0000000080002204 <devintr>:
    80002204:	142027f3          	csrr	a5,scause
    80002208:	00000513          	li	a0,0
    8000220c:	0007c463          	bltz	a5,80002214 <devintr+0x10>
    80002210:	00008067          	ret
    80002214:	fe010113          	addi	sp,sp,-32
    80002218:	00813823          	sd	s0,16(sp)
    8000221c:	00113c23          	sd	ra,24(sp)
    80002220:	00913423          	sd	s1,8(sp)
    80002224:	02010413          	addi	s0,sp,32
    80002228:	0ff7f713          	andi	a4,a5,255
    8000222c:	00900693          	li	a3,9
    80002230:	04d70c63          	beq	a4,a3,80002288 <devintr+0x84>
    80002234:	fff00713          	li	a4,-1
    80002238:	03f71713          	slli	a4,a4,0x3f
    8000223c:	00170713          	addi	a4,a4,1
    80002240:	00e78c63          	beq	a5,a4,80002258 <devintr+0x54>
    80002244:	01813083          	ld	ra,24(sp)
    80002248:	01013403          	ld	s0,16(sp)
    8000224c:	00813483          	ld	s1,8(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	c8c080e7          	jalr	-884(ra) # 80001ee4 <cpuid>
    80002260:	06050663          	beqz	a0,800022cc <devintr+0xc8>
    80002264:	144027f3          	csrr	a5,sip
    80002268:	ffd7f793          	andi	a5,a5,-3
    8000226c:	14479073          	csrw	sip,a5
    80002270:	01813083          	ld	ra,24(sp)
    80002274:	01013403          	ld	s0,16(sp)
    80002278:	00813483          	ld	s1,8(sp)
    8000227c:	00200513          	li	a0,2
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00008067          	ret
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	24c080e7          	jalr	588(ra) # 800024d4 <plic_claim>
    80002290:	00a00793          	li	a5,10
    80002294:	00050493          	mv	s1,a0
    80002298:	06f50663          	beq	a0,a5,80002304 <devintr+0x100>
    8000229c:	00100513          	li	a0,1
    800022a0:	fa0482e3          	beqz	s1,80002244 <devintr+0x40>
    800022a4:	00048593          	mv	a1,s1
    800022a8:	00003517          	auipc	a0,0x3
    800022ac:	f1050513          	addi	a0,a0,-240 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	668080e7          	jalr	1640(ra) # 80002918 <__printf>
    800022b8:	00048513          	mv	a0,s1
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	250080e7          	jalr	592(ra) # 8000250c <plic_complete>
    800022c4:	00100513          	li	a0,1
    800022c8:	f7dff06f          	j	80002244 <devintr+0x40>
    800022cc:	00004517          	auipc	a0,0x4
    800022d0:	5e450513          	addi	a0,a0,1508 # 800068b0 <tickslock>
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	318080e7          	jalr	792(ra) # 800035ec <acquire>
    800022dc:	00003717          	auipc	a4,0x3
    800022e0:	4d870713          	addi	a4,a4,1240 # 800057b4 <ticks>
    800022e4:	00072783          	lw	a5,0(a4)
    800022e8:	00004517          	auipc	a0,0x4
    800022ec:	5c850513          	addi	a0,a0,1480 # 800068b0 <tickslock>
    800022f0:	0017879b          	addiw	a5,a5,1
    800022f4:	00f72023          	sw	a5,0(a4)
    800022f8:	00001097          	auipc	ra,0x1
    800022fc:	3c0080e7          	jalr	960(ra) # 800036b8 <release>
    80002300:	f65ff06f          	j	80002264 <devintr+0x60>
    80002304:	00001097          	auipc	ra,0x1
    80002308:	f1c080e7          	jalr	-228(ra) # 80003220 <uartintr>
    8000230c:	fadff06f          	j	800022b8 <devintr+0xb4>

0000000080002310 <kernelvec>:
    80002310:	f0010113          	addi	sp,sp,-256
    80002314:	00113023          	sd	ra,0(sp)
    80002318:	00213423          	sd	sp,8(sp)
    8000231c:	00313823          	sd	gp,16(sp)
    80002320:	00413c23          	sd	tp,24(sp)
    80002324:	02513023          	sd	t0,32(sp)
    80002328:	02613423          	sd	t1,40(sp)
    8000232c:	02713823          	sd	t2,48(sp)
    80002330:	02813c23          	sd	s0,56(sp)
    80002334:	04913023          	sd	s1,64(sp)
    80002338:	04a13423          	sd	a0,72(sp)
    8000233c:	04b13823          	sd	a1,80(sp)
    80002340:	04c13c23          	sd	a2,88(sp)
    80002344:	06d13023          	sd	a3,96(sp)
    80002348:	06e13423          	sd	a4,104(sp)
    8000234c:	06f13823          	sd	a5,112(sp)
    80002350:	07013c23          	sd	a6,120(sp)
    80002354:	09113023          	sd	a7,128(sp)
    80002358:	09213423          	sd	s2,136(sp)
    8000235c:	09313823          	sd	s3,144(sp)
    80002360:	09413c23          	sd	s4,152(sp)
    80002364:	0b513023          	sd	s5,160(sp)
    80002368:	0b613423          	sd	s6,168(sp)
    8000236c:	0b713823          	sd	s7,176(sp)
    80002370:	0b813c23          	sd	s8,184(sp)
    80002374:	0d913023          	sd	s9,192(sp)
    80002378:	0da13423          	sd	s10,200(sp)
    8000237c:	0db13823          	sd	s11,208(sp)
    80002380:	0dc13c23          	sd	t3,216(sp)
    80002384:	0fd13023          	sd	t4,224(sp)
    80002388:	0fe13423          	sd	t5,232(sp)
    8000238c:	0ff13823          	sd	t6,240(sp)
    80002390:	cd5ff0ef          	jal	ra,80002064 <kerneltrap>
    80002394:	00013083          	ld	ra,0(sp)
    80002398:	00813103          	ld	sp,8(sp)
    8000239c:	01013183          	ld	gp,16(sp)
    800023a0:	02013283          	ld	t0,32(sp)
    800023a4:	02813303          	ld	t1,40(sp)
    800023a8:	03013383          	ld	t2,48(sp)
    800023ac:	03813403          	ld	s0,56(sp)
    800023b0:	04013483          	ld	s1,64(sp)
    800023b4:	04813503          	ld	a0,72(sp)
    800023b8:	05013583          	ld	a1,80(sp)
    800023bc:	05813603          	ld	a2,88(sp)
    800023c0:	06013683          	ld	a3,96(sp)
    800023c4:	06813703          	ld	a4,104(sp)
    800023c8:	07013783          	ld	a5,112(sp)
    800023cc:	07813803          	ld	a6,120(sp)
    800023d0:	08013883          	ld	a7,128(sp)
    800023d4:	08813903          	ld	s2,136(sp)
    800023d8:	09013983          	ld	s3,144(sp)
    800023dc:	09813a03          	ld	s4,152(sp)
    800023e0:	0a013a83          	ld	s5,160(sp)
    800023e4:	0a813b03          	ld	s6,168(sp)
    800023e8:	0b013b83          	ld	s7,176(sp)
    800023ec:	0b813c03          	ld	s8,184(sp)
    800023f0:	0c013c83          	ld	s9,192(sp)
    800023f4:	0c813d03          	ld	s10,200(sp)
    800023f8:	0d013d83          	ld	s11,208(sp)
    800023fc:	0d813e03          	ld	t3,216(sp)
    80002400:	0e013e83          	ld	t4,224(sp)
    80002404:	0e813f03          	ld	t5,232(sp)
    80002408:	0f013f83          	ld	t6,240(sp)
    8000240c:	10010113          	addi	sp,sp,256
    80002410:	10200073          	sret
    80002414:	00000013          	nop
    80002418:	00000013          	nop
    8000241c:	00000013          	nop

0000000080002420 <timervec>:
    80002420:	34051573          	csrrw	a0,mscratch,a0
    80002424:	00b53023          	sd	a1,0(a0)
    80002428:	00c53423          	sd	a2,8(a0)
    8000242c:	00d53823          	sd	a3,16(a0)
    80002430:	01853583          	ld	a1,24(a0)
    80002434:	02053603          	ld	a2,32(a0)
    80002438:	0005b683          	ld	a3,0(a1)
    8000243c:	00c686b3          	add	a3,a3,a2
    80002440:	00d5b023          	sd	a3,0(a1)
    80002444:	00200593          	li	a1,2
    80002448:	14459073          	csrw	sip,a1
    8000244c:	01053683          	ld	a3,16(a0)
    80002450:	00853603          	ld	a2,8(a0)
    80002454:	00053583          	ld	a1,0(a0)
    80002458:	34051573          	csrrw	a0,mscratch,a0
    8000245c:	30200073          	mret

0000000080002460 <plicinit>:
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00813423          	sd	s0,8(sp)
    80002468:	01010413          	addi	s0,sp,16
    8000246c:	00813403          	ld	s0,8(sp)
    80002470:	0c0007b7          	lui	a5,0xc000
    80002474:	00100713          	li	a4,1
    80002478:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000247c:	00e7a223          	sw	a4,4(a5)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <plicinithart>:
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00813023          	sd	s0,0(sp)
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	a4c080e7          	jalr	-1460(ra) # 80001ee4 <cpuid>
    800024a0:	0085171b          	slliw	a4,a0,0x8
    800024a4:	0c0027b7          	lui	a5,0xc002
    800024a8:	00e787b3          	add	a5,a5,a4
    800024ac:	40200713          	li	a4,1026
    800024b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800024b4:	00813083          	ld	ra,8(sp)
    800024b8:	00013403          	ld	s0,0(sp)
    800024bc:	00d5151b          	slliw	a0,a0,0xd
    800024c0:	0c2017b7          	lui	a5,0xc201
    800024c4:	00a78533          	add	a0,a5,a0
    800024c8:	00052023          	sw	zero,0(a0)
    800024cc:	01010113          	addi	sp,sp,16
    800024d0:	00008067          	ret

00000000800024d4 <plic_claim>:
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00813023          	sd	s0,0(sp)
    800024dc:	00113423          	sd	ra,8(sp)
    800024e0:	01010413          	addi	s0,sp,16
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	a00080e7          	jalr	-1536(ra) # 80001ee4 <cpuid>
    800024ec:	00813083          	ld	ra,8(sp)
    800024f0:	00013403          	ld	s0,0(sp)
    800024f4:	00d5151b          	slliw	a0,a0,0xd
    800024f8:	0c2017b7          	lui	a5,0xc201
    800024fc:	00a78533          	add	a0,a5,a0
    80002500:	00452503          	lw	a0,4(a0)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret

000000008000250c <plic_complete>:
    8000250c:	fe010113          	addi	sp,sp,-32
    80002510:	00813823          	sd	s0,16(sp)
    80002514:	00913423          	sd	s1,8(sp)
    80002518:	00113c23          	sd	ra,24(sp)
    8000251c:	02010413          	addi	s0,sp,32
    80002520:	00050493          	mv	s1,a0
    80002524:	00000097          	auipc	ra,0x0
    80002528:	9c0080e7          	jalr	-1600(ra) # 80001ee4 <cpuid>
    8000252c:	01813083          	ld	ra,24(sp)
    80002530:	01013403          	ld	s0,16(sp)
    80002534:	00d5179b          	slliw	a5,a0,0xd
    80002538:	0c201737          	lui	a4,0xc201
    8000253c:	00f707b3          	add	a5,a4,a5
    80002540:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002544:	00813483          	ld	s1,8(sp)
    80002548:	02010113          	addi	sp,sp,32
    8000254c:	00008067          	ret

0000000080002550 <consolewrite>:
    80002550:	fb010113          	addi	sp,sp,-80
    80002554:	04813023          	sd	s0,64(sp)
    80002558:	04113423          	sd	ra,72(sp)
    8000255c:	02913c23          	sd	s1,56(sp)
    80002560:	03213823          	sd	s2,48(sp)
    80002564:	03313423          	sd	s3,40(sp)
    80002568:	03413023          	sd	s4,32(sp)
    8000256c:	01513c23          	sd	s5,24(sp)
    80002570:	05010413          	addi	s0,sp,80
    80002574:	06c05c63          	blez	a2,800025ec <consolewrite+0x9c>
    80002578:	00060993          	mv	s3,a2
    8000257c:	00050a13          	mv	s4,a0
    80002580:	00058493          	mv	s1,a1
    80002584:	00000913          	li	s2,0
    80002588:	fff00a93          	li	s5,-1
    8000258c:	01c0006f          	j	800025a8 <consolewrite+0x58>
    80002590:	fbf44503          	lbu	a0,-65(s0)
    80002594:	0019091b          	addiw	s2,s2,1
    80002598:	00148493          	addi	s1,s1,1
    8000259c:	00001097          	auipc	ra,0x1
    800025a0:	a9c080e7          	jalr	-1380(ra) # 80003038 <uartputc>
    800025a4:	03298063          	beq	s3,s2,800025c4 <consolewrite+0x74>
    800025a8:	00048613          	mv	a2,s1
    800025ac:	00100693          	li	a3,1
    800025b0:	000a0593          	mv	a1,s4
    800025b4:	fbf40513          	addi	a0,s0,-65
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	9e4080e7          	jalr	-1564(ra) # 80001f9c <either_copyin>
    800025c0:	fd5518e3          	bne	a0,s5,80002590 <consolewrite+0x40>
    800025c4:	04813083          	ld	ra,72(sp)
    800025c8:	04013403          	ld	s0,64(sp)
    800025cc:	03813483          	ld	s1,56(sp)
    800025d0:	02813983          	ld	s3,40(sp)
    800025d4:	02013a03          	ld	s4,32(sp)
    800025d8:	01813a83          	ld	s5,24(sp)
    800025dc:	00090513          	mv	a0,s2
    800025e0:	03013903          	ld	s2,48(sp)
    800025e4:	05010113          	addi	sp,sp,80
    800025e8:	00008067          	ret
    800025ec:	00000913          	li	s2,0
    800025f0:	fd5ff06f          	j	800025c4 <consolewrite+0x74>

00000000800025f4 <consoleread>:
    800025f4:	f9010113          	addi	sp,sp,-112
    800025f8:	06813023          	sd	s0,96(sp)
    800025fc:	04913c23          	sd	s1,88(sp)
    80002600:	05213823          	sd	s2,80(sp)
    80002604:	05313423          	sd	s3,72(sp)
    80002608:	05413023          	sd	s4,64(sp)
    8000260c:	03513c23          	sd	s5,56(sp)
    80002610:	03613823          	sd	s6,48(sp)
    80002614:	03713423          	sd	s7,40(sp)
    80002618:	03813023          	sd	s8,32(sp)
    8000261c:	06113423          	sd	ra,104(sp)
    80002620:	01913c23          	sd	s9,24(sp)
    80002624:	07010413          	addi	s0,sp,112
    80002628:	00060b93          	mv	s7,a2
    8000262c:	00050913          	mv	s2,a0
    80002630:	00058c13          	mv	s8,a1
    80002634:	00060b1b          	sext.w	s6,a2
    80002638:	00004497          	auipc	s1,0x4
    8000263c:	2a048493          	addi	s1,s1,672 # 800068d8 <cons>
    80002640:	00400993          	li	s3,4
    80002644:	fff00a13          	li	s4,-1
    80002648:	00a00a93          	li	s5,10
    8000264c:	05705e63          	blez	s7,800026a8 <consoleread+0xb4>
    80002650:	09c4a703          	lw	a4,156(s1)
    80002654:	0984a783          	lw	a5,152(s1)
    80002658:	0007071b          	sext.w	a4,a4
    8000265c:	08e78463          	beq	a5,a4,800026e4 <consoleread+0xf0>
    80002660:	07f7f713          	andi	a4,a5,127
    80002664:	00e48733          	add	a4,s1,a4
    80002668:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000266c:	0017869b          	addiw	a3,a5,1
    80002670:	08d4ac23          	sw	a3,152(s1)
    80002674:	00070c9b          	sext.w	s9,a4
    80002678:	0b370663          	beq	a4,s3,80002724 <consoleread+0x130>
    8000267c:	00100693          	li	a3,1
    80002680:	f9f40613          	addi	a2,s0,-97
    80002684:	000c0593          	mv	a1,s8
    80002688:	00090513          	mv	a0,s2
    8000268c:	f8e40fa3          	sb	a4,-97(s0)
    80002690:	00000097          	auipc	ra,0x0
    80002694:	8c0080e7          	jalr	-1856(ra) # 80001f50 <either_copyout>
    80002698:	01450863          	beq	a0,s4,800026a8 <consoleread+0xb4>
    8000269c:	001c0c13          	addi	s8,s8,1
    800026a0:	fffb8b9b          	addiw	s7,s7,-1
    800026a4:	fb5c94e3          	bne	s9,s5,8000264c <consoleread+0x58>
    800026a8:	000b851b          	sext.w	a0,s7
    800026ac:	06813083          	ld	ra,104(sp)
    800026b0:	06013403          	ld	s0,96(sp)
    800026b4:	05813483          	ld	s1,88(sp)
    800026b8:	05013903          	ld	s2,80(sp)
    800026bc:	04813983          	ld	s3,72(sp)
    800026c0:	04013a03          	ld	s4,64(sp)
    800026c4:	03813a83          	ld	s5,56(sp)
    800026c8:	02813b83          	ld	s7,40(sp)
    800026cc:	02013c03          	ld	s8,32(sp)
    800026d0:	01813c83          	ld	s9,24(sp)
    800026d4:	40ab053b          	subw	a0,s6,a0
    800026d8:	03013b03          	ld	s6,48(sp)
    800026dc:	07010113          	addi	sp,sp,112
    800026e0:	00008067          	ret
    800026e4:	00001097          	auipc	ra,0x1
    800026e8:	1d8080e7          	jalr	472(ra) # 800038bc <push_on>
    800026ec:	0984a703          	lw	a4,152(s1)
    800026f0:	09c4a783          	lw	a5,156(s1)
    800026f4:	0007879b          	sext.w	a5,a5
    800026f8:	fef70ce3          	beq	a4,a5,800026f0 <consoleread+0xfc>
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	234080e7          	jalr	564(ra) # 80003930 <pop_on>
    80002704:	0984a783          	lw	a5,152(s1)
    80002708:	07f7f713          	andi	a4,a5,127
    8000270c:	00e48733          	add	a4,s1,a4
    80002710:	01874703          	lbu	a4,24(a4)
    80002714:	0017869b          	addiw	a3,a5,1
    80002718:	08d4ac23          	sw	a3,152(s1)
    8000271c:	00070c9b          	sext.w	s9,a4
    80002720:	f5371ee3          	bne	a4,s3,8000267c <consoleread+0x88>
    80002724:	000b851b          	sext.w	a0,s7
    80002728:	f96bf2e3          	bgeu	s7,s6,800026ac <consoleread+0xb8>
    8000272c:	08f4ac23          	sw	a5,152(s1)
    80002730:	f7dff06f          	j	800026ac <consoleread+0xb8>

0000000080002734 <consputc>:
    80002734:	10000793          	li	a5,256
    80002738:	00f50663          	beq	a0,a5,80002744 <consputc+0x10>
    8000273c:	00001317          	auipc	t1,0x1
    80002740:	9f430067          	jr	-1548(t1) # 80003130 <uartputc_sync>
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00113423          	sd	ra,8(sp)
    8000274c:	00813023          	sd	s0,0(sp)
    80002750:	01010413          	addi	s0,sp,16
    80002754:	00800513          	li	a0,8
    80002758:	00001097          	auipc	ra,0x1
    8000275c:	9d8080e7          	jalr	-1576(ra) # 80003130 <uartputc_sync>
    80002760:	02000513          	li	a0,32
    80002764:	00001097          	auipc	ra,0x1
    80002768:	9cc080e7          	jalr	-1588(ra) # 80003130 <uartputc_sync>
    8000276c:	00013403          	ld	s0,0(sp)
    80002770:	00813083          	ld	ra,8(sp)
    80002774:	00800513          	li	a0,8
    80002778:	01010113          	addi	sp,sp,16
    8000277c:	00001317          	auipc	t1,0x1
    80002780:	9b430067          	jr	-1612(t1) # 80003130 <uartputc_sync>

0000000080002784 <consoleintr>:
    80002784:	fe010113          	addi	sp,sp,-32
    80002788:	00813823          	sd	s0,16(sp)
    8000278c:	00913423          	sd	s1,8(sp)
    80002790:	01213023          	sd	s2,0(sp)
    80002794:	00113c23          	sd	ra,24(sp)
    80002798:	02010413          	addi	s0,sp,32
    8000279c:	00004917          	auipc	s2,0x4
    800027a0:	13c90913          	addi	s2,s2,316 # 800068d8 <cons>
    800027a4:	00050493          	mv	s1,a0
    800027a8:	00090513          	mv	a0,s2
    800027ac:	00001097          	auipc	ra,0x1
    800027b0:	e40080e7          	jalr	-448(ra) # 800035ec <acquire>
    800027b4:	02048c63          	beqz	s1,800027ec <consoleintr+0x68>
    800027b8:	0a092783          	lw	a5,160(s2)
    800027bc:	09892703          	lw	a4,152(s2)
    800027c0:	07f00693          	li	a3,127
    800027c4:	40e7873b          	subw	a4,a5,a4
    800027c8:	02e6e263          	bltu	a3,a4,800027ec <consoleintr+0x68>
    800027cc:	00d00713          	li	a4,13
    800027d0:	04e48063          	beq	s1,a4,80002810 <consoleintr+0x8c>
    800027d4:	07f7f713          	andi	a4,a5,127
    800027d8:	00e90733          	add	a4,s2,a4
    800027dc:	0017879b          	addiw	a5,a5,1
    800027e0:	0af92023          	sw	a5,160(s2)
    800027e4:	00970c23          	sb	s1,24(a4)
    800027e8:	08f92e23          	sw	a5,156(s2)
    800027ec:	01013403          	ld	s0,16(sp)
    800027f0:	01813083          	ld	ra,24(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	00013903          	ld	s2,0(sp)
    800027fc:	00004517          	auipc	a0,0x4
    80002800:	0dc50513          	addi	a0,a0,220 # 800068d8 <cons>
    80002804:	02010113          	addi	sp,sp,32
    80002808:	00001317          	auipc	t1,0x1
    8000280c:	eb030067          	jr	-336(t1) # 800036b8 <release>
    80002810:	00a00493          	li	s1,10
    80002814:	fc1ff06f          	j	800027d4 <consoleintr+0x50>

0000000080002818 <consoleinit>:
    80002818:	fe010113          	addi	sp,sp,-32
    8000281c:	00113c23          	sd	ra,24(sp)
    80002820:	00813823          	sd	s0,16(sp)
    80002824:	00913423          	sd	s1,8(sp)
    80002828:	02010413          	addi	s0,sp,32
    8000282c:	00004497          	auipc	s1,0x4
    80002830:	0ac48493          	addi	s1,s1,172 # 800068d8 <cons>
    80002834:	00048513          	mv	a0,s1
    80002838:	00003597          	auipc	a1,0x3
    8000283c:	9d858593          	addi	a1,a1,-1576 # 80005210 <_ZZ12printIntegermE6digits+0x138>
    80002840:	00001097          	auipc	ra,0x1
    80002844:	d88080e7          	jalr	-632(ra) # 800035c8 <initlock>
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	7ac080e7          	jalr	1964(ra) # 80002ff4 <uartinit>
    80002850:	01813083          	ld	ra,24(sp)
    80002854:	01013403          	ld	s0,16(sp)
    80002858:	00000797          	auipc	a5,0x0
    8000285c:	d9c78793          	addi	a5,a5,-612 # 800025f4 <consoleread>
    80002860:	0af4bc23          	sd	a5,184(s1)
    80002864:	00000797          	auipc	a5,0x0
    80002868:	cec78793          	addi	a5,a5,-788 # 80002550 <consolewrite>
    8000286c:	0cf4b023          	sd	a5,192(s1)
    80002870:	00813483          	ld	s1,8(sp)
    80002874:	02010113          	addi	sp,sp,32
    80002878:	00008067          	ret

000000008000287c <console_read>:
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00813423          	sd	s0,8(sp)
    80002884:	01010413          	addi	s0,sp,16
    80002888:	00813403          	ld	s0,8(sp)
    8000288c:	00004317          	auipc	t1,0x4
    80002890:	10433303          	ld	t1,260(t1) # 80006990 <devsw+0x10>
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00030067          	jr	t1

000000008000289c <console_write>:
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00813423          	sd	s0,8(sp)
    800028a4:	01010413          	addi	s0,sp,16
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	00004317          	auipc	t1,0x4
    800028b0:	0ec33303          	ld	t1,236(t1) # 80006998 <devsw+0x18>
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00030067          	jr	t1

00000000800028bc <panic>:
    800028bc:	fe010113          	addi	sp,sp,-32
    800028c0:	00113c23          	sd	ra,24(sp)
    800028c4:	00813823          	sd	s0,16(sp)
    800028c8:	00913423          	sd	s1,8(sp)
    800028cc:	02010413          	addi	s0,sp,32
    800028d0:	00050493          	mv	s1,a0
    800028d4:	00003517          	auipc	a0,0x3
    800028d8:	94450513          	addi	a0,a0,-1724 # 80005218 <_ZZ12printIntegermE6digits+0x140>
    800028dc:	00004797          	auipc	a5,0x4
    800028e0:	1407ae23          	sw	zero,348(a5) # 80006a38 <pr+0x18>
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	034080e7          	jalr	52(ra) # 80002918 <__printf>
    800028ec:	00048513          	mv	a0,s1
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	028080e7          	jalr	40(ra) # 80002918 <__printf>
    800028f8:	00002517          	auipc	a0,0x2
    800028fc:	7d850513          	addi	a0,a0,2008 # 800050d0 <kvmincrease+0x1050>
    80002900:	00000097          	auipc	ra,0x0
    80002904:	018080e7          	jalr	24(ra) # 80002918 <__printf>
    80002908:	00100793          	li	a5,1
    8000290c:	00003717          	auipc	a4,0x3
    80002910:	eaf72623          	sw	a5,-340(a4) # 800057b8 <panicked>
    80002914:	0000006f          	j	80002914 <panic+0x58>

0000000080002918 <__printf>:
    80002918:	f3010113          	addi	sp,sp,-208
    8000291c:	08813023          	sd	s0,128(sp)
    80002920:	07313423          	sd	s3,104(sp)
    80002924:	09010413          	addi	s0,sp,144
    80002928:	05813023          	sd	s8,64(sp)
    8000292c:	08113423          	sd	ra,136(sp)
    80002930:	06913c23          	sd	s1,120(sp)
    80002934:	07213823          	sd	s2,112(sp)
    80002938:	07413023          	sd	s4,96(sp)
    8000293c:	05513c23          	sd	s5,88(sp)
    80002940:	05613823          	sd	s6,80(sp)
    80002944:	05713423          	sd	s7,72(sp)
    80002948:	03913c23          	sd	s9,56(sp)
    8000294c:	03a13823          	sd	s10,48(sp)
    80002950:	03b13423          	sd	s11,40(sp)
    80002954:	00004317          	auipc	t1,0x4
    80002958:	0cc30313          	addi	t1,t1,204 # 80006a20 <pr>
    8000295c:	01832c03          	lw	s8,24(t1)
    80002960:	00b43423          	sd	a1,8(s0)
    80002964:	00c43823          	sd	a2,16(s0)
    80002968:	00d43c23          	sd	a3,24(s0)
    8000296c:	02e43023          	sd	a4,32(s0)
    80002970:	02f43423          	sd	a5,40(s0)
    80002974:	03043823          	sd	a6,48(s0)
    80002978:	03143c23          	sd	a7,56(s0)
    8000297c:	00050993          	mv	s3,a0
    80002980:	4a0c1663          	bnez	s8,80002e2c <__printf+0x514>
    80002984:	60098c63          	beqz	s3,80002f9c <__printf+0x684>
    80002988:	0009c503          	lbu	a0,0(s3)
    8000298c:	00840793          	addi	a5,s0,8
    80002990:	f6f43c23          	sd	a5,-136(s0)
    80002994:	00000493          	li	s1,0
    80002998:	22050063          	beqz	a0,80002bb8 <__printf+0x2a0>
    8000299c:	00002a37          	lui	s4,0x2
    800029a0:	00018ab7          	lui	s5,0x18
    800029a4:	000f4b37          	lui	s6,0xf4
    800029a8:	00989bb7          	lui	s7,0x989
    800029ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800029b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800029b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800029b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800029bc:	00148c9b          	addiw	s9,s1,1
    800029c0:	02500793          	li	a5,37
    800029c4:	01998933          	add	s2,s3,s9
    800029c8:	38f51263          	bne	a0,a5,80002d4c <__printf+0x434>
    800029cc:	00094783          	lbu	a5,0(s2)
    800029d0:	00078c9b          	sext.w	s9,a5
    800029d4:	1e078263          	beqz	a5,80002bb8 <__printf+0x2a0>
    800029d8:	0024849b          	addiw	s1,s1,2
    800029dc:	07000713          	li	a4,112
    800029e0:	00998933          	add	s2,s3,s1
    800029e4:	38e78a63          	beq	a5,a4,80002d78 <__printf+0x460>
    800029e8:	20f76863          	bltu	a4,a5,80002bf8 <__printf+0x2e0>
    800029ec:	42a78863          	beq	a5,a0,80002e1c <__printf+0x504>
    800029f0:	06400713          	li	a4,100
    800029f4:	40e79663          	bne	a5,a4,80002e00 <__printf+0x4e8>
    800029f8:	f7843783          	ld	a5,-136(s0)
    800029fc:	0007a603          	lw	a2,0(a5)
    80002a00:	00878793          	addi	a5,a5,8
    80002a04:	f6f43c23          	sd	a5,-136(s0)
    80002a08:	42064a63          	bltz	a2,80002e3c <__printf+0x524>
    80002a0c:	00a00713          	li	a4,10
    80002a10:	02e677bb          	remuw	a5,a2,a4
    80002a14:	00003d97          	auipc	s11,0x3
    80002a18:	82cd8d93          	addi	s11,s11,-2004 # 80005240 <digits>
    80002a1c:	00900593          	li	a1,9
    80002a20:	0006051b          	sext.w	a0,a2
    80002a24:	00000c93          	li	s9,0
    80002a28:	02079793          	slli	a5,a5,0x20
    80002a2c:	0207d793          	srli	a5,a5,0x20
    80002a30:	00fd87b3          	add	a5,s11,a5
    80002a34:	0007c783          	lbu	a5,0(a5)
    80002a38:	02e656bb          	divuw	a3,a2,a4
    80002a3c:	f8f40023          	sb	a5,-128(s0)
    80002a40:	14c5d863          	bge	a1,a2,80002b90 <__printf+0x278>
    80002a44:	06300593          	li	a1,99
    80002a48:	00100c93          	li	s9,1
    80002a4c:	02e6f7bb          	remuw	a5,a3,a4
    80002a50:	02079793          	slli	a5,a5,0x20
    80002a54:	0207d793          	srli	a5,a5,0x20
    80002a58:	00fd87b3          	add	a5,s11,a5
    80002a5c:	0007c783          	lbu	a5,0(a5)
    80002a60:	02e6d73b          	divuw	a4,a3,a4
    80002a64:	f8f400a3          	sb	a5,-127(s0)
    80002a68:	12a5f463          	bgeu	a1,a0,80002b90 <__printf+0x278>
    80002a6c:	00a00693          	li	a3,10
    80002a70:	00900593          	li	a1,9
    80002a74:	02d777bb          	remuw	a5,a4,a3
    80002a78:	02079793          	slli	a5,a5,0x20
    80002a7c:	0207d793          	srli	a5,a5,0x20
    80002a80:	00fd87b3          	add	a5,s11,a5
    80002a84:	0007c503          	lbu	a0,0(a5)
    80002a88:	02d757bb          	divuw	a5,a4,a3
    80002a8c:	f8a40123          	sb	a0,-126(s0)
    80002a90:	48e5f263          	bgeu	a1,a4,80002f14 <__printf+0x5fc>
    80002a94:	06300513          	li	a0,99
    80002a98:	02d7f5bb          	remuw	a1,a5,a3
    80002a9c:	02059593          	slli	a1,a1,0x20
    80002aa0:	0205d593          	srli	a1,a1,0x20
    80002aa4:	00bd85b3          	add	a1,s11,a1
    80002aa8:	0005c583          	lbu	a1,0(a1)
    80002aac:	02d7d7bb          	divuw	a5,a5,a3
    80002ab0:	f8b401a3          	sb	a1,-125(s0)
    80002ab4:	48e57263          	bgeu	a0,a4,80002f38 <__printf+0x620>
    80002ab8:	3e700513          	li	a0,999
    80002abc:	02d7f5bb          	remuw	a1,a5,a3
    80002ac0:	02059593          	slli	a1,a1,0x20
    80002ac4:	0205d593          	srli	a1,a1,0x20
    80002ac8:	00bd85b3          	add	a1,s11,a1
    80002acc:	0005c583          	lbu	a1,0(a1)
    80002ad0:	02d7d7bb          	divuw	a5,a5,a3
    80002ad4:	f8b40223          	sb	a1,-124(s0)
    80002ad8:	46e57663          	bgeu	a0,a4,80002f44 <__printf+0x62c>
    80002adc:	02d7f5bb          	remuw	a1,a5,a3
    80002ae0:	02059593          	slli	a1,a1,0x20
    80002ae4:	0205d593          	srli	a1,a1,0x20
    80002ae8:	00bd85b3          	add	a1,s11,a1
    80002aec:	0005c583          	lbu	a1,0(a1)
    80002af0:	02d7d7bb          	divuw	a5,a5,a3
    80002af4:	f8b402a3          	sb	a1,-123(s0)
    80002af8:	46ea7863          	bgeu	s4,a4,80002f68 <__printf+0x650>
    80002afc:	02d7f5bb          	remuw	a1,a5,a3
    80002b00:	02059593          	slli	a1,a1,0x20
    80002b04:	0205d593          	srli	a1,a1,0x20
    80002b08:	00bd85b3          	add	a1,s11,a1
    80002b0c:	0005c583          	lbu	a1,0(a1)
    80002b10:	02d7d7bb          	divuw	a5,a5,a3
    80002b14:	f8b40323          	sb	a1,-122(s0)
    80002b18:	3eeaf863          	bgeu	s5,a4,80002f08 <__printf+0x5f0>
    80002b1c:	02d7f5bb          	remuw	a1,a5,a3
    80002b20:	02059593          	slli	a1,a1,0x20
    80002b24:	0205d593          	srli	a1,a1,0x20
    80002b28:	00bd85b3          	add	a1,s11,a1
    80002b2c:	0005c583          	lbu	a1,0(a1)
    80002b30:	02d7d7bb          	divuw	a5,a5,a3
    80002b34:	f8b403a3          	sb	a1,-121(s0)
    80002b38:	42eb7e63          	bgeu	s6,a4,80002f74 <__printf+0x65c>
    80002b3c:	02d7f5bb          	remuw	a1,a5,a3
    80002b40:	02059593          	slli	a1,a1,0x20
    80002b44:	0205d593          	srli	a1,a1,0x20
    80002b48:	00bd85b3          	add	a1,s11,a1
    80002b4c:	0005c583          	lbu	a1,0(a1)
    80002b50:	02d7d7bb          	divuw	a5,a5,a3
    80002b54:	f8b40423          	sb	a1,-120(s0)
    80002b58:	42ebfc63          	bgeu	s7,a4,80002f90 <__printf+0x678>
    80002b5c:	02079793          	slli	a5,a5,0x20
    80002b60:	0207d793          	srli	a5,a5,0x20
    80002b64:	00fd8db3          	add	s11,s11,a5
    80002b68:	000dc703          	lbu	a4,0(s11)
    80002b6c:	00a00793          	li	a5,10
    80002b70:	00900c93          	li	s9,9
    80002b74:	f8e404a3          	sb	a4,-119(s0)
    80002b78:	00065c63          	bgez	a2,80002b90 <__printf+0x278>
    80002b7c:	f9040713          	addi	a4,s0,-112
    80002b80:	00f70733          	add	a4,a4,a5
    80002b84:	02d00693          	li	a3,45
    80002b88:	fed70823          	sb	a3,-16(a4)
    80002b8c:	00078c93          	mv	s9,a5
    80002b90:	f8040793          	addi	a5,s0,-128
    80002b94:	01978cb3          	add	s9,a5,s9
    80002b98:	f7f40d13          	addi	s10,s0,-129
    80002b9c:	000cc503          	lbu	a0,0(s9)
    80002ba0:	fffc8c93          	addi	s9,s9,-1
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	b90080e7          	jalr	-1136(ra) # 80002734 <consputc>
    80002bac:	ffac98e3          	bne	s9,s10,80002b9c <__printf+0x284>
    80002bb0:	00094503          	lbu	a0,0(s2)
    80002bb4:	e00514e3          	bnez	a0,800029bc <__printf+0xa4>
    80002bb8:	1a0c1663          	bnez	s8,80002d64 <__printf+0x44c>
    80002bbc:	08813083          	ld	ra,136(sp)
    80002bc0:	08013403          	ld	s0,128(sp)
    80002bc4:	07813483          	ld	s1,120(sp)
    80002bc8:	07013903          	ld	s2,112(sp)
    80002bcc:	06813983          	ld	s3,104(sp)
    80002bd0:	06013a03          	ld	s4,96(sp)
    80002bd4:	05813a83          	ld	s5,88(sp)
    80002bd8:	05013b03          	ld	s6,80(sp)
    80002bdc:	04813b83          	ld	s7,72(sp)
    80002be0:	04013c03          	ld	s8,64(sp)
    80002be4:	03813c83          	ld	s9,56(sp)
    80002be8:	03013d03          	ld	s10,48(sp)
    80002bec:	02813d83          	ld	s11,40(sp)
    80002bf0:	0d010113          	addi	sp,sp,208
    80002bf4:	00008067          	ret
    80002bf8:	07300713          	li	a4,115
    80002bfc:	1ce78a63          	beq	a5,a4,80002dd0 <__printf+0x4b8>
    80002c00:	07800713          	li	a4,120
    80002c04:	1ee79e63          	bne	a5,a4,80002e00 <__printf+0x4e8>
    80002c08:	f7843783          	ld	a5,-136(s0)
    80002c0c:	0007a703          	lw	a4,0(a5)
    80002c10:	00878793          	addi	a5,a5,8
    80002c14:	f6f43c23          	sd	a5,-136(s0)
    80002c18:	28074263          	bltz	a4,80002e9c <__printf+0x584>
    80002c1c:	00002d97          	auipc	s11,0x2
    80002c20:	624d8d93          	addi	s11,s11,1572 # 80005240 <digits>
    80002c24:	00f77793          	andi	a5,a4,15
    80002c28:	00fd87b3          	add	a5,s11,a5
    80002c2c:	0007c683          	lbu	a3,0(a5)
    80002c30:	00f00613          	li	a2,15
    80002c34:	0007079b          	sext.w	a5,a4
    80002c38:	f8d40023          	sb	a3,-128(s0)
    80002c3c:	0047559b          	srliw	a1,a4,0x4
    80002c40:	0047569b          	srliw	a3,a4,0x4
    80002c44:	00000c93          	li	s9,0
    80002c48:	0ee65063          	bge	a2,a4,80002d28 <__printf+0x410>
    80002c4c:	00f6f693          	andi	a3,a3,15
    80002c50:	00dd86b3          	add	a3,s11,a3
    80002c54:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002c58:	0087d79b          	srliw	a5,a5,0x8
    80002c5c:	00100c93          	li	s9,1
    80002c60:	f8d400a3          	sb	a3,-127(s0)
    80002c64:	0cb67263          	bgeu	a2,a1,80002d28 <__printf+0x410>
    80002c68:	00f7f693          	andi	a3,a5,15
    80002c6c:	00dd86b3          	add	a3,s11,a3
    80002c70:	0006c583          	lbu	a1,0(a3)
    80002c74:	00f00613          	li	a2,15
    80002c78:	0047d69b          	srliw	a3,a5,0x4
    80002c7c:	f8b40123          	sb	a1,-126(s0)
    80002c80:	0047d593          	srli	a1,a5,0x4
    80002c84:	28f67e63          	bgeu	a2,a5,80002f20 <__printf+0x608>
    80002c88:	00f6f693          	andi	a3,a3,15
    80002c8c:	00dd86b3          	add	a3,s11,a3
    80002c90:	0006c503          	lbu	a0,0(a3)
    80002c94:	0087d813          	srli	a6,a5,0x8
    80002c98:	0087d69b          	srliw	a3,a5,0x8
    80002c9c:	f8a401a3          	sb	a0,-125(s0)
    80002ca0:	28b67663          	bgeu	a2,a1,80002f2c <__printf+0x614>
    80002ca4:	00f6f693          	andi	a3,a3,15
    80002ca8:	00dd86b3          	add	a3,s11,a3
    80002cac:	0006c583          	lbu	a1,0(a3)
    80002cb0:	00c7d513          	srli	a0,a5,0xc
    80002cb4:	00c7d69b          	srliw	a3,a5,0xc
    80002cb8:	f8b40223          	sb	a1,-124(s0)
    80002cbc:	29067a63          	bgeu	a2,a6,80002f50 <__printf+0x638>
    80002cc0:	00f6f693          	andi	a3,a3,15
    80002cc4:	00dd86b3          	add	a3,s11,a3
    80002cc8:	0006c583          	lbu	a1,0(a3)
    80002ccc:	0107d813          	srli	a6,a5,0x10
    80002cd0:	0107d69b          	srliw	a3,a5,0x10
    80002cd4:	f8b402a3          	sb	a1,-123(s0)
    80002cd8:	28a67263          	bgeu	a2,a0,80002f5c <__printf+0x644>
    80002cdc:	00f6f693          	andi	a3,a3,15
    80002ce0:	00dd86b3          	add	a3,s11,a3
    80002ce4:	0006c683          	lbu	a3,0(a3)
    80002ce8:	0147d79b          	srliw	a5,a5,0x14
    80002cec:	f8d40323          	sb	a3,-122(s0)
    80002cf0:	21067663          	bgeu	a2,a6,80002efc <__printf+0x5e4>
    80002cf4:	02079793          	slli	a5,a5,0x20
    80002cf8:	0207d793          	srli	a5,a5,0x20
    80002cfc:	00fd8db3          	add	s11,s11,a5
    80002d00:	000dc683          	lbu	a3,0(s11)
    80002d04:	00800793          	li	a5,8
    80002d08:	00700c93          	li	s9,7
    80002d0c:	f8d403a3          	sb	a3,-121(s0)
    80002d10:	00075c63          	bgez	a4,80002d28 <__printf+0x410>
    80002d14:	f9040713          	addi	a4,s0,-112
    80002d18:	00f70733          	add	a4,a4,a5
    80002d1c:	02d00693          	li	a3,45
    80002d20:	fed70823          	sb	a3,-16(a4)
    80002d24:	00078c93          	mv	s9,a5
    80002d28:	f8040793          	addi	a5,s0,-128
    80002d2c:	01978cb3          	add	s9,a5,s9
    80002d30:	f7f40d13          	addi	s10,s0,-129
    80002d34:	000cc503          	lbu	a0,0(s9)
    80002d38:	fffc8c93          	addi	s9,s9,-1
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	9f8080e7          	jalr	-1544(ra) # 80002734 <consputc>
    80002d44:	ff9d18e3          	bne	s10,s9,80002d34 <__printf+0x41c>
    80002d48:	0100006f          	j	80002d58 <__printf+0x440>
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	9e8080e7          	jalr	-1560(ra) # 80002734 <consputc>
    80002d54:	000c8493          	mv	s1,s9
    80002d58:	00094503          	lbu	a0,0(s2)
    80002d5c:	c60510e3          	bnez	a0,800029bc <__printf+0xa4>
    80002d60:	e40c0ee3          	beqz	s8,80002bbc <__printf+0x2a4>
    80002d64:	00004517          	auipc	a0,0x4
    80002d68:	cbc50513          	addi	a0,a0,-836 # 80006a20 <pr>
    80002d6c:	00001097          	auipc	ra,0x1
    80002d70:	94c080e7          	jalr	-1716(ra) # 800036b8 <release>
    80002d74:	e49ff06f          	j	80002bbc <__printf+0x2a4>
    80002d78:	f7843783          	ld	a5,-136(s0)
    80002d7c:	03000513          	li	a0,48
    80002d80:	01000d13          	li	s10,16
    80002d84:	00878713          	addi	a4,a5,8
    80002d88:	0007bc83          	ld	s9,0(a5)
    80002d8c:	f6e43c23          	sd	a4,-136(s0)
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	9a4080e7          	jalr	-1628(ra) # 80002734 <consputc>
    80002d98:	07800513          	li	a0,120
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	998080e7          	jalr	-1640(ra) # 80002734 <consputc>
    80002da4:	00002d97          	auipc	s11,0x2
    80002da8:	49cd8d93          	addi	s11,s11,1180 # 80005240 <digits>
    80002dac:	03ccd793          	srli	a5,s9,0x3c
    80002db0:	00fd87b3          	add	a5,s11,a5
    80002db4:	0007c503          	lbu	a0,0(a5)
    80002db8:	fffd0d1b          	addiw	s10,s10,-1
    80002dbc:	004c9c93          	slli	s9,s9,0x4
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	974080e7          	jalr	-1676(ra) # 80002734 <consputc>
    80002dc8:	fe0d12e3          	bnez	s10,80002dac <__printf+0x494>
    80002dcc:	f8dff06f          	j	80002d58 <__printf+0x440>
    80002dd0:	f7843783          	ld	a5,-136(s0)
    80002dd4:	0007bc83          	ld	s9,0(a5)
    80002dd8:	00878793          	addi	a5,a5,8
    80002ddc:	f6f43c23          	sd	a5,-136(s0)
    80002de0:	000c9a63          	bnez	s9,80002df4 <__printf+0x4dc>
    80002de4:	1080006f          	j	80002eec <__printf+0x5d4>
    80002de8:	001c8c93          	addi	s9,s9,1
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	948080e7          	jalr	-1720(ra) # 80002734 <consputc>
    80002df4:	000cc503          	lbu	a0,0(s9)
    80002df8:	fe0518e3          	bnez	a0,80002de8 <__printf+0x4d0>
    80002dfc:	f5dff06f          	j	80002d58 <__printf+0x440>
    80002e00:	02500513          	li	a0,37
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	930080e7          	jalr	-1744(ra) # 80002734 <consputc>
    80002e0c:	000c8513          	mv	a0,s9
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	924080e7          	jalr	-1756(ra) # 80002734 <consputc>
    80002e18:	f41ff06f          	j	80002d58 <__printf+0x440>
    80002e1c:	02500513          	li	a0,37
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	914080e7          	jalr	-1772(ra) # 80002734 <consputc>
    80002e28:	f31ff06f          	j	80002d58 <__printf+0x440>
    80002e2c:	00030513          	mv	a0,t1
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	7bc080e7          	jalr	1980(ra) # 800035ec <acquire>
    80002e38:	b4dff06f          	j	80002984 <__printf+0x6c>
    80002e3c:	40c0053b          	negw	a0,a2
    80002e40:	00a00713          	li	a4,10
    80002e44:	02e576bb          	remuw	a3,a0,a4
    80002e48:	00002d97          	auipc	s11,0x2
    80002e4c:	3f8d8d93          	addi	s11,s11,1016 # 80005240 <digits>
    80002e50:	ff700593          	li	a1,-9
    80002e54:	02069693          	slli	a3,a3,0x20
    80002e58:	0206d693          	srli	a3,a3,0x20
    80002e5c:	00dd86b3          	add	a3,s11,a3
    80002e60:	0006c683          	lbu	a3,0(a3)
    80002e64:	02e557bb          	divuw	a5,a0,a4
    80002e68:	f8d40023          	sb	a3,-128(s0)
    80002e6c:	10b65e63          	bge	a2,a1,80002f88 <__printf+0x670>
    80002e70:	06300593          	li	a1,99
    80002e74:	02e7f6bb          	remuw	a3,a5,a4
    80002e78:	02069693          	slli	a3,a3,0x20
    80002e7c:	0206d693          	srli	a3,a3,0x20
    80002e80:	00dd86b3          	add	a3,s11,a3
    80002e84:	0006c683          	lbu	a3,0(a3)
    80002e88:	02e7d73b          	divuw	a4,a5,a4
    80002e8c:	00200793          	li	a5,2
    80002e90:	f8d400a3          	sb	a3,-127(s0)
    80002e94:	bca5ece3          	bltu	a1,a0,80002a6c <__printf+0x154>
    80002e98:	ce5ff06f          	j	80002b7c <__printf+0x264>
    80002e9c:	40e007bb          	negw	a5,a4
    80002ea0:	00002d97          	auipc	s11,0x2
    80002ea4:	3a0d8d93          	addi	s11,s11,928 # 80005240 <digits>
    80002ea8:	00f7f693          	andi	a3,a5,15
    80002eac:	00dd86b3          	add	a3,s11,a3
    80002eb0:	0006c583          	lbu	a1,0(a3)
    80002eb4:	ff100613          	li	a2,-15
    80002eb8:	0047d69b          	srliw	a3,a5,0x4
    80002ebc:	f8b40023          	sb	a1,-128(s0)
    80002ec0:	0047d59b          	srliw	a1,a5,0x4
    80002ec4:	0ac75e63          	bge	a4,a2,80002f80 <__printf+0x668>
    80002ec8:	00f6f693          	andi	a3,a3,15
    80002ecc:	00dd86b3          	add	a3,s11,a3
    80002ed0:	0006c603          	lbu	a2,0(a3)
    80002ed4:	00f00693          	li	a3,15
    80002ed8:	0087d79b          	srliw	a5,a5,0x8
    80002edc:	f8c400a3          	sb	a2,-127(s0)
    80002ee0:	d8b6e4e3          	bltu	a3,a1,80002c68 <__printf+0x350>
    80002ee4:	00200793          	li	a5,2
    80002ee8:	e2dff06f          	j	80002d14 <__printf+0x3fc>
    80002eec:	00002c97          	auipc	s9,0x2
    80002ef0:	334c8c93          	addi	s9,s9,820 # 80005220 <_ZZ12printIntegermE6digits+0x148>
    80002ef4:	02800513          	li	a0,40
    80002ef8:	ef1ff06f          	j	80002de8 <__printf+0x4d0>
    80002efc:	00700793          	li	a5,7
    80002f00:	00600c93          	li	s9,6
    80002f04:	e0dff06f          	j	80002d10 <__printf+0x3f8>
    80002f08:	00700793          	li	a5,7
    80002f0c:	00600c93          	li	s9,6
    80002f10:	c69ff06f          	j	80002b78 <__printf+0x260>
    80002f14:	00300793          	li	a5,3
    80002f18:	00200c93          	li	s9,2
    80002f1c:	c5dff06f          	j	80002b78 <__printf+0x260>
    80002f20:	00300793          	li	a5,3
    80002f24:	00200c93          	li	s9,2
    80002f28:	de9ff06f          	j	80002d10 <__printf+0x3f8>
    80002f2c:	00400793          	li	a5,4
    80002f30:	00300c93          	li	s9,3
    80002f34:	dddff06f          	j	80002d10 <__printf+0x3f8>
    80002f38:	00400793          	li	a5,4
    80002f3c:	00300c93          	li	s9,3
    80002f40:	c39ff06f          	j	80002b78 <__printf+0x260>
    80002f44:	00500793          	li	a5,5
    80002f48:	00400c93          	li	s9,4
    80002f4c:	c2dff06f          	j	80002b78 <__printf+0x260>
    80002f50:	00500793          	li	a5,5
    80002f54:	00400c93          	li	s9,4
    80002f58:	db9ff06f          	j	80002d10 <__printf+0x3f8>
    80002f5c:	00600793          	li	a5,6
    80002f60:	00500c93          	li	s9,5
    80002f64:	dadff06f          	j	80002d10 <__printf+0x3f8>
    80002f68:	00600793          	li	a5,6
    80002f6c:	00500c93          	li	s9,5
    80002f70:	c09ff06f          	j	80002b78 <__printf+0x260>
    80002f74:	00800793          	li	a5,8
    80002f78:	00700c93          	li	s9,7
    80002f7c:	bfdff06f          	j	80002b78 <__printf+0x260>
    80002f80:	00100793          	li	a5,1
    80002f84:	d91ff06f          	j	80002d14 <__printf+0x3fc>
    80002f88:	00100793          	li	a5,1
    80002f8c:	bf1ff06f          	j	80002b7c <__printf+0x264>
    80002f90:	00900793          	li	a5,9
    80002f94:	00800c93          	li	s9,8
    80002f98:	be1ff06f          	j	80002b78 <__printf+0x260>
    80002f9c:	00002517          	auipc	a0,0x2
    80002fa0:	28c50513          	addi	a0,a0,652 # 80005228 <_ZZ12printIntegermE6digits+0x150>
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	918080e7          	jalr	-1768(ra) # 800028bc <panic>

0000000080002fac <printfinit>:
    80002fac:	fe010113          	addi	sp,sp,-32
    80002fb0:	00813823          	sd	s0,16(sp)
    80002fb4:	00913423          	sd	s1,8(sp)
    80002fb8:	00113c23          	sd	ra,24(sp)
    80002fbc:	02010413          	addi	s0,sp,32
    80002fc0:	00004497          	auipc	s1,0x4
    80002fc4:	a6048493          	addi	s1,s1,-1440 # 80006a20 <pr>
    80002fc8:	00048513          	mv	a0,s1
    80002fcc:	00002597          	auipc	a1,0x2
    80002fd0:	26c58593          	addi	a1,a1,620 # 80005238 <_ZZ12printIntegermE6digits+0x160>
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	5f4080e7          	jalr	1524(ra) # 800035c8 <initlock>
    80002fdc:	01813083          	ld	ra,24(sp)
    80002fe0:	01013403          	ld	s0,16(sp)
    80002fe4:	0004ac23          	sw	zero,24(s1)
    80002fe8:	00813483          	ld	s1,8(sp)
    80002fec:	02010113          	addi	sp,sp,32
    80002ff0:	00008067          	ret

0000000080002ff4 <uartinit>:
    80002ff4:	ff010113          	addi	sp,sp,-16
    80002ff8:	00813423          	sd	s0,8(sp)
    80002ffc:	01010413          	addi	s0,sp,16
    80003000:	100007b7          	lui	a5,0x10000
    80003004:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003008:	f8000713          	li	a4,-128
    8000300c:	00e781a3          	sb	a4,3(a5)
    80003010:	00300713          	li	a4,3
    80003014:	00e78023          	sb	a4,0(a5)
    80003018:	000780a3          	sb	zero,1(a5)
    8000301c:	00e781a3          	sb	a4,3(a5)
    80003020:	00700693          	li	a3,7
    80003024:	00d78123          	sb	a3,2(a5)
    80003028:	00e780a3          	sb	a4,1(a5)
    8000302c:	00813403          	ld	s0,8(sp)
    80003030:	01010113          	addi	sp,sp,16
    80003034:	00008067          	ret

0000000080003038 <uartputc>:
    80003038:	00002797          	auipc	a5,0x2
    8000303c:	7807a783          	lw	a5,1920(a5) # 800057b8 <panicked>
    80003040:	00078463          	beqz	a5,80003048 <uartputc+0x10>
    80003044:	0000006f          	j	80003044 <uartputc+0xc>
    80003048:	fd010113          	addi	sp,sp,-48
    8000304c:	02813023          	sd	s0,32(sp)
    80003050:	00913c23          	sd	s1,24(sp)
    80003054:	01213823          	sd	s2,16(sp)
    80003058:	01313423          	sd	s3,8(sp)
    8000305c:	02113423          	sd	ra,40(sp)
    80003060:	03010413          	addi	s0,sp,48
    80003064:	00002917          	auipc	s2,0x2
    80003068:	75c90913          	addi	s2,s2,1884 # 800057c0 <uart_tx_r>
    8000306c:	00093783          	ld	a5,0(s2)
    80003070:	00002497          	auipc	s1,0x2
    80003074:	75848493          	addi	s1,s1,1880 # 800057c8 <uart_tx_w>
    80003078:	0004b703          	ld	a4,0(s1)
    8000307c:	02078693          	addi	a3,a5,32
    80003080:	00050993          	mv	s3,a0
    80003084:	02e69c63          	bne	a3,a4,800030bc <uartputc+0x84>
    80003088:	00001097          	auipc	ra,0x1
    8000308c:	834080e7          	jalr	-1996(ra) # 800038bc <push_on>
    80003090:	00093783          	ld	a5,0(s2)
    80003094:	0004b703          	ld	a4,0(s1)
    80003098:	02078793          	addi	a5,a5,32
    8000309c:	00e79463          	bne	a5,a4,800030a4 <uartputc+0x6c>
    800030a0:	0000006f          	j	800030a0 <uartputc+0x68>
    800030a4:	00001097          	auipc	ra,0x1
    800030a8:	88c080e7          	jalr	-1908(ra) # 80003930 <pop_on>
    800030ac:	00093783          	ld	a5,0(s2)
    800030b0:	0004b703          	ld	a4,0(s1)
    800030b4:	02078693          	addi	a3,a5,32
    800030b8:	fce688e3          	beq	a3,a4,80003088 <uartputc+0x50>
    800030bc:	01f77693          	andi	a3,a4,31
    800030c0:	00004597          	auipc	a1,0x4
    800030c4:	98058593          	addi	a1,a1,-1664 # 80006a40 <uart_tx_buf>
    800030c8:	00d586b3          	add	a3,a1,a3
    800030cc:	00170713          	addi	a4,a4,1
    800030d0:	01368023          	sb	s3,0(a3)
    800030d4:	00e4b023          	sd	a4,0(s1)
    800030d8:	10000637          	lui	a2,0x10000
    800030dc:	02f71063          	bne	a4,a5,800030fc <uartputc+0xc4>
    800030e0:	0340006f          	j	80003114 <uartputc+0xdc>
    800030e4:	00074703          	lbu	a4,0(a4)
    800030e8:	00f93023          	sd	a5,0(s2)
    800030ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800030f0:	00093783          	ld	a5,0(s2)
    800030f4:	0004b703          	ld	a4,0(s1)
    800030f8:	00f70e63          	beq	a4,a5,80003114 <uartputc+0xdc>
    800030fc:	00564683          	lbu	a3,5(a2)
    80003100:	01f7f713          	andi	a4,a5,31
    80003104:	00e58733          	add	a4,a1,a4
    80003108:	0206f693          	andi	a3,a3,32
    8000310c:	00178793          	addi	a5,a5,1
    80003110:	fc069ae3          	bnez	a3,800030e4 <uartputc+0xac>
    80003114:	02813083          	ld	ra,40(sp)
    80003118:	02013403          	ld	s0,32(sp)
    8000311c:	01813483          	ld	s1,24(sp)
    80003120:	01013903          	ld	s2,16(sp)
    80003124:	00813983          	ld	s3,8(sp)
    80003128:	03010113          	addi	sp,sp,48
    8000312c:	00008067          	ret

0000000080003130 <uartputc_sync>:
    80003130:	ff010113          	addi	sp,sp,-16
    80003134:	00813423          	sd	s0,8(sp)
    80003138:	01010413          	addi	s0,sp,16
    8000313c:	00002717          	auipc	a4,0x2
    80003140:	67c72703          	lw	a4,1660(a4) # 800057b8 <panicked>
    80003144:	02071663          	bnez	a4,80003170 <uartputc_sync+0x40>
    80003148:	00050793          	mv	a5,a0
    8000314c:	100006b7          	lui	a3,0x10000
    80003150:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003154:	02077713          	andi	a4,a4,32
    80003158:	fe070ce3          	beqz	a4,80003150 <uartputc_sync+0x20>
    8000315c:	0ff7f793          	andi	a5,a5,255
    80003160:	00f68023          	sb	a5,0(a3)
    80003164:	00813403          	ld	s0,8(sp)
    80003168:	01010113          	addi	sp,sp,16
    8000316c:	00008067          	ret
    80003170:	0000006f          	j	80003170 <uartputc_sync+0x40>

0000000080003174 <uartstart>:
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00813423          	sd	s0,8(sp)
    8000317c:	01010413          	addi	s0,sp,16
    80003180:	00002617          	auipc	a2,0x2
    80003184:	64060613          	addi	a2,a2,1600 # 800057c0 <uart_tx_r>
    80003188:	00002517          	auipc	a0,0x2
    8000318c:	64050513          	addi	a0,a0,1600 # 800057c8 <uart_tx_w>
    80003190:	00063783          	ld	a5,0(a2)
    80003194:	00053703          	ld	a4,0(a0)
    80003198:	04f70263          	beq	a4,a5,800031dc <uartstart+0x68>
    8000319c:	100005b7          	lui	a1,0x10000
    800031a0:	00004817          	auipc	a6,0x4
    800031a4:	8a080813          	addi	a6,a6,-1888 # 80006a40 <uart_tx_buf>
    800031a8:	01c0006f          	j	800031c4 <uartstart+0x50>
    800031ac:	0006c703          	lbu	a4,0(a3)
    800031b0:	00f63023          	sd	a5,0(a2)
    800031b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031b8:	00063783          	ld	a5,0(a2)
    800031bc:	00053703          	ld	a4,0(a0)
    800031c0:	00f70e63          	beq	a4,a5,800031dc <uartstart+0x68>
    800031c4:	01f7f713          	andi	a4,a5,31
    800031c8:	00e806b3          	add	a3,a6,a4
    800031cc:	0055c703          	lbu	a4,5(a1)
    800031d0:	00178793          	addi	a5,a5,1
    800031d4:	02077713          	andi	a4,a4,32
    800031d8:	fc071ae3          	bnez	a4,800031ac <uartstart+0x38>
    800031dc:	00813403          	ld	s0,8(sp)
    800031e0:	01010113          	addi	sp,sp,16
    800031e4:	00008067          	ret

00000000800031e8 <uartgetc>:
    800031e8:	ff010113          	addi	sp,sp,-16
    800031ec:	00813423          	sd	s0,8(sp)
    800031f0:	01010413          	addi	s0,sp,16
    800031f4:	10000737          	lui	a4,0x10000
    800031f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800031fc:	0017f793          	andi	a5,a5,1
    80003200:	00078c63          	beqz	a5,80003218 <uartgetc+0x30>
    80003204:	00074503          	lbu	a0,0(a4)
    80003208:	0ff57513          	andi	a0,a0,255
    8000320c:	00813403          	ld	s0,8(sp)
    80003210:	01010113          	addi	sp,sp,16
    80003214:	00008067          	ret
    80003218:	fff00513          	li	a0,-1
    8000321c:	ff1ff06f          	j	8000320c <uartgetc+0x24>

0000000080003220 <uartintr>:
    80003220:	100007b7          	lui	a5,0x10000
    80003224:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003228:	0017f793          	andi	a5,a5,1
    8000322c:	0a078463          	beqz	a5,800032d4 <uartintr+0xb4>
    80003230:	fe010113          	addi	sp,sp,-32
    80003234:	00813823          	sd	s0,16(sp)
    80003238:	00913423          	sd	s1,8(sp)
    8000323c:	00113c23          	sd	ra,24(sp)
    80003240:	02010413          	addi	s0,sp,32
    80003244:	100004b7          	lui	s1,0x10000
    80003248:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000324c:	0ff57513          	andi	a0,a0,255
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	534080e7          	jalr	1332(ra) # 80002784 <consoleintr>
    80003258:	0054c783          	lbu	a5,5(s1)
    8000325c:	0017f793          	andi	a5,a5,1
    80003260:	fe0794e3          	bnez	a5,80003248 <uartintr+0x28>
    80003264:	00002617          	auipc	a2,0x2
    80003268:	55c60613          	addi	a2,a2,1372 # 800057c0 <uart_tx_r>
    8000326c:	00002517          	auipc	a0,0x2
    80003270:	55c50513          	addi	a0,a0,1372 # 800057c8 <uart_tx_w>
    80003274:	00063783          	ld	a5,0(a2)
    80003278:	00053703          	ld	a4,0(a0)
    8000327c:	04f70263          	beq	a4,a5,800032c0 <uartintr+0xa0>
    80003280:	100005b7          	lui	a1,0x10000
    80003284:	00003817          	auipc	a6,0x3
    80003288:	7bc80813          	addi	a6,a6,1980 # 80006a40 <uart_tx_buf>
    8000328c:	01c0006f          	j	800032a8 <uartintr+0x88>
    80003290:	0006c703          	lbu	a4,0(a3)
    80003294:	00f63023          	sd	a5,0(a2)
    80003298:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000329c:	00063783          	ld	a5,0(a2)
    800032a0:	00053703          	ld	a4,0(a0)
    800032a4:	00f70e63          	beq	a4,a5,800032c0 <uartintr+0xa0>
    800032a8:	01f7f713          	andi	a4,a5,31
    800032ac:	00e806b3          	add	a3,a6,a4
    800032b0:	0055c703          	lbu	a4,5(a1)
    800032b4:	00178793          	addi	a5,a5,1
    800032b8:	02077713          	andi	a4,a4,32
    800032bc:	fc071ae3          	bnez	a4,80003290 <uartintr+0x70>
    800032c0:	01813083          	ld	ra,24(sp)
    800032c4:	01013403          	ld	s0,16(sp)
    800032c8:	00813483          	ld	s1,8(sp)
    800032cc:	02010113          	addi	sp,sp,32
    800032d0:	00008067          	ret
    800032d4:	00002617          	auipc	a2,0x2
    800032d8:	4ec60613          	addi	a2,a2,1260 # 800057c0 <uart_tx_r>
    800032dc:	00002517          	auipc	a0,0x2
    800032e0:	4ec50513          	addi	a0,a0,1260 # 800057c8 <uart_tx_w>
    800032e4:	00063783          	ld	a5,0(a2)
    800032e8:	00053703          	ld	a4,0(a0)
    800032ec:	04f70263          	beq	a4,a5,80003330 <uartintr+0x110>
    800032f0:	100005b7          	lui	a1,0x10000
    800032f4:	00003817          	auipc	a6,0x3
    800032f8:	74c80813          	addi	a6,a6,1868 # 80006a40 <uart_tx_buf>
    800032fc:	01c0006f          	j	80003318 <uartintr+0xf8>
    80003300:	0006c703          	lbu	a4,0(a3)
    80003304:	00f63023          	sd	a5,0(a2)
    80003308:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000330c:	00063783          	ld	a5,0(a2)
    80003310:	00053703          	ld	a4,0(a0)
    80003314:	02f70063          	beq	a4,a5,80003334 <uartintr+0x114>
    80003318:	01f7f713          	andi	a4,a5,31
    8000331c:	00e806b3          	add	a3,a6,a4
    80003320:	0055c703          	lbu	a4,5(a1)
    80003324:	00178793          	addi	a5,a5,1
    80003328:	02077713          	andi	a4,a4,32
    8000332c:	fc071ae3          	bnez	a4,80003300 <uartintr+0xe0>
    80003330:	00008067          	ret
    80003334:	00008067          	ret

0000000080003338 <kinit>:
    80003338:	fc010113          	addi	sp,sp,-64
    8000333c:	02913423          	sd	s1,40(sp)
    80003340:	fffff7b7          	lui	a5,0xfffff
    80003344:	00004497          	auipc	s1,0x4
    80003348:	72b48493          	addi	s1,s1,1835 # 80007a6f <end+0xfff>
    8000334c:	02813823          	sd	s0,48(sp)
    80003350:	01313c23          	sd	s3,24(sp)
    80003354:	00f4f4b3          	and	s1,s1,a5
    80003358:	02113c23          	sd	ra,56(sp)
    8000335c:	03213023          	sd	s2,32(sp)
    80003360:	01413823          	sd	s4,16(sp)
    80003364:	01513423          	sd	s5,8(sp)
    80003368:	04010413          	addi	s0,sp,64
    8000336c:	000017b7          	lui	a5,0x1
    80003370:	01100993          	li	s3,17
    80003374:	00f487b3          	add	a5,s1,a5
    80003378:	01b99993          	slli	s3,s3,0x1b
    8000337c:	06f9e063          	bltu	s3,a5,800033dc <kinit+0xa4>
    80003380:	00003a97          	auipc	s5,0x3
    80003384:	6f0a8a93          	addi	s5,s5,1776 # 80006a70 <end>
    80003388:	0754ec63          	bltu	s1,s5,80003400 <kinit+0xc8>
    8000338c:	0734fa63          	bgeu	s1,s3,80003400 <kinit+0xc8>
    80003390:	00088a37          	lui	s4,0x88
    80003394:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003398:	00002917          	auipc	s2,0x2
    8000339c:	43890913          	addi	s2,s2,1080 # 800057d0 <kmem>
    800033a0:	00ca1a13          	slli	s4,s4,0xc
    800033a4:	0140006f          	j	800033b8 <kinit+0x80>
    800033a8:	000017b7          	lui	a5,0x1
    800033ac:	00f484b3          	add	s1,s1,a5
    800033b0:	0554e863          	bltu	s1,s5,80003400 <kinit+0xc8>
    800033b4:	0534f663          	bgeu	s1,s3,80003400 <kinit+0xc8>
    800033b8:	00001637          	lui	a2,0x1
    800033bc:	00100593          	li	a1,1
    800033c0:	00048513          	mv	a0,s1
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	5e4080e7          	jalr	1508(ra) # 800039a8 <__memset>
    800033cc:	00093783          	ld	a5,0(s2)
    800033d0:	00f4b023          	sd	a5,0(s1)
    800033d4:	00993023          	sd	s1,0(s2)
    800033d8:	fd4498e3          	bne	s1,s4,800033a8 <kinit+0x70>
    800033dc:	03813083          	ld	ra,56(sp)
    800033e0:	03013403          	ld	s0,48(sp)
    800033e4:	02813483          	ld	s1,40(sp)
    800033e8:	02013903          	ld	s2,32(sp)
    800033ec:	01813983          	ld	s3,24(sp)
    800033f0:	01013a03          	ld	s4,16(sp)
    800033f4:	00813a83          	ld	s5,8(sp)
    800033f8:	04010113          	addi	sp,sp,64
    800033fc:	00008067          	ret
    80003400:	00002517          	auipc	a0,0x2
    80003404:	e5850513          	addi	a0,a0,-424 # 80005258 <digits+0x18>
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	4b4080e7          	jalr	1204(ra) # 800028bc <panic>

0000000080003410 <freerange>:
    80003410:	fc010113          	addi	sp,sp,-64
    80003414:	000017b7          	lui	a5,0x1
    80003418:	02913423          	sd	s1,40(sp)
    8000341c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003420:	009504b3          	add	s1,a0,s1
    80003424:	fffff537          	lui	a0,0xfffff
    80003428:	02813823          	sd	s0,48(sp)
    8000342c:	02113c23          	sd	ra,56(sp)
    80003430:	03213023          	sd	s2,32(sp)
    80003434:	01313c23          	sd	s3,24(sp)
    80003438:	01413823          	sd	s4,16(sp)
    8000343c:	01513423          	sd	s5,8(sp)
    80003440:	01613023          	sd	s6,0(sp)
    80003444:	04010413          	addi	s0,sp,64
    80003448:	00a4f4b3          	and	s1,s1,a0
    8000344c:	00f487b3          	add	a5,s1,a5
    80003450:	06f5e463          	bltu	a1,a5,800034b8 <freerange+0xa8>
    80003454:	00003a97          	auipc	s5,0x3
    80003458:	61ca8a93          	addi	s5,s5,1564 # 80006a70 <end>
    8000345c:	0954e263          	bltu	s1,s5,800034e0 <freerange+0xd0>
    80003460:	01100993          	li	s3,17
    80003464:	01b99993          	slli	s3,s3,0x1b
    80003468:	0734fc63          	bgeu	s1,s3,800034e0 <freerange+0xd0>
    8000346c:	00058a13          	mv	s4,a1
    80003470:	00002917          	auipc	s2,0x2
    80003474:	36090913          	addi	s2,s2,864 # 800057d0 <kmem>
    80003478:	00002b37          	lui	s6,0x2
    8000347c:	0140006f          	j	80003490 <freerange+0x80>
    80003480:	000017b7          	lui	a5,0x1
    80003484:	00f484b3          	add	s1,s1,a5
    80003488:	0554ec63          	bltu	s1,s5,800034e0 <freerange+0xd0>
    8000348c:	0534fa63          	bgeu	s1,s3,800034e0 <freerange+0xd0>
    80003490:	00001637          	lui	a2,0x1
    80003494:	00100593          	li	a1,1
    80003498:	00048513          	mv	a0,s1
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	50c080e7          	jalr	1292(ra) # 800039a8 <__memset>
    800034a4:	00093703          	ld	a4,0(s2)
    800034a8:	016487b3          	add	a5,s1,s6
    800034ac:	00e4b023          	sd	a4,0(s1)
    800034b0:	00993023          	sd	s1,0(s2)
    800034b4:	fcfa76e3          	bgeu	s4,a5,80003480 <freerange+0x70>
    800034b8:	03813083          	ld	ra,56(sp)
    800034bc:	03013403          	ld	s0,48(sp)
    800034c0:	02813483          	ld	s1,40(sp)
    800034c4:	02013903          	ld	s2,32(sp)
    800034c8:	01813983          	ld	s3,24(sp)
    800034cc:	01013a03          	ld	s4,16(sp)
    800034d0:	00813a83          	ld	s5,8(sp)
    800034d4:	00013b03          	ld	s6,0(sp)
    800034d8:	04010113          	addi	sp,sp,64
    800034dc:	00008067          	ret
    800034e0:	00002517          	auipc	a0,0x2
    800034e4:	d7850513          	addi	a0,a0,-648 # 80005258 <digits+0x18>
    800034e8:	fffff097          	auipc	ra,0xfffff
    800034ec:	3d4080e7          	jalr	980(ra) # 800028bc <panic>

00000000800034f0 <kfree>:
    800034f0:	fe010113          	addi	sp,sp,-32
    800034f4:	00813823          	sd	s0,16(sp)
    800034f8:	00113c23          	sd	ra,24(sp)
    800034fc:	00913423          	sd	s1,8(sp)
    80003500:	02010413          	addi	s0,sp,32
    80003504:	03451793          	slli	a5,a0,0x34
    80003508:	04079c63          	bnez	a5,80003560 <kfree+0x70>
    8000350c:	00003797          	auipc	a5,0x3
    80003510:	56478793          	addi	a5,a5,1380 # 80006a70 <end>
    80003514:	00050493          	mv	s1,a0
    80003518:	04f56463          	bltu	a0,a5,80003560 <kfree+0x70>
    8000351c:	01100793          	li	a5,17
    80003520:	01b79793          	slli	a5,a5,0x1b
    80003524:	02f57e63          	bgeu	a0,a5,80003560 <kfree+0x70>
    80003528:	00001637          	lui	a2,0x1
    8000352c:	00100593          	li	a1,1
    80003530:	00000097          	auipc	ra,0x0
    80003534:	478080e7          	jalr	1144(ra) # 800039a8 <__memset>
    80003538:	00002797          	auipc	a5,0x2
    8000353c:	29878793          	addi	a5,a5,664 # 800057d0 <kmem>
    80003540:	0007b703          	ld	a4,0(a5)
    80003544:	01813083          	ld	ra,24(sp)
    80003548:	01013403          	ld	s0,16(sp)
    8000354c:	00e4b023          	sd	a4,0(s1)
    80003550:	0097b023          	sd	s1,0(a5)
    80003554:	00813483          	ld	s1,8(sp)
    80003558:	02010113          	addi	sp,sp,32
    8000355c:	00008067          	ret
    80003560:	00002517          	auipc	a0,0x2
    80003564:	cf850513          	addi	a0,a0,-776 # 80005258 <digits+0x18>
    80003568:	fffff097          	auipc	ra,0xfffff
    8000356c:	354080e7          	jalr	852(ra) # 800028bc <panic>

0000000080003570 <kalloc>:
    80003570:	fe010113          	addi	sp,sp,-32
    80003574:	00813823          	sd	s0,16(sp)
    80003578:	00913423          	sd	s1,8(sp)
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	02010413          	addi	s0,sp,32
    80003584:	00002797          	auipc	a5,0x2
    80003588:	24c78793          	addi	a5,a5,588 # 800057d0 <kmem>
    8000358c:	0007b483          	ld	s1,0(a5)
    80003590:	02048063          	beqz	s1,800035b0 <kalloc+0x40>
    80003594:	0004b703          	ld	a4,0(s1)
    80003598:	00001637          	lui	a2,0x1
    8000359c:	00500593          	li	a1,5
    800035a0:	00048513          	mv	a0,s1
    800035a4:	00e7b023          	sd	a4,0(a5)
    800035a8:	00000097          	auipc	ra,0x0
    800035ac:	400080e7          	jalr	1024(ra) # 800039a8 <__memset>
    800035b0:	01813083          	ld	ra,24(sp)
    800035b4:	01013403          	ld	s0,16(sp)
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00813483          	ld	s1,8(sp)
    800035c0:	02010113          	addi	sp,sp,32
    800035c4:	00008067          	ret

00000000800035c8 <initlock>:
    800035c8:	ff010113          	addi	sp,sp,-16
    800035cc:	00813423          	sd	s0,8(sp)
    800035d0:	01010413          	addi	s0,sp,16
    800035d4:	00813403          	ld	s0,8(sp)
    800035d8:	00b53423          	sd	a1,8(a0)
    800035dc:	00052023          	sw	zero,0(a0)
    800035e0:	00053823          	sd	zero,16(a0)
    800035e4:	01010113          	addi	sp,sp,16
    800035e8:	00008067          	ret

00000000800035ec <acquire>:
    800035ec:	fe010113          	addi	sp,sp,-32
    800035f0:	00813823          	sd	s0,16(sp)
    800035f4:	00913423          	sd	s1,8(sp)
    800035f8:	00113c23          	sd	ra,24(sp)
    800035fc:	01213023          	sd	s2,0(sp)
    80003600:	02010413          	addi	s0,sp,32
    80003604:	00050493          	mv	s1,a0
    80003608:	10002973          	csrr	s2,sstatus
    8000360c:	100027f3          	csrr	a5,sstatus
    80003610:	ffd7f793          	andi	a5,a5,-3
    80003614:	10079073          	csrw	sstatus,a5
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	8ec080e7          	jalr	-1812(ra) # 80001f04 <mycpu>
    80003620:	07852783          	lw	a5,120(a0)
    80003624:	06078e63          	beqz	a5,800036a0 <acquire+0xb4>
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	8dc080e7          	jalr	-1828(ra) # 80001f04 <mycpu>
    80003630:	07852783          	lw	a5,120(a0)
    80003634:	0004a703          	lw	a4,0(s1)
    80003638:	0017879b          	addiw	a5,a5,1
    8000363c:	06f52c23          	sw	a5,120(a0)
    80003640:	04071063          	bnez	a4,80003680 <acquire+0x94>
    80003644:	00100713          	li	a4,1
    80003648:	00070793          	mv	a5,a4
    8000364c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003650:	0007879b          	sext.w	a5,a5
    80003654:	fe079ae3          	bnez	a5,80003648 <acquire+0x5c>
    80003658:	0ff0000f          	fence
    8000365c:	fffff097          	auipc	ra,0xfffff
    80003660:	8a8080e7          	jalr	-1880(ra) # 80001f04 <mycpu>
    80003664:	01813083          	ld	ra,24(sp)
    80003668:	01013403          	ld	s0,16(sp)
    8000366c:	00a4b823          	sd	a0,16(s1)
    80003670:	00013903          	ld	s2,0(sp)
    80003674:	00813483          	ld	s1,8(sp)
    80003678:	02010113          	addi	sp,sp,32
    8000367c:	00008067          	ret
    80003680:	0104b903          	ld	s2,16(s1)
    80003684:	fffff097          	auipc	ra,0xfffff
    80003688:	880080e7          	jalr	-1920(ra) # 80001f04 <mycpu>
    8000368c:	faa91ce3          	bne	s2,a0,80003644 <acquire+0x58>
    80003690:	00002517          	auipc	a0,0x2
    80003694:	bd050513          	addi	a0,a0,-1072 # 80005260 <digits+0x20>
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	224080e7          	jalr	548(ra) # 800028bc <panic>
    800036a0:	00195913          	srli	s2,s2,0x1
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	860080e7          	jalr	-1952(ra) # 80001f04 <mycpu>
    800036ac:	00197913          	andi	s2,s2,1
    800036b0:	07252e23          	sw	s2,124(a0)
    800036b4:	f75ff06f          	j	80003628 <acquire+0x3c>

00000000800036b8 <release>:
    800036b8:	fe010113          	addi	sp,sp,-32
    800036bc:	00813823          	sd	s0,16(sp)
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	01213023          	sd	s2,0(sp)
    800036cc:	02010413          	addi	s0,sp,32
    800036d0:	00052783          	lw	a5,0(a0)
    800036d4:	00079a63          	bnez	a5,800036e8 <release+0x30>
    800036d8:	00002517          	auipc	a0,0x2
    800036dc:	b9050513          	addi	a0,a0,-1136 # 80005268 <digits+0x28>
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	1dc080e7          	jalr	476(ra) # 800028bc <panic>
    800036e8:	01053903          	ld	s2,16(a0)
    800036ec:	00050493          	mv	s1,a0
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	814080e7          	jalr	-2028(ra) # 80001f04 <mycpu>
    800036f8:	fea910e3          	bne	s2,a0,800036d8 <release+0x20>
    800036fc:	0004b823          	sd	zero,16(s1)
    80003700:	0ff0000f          	fence
    80003704:	0f50000f          	fence	iorw,ow
    80003708:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	7f8080e7          	jalr	2040(ra) # 80001f04 <mycpu>
    80003714:	100027f3          	csrr	a5,sstatus
    80003718:	0027f793          	andi	a5,a5,2
    8000371c:	04079a63          	bnez	a5,80003770 <release+0xb8>
    80003720:	07852783          	lw	a5,120(a0)
    80003724:	02f05e63          	blez	a5,80003760 <release+0xa8>
    80003728:	fff7871b          	addiw	a4,a5,-1
    8000372c:	06e52c23          	sw	a4,120(a0)
    80003730:	00071c63          	bnez	a4,80003748 <release+0x90>
    80003734:	07c52783          	lw	a5,124(a0)
    80003738:	00078863          	beqz	a5,80003748 <release+0x90>
    8000373c:	100027f3          	csrr	a5,sstatus
    80003740:	0027e793          	ori	a5,a5,2
    80003744:	10079073          	csrw	sstatus,a5
    80003748:	01813083          	ld	ra,24(sp)
    8000374c:	01013403          	ld	s0,16(sp)
    80003750:	00813483          	ld	s1,8(sp)
    80003754:	00013903          	ld	s2,0(sp)
    80003758:	02010113          	addi	sp,sp,32
    8000375c:	00008067          	ret
    80003760:	00002517          	auipc	a0,0x2
    80003764:	b2850513          	addi	a0,a0,-1240 # 80005288 <digits+0x48>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	154080e7          	jalr	340(ra) # 800028bc <panic>
    80003770:	00002517          	auipc	a0,0x2
    80003774:	b0050513          	addi	a0,a0,-1280 # 80005270 <digits+0x30>
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	144080e7          	jalr	324(ra) # 800028bc <panic>

0000000080003780 <holding>:
    80003780:	00052783          	lw	a5,0(a0)
    80003784:	00079663          	bnez	a5,80003790 <holding+0x10>
    80003788:	00000513          	li	a0,0
    8000378c:	00008067          	ret
    80003790:	fe010113          	addi	sp,sp,-32
    80003794:	00813823          	sd	s0,16(sp)
    80003798:	00913423          	sd	s1,8(sp)
    8000379c:	00113c23          	sd	ra,24(sp)
    800037a0:	02010413          	addi	s0,sp,32
    800037a4:	01053483          	ld	s1,16(a0)
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	75c080e7          	jalr	1884(ra) # 80001f04 <mycpu>
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	40a48533          	sub	a0,s1,a0
    800037bc:	00153513          	seqz	a0,a0
    800037c0:	00813483          	ld	s1,8(sp)
    800037c4:	02010113          	addi	sp,sp,32
    800037c8:	00008067          	ret

00000000800037cc <push_off>:
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00813823          	sd	s0,16(sp)
    800037d4:	00113c23          	sd	ra,24(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	02010413          	addi	s0,sp,32
    800037e0:	100024f3          	csrr	s1,sstatus
    800037e4:	100027f3          	csrr	a5,sstatus
    800037e8:	ffd7f793          	andi	a5,a5,-3
    800037ec:	10079073          	csrw	sstatus,a5
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	714080e7          	jalr	1812(ra) # 80001f04 <mycpu>
    800037f8:	07852783          	lw	a5,120(a0)
    800037fc:	02078663          	beqz	a5,80003828 <push_off+0x5c>
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	704080e7          	jalr	1796(ra) # 80001f04 <mycpu>
    80003808:	07852783          	lw	a5,120(a0)
    8000380c:	01813083          	ld	ra,24(sp)
    80003810:	01013403          	ld	s0,16(sp)
    80003814:	0017879b          	addiw	a5,a5,1
    80003818:	06f52c23          	sw	a5,120(a0)
    8000381c:	00813483          	ld	s1,8(sp)
    80003820:	02010113          	addi	sp,sp,32
    80003824:	00008067          	ret
    80003828:	0014d493          	srli	s1,s1,0x1
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	6d8080e7          	jalr	1752(ra) # 80001f04 <mycpu>
    80003834:	0014f493          	andi	s1,s1,1
    80003838:	06952e23          	sw	s1,124(a0)
    8000383c:	fc5ff06f          	j	80003800 <push_off+0x34>

0000000080003840 <pop_off>:
    80003840:	ff010113          	addi	sp,sp,-16
    80003844:	00813023          	sd	s0,0(sp)
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	01010413          	addi	s0,sp,16
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	6b4080e7          	jalr	1716(ra) # 80001f04 <mycpu>
    80003858:	100027f3          	csrr	a5,sstatus
    8000385c:	0027f793          	andi	a5,a5,2
    80003860:	04079663          	bnez	a5,800038ac <pop_off+0x6c>
    80003864:	07852783          	lw	a5,120(a0)
    80003868:	02f05a63          	blez	a5,8000389c <pop_off+0x5c>
    8000386c:	fff7871b          	addiw	a4,a5,-1
    80003870:	06e52c23          	sw	a4,120(a0)
    80003874:	00071c63          	bnez	a4,8000388c <pop_off+0x4c>
    80003878:	07c52783          	lw	a5,124(a0)
    8000387c:	00078863          	beqz	a5,8000388c <pop_off+0x4c>
    80003880:	100027f3          	csrr	a5,sstatus
    80003884:	0027e793          	ori	a5,a5,2
    80003888:	10079073          	csrw	sstatus,a5
    8000388c:	00813083          	ld	ra,8(sp)
    80003890:	00013403          	ld	s0,0(sp)
    80003894:	01010113          	addi	sp,sp,16
    80003898:	00008067          	ret
    8000389c:	00002517          	auipc	a0,0x2
    800038a0:	9ec50513          	addi	a0,a0,-1556 # 80005288 <digits+0x48>
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	018080e7          	jalr	24(ra) # 800028bc <panic>
    800038ac:	00002517          	auipc	a0,0x2
    800038b0:	9c450513          	addi	a0,a0,-1596 # 80005270 <digits+0x30>
    800038b4:	fffff097          	auipc	ra,0xfffff
    800038b8:	008080e7          	jalr	8(ra) # 800028bc <panic>

00000000800038bc <push_on>:
    800038bc:	fe010113          	addi	sp,sp,-32
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00113c23          	sd	ra,24(sp)
    800038c8:	00913423          	sd	s1,8(sp)
    800038cc:	02010413          	addi	s0,sp,32
    800038d0:	100024f3          	csrr	s1,sstatus
    800038d4:	100027f3          	csrr	a5,sstatus
    800038d8:	0027e793          	ori	a5,a5,2
    800038dc:	10079073          	csrw	sstatus,a5
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	624080e7          	jalr	1572(ra) # 80001f04 <mycpu>
    800038e8:	07852783          	lw	a5,120(a0)
    800038ec:	02078663          	beqz	a5,80003918 <push_on+0x5c>
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	614080e7          	jalr	1556(ra) # 80001f04 <mycpu>
    800038f8:	07852783          	lw	a5,120(a0)
    800038fc:	01813083          	ld	ra,24(sp)
    80003900:	01013403          	ld	s0,16(sp)
    80003904:	0017879b          	addiw	a5,a5,1
    80003908:	06f52c23          	sw	a5,120(a0)
    8000390c:	00813483          	ld	s1,8(sp)
    80003910:	02010113          	addi	sp,sp,32
    80003914:	00008067          	ret
    80003918:	0014d493          	srli	s1,s1,0x1
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	5e8080e7          	jalr	1512(ra) # 80001f04 <mycpu>
    80003924:	0014f493          	andi	s1,s1,1
    80003928:	06952e23          	sw	s1,124(a0)
    8000392c:	fc5ff06f          	j	800038f0 <push_on+0x34>

0000000080003930 <pop_on>:
    80003930:	ff010113          	addi	sp,sp,-16
    80003934:	00813023          	sd	s0,0(sp)
    80003938:	00113423          	sd	ra,8(sp)
    8000393c:	01010413          	addi	s0,sp,16
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	5c4080e7          	jalr	1476(ra) # 80001f04 <mycpu>
    80003948:	100027f3          	csrr	a5,sstatus
    8000394c:	0027f793          	andi	a5,a5,2
    80003950:	04078463          	beqz	a5,80003998 <pop_on+0x68>
    80003954:	07852783          	lw	a5,120(a0)
    80003958:	02f05863          	blez	a5,80003988 <pop_on+0x58>
    8000395c:	fff7879b          	addiw	a5,a5,-1
    80003960:	06f52c23          	sw	a5,120(a0)
    80003964:	07853783          	ld	a5,120(a0)
    80003968:	00079863          	bnez	a5,80003978 <pop_on+0x48>
    8000396c:	100027f3          	csrr	a5,sstatus
    80003970:	ffd7f793          	andi	a5,a5,-3
    80003974:	10079073          	csrw	sstatus,a5
    80003978:	00813083          	ld	ra,8(sp)
    8000397c:	00013403          	ld	s0,0(sp)
    80003980:	01010113          	addi	sp,sp,16
    80003984:	00008067          	ret
    80003988:	00002517          	auipc	a0,0x2
    8000398c:	92850513          	addi	a0,a0,-1752 # 800052b0 <digits+0x70>
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	f2c080e7          	jalr	-212(ra) # 800028bc <panic>
    80003998:	00002517          	auipc	a0,0x2
    8000399c:	8f850513          	addi	a0,a0,-1800 # 80005290 <digits+0x50>
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	f1c080e7          	jalr	-228(ra) # 800028bc <panic>

00000000800039a8 <__memset>:
    800039a8:	ff010113          	addi	sp,sp,-16
    800039ac:	00813423          	sd	s0,8(sp)
    800039b0:	01010413          	addi	s0,sp,16
    800039b4:	1a060e63          	beqz	a2,80003b70 <__memset+0x1c8>
    800039b8:	40a007b3          	neg	a5,a0
    800039bc:	0077f793          	andi	a5,a5,7
    800039c0:	00778693          	addi	a3,a5,7
    800039c4:	00b00813          	li	a6,11
    800039c8:	0ff5f593          	andi	a1,a1,255
    800039cc:	fff6071b          	addiw	a4,a2,-1
    800039d0:	1b06e663          	bltu	a3,a6,80003b7c <__memset+0x1d4>
    800039d4:	1cd76463          	bltu	a4,a3,80003b9c <__memset+0x1f4>
    800039d8:	1a078e63          	beqz	a5,80003b94 <__memset+0x1ec>
    800039dc:	00b50023          	sb	a1,0(a0)
    800039e0:	00100713          	li	a4,1
    800039e4:	1ae78463          	beq	a5,a4,80003b8c <__memset+0x1e4>
    800039e8:	00b500a3          	sb	a1,1(a0)
    800039ec:	00200713          	li	a4,2
    800039f0:	1ae78a63          	beq	a5,a4,80003ba4 <__memset+0x1fc>
    800039f4:	00b50123          	sb	a1,2(a0)
    800039f8:	00300713          	li	a4,3
    800039fc:	18e78463          	beq	a5,a4,80003b84 <__memset+0x1dc>
    80003a00:	00b501a3          	sb	a1,3(a0)
    80003a04:	00400713          	li	a4,4
    80003a08:	1ae78263          	beq	a5,a4,80003bac <__memset+0x204>
    80003a0c:	00b50223          	sb	a1,4(a0)
    80003a10:	00500713          	li	a4,5
    80003a14:	1ae78063          	beq	a5,a4,80003bb4 <__memset+0x20c>
    80003a18:	00b502a3          	sb	a1,5(a0)
    80003a1c:	00700713          	li	a4,7
    80003a20:	18e79e63          	bne	a5,a4,80003bbc <__memset+0x214>
    80003a24:	00b50323          	sb	a1,6(a0)
    80003a28:	00700e93          	li	t4,7
    80003a2c:	00859713          	slli	a4,a1,0x8
    80003a30:	00e5e733          	or	a4,a1,a4
    80003a34:	01059e13          	slli	t3,a1,0x10
    80003a38:	01c76e33          	or	t3,a4,t3
    80003a3c:	01859313          	slli	t1,a1,0x18
    80003a40:	006e6333          	or	t1,t3,t1
    80003a44:	02059893          	slli	a7,a1,0x20
    80003a48:	40f60e3b          	subw	t3,a2,a5
    80003a4c:	011368b3          	or	a7,t1,a7
    80003a50:	02859813          	slli	a6,a1,0x28
    80003a54:	0108e833          	or	a6,a7,a6
    80003a58:	03059693          	slli	a3,a1,0x30
    80003a5c:	003e589b          	srliw	a7,t3,0x3
    80003a60:	00d866b3          	or	a3,a6,a3
    80003a64:	03859713          	slli	a4,a1,0x38
    80003a68:	00389813          	slli	a6,a7,0x3
    80003a6c:	00f507b3          	add	a5,a0,a5
    80003a70:	00e6e733          	or	a4,a3,a4
    80003a74:	000e089b          	sext.w	a7,t3
    80003a78:	00f806b3          	add	a3,a6,a5
    80003a7c:	00e7b023          	sd	a4,0(a5)
    80003a80:	00878793          	addi	a5,a5,8
    80003a84:	fed79ce3          	bne	a5,a3,80003a7c <__memset+0xd4>
    80003a88:	ff8e7793          	andi	a5,t3,-8
    80003a8c:	0007871b          	sext.w	a4,a5
    80003a90:	01d787bb          	addw	a5,a5,t4
    80003a94:	0ce88e63          	beq	a7,a4,80003b70 <__memset+0x1c8>
    80003a98:	00f50733          	add	a4,a0,a5
    80003a9c:	00b70023          	sb	a1,0(a4)
    80003aa0:	0017871b          	addiw	a4,a5,1
    80003aa4:	0cc77663          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003aa8:	00e50733          	add	a4,a0,a4
    80003aac:	00b70023          	sb	a1,0(a4)
    80003ab0:	0027871b          	addiw	a4,a5,2
    80003ab4:	0ac77e63          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003ab8:	00e50733          	add	a4,a0,a4
    80003abc:	00b70023          	sb	a1,0(a4)
    80003ac0:	0037871b          	addiw	a4,a5,3
    80003ac4:	0ac77663          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003ac8:	00e50733          	add	a4,a0,a4
    80003acc:	00b70023          	sb	a1,0(a4)
    80003ad0:	0047871b          	addiw	a4,a5,4
    80003ad4:	08c77e63          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003ad8:	00e50733          	add	a4,a0,a4
    80003adc:	00b70023          	sb	a1,0(a4)
    80003ae0:	0057871b          	addiw	a4,a5,5
    80003ae4:	08c77663          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003ae8:	00e50733          	add	a4,a0,a4
    80003aec:	00b70023          	sb	a1,0(a4)
    80003af0:	0067871b          	addiw	a4,a5,6
    80003af4:	06c77e63          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003af8:	00e50733          	add	a4,a0,a4
    80003afc:	00b70023          	sb	a1,0(a4)
    80003b00:	0077871b          	addiw	a4,a5,7
    80003b04:	06c77663          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003b08:	00e50733          	add	a4,a0,a4
    80003b0c:	00b70023          	sb	a1,0(a4)
    80003b10:	0087871b          	addiw	a4,a5,8
    80003b14:	04c77e63          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003b18:	00e50733          	add	a4,a0,a4
    80003b1c:	00b70023          	sb	a1,0(a4)
    80003b20:	0097871b          	addiw	a4,a5,9
    80003b24:	04c77663          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003b28:	00e50733          	add	a4,a0,a4
    80003b2c:	00b70023          	sb	a1,0(a4)
    80003b30:	00a7871b          	addiw	a4,a5,10
    80003b34:	02c77e63          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003b38:	00e50733          	add	a4,a0,a4
    80003b3c:	00b70023          	sb	a1,0(a4)
    80003b40:	00b7871b          	addiw	a4,a5,11
    80003b44:	02c77663          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003b48:	00e50733          	add	a4,a0,a4
    80003b4c:	00b70023          	sb	a1,0(a4)
    80003b50:	00c7871b          	addiw	a4,a5,12
    80003b54:	00c77e63          	bgeu	a4,a2,80003b70 <__memset+0x1c8>
    80003b58:	00e50733          	add	a4,a0,a4
    80003b5c:	00b70023          	sb	a1,0(a4)
    80003b60:	00d7879b          	addiw	a5,a5,13
    80003b64:	00c7f663          	bgeu	a5,a2,80003b70 <__memset+0x1c8>
    80003b68:	00f507b3          	add	a5,a0,a5
    80003b6c:	00b78023          	sb	a1,0(a5)
    80003b70:	00813403          	ld	s0,8(sp)
    80003b74:	01010113          	addi	sp,sp,16
    80003b78:	00008067          	ret
    80003b7c:	00b00693          	li	a3,11
    80003b80:	e55ff06f          	j	800039d4 <__memset+0x2c>
    80003b84:	00300e93          	li	t4,3
    80003b88:	ea5ff06f          	j	80003a2c <__memset+0x84>
    80003b8c:	00100e93          	li	t4,1
    80003b90:	e9dff06f          	j	80003a2c <__memset+0x84>
    80003b94:	00000e93          	li	t4,0
    80003b98:	e95ff06f          	j	80003a2c <__memset+0x84>
    80003b9c:	00000793          	li	a5,0
    80003ba0:	ef9ff06f          	j	80003a98 <__memset+0xf0>
    80003ba4:	00200e93          	li	t4,2
    80003ba8:	e85ff06f          	j	80003a2c <__memset+0x84>
    80003bac:	00400e93          	li	t4,4
    80003bb0:	e7dff06f          	j	80003a2c <__memset+0x84>
    80003bb4:	00500e93          	li	t4,5
    80003bb8:	e75ff06f          	j	80003a2c <__memset+0x84>
    80003bbc:	00600e93          	li	t4,6
    80003bc0:	e6dff06f          	j	80003a2c <__memset+0x84>

0000000080003bc4 <__memmove>:
    80003bc4:	ff010113          	addi	sp,sp,-16
    80003bc8:	00813423          	sd	s0,8(sp)
    80003bcc:	01010413          	addi	s0,sp,16
    80003bd0:	0e060863          	beqz	a2,80003cc0 <__memmove+0xfc>
    80003bd4:	fff6069b          	addiw	a3,a2,-1
    80003bd8:	0006881b          	sext.w	a6,a3
    80003bdc:	0ea5e863          	bltu	a1,a0,80003ccc <__memmove+0x108>
    80003be0:	00758713          	addi	a4,a1,7
    80003be4:	00a5e7b3          	or	a5,a1,a0
    80003be8:	40a70733          	sub	a4,a4,a0
    80003bec:	0077f793          	andi	a5,a5,7
    80003bf0:	00f73713          	sltiu	a4,a4,15
    80003bf4:	00174713          	xori	a4,a4,1
    80003bf8:	0017b793          	seqz	a5,a5
    80003bfc:	00e7f7b3          	and	a5,a5,a4
    80003c00:	10078863          	beqz	a5,80003d10 <__memmove+0x14c>
    80003c04:	00900793          	li	a5,9
    80003c08:	1107f463          	bgeu	a5,a6,80003d10 <__memmove+0x14c>
    80003c0c:	0036581b          	srliw	a6,a2,0x3
    80003c10:	fff8081b          	addiw	a6,a6,-1
    80003c14:	02081813          	slli	a6,a6,0x20
    80003c18:	01d85893          	srli	a7,a6,0x1d
    80003c1c:	00858813          	addi	a6,a1,8
    80003c20:	00058793          	mv	a5,a1
    80003c24:	00050713          	mv	a4,a0
    80003c28:	01088833          	add	a6,a7,a6
    80003c2c:	0007b883          	ld	a7,0(a5)
    80003c30:	00878793          	addi	a5,a5,8
    80003c34:	00870713          	addi	a4,a4,8
    80003c38:	ff173c23          	sd	a7,-8(a4)
    80003c3c:	ff0798e3          	bne	a5,a6,80003c2c <__memmove+0x68>
    80003c40:	ff867713          	andi	a4,a2,-8
    80003c44:	02071793          	slli	a5,a4,0x20
    80003c48:	0207d793          	srli	a5,a5,0x20
    80003c4c:	00f585b3          	add	a1,a1,a5
    80003c50:	40e686bb          	subw	a3,a3,a4
    80003c54:	00f507b3          	add	a5,a0,a5
    80003c58:	06e60463          	beq	a2,a4,80003cc0 <__memmove+0xfc>
    80003c5c:	0005c703          	lbu	a4,0(a1)
    80003c60:	00e78023          	sb	a4,0(a5)
    80003c64:	04068e63          	beqz	a3,80003cc0 <__memmove+0xfc>
    80003c68:	0015c603          	lbu	a2,1(a1)
    80003c6c:	00100713          	li	a4,1
    80003c70:	00c780a3          	sb	a2,1(a5)
    80003c74:	04e68663          	beq	a3,a4,80003cc0 <__memmove+0xfc>
    80003c78:	0025c603          	lbu	a2,2(a1)
    80003c7c:	00200713          	li	a4,2
    80003c80:	00c78123          	sb	a2,2(a5)
    80003c84:	02e68e63          	beq	a3,a4,80003cc0 <__memmove+0xfc>
    80003c88:	0035c603          	lbu	a2,3(a1)
    80003c8c:	00300713          	li	a4,3
    80003c90:	00c781a3          	sb	a2,3(a5)
    80003c94:	02e68663          	beq	a3,a4,80003cc0 <__memmove+0xfc>
    80003c98:	0045c603          	lbu	a2,4(a1)
    80003c9c:	00400713          	li	a4,4
    80003ca0:	00c78223          	sb	a2,4(a5)
    80003ca4:	00e68e63          	beq	a3,a4,80003cc0 <__memmove+0xfc>
    80003ca8:	0055c603          	lbu	a2,5(a1)
    80003cac:	00500713          	li	a4,5
    80003cb0:	00c782a3          	sb	a2,5(a5)
    80003cb4:	00e68663          	beq	a3,a4,80003cc0 <__memmove+0xfc>
    80003cb8:	0065c703          	lbu	a4,6(a1)
    80003cbc:	00e78323          	sb	a4,6(a5)
    80003cc0:	00813403          	ld	s0,8(sp)
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00008067          	ret
    80003ccc:	02061713          	slli	a4,a2,0x20
    80003cd0:	02075713          	srli	a4,a4,0x20
    80003cd4:	00e587b3          	add	a5,a1,a4
    80003cd8:	f0f574e3          	bgeu	a0,a5,80003be0 <__memmove+0x1c>
    80003cdc:	02069613          	slli	a2,a3,0x20
    80003ce0:	02065613          	srli	a2,a2,0x20
    80003ce4:	fff64613          	not	a2,a2
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00c78633          	add	a2,a5,a2
    80003cf0:	fff7c683          	lbu	a3,-1(a5)
    80003cf4:	fff78793          	addi	a5,a5,-1
    80003cf8:	fff70713          	addi	a4,a4,-1
    80003cfc:	00d70023          	sb	a3,0(a4)
    80003d00:	fec798e3          	bne	a5,a2,80003cf0 <__memmove+0x12c>
    80003d04:	00813403          	ld	s0,8(sp)
    80003d08:	01010113          	addi	sp,sp,16
    80003d0c:	00008067          	ret
    80003d10:	02069713          	slli	a4,a3,0x20
    80003d14:	02075713          	srli	a4,a4,0x20
    80003d18:	00170713          	addi	a4,a4,1
    80003d1c:	00e50733          	add	a4,a0,a4
    80003d20:	00050793          	mv	a5,a0
    80003d24:	0005c683          	lbu	a3,0(a1)
    80003d28:	00178793          	addi	a5,a5,1
    80003d2c:	00158593          	addi	a1,a1,1
    80003d30:	fed78fa3          	sb	a3,-1(a5)
    80003d34:	fee798e3          	bne	a5,a4,80003d24 <__memmove+0x160>
    80003d38:	f89ff06f          	j	80003cc0 <__memmove+0xfc>

0000000080003d3c <__mem_free>:
    80003d3c:	ff010113          	addi	sp,sp,-16
    80003d40:	00813423          	sd	s0,8(sp)
    80003d44:	01010413          	addi	s0,sp,16
    80003d48:	00002597          	auipc	a1,0x2
    80003d4c:	a9058593          	addi	a1,a1,-1392 # 800057d8 <freep>
    80003d50:	0005b783          	ld	a5,0(a1)
    80003d54:	ff050693          	addi	a3,a0,-16
    80003d58:	0007b703          	ld	a4,0(a5)
    80003d5c:	00d7fc63          	bgeu	a5,a3,80003d74 <__mem_free+0x38>
    80003d60:	00e6ee63          	bltu	a3,a4,80003d7c <__mem_free+0x40>
    80003d64:	00e7fc63          	bgeu	a5,a4,80003d7c <__mem_free+0x40>
    80003d68:	00070793          	mv	a5,a4
    80003d6c:	0007b703          	ld	a4,0(a5)
    80003d70:	fed7e8e3          	bltu	a5,a3,80003d60 <__mem_free+0x24>
    80003d74:	fee7eae3          	bltu	a5,a4,80003d68 <__mem_free+0x2c>
    80003d78:	fee6f8e3          	bgeu	a3,a4,80003d68 <__mem_free+0x2c>
    80003d7c:	ff852803          	lw	a6,-8(a0)
    80003d80:	02081613          	slli	a2,a6,0x20
    80003d84:	01c65613          	srli	a2,a2,0x1c
    80003d88:	00c68633          	add	a2,a3,a2
    80003d8c:	02c70a63          	beq	a4,a2,80003dc0 <__mem_free+0x84>
    80003d90:	fee53823          	sd	a4,-16(a0)
    80003d94:	0087a503          	lw	a0,8(a5)
    80003d98:	02051613          	slli	a2,a0,0x20
    80003d9c:	01c65613          	srli	a2,a2,0x1c
    80003da0:	00c78633          	add	a2,a5,a2
    80003da4:	04c68263          	beq	a3,a2,80003de8 <__mem_free+0xac>
    80003da8:	00813403          	ld	s0,8(sp)
    80003dac:	00d7b023          	sd	a3,0(a5)
    80003db0:	00f5b023          	sd	a5,0(a1)
    80003db4:	00000513          	li	a0,0
    80003db8:	01010113          	addi	sp,sp,16
    80003dbc:	00008067          	ret
    80003dc0:	00872603          	lw	a2,8(a4)
    80003dc4:	00073703          	ld	a4,0(a4)
    80003dc8:	0106083b          	addw	a6,a2,a6
    80003dcc:	ff052c23          	sw	a6,-8(a0)
    80003dd0:	fee53823          	sd	a4,-16(a0)
    80003dd4:	0087a503          	lw	a0,8(a5)
    80003dd8:	02051613          	slli	a2,a0,0x20
    80003ddc:	01c65613          	srli	a2,a2,0x1c
    80003de0:	00c78633          	add	a2,a5,a2
    80003de4:	fcc692e3          	bne	a3,a2,80003da8 <__mem_free+0x6c>
    80003de8:	00813403          	ld	s0,8(sp)
    80003dec:	0105053b          	addw	a0,a0,a6
    80003df0:	00a7a423          	sw	a0,8(a5)
    80003df4:	00e7b023          	sd	a4,0(a5)
    80003df8:	00f5b023          	sd	a5,0(a1)
    80003dfc:	00000513          	li	a0,0
    80003e00:	01010113          	addi	sp,sp,16
    80003e04:	00008067          	ret

0000000080003e08 <__mem_alloc>:
    80003e08:	fc010113          	addi	sp,sp,-64
    80003e0c:	02813823          	sd	s0,48(sp)
    80003e10:	02913423          	sd	s1,40(sp)
    80003e14:	03213023          	sd	s2,32(sp)
    80003e18:	01513423          	sd	s5,8(sp)
    80003e1c:	02113c23          	sd	ra,56(sp)
    80003e20:	01313c23          	sd	s3,24(sp)
    80003e24:	01413823          	sd	s4,16(sp)
    80003e28:	01613023          	sd	s6,0(sp)
    80003e2c:	04010413          	addi	s0,sp,64
    80003e30:	00002a97          	auipc	s5,0x2
    80003e34:	9a8a8a93          	addi	s5,s5,-1624 # 800057d8 <freep>
    80003e38:	00f50913          	addi	s2,a0,15
    80003e3c:	000ab683          	ld	a3,0(s5)
    80003e40:	00495913          	srli	s2,s2,0x4
    80003e44:	0019049b          	addiw	s1,s2,1
    80003e48:	00048913          	mv	s2,s1
    80003e4c:	0c068c63          	beqz	a3,80003f24 <__mem_alloc+0x11c>
    80003e50:	0006b503          	ld	a0,0(a3)
    80003e54:	00852703          	lw	a4,8(a0)
    80003e58:	10977063          	bgeu	a4,s1,80003f58 <__mem_alloc+0x150>
    80003e5c:	000017b7          	lui	a5,0x1
    80003e60:	0009099b          	sext.w	s3,s2
    80003e64:	0af4e863          	bltu	s1,a5,80003f14 <__mem_alloc+0x10c>
    80003e68:	02099a13          	slli	s4,s3,0x20
    80003e6c:	01ca5a13          	srli	s4,s4,0x1c
    80003e70:	fff00b13          	li	s6,-1
    80003e74:	0100006f          	j	80003e84 <__mem_alloc+0x7c>
    80003e78:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003e7c:	00852703          	lw	a4,8(a0)
    80003e80:	04977463          	bgeu	a4,s1,80003ec8 <__mem_alloc+0xc0>
    80003e84:	00050793          	mv	a5,a0
    80003e88:	fea698e3          	bne	a3,a0,80003e78 <__mem_alloc+0x70>
    80003e8c:	000a0513          	mv	a0,s4
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	1f0080e7          	jalr	496(ra) # 80004080 <kvmincrease>
    80003e98:	00050793          	mv	a5,a0
    80003e9c:	01050513          	addi	a0,a0,16
    80003ea0:	07678e63          	beq	a5,s6,80003f1c <__mem_alloc+0x114>
    80003ea4:	0137a423          	sw	s3,8(a5)
    80003ea8:	00000097          	auipc	ra,0x0
    80003eac:	e94080e7          	jalr	-364(ra) # 80003d3c <__mem_free>
    80003eb0:	000ab783          	ld	a5,0(s5)
    80003eb4:	06078463          	beqz	a5,80003f1c <__mem_alloc+0x114>
    80003eb8:	0007b503          	ld	a0,0(a5)
    80003ebc:	00078693          	mv	a3,a5
    80003ec0:	00852703          	lw	a4,8(a0)
    80003ec4:	fc9760e3          	bltu	a4,s1,80003e84 <__mem_alloc+0x7c>
    80003ec8:	08e48263          	beq	s1,a4,80003f4c <__mem_alloc+0x144>
    80003ecc:	4127073b          	subw	a4,a4,s2
    80003ed0:	02071693          	slli	a3,a4,0x20
    80003ed4:	01c6d693          	srli	a3,a3,0x1c
    80003ed8:	00e52423          	sw	a4,8(a0)
    80003edc:	00d50533          	add	a0,a0,a3
    80003ee0:	01252423          	sw	s2,8(a0)
    80003ee4:	00fab023          	sd	a5,0(s5)
    80003ee8:	01050513          	addi	a0,a0,16
    80003eec:	03813083          	ld	ra,56(sp)
    80003ef0:	03013403          	ld	s0,48(sp)
    80003ef4:	02813483          	ld	s1,40(sp)
    80003ef8:	02013903          	ld	s2,32(sp)
    80003efc:	01813983          	ld	s3,24(sp)
    80003f00:	01013a03          	ld	s4,16(sp)
    80003f04:	00813a83          	ld	s5,8(sp)
    80003f08:	00013b03          	ld	s6,0(sp)
    80003f0c:	04010113          	addi	sp,sp,64
    80003f10:	00008067          	ret
    80003f14:	000019b7          	lui	s3,0x1
    80003f18:	f51ff06f          	j	80003e68 <__mem_alloc+0x60>
    80003f1c:	00000513          	li	a0,0
    80003f20:	fcdff06f          	j	80003eec <__mem_alloc+0xe4>
    80003f24:	00003797          	auipc	a5,0x3
    80003f28:	b3c78793          	addi	a5,a5,-1220 # 80006a60 <base>
    80003f2c:	00078513          	mv	a0,a5
    80003f30:	00fab023          	sd	a5,0(s5)
    80003f34:	00f7b023          	sd	a5,0(a5)
    80003f38:	00000713          	li	a4,0
    80003f3c:	00003797          	auipc	a5,0x3
    80003f40:	b207a623          	sw	zero,-1236(a5) # 80006a68 <base+0x8>
    80003f44:	00050693          	mv	a3,a0
    80003f48:	f11ff06f          	j	80003e58 <__mem_alloc+0x50>
    80003f4c:	00053703          	ld	a4,0(a0)
    80003f50:	00e7b023          	sd	a4,0(a5)
    80003f54:	f91ff06f          	j	80003ee4 <__mem_alloc+0xdc>
    80003f58:	00068793          	mv	a5,a3
    80003f5c:	f6dff06f          	j	80003ec8 <__mem_alloc+0xc0>

0000000080003f60 <__putc>:
    80003f60:	fe010113          	addi	sp,sp,-32
    80003f64:	00813823          	sd	s0,16(sp)
    80003f68:	00113c23          	sd	ra,24(sp)
    80003f6c:	02010413          	addi	s0,sp,32
    80003f70:	00050793          	mv	a5,a0
    80003f74:	fef40593          	addi	a1,s0,-17
    80003f78:	00100613          	li	a2,1
    80003f7c:	00000513          	li	a0,0
    80003f80:	fef407a3          	sb	a5,-17(s0)
    80003f84:	fffff097          	auipc	ra,0xfffff
    80003f88:	918080e7          	jalr	-1768(ra) # 8000289c <console_write>
    80003f8c:	01813083          	ld	ra,24(sp)
    80003f90:	01013403          	ld	s0,16(sp)
    80003f94:	02010113          	addi	sp,sp,32
    80003f98:	00008067          	ret

0000000080003f9c <__getc>:
    80003f9c:	fe010113          	addi	sp,sp,-32
    80003fa0:	00813823          	sd	s0,16(sp)
    80003fa4:	00113c23          	sd	ra,24(sp)
    80003fa8:	02010413          	addi	s0,sp,32
    80003fac:	fe840593          	addi	a1,s0,-24
    80003fb0:	00100613          	li	a2,1
    80003fb4:	00000513          	li	a0,0
    80003fb8:	fffff097          	auipc	ra,0xfffff
    80003fbc:	8c4080e7          	jalr	-1852(ra) # 8000287c <console_read>
    80003fc0:	fe844503          	lbu	a0,-24(s0)
    80003fc4:	01813083          	ld	ra,24(sp)
    80003fc8:	01013403          	ld	s0,16(sp)
    80003fcc:	02010113          	addi	sp,sp,32
    80003fd0:	00008067          	ret

0000000080003fd4 <console_handler>:
    80003fd4:	fe010113          	addi	sp,sp,-32
    80003fd8:	00813823          	sd	s0,16(sp)
    80003fdc:	00113c23          	sd	ra,24(sp)
    80003fe0:	00913423          	sd	s1,8(sp)
    80003fe4:	02010413          	addi	s0,sp,32
    80003fe8:	14202773          	csrr	a4,scause
    80003fec:	100027f3          	csrr	a5,sstatus
    80003ff0:	0027f793          	andi	a5,a5,2
    80003ff4:	06079e63          	bnez	a5,80004070 <console_handler+0x9c>
    80003ff8:	00074c63          	bltz	a4,80004010 <console_handler+0x3c>
    80003ffc:	01813083          	ld	ra,24(sp)
    80004000:	01013403          	ld	s0,16(sp)
    80004004:	00813483          	ld	s1,8(sp)
    80004008:	02010113          	addi	sp,sp,32
    8000400c:	00008067          	ret
    80004010:	0ff77713          	andi	a4,a4,255
    80004014:	00900793          	li	a5,9
    80004018:	fef712e3          	bne	a4,a5,80003ffc <console_handler+0x28>
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	4b8080e7          	jalr	1208(ra) # 800024d4 <plic_claim>
    80004024:	00a00793          	li	a5,10
    80004028:	00050493          	mv	s1,a0
    8000402c:	02f50c63          	beq	a0,a5,80004064 <console_handler+0x90>
    80004030:	fc0506e3          	beqz	a0,80003ffc <console_handler+0x28>
    80004034:	00050593          	mv	a1,a0
    80004038:	00001517          	auipc	a0,0x1
    8000403c:	18050513          	addi	a0,a0,384 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80004040:	fffff097          	auipc	ra,0xfffff
    80004044:	8d8080e7          	jalr	-1832(ra) # 80002918 <__printf>
    80004048:	01013403          	ld	s0,16(sp)
    8000404c:	01813083          	ld	ra,24(sp)
    80004050:	00048513          	mv	a0,s1
    80004054:	00813483          	ld	s1,8(sp)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	ffffe317          	auipc	t1,0xffffe
    80004060:	4b030067          	jr	1200(t1) # 8000250c <plic_complete>
    80004064:	fffff097          	auipc	ra,0xfffff
    80004068:	1bc080e7          	jalr	444(ra) # 80003220 <uartintr>
    8000406c:	fddff06f          	j	80004048 <console_handler+0x74>
    80004070:	00001517          	auipc	a0,0x1
    80004074:	24850513          	addi	a0,a0,584 # 800052b8 <digits+0x78>
    80004078:	fffff097          	auipc	ra,0xfffff
    8000407c:	844080e7          	jalr	-1980(ra) # 800028bc <panic>

0000000080004080 <kvmincrease>:
    80004080:	fe010113          	addi	sp,sp,-32
    80004084:	01213023          	sd	s2,0(sp)
    80004088:	00001937          	lui	s2,0x1
    8000408c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004090:	00813823          	sd	s0,16(sp)
    80004094:	00113c23          	sd	ra,24(sp)
    80004098:	00913423          	sd	s1,8(sp)
    8000409c:	02010413          	addi	s0,sp,32
    800040a0:	01250933          	add	s2,a0,s2
    800040a4:	00c95913          	srli	s2,s2,0xc
    800040a8:	02090863          	beqz	s2,800040d8 <kvmincrease+0x58>
    800040ac:	00000493          	li	s1,0
    800040b0:	00148493          	addi	s1,s1,1
    800040b4:	fffff097          	auipc	ra,0xfffff
    800040b8:	4bc080e7          	jalr	1212(ra) # 80003570 <kalloc>
    800040bc:	fe991ae3          	bne	s2,s1,800040b0 <kvmincrease+0x30>
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	00813483          	ld	s1,8(sp)
    800040cc:	00013903          	ld	s2,0(sp)
    800040d0:	02010113          	addi	sp,sp,32
    800040d4:	00008067          	ret
    800040d8:	01813083          	ld	ra,24(sp)
    800040dc:	01013403          	ld	s0,16(sp)
    800040e0:	00813483          	ld	s1,8(sp)
    800040e4:	00013903          	ld	s2,0(sp)
    800040e8:	00000513          	li	a0,0
    800040ec:	02010113          	addi	sp,sp,32
    800040f0:	00008067          	ret
	...
