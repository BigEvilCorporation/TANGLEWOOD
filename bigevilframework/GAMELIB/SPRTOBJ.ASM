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
;-----------------------------------
SpriteObj_SubSpriteDimArr     rs.l 1	; Multi-sprite subsprite dimentions bits array address
SpriteObj_SubSpriteOffArr     rs.l 1	; Subsprite position offsets array address
SpriteObj_TilesetAddr         rs.l 1	; Art tiles ROM address
SpriteObj_PaletteAddr         rs.l 1	; Palette ROM address
SpriteObj_VRAMAddr            rs.w 1	; Art tiles VRAM address
SpriteObj_DrawOffsetX	      rs.w 1	; Sprite draw offset X (pixels)
SpriteObj_DrawOffsetY	      rs.w 1	; Sprite draw offset Y (pixels)
SpriteObj_SizeTiles           rs.w 1	; Number of tiles
SpriteObj_TileID              rs.w 1	; First tile ID (VRAM)
SpriteObj_PaletteIdx          rs.b 1	; Palette ID
SpriteObj_Priority            rs.b 1	; Priority (0/1)
SpriteObj_NumSubSprites       rs.b 1	; Num sub-sprites
SpriteObj_FlippedX            rs.b 1	; Sprite flip X
SpriteObj_FlippedY            rs.b 1	; Sprite flip Y
SpriteObj_Visible             rs.b 1	; Is visible (hidden in sprite border if not)
SpriteObj_SpriteLinked        rs.b 1	; Is sprite linked (use as last frame visibility test)
SpriteObj_PaletteAutoLoad     rs.b 1	; Load palette if on screen and not loaded
;-----------------------------------
	RS_ALIGN
SpriteObj_Struct_Size         rs.b 0
;-----------------------------------

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
	move.l #0x0, SpriteObj_TilesetAddr(a0)
	move.l #0x0, SpriteObj_PaletteAddr(a0)
	move.w #0x0, SpriteObj_VRAMAddr(a0)
	move.w #0x0, SpriteObj_DrawOffsetX(a0)
	move.w #0x0, SpriteObj_DrawOffsetY(a0)
	move.w #0x0, SpriteObj_SizeTiles(a0)
	move.b #0x0, SpriteObj_NumSubSprites(a0)
	move.b #0x0, SpriteObj_FlippedX(a0)
	move.b #0x0, SpriteObj_FlippedY(a0)
	move.b #0x1, SpriteObj_Visible(a0)
	move.b #0x0, SpriteObj_SpriteLinked(a0)
	move.b #0x0, SpriteObj_PaletteAutoLoad(a0)

	rts
	
SpriteObjLoad:
	; a0 --- SpriteObj address
	; a1 --- Tileset address
	; a2 --- Multi-sprite subsprite dimentions bits array address
	; a3 --- Multi-sprite subsprite position offsets array address
	; a4 --- Multi-sprite tiles per subsprite array address
	; a5 --- Palette addr
	; d0 (w) VRAM address
	; d1 (w) Num tiles
	; d2 (b) Num subsprites
	; d4 (b) Palette ID
	; d5 (b) Priority

	move.l a1, SpriteObj_TilesetAddr(a0)
	move.l a2, SpriteObj_SubSpriteDimArr(a0)
	move.l a3, SpriteObj_SubSpriteOffArr(a0)
	move.l a5, SpriteObj_PaletteAddr(a0)
	move.w d0, SpriteObj_VRAMAddr(a0)
	move.w d1, SpriteObj_SizeTiles(a0)
	move.b d2, SpriteObj_NumSubSprites(a0)
	move.b d4, SpriteObj_PaletteIdx(a0)
	move.b d5, SpriteObj_Priority(a0)

	; VRAM address to tile ID
	move.w d0, d6
	BYTES2TILES d6
	move.w d6, SpriteObj_TileID(a0)
	
	;==============================================================

	; VDP_LoadTiles:
	;  a0 - Tiles address (l)
	;  d0 - VRAM address (w)
	;  d1 - Num tiles (w)
	PUSHM    a0-a3/d0-d3
	move.l   a1, a0
	jsr      VDP_LoadTiles
	POPM     a0-a3/d0-d3

	rts

SpriteObjLoadShared:
	; a0 --- SpriteObj address
	; a1 --- Tileset address
	; a2 --- Multi-sprite subsprite dimentions bits array address
	; a3 --- Multi-sprite subsprite position offsets array address
	; a5 --- Palette addr
	; d0 (w) VRAM address
	; d1 (w) Num tiles
	; d2 (b) Num subsprites
	; d4 (b) Palette ID
	; d5 (b) Priority

	move.l a1, SpriteObj_TilesetAddr(a0)
	move.l a2, SpriteObj_SubSpriteDimArr(a0)
	move.l a3, SpriteObj_SubSpriteOffArr(a0)
	move.l a5, SpriteObj_PaletteAddr(a0)
	move.w d0, SpriteObj_VRAMAddr(a0)
	move.w d1, SpriteObj_SizeTiles(a0)
	move.b d2, SpriteObj_NumSubSprites(a0)
	move.b d4, SpriteObj_PaletteIdx(a0)
	move.b d5, SpriteObj_Priority(a0)

	; VRAM address to tile ID
	move.w d0, d6
	BYTES2TILES d6
	move.w d6, SpriteObj_TileID(a0)

	rts

