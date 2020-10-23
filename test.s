default rel

%define SYS_EXIT 0x2000001
%define SYS_READ 0x2000003
%define SYS_WRITE 0x2000004

%macro exit 0
    mov rax, SYS_EXIT
    mov rdi, 0
    syscall
%endmacro

%macro write 2
    mov rax, SYS_WRITE
    mov rdi, 1
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

section .data
    msg: db "Hello, World!", 10, 0

section .text
    global start
    extern _printf

start:
    push rbp
    mov rbp, rsp
    mov rcx, msg
    push rcx
    call _printf
    pop rcx

    exit