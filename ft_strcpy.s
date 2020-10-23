section .text
    global _ft_strcpy

_ft_strcpy:
    xor rcx, rcx

copy:
    cmp [rsi + rcx], BYTE 0
    je return
    mov dl, BYTE [rsi + rcx]
    mov [rdi + rcx], BYTE dl
    inc rcx
    jmp copy

return:
    mov [rdi + rcx], BYTE 0
    mov rax, rdi
    ret
