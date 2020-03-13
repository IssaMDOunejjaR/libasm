section .text
    global _ft_strcpy

_ft_strcpy:
    xor rcx, rcx
    xor rbx, rbx
    xor rdx, rdx
    
copy:
    cmp BYTE [rsi + rcx], 0
    jz  null

    mov rbx, [rsi + rcx]
    mov [rdi + rcx], rbx
    inc rcx

null:
    mov rax, rdi
    ret