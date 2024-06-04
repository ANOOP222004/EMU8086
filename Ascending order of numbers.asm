
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov cl,10
mov si,1000h
back:
mov al,[si]
cmp al,[si+1]
js noexchange
xchg al,[si+1]
xchg al,[si]
noexchange:
inc si
dec cl
jnz back
ret




