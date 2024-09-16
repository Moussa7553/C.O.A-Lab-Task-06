; Write a program in assembly language to print single character on screen.
.MODEL SMALL
.STACK 100H

.DATA
    char DB 'A'   

.CODE
MAIN PROC
    MOV AX, @DATA    
    MOV DS, AX

    
    MOV DL, char     

    
    MOV AH, 02H      ; Function 02H: Display character in DL
    INT 21H          

   
    MOV AH, 4CH      ; Function to terminate program
    INT 21H
MAIN ENDP
END MAIN
