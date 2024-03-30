// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//D=R1
@R1
D=M 

//counter=R1
@counter
M=D

//Reset R2
@R2
M=0

//Start iteration
(LOOP)

//If counter == 0 exit the program
@counter
D=M
@END
D;JEQ

//Load D with the number to be added repetitively
@R0
D=M

@R2
M=M+D

//Decrement the counter
@counter
M=M-1

//Jump to LOOP
@LOOP
0;JMP

//Exit the program
(END)
@END
0;JMP








