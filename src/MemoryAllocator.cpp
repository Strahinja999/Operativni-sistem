//
// Created by os on 8/2/22.
//

#include "../h/MemoryAllocator.h"
MemoryAllocator::MemoryBlock* MemoryAllocator::free_mem_head = nullptr;
void *MemoryAllocator::allocate(size_t size) {
    //size je broj blokova koje treba alocirati!

    //FIRST FIT alg - trazi se prvi koje je slbodan i ima dovoljno mesta
    MemoryBlock* block = free_mem_head;
    for(;block!= nullptr;block = block->next){
        if(block->size > size+1 && !block->allocated) break;
    }

    //ako je to prvi blok stavljamo ga u free_mem_head
    if(block == free_mem_head){
        MemoryBlock* newBlock = block;
        //??? TODO sta tacno ovo radi
        block = (MemoryBlock*)((char*)block + (size+1)*MEM_BLOCK_SIZE);
        block->size = newBlock->size - (size+1);
        block->prev=free_mem_head;
        block->next = nullptr;
        free_mem_head->next=block;
        free_mem_head->prev= nullptr;
        block->allocated= false;
        newBlock->size = size+1;
        newBlock->allocated = true;
        free_mem_head = newBlock;


        return (void*) ((char*)newBlock + MEM_BLOCK_SIZE);
    } else{
        //ako nije prvi dodajemo ga u listu, azuriranje next i prev pok
        MemoryBlock* newBlock = block;
        //??? TODO sta tacno ovo radi
        block = (MemoryBlock*)((char*)block + (size+1)*MEM_BLOCK_SIZE);
        block->size = newBlock->size - (size+1);
        block->prev = newBlock;
        block->next = newBlock->next;
        block->allocated = false;
        newBlock->size = size+1;
        newBlock->next = block;
        newBlock->prev = newBlock->prev;
        newBlock->allocated = true;

        return (void*)((char*)newBlock + MEM_BLOCK_SIZE);

    }

    return nullptr;

}


int MemoryAllocator::free(void *addr) {

    //PROVERA NA KRAJU FREE_MEM_HEAD?????

    //TODO sta tacno ovo radi
    MemoryBlock* deleteBlock = (MemoryBlock*)((char*)addr - MEM_BLOCK_SIZE);
    if(!deleteBlock->allocated) return -1;
    deleteBlock->allocated=false;


    //Pokusavanje spajanja sa sledecim blokom ako je slobodan
    if(deleteBlock->next){
        if(!deleteBlock->next->allocated){
            //slececi postoji i slobodan je
            if(deleteBlock->next->next != nullptr){
                //ako posle sledeceg bloka ima jos blokova u listi
                deleteBlock->next->next->prev = deleteBlock;
                deleteBlock->next = deleteBlock->next->next;
                deleteBlock->size += deleteBlock->next->size;
                deleteBlock->allocated = false;
            }else{
                //ako je sledeci blok poslednji u listi
                deleteBlock->next->prev = nullptr;
                deleteBlock->size += deleteBlock->next->size;
                deleteBlock->next = nullptr;
                deleteBlock->allocated = false;
            }

        }
    }

    //Pokusavanje spajanja sa prethodnim blokom ako je slobodan
    if(deleteBlock->prev){
        if(!deleteBlock->prev->allocated){
            deleteBlock->prev->next = deleteBlock->next;
            deleteBlock->next->prev = deleteBlock->prev;
            deleteBlock->prev->size+=deleteBlock->size;
            deleteBlock->prev->allocated= false;
        }
    }

    //spoj sledeci i prethodni
    return 0;
}


void MemoryAllocator::initializeMemory() {
    //inicijalizacija memorije
    free_mem_head = (MemoryBlock*) HEAP_START_ADDR;
    free_mem_head->size = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE -1;
    free_mem_head->next = free_mem_head->prev = nullptr;
    free_mem_head->allocated = false;
}

void MemoryAllocator::printMem() {
    int i =0;
    for(MemoryBlock* cur=free_mem_head; cur!= nullptr; cur = cur->next){
        if(!cur->allocated){
            printInt(i+1);
            printString(": ");
            printString("SLOBODNO:");
            printInt(cur->size);
            printString("\n");
            i++;
        } else{
            printInt(i+1);
            printString(": ");
            printString("ALOCIRANO:");
            printInt(cur->size);
            printString("\n");
            i++;
        }
    }
    printString("Ukupan broj blokova: ");
    printString("i = ");
    printInt(i);
    printString("\n");
}

void MemoryAllocator::testMemory() {
    void* adr1 = MemoryAllocator::allocate(sizeof (size_t));
    void* adr2 = MemoryAllocator::allocate(sizeof (size_t));
    void* adr3 = MemoryAllocator::allocate(sizeof (size_t));
    void* adr4 = MemoryAllocator::allocate(sizeof (size_t));
    void* adr5 = MemoryAllocator::allocate(sizeof (size_t));

    printString("Memorija pre dealokacije:\n");
    MemoryAllocator::printMem();
    MemoryAllocator::free(adr2);
    printString("=============================\n");
    printString("Dealociran 2 fragment\n");
    MemoryAllocator::printMem();
    MemoryAllocator::free(adr1);
    printString("=============================\n");
    printString("Dealociran 1 fragment\n");
    MemoryAllocator::printMem();
    MemoryAllocator::free(adr5);
    printString("=============================\n");
    printString("Dealociran 5 fragment\n");
    MemoryAllocator::printMem();
    MemoryAllocator::free(adr4);
    printString("=============================\n");
    printString("Dealociran 4 fragment\n");
    MemoryAllocator::printMem();
    MemoryAllocator::free(adr3);
    printString("=============================\n");
    printString("Dealociran 3 fragment\n");
    MemoryAllocator::printMem();
}