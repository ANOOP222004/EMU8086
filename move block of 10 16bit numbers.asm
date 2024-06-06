
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 
mov cl,10 ;counter
mov si,1000h ;move to source index
mov di,1050h ;move to destination index
back:
;copy si to di
mov ax,[si]
mov [di],ax
;point to next numberCXCXCXC
inc si
inc di
;decrement count until zero
dec cl
jnz back
nop
ret




