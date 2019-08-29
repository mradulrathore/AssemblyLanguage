%define sys_exit 60
%define sys_read 0
%define sys_write 1

%define stdin 0
%define stdout 1

%define success 0

section .bss

    %define buffer_len 64
    buffer: resb buffer_len

section .text

global _start
_start:

; Read input from the user
    mov rax, sys_read
    mov rdi, stdin
    mov rsi, buffer
    mov rdx, buffer_len

    add rax,3
    mov rdx, rax
    mov rax, sys_write
    mov rdi, stdout
    mov rsi, buffer
    syscall
    
; End the program
    mov rax, sys_exit
    mov rdi, success
    syscall
