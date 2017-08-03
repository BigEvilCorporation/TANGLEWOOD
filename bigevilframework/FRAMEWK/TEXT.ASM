;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   text.asm - Font loading and text display
;==============================================================

;==============================================================
; Character map
;==============================================================
CharMap_ASCII_Start			equ 0x20 ; First ASCII code in table
CharMap_ASCII_End			equ 0x7f ; Last ASCII code in table
CharMap_ASCII_NumericOffset	equ 0x30
CharMap_ASCII_AlphaOffset	equ 0x41
CharMap_Size				equ (CharMap_ASCII_End-CharMap_ASCII_Start)
CharMap_SizeT				equ (CharMap_Size)
CharMap_SizeB				equ (CharMap_SizeT*size_tile_b)

;==============================================================
; Font testing
;==============================================================
FontTest_Font				equ tiles_twfont ; Tiles_PixelFont
FontTest_FontBold			equ tiles_twfontb
FontTest_FontSize			equ tiles_twfont_size_t ;Tiles_PixelFontSizeT
FontTest_FontAddr			equ 0x0000
FontTest_FontAddrBold		equ tiles_twfont_size_b
FontTest_FontTileId			equ (FontTest_FontAddr/size_tile_b)
FontTest_FontTileIdBold		equ (FontTest_FontAddrBold/size_tile_b)
FontTest_ColourBg			equ 0x0008
FontTest_ColourTxt			equ 0x0FFF
FontTest_PosX				equ 0x01
FontTest_PosY				equ 0x01
FontTest_Linespacing		equ 0x01

TXT_LoadFont:
   ; a0 --- Font tileset
   ; d0 (w) VRAM address

   move.l   #CharMap_SizeT, d1
   jsr      VDP_LoadTiles

   rts

TXT_StrLen:
	; a0 --- String addr
	; d0 (w) OUT: Length

	move.w #0x0, d0

	@CharLoop:
	tst.b  (a0)+
	beq    @End
	add.w  #0x1, d0
	bra    @CharLoop

	@End:

	rts

TXT_DrawPlane:
	; a0 --- - String address
	; d0 (w) - First tile ID of font
	; d1 (ww)- XY coord (in tiles)
	; d2 (b) - Palette
	; d3 (b) - Plane (0=A, 1=B)

	clr.l    d4                     ; Clear d4 ready to work with
	move.b   d1, d4                 ; Move Y coord (lower byte of d1) to d4
	mulu.w   #vdp_plane_width, d4   ; Multiply Y by line width (H40 mode - 64 tiles horizontally) to get Y offset
	swap     d1               		; X coord to lower word
	add.b    d1, d4                 ; Add X coord to offset
	lsl.w    #0x1, d4               ; Convert to words

	cmp.b   #0x0, d3
	bne     @PlaneB
	add.l   #vram_addr_plane_a, d4	; Add VRAM address offset
	bra     @EndSelectPlane
	@PlaneB:
	add.l   #vram_addr_plane_b, d4	; Add VRAM address offset
	@EndSelectPlane:

	rol.l   #0x2, d4				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d4				; Shift lower word back
	swap    d4                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d4 ; OR in VRAM write command
	move.l  d4, vdp_control        	; Move dest address to VDP control port

	; Map tile bit pattern: LPPH VTTT TTTT TTTT (L=lo/hi plane, P=Palette, H=HFlip, V=VFlip, T=TileId)

	clr.l    d4                     ; Clear d4 ready to work with again
	move.b   d2, d4                 ; Move palette ID (lower byte of d2) to d4
	rol.l    #0x8, d4               ; Shift palette ID to bits 14 and 15 of d4
	rol.l    #0x5, d4               ; Can only rol bits up to 8 places in one instruction

	clr.w    d2

	@CharCopy:
	move.b   (a0)+, d2              ; Move ASCII byte to lower byte of d2
	cmp.b    #0x0, d2               ; Test if byte is zero (string terminator)
	beq      @End                   ; If byte was zero, branch to end

	sub.b    #CharMap_ASCII_Start, d2 ; Subtract first ASCII code to get tile ID
	andi.w   #0xF800, d4
	move.b   d2, d4                 ; Move tile ID to lower byte of d4
	add.w    d0, d4                 ; Offset tile ID by first tile ID in font
	move.w   d4, vdp_data           ; Move palette and pattern IDs to VDP data port
	bra      @CharCopy              ; Next character

	@End:
	rts
	
