.intel_syntax noprefix
.global _start

_start:
    mov rax, 60      # SYS_exit
    mov rdi, 0       # exit code
    syscall
