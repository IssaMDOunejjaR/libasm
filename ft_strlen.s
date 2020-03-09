section .text
    global  _ft_strlen

_ft_strlen:
    push rcx
    xor  rcx, rcx

_next:
    cmp  [rdi], byte 0
    jz   _null

    inc  rcx
    inc  rdi
    jmp  _next

_null:
    mov rax, rcx
    pop rcx
    ret