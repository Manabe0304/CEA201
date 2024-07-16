include  \masm32\include\masm32rt.inc

.data
    tieude db "Summer semester 2024 - FPTU",13,10,0       ;khai bao bien toan cuc

.code

vidu:
    print OFFSET tieude
    exit 
end vidu
