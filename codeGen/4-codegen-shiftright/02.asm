global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
mov eax, 2
push eax
mov ecx, 2
pop ebx
mov eax, [label0]
cmp ebx, 0
je label2
label3:
xor edx, edx
div ecx
sub ebx, 1
cmp ebx, 0
je label1
jmp label3
label2:
mov eax, 0
label1:
push eax
call write_unsigned
add esp,4

ret
