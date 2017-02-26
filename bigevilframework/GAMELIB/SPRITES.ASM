;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sprites.asm - Sprite utils
;==============================================================

SPR_AddMultiSprite:
	; d0 (bb) Width/height (in subsprites)
	; d1 (ww) X/Y coord
	; d2 (w)  First tile index
	; d3 (b)  Palette
	; d4 (b)  Priority
	; a0 ---- Subsprite dimensions array (b * numSubsprites)
	; a1 ---- Num tiles per subsprite array (b * numSubsprites)

	; Returning next index
	move.w (next_sprite_index), -(sp)

	; Backup y
	move.w d1, d6

	; Loop cols
	clr.l  d5
	move.w d0, d5
	lsr.w  #0x8, d5 ; Shift to get width
	subq.b #0x1, d5 ; -1 for loop counter
	@ColLp:

		; Loop rows
		clr.l  d7
		move.b d0, d7
		subq.b #0x1, d7 ; -1 for loop counter
		@RowLp:
			; Backup counter
			PUSHL d7

			; Backup regs
			PUSHM d0-d6

			move.b (a0)+, d0	; Get next dimensions byte
			
			; Backup a0
			PUSHL a0
			
			; d0 (b)  Dimensions
			; d1 (ww) X/Y coord
			; d2 (w)  First tile index
			; d3 (b)  Palette
			; d4 (b)  Priority (0/1)
			jsr SPR_AddSubSprite

			POPL a0

			; Restore regs
			POPM d0-d6

			; Add Y
			add.w #SubspriteMaxHeight, d1

			; Add tile idx
			clr.w  d7
			move.b (a1)+, d7
			add.w  d7, d2

			POPL d7
			dbra d7, @RowLp

		; Reset Y
		move.w d6, d1

		; Add X
		swap d1
		add.w #SubspriteMaxWidth, d1
		swap d1

		dbra d5, @ColLp

	; Return first sprite index
	move.w (sp)+, d0
	
	rts
	
SPR_AddSubSprite:
	; d0 (b)  Dimensions
	; d1 (ww) X/Y coord
	; d2 (w)  First tile index
	; d3 (b)  Palette
	; d4 (b)  Priority (0/1)
	
	; Alloc sprite ID
	move.w (next_sprite_index), d5
	add.w  #0x1, (next_sprite_index)
	
	; Offset into sprite table
	lea     vdp_sprite_table, a0
	mulu.w  #size_spritedesc, d5          
	add.l   d5, a0
	
	; Set values
	move.w d1, Sprite_CoordY(a0)      ; Y coord
	swap d1
	move.w d1, Sprite_CoordX(a0)      ; X coord
	move.b d0, Sprite_Dimensions_NextID(a0)  ; Dimensions (first byte in word)
	move.b #0x0, Sprite_NextID(a0)    ; Next ID

	; Flipping, palette ID, priority and tile ID
	; Bit pattern: LPPV HTTT TTTT TTTT (L=Lo/Hi priority, P=Palette, V=VFlip, H=HFlip, T-TileId)
	andi.w #%0000000000000011, d3		; Palette in bottom two bits
	andi.w #0x1, d4						; Priority bit
	ror.w  #0x3, d3						; Palette to bits 13-14
	ror.w  #0x1, d4						; Priority to bit 15
	or.w   d2, d3						; OR tile ID with palette
	or.w   d4, d3						; OR priority bit
	move.w d3, Sprite_Prio_Pal_Flip_TileIDhi(a0)
	
	rts

