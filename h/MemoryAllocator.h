//
// Created by os on 8/2/22.
//

#include "../lib/hw.h"
#include "../h/list.hpp"
#include "../test/printing.hpp"

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_H


class MemoryAllocator {

public:

    static void* allocate(size_t size);

    static int free(void* addr);

    static void printMem();

    static void initializeMemory();

    static void testMemory();

private:
struct MemoryBlock{
    MemoryBlock *next, *prev;
    size_t size;
    bool allocated;
};

    static MemoryBlock* free_mem_head;
};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
