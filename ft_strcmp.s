section .text
    global _ft_strcmp

_ft_strcmp:
    xor rax, rax
    xor rcx, rcx
    xor rdx, rdx

compare:
    cmp [rdi + rcx], BYTE 0
    je return
    cmp [rsi + rcx], BYTE 0
    je return
    mov dl, BYTE [rdi + rcx]
    cmp dl, BYTE [rsi + rcx]
    jne return
    inc rcx
    jmp compare

return:
    mov al, BYTE [rdi + rcx]
    mov dl, BYTE [rsi + rcx]
    sub rax, rdx
    cmp rax, 0
    jl negative
    jg positif
    je equal

negative:
    mov rax, -1
    ret

positif:
    mov rax, 1
    ret

equal:
    mov rax, 0
    ret