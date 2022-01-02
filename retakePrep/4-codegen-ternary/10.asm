global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1
label1: resd 1
label2: resd 1
label3: resb 1

segment .text
main:
call read_unsigned
mov [label0], eax
mov al, 0
mov [label3], al
mov eax, 2
mov [label1], eax
label8:
mov eax, [label0]
push eax
mov eax, [label1]
pop ebx
cmp eax, ebx
setl al
push ax
mov al, [label3]
xor al, 1
pop bx
and al, bl
cmp al, 1
jne near label9
mov eax, 0
push eax
xor edx, edx
mov eax, [label1]
push eax
mov eax, [label0]
pop ebx
div ebx
mov eax, edx
pop ebx
cmp eax, ebx
sete al
cmp al, 1
jne label4
mov al, 1
jmp label5
label4:
mov al, 0
label5:
mov [label3], al
mov eax, 0
push eax
xor edx, edx
mov eax, [label1]
push eax
mov eax, [label0]
pop ebx
div ebx
mov eax, edx
pop ebx
cmp eax, ebx
sete al
cmp al, 1
jne label6
mov eax, [label1]
jmp label7
label6:
mov eax, [label2]
label7:
mov [label2], eax
mov eax, 1
push eax
mov eax, [label1]
pop ebx
add eax, ebx
mov [label1], eax
jmp label8
label9:
xor eax, eax
mov al, [label3]
push eax
call write_boolean
add esp,4
mov al, [label3]
cmp al, 1
jne label10
mov eax, [label2]
jmp label11
label10:
mov eax, 0
label11:
push eax
call write_unsigned
add esp,4

ret
