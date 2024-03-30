// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//Set length of array n = SCREEN-KBD
@KBD
D=A

@n
M=D

@SCREEN
D=A

@n
M=M-D

//Set incrementer for as 0
@i
M=0

//Infinite loop to check keypress
(CHECK)
@KBD
D=M
@BLACK
D;JNE
@WHITE
D;JEQ
@CHECK
0;JMP

(BLACK)
//Reset incrementer
@i
M=0
//if (i==n) goto CHECK
(BLOOP)
@n
D=M
@i
D=D-M
@CHECK
D;JEQ

//RAM[SCREEN+i]=-1
@SCREEN
D=A
@i
A=D+M
M=-1

//i++
@i
M=M+1

@BLOOP
0;JMP

(WHITE)
//Reset incrementer
@i
M=0

//if (i==n) goto CHECK
(WLOOP)
@n
D=M
@i
D=D-M
@CHECK
D;JEQ

//RAM[SCREEN+i]=0
@SCREEN
D=A
@i
A=D+M
M=0

//i++
@i
M=M+1

@WLOOP
0;JMP

(END)
@END
0;JMP


