global main
extern be_egesz

section .bss
szoveg: resb 11

section .text
main:
        mov byte [szoveg+10],10    ; sorvege ASCII kodja
        call be_egesz
        mov ecx,9
cikl:
        cmp ecx,0
        jl vege
        mov edx,0
        mov ebx,10
        div ebx         ; eax-ben a hanyados, edx-ben (dl-ben) a maradek
        add dl,30h      ; szamjegy ASCII kodjanak szamolasa
        mov [szoveg+ecx],dl
        dec ecx
        jmp cikl
vege:
        mov edx,11      ; szoveg hossza
        mov ecx,szoveg  ; szoveg cime
        mov ebx,1       ; a standard kimenet kodja
        mov eax,4       ; kiiras, mint op. rendszer szolgaltatas kodja
        int 80h         ; megszakitas (hivja a megfelelo op. r. szolgaltatast)

		ret
