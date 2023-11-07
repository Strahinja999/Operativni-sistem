//
// Created by os on 6/23/23.
//

#ifndef PROJEKAT_2023_SYSCALL_CPP_HPP
#define PROJEKAT_2023_SYSCALL_CPP_HPP

#include "../h/syscall_c.h"

//MEMORIJA
void* operator new (size_t s);
//void operator delete (void* arg);

//NITI
class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    //static int sleep (time_t);
    void join();
    static void threadWrapper(void* thread);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
};

//SEMAFORI
class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};
/*
//PERIODICNA NIT?
class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
};*/

//KONZOLA
class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif //PROJEKAT_2023_SYSCALL_CPP_HPP
