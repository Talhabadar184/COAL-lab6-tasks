.model small
.stack 200h
.data
a dw 1,2,3,4,5,6,4,8,9,4,11,12,13,4,15,15,17,4,19,20
check dw 4
 
.code        
mov ax,@data
mov ds,ax
mov si,0
mov ax,0 


mov cx,20

count:
inc di

l1:    
mov ax,[a+si]
inc si
cmp check,ax
jz count

           

loop l1



.exit