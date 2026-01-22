static unsigned int uart16550_clock = 1843200;//UART 芯片的输入时钟频率
#define UART_DEFAULT_BAND 115200//目标波特率

void uart_init(void){
    unsigned int divisor = uart16550_clock / (16 * UART_DEFAULT_BAND);//计算波特率除数
    writeb(0, UART_IER);//向 IER（Interrupt Enable Register） 写 0，禁用所有 UART 中断
    writeb(0x80,UART_LCR);//LCR（Line Control Register）写 0x80（即 1000 0000）表示：允许访问 DLL/DLM 寄存器
    //设置波特率除数,低字节,高字节
    writeb((unsigned char)divisor,UART_DLL);
    writeb((unsigned char)(divisor >> 8),UART_DLM);

    writeb(0x3,UART_LCR);//0x3 = 0000 0011LCR恢复正常模式
    writeb(0xc7,UART_FCR);//FCR（FIFO Control Register）,0xc7 = 1100 0111 → 启用并清空 FIFO

}

void uart_send(char c){
    while((readb(UART_LSR) & UART_LSR_EMPTY) == 0)
        ;
    writeb(c,UART_DAT);
}

void uart_send_string(char *str){
    int i;
    for (i = 0; str[i] != '\0'; i++)
        uart_send((char)str[i]);
}