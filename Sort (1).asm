.model small
.data 
Arr dw 1,2,0,9,8
count dw 5
temp dw 0 
i dw 1
.code
Mov ax,@data
Mov ds,ax

mov bx,offset count
mov cx,[bx]
sub cx,1 
mov dx,0x0


mov ax,0x0
mov bx,offset Arr
mov si,0x1
 mov ax,[bx] 
 inc si
  
mov dx,1  
Outerloop:  
innerloop:

   cmp dx,[count]
   je innerLoopEnd 
         
        
        cmp ax,[Arr+si]
        jg Swap
        
          
          inc si
          inc si
         inc dx
        jmp innerloop
        
        
        
  Swap:
       mov [temp],ax
       mov ax,[Arr+si]
       
       mov [bx],ax
       
       mov ax,[temp]
       
       mov [Arr+si],ax  
         
       mov ax,[bx]  
         
         
         
          inc si
          inc si   
      inc dx
    
   jmp innerloop 
innerLoopEnd:
   add bx,2 
   mov si,bx
   add si,2
   
   mov ax,[bx]
   
  mov dx,1   
   add dx,[i]  
   
   inc [i]
   
loop outerloop

   

.exit