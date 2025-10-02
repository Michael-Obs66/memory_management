MEMORY
{
    FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 256K
    SRAM  (rwx) : ORIGIN = 0x20000000, LENGTH = 64K
}

SECTIONS
{
    .text : { KEEP(*(.text)) } > FLASH
    .data : { KEEP(*(.data)) } > SRAM
    .bss  : { KEEP(*(.bss))  } > SRAM
}
