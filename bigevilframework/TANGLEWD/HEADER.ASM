   
	; ******************************************************************
	; Sega Megadrive ROM header
	; ******************************************************************
	dc.l   stack_top       ; Initial stack pointer value
	dc.l   CPU_EntryPoint      ; Start of program
	dc.l   CPU_Exception       ; Bus error
	dc.l   CPU_Exception       ; Address error
	dc.l   CPU_Exception       ; Illegal instruction
	dc.l   CPU_Exception       ; Division by zero
	dc.l   CPU_Exception       ; CHK CPU_Exception
	dc.l   CPU_Exception       ; TRAPV CPU_Exception
	dc.l   CPU_Exception       ; Privilege violation
	dc.l   INT_Null   ; TRACE exception
	dc.l   INT_Null   ; Line-A emulator
	dc.l   INT_Null   ; Line-F emulator
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Spurious exception
	dc.l   INT_Null   ; IRQ level 1
	dc.l   INT_Null   ; IRQ level 2
	dc.l   INT_Null   ; IRQ level 3
	dc.l   HBlankInterrupt ; IRQ level 4 (horizontal retrace interrupt)
	dc.l   INT_Null   ; IRQ level 5
	dc.l   INT_VBlank ; IRQ level 6 (vertical retrace interrupt)
	dc.l   INT_Null   ; IRQ level 7
	dc.l   INT_Null   ; TRAP #00 exception
	dc.l   INT_Null   ; TRAP #01 exception
	dc.l   INT_Null   ; TRAP #02 exception
	dc.l   INT_Null   ; TRAP #03 exception
	dc.l   INT_Null   ; TRAP #04 exception
	dc.l   INT_Null   ; TRAP #05 exception
	dc.l   INT_Null   ; TRAP #06 exception
	dc.l   INT_Null   ; TRAP #07 exception
	dc.l   INT_Null   ; TRAP #08 exception
	dc.l   INT_Null   ; TRAP #09 exception
	dc.l   INT_Null   ; TRAP #10 exception
	dc.l   INT_Null   ; TRAP #11 exception
	dc.l   INT_Null   ; TRAP #12 exception
	dc.l   INT_Null   ; TRAP #13 exception
	dc.l   INT_Null   ; TRAP #14 exception
	dc.l   INT_Null   ; TRAP #15 exception
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)
	dc.l   INT_Null   ; Unused (reserved)

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
	dc.b "(C)BIG EVIL CORP"                                                                 ; Copyrght holder and release date
	dc.b "TANGLEWOOD (PROTOTYPE BUILD 0007 G)             " ; Domestic name
	dc.b "TANGLEWOOD (PROTOTYPE BUILD 0007 G)             " ; International name
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

