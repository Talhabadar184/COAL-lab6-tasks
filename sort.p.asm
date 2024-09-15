.model small
.stack 200h
.data 
A dw 10,9,8,7,6,5,4,3,2,1
count dw 10
temp dw 0
i dw 1

.code
mov ax,@data
mov ds,ax

mov bx,offset count
mov cx,[bx]
sub cx,1
mov dx,0h

mov ax,0h
mov bx,offset A
mov si,0x1
mov ax,[bx]
inc si

mov dx,1   

outerloop:
innerloop:



cmp dx,[count]
je innerloopend


cmp ax,[A+si]
jg swap    

inc si 
inc si
inc dx

jmp innerloop



swap:

mov [temp],ax
mov ax,[A+si]
mov [bx],ax

mov ax,[temp]
mov [A+si],ax
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