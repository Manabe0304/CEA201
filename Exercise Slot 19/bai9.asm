include  \masm32\include\masm32rt.inc

sum PROTO:DWORD, :DWORD

.code

start:
    call main                                 ;goi ham khong truyen gia tri 
    exit

    main proc
        LOCAL a: DWORD                        ;khai bao bien cuc bo 
        LOCAL b: DWORD
        LOCAL kq: DWORD
        MOV a, sval(input("Nhap a: "))        ;SVAL chuyen string sang number
        MOV b, sval(input("Nhap b: "))

        INVOKE sum,a,b                        ;INVOKE goi ham co truyen bien
        ret
    main endp 

    sum proc x:DWORD, y:DWORD
        mov eax, x
        add eax, y
        print chr$("a + b = ")
        print str$(eax)
        ret
    sum endp   
end start
