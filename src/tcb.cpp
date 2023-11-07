//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;
TCB *TCB::idleThread = nullptr;
TCB* TCB::mainThread = nullptr;
List<TCB>* TCB::suspendedThreadsList = nullptr;


void TCB::yield()
{
    __asm__ volatile ("mv a0, %0" : : "r" (0x13));//TODO ????
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    //printString("DISPATCH\n");
    TCB *old = running;
    if (old->getState() == RUNNING) { old->setState(READY); Scheduler::put(old); }
    //ako je suspendovana samo vraca u Scheduler ali nece nastaviti izvrsavanje zato sto samo READY niti nastavljaju izvrsavanje
    if(old->getState() == SUSPENDED) {Scheduler::put(old);}
    running = Scheduler::get();
    while(running->getState()!= READY){
        Scheduler::put(running);
        running = Scheduler::get();
    }
//    while(running->getState() == SUSPENDED || running->getState() == FINISHED){
//        Scheduler::put(running);
//        running = Scheduler::get();
//    }
    //ako je dohvacena nit suspendovana ona se vraca u scheduler i dohvata nova sve dok se ne dohvati neka koja nije suspendovana

    if(running == nullptr){ printString("Runnung je null");}
    //
//    while(running->getState() != READY) {
//        //printString("NIT NIJE READY");
//        //ovde da se vrati
//        running = Scheduler::get();
//    }
    running->setState(RUNNING);

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setState(FINISHED);
    //odblokira sve iz liste za join

    //DOhvataju se sve niti iz  liste i postavljaju stanje na READY
    TCB * t = running->suspendedThreadsList->removeLast();
    while( t != 0){
        t->setState(READY);
        //Scheduler::put(t);
        t = running->suspendedThreadsList->removeLast();
    }

    //MOZE OVDE DA SE VRACA U Scheduler ako se u dispatchu ne proverava da li je suspendovana, ako ih ima vise trebalo bi u while-u
    //Scheduler::put(t);
    TCB::yield();
}


TCB* TCB::createMainThread(){
    return new TCB();
}


TCB* TCB::createIdleThread(Body body) {
    //uint64 *stack_size = new (uint64[STACK_SIZE]);
    TCB* idle = new TCB(body, nullptr, nullptr);
    idle->setState(IDLE);
    Scheduler::put(idle);
    return idle;
}

void TCB::addThreadToList(TCB *t) {
    suspendedThreadsList->addLast(t);
}
