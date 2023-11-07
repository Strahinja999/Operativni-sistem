//
// Created by os on 6/23/23.
//

#include "../h/syscall_cpp.hpp"
#include "../test//printing.hpp"

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&myHandle,body, arg);
}

Thread::Thread() {
    thread_init(&myHandle,threadWrapper, this);
}

Thread::~Thread() {
    //if(thread_exit() < 0) printString("NEUSPESNO GASENJE NITI");
    delete myHandle;
}

int Thread::start() {
    if(myHandle->getState() != TCB::INITIALIZING) return -1;
    myHandle->setState(TCB::READY);
    Scheduler::put(myHandle);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::join() {
    thread_join(this->myHandle);
}

void Thread::threadWrapper(void *thread) {
    ((Thread*)thread)->run();
}

