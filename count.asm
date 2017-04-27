%include 'func.asm'


section .text
global _start
_start:

mov eax, 0

nextNumber:
lea eax, [eax + 1]
call iprintLF
cmp eax, 10 
jne nextNumber

call exit

