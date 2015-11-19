;****************************************************************************
; Echo Z80 program
; It should be located wherever Echo_ProgFile was defined
;****************************************************************************

Z80Program: incbin "../FRAMEWK/ECHO/ECHO_Z80.BIN"
Z80ProgSize equ *-Z80Program
    even
	