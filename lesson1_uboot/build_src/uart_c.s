	.file	"uart.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	uart_send
	.type	uart_send, @function
uart_send:
.LFB1:
	.file 1 "src/uart.c"
	.loc 1 4 23
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sb	a5,15(sp)
	.loc 1 5 10
	nop
.L2:
.LBB2:
	.loc 1 5 36 discriminator 1
	li	a5,268435456
	addi	a5,a5,5
	.loc 1 5 29 discriminator 1
	lbu	a5,0(a5)
	sb	a5,31(sp)
	.loc 1 5 86 discriminator 1
	.loc 1 5 128 discriminator 1
	lbu	a5,31(sp)
.LBE2:
	.loc 1 5 136 discriminator 1
	sext.w	a5,a5
	andi	a5,a5,64
	sext.w	a5,a5
	.loc 1 5 10 discriminator 1
	beqz	a5,.L2
.LBB3:
	.loc 1 7 22
	lbu	a5,15(sp)
	sb	a5,30(sp)
	.loc 1 7 31
	.loc 1 7 74
	li	a5,268435456
	.loc 1 7 122
	lbu	a4,30(sp)
	sb	a4,0(a5)
.LBE3:
	.loc 1 8 1
	nop
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	uart_send, .-uart_send
	.align	2
	.globl	uart_send_string
	.type	uart_send_string, @function
uart_send_string:
.LFB2:
	.loc 1 10 33
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	.loc 1 12 12
	sw	zero,28(sp)
	.loc 1 12 5
	j	.L4
.L5:
	.loc 1 13 28 discriminator 3
	lw	a5,28(sp)
	ld	a4,8(sp)
	add	a5,a4,a5
	.loc 1 13 9 discriminator 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	uart_send
	.loc 1 12 34 discriminator 3
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L4:
	.loc 1 12 20 discriminator 1
	lw	a5,28(sp)
	ld	a4,8(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 12 5 discriminator 1
	bnez	a5,.L5
	.loc 1 14 1
	nop
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	uart_send_string, .-uart_send_string
	.section	.sdata,"aw"
	.align	2
	.type	uart16550_clock, @object
	.size	uart16550_clock, 4
uart16550_clock:
	.word	1843200
	.text
	.align	2
	.globl	uart_init
	.type	uart_init, @function
uart_init:
.LFB3:
	.loc 1 19 21
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 20 44
	lla	a5,uart16550_clock
	lw	a5,0(a5)
	.loc 1 20 18
	mv	a4,a5
	li	a5,1843200
	divuw	a5,a4,a5
	sw	a5,12(sp)
.LBB4:
	.loc 1 21 22
	sb	zero,11(sp)
	.loc 1 21 31
	.loc 1 21 74
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 21 122
	lbu	a4,11(sp)
	sb	a4,0(a5)
.LBE4:
.LBB5:
	.loc 1 22 22
	li	a5,-128
	sb	a5,10(sp)
	.loc 1 22 34
	.loc 1 22 77
	li	a5,268435456
	addi	a5,a5,3
	.loc 1 22 125
	lbu	a4,10(sp)
	sb	a4,0(a5)
.LBE5:
.LBB6:
	.loc 1 24 22
	lw	a5,12(sp)
	sb	a5,9(sp)
	.loc 1 24 52
	.loc 1 24 95
	li	a5,268435456
	.loc 1 24 143
	lbu	a4,9(sp)
	sb	a4,0(a5)
.LBE6:
.LBB7:
	.loc 1 25 52
	lw	a5,12(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	.loc 1 25 22
	sb	a5,8(sp)
	.loc 1 25 59
	.loc 1 25 102
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 25 150
	lbu	a4,8(sp)
	sb	a4,0(a5)
.LBE7:
.LBB8:
	.loc 1 27 22
	li	a5,3
	sb	a5,7(sp)
	.loc 1 27 33
	.loc 1 27 76
	li	a5,268435456
	addi	a5,a5,3
	.loc 1 27 124
	lbu	a4,7(sp)
	sb	a4,0(a5)
.LBE8:
.LBB9:
	.loc 1 28 22
	li	a5,-57
	sb	a5,6(sp)
	.loc 1 28 34
	.loc 1 28 77
	li	a5,268435456
	addi	a5,a5,2
	.loc 1 28 125
	lbu	a4,6(sp)
	sb	a4,0(a5)
.LBE9:
	.loc 1 30 1
	nop
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	uart_init, .-uart_init
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x213
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF7
	.byte	0xc
	.4byte	.LASF8
	.4byte	.LASF9
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x10
	.byte	0x15
	.4byte	0x43
	.byte	0x9
	.byte	0x3
	.8byte	uart16550_clock
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF4
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x152
	.byte	0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x14
	.byte	0x12
	.4byte	0x43
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0x5
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x9c
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x15
	.byte	0x16
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.byte	0x7b
	.byte	0
	.byte	0x5
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0xc1
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x16
	.byte	0x16
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.byte	0x7a
	.byte	0
	.byte	0x5
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0xe6
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x18
	.byte	0x16
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.byte	0x79
	.byte	0
	.byte	0x5
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.4byte	0x10b
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x19
	.byte	0x16
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0
	.byte	0x5
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.4byte	0x130
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x1b
	.byte	0x16
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.byte	0x77
	.byte	0
	.byte	0x7
	.8byte	.LBB9
	.8byte	.LBE9-.LBB9
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x1c
	.byte	0x16
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.byte	0x76
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x8
	.4byte	.LASF5
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x194
	.byte	0x9
	.string	"str"
	.byte	0x1
	.byte	0xa
	.byte	0x1d
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0xb
	.byte	0x9
	.4byte	0x1a1
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x19a
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xc
	.4byte	.LASF10
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0x9
	.string	"c"
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.4byte	0x19a
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x5
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x1f4
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x5
	.byte	0x1d
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.byte	0x7f
	.byte	0
	.byte	0x7
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x7
	.byte	0x16
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.byte	0x7e
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"/home/rlk/kiara/lesson1_uboot"
.LASF2:
	.string	"unsigned int"
.LASF4:
	.string	"uart_init"
.LASF0:
	.string	"uart16550_clock"
.LASF7:
	.string	"GNU C17 9.3.0 -mcmodel=medany -mabi=lp64 -march=rv64imafd -g -O0 -fno-PIE -fomit-frame-pointer"
.LASF6:
	.string	"char"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"uart_send"
.LASF1:
	.string	"divisor"
.LASF8:
	.string	"src/uart.c"
.LASF5:
	.string	"uart_send_string"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
