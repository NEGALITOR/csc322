; TAHA TAS
; Program 9: Sort Array
; December 2, 2022
; Sorts array with bubble sort and prints out the numbers from lest to greatest with 0 padding

%macro  PrintIt 2
        pusha
        mov eax,4
        mov ebx,1
        mov ecx,%1
        mov edx,%2
        int 80h
        popa
%endmacro


SECTION .data
nums:           dw      200, 300, 0, 65535, 0, 1, 65534, 300, 100
numslen:        EQU     ($-nums)

cls:            db      1bh, '[2J'
clsSize:        EQU     $-cls

oArrayLabel:    dw      "Original Array", 10
OALlen:         EQU     ($-oArrayLabel)

sArrayLabel:    dw      "Sorted Array", 10
SALlen:         EQU     ($-sArrayLabel)

outputfield:    db      "     ", 10
OPFlen:         EQU     ($-outputfield)

ten:            dw      10  

temp:           dw      0

SECTION .bss

SECTION .text
global _main
_main:

PrintIt cls,clsSize
PrintIt oArrayLabel, OALlen


call sortArray
mov ebx, nums
mov ecx, numslen
call _prtarray


lastBreak:

; Normal termination code
mov eax, 1
mov ebx, 0
int 80h


_prtarray:
    pusha

    prtTop:
        mov     ax, [ebx]
        call    _convert
        add     ebx,2
        dec     ecx
    loop    prtTop

    popa
ret

; Converts value
_convert:
        pusha
        
        mov ebx, outputfield
        add bx, 4
        mov ecx, 5

        floop:
                b1:
                xor dx, dx
                b2:
                div WORD[ten]
                b3:
                add dx, '0'
                b4:
                mov [ebx], dl
                b5:
                sub ebx,1
                b6:
        loop floop

        mov     eax, 4
        mov     ebx, 1
        mov     ecx, outputfield
        mov     edx, OPFlen
        int     80h

        popa
ret

; BubbleSort
sortArray:
        pusha

        xor ax, ax
        xor bx, bx
        oloop:
                
                cmp ax, numslen/2
                jb iloop
                jmp endo

                iloop:
                        ; sets up comparison for the two loops
                        mov WORD[temp], numslen/2
                        sub [temp], ax
                        dec WORD[temp]

                        cmp bx, [temp]
                        jb cont1
                        jmp endi

                cont1:
                        ; moves numbers into registers and compares the 2 values to see if unsigned cx is greater than unsigned dx
                        xor cx, cx
                        xor dx, dx
                        mov cx, WORD[nums + 2*ebx]
                        mov dx, WORD[nums + 2*ebx + 2]

                        cmp cx, dx
                        ja cont2
                        jmp loopback

                cont2:
                        ; swaps the two values between after comparing
                        xchg cx, dx
                        mov WORD[nums + 2*ebx], cx
                        mov WORD[nums + 2*ebx + 2], dx

                loopback:
                        inc bx
                        jmp iloop
                endi:
                        ; zeroes inner loop bx and inc outer loop ax
                        xor bx, bx
                        inc ax
                        jmp oloop
        endo:



        popa
ret


