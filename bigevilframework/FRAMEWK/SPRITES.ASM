;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   sprites.asm - Sprite routines
;==============================================================

	rsset 0
;---------------------------------
Sprite_CoordY        		  rs.w 1
Sprite_Dimensions_NextID      rs.b 1 ; Dimensions (bits 15-8),
Sprite_NextID				  rs.b 1 ;  + next sprite ID (bits 7-0)
Sprite_Prio_Pal_Flip_TileIDHi rs.b 1 ; Priority (bit 15), palette (bits 14-13), v/h flip (bits 12 and 11), tile ID hi (bits 10-8)
Sprite_TileIDLo               rs.b 1 ;  + tile ID lo (bits 7-0)
Sprite_CoordX        		  rs.w 1
;---------------------------------
Sprite_Struct_Size			  rs.b 0

;==============================================================

VDP_LoadSpriteTable:
	; a0 --- Sprite data address
	; d0 (b) Sprite index

	and.l   #0x000000FF, d0
	lsl.w   #0x3, d0         			 ; Offset into sprite table (sprite desc = 8 bytes)
	swap    d0                           ; To upper word
	or.l    #vdp_write_sprite_table, d0  ; Add to write address
	move.l	d0, vdp_control				 ; Set read address
	
	move.l	(a0)+, vdp_data    			 ; 8 bytes of data
	move.l	(a0)+, vdp_data
	
	rts
	
VDP_LoadSpriteTables:
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
	
SPR_Link:
	; d0 (b) Prev index
	; d1 (b) Next index
	
	and.l   #0x000000FF, d0
	
	; Offset into sprite table
	lea     vdp_sprite_table, a3
	lsl.w   #0x3, d0         			 ; Offset into sprite table (sprite desc = 8 bytes)          
	add.l   d0, a3
	
	; Set next sprite ID
	move.b  d1, Sprite_NextID(a3)
	
	rts
	
SPR_ClearAllLinks:

	; Get sprite table
	lea     vdp_sprite_table, a0
	
	; Offset to next sprite ID
	add.l   #Sprite_NextID, a0
	
	; Loop all sprites in table
	move.w  #vdp_max_sprites-1, d0
	@SpriteLp:
	
	; Clear next sprite ID
	move.b  #0x0, (a0)
	
	; Next sprite
	add.l   #size_spritedesc, a0
	
	dbra    d0, @SpriteLp
	
	; Clear count
	move.b  #0x0, sprite_link_count
	
	; Clear last linked
	move.w  #0x0, prev_sprite_link
	
	rts

SPR_SetPosX:
	; Set sprite X position
	; d0 (b) - Sprite ID
	; d1 (w) - X coord

	; Offset into sprite table
	lea     vdp_sprite_table, a0
	andi.l  #0x000000FF, d0
	lsl.w   #0x3, d0         			 ; Offset into sprite table (sprite desc = 8 bytes)         
	add.l   d0, a0
	
	; Set X coord
	move.w  d1, Sprite_CoordX(a0)

	rts
		
SPR_SetPosY:
	; Set sprite Y position
	; d0 (b) - Sprite ID
	; d1 (w) - Y coord

	; Offset into sprite table
	lea     vdp_sprite_table, a0
	andi.l  #0x000000FF, d0
	lsl.w   #0x3, d0         			 ; Offset into sprite table (sprite desc = 8 bytes)       
	add.l   d0, a0
	
	; Set Y coord
	move.w  d1, Sprite_CoordY(a0)
	
	rts

SPR_SetMultiPosX:
	; Set sprite X position
	; d0 (b)  - Sprite ID
	; d1 (w)  - X coord
	; d2 (b)  - Num subsprites
	; d3 (w)  - Sprite total width (pixels)
	; d4 (b)  - X flipped
	; a1 ---  - Subsprite position offsets array (bb)
	
	; Offset into sprite table
	lea     vdp_sprite_table, a0
	andi.l  #0x000000FF, d0
	lsl.w   #0x3, d0         			 ; Offset into sprite table (sprite desc = 8 bytes)
	add.l   d0, a0
	
	; Shift flip flag for OR'ing with priority byte
	move.b d4, d6
	lsl.b  #0x3, d6
	
	; Loop subsprites
	andi.w #0x00FF, d2
	sub.b  #0x1, d2
	@SubspriteLp:
	
		; Get offset (X/Y, flipped and unflipped)
		move.l (a1), d5
		
		; Flipped word is first
		btst #0x0, d4
		bne  @Flipped
		swap d5
		@Flipped:
		
		; Get X coord
		lsr.w  #0x8, d5
		andi.w #0x00FF, d5
		
		; Add X coord to offset
		add.w d1, d5
	
		; Set X coord
		move.w d5, Sprite_CoordX(a0)
		
		; Set flip flag
		move.b Sprite_Prio_Pal_Flip_TileIDHi(a0), d5
		andi.b #%11110111, d5
		or.b   d6, d5
		move.b d5, Sprite_Prio_Pal_Flip_TileIDHi(a0)
		
		; Next subsprite
		add.l #size_spritedesc, a0
		
		; Next subsprite offset
		addi.l  #size_long, a1
			
		dbra    d2, @SubspriteLp

	rts

