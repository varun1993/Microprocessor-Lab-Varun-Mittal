.model small
.stack 64
.data
.code
start :
mov si,2000h
mov di,3000h
mov cl,05h
mov [si],01h
inc si
mov [si],02h
inc si
mov [si],03h
inc si
mov [si],04h
inc si
mov [si],05h
mov si,2000h
abc:
 mov al,[si]
 mov [di],al
 inc di
 inc si
 dec cl
 jnz abc
end start
end


