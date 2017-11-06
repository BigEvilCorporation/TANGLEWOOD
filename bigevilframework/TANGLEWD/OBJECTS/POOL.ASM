;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   pool.asm - A raising/lowering water pool
;==============================================================

; Constants
Pool_Width				equ 0x140
Pool_Height				equ 0x58
Pool_SpriteWidth		equ 0x20
Pool_SpriteHeight		equ 0x20
Pool_MinWaterHeight		equ 0x18
Pool_DefaultWaterSpeed	equ 0x01

	rsset (AnimObj_Struct_Size)
;-----------------------------
Pool_Animation			rs.b Animation_Struct_Size
Pool_MapLineSurface		rs.w (Pool_Width/8)*size_word
Pool_MapLineBody		rs.w (Pool_Width/8)*size_word
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
	SPRITE_LOAD_DEFAULT pool,filling,PaletteId_World0,0x0

	; Load animation
	ANIM_LOAD_DEFAULT Pool,filling,filling,Pool_Animation,0,1,0,0

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
	move.l #(actor_pool_sheet_filling_anim_filling_numframes-1)<<8, AnimObj_AnimSubFrame(a0)

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

	; Create surface and body DMA lines
	move.w #(PaletteId_World0<<13), d0	; Palette ID to bits 14-13
	move.w #(PaletteId_World0<<13), d1	; Palette ID to bits 14-13
	or.w   SpriteObj_TileID(a0), d0		; OR in the tile ID
	move.w Pool_FilledTileVRAM(a0), d2	; Filled tile addr to tile ID
	BYTES2TILES d2
	or.w   d2, d1						; OR in the tile ID

	lea    Pool_MapLineSurface(a0), a2
	lea    Pool_MapLineBody(a0), a3
	move.w #(Pool_Width/8)-1, d6
	@CellLp:
	move.w d0, (a2)+
	move.w d1, (a3)+
	dbra   d6, @CellLp

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
	move.l #(actor_pool_sheet_filling_anim_filling_numframes-1)<<8, AnimObj_AnimSubFrame(a0)

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

	; Check visibility
	jsr    SpriteObjCheckBounds
	tst.b  d0
	beq    @OutOfBounds

	;==============================================================
	; Pool visible

	; Get X pos as tiles
	clr.l  d0
	move.w Entity_WorldPosX(a0), d0
	sub.w  #vdp_sprite_border_x, d0
	PIXELS2TILES d0

	; Get draw width as tiles
	move.w #(Pool_Width/8), d2

	; Clamp to screen left
	move.w WorldScrollX, d3
	PIXELS2TILES d3
	cmp.w  d0, d3
	ble    @NoClampLeft
	move.w d3, d4								; Truncate width
	sub.w  d0, d4
	sub.w  d4, d2
	move.w d3, d0								; Clamp X
	@NoClampLeft:

	; Clamp to screen right
	move.w d0, d4								; X
	sub.w  d3, d4								; - scroll
	move.w d4, d5								; Backup
	add.w  d2, d4								; + width
	cmp.w  #(screen_width/8), d4
	ble    @NoClampRight
	move.w #(screen_width/8), d4				; Clamp width
	sub.w  d5, d4
	move.w d4, d2
	@NoClampRight:
	
	; Bail if on far right edge
	tst.w  d2
	beq    @EndSurfaceDMA

	; To scroll space
	divu   #vdp_plane_width, d0
	swap   d0

	; Get draw height as tiles
	move.w Pool_WaterHeight(a0), d3
	PIXELS2TILES d3
	tst.w  d3
	beq    @NoBody
	subq.w #0x1, d3								; - surface line
	@NoBody:

	; Get Y pos as tiles
	clr.l  d1
	move.w Entity_WorldPosY(a0), d1				; Y pos
	addi.w #Pool_Height, d1						; Sub water height
	sub.w  Pool_WaterHeight(a0), d1
	sub.w  #vdp_sprite_border_y, d1				; To plane space
	PIXELS2TILES d1								; Pixels to tiles

	; Clamp to screen top border
	move.w WorldScrollY, d4
	PIXELS2TILES d4
	cmp.w  d1, d4
	ble    @NoClampTop
	move.w d4, d6								; Truncate height
	sub.w  d1, d6
	sub.w  d6, d3
	move.w d4, d1								; Clamp Y
	@NoClampTop:

	; Clamp to screen bottom border
	move.w d1, d6								; Y
	sub.w  d4, d6								; - scroll
	move.w d6, d7								; Backup
	add.w  d3, d6								; + height
	cmp.w  #(screen_height/8), d6
	ble    @NoClampBottom
	move.w #(screen_height/8), d6				; Clamp height
	sub.w  d7, d6
	move.w d6, d3
	tst.w  d3
	bge    @NoClampBottom
	move.w #0x0, d3
	@Test:
	@NoClampBottom:

	divu   #vdp_plane_height, d1				; To scroll space
	swap   d1									; Remainder to lower word

	; If overflows off end of plane, split into two DMAs
	move.w d0, d6					; Get X pos
	add.w  d2, d6					; Add width
	cmp.w  #vdp_plane_width, d6		; If crosses plane bounds
	bgt    @Overflow

	; DMA the surface line
	PUSHM  d0-d3/a0
	lea    Pool_MapLineSurface(a0), a0
	jsr    PoolDMALine
	POPM   d0-d3/a0

	; DMA the body lines
	tst.w  d3
	beq    @EndSurfaceDMA

	PUSHL  a0
	addq.w #0x1, d1	; +1 for surface line
	subq.w #0x1, d3	; -1 for loop count
	lea    Pool_MapLineBody(a0), a0
	@BodyLineLp:
	PUSHM  d0-d3
	jsr    PoolDMALine
	POPM   d0-d3
	addq.w #0x1, d1	; +1 Y
	dbra   d3, @BodyLineLp
	POPL   a0

	bra    @EndSurfaceDMA

	@Overflow:

	; Clamp size and DMA first half of surface line
	move.w d2, d7					; Backup original width
	move.w #vdp_plane_width, d6		; Truncate width
	sub.w  d0, d6
	move.w d6, d2
	PUSHM  d0-d3/d7/a0				; Backup x/y/width/height/original width
	lea    Pool_MapLineSurface(a0), a0
	jsr    PoolDMALine
	POPM   d0-d3/d7/a0
	
	; DMA first half of body lines
	tst.w  d3
	beq    @NoSplitBodyLeft
	PUSHM  d0-d3/d7/a0
	addq.w #0x1, d1	; +1 for surface line
	subq.w #0x1, d3	; -1 for loop count
	lea    Pool_MapLineBody(a0), a0
	@BodyLineLeftLp:
	PUSHM  d0-d3
	jsr    PoolDMALine
	POPM   d0-d3
	addq.w #0x1, d1	; +1 Y
	dbra   d3, @BodyLineLeftLp
	POPM   d0-d3/d7/a0
	@NoSplitBodyLeft:

	; DMA second half of surface line
	sub.w  d2, d7					; Original width - drawn width
	move.w d7, d2
	move.w #0x0, d0					; Start from 0
	PUSHM  d0-d3/a0					; Backup x/y/width/height
	lea    Pool_MapLineSurface(a0), a0
	jsr    PoolDMALine
	POPM   d0-d3/a0
	
	; DMA second half of body lines
	tst.w  d3
	beq    @NoSplitBodyRight
	PUSHM  a0
	addq.w #0x1, d1	; +1 for surface line
	subq.w #0x1, d3	; -1 for loop count
	lea    Pool_MapLineBody(a0), a0
	@BodyLineRightLp:
	PUSHM  d0-d3
	jsr    PoolDMALine
	POPM   d0-d3
	addq.w #0x1, d1	; +1 Y
	dbra   d3, @BodyLineRightLp
	POPM   a0
	@NoSplitBodyRight:

	@EndSurfaceDMA:

	;==============================================================

	move.b #0x0, Pool_DirtyMap(a0)
	
	rts
	
	PUSHL  a0

	; Draw filled body to map
	addq.w #0x1, d1				; Start at next row down
	
	; Up to water height
	move.w Pool_WaterHeight(a0), d6
	lsr.w  #0x3, d6
	subq.w #0x2, d6				; -1 for top layer, -1 for count
	ble    @ZeroLevel
	
	; Get body DMA line
	lea    Pool_MapLineBody(a0), a0
	
	@FillLpY:

	; Backup X, Y, size
	PUSHM  d0-d2

	; DMA the body line
	jsr    PoolDMALine

	; TODO: Second line

	@NextBodyLine:
	
	; Restore X, Y, size, DMA line
	POPM   d0-d2

	; Advance Y
	addq.w #0x1, d1

	dbra   d6, @FillLpY
	
	POPL   a0

	@ZeroLevel:

	;==============================================================

	@NotDirty:
	@OutOfBounds:

	move.b #0x0, Pool_DirtyMap(a0)

	rts

PoolDMALine:
	; a0 --- DMA line
	; d0 (w) X pos
	; d1 (w) Y pos
	; d2 (b) Num tiles

	lsl.w  #0x6, d1								; Multiply Y by line width to get Y offset
	add.w  d1, d0								; Add X
	lsl.w  #0x1, d0								; To words

	; To plane A map area
	addi.l  #vram_addr_plane_a, d0

	move.w d2, d1
	move.l a0, d2
	jsr    VDP_DMAQueue_AddToQueue

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
