mov bx, 0x7C0
mov ds, bx

mov ah, 0x0E

inicio:
mov bx, [iteravel]
mov al, [nome + bx]
xor bx, bx
int 0x10
inc word [iteravel]
cmp byte [iteravel], 5
jne inicio

nome: db 'Italo'
iteravel: db 0

times 510 - ($ - $$) db 0
dw 0xAA55
