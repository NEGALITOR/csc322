; TAHA TAS
; PROGRAM 2: ADDING INTEGERS
; 9/28/2022

SECTION .data
; vars here


SECTION .bss
;define uninitialized data

SECTION .text
global _main
_main:

;code here
mov AX, 0246h
mov BX, 0DCABh
add AX, BX

mov AX, 0ABCDh
mov BX, 0DCBAh
add AX, BX

mov AX, 0001h
mov BX, 0F0F0h
add AX, BX

mov AX, 2468h
mov BX, 2468h
add AX, BX

mov AX, 7FFFh
mov BX, 0001h
add AX, BX

mov AX, 0ABCDh
mov BX, 0FEDCh
add AX, BX

mov AX, 0B0Bh
mov BX, 0A11Eh
add AX, BX

mov AX, 7FFFh
mov BX, 7FFFh
add AX, BX

mov AX, 8000h
mov BX, 8000h
add AX, BX

;termination code
mov eax, 1
mov ebx, 0
int 80h
