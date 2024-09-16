; Write a program in assembly language to print multiple characters on screen.
corresponding lower-case letter.
ORG 100h

jmp start:

msg: db  "Hello, World!",'$'

start: MOV dx, msg
       MOV ah, 09h 
       
       int 21h   
       
       MOV ah, 0
       int 16h
       
       ret
