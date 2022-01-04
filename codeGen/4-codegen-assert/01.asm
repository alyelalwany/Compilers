global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resb 1

segment .text
main:
mov eax, 1
push eax
call write_unsigned
add esp,4
mov eax, 1
push eax
mov eax, 1
pop ebx
cmp eax, ebx
sete al
cmp al, 1
ret
mov eax, 2
push eax
call write_unsigned
add esp,4
call read_boolean
mov [label0], al
mov al, [label0]
cmp al, 1
ret
mov eax, 3
push eax
call write_unsigned
add esp,4

ret