TXT_DrawSprites:
	; a0 (l) - String address
	; d0 (w) - First tile ID of font
	; d1 (ww)- XY coord (in pixels)
	; d2 (b) - Palette
	; d3 (w) - OUT: First sprite ID
	; d4 (b) - OUT: Sprites created
	
	; Backup palette
	move.b   d2, d5

	; Palette to bits 13-14
	andi.w   #0xFF, d5
	ror.w    #0x3, d5
	
	; To sprite space
	swap     d1
	add.w    #0x80, d1
	swap     d1
	add.w    #0x80, d1
	
	; Fetch first sprte ID
	move.w (next_sprite_index), d3
	
	; Clear counter
	clr.w    d4
	clr.w    d2

	@CharCopy:
	move.b   (a0)+, d2              ; Move ASCII byte to lower byte of d2
	cmp.b    #0x0, d2               ; Test if byte is zero (string terminator)
	beq      @End                   ; If byte was zero, branch to end

	PUSHL    d4
	
	sub.b    #CharMap_ASCII_Start, d2 ; Subtract first ASCII code to get tile ID
	move.b   d2, d4                 ; Move tile ID to lower byte of d4
	add.w    d0, d4                 ; Offset tile ID by first tile ID in font
	
	PUSHM    a0/d0-d5
	move.w   #0x0000, d0 			; Sprite dimensions (1x1)
	move.w   d4, d2					; Sprite tile index
	move.w   d5, d3					; Sprite palette
	moveq    #0x1, d4				; Sprite priority
	jsr      SPR_AddSubSprite
	POPM     a0/d0-d5
	
	POPL     d4
	
	addi.l   #0x00080000, d1		; Spacing
	addi.b   #0x1, d4				; Increment counter
	
	bra      @CharCopy              ; Next character

	@End:
	
	rts

TXT_CreateTileIDList:
	; a0 --- - String address
	; a1 --- - Buffer to write tile ID to (w)
	; d0 (w) - IN: First tile ID of font
	;    (b)   OUT: Num tile IDs written
	
	; Clear counter
	clr.w    d4
	clr.w    d2

	@CharCopy:
	move.b   (a0)+, d2              ; Move ASCII byte to lower byte of d2
	cmp.b    #0x0, d2               ; Test if byte is zero (string terminator)
	beq      @End                   ; If byte was zero, branch to end

	PUSHL    d4
	
	sub.b    #CharMap_ASCII_Start, d2 ; Subtract first ASCII code to get tile id
	move.b   d2, d4                 ; Move tile ID to lower byte of d4
	add.w    d0, d4                 ; Offset tile ID by first tile ID in font

	move.w   d4, (a1)+
	
	POPL     d4						; To buffer
	
	addi.b   #0x1, d4				; Increment counter
	
	bra      @CharCopy              ; Next character

	@End:

	move.b   d4, d0
	
	rts

TXT_LoadStringSpriteTiles:
	; a0 --- - String address
	; a1 --- - Font address (ROM/RAM)
	; d0 (w) - First tile ID of font
	; d1 (w) - VRAM address
	
	; Clear counter
	clr.l    d4
	clr.w    d2

	@CharCopy:
	move.b   (a0)+, d2              ; Move ASCII byte to lower byte of d2
	cmp.b    #0x0, d2               ; Test if byte is zero (string terminator)
	beq      @End                   ; If byte was zero, branch to end

	PUSHM    d4/a0
	
	sub.b    #CharMap_ASCII_Start, d2 ; Subtract first ASCII code to get tile id
	move.b   d2, d4                 ; Move tile ID to lower byte of d4
	mulu     #size_tile_b, d4       ; Tile to bytes
	add.l    a1, d4                 ; Add to font address

	; VRAM copy
	PUSHM    d0-d2
	move.l   d4, a0					; Source addr (ROM)
	move.w   d1, d0					; Dest addr (VRAM)
	move.w   #size_tile_w, d1		; Size (words)
	jsr      VDP_DMACopyVRAM
	POPM     d0-d2

	; Next dest addr
	add.w    #size_tile_b, d1
	
	POPM     d4/a0
	
	addi.b   #0x1, d4				; Increment counter
	
	bra      @CharCopy              ; Next character

	@End:

	move.b   d4, d0
	
	rts

TXT_ItoA_Hex_w:
	; Converts a word to hex ASCII
	; a0 --- In: String address
	; d0 (w) In: Number to convert

	; 4 nybbles + 0x + terminator, working backwards
	add.l  #0x7, a0

	; Zero terminate
	move.b #0x0, -(a0)

	move.w #0x0, d1	; Char ptr
	move.w #0x3, d2	; 4 nybbles in a word
	@NybbleLp:
	move.b d0, d3			; Byte to d3
	andi.b #0x0F, d3		; Bottom nybble
	cmp.b  #0x9, d3
	ble    @Numeric			; Branch if in numeric range
	add.b  #(CharMap_ASCII_AlphaOffset-0xA), d3	; In alpha range (A - F)
	move.b d3, -(a0)		; Back to string
	lsr.w  #0x4, d0			; Next nybble
	dbra   d2, @NybbleLp	; Loop
	bra    @End
	@Numeric:
	add.b  #CharMap_ASCII_NumericOffset, d3	; In numeric range (0 - 9)
	move.b d3, -(a0)		; Back to string
	lsr.w  #0x4, d0			; Next nybble
	dbra   d2, @NybbleLp	; Loop

	@End:

	;0X
	move.b #'x', -(a0)
	move.b #'0', -(a0)

	rts

