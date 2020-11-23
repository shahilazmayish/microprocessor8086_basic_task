.MODEL SMALL
.STACK 100H
.DATA
.CODE
    
    MOV AH, 2      ;Output Key function
   
    MOV DL,'0'     ;Initializing First number 0
    INT 21H
    
    MOV [SI],DL    ;Store First number to SI Location
                  
    INC SI         ;GET Next SI location
    
    INC DL         ;Get Next number = 1
    INT 21H
    
    MOV [SI],DL    ;Store Next number to Next SI Location
    
    MOV CX,5       ;Upto 8 so the sequence should be 1,2,3,5,8 which is  5  times
                 
fibonacci:
        
    ; [SI]   = the previous term  
    ; [SI-1] = the term before that    
    
    MOV DL,[SI]
    ADD DL,[SI-1]  ;Adding up the two numbers before it
    
    SUB DL,30H     ;Convert the ascii code to get the numaric value 
    INT 21H
    
    INC SI         ;Next SI location
    MOV [SI],DL    ;Store the last number to SI Location
_loop:
    LOOP fibonacci    
    
    
EXIT:    
    MOV AH,4CH     ;return to DOS
    INT 21H                           