SPR_SetMultiPosY:
	; Set sprite Y position
	; d0 (b)  - Sprite ID
	; d1 (w)  - Y coord
	; d2 (b)  - Num subsprites
	; d3 (w)  - Sprite total width (pixels)
	; a1 ---  - Subsprite position offsets array (bb)
	
	; Offset into sprite table
	lea     vdp_sprite_table, a0
	andi.l  #0x000000FF, d0
	lsl.w   #0x3, d0         			 ; Offset into sprite table (sprite desc = 8 bytes)
	add.l   d0, a0
	
	; Loop subsprites
	andi.w #0x00FF, d2
	sub.b  #0x1, d2
	@SubspriteLp:
	
		; Get Y offset
		move.l (a1), d6
		andi.w #0x00FF, d6

		; Add Y coord
		add.w d1, d6
	
		; Set Y coord
		move.w d6, Sprite_CoordY(a0)
		
		; Next subsprite
		add.l #size_spritedesc, a0
		
		; Next subsprite offset
		addi.l  #size_long, a1
		
		dbra    d2, @SubspriteLp

	rts
	
SPR_SetPriority:
	; Set sprite draw priority
	; d0 (b) - Sprite ID
	; d1 (b) - Priority (0/1)
	
	; Offset into sprite table
	lea     vdp_sprite_table, a0
	andi.l  #0x000000FF, d0
	lsl.w   #0x3, d0         			 ; Offset into sprite table (sprite desc = 8 bytes)
	add.l   d0, a0
	
	; Priority = top bit in byte
	lsl.b   #0x7, d1
	
	move.b  Sprite_Prio_Pal_Flip_TileIDHi(a0), d2
	andi.b  #0x7F, d2	; Clear top bit
	or.b    d1, d2		; OR priority bit
	move.b  d2, Sprite_Prio_Pal_Flip_TileIDHi(a0)
	
	rts

SPR_LoadAnimFrame:
	; Sets sprite frame from animation data and frame index, uploads tiles to VRAM

	; a0 --- Address of sprite data (ROM)
	; a1 --- Address of animation data (byte array) (ROM)
	; d0 (w) Sprite address (VRAM)
	; d1 (w) Size of one sprite frame (in tiles)
	; d2 (w) Animation frame
	; d3 (b) Number of anim frames
	; d4 (w) First frame offset

	and.l  #0x0000FFFF, d0
	and.l  #0x0000FFFF, d2
	and.l  #0x000000FF, d3

	divu   d3, d2          ; Div frame count against num anim frames
	swap   d2			   ; Remainder to lower word

	move.b (a1,d2.w), d3   ; Get frame index from anim data array
	add.w  d4, d3		   ; Add first frame offset

	; spriteDataAddr = spriteDataAddr + (sizeOfFrame * newTileID)
	move.l a0, d2          ; Move sprite data ROM address to d2 (can't do maths on address registers)
	move.w d1, d5          ; Move size of one sprite frame (in tiles) to d4 (can't trash d1, it's needed later)
	and.l  #0x0000FFFF, d5
	lsl.w  #0x5, d5 	   ; Multiply by size of one tile (32 bytes)
	mulu   d3, d5          ; Multiply with new frame index to get new ROM offset (result in d4)
	add.l  d5, d2          ; Add to sprite data address
	move.l d2, a0          ; Back to address register

	IFD DMA_FROM_CART

	; Add DMA job
	lsl.w   #0x4, d1	   ; Tile index to words (32 bytes, 16 words)
	jsr     VDP_DMAQueue_AddJob
	
	ELSE
	
	; Can't DMA from cart, load inline
	jsr    VDP_LoadTiles
	
	ENDIF
	
	rts
