	.file	"sbi_main.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	sbi_main
	.type	sbi_main, @function
sbi_main:
.LFB0:
	.file 1 "sbi/sbi_main.c"
	.loc 1 5 20
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
.LBB2:
	.loc 1 7 42
#APP
# 7 "sbi/sbi_main.c" 1
	csrr a5, mstatus
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 7 114
	mv	a5,s0
.LBE2:
	.loc 1 7 9
	sd	a5,40(sp)
	.loc 1 8 19
	ld	a4,40(sp)
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	.loc 1 8 9
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sd	a5,40(sp)
	.loc 1 9 9
	ld	a5,40(sp)
	andi	a5,a5,-129
	sd	a5,40(sp)
.LBB3:
	.loc 1 10 22
	ld	a5,40(sp)
	sd	a5,32(sp)
	.loc 1 10 50
	ld	a5,32(sp)
#APP
# 10 "sbi/sbi_main.c" 1
	csrw mstatus, a5
# 0 "" 2
#NO_APP
.LBE3:
.LBB4:
	.loc 1 12 22
	li	a5,1025
	slli	a5,a5,21
	sd	a5,24(sp)
	.loc 1 12 57
	ld	a5,24(sp)
#APP
# 12 "sbi/sbi_main.c" 1
	csrw mepc, a5
# 0 "" 2
#NO_APP
.LBE4:
.LBB5:
	.loc 1 13 22
	li	a5,1025
	slli	a5,a5,21
	sd	a5,16(sp)
	.loc 1 13 57
	ld	a5,16(sp)
#APP
# 13 "sbi/sbi_main.c" 1
	csrw stvec, a5
# 0 "" 2
#NO_APP
.LBE5:
.LBB6:
	.loc 1 14 22
	sd	zero,8(sp)
	.loc 1 14 48
	ld	a5,8(sp)
#APP
# 14 "sbi/sbi_main.c" 1
	csrw sie, a5
# 0 "" 2
#NO_APP
.LBE6:
.LBB7:
	.loc 1 15 22
	sd	zero,0(sp)
	.loc 1 15 48
	ld	a5,0(sp)
#APP
# 15 "sbi/sbi_main.c" 1
	csrw satp, a5
# 0 "" 2
#NO_APP
.LBE7:
	.loc 1 17 5
#APP
# 17 "sbi/sbi_main.c" 1
	mret
# 0 "" 2
	.loc 1 19 1
#NO_APP
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sbi_main, .-sbi_main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x138
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF0
	.byte	0xc
	.4byte	.LASF1
	.4byte	.LASF2
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF3
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x134
	.byte	0x3
	.string	"val"
	.byte	0x1
	.byte	0x6
	.byte	0x13
	.4byte	0x134
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x4
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x7e
	.byte	0x3
	.string	"__v"
	.byte	0x1
	.byte	0x7
	.byte	0x25
	.4byte	0x134
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0x4
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.4byte	0xa3
	.byte	0x3
	.string	"__v"
	.byte	0x1
	.byte	0xa
	.byte	0x16
	.4byte	0x134
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x4
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0xc8
	.byte	0x3
	.string	"__v"
	.byte	0x1
	.byte	0xc
	.byte	0x16
	.4byte	0x134
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x4
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0xed
	.byte	0x3
	.string	"__v"
	.byte	0x1
	.byte	0xd
	.byte	0x16
	.4byte	0x134
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x4
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0x112
	.byte	0x3
	.string	"__v"
	.byte	0x1
	.byte	0xe
	.byte	0x16
	.4byte	0x134
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x5
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.byte	0x3
	.string	"__v"
	.byte	0x1
	.byte	0xf
	.byte	0x16
	.4byte	0x134
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF4
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
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0x6
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
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"/home/rlk/kiara/lesson1_uboot"
.LASF3:
	.string	"sbi_main"
.LASF0:
	.string	"GNU C17 9.3.0 -mcmodel=medany -mabi=lp64 -march=rv64imafd -g -O0 -fno-PIE -fomit-frame-pointer"
.LASF1:
	.string	"sbi/sbi_main.c"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
