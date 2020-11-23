.MODEL SMALL
.STACK 100H
.CODE

    INPUT_1a:
    MOV AH,1        ;Single Input Key Function
    INT 21H         ;Take 1st Input in AL
    MOV BH,AL       ;1st Input moved to BH
    
    INPUT_2a:
    INT 21H         ;Take 2nd Input in AL
    MOV BL,AL       ;2nd Input moved to BL
    
    OUTPUT_2a:
    MOV AH,2        ;Single Output key Function
    MOV DL,BL       ;Move 2nd output to DL
    INT 21H         ;DIsplay 2nd Output 
    
    OUTPUT_1a:
    MOV DL,BH       ;Moved 1st Output to DL
    INT 21H         ;Display 1st Output 

    OUTPUT_Newl_Cret:
    MOV DL,0AH      ;Move ascii value for New Line(0AH)
    INT 21H         ;Display Output New Line
    MOV DL,0DH      ;Move ascii value for Carrage Return(0DH) 
    INT 21H         ;Display Output Carrage Return

    INPUT_1c:
    MOV AH,1        ;Single Input Key Function
    INT 21H         ;Take 1st Input in AL
    MOV BH,AL       ;1st Input moved to BH
    
    INPUT_2c:
    INT 21H         ;Take 2nd Input in AL
    MOV BL,AL       ;2nd Input moved to BL
    
    INPUT_3c:
    INT 21H         ;Take 3rd Input in AL
    MOV CL,AL       ;3nd Input moved to CL
    
    
    OUTPUT_SPACE:
    MOV AH,2        ;Single output key Function
    MOV DL,20H      ;Move ascii value for Space(20H)
    INT 21H         ;Display Output Space
    
    OUTPUT_3c:
    MOV DL,CL       ;Move 3rd output to DL
    INT 21H         ;Display 3rd Output

    OUTPUT_2c:
    MOV DL,BL       ;Move 2nd Output to DL
    INT 21H         ;DIsplay 2nd Output

    OUTPUT_1c:
    MOV DL,BH       ;Moved 1st Output to DL
    INT 21H         ;Display 1st Output

    EXIT:
    MOV AH,4CH      ;DOS Exit Function
    INT 21H
