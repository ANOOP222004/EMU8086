org 100h
mov al,3 ;assign a
mov bl,2 ;assign b
mov cl,1 ;assign c
cmp al,bl ;compare a and b
jg label1
cmp bl,cl ;compare b and c
jg lb
jmp lc
label1:
cmp al,cl ;compare a nad c
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
