
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov cl,10
mov si,1000h
mov di,1050h
back:
mov ax,[si]
mov [di],ax
inc si
inc di
dec cl
jnz back
nop
ret




