# 1 "src/kernel.c"
# 1 "/home/rlk/kiara/lesson1_uboot//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/kernel.c"
# 1 "include/uart.h" 1



void uart_init ( void );
char uart_recv ( void );
void uart_send ( char c );
void uart_send_string(char* str);
# 2 "src/kernel.c" 2

void kernel_main(void){
    uart_init();
    uart_send_string("Welcome to RISC-V!\r\n");
    while(1){
        ;
    }
}
