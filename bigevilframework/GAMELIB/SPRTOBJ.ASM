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
SpriteObj_SubSpriteTileNumArr rs.l 1	; Tiles per subsprite array address
SpriteObj_TilesetAddr         rs.l 1	; Art tiles ROM address
SpriteObj_VRAMAddr            rs.w 1	; Art tiles VRAM address
SpriteObj_DrawOffsetX	      rs.w 1   ; Sprite draw offset X (pixels)
SpriteObj_DrawOffsetY	      rs.w 1   ; Sprite draw offset Y (pixels)
SpriteObj_TilesetSize         rs.w 1	; Art tiles size (bytes)
SpriteObj_Dimensions          rs.w 1	; Width/height in subsprite
SpriteObj_TileID              rs.w 1	; First tile ID
SpriteObj_Palette             rs.b 1	; Palette ID
SpriteObj_Priority            rs.b 1	; Priority (0/1)
SpriteObj_NumSubSprites       rs.b 1	; Num sub-sprites
SpriteObj_FlippedX            rs.b 1	; Sprite flip X
SpriteObj_FlippedY            rs.b 1	; Sprite flip Y
SpriteObj_Visible             rs.b 1	; Is visible (hidden in sprite border if not)
SpriteObj_SpriteLinked        rs.b 1	; Is sprite linked (use as last frame visibility test)
;-----------------------------------
SpriteObj_Struct_Pad          rs.b 3
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
	move.w #0x0, SpriteObj_VRAMAddr(a0)
	move.w #0x0, SpriteObj_DrawOffsetX(a0)
	move.w #0x0, SpriteObj_DrawOffsetY(a0)
	move.w #0x0, SpriteObj_TilesetSize(a0)
	move.w #0x0, SpriteObj_Dimensions(a0)
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

	move.l a1, SpriteObj_TilesetAddr(a0)
	move.l a2, SpriteObj_SubSpriteDimArr(a0)
	move.l a3, SpriteObj_SubSpriteOffArr(a0)
	move.l a4, SpriteObj_SubSpriteTileNumArr(a0)
	move.w d0, SpriteObj_VRAMAddr(a0)
	move.w d1, SpriteObj_TilesetSize(a0)
	move.b d2, SpriteObj_NumSubSprites(a0)
	move.w d3, SpriteObj_Dimensions(a0)
	move.b d4, SpriteObj_Palette(a0)
	move.b d5, SpriteObj_Priority(a0)

	; VRAM address to tile ID
	move.w d0, d6
	divu.w #size_tile_b, d6
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

SpriteObjAllocSprite:
	; a0 ---  SpriteObj address
	; a1 ---  Level address
	; d1 (ww) X/Y position
	; d2 (b)  Flipped X
	; d3 (b)  Flipped Y

	; d1 (ww) X/Y coord
	; d2 (w)  First tile index
	; d3 (b)  Palette
	; d4 (b)  Priority
	; d5 (b)  Flipped X
	; d6 (b)  Num subsprites
	; a0 ---- Subsprite dimensions array (b * numSubsprites)
	; a1 ---- Num tiles per subsprite array (b * numSubsprites)
	; a2 ---  Subsprite position offsets array (ww * numSubsprites)
	PUSHM  a0-a3/d0-d3
	move.b d2, d5
	move.w SpriteObj_TileID(a0), d2
	move.b SpriteObj_Palette(a0), d3
	move.b SpriteObj_Priority(a0), d4
	move.b SpriteObj_NumSubSprites(a0), d6
	move.l SpriteObj_SubSpriteOffArr(a0), a2
	move.l SpriteObj_SubSpriteTileNumArr(a0), a1
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

	; Check if visible
	move.b SpriteObj_Visible(a0), d0
	cmp.b  #0x0, d0
	beq    @Invisible
	
	;==============================================================
	
	; X pos world space to screen space
	move.l Entity_WorldPosX(a0), d1
	TOPIXELS d1
	add.w  SpriteObj_DrawOffsetX(a0), d1	; Apply draw offset (animation, etc)
	move.l (WorldScrollX), d2				; Get camera pos X (incl. camera shake + peek offset)
	TOPIXELS d2
	sub.w  d2, d1							; Apply camera pos

	; Check if out of bounds
	move.w d1, d4
	add.w  Entity_Width(a0), d4				; Get sprite right
	cmp.w  #0x0, d4							; Check sprite right against left border
	blt    @OutOfBounds
	cmp.w  #vdp_sprite_plane_width, d1		; Check sprite left against right border
	bgt    @OutOfBounds
	
	;==============================================================
	
	; Y pos world space to screen space
	move.l Entity_WorldPosY(a0), d3
	TOPIXELS d3
	add.w  SpriteObj_DrawOffsetY(a0), d3	; Apply draw offset (animation, etc)
	move.l (WorldScrollY), d2				; Get camera Y (incl. camera shake + peek offset)
	TOPIXELS d2
	sub.w  d2, d3							; Apply camera pos

	; Check if out of bounds
	move.w d3, d4
	add.w  Entity_Height(a0), d4			; Get sprite bottom
	cmp.w  #0x0, d4							; Check sprite bottom against top border
	blt    @OutOfBounds
	cmp.w  #vdp_sprite_plane_height, d3		; Check sprite top against bottom border
	bgt    @OutOfBounds
	
	;==============================================================
	; Sprite visible

	; X/Y in d1
	swap   d1
	move.w d3, d1

	; Allocate a sprite table entry and populate it
	move.b SpriteObj_FlippedX(a0), d2
	jsr    SpriteObjAllocSprite
	
	; Sprite linked
	move.b #0x1, SpriteObj_SpriteLinked(a0)
	
	bra    @End
	
	;==============================================================

	@Invisible:
	@OutOfBounds:
	
	; Sprite unlinked
	move.b #0x0, SpriteObj_SpriteLinked(a0)
	
	@End:
	
	rts
