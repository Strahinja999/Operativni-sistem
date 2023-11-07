//
// Created by os on 6/24/23.
//

#include "../h/syscall_cpp.hpp"
#include "../lib/console.h"

char Console::getc() {
    //ovde mora iz syscall_c.hpp
    return __getc();
}

void Console::putc(char c) {
    __putc(c);
}
