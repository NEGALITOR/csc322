; NAME
; Assignment
; Date
; Etc...

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
n: DD 2, 3, 4
a: DD -3333
b: DD -3333



SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:



mov eax, a
mov ebx, b
b1:
shr DWORD[a], 1
mov eax, a
b2:
sar DWORD[b], 1
mov ebx, b
b3:


;;; Addressing RAM
;mov eax, [n]
;b1:
;mov ebx, n
;b2:
;mov ecx, [ebx]
;b3:
;mov ecx, [ebx + 8]
;b4:
;mov ecx, [n + 4]
;b5:
;mov edx, [n + eax * 4]
;b6:




; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
