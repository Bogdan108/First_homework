
section .data
    userMsg: db 'Hello,world!',0
    lenMsg: dq 12

section .text
    global _start 
_start:
    mov rax,1
    mov rdi,1
    mov rsi,userMsg
    mov rdx,qword[lenMsg]
    syscall

    mov rax,60
    mov rdi,0
    syscall