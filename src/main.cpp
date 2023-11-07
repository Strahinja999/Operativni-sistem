//
// Created by os on 4/29/23.
//

#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.h"
#include "../h/userMain.hpp"


void idleBody(void* arg){
    while(true) {
        thread_dispatch();
    }
}

int main(){
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    MemoryAllocator::initializeMemory();

    TCB::mainThread = TCB::createMainThread();
    TCB::running = TCB::mainThread;
    TCB::idleThread = TCB::createIdleThread(idleBody);

    switchToUserMode();

    userMain();

    switchToSysMode();
    delete TCB::mainThread;
    delete TCB::idleThread;
    printString("Finished\n");
    return 0;
}
