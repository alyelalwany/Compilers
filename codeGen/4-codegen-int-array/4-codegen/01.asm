global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 5

segment .text
main:
mov eax, 37
push eax
pop ebx
mov eax, 13
mov [label0+4*eax], ebx
mov eax, 102
push eax
pop ebx
mov eax, 81
mov [label0+4*eax], ebx
mov eax, 69
push eax
pop ebx
mov eax, 65
mov [label0+4*eax], ebx
mov eax, 81
mov eax, [label0+eax*4]
push eax
call write_unsigned
add esp,4
mov eax, 2
push eax
mov eax, 15
pop ebx
sub eax, ebx
mov eax, [label0+eax*4]
push eax
mov eax, 1
push eax
mov eax, 80
pop ebx
add eax, ebx
mov eax, [label0+eax*4]
pop ebx
sub eax, ebx
mov eax, [label0+eax*4]
push eax
call write_unsigned
add esp,4
mov eax, 23
push eax
call read_unsigned
pop ebx
mov [label0+4*ebx], eax
mov eax, 23
mov eax, [label0+eax*4]
push eax
call write_unsigned
add esp,4

ret
