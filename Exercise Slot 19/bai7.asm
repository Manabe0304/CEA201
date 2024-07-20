include \masm32\include\masm32rt.inc

product PROTO :DWORD, :DWORD

.code

start:
    call main                                 ; goi ham khong truyen gia tri 
    exit                                      ; exit program

    main proc
        LOCAL a: DWORD                        ; khai bao bien cuc bo 
        LOCAL b: DWORD
        LOCAL kq: DWORD
        MOV a, sval(input("Nhap a: "))        ; SVAL chuyen string sang number
        MOV b, sval(input("Nhap b: "))

        INVOKE product, a, b                        ; INVOKE goi ham co truyen bien

        mov kq, eax
        print chr$("a * b = ")
        print str$(kq)
        ret
    main endp 

    product proc x:DWORD, y:DWORD
        mov eax, x
        imul eax, y
        ret
    product endp   

end start
