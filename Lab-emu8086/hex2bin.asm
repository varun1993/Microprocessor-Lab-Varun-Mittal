.model small
.stack 64
.data
a db 1ah  
.code
start:
mov ax,@data
mov ds,ax

mov cl,01h   
mov bl,02h   
mov al,a
mov si,2000h
loop1:
mov ah,00h 
inc cl
div bl
mov [si],ah
inc si
cmp al,bl
jge loop1
mov [si],al   
loop2:
mov dl,[si]
add dl,30h
mov ah,02
int 21h
dec si
dec cl
jnz loop2

end start
end


