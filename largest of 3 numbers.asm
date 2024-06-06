org 100h
mov al,3
mov bl,2
mov cl,1
cmp al,bl
jg label1
cmp bl,cl
jg lb
jmp lc
label1:
cmp al,cl
jg la

lc:
print'c is largest'
jmp exit

la:
print'a is largest'
jmp exit

lb:
print'b is largest'
jmp exit
exit: