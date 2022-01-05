global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label1: resb 1
label0: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
mov eax, 23
push eax
mov eax, [label0]
pop ebx
cmp eax, ebx
jb label4
ja label3
mov eax, 1
jmp label2
label4:
mov eax, 0
jmp label2
label3:
mov eax, 2
jmp label2
label2:
push eax
call write_unsigned
add esp,4

ret
