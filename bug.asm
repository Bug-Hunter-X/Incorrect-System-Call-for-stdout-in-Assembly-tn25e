```assembly
section .data
    msg db "Hello, world!",0
section .text
    global _start
_start:
    ; mov eax, 4 ; sys_write
    ; mov ebx, 1 ; stdout
    ; mov ecx, msg ; message
    ; mov edx, 13 ; length
    ; int 0x80
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```