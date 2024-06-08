; NAME
; Assignment
; Date
; Etc...

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ

nums: db 10,20,30
vals: dw 100,200,300,400

SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:

; put your code here.
move ah,[nums]
b1:

add ah,[nums+1]
b2:


; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
