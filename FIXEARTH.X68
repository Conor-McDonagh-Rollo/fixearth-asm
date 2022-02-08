;   A5   PLAYERNAME
    ORG    $1000
START:  
                   LEA  DECORATE,A1
                   BSR  DISPLAYTEXT
                   LEA  WELCOME,A1
                   BSR DISPLAYTEXT
                   LEA  DECORATE,A1
                   BSR  DISPLAYTEXT
                   LEA  ASKNAME,A1
                   BSR  DISPLAYTEXT
                   BSR  INPUTSTRING
                   LEA  A1,A5
                   LEA  ENDL,A1
                   BSR  DISPLAYTEXT
                   LEA  A5,A1
                   BSR  DISPLAYTEXT

                   
INPUTSTRING:
                   MOVE.B   #2,D0
                   TRAP #15
                   RTS
               
DISPLAYTEXT:
                   MOVE.B   #14,D0
                   TRAP #15
                   RTS

    SIMHALT     

CR  EQU $0D
LF  EQU $0A
ENDL    DC.B    CR,LF,0
DECORATE    DC.B    '----------------------------------------------',CR,LF,0
WELCOME     DC.B    '   Welcome to FIX THE EARTH    ',CR,LF,0
ASKNAME DC.B    'What is your name: ',0
NAME    DC.B    0

    END    START 
*~Font name~Courier New~
*~Font size~16~
*~Tab type~1~
*~Tab size~4~
