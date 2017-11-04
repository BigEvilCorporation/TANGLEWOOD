;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Longboat.asm - Buoyant Longboat
;==============================================================

; Constants
Longboat_Width				equ 0xA0
Longboat_Height				equ 0x08
Longboat_SegmentWidth		equ 0x20
Longboat_NumSegments		equ (Longboat_Width/Longboat_SegmentWidth)
Longboat_Mass				equ 0x08
Longboat_Decel				equ 0x00000400
Longboat_WallProbeLeft		equ 0x0000
Longboat_WallProbeRight		equ Longboat_Width
Longboat_WallProbeBottom	equ Longboat_Height+0x08
Longboat_StepHeight			equ 0x4
Longboat_FloorProbeX		equ (Longboat_Width/2)
Longboat_FloorProbeY		equ (Longboat_Height-4)
Longboat_MaxVelX			equ 0x0000A000
Longboat_PlatformOffsetX	equ 0x0000
Longboat_PlatformOffsetY	equ 0x0000
Longboat_SineAmplitude		equ 0x03
Longboat_SineSpeed			equ 0x04
Longboat_FloatOffsetY		equ 0x3

; Tilt heights per segment
Longboat_TiltHeights:
	dc.w -2,-1,0,1,2

; Accelerations per segment
Longboat_Accelerations:
	dc.w -1600,-800,0,800,1600

	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Longboat_Platforms			rs.b Platform_Struct_Size*Longboat_NumSegments
Longboat_YOffsets			rs.w Longboat_NumSegments
Longboat_Tilt				rs.w 1
Longboat_Visible			rs.b 1
;-----------------------------
Longboat_Struct_Pad			rs.b 1
Longboat_struct_Size		rs.b 0
;-----------------------------

LongboatInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr PhysicsObjInit
	
	; Count
	addq.w #0x1, EntityCount_Longboat
	
	; Set update and render routines
	move.l #LongboatUpdate, Entity_UpdateRoutine(a0)
	move.l #LongboatDraw, Entity_RenderRoutine(a0)
	move.l #LongboatSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default properties
	move.w  #Longboat_Width, Entity_Width(a0)
	move.w  #Longboat_Height, Entity_Height(a0)
	move.w  #Longboat_Decel, PhysicsObj_DecelX(a0)
	move.l  #Longboat_MaxVelX, PhysicsObj_MaxVelFloorX(a0)
	move.l  #Longboat_MaxVelX, PhysicsObj_MaxVelAirX(a0)
	move.l  #0x0, PhysicsObj_MaxVelYUp(a0)
	move.l  Level_Gravity(a1), PhysicsObj_MaxVelYDown(a0)
	move.w  #Longboat_FloorProbeX, PhysicsObj_FloorProbeX(a0)
	move.w  #Longboat_FloorProbeY, PhysicsObj_FloorProbeY(a0)
	move.w  #Longboat_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Longboat_WallProbeLeft, PhysicsObj_WallProbeLeft(a0)
	move.w  #Longboat_WallProbeRight, PhysicsObj_WallProbeRight(a0)
	move.w  #Longboat_WallProbeBottom, PhysicsObj_WallProbeBottom(a0)
	move.b  #Longboat_Mass, PhysicsObj_Mass(a0)
	move.b  #0x0, PhysicsObj_CollideCeilings(a0)
	move.b  #0x1, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	move.b  #0x1, PhysicsObj_Buoyant(a0)
	move.b  #0x0, AnimObj_UpdateOutOfView(a0)
	move.w  #0x0, Longboat_Tilt(a0)
	move.b  #0x0, Longboat_Visible(a0)

	; Offset draw pos by float height
	; TODO: animate this
	move.w  #Longboat_FloatOffsetY, SpriteObj_DrawOffsetY(a0)

	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Setup platforms
	move.w #Longboat_NumSegments-1, d6
	lea    Longboat_Platforms(a0), a2
	@SegmentLp:
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.l a0, Platform_Owner(a2)
	move.w #Longboat_SegmentWidth, Platform_Width(a2)
	move.b #PlatformType_Sliding, Platform_Type(a2)
	LIST_APPEND_TAIL Platforms, a2, a3
	lea    Platform_Struct_Size(a2), a2
	dbra   d6, @SegmentLp

	rts

LongboatLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT Longboat,PaletteId_World0,0x0

	; Position all segments
	jsr    LongboatUpdateSegments

	rts

LongboatUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    PhysicsObjUpdate

	; If ivisble
	tst.b  Longboat_Visible(a0)
	beq    @Invisible

	; Update segment positions/acceleration
	jsr    LongboatUpdateSegments
	bra    @Visible

	@Invisible:

	; else clear platform velocities
	lea    Longboat_Platforms(a0), a3
	move.w #Longboat_NumSegments-1, d6
	@SegmentLp:
	move.l #0x0, Platform_VelX(a3)
	move.l #0x0, Platform_VelY(a3)
	lea    Platform_Struct_Size(a3), a3
	dbra   d6, @SegmentLp

	@Visible:

	rts

LongboatDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Reset visibility
	move.b #0x0, Longboat_Visible(a0)

	; Get pos
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d1

	PUSHM  d0-d1

	; Get Y position array
	lea    Longboat_YOffsets(a0), a2

	; For all segments
	move.w #Longboat_NumSegments-1, d6
	@SpriteLp:

	; Next Y
	move.w (a2)+, d1

	; Apply pos
	move.w d0, Entity_WorldPosX(a0)
	move.w d1, Entity_WorldPosY(a0)

	; Draw segment
	PUSHM  d0-d2/d6
	jsr    SpriteObjDraw
	POPM   d0-d2/d6

	; Next X
	addi.w #Longboat_SegmentWidth, d0

	; Update visibility
	move.b SpriteObj_SpriteLinked(a0), d5
	or.b   d5, Longboat_Visible(a0)

	dbra   d6, @SpriteLp

	POPM   d0-d1

	move.w d0, Entity_WorldPosX(a0)
	move.w d1, Entity_WorldPosY(a0)

	rts

LongboatSerialise:
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

LongboatUpdateSegments:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Reset acceleration
	move.w #0x0, PhysicsObj_AccelX(a0)

	; Get pos
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d1

	; Get current tilt
	move.w Longboat_Tilt(a0), d2

	; Reset current tilt
	move.w #0x0, Longboat_Tilt(a0)

	; Update out of view if occupied
	move.b #0x0, AnimObj_UpdateOutOfView(a0)

	; Pivot boat according to current tilt
	clr.l  d3
	move.w d2, d3
	mulu   #Longboat_NumSegments, d3
	asr.w  #0x1, d3
	sub.w  d3, d1

	; Get Y position array
	lea    Longboat_YOffsets(a0), a2

	; Get platform array
	lea    Longboat_Platforms(a0), a3

	; Get tilt height array
	lea    Longboat_TiltHeights, a4

	; Get acceleration array
	lea    Longboat_Accelerations, a5

	; For all segments
	move.w #Longboat_NumSegments-1, d6
	@SegmentLp:

	; Get tilt height for segment
	move.w (a4)+, d4

	; Get acceleration for segment
	move.w (a5)+, d5

	; Store segment Y pos for rendering
	move.w d1, (a2)+

	; Reposition platform
	move.w d1, d3
	addi.w #(Longboat_PlatformOffsetY+Longboat_FloatOffsetY), d3
	move.w d0, Platform_PosX(a3)
	move.w d3, Platform_PosY(a3)
	move.l PhysicsObj_VelX(a0), Platform_VelX(a3)
	move.l PhysicsObj_VelY(a0), Platform_VelY(a3)

	; If platform occupied, apply tile and sail acceleration
	tst.b  Platform_Occupied(a3)
	beq    @Unoccupied
	add.w  d4, Longboat_Tilt(a0)
	add.w  d5, PhysicsObj_AccelX(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	@Unoccupied:

	; Next X
	addi.w #Longboat_SegmentWidth, d0

	; Next Y
	add.w  d2, d1

	; Next platform
	lea    Platform_Struct_Size(a3), a3

	dbra   d6, @SegmentLp

	rts