.section .bss

str1: 
    .ascii ""
    len1 = . - str1

str2: 
    .ascii ""
    len2 = . - str2

.section .data
msg: 
    .ascii "Enter a string\n"
    len = . - msg


maxLength = 255

.section .text
.global _start

    _start:     
    # prints enter a string 
    mov $1, %rax # write
    mov $1, %rdi # stdout
    mov $msg, %rsi # buf
    mov $len, %rdx # len
    syscall

    # reads the entered string and saves it as str1
    mov $0, %rax # read
    mov $0, %rdi # stdin
    mov $str1, %rsi # buf
    mov $maxLength, %rdx # len
    syscall

    # prints enter a string 
    mov $1, %rax # write
    mov $1, %rdi # stdout
    mov $msg, %rsi # buf
    mov $len, %rdx # len
    syscall

    # reads the entered string and saves it as str2
    mov $0, %rax # read
    mov $0, %rdi # stdin
    mov $str2, %rsi # buf
    mov $maxLength, %rdx # len
    syscall

# need to make the longer one the same length as the shorter one

# comparing stuff
    xor %cx,%ax # ax=ax XOR cx
    ret
    
 .section .note.GNU-stack,"",@progbits

