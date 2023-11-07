//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

// Thread Control Block
class TCB
{
public:
    enum State{
        INITIALIZING, READY, RUNNING, FINISHED, IDLE, SUSPENDED, BLOCKED
    };

    ~TCB() { delete[] stack; }

    using Body = void (*)(void *arg);

    static TCB *createThread(Body body, void* arg);

    static int exit();

    State getState() const {return  state;}
    void setState(State s) { state = s;}

    static void yield();

    static TCB *running;
    static TCB *mainThread;
    static TCB *idleThread;

    static TCB* createMainThread();
    static TCB* createIdleThread(Body body);

    void addThreadToList(TCB *t);


private:
    //Konstruktor sa argumentima koji se poziva prilikom kreiranja svih niti sem main
    TCB(Body body, void* arg, uint64* stack) :
            body(body),
            arg(arg),
            stack(stack),
            context({(uint64) &threadWrapper,
                      (uint64) &stack[STACK_SIZE]
                    }),
            state(INITIALIZING)
    {
        suspendedThreadsList = new List<TCB>();
    }

    //Podrazumevani konstruktor koji ce se pozivati kada se kreira MAIN nit
    TCB() : body(nullptr), arg(nullptr), stack(nullptr), context({0,0}), state(RUNNING){}

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void* arg;
    uint64 *stack;
    Context context;

    State state;

    static List<TCB> *suspendedThreadsList;

    friend class Riscv;
    friend class _sem;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static uint64 constexpr STACK_SIZE = 1024;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
