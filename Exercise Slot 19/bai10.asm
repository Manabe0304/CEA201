include  \masm32\include\masm32rt.inc

difference PROTO:DWORD, :DWORD

.code

start:
    call main                                 ;goi ham khong truyen gia tri 
    exit

    main proc
        LOCAL a: DWORD                        ;khai bao bien cuc bo 
        LOCAL b: DWORD
        MOV a, sval(input("Nhap a: "))        ;SVAL chuyen string sang number
        MOV b, sval(input("Nhap b: "))

        INVOKE difference,a,b                        ;INVOKE goi ham co truyen bien
        ret
    main endp 

    difference proc x:DWORD, y:DWORD
       LOCAL kq: DWORD
       mov eax, x                                ; Move first parameter to eax
       sub eax, y                                ; Add second parameter to eax
       mov kq, eax                           ; Store the result in the result variable

       print chr$("a - b = ")
       print str$(kq)                        ; Print the result
       ret
    difference endp   
end start
