
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov cl,10 ;counter
mov si,1000h ;mov to source index
mov di,1050h ;mov to destination index
back:
;si and dl are swaped in this and next step
mov al,[si] 
mov [di],al
; point to next number
inc si 
inc di
;decrement count untill zero
dec cl
jnz back
nop
ret




