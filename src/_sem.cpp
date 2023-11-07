
//
// Created by os on 6/22/23.

#include "../h/_sem.h"
#include "../h/syscall_c.h"


int _sem::close(){
    val = 0;
    TCB* t = blocked->removeLast();
    while (t != 0) {
        //TCB *t = semWaiting.removeFirst();
        if(t->getState() != TCB::SUSPENDED){return -2;}
        t->running->setState(TCB::READY);
        Scheduler::put(t);
        t = blocked->removeLast();
    }
    return 0;
}

int _sem::signal() {
    if(++val <= 0){
        //uzmi jedan proces iz reda suspendovanih
        //TCB* t = semWaiting.removeLast();
        TCB *t = blocked->removeFirst();
        //stavi ga u red spremnih procesa
        //if(t->running->getState() != TCB::WAITING){return -2;}
        //if(TCB::running->getState() != TCB::WAITING) return -1;
        t->setState(TCB::READY);
        Scheduler::put(t);
    }
    return 0;
}

int _sem::wait() {
    if(--val < 0){
        //GDE SE KORISTI ID??
        //stavi tekuci proces u red za cekanje
        //semWaiting.addLast(TCB::running);
        if(TCB::running->getState() != TCB::RUNNING) return -1;
        TCB::running->setState(TCB::SUSPENDED);
        //addToList(TCB::running);
        blocked->addLast(TCB::running);
        //promeni kontekst
        TCB::yield();
        //thread_dispatch();
    }
    return 0;
}

//
