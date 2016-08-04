;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   exceptn.asm - 68k exception handler
;==============================================================

Exception_Font			equ Tiles_PixelFont
Exception_FontSize		equ Tiles_PixelFontSizeT
Exception_FontAddr		equ 0x0000
Exception_FontTileId	equ (Exception_FontAddr/size_tile_b)
Exception_ColourBg		equ 0x0008
Exception_ColourTxt		equ 0x0FFF
Exception_MsgPosX		equ 0x04
Exception_MsgPosY		equ 0x01
Exception_RegPosX		equ 0x04
Exception_RegPosY		equ 0x03
Exception_LineSpace		equ 0x01
Exception_RegCount		equ 0x12	; 18 regs (0a-06 + d0-d7 + SP + SR + PC)

ExceptionType_Address		equ 0x0
ExceptionType_Bus			equ 0x1
ExceptionType_Instruction	equ 0x2
ExceptionType_DivZero		equ 0x3
ExceptionType_UnhandledInt	equ 0x4
ExceptionType_UnhandledTrap	equ 0x5
ExceptionType_Unknown		equ 0x6

Exception_Palette:
	dc.w Exception_ColourBg
	dc.w Exception_ColourTxt
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	
	; 8 byte strings
Exception_RegNames:
	dc.b "D0: ",0,0,0,0
	dc.b "D1: ",0,0,0,0
	dc.b "D2: ",0,0,0,0
	dc.b "D3: ",0,0,0,0
	dc.b "D4: ",0,0,0,0
	dc.b "D5: ",0,0,0,0
	dc.b "D6: ",0,0,0,0
	dc.b "D7: ",0,0,0,0
	dc.b "A0: ",0,0,0,0
	dc.b "A1: ",0,0,0,0
	dc.b "A2: ",0,0,0,0
	dc.b "A3: ",0,0,0,0
	dc.b "A4: ",0,0,0,0
	dc.b "A5: ",0,0,0,0
	dc.b "A6: ",0,0,0,0
	dc.b "SP: ",0,0,0,0
	dc.b "SR: ",0,0,0,0
	dc.b "PC: ",0,0,0,0
	even
	
	; 24 byte strings
Exception_Msgs:
	dc.b "ADDRESS ERROR:      ",0,0,0,0
	dc.b "BUS ERROR:          ",0,0,0,0
	dc.b "ILLEGAL INSTRUCTION:",0,0,0,0
	dc.b "DIVIDE BY ZERO:     ",0,0,0,0
	dc.b "UNHANDLED INTERRUPT:",0,0,0,0
	dc.b "UNHANDLED TRAP:     ",0,0,0,0
	dc.b "UNHANDLED EXCEPTION:",0,0,0,0
	even

CPU_Exception:

	; CPU has already pushed these regs:
	; PC reg (longword)
	; Status reg = (word)
	
	; Pad status reg to longword
	move.w  #0x0, -(sp)

	; Push stack ptr to stack
	move.l  sp, -(sp)
	
	; Push all registers to stack
	movem.l d0-d7/a0-a6, -(sp)
	
	; Re-initialise VDP
	jsr     VDP_Init
	
	; Load exception font
	lea     Exception_Font, a0
	move.l  #Exception_FontAddr, d0
	move.l  #Exception_FontSize, d1
	jsr     VDP_LoadTiles
	
	; Load exception palette
	lea     Exception_Palette, a0
	move.l  #0x0, d0
	jsr     PAL_Load
	
	; Draw error message
	move.l  #((Exception_MsgPosX<<16)|Exception_MsgPosY), d1	; XY coord
	;move.l  d7, d1
	move.l  #0x0, d2
	mulu    #0x18, d2
	lea     Exception_Msgs, a0			; Exception strings address
	add.l   d2, a0						; String offset					
	move.w  #Exception_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane
	
	; Draw all regs
	move.w  #Exception_RegPosY, d6
	move.l  #0x0, d7
	@RegLoop:
	
	; Get next reg value
	move.l  (sp)+, d0

	; Alloc string space
	sub.l   #0x10, sp
	move.l  sp, a4
	
	; Copy reg name
	move.l  d7, d1
	mulu    #0x8, d1
	move.l  d1, a5
	move.l  Exception_RegNames(a5), (a4)+	; String first 4 bytes
	
	; Reg value to string
	move.l  a4, a0
	jsr     TXT_ItoA_Hex_l
	sub.l   #size_long, a4				; String addr back to reg name offset
	
	move.w  #Exception_RegPosX, d1		; X coord
	swap    d1
	move.w  d6, d1						; Y coord
	add.w   #Exception_LineSpace, d6	; Next line
	move.l  a4, a0						; String address
	move.w  #Exception_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane
	
	; Free string space
	add.l   #0x10, sp
	
	add.l   #0x1, d7
	cmp.l   #Exception_RegCount, d7
	bne     @RegLoop
	
	IFD DEBUG
	TRAP    #0 ; Sync with debugger - NOT FOR RELEASE
	ENDIF

	stop    #0x2700 ; Halt CPU

	; Hang (if HALT not implemented)
	@InfiniteLoop:
	bra     @InfiniteLoop
	