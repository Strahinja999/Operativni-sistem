//
// Created by os on 6/22/23.
//

#ifndef PROJEKAT_2023__SEM_H
#define PROJEKAT_2023__SEM_H

#include "list.hpp"
#include "tcb.hpp"
#include "syscall_c.h"

class _sem{
public:

    _sem(unsigned int init): val(init){
     blocked = new List<TCB>();
    }
    //void addToList(TCB* t);

private:

    List<TCB> *blocked;

    int val;

    int close();
    int wait();
    int signal();

    friend class Riscv;
    friend class TCB;
};

#endif //PROJEKAT_2023__SEM_H
