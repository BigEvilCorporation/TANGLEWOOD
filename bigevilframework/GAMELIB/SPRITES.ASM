;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sprites.asm - Sprite utils
;==============================================================

	rsset 0
;------------------------
Sprite_CoordY        rs.w 1
Sprite_Dimensions    rs.b 1
Sprite_NextID        rs.b 1
Sprite_PrioPalFlipID rs.w 1 ; Priority (bit 15), palette (bits 14-13), v/h flip (bits 12 and 11), tile ID (bits 10-0)
Sprite_CoordX        rs.w 1
;------------------------
Sprite_Struct_Size rs.b 0

;==============================================================

AddSprite:
	; d0 (bb) Width/height (in subsprites)
	; d1 (ww) X/Y coord
	; d2 (w)  First tile index
	; d3 (b)  Palette
	; a0 ---- Subsprite dimensions array (b * numSubsprites)
	; a1 ---- Num tiles per subsprite array (b * numSubsprites)

	; Returning next index
	move.w (next_sprite_index), -(sp)

	; Backup y
	move.w d1, d6

	; Loop cols
	clr.l  d4
	move.w d0, d4
	lsr.w  #0x8, d4 ; Shift to get width
	subq.b #0x1, d4 ; -1 for loop counter
	@ColLp:

		; Loop rows
		clr.l  d5
		move.b d0, d5
		subq.b #0x1, d5 ; -1 for loop counter
		@RowLp:

			; Backup regs
			move.l d0, -(sp)
			move.l d1, -(sp)
			move.l d2, -(sp)
			move.l d3, -(sp)
			move.l d4, -(sp)
			move.l d5, -(sp)
			move.l d6, -(sp)

			move.b (a0)+, d0	; Get next dimensions byte
			
			; Backup a0
			move.l a0, -(sp)
			
			; AddSubSprite
			; d0 (b)  Dimensions
			; d1 (ww) X/Y coord
			; d2 (w)  First tile index
			; d3 (b)  Palette
			jsr AddSubSprite

			; Restore regs
			move.l (sp)+, a0
			move.l (sp)+, d6
			move.l (sp)+, d5
			move.l (sp)+, d4
			move.l (sp)+, d3
			move.l (sp)+, d2
			move.l (sp)+, d1
			move.l (sp)+, d0

			; Add Y
			add.w #SubspriteMaxHeight, d1

			; Add tile idx
			clr.w  d7
			move.b (a1)+, d7
			add.w  d7, d2

			dbra d5, @RowLp

		; Reset Y
		move.w d6, d1

		; Add X
		swap d1
		add.w #SubspriteMaxWidth, d1
		swap d1

		dbra d4, @ColLp

	; Return first sprite index
	move.w (sp)+, d0
	
	rts
	
AddSubSprite:
	; d0 (b)  Dimensions
	; d1 (ww) X/Y coord
	; d2 (w)  First tile index
	; d3 (b)  Palette
	
	; TODO: Support flipping/priority
	
	; Alloc sprite on stack
	sub.l  #Sprite_Struct_Size, sp
	
	; Alloc sprite ID
	move.w (next_sprite_index), d4
	
	; Build struct
	move.w d1, Sprite_CoordY(sp)      ; Y coord
	swap d1
	move.w d1, Sprite_CoordX(sp)      ; X coord
	move.b d0, Sprite_Dimensions(sp)  ; Dimensions
	move.b #0x0, Sprite_NextID(sp)    ; Next ID

	; Flipping, palette ID, priority and tile ID
	; Bit pattern: LPPV HTTT TTTT TTTT (L=Lo/Hi priority, P=Palette, V=VFlip, H=HFlip, T-TileId)
	and.w  #%0000000000000011, d3		; Palette in bottom two bits
	ror.w  #0x3, d3						; Palette to bits 13-14
	or.w   d2, d3						; OR tile ID with palette
	move.w d3, Sprite_PrioPalFlipID(sp)	; Write to struct
	
	; Load sprite
	move.l sp, a0
	move.b d4, d0
	jsr    LoadSpriteTable
	
	; Free stack
	add.l  #Sprite_Struct_Size, sp

	; Link sprite with prev (if not the first in list)
	cmp.w  #0x0, d4
	beq    @NoLink
	move.w d4, d1   ; Next ID
	move.w d4, d0
	sub.w  #0x1, d0 ; Prev ID
	jsr    LinkSprite
	@NoLink:
	
	; Increment sprite counter
	add.w  #0x1, d4
	move.w d4, (next_sprite_index) ; Keep counter
	
	rts
	
ClearAllSprites:
	rts