TXT_ItoA_Hex_l:
	; Converts a longword to hex ASCII
	; a0 --- In: String address
	; d0 (l) In: Number to convert

	; 8 nybbles + 0x + terminator, working backwards
	add.l  #0xB, a0

	; Zero terminate
	move.b #0x0, -(a0)

	move.w #0x0, d1	; Char ptr
	move.w #0x7, d2	; 8 nybbles in a longword
	@NybbleLp:
	move.b d0, d3			; Byte to d3
	andi.b #0x0F, d3		; Bottom nybble
	cmp.b  #0x9, d3
	ble    @Numeric			; Branch if in numeric range
	add.b  #(CharMap_ASCII_AlphaOffset-0xA), d3	; In alpha range (A - F)
	move.b d3, -(a0)		; Back to string
	lsr.l  #0x4, d0			; Next nybble
	dbra   d2, @NybbleLp	; Loop
	bra    @End
	@Numeric:
	add.b  #CharMap_ASCII_NumericOffset, d3	; In numeric range (0 - 9)
	move.b d3, -(a0)		; Back to string
	lsr.l  #0x4, d0			; Next nybble
	dbra   d2, @NybbleLp	; Loop

	@End:

	;0X
	move.b #'x', -(a0)
	move.b #'0', -(a0)

	rts
	
TXT_ItoA_w:
	; Converts a word to decimal ASCII (10-base, max 5 digits)
	; a0 --- In: String address
	; d0 (w) In: Number to convert
	
	; Clear digit counter
	clr.l  d1
	
	@Loop:
	addi.w #0x1, d1
	move.w d0, d2
	andi.l #0x0000FFFF, d2
	divu   #10, d2		; Div/10
	swap   d2			; Remainder
	add.b  #CharMap_ASCII_NumericOffset, d2	; In numeric range (0 - 9)
	move.b d2, -(sp)	; To stack
	andi.l #0x0000FFFF, d0
	divu   #10, d0		; Next digit
	bne    @Loop		; If not 0, more work to do
	
	; Copy bytes back from stack to string
	subi.w #0x1, d1
	@CopyLp:
	move.b (sp)+, (a0)+
	dbra   d1, @CopyLp
	
	; Zero terminate
	move.b #0x0, (a0)+

	rts
	
TXT_FontTest:

	; Load fonts
	lea     FontTest_Font, a0
	move.l  #FontTest_FontAddr, d0
	move.l  #FontTest_FontSize, d1
	jsr     TXT_LoadFont

	lea     FontTest_FontBold, a0
	move.l  #FontTest_FontAddrBold, d0
	move.l  #FontTest_FontSize, d1
	jsr     TXT_LoadFont
	
	; Load palette
	lea     Exception_Palette, a0
	move.l  #0x0, d0
	jsr     PAL_Load

	;==============================================================

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*0)), d1	; XY coord
	lea     FontTest_Msg1_A, a0			; String address
	move.w  #FontTest_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*1)), d1	; XY coord
	lea     FontTest_Msg1_B, a0			; String address
	move.w  #FontTest_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*2)), d1	; XY coord
	lea     FontTest_Msg1_C, a0			; String address
	move.w  #FontTest_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	;==============================================================

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*4)), d1	; XY coord
	lea     FontTest_Msg1_A, a0			; String address
	move.w  #FontTest_FontTileIdBold, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*5)), d1	; XY coord
	lea     FontTest_Msg1_B, a0			; String address
	move.w  #FontTest_FontTileIdBold, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*6)), d1	; XY coord
	lea     FontTest_Msg1_C, a0			; String address
	move.w  #FontTest_FontTileIdBold, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	;==============================================================

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*8)), d1	; XY coord
	lea     FontTest_Msg2_A, a0			; String address
	move.w  #FontTest_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*9)), d1	; XY coord
	lea     FontTest_Msg2_B, a0			; String address
	move.w  #FontTest_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	;==============================================================

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*11)), d1	; XY coord
	lea     FontTest_Msg2_A, a0			; String address
	move.w  #FontTest_FontTileIdBold, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*12)), d1	; XY coord
	lea     FontTest_Msg2_B, a0			; String address
	move.w  #FontTest_FontTileIdBold, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	;==============================================================

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*14)), d1	; XY coord
	lea     FontTest_Msg3_A, a0			; String address
	move.w  #FontTest_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*15)), d1	; XY coord
	lea     FontTest_Msg3_B, a0			; String address
	move.w  #FontTest_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	;==============================================================

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*17)), d1	; XY coord
	lea     FontTest_Msg3_A, a0			; String address
	move.w  #FontTest_FontTileIdBold, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*18)), d1	; XY coord
	lea     FontTest_Msg3_B, a0			; String address
	move.w  #FontTest_FontTileIdBold, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	;==============================================================

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*20)), d1	; XY coord
	lea     FontTest_Msg4, a0			; String address
	move.w  #FontTest_FontTileId, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	move.l  #((FontTest_PosX<<16)|FontTest_PosY+(FontTest_Linespacing*22)), d1	; XY coord
	lea     FontTest_Msg4, a0			; String address
	move.w  #FontTest_FontTileIdBold, d0	; Font VDP address
	move.b  #0x0, d2					; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane

	rts
	