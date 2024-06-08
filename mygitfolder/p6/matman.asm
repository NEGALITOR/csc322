; TAHA TAS
; Matrix Management - Program 6
; 11/1/2022
; Adds the rows and columns and puts it in respective slot in array

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
ROWS: EQU 5
COLS: EQU 7
MyMatrix: dw 	1,  2,  3,  4,  5,  6,  7
	  dw 	8,  9, 10, 11, 12, 13, 14
	  dw 	15, 16, 17, 18, 19, 20, 21
	  dw 	22, 23, 24, 25, 26, 27, 28
	  dw	29, 30, 31, 32, 33, 34, 35

SECTION .bss
; define uninitialized data here
RowSums:  RESW ROWS
ColSums:  RESW COLS
Sum:      RESW 1

SECTION .text
global _main
_main:

; put your code here.

mov ax, 0
mov ebx, 0
mov ecx, 0
mov edx, 0

rowl:
  
  cowl:
    mov ecx, edx
    imul ecx, COLS*2

    mov ax, [MyMatrix + ebx*2+ecx]

    add [ColSums + ebx*2], ax
    add [RowSums + edx*2], ax
    add WORD[Sum], ax

    inc ebx
    
    b1:

    cmp ebx, COLS
    je endc
    jmp cowl
    
  endc:

  xor ebx, ebx

  inc edx
  inc ecx
  
  b2:

  cmp edx, ROWS
  je endr
  jmp rowl

endr:

lastBreak:
; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
