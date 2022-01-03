global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1
label1: resd 1
label2: resb 1

segment .text
main:
mov eax, 12
mov [label0], eax
mov eax, [label0]
mov [label1], eax
mov al, 1
mov [label2], al
mov eax, [label0]
push eax
call write_unsigned
add esp,4
mov eax, [label1]
push eax
call write_unsigned
add esp,4
xor eax, eax
mov al, [label2]
push eax
call write_boolean
add esp,4

ret
