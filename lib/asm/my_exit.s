global _my_exit
section .text

my_exit:
    mov rax, 60
    mov rdx, rdi
    syscall
