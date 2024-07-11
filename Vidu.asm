include  \masm32\include\masm32rt.inc

.data
    tieude db "CUng hoc CEA201",13,10,0       ;khai bao bien toan cuc

    sum PROTO:DWORD, :DWORD
.code

vidu:
    print OFFSET tieude                       ;in ra iben toan cuc OFFSET
    CALL ham1
    print chr$("Hoc ASSEMBLY that de!",13,10) 
    call ham1                                 ;goi ham khong truyen gia tri 
    call ham2
    exit

    ham1 proc
        print chr$("----------------",13,10)
        ret

    ham1 endp 

    ham2 proc
        LOCAL a: DWORD                        ;khai bao bien cuc bo 
        LOCAL b: DWORD
        LOCAL kq: DWORD
        MOV a, sval(input("Nhap a: "))        ;SVAL chuyen string sang number
        MOV b, sval(input("Nhap b: "))

        INVOKE sum,a,b                        ;INVOKE goi ham co truyen bien

        mov kq, eax
        print chr$("a + b = ")
        print str$(kq)
        ret
    ham2 endp 

    sum proc x:DWORD, y:DWORD
        mov eax, x
        add eax, y
        ret
    sum endp   
end vidu
