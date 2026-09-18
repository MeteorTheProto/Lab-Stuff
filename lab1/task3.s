.section .bss
    .global ram
    .lcomm ram, 256 # 256 bytes

.section .text
    .global fill_ram # visible to C
    fill_ram:
        movb $0x00, ram+0x50 # RAM[50H] = FFH
        movb $0x00, ram+0x51 # RAM[51H] = FFH
        movb $0x00, ram+0x52 # RAM[50H] = FFH
        movb $0x00, ram+0x53 # RAM[50H] = FFH
        movb $0x00, ram+0x54 # RAM[50H] = FFH
        movb $0x00, ram+0x55 # RAM[50H] = FFH
        movb $0x00, ram+0x56 # RAM[50H] = FFH
        movb $0x00, ram+0x57 # RAM[50H] = FFH
        movb $0x00, ram+0x58 # RAM[50H] = FFH
        
    ret
.section .note.GNU-stack,"",@progbits
