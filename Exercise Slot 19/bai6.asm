include \masm32\include\masm32rt.inc

difference PROTO :DWORD, :DWORD                       ; Tinh hieu cua 2 so

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

        INVOKE difference, a, b               ; INVOKE goi ham co truyen bien

        mov kq, eax
        print chr$("a - b = ")
        print str$(kq)
        ret
    main endp 

    difference proc x:DWORD, y:DWORD
        mov eax, x
        sub eax, y
        ret
    difference endp   

end start
