global main
extern be_egesz
extern ki_egesz

section .data
szoveg: db "megszentsegtelenithetetlensegetekre",0  ; a vegen a lezaro 0, mint C-ben

section .text
main:
        mov ecx,0
        mov edx,0
cikl:
        cmp byte [szoveg+ecx],0
        je vege
        cmp byte [szoveg+ecx],'e'
        jne nem_egyenlo
        inc edx
nem_egyenlo:
        inc ecx
        jmp cikl
vege:
        push edx
        call ki_egesz
        add esp,4
		ret
