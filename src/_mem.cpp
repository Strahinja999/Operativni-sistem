////
//// Created by os on 6/27/23.
////
//#include "../h/syscall_cpp.hpp"
//
//using size_t = decltype(sizeof(0));
//
//void *operator new(size_t n)
//{
//    return mem_alloc(n);
//}
//
//void *operator new[](size_t n)
//{
//    return mem_alloc(n);
//}
//
//void operator delete(void *p) noexcept
//{
//    mem_free(p);
//}
//
//void operator delete[](void *p) noexcept
//{
//    mem_free(p);
//}