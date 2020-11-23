.MODEL SMALL
.STACK 100H
.DATA
    S DB "hello$"        ;Define a lower case string

.CODE
    
    MOV AX, @DATA        ;Get data into the segment
    MOV DS, AX           ;Initailize DS
    
    MOV AH, 9            ;Display string function
    LEA DX, S            ;Get S which is now lower case 
    INT 21H              ;Display the lower case string

;For The S[0]    
    MOV BL,S[0]          ;Move S[0] value to BL
    SUB BL, 20H          ;Convert it to upper case
    MOV S[0],BL          ;And store it

;For The S[1]
    MOV BL,S[1]          
    SUB BL, 20H
    MOV S[1],BL
                      
;For The S[2]
    MOV BL,S[2]          
    SUB BL, 20H
    MOV S[2],BL
    
;For The S[3]
    MOV BL,S[3]          
    SUB BL, 20H
    MOV S[3],BL
    
;For The S[4]
    MOV BL,S[4]          
    SUB BL, 20H
    MOV S[4],BL
    
NEWLINE:                 ;Display new line
    MOV AH, 2            
    MOV DL, 0AH          
    INT 21H              
    MOV DL, 0DH          
    INT 21H              
    
DISPLAY:
    MOV AH, 9            ;Display string function
    LEA DX, S            ;Get U=upper case
    INT 21H              ;Display upper case string
    
EXIT:
    MOV AH, 4CH          ;DOS exit
    INT 21H
