global main
extern be_egesz
extern ki_egesz

section .bss
tomb: resd 5

section .text
main:
        mov ecx,0
cikl1:
        cmp ecx,5
        jae feltoltve
        push ecx
        call be_egesz
        pop ecx
        mov [tomb+4*ecx],eax
        inc ecx
        jmp cikl1
feltoltve:
        mov ecx,0
cikl2:
        cmp ecx,5
        jae vege
        push ecx
        push dword [tomb+4*ecx]
        call ki_egesz
        add esp,4
        pop ecx
        inc ecx
        jmp cikl2
vege:
		ret
