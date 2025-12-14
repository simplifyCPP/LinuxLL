.intel_syntax noprefix

.global add

add:
    mov eax, edi    # copy first int argument
    add eax, esi    # add second int argument
    ret
