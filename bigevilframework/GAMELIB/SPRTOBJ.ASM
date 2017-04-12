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
	
	; Init base
	jsr    EntityInit
	
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
	move.b #0x1, SpriteObj_Visible(a0)
	move.b #0x0, SpriteObj_SpriteLinked(a0)

	rts
	
SpriteObjLoad:
	; a0 --- SpriteObj address
	; a1 --- Tileset address
	; a2 --- Multi-sprite subsprite dimentions bits array address
	; a3 --- Multi-sprite subsprite position offsets array address
	; a4 --- Multi-sprite tiles per subsprite array address
	; d0 (w) VRAM address
	; d1 (w) Num tiles
	; d2 (b) Num subsprites
	; d3 (w) Sprite W/H dimentions
	; d4 (b) Palette ID
	; d5 (b) Priority

	andi.l #0x0000FFFF, d0

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
	PUSHM  a0-a3/d0-d2
	move.w d0, d6			; Backup d0
	move.w d3, d0			; W/H to d0
	andi.l #0x0000FFFF, d6
	divu   #size_tile_b, d6	; Tile ID
	move.w d6, d2			; To d2
	move.l #0x00000000, d1	; X/Y offset
	move.b d4, d3			; Palette
	move.b d5, d4			; Priority
	move.l a2, a0			; Dimension bits array to a0
	move.l a4, a1			; Tiles per sprite array to a1
	jsr    SPR_AddMultiSprite		; Add and link sprite
	move.b d0, d4			; Sprite ID in d0
	POPM   a0-a3/d0-d2
	
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

	; Check if valid sprite ID
	cmp.b  #0xFF, SpriteObj_SpriteID(a0)
	beq    @InvalidSpriteId

	; Check if visible
	move.b SpriteObj_Visible(a0), d0
	cmp.b  #0x0, d0
	beq    @Invisible
	
	;==============================================================
	
	; X pos world space to sprite space
	move.l Entity_WorldPosX(a0), d1
	TOPIXELS d1
	
	; Add draw offset (animation, etc)
	add.w  SpriteObj_DrawOffsetX(a0), d1
	
	move.l (WorldScrollX), d2			; Get camera pos X (incl. camera shake + peek offset)
	TOPIXELS d2
	
	sub.l  d2, d1	; Scroll space to screen space (subpixels)

	; Check if out of bounds
	cmp.w  #0x0, d1
	blt    @OutOfBounds
	cmp.w  #SpritePlaneWidth, d1
	bgt    @OutOfBounds
	
	;==============================================================
	
	; Y pos world space to sprite space
	move.l Entity_WorldPosY(a0), d3
	TOPIXELS d3
	
	; Add draw offset (animation, etc)
	add.w  SpriteObj_DrawOffsetY(a0), d3
	
	move.l (WorldScrollY), d2			; Get camera Y (incl. camera shake + peek offset)
	TOPIXELS d2
	
	sub.w  d2, d3	; Scroll space to screen space (subpixels)

	; Check if out of bounds
	cmp.w  #0x0, d3
	blt    @OutOfBounds
	cmp.w  #SpritePlaneHeight, d3
	bgt    @OutOfBounds
	
	;==============================================================
	
	; Set X position and flipping
	movem.l d3/a0-a1, -(sp)
	move.b SpriteObj_SpriteID(a0), d0
	move.b SpriteObj_NumSubSprites(a0), d2
	move.w Entity_Width(a0), d3
	move.b SpriteObj_FlippedX(a0), d4
	move.l SpriteObj_SubSpriteOffArr(a0), a1
	jsr    SPR_SetMultiPosX
	movem.l (sp)+, d3/a0-a1
	
	;==============================================================
	
	; Set Y position
	movem.l a0-a1, -(sp)
	move.w d3, d1
	move.b SpriteObj_SpriteID(a0), d0
	move.b SpriteObj_NumSubSprites(a0), d2
	move.w Entity_Height(a0), d3
	move.b SpriteObj_FlippedY(a0), d4
	move.l SpriteObj_SubSpriteOffArr(a0), a1
	jsr    SPR_SetMultiPosY
	movem.l (sp)+, a0-a1
	
	;==============================================================
	
	; Sprite is visible - link to prev in list
	move.b SpriteObj_SpriteID(a0), d1 		; This id
	move.b SpriteObj_NumSubSprites(a0), d3
	subi.b #0x1, d3
	andi.w #0x00FF, d1
	andi.w #0x00FF, d3
	
	@SubSpriteLinkLp:
	move.w (prev_sprite_link), d0			; Prev id
	PUSHL  d1
	cmp.b  #0x0, d1
	beq    @FirstSprite						; Not first sprite
	jsr    SPR_Link							; Link sprite with prev
	@FirstSprite:
	POPL   d1
	move.w d1, prev_sprite_link				; Set as next
	addi.b #0x1, d1							; Next subsprite
	dbra   d3, @SubSpriteLinkLp
	
	; Sprite linked
	move.b #0x1, SpriteObj_SpriteLinked(a0)
	
	; Increment link count
	addi.b #0x1, sprite_link_count
	
	bra    @End
	
	;==============================================================

	@Invisible:
	@OutOfBounds:
	
	; Can't unlink first sprite
    move.b SpriteObj_SpriteID(a0), d0
    cmp.b  #0x0, d0
    bne    @NotFirstSprite

	; Move to Y border
    move.w #0x0, d1
    PUSHL  a0
    jsr    SPR_SetPosY
    POPL   a0
	
	; Set last linked (only first subsprite needed)
	move.b SpriteObj_SpriteID(a0), d0
	move.w d0, prev_sprite_link
	
	@NotFirstSprite:
	
	; Sprite unlinked
	move.b #0x0, SpriteObj_SpriteLinked(a0)
	
	@InvalidSpriteId:
	@End:
	
	rts
	
SpriteObj_SetDrawPriority:
	; a0 --- SpriteObj addr
	; a1 --- Level addr
	; d0 (b) Priority (0/1)

	move.b d0, d1
	clr.l  d0
	clr.l  d2
	move.b SpriteObj_NumSubSprites(a0), d2
	move.b SpriteObj_SpriteID(a0), d0
	@SubspriteLp:
	PUSHM  d0-d2
	jsr    SPR_SetPriority
	POPM   d0-d2
	add.b  #0x1, d0
	dbra   d2, @SubspriteLp

	rts