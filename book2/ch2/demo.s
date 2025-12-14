.intel_syntax noprefix

.data
msg:        .asciz "Result = "
msg_len = . - msg

.align 4
result:     .long 42

.text
.global _start
_start:

    # write("Result = ", msg_len)
    mov rax, 1                  # SYS_write
    mov rdi, 1                  # stdout
    lea rsi, [rip + msg]        # pointer to string
    mov rdx, msg_len            # length
    syscall

    # write(result, 1)  -> prints '*'
    mov rax, 1                  # SYS_write
    mov rdi, 1                  # stdout
    lea rsi, [rip + result]     # pointer to result
    mov rdx, 1                  # print lowest byte only
    syscall

    # exit(0)
    mov rax, 60                 # SYS_exit
    xor rdi, rdi
    syscall

