.MODEL SMALL
.STACK 100H

.DATA
    lowerCaseChar DB 'b' 
    upperCaseChar DB ?     

.CODE
MAIN PROC
    MOV AX, SEG lowerCaseChar 
    MOV DS, AX                

    ; Load the lower-case character
    MOV AL, lowerCaseChar     

    ; Convert to upper-case
    SUB AL, 20H               

   
    MOV upperCaseChar, AL     

    ; Use DOS interrupt to print the result
    MOV DL, upperCaseChar    
    MOV AH, 02H               ; Function 02H: Display character in DL
    INT 21H                   

    ; Exit the program
    MOV AH, 4CH               
    INT 21H
MAIN ENDP
END MAIN
