LoadTiles:
	; a0 - Tiles address (l)
	; d0 - VRAM address (l)
	; d1 - Num tiles (w)

	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	add.l   #vram_addr_tiles, d0	; Add VRAM address offset
	rol.l   #0x2, d0				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d0				; Shift lower word back
	swap    d0                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d0 ; OR in VRAM write command
	move.l  d0, vdp_control        	; Move dest address to VDP control port
	
	and.l   #0x0000FFFF, d1
	sub.w	#0x1, d1				; Num tiles - 1
	@CharCopy:
	move.w	#0x07, d2				; 8 longwords in tile
	@LongCopy:
	move.l	(a0)+, vdp_data			; Copy one line of tile to VDP data port
	dbra	d2, @LongCopy
	dbra	d1, @CharCopy
	
	rts
	
LoadTilesDMA:
	; a0 - Tiles address (l)
	; d0 - VRAM address (l)
	; d1 - Num tiles (w)

	mulu #size_tile_b/2, d1	; Tiles to words
	jsr  VPDDMACopyVRAM		; DMA copy
	
	rts

LoadSpriteTable:
	; a0 --- Sprite data address
	; d0 (b) Sprite index

	and.l   #0x000000FF, d0
	mulu.w  #size_spritedesc, d0          ; Offset into sprite table
	swap    d0                           ; To upper word
	or.l    #vdp_write_sprite_table, d0  ; Add to write address
	move.l	d0, vdp_control				 ; Set read address
	
	move.l	(a0)+, vdp_data    			 ; 8 bytes of data
	move.l	(a0)+, vdp_data
	
	rts
	
LoadSpriteTables:
	; a0 --- Sprite data address
	; d0 (b) Number of sprites

	move.l	#vdp_write_sprite_table, vdp_control
	
	and.l   #0x000000FF, d0
	subq.b	#0x1, d0           ; Minus 1 for counter
	@AttrCopy:
	move.l	(a0)+, vdp_data    ; 8 bytes of data
	move.l	(a0)+, vdp_data
	dbra	d0, @AttrCopy
	
	rts
	
LinkSprite:
	; d0 (b) Prev index
	; d1 (b) Next index
	
	and.l   #0x000000FF, d0
	and.l   #0x000000FF, d1
	
	mulu.w  #size_spritedesc, d0          ; Offset into sprite table
	addi.w  #0x2, d0                     ; Byte 2 holds dimensions, byte 3 holds next index
	swap    d0                           ; To upper word
	
	move.l  d0, d2                       ; Backup d2
	or.l    #vdp_read_sprite_table, d2   ; Add to read address
	move.l	d2, vdp_control              ; Set read address
	move.w  vdp_data, d2                 ; Read word from VDP

	move.b  d1, d2       				 ; Set next sprite ID

	or.l    #vdp_write_sprite_table, d0  ; Add write address to offset
	move.l	d0, vdp_control              ; Set dest address
	move.w  d2, vdp_data                 ; Write word back
	
	rts

SetSpritePosX:
	; Set sprite X position
	; d0 (b) - Sprite ID
	; d1 (w) - X coord

	clr.l	d3						; Clear d3
	move.b	d0, d3					; Move sprite ID to d3
	
	mulu.w	#size_spritedesc, d3		; Sprite array offset
	add.b	#0x6, d3				; X coord offset
	swap	d3						; Move to upper word
	or.l	#vdp_write_sprite_table, d3	; Add to sprite attr table
	
	move.l	d3, vdp_control			; Set dest address
	move.w	d1, vdp_data			; Move X pos to data port

	rts
		
SetSpritePosY:
	; Set sprite Y position
	; d0 (b) - Sprite ID
	; d1 (w) - Y coord

	clr.l	d3						; Clear d3
	move.b	d0, d3					; Move sprite ID to d3
	
	mulu.w	#size_spritedesc, d3		; Sprite array offset
	swap	d3						; Move to upper word
	or.l	#vdp_write_sprite_table, d3	; Add to sprite attr table
	
	move.l	d3, vdp_control			; Set dest address
	move.w	d1, vdp_data			; Move Y pos to data port
	
	rts

