
Checksum_Font			equ tiles_sansfont
Checksum_FontSize		equ tiles_sansfont_size_t
Checksum_FontAddr		equ 0x0000
Checksum_FontTileId		equ (Exception_FontAddr/size_tile_b)
Checksum_ColourBg		equ 0x0800
Checksum_ColourTxt		equ 0x0FFF
Checksum_MsgPosX		equ 0x03
Checksum_MsgPosY		equ 0x06
Checksum_MsgLineSpace	equ 0x01

Checksum_Msg0: dc.b "Checksum Error",0
Checksum_Msg1: dc.b "There is a problem with your",0
Checksum_Msg2: dc.b "cartridge, please contact:",0
Checksum_Msg3: dc.b "help@tanglewoodgame.com",0
Checksum_Msg4: dc.b "You may press START to continue,",0
Checksum_Msg5: dc.b "but further issues may occur.",0
	even

Checksum_Palette:
	dc.w Checksum_ColourBg
	dc.w Checksum_ColourTxt
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

SYS_Checksum:

	; Calculate checksum
	move.l #0x200, a0		; ROM Start (after header)
	move.l #__end, a1		; ROM End

	move.l #checksum_end, d1
	lea    checksum_start, a0
	moveq  #0x0, d0
	@CheckLp:
	add.w  (a0)+, d0
	cmp.l  a0, d1
	bne.s  @CheckLp

	; Test checksum
	move.w header_checksum_addr, d0	; Checksum
	cmp.w  d0, d1
	beq    @ChecksumCorrect

	jsr    SYS_ChecksumError

	@ChecksumCorrect:

	rts

SYS_ChecksumError:

	; Re-initialise VDP
	jsr     VDP_Init
	
	; Load font
	lea     Checksum_Font, a0
	move.l  #Checksum_FontAddr, d0
	move.l  #Checksum_FontSize, d1
	jsr     TXT_LoadFont

	; Load palette
	lea     Checksum_Palette, a0
	move.l  #0x0, d0
	jsr     PAL_Load

	;==============================================================
	
	; Draw error message
	move.l  #((Checksum_MsgPosX<<16)|(Checksum_MsgPosY+0)), d1	; XY coord
	lea     Checksum_Msg0, a0			; String address
	move.w  #Checksum_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((Checksum_MsgPosX<<16)|(Checksum_MsgPosY+4)), d1	; XY coord
	lea     Checksum_Msg1, a0			; String address
	move.w  #Checksum_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((Checksum_MsgPosX<<16)|(Checksum_MsgPosY+5)), d1	; XY coord
	lea     Checksum_Msg2, a0			; String address
	move.w  #Checksum_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((Checksum_MsgPosX<<16)|(Checksum_MsgPosY+8)), d1	; XY coord
	lea     Checksum_Msg3, a0			; String address
	move.w  #Checksum_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane
	
	move.l  #((Checksum_MsgPosX<<16)|(Checksum_MsgPosY+11)), d1	; XY coord
	lea     Checksum_Msg4, a0			; String address
	move.w  #Checksum_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane
	
	move.l  #((Checksum_MsgPosX<<16)|(Checksum_MsgPosY+12)), d1	; XY coord
	lea     Checksum_Msg5, a0			; String address
	move.w  #Checksum_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	; Wait for START button
	@WaitStart:
	jsr     PAD_ReadPadA
	btst    #pad_button_start, d0
	beq     @WaitStart

	; Re-initialise VDP
	jsr     VDP_Init

	rts