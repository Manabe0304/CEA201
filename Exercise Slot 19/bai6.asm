include  \masm32\include\masm32rt.inc

dif PROTO:DWORD, :DWORD                       ;Tinh hieu cua 2 so

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

        INVOKE dif,a,b                        ;INVOKE goi ham co truyen bien

        mov kq, eax
        print chr$("a - b = ")
        print str$(kq)
        ret
    ham1 endp 

    dif proc x:DWORD, y:DWORD
        mov eax, x
        sub eax, y
        ret
    dif endp   
end vidu
