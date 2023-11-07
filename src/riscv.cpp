//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.h"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{

    uint64 regA0 = readA0();
    uint64 volatile params[4];
    params[0] = readA1();
    params[1] = readA2();
    params[2] = readA3();
    params[3] = readA4();

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {

        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        // Nema prekida pozvan je ecall u sistemmskom ili korisnickom rezimu!
        uint64 volatile sepc = r_sepc() + 4;

        uint64 ret = 0;
        if(regA0 == 0x100){
            printString("kod: ");
            printInt(regA0);
            printString("\n");
            printString("RISCV funkcija za prenos arg\n");
            printString("a1: ");
            printInt(params[0]);
            printString("\n");
            printString("a2: ");
            printInt(params[1]);
            printString("\n");
            printString("a3: ");
            printInt(params[2]);
            printString("\n");
            printString("a4: ");
            printInt(params[3]);
            printString("\n");
        }else if(regA0 == 0x01){
            //void* mem_alloc(size_t)

            //size_t sz = params[0]*MEM_BLOCK_SIZE;
            uint64 size = params[0];
            ret =  (uint64)MemoryAllocator::allocate(size);
            //ret = (uint64) __mem_alloc(sz);
            __asm__ volatile ("mv a0, %0" : : "r" (ret));

        }else if(regA0 == 0x02){
            //int mem_free(void*)

            //ret = (uint64) __mem_free((void*)params[0]);
            ret = (uint64) MemoryAllocator::free((void *) params[0]);
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x11){

            //int thread_create(thread_t* handle, void(*start_routine)(void*),void* arg)
            thread_t * handle = (thread_t*)params[0];
            Body body = (void (*)(void*))params[1];
            void* arg = (void*)params[2];
            uint64* s = (uint64*)params[3];
            *handle = new TCB(body,arg,s);
            if(handle == nullptr) ret = -1;

            (*handle)->setState(TCB::READY);
            Scheduler::put((*handle));
            ret = 0;
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x15){
            //nit se samo inicijalizuje ne pokrece se!
            //int thread_init(thread_t* handle, void(*start_routine)(void*), void* arg)

            thread_t * handle = (thread_t*)params[0];
            Body body = (void (*)(void*))params[1];
            void* arg = (void*)params[2];
            uint64* s = (uint64*)params[3];
            *handle = new TCB(body,arg,s);
            if(handle == nullptr) ret = -1;

            ret = 0;
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x12){
            //int thread_exit()

            if(TCB::running == nullptr) ret = -1;
            TCB::running->setState(TCB::FINISHED);
            thread_dispatch();
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x13){
            //void thread_dispatch()

            uint64 volatile sstatus = r_sstatus();
            TCB::dispatch();
            w_sstatus(sstatus);
            __asm__ volatile ("mv a0, %0" : : "r" (ret));

        }else if(regA0 == 0x14){
            //int thread_join(thread_t handle)

            thread_t h = (thread_t)params[0];
            if(h->getState() != TCB::FINISHED){
                TCB::running->setState(TCB::SUSPENDED);
                h->addThreadToList(TCB::running);
                thread_dispatch();
            }
            __asm__ volatile ("mv a0, %0" : : "r" (ret));

        }else if(regA0 == 0x21){
            //int sem_open(sem_t* handle, unsigned init)

            unsigned  int init = (unsigned int)params[1];
            sem_t *handle = (sem_t*)params[0];
            if(handle == nullptr) ret = -1;
            *handle = new _sem(init);
            if(handle == nullptr) ret = -2;
            ret = 0;
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x22){
            //int sem_close(sem_t handle)

            sem_t handle = (sem_t)params[0];
            ret = handle->close();
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x23){
            //int sem_wait(sem_t id)

            sem_t handle = (sem_t)params[0];
            ret = handle->wait();
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x24){
            //int sem_signal(sem_t id)

            sem_t handle = (sem_t)params[0];
            ret = handle->signal();
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x31){
            //int thread_sleep(time_t)
        }else if(regA0 == 0x41){
            //char getc()
            ret = (uint64)__getc();
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x42){
            //void putc(char)
            __putc((char)params[0]);
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
        }else if(regA0 == 0x03){
            //user mode
            mc_sstatus(SSTATUS_SPP);
        }else if(regA0 == 0x04){
            //sys mode
            ms_sstatus(SSTATUS_SPP);
        }else{
            printString("Nepostojeci kod sistemkog poziva\n");
        }

        w_sepc(sepc);

    }
    else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        // Prekid od tajmera koristi se za asinhronu pormenu konteksta

        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        // Spoljasnji hardverski prekid - prekid od konzole
        console_handler();
    }
    else
    {
        // unexpected trap cause
        // Nedozvoljen prekog - GRESKA
        printString("Ilegalan prekid\n");

        uint64 stval = r_stval();
        uint64 stvec = r_stvec();
        uint64 sepc = r_sepc();

        printString("stval: ");
        printInt(stval);
        printString("\n");

        printString("stvec: ");
        printInt(stvec);
        printString("\n");

        printString("sepc: ");
        printInt(sepc);
        printString("\n");

        if(scause == 0x0000000000000002UL) {
            //ILEGALNA INSTRUKCIJA
            printString("Ilegalna instrukcija!\n");
        } else if(scause == 0x0000000000000005UL){
            //Nedozvoljena adresa citanja
            printString("Nedozvoljena adresa citanja!\n");
        }else if(scause == 0x0000000000000007UL){
            //Nedozvoljena adresa upisa
            printString("Nedozvoljena adresa upisa!\n");
        }


    }
}