SetMultiSpritePosX:
	; Set sprite X position
	; d0 (b)  - Sprite ID
	; d1 (w)  - X coord
	; d2 (bb) - Sprite dimensions (width/height in subsprites)
	; d3 (w)  - Sprite width (pixels)
	; d4 (b)  - X flipped
	; a1 ---- - Subsprite dimensions array
	
	; Correct X coord for flipping
	cmp.b #0x0, d4
	beq   @NoFlipX
	add.w d3, d1	; Flipped, working from right to left
	@NoFlipX:
		
	; Loop columns
	clr.l  d3
	move.w d2, d3
	lsr.w  #0x8, d3 ; Num cols to bottom byte
	sub.w  #0x1, d3 ; -1 for loop counter
	@ColLp:
		
		move.w (a1), d5		; Get subsprite width/height from dimensions array
		lsr.w  #0x8, d5		; Get width
		andi.w #0xFF, d5
		mulu   #0x8, d5		; To pixels
	
		; If flipped, pre-decrement X pos
		cmp.b #0x0, d4
		beq   @NoPreDec
		sub.w  d5, d1       ; Working right to left, sub width
		@NoPreDec:
			
		; Loop rows
		clr.l  d6
		move.w d2, d6
		and.w  #0xFF, d6; Num rows in bottom byte
		sub.w  #0x1, d6 ; -1 for loop counter
		@RowLp:
		
			; Write X position
			clr.l	d7						; Clear d7
			move.b	d0, d7					; Move sprite ID to d7
	
			mulu.w	#size_spritedesc, d7		; Sprite array offset
			add.b	#0x6, d7				; X coord offset
			swap	d7						; Move to upper word
			or.l	#vdp_write_sprite_table, d7	; Add to sprite attr table
	
			move.l	d7, vdp_control			; Set dest address
			move.w	d1, vdp_data			; Move X pos to data port

			addq.w  #0x1, d0				; Next subsprite ID
			addi.l  #0x2, a1				; Next subsprite dimension
		
			dbra    d6, @RowLp
			
		; If not flipped, post-increment X pos
		cmp.b #0x0, d4
		bne   @NoPostInc
		add.w  d5, d1       ; Working left to right, add width
		@NoPostInc:

		dbra d3, @ColLp

	rts

SetMultiSpritePosY:
	; Set sprite Y position
	; d0 (b)  - Sprite ID
	; d1 (w)  - Y coord
	; d2 (bb) - Sprite dimensions (width/height in subsprites)
	; d3 (w)  - Sprite height (pixels)
	; d4 (b)  - Y flipped
	; a1 ---- - Subsprite dimensions array
	
	; Correct Y coord for flipping
	cmp.b #0x0, d4
	beq   @NoFlipY
	add.w d3, d1	; Flipped, working from bottom to top
	@NoFlipY:
	
	; Backup height
	move.w d1, d5
		
	; Loop columns
	clr.l  d3
	move.w d2, d3
	lsr.w  #0x8, d3 ; Num cols to bottom byte
	sub.w  #0x1, d3 ; -1 for loop counter
	@ColLp:
		
		; Reset height
		move.w d5, d1
		
		; Loop rows
		clr.l  d6
		move.w d2, d6
		and.w  #0xFF, d6; Num rows in bottom byte
		sub.w  #0x1, d6 ; -1 for loop counter
		@RowLp:
		
			; If flipped, pre-decrement Y pos
			cmp.b #0x0, d4
			beq   @NoPreDec
			move.w (a1)+, d7	; Get subsprite width/height from dimensions array
			andi.w #0xFF, d7	; Get height
			mulu   #0x8, d7		; To pixels
			sub.w  d7, d1       ; Working bottom to top, sub height
			@NoPreDec:
		
			; Write X position
			clr.l	d7						; Clear d7
			move.b	d0, d7					; Move sprite ID to d7
	
			mulu.w	#size_spritedesc, d7		; Sprite array offset, Y in first byte
			swap	d7						; Move to upper word
			or.l	#vdp_write_sprite_table, d7	; Add to sprite attr table
	
			move.l	d7, vdp_control			; Set dest address
			move.w	d1, vdp_data			; Move Y pos to data port

			addq.w  #0x1, d0				; Next subsprite ID
		
			; If not flipped, post-increment Y pos
			cmp.b #0x0, d4
			bne   @NoPostInc
			move.w (a1)+, d7	; Get subsprite width/height from dimensions array
			andi.w #0xFF, d7	; Get height
			mulu   #0x8, d7		; To pixels
			add.w  d7, d1       ; Working top to bottom, add height
			@NoPostInc:
		
			dbra    d6, @RowLp

		dbra d3, @ColLp

	rts