SpriteObjAllocSprite:
	; a0 ---  SpriteObj address
	; a1 ---  Level address
	; d0 (w)  X coord
	; d1 (w)  Y coord
	; d2 (b)  Flipped X

	; d0 (w)  X coord
	; d1 (w)  Y coord
	; d2 (w)  First tile index
	; d3 (b)  Palette
	; d4 (b)  Priority
	; d5 (b)  Flipped X
	; d6 (b)  Num subsprites
	; a0 ---- Subsprite dimensions array (b * numSubsprites)
	; a2 ---  Subsprite position offsets array (ww * numSubsprites)
	PUSHM  a0-a3/d0-d3
	move.b d2, d5
	move.w SpriteObj_TileID(a0), d2
	move.b SpriteObj_PaletteIdx(a0), d3
	move.b SpriteObj_Priority(a0), d4
	move.b SpriteObj_NumSubSprites(a0), d6
	move.l SpriteObj_SubSpriteOffArr(a0), a2
	move.l SpriteObj_SubSpriteDimArr(a0), a0
	jsr    SPR_AddMultiSprite
	move.b d0, d4			; Sprite ID in d0
	POPM   a0-a3/d0-d3

	rts

SpriteObjUpdate:
	; a0 --- SpriteObj addr
	; a1 --- Level addr
	rts

SpriteObjDraw:
	; a0 --- SpriteObj addr
	; a1 --- Level addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	; Check if visible
	tst.b  SpriteObj_Visible(a0)
	beq    @Invisible
	
	;==============================================================
	
	; X pos world space
	move.w Entity_WorldPosX(a0), d0	; Top word = integer part

	; Check if out of bounds
	cmp.w  d0, d3					; Check sprite left against right border
	ble    @OutOfBounds
	move.w d0, d6
	add.w  Entity_Width(a0), d6		; Get sprite right
	cmp.w  d6, d2					; Check sprite right against left border
	bge    @OutOfBounds
	
	;==============================================================
	
	; Y pos world space
	move.w Entity_WorldPosY(a0), d1	; Top word = integer part

	; Check if out of bounds
	cmp.w  d1, d5					; Check sprite top against bottom border
	ble    @OutOfBounds
	move.w d1, d6
	add.w  Entity_Height(a0), d6	; Get sprite bottom
	cmp.w  d6, d4					; Check sprite bottom against top border
	bge    @OutOfBounds
	
	;==============================================================
	; Sprite visible

	add.w  SpriteObj_DrawOffsetX(a0), d0	; Apply draw offset X (animation, etc)
	add.w  SpriteObj_DrawOffsetY(a0), d1	; Apply draw offset Y (animation, etc)
	sub.w  WorldScrollX, d0					; Apply camera pos X
	sub.w  WorldScrollY, d1					; Apply camera pos Y

	; Backup camera
	PUSHM  d2-d5

	move.b SpriteObj_FlippedX(a0), d2		; Apply flipping

	; Allocate a sprite table entry and populate it
	jsr    SpriteObjAllocSprite

	; Restore camera
	POPM   d2-d5
	
	; Sprite linked
	move.b SpriteObj_SpriteLinked(a0), d1
	move.b #0x1, SpriteObj_SpriteLinked(a0)

	; If not previously linked
	tst.b  d1
	bne    @End

	; If palette not loaded, DMA it
	tst.b  SpriteObj_PaletteAutoLoad(a0)
	beq    @End

	moveq  #0x0, d0
	move.b SpriteObj_PaletteIdx(a0), d0
	move.l SpriteObj_PaletteAddr(a0), a2
	
	move.l d0, d1
	lsl.l  #0x2, d1
	lea    ScenePaletteAddrs, a3
	add.l  d1, a3
	move.l (a3), a3
	cmp.l  SpriteObj_PaletteAddr(a0), a3
	beq    @End

	PUSHL  a0
	move.l a2, a0
	jsr    GameScenePaletteLoad
	POPL   a0
	
	bra    @End
	
	;==============================================================

	@Invisible:
	@OutOfBounds:
	
	; Sprite unlinked
	move.b #0x0, SpriteObj_SpriteLinked(a0)
	
	@End:
	
	rts

SpriteObjCheckBounds:
	; a0 --- SpriteObj addr
	; a1 --- Level addr

	moveq  #0x0, d7

	; X pos world space to screen space
	move.w Entity_WorldPosX(a0), d0			; Top word = integer part
	sub.w  (WorldScrollX), d0				; Apply camera pos X (incl. camera shake + peek offset)

	; Check if out of bounds
	cmp.w  #vdp_sprite_border_x+screen_width, d0	; Check sprite left against right border
	bgt    @OutOfBounds
	move.w d0, d4
	add.w  Entity_Width(a0), d4				; Get sprite right
	cmp.w  #vdp_sprite_border_x, d4			; Check sprite right against left border
	blt    @OutOfBounds
	
	;==============================================================
	
	; Y pos world space to screen space
	move.w Entity_WorldPosY(a0), d1			; Top word = integer part
	addi.w #Pool_Height, d2					; Sub water height
	sub.w  Pool_WaterHeight(a0), d2
	sub.w  (WorldScrollY), d1				; Apply camera Y (incl. camera shake + peek offset)

	; Check if out of bounds
	cmp.w  #vdp_sprite_border_y+screen_height, d1	; Check sprite top against bottom border
	bgt    @OutOfBounds
	move.w d1, d4
	add.w  Entity_Height(a0), d4			; Get sprite bottom
	cmp.w  #vdp_sprite_border_y, d4			; Check sprite bottom against top border
	blt    @OutOfBounds

	moveq  #0x1, d7

	@OutOfBounds:

	move.b d7, d0

	rts