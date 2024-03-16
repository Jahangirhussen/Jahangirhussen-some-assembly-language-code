   .model
   .stack 100h
   
   
   .code
   
main proc 
    
    ;ekn input nibo 2 ta
mov ah,1     ; input newya hoy mov ah,1 diye
int 21h      ;mov ah,1 k call kora holo  
mov bl,al    ;bl reg a al er data raklam,,by defult al a sob thake


             ;ekn arekta input nibo
mov ah,1
int 21h
mov bh,al    ;sob man al a thake tai seta bl a store korbo
  
    ;ekn output show korbo
 
 
mov ah,2     ; mov ah,2 diye output dekay
mov dl,bl    ;dl=display reg diye amra bl name reg er value dekbo
int 21h      ;eta dara function call kore print korbe
 
 
     ;ekn 2nd input k display korbo
mov ah,2
mov dl,bh
int 21h
 
    ;ekn code seshh ba exit,na likle o hobe
 mov ah,4ch
 int 21h
 main endp
 end main
 
 
 