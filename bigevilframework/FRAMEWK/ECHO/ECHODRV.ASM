;****************************************************************************
; Echo Z80 program
; It should be located wherever Echo_ProgFile was defined
;****************************************************************************

Z80Program:

	IF ECHO_ENCRYPT_Z80
	incbin "../FRAMEWK/ECHO/ECHOZ80E.BIN"
	ELSE
	incbin "../FRAMEWK/ECHO/ECHO_Z80.BIN"
	ENDIF

Z80ProgSize equ *-Z80Program
    even
	