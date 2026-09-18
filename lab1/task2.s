.section .bss
    .global ram
    .lcomm ram, 256 # 256 bytes

.section .text
    .global fill_ram # visible to C
    fill_ram:
        
        lea ram+0x50, %esi # set start adress to ram+0x50
    
        movb $0xFF, (%esi) # data reg = FFH
        inc %esi
        
        movb $0xFF, (%esi) # data reg = FFH
        inc %esi

        movb $0xFF, (%esi) # data reg = FFH
        inc %esi
        
        movb $0xFF, (%esi) # data reg = FFH
        inc %esi

        movb $0xFF, (%esi) # data reg = FFH
        inc %esi
        
        movb $0xFF, (%esi) # data reg = FFH
        inc %esi

        movb $0xFF, (%esi) # data reg = FFH
        inc %esi
        
        movb $0xFF, (%esi) # data reg = FFH
        inc %esi

        movb $0xFF, (%esi) # data reg = FFH
        inc %esi
        
    ret
.section .note.GNU-stack,"",@progbits
