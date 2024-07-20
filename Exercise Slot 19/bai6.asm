include \masm32\include\masm32rt.inc

difference PROTO :DWORD, :DWORD                       ; Tinh hieu cua 2 so

.code

start:
    call ham1                                 ; goi ham khong truyen gia tri 
    exit                    ; exit program

    ham1 proc
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
    ham1 endp 

    difference proc x:DWORD, y:DWORD
        mov eax, x
        sub eax, y
        ret
    difference endp   

end start
