; TAHA TAS
; Project 1: Data Storage
; 9.23.2022

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
a1: db 11
b1: dw 11b
c1: dd 11h
d1: dq 11q
e1: dw -5
f1: db 'CSC322'
g1: db 'Howdy'
h1: dw 'Howdy'
i1: db 1,2,3
j1: dd 10,11,12,14

a2: dw 2,4,6,8,10
b2: db 1,2,3,4,5
c2: dd 10,20,30,40
d2: dq 10h,11h,12h,13h

a3: dw -50
b3: db -45
c3: dw -30
d3: db -25
e3: dw -20

a4: db 'Bears'
b4: dd 100
c4: dw 0
d4: db 'Go '
e4: db 'Mercer!'

a5: db 100
b5: dw 100h
c5: dd 100b
d5: dw 100q
e5: db 100d

SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:

; put your code here.



; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
