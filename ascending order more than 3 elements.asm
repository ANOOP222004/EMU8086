org 100h
include 'emu8086.inc'
mov si,4000h
mov bx,3h
mov cx,3h
l1:
mov al,[si]
cmp al,[si+1]
jc go
xchg al,[si+1]
xchg al,[si]
go:
inc si
dec cx
jnz l1
mov cx,3h
mov si,4000h
dec bx
jnz l1
ret                                                      