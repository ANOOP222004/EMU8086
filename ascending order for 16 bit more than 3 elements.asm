org 100h
mov si,4000h
mov bx,03h
mov cx,03h 
l1:
mov ax,[si]
cmp ax,[si+2]
jc go
xchg ax,[si+2]
xchg ax,[si]
go:
inc si
inc si
dec cx
jnz l1 
mov cx,03h
mov si,4000h
dec bx
jnc l1
ret
