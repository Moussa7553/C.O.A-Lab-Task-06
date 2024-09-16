.MODEL SMALL
.STACK 100H

.DATA
    upperCaseChar DB 'B'  
    lowerCaseChar DB ?    

.CODE
MAIN PROC
    MOV AX, SEG upperCaseChar 
    MOV DS, AX                

    ; Load the upper-case character
    MOV AL, upperCaseChar    

    ; Convert to lower-case
    ADD AL, 20H               

    ; Store the result
    MOV lowerCaseChar, AL     

    ; Use DOS interrupt to print the result
    MOV DL, lowerCaseChar     
    MOV AH, 02H               
    INT 21H                   

    ; Exit the program
    MOV AH, 4CH              
    INT 21H
MAIN ENDP
END MAIN

