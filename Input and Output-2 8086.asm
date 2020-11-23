.MODEL SMALL
.STACK 100H
.CODE

    INPUT_1:
    MOV AH,1        ;Single input key Function
    INT 21H         ;Take Input
    MOV BH,AL       ;Input moved to BH
    
    INPUT_2:
    INT 21H         ;Take Input
    MOV BL,AL       ;Input moved to BL
    
    
    OUTPUT_SPACE:
    MOV AH,2        ;Single output key Function
    MOV DL,20H      ;Move ascii value for Space(20H)
    INT 21H         ;Display Output Space
    
    OUTPUT_1:
    MOV DL,BH       ;Move 1st output to DL
    INT 21H         ;Display 1st Output
    
    OUTPUT_2:
    MOV DL,BL       ;Move 2nd Output to DL
    INT 21H         ;DIsplay 2nd Output
   
    EXIT:
    MOV AH,4CH      ;DOS Exit Function
    INT 21H         
