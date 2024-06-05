
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov cl,10 ;assign counter
mov si,1000h ;assign source index
back:
mov al,[si] ;assign al as 1st number
cmp al,[si+1] ;compare 1st and 2nd number
js noexchange
;exchange 1st and 2nd number
xchg al,[si+1]
xchg al,[si]
noexchange:
inc si ;point next number
dec cl ;decrement counter 
jnz back
ret




