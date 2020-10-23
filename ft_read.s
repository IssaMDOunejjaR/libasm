section .text
    global _ft_read
    extern ___error

_ft_read:
    mov rax, 0x2000003
    syscall
    jc _error
    ret

_error:
    push rbp
    mov rbp, rsp
    mov rdx, rax
    call ___error
    mov QWORD [rax], rdx
    mov rax, -1
    mov rsp, rbp
    pop rbp
    ret