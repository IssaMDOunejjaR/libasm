section .text
    global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
    xor rax, rax
    xor rdx, rdx
    jmp compare

increment:
    inc rcx

compare:
    cmp BYTE [rdi + rcx], 0
    jz null
    cmp BYTE [rsi + rcx], 0
    jz null
    mov dl, BYTE [rdi + rcx]
    cmp dl, BYTE [rsi + rcx]
    je increment
    
null:
    mov al, BYTE [rdi + rcx]
    mov dl, BYTE [rsi + rcx]
    sub rax, rdx
    ret