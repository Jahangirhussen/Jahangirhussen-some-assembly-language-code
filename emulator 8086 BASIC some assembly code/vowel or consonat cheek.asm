include emu8086.inc
org 100h

.data
    v db "Enter a character: $"
    input db ?

.code
    mov ax, @data
    mov ds, ax
    lea dx, v
    mov ah, 01h
    int 21h
    mov input, al

    cmp input, 'A'       
    je vowel
    cmp input, 'E'       
    je vowel
    cmp input, 'I'       
    je vowel
    cmp input, 'O'       
    je vowel
    cmp input, 'U'      
    je vowel
   
    cmp input, 'a'       
    je vowel
    cmp input, 'e'       
    je vowel
    cmp input, 'i'       
    je vowel
    cmp input, 'o'       
    je vowel
    cmp input, 'u'      
    je vowel
    jne consonant
   
     consonant:
     printn
    print "Consonant."
    jmp stp
    
vowel: 
printn
    print "Vowel."
    jmp stp


stp:
    ret
