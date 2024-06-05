
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ah,8 ;move number of (elements or numbers)
mov bl,7 ;set a counter by (num-1) 
goback:
mov cl,7 ;counter
mov si,1000h ;asign source index
back:
mov al,[si] ;1st element
cmp al,[si+1] ;next element
js noexchange
;swap the positions of 1st and 2nd element
xchg al,[si+1]
xchg al,[si]
noexchange:
inc si ;point next element
dec cl ;decrement counter
jnz back 
dec bl ;decrement bl for repeating the process from go back to get ascending order
jnz goback
ret




