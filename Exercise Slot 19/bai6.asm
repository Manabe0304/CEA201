include  \masm32\include\masm32rt.inc

sum PROTO:DWORD, :DWORD

.code

vidu:
    call ham1                                 ;goi ham khong truyen gia tri 
    exit

    ham1 proc
        LOCAL a: DWORD                        ;khai bao bien cuc bo 
        LOCAL b: DWORD
        LOCAL kq: DWORD
        MOV a, sval(input("Nhap a: "))        ;SVAL chuyen string sang number
        MOV b, sval(input("Nhap b: "))

        INVOKE sum,a,b                        ;INVOKE goi ham co truyen bien

        mov kq, eax
        print chr$("a - b = ")
        print str$(kq)
        ret
    ham1 endp 

    sum proc x:DWORD, y:DWORD
        mov eax, x
        sub eax, y
        ret
    sum endp   
end vidu
