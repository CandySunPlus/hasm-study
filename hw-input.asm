%include 'func.asm'

section .data
tip: db 'Please enter your name: ', 0x0
prefix: db 'Hello, ', 0x0
max_input: equ 0xff

section .bss
sinput: resb  max_input

section .text
global _start

_start:
mov eax, tip
call sprint

mov edx, max_input
mov ecx, sinput
mov ebx, 0
mov eax, 3
int 0x80

mov eax, prefix
call sprint

mov eax, sinput
call sprint

call exit

