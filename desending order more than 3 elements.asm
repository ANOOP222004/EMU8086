org 100h         
mov si,4000h
mov bl,3h
mov cl,3h
l1:
mov al,[si]
cmp al,[si+1]
jnc go
xchg al,[si+1]
xchg al,[si]
go:
inc si
dec cl
jnz l1
mov cl,3h
mov si,4000h
jnz l1
ret
