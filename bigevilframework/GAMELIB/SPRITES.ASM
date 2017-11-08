;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sprites.asm - Sprite utils
;==============================================================

SpriteTileCountTable:
	dc.b 1  ; 0000 (1x1)
	dc.b 2  ; 0001 (1x2)
	dc.b 3  ; 0010 (1x3)
	dc.b 4  ; 0011 (1x4)
	dc.b 2  ; 0100 (2x1)
	dc.b 4  ; 0101 (2x2)
	dc.b 6  ; 0110 (2x3)
	dc.b 8  ; 0111 (2x4)
	dc.b 3  ; 1000 (3x1)
	dc.b 6  ; 1001 (3x2)
	dc.b 9  ; 1010 (3x3)
	dc.b 12 ; 1011 (3x4)
	dc.b 4  ; 1100 (4x1)
	dc.b 8  ; 1101 (4x2)
	dc.b 12 ; 1110 (4x3)
	dc.b 16 ; 1111 (4x4)

SPR_AddMultiSprite:
	; d0 (w)  X coord
	; d1 (w)  Y coord
	; d2 (w)  First tile index
	; d3 (b)  Palette
	; d4 (b)  Priority
	; d5 (b)  Flipped X
	; d6 (b)  Num subsprites
	; a0 ---- Subsprite dimensions array (b * numSubsprites)
	; a2 ---  Subsprite position offsets array (ll * numSubsprites)

	; If unflipped, offset pos array to read from upper word
	tst.b  d5
	bne    @FlippedX
	subq.l #size_long, a2
	@FlippedX:

	; Combine palette/flip/priority flags
	; Bit pattern: LPPV HTTT TTTT TTTT (L=Lo/Hi priority, P=Palette, V=VFlip, H=HFlip, T-TileId)
	andi.w #0x3, d3		; Palette in bottom two bits of d3
	andi.w #0x1, d4		; Priority in bottom bit of d4
	andi.w #0x1, d5		; Flip X in bottom bit of d5
	ror.w  #0x3, d3		; Palette to bits 13-14
	ror.w  #0x1, d4		; Priority to bit 15
	ror.w  #0x5, d5		; Flip X to bit 11
	or.w   d4, d3		; Combine
	or.w   d5, d3

	; Get next free sprite ID
	move.w (next_sprite_index), d5

	; Backup for return val
	PUSHW   d5

	; Get sprite table
	lea     vdp_sprite_table, a4
	moveq #0x0, d7
	move.w  d5, d7
	lsl.l   #0x3, d7	; mulu.w  #Sprite_Struct_Size, d7
	add.l   d7, a4

	; Check if not first in table, link to prev
	tst.w   d5
	beq     @FirstInTable
	move.b  d5, (-Sprite_Struct_Size+Sprite_NextID)(a4)
	@FirstInTable:

	; Backup X/Y
	move.w d0, d7
	move.w d1, d4

	; Loop subsprites
	andi.w #0x00FF, d6
	subq.b  #0x1, d6
	@SubspriteLp:

		; Get X/Y offset
		moveq   #0, d1
		addq.w  #size_long, a2	; Skip unflipped/flipped coords
		move.w  (a2)+, d1	; X offset
		add.w   d7, d1		; X origin
		swap    d1			; To upper word
		move.w  (a2)+, d1	; Y offset
		add.w  d4, d1		; Y origin

		; Clamp to 1 on X axis (to avoid masking, and -ve pos wrapping back around)
		move.l d1, d0
		swap   d0
		cmp.w  #0x1, d0
		bgt    @NoClampX
		move.w #0x1, d0
		swap   d0
		move.l d0, d1
		@NoClampX:

		; OR tile ID with palette/flip/priority bits
		andi.w #0xF800, d3
		or.w   d2, d3

		; Next sprite ID
		addq.w #0x1, d5

		; Get dimensions bits
		moveq #0x0, d0
		move.b (a0)+, d0
		
		; Write values to table entry
		move.w d1, (a4)+	; Y
		swap d1
		move.b d0, (a4)+	; Dimensions
		move.b d5, (a4)+	; Next link
		move.w d3, (a4)+	; Tile ID and flags
		move.w d1, (a4)+	; X

		; Next tile idx using dimensions bits table lookup
		lea    SpriteTileCountTable, a1
		add.l  d0, a1
		move.b (a1), d0
		add.w  d0, d2

		; Sanity check
		IFND FINAL
		cmp.w   #vdp_max_sprites, d5
		bne     @WithinLimit
		RAISE_EXCEPTION error_out_of_sprites
		@WithinLimit:
		ENDIF
		
		dbra    d6, @SubspriteLp

	; Clear last link
	move.b #0x0, (-Sprite_Struct_Size+Sprite_NextID)(a4)

	; Write back next sprite index
	move.w d5, (next_sprite_index)

	; Return first sprite index
	POPW   d0
	
	rts
	
SPR_AddSubSprite:
	; d0 (b)  Dimensions
	; d1 (ww) X/Y coord
	; d2 (w)  First tile index
	; d3 (w)  Palette/flip/priority bits
	
	; Alloc sprite ID
	move.w (next_sprite_index), d5
	addq.w #0x1, (next_sprite_index)

	; Sanity check
	cmp.w   #vdp_max_sprites, (next_sprite_index)
	bne     @WithinLimit
	RAISE_EXCEPTION error_out_of_sprites
	@WithinLimit:
	
	; Check if first in table
	tst.w   d5
	beq     @FirstInTable

	; Subsequent entry in sprite table, link to previous
	lea     vdp_sprite_table, a4
	move.w  d5, d6
	subq.w   #0x1, d6
	lsl.l   #0x3, d6	; mulu.w  #size_spritedesc, d6
	add.l   d6, a4
	move.b  d5, Sprite_NextID(a4)
	lea     size_spritedesc(a4), a4

	bra     @EndLink
	@FirstInTable:

	; First entry in sprite table
	lea     vdp_sprite_table, a4

	@EndLink:
	
	; Set values
	move.w d1, Sprite_CoordY(a4)      ; Y coord
	swap d1
	move.w d1, Sprite_CoordX(a4)      ; X coord
	move.b d0, Sprite_Dimensions_NextID(a4)  ; Dimensions (first byte in word)

	; OR tile ID with palette/flip/priority bits
	or.w   d2, d3
	move.w d3, Sprite_Prio_Pal_Flip_TileIDhi(a4)
	
	rts

