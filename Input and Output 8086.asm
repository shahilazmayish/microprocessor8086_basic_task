.MODEL SMALL
.STACK 100H
.CODE

    INPUT:
    MOV AH,1        ;Single input key Function
    INT 21H         ;Take Input in AL
    MOV BH,AL       ;Input moved to BH
    
    
    OUTPUT_SPACE:
    MOV AH,2        ;Single output key Function
    MOV DL,20H      ;Move ascii value for Space(20H)
    INT 21H         ;Display Output Space
    
    OUTPUT:
    MOV DL,BH       ;Move output from BH to DL
    INT 21H         ;Display Output

    EXIT:
    MOV AH,4CH      ;DOS Exit Function
    INT 21H         
