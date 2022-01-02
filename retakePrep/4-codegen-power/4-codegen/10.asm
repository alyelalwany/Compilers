global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1
label1: resd 1
label2: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
call read_unsigned
mov [label1], eax
mov eax, [label0]
push eax
mov eax, [label1]
mov ecx, eax
pop ebx
mov eax, ebx
cmp ecx, 0
je near label4
label3:
mul ebx
sub ecx, 1
cmp ecx, 1
jne near label3
jmp label5
label4:
mov eax, 1
label5:
mov [label2], eax
mov eax, [label2]
push eax
call write_unsigned
add esp,4

ret
