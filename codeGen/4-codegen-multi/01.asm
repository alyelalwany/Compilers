global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1

segment .text
main:
mov eax, 2
mov [label0], eax
mov eax, [label0]
label3:
cmp eax, 0
jle near label4
push eax
mov eax, 3
label1:
cmp eax, 0
jle near label2
push eax
mov eax, [label0]
push eax
call write_unsigned
add esp,4
pop eax
sub eax, 1
jmp near label1
label2:
pop eax
sub eax, 1
jmp near label3
label4:

ret
