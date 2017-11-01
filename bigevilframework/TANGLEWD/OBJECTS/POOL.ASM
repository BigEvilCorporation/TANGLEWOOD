;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   pool.asm - A raising/lowering water pool
;==============================================================

; Constants
Pool_Width				equ 0x140
Pool_Height				equ 0x60
Pool_SpriteWidth		equ 0x20
Pool_SpriteHeight		equ 0x20
Pool_MinWaterHeight		equ 0x18
Pool_DefaultWaterSpeed	equ 0x01

	rsset (AnimObj_Struct_Size)
;-----------------------------
Pool_Animation			rs.b Animation_Struct_Size
Pool_Platform			rs.b Platform_Struct_Size
Pool_OnFinished			rs.l 1	; On finished raising/lowering callback
Pool_OnFinishedData		rs.l 1	; Callback userdata (a0)
Pool_WaterHeight		rs.w 1
Pool_WaterSpeed			rs.w 1
Pool_FilledTileVRAM		rs.w 1	; VRAM address of the "filled" tile
Pool_PrevScrollX		rs.w 1
Pool_PrevScrollY		rs.w 1
Pool_DirtyMap			rs.b 1
;-----------------------------
Pool_Struct_Pad			rs.b 3
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
	move.l #0x0, Pool_OnFinished(a0)
	move.b #0x0, Pool_DirtyMap(a0)
	move.w #0x0, Pool_FilledTileVRAM(a0)
	move.w #0x0, Pool_PrevScrollX(a0)
	move.w #0x0, Pool_PrevScrollY(a0)

	; Invisible according to sprite engine (manually drawn)
	move.b #0x0, SpriteObj_Visible(a0)

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
	SPRITE_LOAD_DEFAULT pool,PaletteId_World0,0x0

	; Load animation
	ANIM_LOAD_DEFAULT Pool_filling,Pool_filling,Pool_Animation,0,1,0,0

	; Set animation (stopped)
	PUSHL  a1
	lea    Pool_Animation(a0), a1
	move.w #(Pool_DefaultWaterSpeed<<8), Animation_Speed(a1)
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	move.b #0x0, AnimObj_Playing(a0)
	POPL   a1

	; Set water anim at top
	move.l #(spriteanim_pool_filling_numframes-1)<<8, AnimObj_AnimSubFrame(a0)

	; Set dirty
	move.b #0x1, AnimObj_UploadFrame(a0)

	; Set VRAM map dirty
	move.b #0x1, Pool_DirtyMap(a0)

	; Alloc VRAM for filled tile
	move.w #size_tile_b, d0
	jsr    VRAM_PoolAlloc
	move.w d0, Pool_FilledTileVRAM(a0)

	; Load filled tile
	PUSHL  a0
	lea    spritesheet_pool_filled, a0
	moveq  #0x1, d1
	jsr    VDP_LoadTilesDMA
	POPL   a0

	rts

PoolUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality (lie about visibility, we'll draw ourself)
	move.b #0x1, SpriteObj_SpriteLinked(a0)
	jsr    AnimObjUpdate

	; If anim advanced, set map dirty
	move.b AnimObj_UploadFrame(a0), d0
	or.b   d0, Pool_DirtyMap(a0)

	; If scroll changed tile, set dirty
	move.w WorldScrollX, d0
	move.w WorldScrollY, d1
	lsr.w  #0x3, d0
	lsr.w  #0x3, d1
	cmp.w  Pool_PrevScrollX(a0), d0
	bne    @ScrollChanged
	cmp.w  Pool_PrevScrollY(a0), d1
	bne    @ScrollChanged
	bra    @ScrollNoChange
	@ScrollChanged:
	move.b #0x1, Pool_DirtyMap(a0)
	move.w d0, Pool_PrevScrollX(a0)
	move.w d1, Pool_PrevScrollY(a0)
	@ScrollNoChange:

	; Apply water speed
	clr.l  d0
	move.w Pool_WaterSpeed(a0), d0
	tst.w  d0
	beq    @NotMoving
	move.w Pool_WaterHeight(a0), d1
	add.w  d0, d1

	; Clamp
	CLAMPW d1, #Pool_MinWaterHeight, #Pool_Height
	move.w d1, Pool_WaterHeight(a0)

	; If hit top/bottom, stop
	cmp.w  #Pool_MinWaterHeight, d1
	beq    @ReachedLimit
	cmp.w  #Pool_Height, d1
	beq    @ReachedLimit
	bra    @EndLimit

	@ReachedLimit:

	; Stop moving
	move.w #0x0, Pool_WaterSpeed(a0)

	; Stop animation
	; TODO: Start idle pool top anim
	move.b #0x0, AnimObj_Playing(a0)

	; Set water anim at top
	move.l #(spriteanim_pool_filling_numframes-1)<<8, AnimObj_AnimSubFrame(a0)

	; Set dirty
	move.b #0x1, AnimObj_UploadFrame(a0)

	; Fire callback
	move.l Pool_OnFinished(a0), a2
	cmp.l  #0x0, a2
	beq    @EndLimit
	PUSHL  a0
	move.l Pool_OnFinishedData(a0), a0
	jsr    (a2)
	POPL   a0

	@EndLimit:
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

	; Update animation
	jsr    AnimObjDraw

	; Check dirty
	tst.b  Pool_DirtyMap(a0)
	beq    @NotDirty

	;==============================================================
	; Check visibility
	
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
	
	;==============================================================
	; Pool visible

	; Position to map space
	clr.l  d1
	move.w Entity_WorldPosX(a0), d1				; X pos
	sub.w  #vdp_sprite_border_x, d1				; To plane space
	PIXELS2TILES d1								; Pixels to tiles
	divu   #vdp_plane_width, d1					; To scroll space
												; Keep remainder in upper word
	clr.l  d2
	move.w Entity_WorldPosY(a0), d2				; Y pos
	addi.w #Pool_Height, d2						; Sub water height
	sub.w  Pool_WaterHeight(a0), d2
	sub.w  #vdp_sprite_border_y, d2				; To plane space
	PIXELS2TILES d2								; Pixels to tiles
	divu   #vdp_plane_height, d2				; To scroll space
	swap   d2									; Remainder
	move.w d2, d1

	; Get tile ID
	move.w SpriteObj_TileID(a0), d0

	; Set palette
	move.b #PaletteId_World0, d2

	; Draw animated pool top to map
	PUSHL  d1
	move.w #(Pool_Width/8)-1, d6
	@TopLp:

	; Draw tile to map
	PUSHM  d0-d2/d6
	jsr    VDP_SetCellPlaneA
	POPM   d0-d2/d6

	; Advance pos
	swap   d1
	addq.w #0x1, d1

	; If crossed scroll boundary, wrap back to 0
	cmp.w  #vdp_plane_width, d1
	bne    @WithinPlane
	move.w #0x0, d1
	@WithinPlane:
	swap   d1

	dbra   d6, @TopLp
	POPL   d1

	;==============================================================

	; Draw filled body to map
	addi.w #0x1, d1				; Start at next row down
	
	; Up to water height
	move.w Pool_WaterHeight(a0), d5
	lsr.w  #0x3, d5
	subq.w #0x2, d5				; -1 for top layer, -1 for count
	ble    @ZeroLevel

	; Get tile ID
	move.w Pool_FilledTileVRAM(a0), d0
	BYTES2TILES d0

	; Set palette
	move.b #PaletteId_World0, d2

	; Backup X
	move.l d1, d4
	swap   d4

	move.w #(Pool_Width/8)-1, d6
	@FillLpX:
	@FillLpY:

	; Draw tile to map
	PUSHM  d0-d5/d6
	jsr    VDP_SetCellPlaneA
	POPM   d0-d5/d6

	; Advance pos
	swap   d1
	addq.w #0x1, d1

	; If crossed scroll boundary, wrap back to 0
	cmp.w  #vdp_plane_width, d1
	bne    @WithinPlaneX
	move.w #0x0, d1
	@WithinPlaneX:
	swap   d1

	dbra   d6, @FillLpX

	; Reset X pos
	swap   d1
	move.w d4, d1
	swap   d1
	
	; Reset X count
	move.w #(Pool_Width/8)-1, d6

	; Advance Y
	addq.w #0x1, d1

	; If crossed scroll boundary, wrap back to 0
	cmp.w  #vdp_plane_height, d1
	bne    @WithinPlaneY
	move.w #0x0, d1
	@WithinPlaneY:

	dbra   d5, @FillLpY

	@ZeroLevel:

	;==============================================================

	@NotDirty:
	@OutOfBounds:

	move.b #0x0, Pool_DirtyMap(a0)

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

	; Set water speed
	move.w  #Pool_DefaultWaterSpeed, Pool_WaterSpeed(a0)

	; Start animation (fowards)
	PUSHL  a1
	lea    Pool_Animation(a0), a1
	move.w #(Pool_DefaultWaterSpeed<<8), Animation_Speed(a1)
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	move.b #0x0, AnimObj_Reverse(a0)
	POPL   a1

	rts

Pool_Lower:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set water speed
	move.w  #-Pool_DefaultWaterSpeed, Pool_WaterSpeed(a0)

	; Start animation (reverse)
	PUSHL  a1
	lea    Pool_Animation(a0), a1
	move.w #-(Pool_DefaultWaterSpeed<<8), Animation_Speed(a1)
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	move.b #0x1, AnimObj_Reverse(a0)
	POPL   a1

	rts
