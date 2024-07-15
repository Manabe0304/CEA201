include \masm32\include\masm32rt.inc

xinchao PROTO :DWORD      

    .code                       

start:                          
    call main                   
    exit

main proc
    LOCAL ten:DWORD        
    mov ten, input("Nhap ten: ",13,10) 
    invoke xinchao, ten  
    ret
main endp

xinchao proc string:DWORD
    print string                    
    ret
xinchao endp

end start                      
