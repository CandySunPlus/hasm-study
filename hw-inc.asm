%include 'func.asm'

section .data
msg1 db 'Hello, world.', 0
msg2 db 'This is my world.', 0

section .text
global _start

_start:
mov eax, msg1
call sprintLF

mov eax, msg2
call sprintLF

call exit
