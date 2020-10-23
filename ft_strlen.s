section .text
    global _ft_strlen

_ft_strlen:
    xor rcx, rcx

count:
    cmp [rdi + rcx], BYTE 0
    je return
    inc rcx
    jmp count

return:
    mov rax, rcx
    ret