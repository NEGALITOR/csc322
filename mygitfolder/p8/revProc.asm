; TAHA TAS
; Program 8: Reverse Array with a Proc
; Nov 18, 2022
; Reverses array by utilizing a macro procedure

%macro ReverseArr 2

  mov ecx, (%2/4)-1
  mov edx, 0

  %1loop:
    mov eax, [%1 + 4*edx]
    mov ebx, [%1 + 4*ecx]
    
    mov [%1 + 4*edx], ebx
    mov [%1 + 4*ecx], eax

    inc edx
    dec ecx
    
    cmp ecx, edx

    jl %1exit
    jne %1loop
  %1exit:

%endmacro



SECTION .data
array1: dd      1,2,3,4,5
len1:   EQU     ($-array1)


array2: dd      -10, -9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9
len2:   EQU     ($-array2)


array3: dd  0,10,20,30,40,50,60,70,80,90
        dd  100,110,120,130,140,150,160,170,180,190
        dd  200,210,220,230,240,250,260,270,280,290
        dd  300,310,320,330,340,350,360,370,380,390
        dd  400,410,420,430,440,450,460,470,480,490,500
len3:   EQU     ($-array3)


SECTION .bss
; define uninitialized data here

SECTION .text
global _main
_main:

ReverseArr array1,len1
ReverseArr array2,len2
ReverseArr array3,len3

lastBreak:
; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
