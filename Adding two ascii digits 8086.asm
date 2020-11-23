.MODEL SMALL
.STACK 100H
.DATA   
    S DB "Enter Two Digits: $"    
.CODE
    MOV AX, @DATA
    MOV DS, AX   
                 
Prompt_Message:       
    MOV AH, 9     ;Display string key function
    LEA DX, S     ;Locating S 
    INT 21H       ;Print the Prompt message 
                
Input1:
    MOV AH, 1     ;Input key function
    INT 21H
    MOV BH, AL    ;Storing the 1st Input value in BH
      
Input2:
    INT 21H
    MOV BL, AL    ;Storing the 2nd Input value in BL
    
Space:    
    MOV AH, 2     ;Output key function
    MOV DL, 20H   ;Print Space
    INT 21H
    
Output:
    ADD BH, BL    ;Adding two INPUT value
    MOV DL, BH    ;Printing the added up ascii codes
    INT 21H
         
Exit:
    MOV AH, 4CH   ;return to DOS
    INT 21H
