section .text
    global _ft_strcpy

_ft_strcpy:
    xor rcx, rcx
    xor rbx, rbx
    xor rdx, rdx
    
copy:
    