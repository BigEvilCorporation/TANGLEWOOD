;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   raft.asm - Buoyant raft
;==============================================================

; Constants
Raft_Width				equ 0x50
Raft_Height				equ 0x08
Raft_Mass				equ 0x08
Raft_Decel				equ 0x00000400
Raft_WallBoundsLeft		equ 0x0000
Raft_WallBoundsRight		equ Raft_Width
Raft_WallProbeBottom	equ Raft_Height+0x08
Raft_ProbeWallX			equ (Raft_Width/2)-8	; Distance from centre to start wall search
Raft_PlatformOffsetX	equ 0x0000
Raft_PlatformOffsetY	equ 0x0000
Raft_FloatOffsetY		equ 0x4
Raft_SineAmplitude		equ 0x03
Raft_SineSpeed			equ 0x04

	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Raft_Platform			rs.b Platform_Struct_Size
;-----------------------------
	RS_ALIGN
Raft_struct_Size		rs.b 0
;-----------------------------

RaftInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr PhysicsObjInit
	
	; Count
	addq.w #0x1, EntityCount_Raft
	
	; Set update and render routines
	move.l #RaftUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #EntitySerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr EntityAddToUpdateList
	;jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default properties
	move.w  #Raft_Width, Entity_Width(a0)
	move.w  #Raft_Height, Entity_Height(a0)
	MOVE_NTSC_ACCEL_W Raft_Decel, PhysicsObj_DecelX(a0), d0
	move.l  #0x0, PhysicsObj_MaxVelYUp(a0)
	MOVE_NTSC_L DefaultGravity, PhysicsObj_MaxVelYDown(a0), d0
	move.w  #Raft_WallBoundsLeft, PhysicsObj_WallBoundsLeft(a0)
	move.w  #Raft_WallBoundsRight, PhysicsObj_WallBoundsRight(a0)
	move.w  #Raft_WallProbeBottom, PhysicsObj_WallProbeBottom(a0)
	move.w  #Raft_ProbeWallX, PhysicsObj_WallProbeCentreX(a0)
	move.b  #Raft_Mass, PhysicsObj_Mass(a0)
	move.b  #0x0, PhysicsObj_CollideCeilings(a0)
	move.b  #0x1, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	;move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x1, PhysicsObj_Buoyant(a0)
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)

	; Offset draw pos by float height
	; TODO: animate this
	move.w  #Raft_FloatOffsetY, SpriteObj_DrawOffsetY(a0)

	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Setup platform
	lea    Raft_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.l a0, Platform_Owner(a2)
	move.w #Raft_Width, Platform_Width(a2)
	move.b #PlatformType_Sliding, Platform_Type(a2)
	LIST_APPEND_TAIL Platforms, a2, a3

	; Register as pushable object
	;LIST_APPEND_TAIL PushableObjs, a0, a3

	rts

RaftLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT raft,float,0,PaletteId_World0,0x0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	rts

RaftUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    PhysicsObjUpdate

	; Reposition platform
	lea    Raft_Platform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #Raft_PlatformOffsetX*subpixels_per_pixel, d0
	addi.l #(Raft_PlatformOffsetY+Raft_FloatOffsetY)*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	
	clr.l  d2
	move.b AnimObj_SpeedDiv(a0), d2
	move.l PhysicsObj_VelX(a0), d3
	move.l PhysicsObj_VelY(a0), d4
	DIVS1616_LOSSY d2, d3
	DIVS1616_LOSSY d2, d4
	move.l d3, Platform_VelX(a2)
	move.l d4, Platform_VelY(a2)

	rts
