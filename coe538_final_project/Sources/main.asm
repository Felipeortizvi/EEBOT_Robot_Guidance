; export symbols
            XDEF Entry, _Startup            ; export 'Entry' symbol
            ABSENTRY Entry        ; for absolute assembly: mark this as application entry point

; Include derivative-specific definitions 
		INCLUDE 'derivative.inc' 

            ORG   $2000
            
            ;RAM starts at $2000 right?
            ;I'm going to record the 'first' turn
            ;at $2FFF and reverse from 
            
            ORG   $3000


; code section
            ORG   $4000


Entry:
_Startup:
            CLI                ; Enable interrupts
            LDS   #$4000       ; initialize the stack pointer


;**************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************
            ORG   $FFFE
            DC.W  Entry           ; Reset Vector
