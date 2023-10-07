section .text
org 100h

start:
    mov cx, 9
    

my_loop:
    push cx
    mov dx, 9
    
    sub dx, cx
    add dx, '0'

    mov ax, 200h
    int 21h 

    pop cx
    loop my_loop

    mov ax, 4C00h
    int 21h

section .data
counter_label dw 8

section .bss


; 
;

;
; for(int i = 0; i < 9; ++i) {
;     cout << i << ", ";
; }
;
;