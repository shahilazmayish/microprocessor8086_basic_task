.MODEL SMALL
.STACK 100H
.DATA

    A1 DB 'CS331'          ;Define an Array of size 5
    A2 DB 5 DUP('?')       ;Define an blank Array of size 5
    
.CODE
 
    MOV AX, @DATA          ;Get data into the segment
    MOV DS, AX             ;Initailize DS
       
     
;A1[0] to A2[0]
    MOV BL,A1[0]           ;Move value fron A1 Array
    MOV A2[0],BL           ;And store it into A2 Array
                           
;A1[1] to A2[1]
    MOV BL,A1[1]
    MOV A2[1],BL
    
;A1[2] to A2[2]
    MOV BL,A1[2]
    MOV A2[2],BL
    
;A1[3] to A2[3]
    MOV BL,A1[3]
    MOV A2[3],BL
    
;A1[4] to A2[04]
    MOV BL,A1[4]
    MOV A2[4],BL
    
EXIT:
    MOV AH, 4CH            ;DOS exit
    INT 21H
