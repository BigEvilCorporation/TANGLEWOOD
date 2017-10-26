;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   pool.asm - A raising/lowering water pool
;==============================================================

; Constants
Pool_Width				equ 0xA0
Pool_Height				equ 0x60
Pool_SpriteWidth		equ 0x20
Pool_SpriteHeight		equ 0x20
Pool_MinWaterHeight		equ 0x18
Pool_DefaultWaterSpeed	equ 0x01

	rsset (AnimObj_Struct_Size)
;-----------------------------
Pool_Animation			rs.b Animation_Struct_Size
Pool_Platform			rs.b Platform_Struct_Size
Pool_WaterHeight		rs.w 1
Pool_WaterSpeed			rs.w 1
;-----------------------------
Pool_Struct_Pad			rs.b 0
Pool_struct_Size		rs.b 0
;-----------------------------

PoolInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr AnimObjInit
	
	; Count
	addq.w #0x1, EntityCount_Pool
	
	; Set update and render routines
	move.l #PoolUpdate, Entity_UpdateRoutine(a0)
	move.l #PoolDraw, Entity_RenderRoutine(a0)
	move.l #PoolSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default properties
	move.w #Pool_Width, Entity_Width(a0)
	move.w #Pool_Height, Entity_Height(a0)
	move.w #Pool_Height, Pool_WaterHeight(a0)
	move.w #0x0, Pool_WaterSpeed(a0)

	; Setup platform
	lea    Pool_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.l a0, Platform_Owner(a2)
	move.w #Pool_Width, Platform_Width(a2)
	move.w #col_tile_flag_water, Platform_TerrainFlags(a2)
	LIST_APPEND_TAIL Platforms, a2, a3

	rts

PoolLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED pool,PaletteId_World0,0x0

	; Load animation
	;ANIM_LOAD_DEFAULT Pool_raise,Pool_raise,Pool_Animation,0,0,0,0

	rts

PoolUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    AnimObjUpdate

	; Apply water speed
	clr.l  d0
	move.w Pool_WaterSpeed(a0), d0
	tst.w  d0
	beq    @NotMoving
	move.w Pool_WaterHeight(a0), d1
	add.w  d0, d1
	CLAMPW d1, #Pool_MinWaterHeight, #Pool_Height
	move.w d1, Pool_WaterHeight(a0)
	@NotMoving:

	; Reposition platform
	lea    Pool_Platform(a0), a2
	move.w Entity_WorldPosX(a0), Platform_PosX(a2)
	move.w Entity_WorldPosY(a0), d0
	addi.w #Pool_Height, d0
	sub.w  Pool_WaterHeight(a0), d0
	move.w d0, Platform_PosY(a2)
	move.w Pool_WaterSpeed(a0), d0
	TOSUBPIXELS d0
	move.l d0, Platform_VelY(a2)

	rts

PoolDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Backup pos
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d1

	;==============================================================

	; Get water height
	clr.l  d3
	move.w Pool_WaterHeight(a0), d3
	tst.w  d3
	beq    @PoolEmpty

	; Offset top
	move.w #Pool_Height, d4
	sub.w  d3, d4
	add.w  d4, Entity_WorldPosY(a0)

	; To sprites
	ROUNDW d3,#Pool_SpriteHeight
	divu.w #Pool_SpriteHeight, d3
	subq.w #0x1, d3

	;==============================================================

	; Loop Y sprite count
	@LoopY:

	; Loop X sprite count
	move.w #(Pool_Width/Pool_SpriteWidth)-1, d2
	@LoopX:

	; Draw
	PUSHM  d0-d3
	jsr    SpriteObjDraw
	POPM   d0-d3

	; If out of sprites, bail
	cmp.w  #vdp_max_sprites-1, next_sprite_index
	beq    @OutOfSprites
	
	; Next X
	addi.w #Pool_SpriteWidth, Entity_WorldPosX(a0)
	dbra   d2, @LoopX

	; Reset X
	move.w d0, Entity_WorldPosX(a0)

	; Next Y
	addi.w #Pool_SpriteHeight, Entity_WorldPosY(a0)
	dbra   d3, @LoopY

	;==============================================================

	@OutOfSprites:

	; Restore pos
	move.w d0, Entity_WorldPosX(a0)
	move.w d1, Entity_WorldPosY(a0)

	@PoolEmpty:

	rts

PoolSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEL Entity_WorldPosX(a0)
	SAVEL Entity_WorldPosY(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	
	;==============================================================
	
	@End:
	
	rts

Pool_SetRaised:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w  #Pool_Height, Pool_WaterHeight(a0)

	rts

Pool_SetLowered:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w  #Pool_MinWaterHeight, Pool_WaterHeight(a0)

	rts

Pool_Raise:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w  #Pool_DefaultWaterSpeed, Pool_WaterSpeed(a0)

	rts

Pool_Lower:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w  #-Pool_DefaultWaterSpeed, Pool_WaterSpeed(a0)

	rts
