# 1 "sbi/sbi_payload.S"
# 1 "/home/rlk/kiara/lesson1_uboot//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "sbi/sbi_payload.S"
.section .payload,"ax"
.globl payload_bin
payload_bin:
    .incbin "benos.bin"
