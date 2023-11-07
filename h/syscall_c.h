//
// Created by os on 4/29/23.
//

#ifndef PROJEKAT_2023_SYSCALL_C_H
#define PROJEKAT_2023_SYSCALL_C_H

#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/_sem.h"

int prenos_parametara(uint64 a1, uint64 a2, uint64 a3, uint64 a4);

void switchToUserMode();
void switchToSysMode();

void* mem_alloc(size_t size);
int mem_free(void*);

class TCB;
typedef TCB* thread_t;

int thread_create(thread_t* handle, void (*start_routine)(void*),
                  void* arg);
int thread_init(thread_t* handle, void (*start_routine)(void*),void* arg);
int thread_exit();
void thread_dispatch();
void thread_join (thread_t handle);

class _sem;
typedef _sem* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
);
int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);

/*typedef unsigned long time_t;
int time_sleep (time_t);*/

const int EOF = -1;
char getc ();
void putc (char);


#endif //PROJEKAT_2023_SYSCALL_C_H
