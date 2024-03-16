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


    div bl
    cmp ah, 0
    je not_prime
    jne check

not_prime:
    print "   is not prime."
    jmp done

check:
    print "   is prime."
    jmp done

done:
ret
