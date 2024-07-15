include \masm32\include\masm32rt.inc
 xinchao PROTO :DWORD      ;  prototype a method + type of parameter

    .code                       ; Tell MASM where the code starts

start:                          ; The CODE entry point to the program
    call main                   ; branch to the "main" procedure
    exit

; «««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««
main proc
    LOCAL ten:DWORD        ; a "handle" for the text returned by "input"
    mov ten, input("Chao ban, ban ten la gi?",13,10) ; get input string
    invoke xinchao, ten  ; show inputted string
    ret
main endp
; «««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««
xinchao proc string:DWORD
    print chr$("Chao mung ")
    print string                ; show the string at the console
    print chr$(" den voi FU!",13,10)
    ret
xinchao endp
; «««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««
end start                       ; Tell MASM where the program ends
