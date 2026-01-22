/* 这是一个SBI的固件或裸机启动程序的入口部分 */
/* 接下来的代码属于名为 .text.boot 的段 */
.section ".text.boot"

/* 将符号 _start 声明为全局可见 */
.globl _start

/* 定义程序入口标签 _start。这是 CPU 上电或 bootloader 跳转后执行的第一条指令。 */
_start:
    /* 关闭所有机器级中断，防止在初始化完成前被中断打断 */


    /* 初始化一个4KB的栈 */
    la sp, stacks_start
    li t0, 4096
    add sp, sp, t0

    /* 跳转C语言sbi_main函数 */
    tail sbi_main

/* 切换到 .data 段，接下来的代码属于.data段 */
.section .data
/* 按 2^12 = 4096 字节（4KB）对齐 */
.align 12
/* 将 stacks_start 声明为全局符号，供前面的汇编代码引用 */
.global stacks_start
stacks_start: 
        .skip 4096