.model small
.stack 200h
.data
check db 6
arr db 0,1,2,6,4,5,6,7,8,9,10,11,12,13,6,15,16,17,6,19,20


.code

mov ax,@data
mov ds,ax

mov bx,offset arr
mov si,0
mov di,0

mov cx,20

jmp loop1

count1:
inc di

loop1:


mov al,[bx+si]

inc si

cmp check,al
jz count1 


loop loop1

.exit

