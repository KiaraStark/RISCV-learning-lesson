# 1 "sbi/sbi_main.c"
# 1 "/home/rlk/kiara/lesson1_uboot//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "sbi/sbi_main.c"
# 1 "include/asm/csr.h" 1
# 2 "sbi/sbi_main.c" 2



void sbi_main(void){
    unsigned long val;
    val = ({ register unsigned long __v; __asm__ __volatile__ ("csrr %0, " "mstatus" : "=r" (__v) : : "memory"); __v; });
    val = (((val) & ~((3UL << 11))) | (((1UL)) * (((3UL << 11)) & ~(((3UL << 11))-1))));
    val = (((val) & ~(0x00000080UL)) | ((0) * ((0x00000080UL) & ~((0x00000080UL)-1))));
    ({ unsigned long __v = (unsigned long)(val); __asm__ __volatile__ ("csrw " "mstatus" ", %0" : : "rK" (__v) : "memory"); });

    ({ unsigned long __v = (unsigned long)(0x80200000); __asm__ __volatile__ ("csrw " "mepc" ", %0" : : "rK" (__v) : "memory"); });
    ({ unsigned long __v = (unsigned long)(0x80200000); __asm__ __volatile__ ("csrw " "stvec" ", %0" : : "rK" (__v) : "memory"); });
    ({ unsigned long __v = (unsigned long)(0); __asm__ __volatile__ ("csrw " "sie" ", %0" : : "rK" (__v) : "memory"); });
    ({ unsigned long __v = (unsigned long)(0); __asm__ __volatile__ ("csrw " "satp" ", %0" : : "rK" (__v) : "memory"); });

    asm volatile("mret");

}
