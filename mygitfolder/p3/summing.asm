; TAHA TAS
; CSC 322 10/3/2022
; Project 3 - Summing Arrays
; Adds values from arrays

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
bArray:		DB	-1,-2,-3,-4,-5
wArray:		DW	0,1,2,3,4
dArray:		DD	322,322h,322q,1833,1833h
bArraySum:	DB	0
wArraySum:	DW	0
dArraySum:	DD	0
grandTotal:	DD	0



SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:

; bArraySum adding
mov al, [bArray]
add al, [bArray+1]
add al, [bArray+2]
add al, [bArray+3]
add al, [bArray+4]
movsx eax, al
mov [bArraySum], al
alBreak:

; wArraySum adding
mov bx, [wArray]
add bx, [wArray+1*2]
add bx, [wArray+2*2]
add bx, [wArray+3*2]
add bx, [wArray+4*2]
movsx ebx, bx
mov [wArraySum], bx
bxBreak:

; dArraySum adding
mov ecx, [dArray]
add ecx, [dArray+1*4]
add ecx, [dArray+2*4]
add ecx, [dArray+3*4]
add ecx, [dArray+4*4]
mov [dArraySum], ecx
ecxBreak:

; grandTotal adding
add [grandTotal], ecx
add [grandTotal], eax
add [grandTotal], ebx

lastBreak:

; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
