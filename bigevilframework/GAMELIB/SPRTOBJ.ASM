;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sprtobj.asm - Sprite object
;==============================================================

;==============================================================
; SpriteObject
;==============================================================
	rsset Entity_Struct_Size
;--------------------------------
SpriteObj_SubSpriteOffArr  rs.l 1	; Subsprite position offsets array address
SpriteObj_SubSpriteOffArrF rs.l 1	; Subsprite position offsets array address (flipped)
SpriteObj_TilesetAddr      rs.l 1	; Art tiles ROM address
SpriteObj_VRAMAddr         rs.l 1	; Art tiles VRAM address
SpriteObj_DrawOffsetX	   rs.w 1   ; Sprite draw offset X (pixels)
SpriteObj_DrawOffsetY	   rs.w 1   ; Sprite draw offset Y (pixels)
SpriteObj_TilesetSize      rs.w 1	; Art tiles size (bytes)
SpriteObj_Dimensions       rs.w 1	; Width/height in subsprite
SpriteObj_SpriteID         rs.b 1	; First sub-sprite ID
SpriteObj_NumSubSprites    rs.b 1	; Num sub-sprites
SpriteObj_FlippedX         rs.b 1	; Sprite flip X
SpriteObj_FlippedY         rs.b 1	; Sprite flip Y
SpriteObj_Visible          rs.b 1	; Is visible (hidden in sprite border if not)
SpriteObj_SpriteLinked     rs.b 1	; Is sprite linked (use as last frame visibility test)
;--------------------------------
SpriteObj_Struct_Pad       rs.b 2
SpriteObj_Struct_Size      rs.b 0
;--------------------------------

SpriteObjInit:
	; a0 --- SpriteObj addr
	; a1 --- Level addr
	
	; Set type
	ori.l  #entity_type_spriteobj, Entity_TypeBits(a0)
	
	; Set default state
	move.b #0x1, Entity_Active(a0)
	move.l #0x0, SpriteObj_SubSpriteOffArr(a0)
	move.l #0x0, SpriteObj_SubSpriteOffArrF(a0)
	move.l #0x0, SpriteObj_TilesetAddr(a0)
	move.l #0x0, SpriteObj_VRAMAddr(a0)
	move.w #0x0, SpriteObj_DrawOffsetX(a0)
	move.w #0x0, SpriteObj_DrawOffsetY(a0)
	move.w #0x0, SpriteObj_TilesetSize(a0)
	move.w #0x0, SpriteObj_Dimensions(a0)
	move.b #0x0, SpriteObj_SpriteID(a0)
	move.b #0x0, SpriteObj_NumSubSprites(a0)
	move.b #0x0, SpriteObj_FlippedX(a0)
	move.b #0x0, SpriteObj_FlippedY(a0)
	move.b #0x0, SpriteObj_Visible(a0)
	move.b #0x0, SpriteObj_SpriteLinked(a0)

	rts
	
SpriteObjLoad:
	; a0 --- SpriteObj address
	; a1 --- Tileset address
	; a2 --- Multi-sprite subsprite dimentions bits array address
	; a3 --- Multi-sprite subsprite position offsets array address
	; a4 --- Multi-sprite tiles per subsprite array address
	; d0 (l) VRAM address
	; d1 (w) Num tiles
	; d2 (b) Num subsprites
	; d3 (w) Sprite W/H dimentions
	; d4 (b) Palette ID

	move.l a1, SpriteObj_TilesetAddr(a0)
	move.l a3, SpriteObj_SubSpriteOffArr(a0)
	move.l d0, SpriteObj_VRAMAddr(a0)
	move.w d1, SpriteObj_TilesetSize(a0)
	move.b d2, SpriteObj_NumSubSprites(a0)
	move.w d3, SpriteObj_Dimensions(a0)
	
	;==============================================================

	; VDP_LoadTiles:
	;  a0 - Tiles address (l)
	;  d0 - VRAM address (l)
	;  d1 - Num tiles (w)
	movem.l  a0-a3/d0-d2, -(sp)
	move.l   a1, a0
	jsr      VDP_LoadTiles
	movem.l  (sp)+, a0-a3/d0-d2

	;==============================================================
	
	; SPR_AddMultiSprite:
	;  d0 (bb) Width/height (in subsprites)
	;  d1 (ww) X/Y coord
	;  d2 (w)  First tile index
	;  d3 (b)  Palette
	;  a0 ---- Subsprite dimensions bits array (b * numSubsprites)
	;  a1 ---- Num tiles per subsprite array (b * numSubsprites)
	movem.l  a0-a3/d0-d2, -(sp)
	move.w d0, d5			; Backup d0
	move.w d3, d0			; W/H to d0
	divu   #size_tile_b, d5	; Tile ID
	move.w d5, d2			; To d2
	move.l #0x00000000, d1	; X/Y offset
	move.b d4, d3			; Palette
	move.l a2, a0			; Dimension bits array to a0
	move.l a4, a1			; Tiles per sprite array to a1
	jsr    SPR_AddMultiSprite		; Add and link sprite
	move.b d0, d4			; Sprite ID in d0
	movem.l  (sp)+, a0-a3/d0-d2
	
	;==============================================================

	; Set sprite ID
	move.b d4, SpriteObj_SpriteID(a0)	; Sprite ID in d0

	rts
	