SetMultiSpriteHFlipOn:
	; d0 (w) - Sprite ID
	; d1 (b) - Num sub-sprites

	and.l   #0x000000FF, d1				 ; Clear rest of d1
	subq    #0x1, d1					 ; -1 for loop counter
	@SubSpriteLp:
	clr.l   d2
	move.b  d0, d2
	mulu.w  #size_spritedesc, d2          ; Offset into sprite table
	addi.w  #0x4, d2                     ; Bytes 4 and 5 hold flipping/palette/priority/ID
	add.l   #vram_addr_sprite_table, d2	 ; Add VRAM address offset
	rol.l   #0x2, d2					 ; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d2					 ; Shift lower word back
	swap    d2                     		 ; Swap address hi/lo

	move.l  d2, d3                       ; To d3 (we need the address again to write back)
	ori.l   #vdp_cmd_vram_read, d3       ; OR in VRAM read command
	move.l	d3, vdp_control              ; Set read command+address
	move.w  vdp_data, d3                 ; Read word from VDP

	or.w    #%0000100000000000, d3       ; Mask in H flipping (bit 3 of the upper byte)

	or.l    #vdp_cmd_vram_write, d2      ; OR in VRAM write command
	move.l	d2, vdp_control              ; Set write command+address
	move.w  d3, vdp_data                 ; Write word back
	
	addq    #0x1, d0					 ; Next sub-sprite
	dbra    d1, @SubSpriteLp			 ; Loop

	rts

SetMultiSpriteHFlipOff:
	; d0 (w) - Sprite ID
	; d1 (b) - Num sub-sprites

	and.l   #0x000000FF, d1				 ; Clear rest of d1
	subq    #0x1, d1					 ; -1 for loop counter
	@SubSpriteLp:
	clr.l   d2
	move.b  d0, d2
	mulu.w  #size_spritedesc, d2          ; Offset into sprite table
	addi.w  #0x4, d2                     ; Bytes 4 and 5 hold flipping/palette/priority/ID
	add.l   #vram_addr_sprite_table, d2	 ; Add VRAM address offset
	rol.l   #0x2, d2					 ; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d2					 ; Shift lower word back
	swap    d2                     		 ; Swap address hi/lo

	move.l  d2, d3                       ; To d3 (we need the offset again later)
	ori.l   #vdp_cmd_vram_read, d3       ; OR in VRAM read command
	move.l	d3, vdp_control              ; Set read command+address
	move.w  vdp_data, d3                 ; Read word from VDP

	and.w   #%1111011111111111, d3       ; Mask out H flipping (bit 3 of the upper byte)

	or.l    #vdp_cmd_vram_write, d2      ; OR in VRAM write command
	move.l	d2, vdp_control              ; Set write command+address
	move.w  d3, vdp_data                 ; Write word back
	
	addq    #0x1, d0					 ; Next sub-sprite
	dbra    d1, @SubSpriteLp			 ; Loop

	rts

GetCurrSpriteFrame:
    ; d0 (w) Return frame ID
	; a1 --- Address of animation data (ROM)
	; a2 --- Address of animation frame counter (RAM, writeable)

	clr.l  d3              ; Clear d3
	move.b (a2), d3        ; Read current anim frame number (d3)
	move.b (a1,d3.w), d0   ; Get original frame index (d4) from anim data array, store in d0

	rts

GetNextSpriteFrame:
    ; Gets next sprite frame ID from animation data (returns in d0)
	; and advances frame counter

    ; d0 (w) Return frame ID
    ; d1 (w) Number of anim frames
	; a1 --- Address of animation data (ROM)
	; a2 --- Address of animation frame counter (RAM, writeable)

	clr.l  d3              ; Clear d3
	move.b (a2), d3        ; Read current anim frame number (d3)
	addi.b #0x1, (a2)      ; Advance frame number
	cmp.b  d3, d1          ; Check new frame count with num anim frames
	bne    @NotAtEnd       ; Branch if we haven't reached the end of anim
	move.b #0x0, (a2)      ; At end of anim, wrap frame counter back to zero
	@NotAtEnd:

	move.b (a2), d1        ; Read next anim frame number (d1)
	move.b (a1,d1.w), d0   ; Get next frame index from anim data array (d0)

	rts

	;cmp.b  d3, d4          ; Has anim frame index changed?
	;beq    @NoChange       ; If not, there's nothing more to do

