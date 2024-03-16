include emu8086.inc
org 100h

.data
input db ?

.code
mov ax, @data
mov ds, ax

mov ah, 01h   
int 21h       

mov bl, 2     

mov al, input
div bl         

cmp ah, 0     
je even
jne odd

even:
    print "  even :"
    jmp re

odd:
    print "  odd :" 
    jmp re

  re:
ret