SpriteObjUpdate:
	; a0 --- SpriteObj addr
	; a1 --- Level addr
	
	rts
	
SpriteObjDraw:
	; a0 --- SpriteObj addr
	; a1 --- Level addr

	; Check if visible
	move.b SpriteObj_Visible(a0), d0
	cmp.b  #0x0, d0
	beq    @Invisible
	
	;==============================================================
	
	; X pos world space to sprite space
	move.l Entity_WorldPosX(a0), d1
	divs.w #SubpixelsPerPixel, d1
	
	; Add draw offset (animation, etc)
	add.w  SpriteObj_DrawOffsetX(a0), d1
	
	move.l (WorldScrollX), d2			; Get camera pos X
	add.l  (CameraShakeOffsetX), d2		; Add shake offset
	divs.w #SubpixelsPerPixel, d2
	
	neg.l  d2		; Camera space to scroll space
	add.l  d2, d1	; Scroll space to screen space (subpixels)

	; Check if out of bounds
	cmp.w  #0x0, d1
	blt    @OutOfBounds
	cmp.w  #SpritePlaneWidth, d1
	bgt    @OutOfBounds
	
	; Set X position and flipping
	move.l a1, -(sp)
	move.l a0, -(sp)
	move.b SpriteObj_SpriteID(a0), d0
	move.b SpriteObj_NumSubSprites(a0), d2
	move.w Entity_Width(a0), d3
	move.b SpriteObj_FlippedX(a0), d4
	move.l SpriteObj_SubSpriteOffArr(a0), a1
	jsr    SPR_SetMultiPosX
	move.l (sp)+, a0
	move.l (sp)+, a1
	
	;==============================================================
	
	; Y pos world space to sprite space
	move.l Entity_WorldPosY(a0), d1
	divs.w #SubpixelsPerPixel, d1
	
	; Add draw offset (animation, etc)
	add.w  SpriteObj_DrawOffsetY(a0), d1
	
	move.l (WorldScrollY), d2			; Get camera Y
	add.l  (CameraShakeOffsetY), d2		; Add shake offset
	divs.w #SubpixelsPerPixel, d2
	
	neg.w  d2		; Camera space to scroll space
	add.w  d2, d1	; Scroll space to screen space (subpixels)

	; Check if out of bounds
	cmp.w  #0x0, d1
	blt    @OutOfBounds
	cmp.w  #SpritePlaneHeight, d1
	bgt    @OutOfBounds
	
	; Set Y position
	move.l a1, -(sp)
	move.l a0, -(sp)
	move.b SpriteObj_SpriteID(a0), d0
	move.b SpriteObj_NumSubSprites(a0), d2
	move.w Entity_Height(a0), d3
	move.b SpriteObj_FlippedY(a0), d4
	move.l SpriteObj_SubSpriteOffArr(a0), a1
	jsr    SPR_SetMultiPosY
	move.l (sp)+, a0
	move.l (sp)+, a1
	
	;==============================================================
	
	; Sprite is visible - link to prev in list
	clr.w  d1
	move.b SpriteObj_SpriteID(a0), d1 		; This id
	clr.l  d3
	move.b SpriteObj_NumSubSprites(a0), d3
	subi.b #0x1, d3
	
	move.l a0, -(sp)
	@SubSpriteLinkLp:
	move.w (prev_sprite_link), d0			; Prev id
	move.l d1, -(sp)
	cmp.b  #0x0, d1
	beq    @FirstSprite						; Not first sprite
	jsr    SPR_Link						; Link sprite with prev
	@FirstSprite:
	move.l (sp)+, d1
	move.w d1, prev_sprite_link				; Set as next
	addi.b #0x1, d1							; Next subsprite
	dbra   d3, @SubSpriteLinkLp
	move.l (sp)+, a0
	
	; Sprite linked
	move.b #0x1, SpriteObj_SpriteLinked(a0)
	
	jmp    @End
	
	;==============================================================

	@Invisible:
	@OutOfBounds:
	
	; Sprite isn't visible - unlink first sprite from list
	cmp.b  #0x0, SpriteObj_SpriteLinked(a0)	; Check if already unlinked first
	beq    @Unlinked
	
	move.b SpriteObj_SpriteID(a0), d0			; This id
	move.b #0x0, d1							; Next id
	move.l a0, -(sp)
	jsr    SPR_Link						; Unlink
	move.l (sp)+, a0

	; Can't unlink first sprite, move to border
	move.b SpriteObj_SpriteID(a0), d0
	cmp.b  #0x0, d0
	bne    @NotFirstSprite
	move.w #0x0, d1
	move.l a0, -(sp)
	jsr    SPR_SetPosX
	move.l (sp)+, a0
	@NotFirstSprite:
	
	@Unlinked:
	
	; Sprite unlinked
	move.b #0x0, SpriteObj_SpriteLinked(a0)
	
	@End:
	
	rts