include \masm32\include\masm32rt.inc

    .data
      txtmsg db "I am data in the initialised data section",0

    .code                       ; Tell MASM where the code starts
; ««««««««««««««««««««««««««««««««««««««««««««««
start:                          ; The CODE entry point to the program
    call main                   ; branch to the "main" procedure
    exit
; ««««««««««««««««««««««««««««««««««««««««««««««««««
main proc
    print OFFSET txtmsg
    ret                         ; return to the next instruction after "call“
main endp
; ««««««««««««««««««««««««««««««««««««««««««««««««««

end start                       ; Tell MASM where the program ends
