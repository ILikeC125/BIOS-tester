ORG 0x7C00

    cli

    xor ax, ax
    mov ss, ax
    mov sp, 0x7C00

    xor ax, ax
    mov ds, ax

    sti
    mov ah, 0x0E
    mov al, 'W'
    int 0x10

hang:
    hlt
    jmp hang

TIMES 510-($-$$) db 0
DW 0xAA55

