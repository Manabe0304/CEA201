include \masm32\include\masm32rt.inc
.data
   bten2 DB "Hoang ",0           ; Khai bao bien tong hop

xinchao PROTO :DWORD             ; Khai bao nguyen mau ban

.code                           ; Tell MASM where the code starts

start:                          ; The CODE entry point to the program
   call main                    ; branch to the "main" procedure
   exit
   
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
main proc

    LOCAL ten:DWORD        ; Khai bao bien cuc bo
    mov ten, input("Chao ban, ban ten la gi?",13,10) ;imput string
    call chao
    invoke xinchao, ten; Goi ham va truyen bien
    ret
main endp

; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
chao proc
    print chr$("Chao mung ")
    ret
chao endp

; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
xinchao proc bten:DWORD
    print OFFSET bten2    ; In ra man hinh bien tong the qua lenh OFFSET
    print bten                ; In ra bien
    print chr$(" den voi FU!",13,10)
    ret
xinchao endp
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
end start                       ; Tell MASM where the program ends
    