/* 说明链接脚本对应的处理器为RISCV */
OUTPUT_ARCH(riscv)
/* 指定程序的入口地址为_start */
ENTER(_start)
SECTIONS
{
    INCLUDE "sbi/sbi_base.ld"
}
/* SBI 固件（Supervisor Binary Interface Firmware）是 RISC-V 架构中运行在最高特权级（Machine Mode, M-mode）的一套标准化底层软件接口 */