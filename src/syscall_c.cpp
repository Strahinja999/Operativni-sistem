//
// Created by os on 4/29/23.
//

#include "../h/syscall_c.h"
#include "../lib/mem.h"
#include "../test/printing.hpp"
#include "../lib/console.h"

//----------------KORISNICKI/SISTEMSKI REZIM --------------------------

void switchToUserMode(){
    __asm__ volatile ("mv a0, %0" : : "r" (0x03));
    __asm__ volatile ("ecall");
}
void switchToSysMode(){
    __asm__ volatile ("mv a0, %0" : : "r" (0x04));
    __asm__ volatile ("ecall");
}


inline void loadParams(){
    __asm__ volatile ("mv a4,a3");
    __asm__ volatile ("mv a3,a2");
    __asm__ volatile ("mv a2,a1");
    __asm__ volatile ("mv a1,a0");

}

int prenos_parametara(uint64 a1, uint64 a2, uint64 a3, uint64 a4){
    __asm__ volatile ("mv a4, %0" : : "r" (a4));
    __asm__ volatile ("mv a3, %0" : : "r" (a3));
    __asm__ volatile ("mv a2, %0" : : "r" (a2));
    __asm__ volatile ("mv a1, %0" : : "r" (a1));
    __asm__ volatile ("mv a0, %0" : : "r" (0x100));
    __asm__ volatile ("ecall");
    volatile size_t ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return ret;
}

//------------------------MEMORIJA----------------------------
void* mem_alloc(size_t size){
    //paramtar size se zaokruzuje na ceo broj blokova i tako se salje
    size_t blk_num = size / MEM_BLOCK_SIZE;
    if(size % MEM_BLOCK_SIZE != 0){
        blk_num +=1;
    }
    __asm__ volatile ("mv a1, %0" : : "r" (blk_num));
    __asm__ volatile ("mv a0, %0" : : "r" (0x01));
    __asm__ volatile ("ecall");
    volatile uint64 ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return (void*) ret;
}
int mem_free(void* addr){
    __asm__ volatile ("mv a1, %0" : : "r" (addr));
    __asm__ volatile ("mv a0, %0" : : "r" (0x02));
    __asm__ volatile ("ecall");
    volatile size_t ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return ret;
}


//-------------------------NITI-------------------------------

int initialize_thread(thread_t* handle, void (*start_routine)(void*),void* arg, void* stack){
    __asm__ volatile ("mv a4, %0" : : "r" (stack));
    __asm__ volatile ("mv a3, %0" : : "r" (arg));
    __asm__ volatile ("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (0x11));
    __asm__ volatile ("ecall");
    size_t volatile ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    if(ret == 0) return ret;
    else return -3;

}

int thread_init(thread_t* handle, void (*start_routine)(void*),void* arg){
    if(handle == nullptr) return -1;

    void* stack_space = mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    if(stack_space == nullptr) return -2;
    __asm__ volatile ("mv a4, %0" : : "r" (stack_space));
    __asm__ volatile ("mv a3, %0" : : "r" (arg));
    __asm__ volatile ("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (0x15));
    __asm__ volatile ("ecall");
    size_t volatile ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    if(ret == 0) return ret;
    else return -3;
}

int thread_create(thread_t* handle, void (*start_routine)(void*),void* arg){
    //treba da se odvoji memorija za stek.
    //poziv f-je izgleda ovako:int thread_create(thread_t* handle, void (*start_routine)(void*),
    //                  void* arg, void* stack_space)

    //int ret = initialize_thread(handle,start_routine,arg);

    if(handle == nullptr) return -1;

    void* stack_space = mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    //uint64* i = (uint64*)stack_space;
    if(stack_space == nullptr) return -2;
    uint64 ret = initialize_thread(handle,start_routine,arg,stack_space);
    return  ret;
}
int thread_exit(){
    __asm__ volatile ("mv a0, %0" : : "r" (0x12));
    __asm__ volatile ("ecall");
    volatile size_t ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    if(ret == 0) return ret;
    else return -1;
}
void thread_dispatch(){
    __asm__ volatile ("mv a0, %0" : : "r" (0x13));
    __asm__ volatile ("ecall");
}
void thread_join (thread_t handle){
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (0x14));
    __asm__ volatile ("ecall");
}

//------------------------SEMAFORI----------------------------
int sem_open (sem_t* handle, unsigned init){
    if(handle == nullptr) return -1;
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (0x21));
    __asm__ volatile ("ecall");
    volatile size_t ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    if(ret == 0) return ret;
    else return -2;
}
int sem_close (sem_t handle){
    if(handle == nullptr) return -1;
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (0x22));
    __asm__ volatile ("ecall");
    volatile size_t ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    if(ret == 0) return ret;
    else return -2;
}
int sem_wait (sem_t id){
    if(id == nullptr) return -1;
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile ("mv a0, %0" : : "r" (0x23));
    __asm__ volatile ("ecall");
    volatile size_t ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    if(ret == 0) return ret;
    else return -2;
}
int sem_signal (sem_t id){
    if(id == nullptr) return -1;
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile ("mv a0, %0" : : "r" (0x24));
    __asm__ volatile ("ecall");
    volatile size_t ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    if(ret == 0) return ret;
    else return -2;
}

//-----------------------------KONZOLA----------------------
char getc (){
    //return __getc();
    __asm__ volatile ("mv a0, %0" : : "r" (0x41));
    __asm__ volatile ("ecall");
    volatile size_t ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return (char)ret;
}
void putc (char c){
    //__putc(c);
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    __asm__ volatile ("mv a0, %0" : : "r" (0x42));
    __asm__ volatile ("ecall");
}
