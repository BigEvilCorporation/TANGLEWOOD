;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   vfx.asm - VFX object
;==============================================================

;==============================================================
; Constants
;==============================================================
VFX_MaxEntities		equ 0x8

;==============================================================
; Animated VFX object
;==============================================================
	rsset AnimObj_Struct_Size
;---------------------------------
VfxObj_Animation        rs.b Animation_Struct_Size
;---------------------------------
VfxObj_Struct_Pad       rs.b 0
VfxObj_Struct_Size      rs.b 0

;==============================================================

VfxInit:
	; a0 --- VFX addr
	; a1 --- Level addr
	; a2 --- Sprite sheet addr
	; a3 --- Animation addr
	
	; Base functionality
	jsr    AnimObjInit
	
	; Add to count
	addq.w #0x1, EntityCount_VFX

	; Set update and render routines
	move.l #VfxUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)

	PUSHM  a0-a3
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	POPM   a0-a3

	; Set width/height
	move.w SpriteSheet_WidthHeightTiles(a2), d0
	move.w d0, d1
	lsr.w  #0x8, d0
	andi.l #0xFF, d0
	andi.l #0xFF, d1
	TILES2PIXELS d0
	TILES2PIXELS d1
	move.w d0, Entity_Width(a0)
	move.w d1, Entity_Height(a0)

	; Alloc VRAM
	move.w SpriteSheet_SizeTiles(a2), d0
	TILES2BYTES d0
	PUSHM  a0-a3
	jsr    VRAM_PoolAlloc
	POPM   a0-a3

	; Load sprite
	PUSHM  a0-a3
	move.l SpriteSheet_TileDataAddr(a2), a1
	move.l SpriteSheet_SubspriteOffsetArrAddr(a2), a3
	move.w SpriteSheet_SizeTiles(a2), d1
	move.b SpriteSheet_SizeSubsprites(a2), d2
	move.b SpriteSheet_PaletteId(a2), d4
	move.b SpriteSheet_Priority(a2), d5
	move.l SpriteSheet_DimensionsArrAddr(a2), a2
	jsr    SpriteObjLoad
	POPM   a0-a3

	; Copy animation
	PUSHM  a0-a3
	lea    VfxObj_Animation(a0), a0
	move.l #Animation_Struct_Size/size_long, d0
	MEMCPYL a0, a3, d0
	POPM   a0-a3

	rts

VfxPlay:
	; a0 --- VFX address
	; a1 --- Level addr
	; d0 (l) X pos
	; d1 (l) Y pos

	PUSHL  a1

	; If not already playing
	tst.b AnimObj_Playing(a0)
	bne   @Playing

	; Set position
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)

	; Set animation
	lea    VfxObj_Animation(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation

	; Begin updating and rendering
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)

	@Playing:

	POPL   a1

	rts

VfxStop:

	; Stop updating and rendering
	move.b #0x0, AnimObj_UpdateOutOfView(a0)
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Reset anim frame
	move.b #0x0, AnimObj_Playing(a0)
	move.l #0x0, AnimObj_AnimSubframe(a0)

	; Reset draw offset
	move.w #0x0, SpriteObj_DrawOffsetX(a0)
	move.w #0x0, SpriteObj_DrawOffsetY(a0)

	rts

VfxUpdate:
	; a0 --- VFX address
	; a1 --- Level addr

	; If animation finished
	tst.b AnimObj_Playing(a0)
	bne   @Playing

	; Stop updating and rendering
	move.b #0x0, AnimObj_UpdateOutOfView(a0)
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Bail
	bra    @End

	@Playing:

	; Base functionality
	jsr   AnimObjUpdate

	@End:
	
	rts
	