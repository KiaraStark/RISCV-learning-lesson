.section ".text.boot"

.global _start
_start:
    csrw sie, zero
    la sp, stacks_start
    li t0,4096
    add sp, sp, t0
    tail kernel_main

.section .data
/* 按 2^12 = 4096 字节（4KB）对齐 */
.align 12
.global stacks_start
stacks_start:
    .skip 4096

/*提问：那段汇编指令已经在stacks_start和sp之间开辟了一个栈的空间了，为什么还要声明让stacks_start跳过4096字节？ */
/*解答：汇编指令只是把栈指针 sp 移动了，.skip 才是分配了内存，为栈预留空间*/

.option push
.option norelax
/* 初始化全局指针 gp */
 la gp, __global_pointer$
.option pop