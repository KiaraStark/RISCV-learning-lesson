# 1 "src/boot.S"
# 1 "/home/rlk/kiara/lesson1_uboot//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/boot.S"
.section ".text.boot"

.global _start
_start:
    csrw sie, zero
    la sp, stacks_start
    li t0,4096
    add sp, sp, t0
    tail kernel_main

.section .data

.align 12
.global stacks_start
stacks_start:
    .skip 4096
