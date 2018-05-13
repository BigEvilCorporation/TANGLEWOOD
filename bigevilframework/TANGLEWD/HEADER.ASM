
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
    dc.b "04282018" ; Date
	
	ENDIF

    ; Genesis

	dc.b "SEGA MEGA DRIVE "                                                                 ; 16 bytes - Console name
	dc.b "(C)EVIL 2018.MAY"                                                                 ; 16 bytes - Copyright holder and release date
	dc.b "TANGLEWOOD (R)                                  "                                 ; 48 bytes - Domestic name
	dc.b "TANGLEWOOD (R)                                  "                                 ; 48 bytes - International name
	dc.b "GM EVIL0106-00"                                                                   ; 14 bytes - Game type and product code
header_checksum_addr:
	dc.w 0xD867                                                                             ; 02 bytes - Checksum
	dc.b "J               "                                                                 ; 16 bytes - I/O support
	dc.l __start                                                                            ; 04 bytes - Start address of ROM
	dc.l __end-1                                                                            ; 04 bytes - End address of ROM
	dc.l ram_start                                                                          ; 04 bytes - Start address of RAM
	dc.l ram_end                                                                            ; 04 bytes - End address of RAM
	dc.b "    "                                                                             ; 04 bytes - SRAM enabled
	dc.b "    "                                                                             ; 04 bytes - Start address of SRAM
	dc.b "    "                                                                             ; 04 bytes - End address of SRAM
	dc.b "            "                                                                     ; 12 bytes - Modem
	dc.b "                                        "                                         ; 40 bytes - Notes
	dc.b "JUE             "                                                                 ; 16 bytes - Country codes
	                                                                                        ; ------------------------
	                                                                                        ; 256 bytes total

	IFND DEBUG
	; Must be at 0x200 or some emulators complain, and checksum will be incorrect
	IF !(*=0x200)
	inform 2,"Header ends at incorrect address"
	ENDIF
	ENDIF

checksum_start:
