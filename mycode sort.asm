.model small
.stack 2000h
.data 


arr1 dw 20,19,18,17,16,15,14,13,12,11,1,2,3,4,5,6,7,8,9,10
temp dw 0
count dw 20
i dw 1

.code

mov ax,@data
mov ds,ax 

mov bx,offset count
mov cx,[bx]
sub cx,1
mov dx,0x0

mov ax,0h
mov bx,offset arr1
mov si,0x1
mov ax,[bx]
inc si
 
mov dx,1
outerloop:
innerloop:

cmp dx,[count]
je innerloopend 

cmp ax,[arr1+si]
jg swap

inc si
inc si
inc dx  
jmp innerloop



swap:

mov [temp],ax
mov ax,[arr1+si]
mov [bx],ax

mov ax,[temp]
mov [arr1+si],ax
mov ax,[bx]

inc si
inc si
inc dx

jmp innerloop

innerloopend: 
add bx,2
mov si,bx
add si,2

mov ax,[bx]

mov dx,1

add dx,[i]

inc [i]   


loop outerloop


.exit