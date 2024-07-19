include  \masm32\include\masm32rt.inc
    
bienso PROTO :DWORD
.code

start:
    call main
    exit

main proc
    LOCAL so: DWORD  
    LOCAL kq: DWORD
    MOV so, sval(input("Nhap so: ",13))   
    invoke bienso, so 

    MOV kq, eax
    print str$(kq)
    ret
main endp

bienso proc string:DWORD                   
    ret
bienso endp

end start      
