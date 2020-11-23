.MODEL SMALL
.STACK 100H
.DATA
                      ;array db 8 DUP(?),'$'
  ;newl db 0AH,0DH,'$'
  
.CODE

    MOV AH, 2
    MOV BL, '0'           ;LEA SI,array
    MOV [SI],BL
    MOV [SI],BL
    MOV CX, 7H
    
fibonacci:
    MOV BL,[SI-1]
    ADD BL,[SI]
    MOV DL,BL
    INC 21H
    INC SI
    MOV [SI],DL
    
    
_loop:
    LOOP fibonacci  

EXIT:    
    MOV AH,4CH
    INT 21H                           