SetSpriteFrame:
	; Sets sprite animation frame

    ; d0 (w) Sprite address (VRAM)
	; d1 (w) Size of one sprite frame (in tiles)
	; d2 (w) Sprite frame ID
	; a0 --- Address of sprite data (ROM)

	; spriteDataAddr = spriteDataAddr + (sizeOfFrame * newTileID)
	move.l a0, d3          ; Move sprite data ROM address to d3 (can't do maths on address registers)
	move.w d1, d4          ; Move size of one sprite frame (in tiles) to d4 (can't trash d1, it's needed later)
	mulu.w #size_tile_b, d4   ; Multiply by size of one tile
	mulu.w d2, d4          ; Multiply with new frame index to get new ROM offset (result in d4)
	add.w  d4, d3          ; Add to sprite data address
	move.l d3, a0          ; Back to address register

	jsr LoadTiles          ; New tile address is in a0, VRAM address already in d0, num tiles already in d1 - jump straight to load tiles

	rts

AnimateSpriteFwd:
	; Advance sprite to next frame, and advance frame counter

	; d0 (w) Sprite address (VRAM)
	; d1 (w) Size of one sprite frame (in tiles)
	; d2 (w) Number of anim frames
	; a0 --- Address of sprite data (ROM)
	; a1 --- Address of animation data (byte array) (ROM)
	; a2 --- Address of animation frame counter (w) (RAM, writeable)

	clr.l  d3              ; Clear d3
	move.b (a2), d3        ; Read current anim frame number (d3)
	move.b d3, d4		   ; Backup
	addi.b #0x1, d3        ; Advance frame number
	cmp.b  d3, d2          ; Check new frame count against num anim frames
	bne    @NotAtEnd       ; Branch if we haven't reached the end of anim
	move.b #0x0, d3        ; At end of anim, wrap frame counter back to zero
	@NotAtEnd:
	move.b d3, (a2)		   ; Frame count back to RAM

	move.b (a1,d4.w), d4   ; Get original frame index (d4) from anim data array
	move.b (a1,d3.w), d3   ; Get next frame index (d5) from anim data array

	cmp.b  d3, d4          ; Has anim frame index changed?
	beq    @NoChange       ; If not, there's nothing more to do

	; spriteDataAddr = spriteDataAddr + (sizeOfFrame * newTileID)
	move.l a0, d2          ; Move sprite data ROM address to d2 (can't do maths on address registers)
	move.w d1, d4          ; Move size of one sprite frame (in tiles) to d4 (can't trash d1, it's needed later)
	mulu.w #size_tile_b, d4   ; Multiply by size of one tile
	mulu.w d3, d4          ; Multiply with new frame index to get new ROM offset (result in d4)
	add.w  d4, d2          ; Add to sprite data address
	move.l d2, a0          ; Back to address register

	jsr LoadTiles          ; New tile address is in a0, VRAM address already in d0, num tiles already in d1 - jump straight to load tiles

	@NoChange:
	rts

SetSpriteAnimFrame:
	; Sets sprite frame from animation data and frame index

	; d0 (l) Sprite address (VRAM)
	; d1 (w) Size of one sprite frame (in tiles)
	; d2 (w) Animation frame
	; d3 (b) Number of anim frames
	; a0 --- Address of sprite data (ROM)
	; a1 --- Address of animation data (byte array) (ROM)

	and.l #0x0000FFFF, d2
	and.l #0x000000FF, d3
	clr.l d4

	divu  d3, d2           ; Div frame count against num anim frames
	swap  d2			   ; Remainder to lower word

	move.b (a1,d2.w), d3   ; Get frame index from anim data array

	; spriteDataAddr = spriteDataAddr + (sizeOfFrame * newTileID)
	move.l a0, d2          ; Move sprite data ROM address to d2 (can't do maths on address registers)
	move.w d1, d4          ; Move size of one sprite frame (in tiles) to d4 (can't trash d1, it's needed later)
	mulu   #size_tile_b, d4   ; Multiply by size of one tile
	mulu   d3, d4          ; Multiply with new frame index to get new ROM offset (result in d4)
	add.l  d4, d2          ; Add to sprite data address
	move.l d2, a0          ; Back to address register

	jsr LoadTiles          ; New tile address is in a0, VRAM address already in d0, num tiles already in d1 - jump straight to load tiles

	rts