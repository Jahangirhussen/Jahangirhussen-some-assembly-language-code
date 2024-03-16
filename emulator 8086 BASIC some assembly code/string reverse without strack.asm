include emu8086.inc
org 100h
.data 
   str db "Enter the string : $" 
   str2 db "The reverse string is : $"
   str3 db 6 dup()

.code

    mov ax, @data
    mov ds, ax 
    
    lea dx,str
    mov ah,09h
    int 21h 
    mov dl,32
    mov ah,02h
    int 21h
    lea si,str3
    mov cx,6
    loop1:
    mov ah,01h
    int 21h
    mov [si],al
    inc si
    loop loop1 
    printn
    lea dx,str2
    mov ah,09h
    int 21h
    mov dl,032
    mov ah,02h
    int 21h
    mov cx,6
    lea si,str3
    add si,6
      
      printn 
    loop2:  
    dec si
    mov dx,[si] 
    mov ah,02h
    int 21h
    loop loop2
   
ret
