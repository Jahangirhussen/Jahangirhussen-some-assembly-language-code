include emu8086.inc
org 100h
.data 
array db 4,8,6,9,1,2,7 
str db "Array elements are : $"

.code
mov ax,@data
mov ds,ax
lea dx,str;mov dx, offset str 
mov ah,09h
int 21h 
lea si,array;mov si, offset array
mov cx,7
loop1:
mov dl,[si]
add dl,48
mov ah,02h
int 21h
mov dl,32
mov ah,02h
int 21h
inc si
loop loop1
ret
