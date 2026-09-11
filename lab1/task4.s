.section .bss
    .global ram
    .lcomm ram, 256 # 256 bytes

.section .text
    .global calc_series # visible to C
    fill_ram:
        mov $0, %edx # EDX = 0 data int
        mov $10, %ecx # ECX = 10 count int
        
        loop_label:
            add %ecx, %edx

            dec %ecx
            cmp $0, %ecx
            jge loop_label
        
        mov %edx, ram+0x50
    ret
.section .note.GNU-stack,"",@progbits

