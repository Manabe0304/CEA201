include \masm32\include\masm32rt.inc

xau PROTO :DWORD      

.code                       

start:                          
    call main                   
    exit

main proc
    LOCAL ten:DWORD        
    mov ten, input("Nhap string: ",13)  
    invoke xau, ten  
    ret
main endp

xau proc string:DWORD
    print string                    
    ret
xau endp

end start                      
