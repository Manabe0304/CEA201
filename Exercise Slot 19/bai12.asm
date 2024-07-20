include  \masm32\include\masm32rt.inc

divide PROTO:DWORD, :DWORD

.code

start:
    call main                                 ;goi ham khong truyen gia tri 
    exit

    main proc
        LOCAL a: DWORD                        ;khai bao bien cuc bo 
        LOCAL b: DWORD
        MOV a, sval(input("Nhap a: "))        ;SVAL chuyen string sang number
        MOV b, sval(input("Nhap b: "))

        INVOKE divide,a,b                        ;INVOKE goi ham co truyen bien
        ret
    main endp 

    divide proc x:DWORD, y:DWORD
       LOCAL kq: DWORD                           ; khai bao thuong so
       LOCAL rem: DWORD                          ; khai bao phan du
       mov eax, x                                ; Move first parameter to eax
       mov ebx, y                                ; Add second parameter to eax
       xor edx, edx      
       div ebx                           ; Store the result in the result variable
       mov kq, eax
       mov rem, edx

       print chr$("a / b = ")
       print str$(kq)                        ; Print the result
       print chr$(13,10, "a % b =")
       print str$(rem)
       ret
    divide endp   
end start
