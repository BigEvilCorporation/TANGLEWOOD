   
	; ******************************************************************
	; Sega Megadrive ROM header
	; ******************************************************************
	dc.l   stack_top       ; Initial stack pointer value
	dc.l   EntryPoint      ; Start of program
	dc.l   Exception       ; Bus error
	dc.l   Exception       ; Address error
	dc.l   Exception       ; Illegal instruction
	dc.l   Exception       ; Division by zero
	dc.l   Exception       ; CHK exception
	dc.l   Exception       ; TRAPV exception
	dc.l   Exception       ; Privilege violation
	dc.l   NullInterrupt   ; TRACE exception
	dc.l   NullInterrupt   ; Line-A emulator
	dc.l   NullInterrupt   ; Line-F emulator
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Spurious exception
	dc.l   NullInterrupt   ; IRQ level 1
	dc.l   NullInterrupt   ; IRQ level 2
	dc.l   NullInterrupt   ; IRQ level 3
	dc.l   HBlankInterrupt ; IRQ level 4 (horizontal retrace interrupt)
	dc.l   NullInterrupt   ; IRQ level 5
	dc.l   VBlankInterrupt ; IRQ level 6 (vertical retrace interrupt)
	dc.l   NullInterrupt   ; IRQ level 7
	dc.l   NullInterrupt   ; TRAP #00 exception
	dc.l   NullInterrupt   ; TRAP #01 exception
	dc.l   NullInterrupt   ; TRAP #02 exception
	dc.l   NullInterrupt   ; TRAP #03 exception
	dc.l   NullInterrupt   ; TRAP #04 exception
	dc.l   NullInterrupt   ; TRAP #05 exception
	dc.l   NullInterrupt   ; TRAP #06 exception
	dc.l   NullInterrupt   ; TRAP #07 exception
	dc.l   NullInterrupt   ; TRAP #08 exception
	dc.l   NullInterrupt   ; TRAP #09 exception
	dc.l   NullInterrupt   ; TRAP #10 exception
	dc.l   NullInterrupt   ; TRAP #11 exception
	dc.l   NullInterrupt   ; TRAP #12 exception
	dc.l   NullInterrupt   ; TRAP #13 exception
	dc.l   NullInterrupt   ; TRAP #14 exception
	dc.l   NullInterrupt   ; TRAP #15 exception
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)
	dc.l   NullInterrupt   ; Unused (reserved)

    ; Mega-CD

	IFD DEBUG
	
    dc.b "SEGADISCSYSTEM  "
    dc.b "CDBOOTLOADR",0
    dc.w 0x0100
    dc.w 0x0001
    dc.b "SEGACD BOOT",0
    dc.w 0x0001
    dc.w 0x0000
    dc.l 0x00000800 ; Main CPU ROM offset
    dc.l 0x00000800 ; Main CPU ROM size
    dc.l 0x00000000 ; Main CPU ROM start offset
    dc.l 0x00000000 ; Main CPU work RAM size
    dc.l 0x00001000 ; Sub CPU ROM offset
    dc.l 0x00007000 ; Sub CPU ROM size
    dc.l 0x00000000 ; Sub CPU ROM start offset
    dc.l 0x00000000 ; Sub CPU ROM work RAM size
    dc.b "09102014" ; Date
	
	ENDIF

    ; Genesis

	dc.b "SEGA MEGA DRIVE "                                                                 ; Console name
	dc.b "(C)SEGA 1992.SEP"                                                                 ; Copyrght holder and release date
	dc.b "YOUR GAME HERE                                  " ; Domestic name
	dc.b "YOUR GAME HERE                                  " ; International name
	dc.b "GM XXXXXXXX-XX"                                                                   ; Version number
	dc.w 0x0000                                                                                             ; Checksum
	dc.b "J               "                                                                 ; I/O support
	dc.l __start                                                                                 ; Start address of ROM
	dc.l __end-1                                                                                              ; End address of ROM
	dc.l ram_start                                                                                  ; Start address of RAM
	dc.l ram_end                                                                                    ; End address of RAM
	dc.l 0x00000000                                                                                 ; SRAM enabled
	dc.l 0x00000000                                                                                 ; Unused
	dc.l 0x00000000                                                                                 ; Start address of SRAM
	dc.l 0x00000000                                                                                 ; End address of SRAM
	dc.l 0x00000000                                                                                 ; Unused
	dc.l 0x00000000                                                                                 ; Unused
	dc.b "                                        "                 ; Notes (unused)
	dc.b "  E             "                                                                 ; Country codes

