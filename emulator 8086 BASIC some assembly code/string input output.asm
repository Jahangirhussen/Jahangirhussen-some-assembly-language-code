.model small
.stack  100h

.data
  m db  'this is jahangir $' ;ekane $ mane eta string r etar kaj sesh
  
 
.code 
  
main proc      
    
  ;1->single key input.  
  ;2->single character output.  
  ;9->character string output.   
    
   mov ax,@data
   mov ds,ax 
    
    
     mov ah,9 ;
     lea dx,m ;lea string a dithe hoy , 9->character string output. 
      int 21h
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    