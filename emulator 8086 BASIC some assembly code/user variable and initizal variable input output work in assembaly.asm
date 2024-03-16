.model small
.stack 100h 


.data
 
  msg db 3 ; msg name a ekta variable declear korlam,than tar size hisebe db/dw dewya jay =db=define byte jar value 3 
 
   msg2 db ? ; ? mane value jani na pore nibo
 
 
 
.code
main proc
      
 
 mov ax,@data ;uporer data k connected kore dilam ax dara
  ;for msg variable
 mov ds,ax    ;ax er sob value rakbo ds regester a 
  
 mov ah,2 
 add msg,48   ;ekane print korbe love ,3 er ascii code ove,,r 3 show koelw ascii code 48+3  
 
 mov dl,msg 
 int 21h  
 
 
   ;for msg1 variable
   mov ah,1
   int 21h
   mov msg2,al  
   
      mov ah,2
      mov dl,msg2  
      int 21h
 
 
 
 
 
 
 
 
 