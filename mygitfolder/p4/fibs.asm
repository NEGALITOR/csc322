; TAHA TAS
; Program 4: Fibonacci Sequence
; 10/7/2022
; Creates the Fibonacci Sequence up to 610 with an array of size 32 bits

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ

SECTION .bss
; define uninitialized data here

Fibs: RESW 16 ;Reserves space so 16 words can fit in array (32 bits)

SECTION .text
global _main
_main:

; put your code here.

mov word[Fibs + 0 * 2], 0
mov word[Fibs + 1 * 2], 1
mov ax, [Fibs]
add ax, [Fibs + 1 * 2]
;ax = 1

mov word[Fibs + 2 * 2], ax
add ax, [Fibs + 1 * 2]
;ax = 2

mov word[Fibs + 3 * 2], ax
add ax, [Fibs + 2 * 2]
;ax = 3

mov word[Fibs + 4 * 2], ax
add ax, [Fibs + 3 * 2]
;ax = 5

mov word[Fibs + 5 * 2], ax
add ax, [Fibs + 4 * 2]
;ax = 8

mov word[Fibs + 6 * 2], ax
add ax, [Fibs + 5 * 2]
;ax = 13

mov word[Fibs + 7 * 2], ax
add ax, [Fibs + 6 * 2]
;ax = 21

mov word[Fibs + 8 * 2], ax
add ax, [Fibs + 7 * 2]
;ax = 34

mov word[Fibs + 9 * 2], ax
add ax, [Fibs + 8 * 2]
;ax = 55

mov word[Fibs + 10 * 2], ax
add ax, [Fibs + 9 * 2]
;ax = 89

mov word[Fibs + 11 * 2], ax
add ax, [Fibs + 10 * 2]
;ax = 144

mov word[Fibs + 12 * 2], ax
add ax, [Fibs + 11 * 2]
;ax = 233

mov word[Fibs + 13 * 2], ax
add ax, [Fibs + 12 * 2]
;ax = 377

mov word[Fibs + 14 * 2], ax
add ax, [Fibs + 13 * 2]
;ax = 610

mov word[Fibs + 15 * 2], ax

lastBreak:

; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
