#include "asm/csr.h"
#define FW_JUMP_ADDR 0x80200000

// 这段代码主要是将机器从M模式切换到S模式（从固件移交控制权给操作系统）
void sbi_main(void){
    unsigned long val;
    val = read_csr(mstatus);//读取mstatus
    val = INSERT_FIELD(val,MSTATUS_MPP,PRV_S);//修改val的MSTATUS_MPP位置的值为PRV_S（Supervisor）
    val = INSERT_FIELD(VAL,MSTATUS_MPIE, 0);
    write_csr(mstatus, val);//写回mstatus

    write_csr(mepc,FW_JUMP_ADDR);//设置 mepc = 0x80200000 (OS 入口)
    write_csr(stvec,FW_JUMP_ADDR);
    write_csr(sie,  0);//清零 sie, satp (干净的 S-mode 环境)
    write_csr(satp, 0);

    asm volatile("mret");//执行 mret 完成切换

}