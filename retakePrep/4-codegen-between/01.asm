global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1
label1: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
call read_unsigned
mov [label1], eax
xor eax, eax
mov eax, 23
push eax
pop ecx
mov eax, [label1]
push eax
pop ebx
mov eax, [label0]
cmp ebx, eax
jna near label3
cmp ebx, ecx
jnb near label3
mov al, 1
jmp label2
label3:
mov al, 0
label2:
xor al, 1
push eax
call write_boolean
add esp,4

ret
