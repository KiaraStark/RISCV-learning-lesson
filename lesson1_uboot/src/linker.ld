ENTRY(_start) 
SECTIONS{
    . = 0x80200000,
    .text.boot : {*(.text.boot)}
    .text : {*(.text)}
    .rodata : {*(.rodata)}
    .data : {*(.data)}
     /* 这里新增.sdata段，支持“小数据区优化”（Small Data Optimization）*/
    .sdata : {
        __global_pointer$ = . + 0x800;
        *(.sdata)
        *(.sbss*)
    }
    . = ALIGN(0x8);
    bss_begin = .;
    .bss : {*(.bss)}
    bss_end = .;
}