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
Raft_WallProbeLeft		equ 0x0000
Raft_WallProbeRight		equ Raft_Width
Rafy_WallProbeBottom	equ Raft_Height+0x08
Raft_PlatformOffsetX	equ 0x0000
Raft_PlatformOffsetY	equ 0x0005
Raft_SineAmplitude		equ 0x03
Raft_SineSpeed			equ 0x04

	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Raft_Platform			rs.b Platform_Struct_Size
;-----------------------------
Raft_Struct_Pad			rs.b 0
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
	move.l #RaftSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default properties
	move.w  #Raft_Width, Entity_Width(a0)
	move.w  #Raft_Height, Entity_Height(a0)
	move.w  #Raft_Decel, PhysicsObj_DecelX(a0)
	move.l  #0x0, PhysicsObj_MaxVelYUp(a0)
	move.l  Level_Gravity(a1), PhysicsObj_MaxVelYDown(a0)
	move.w  #Raft_WallProbeLeft, PhysicsObj_WallProbeLeft(a0)
	move.w  #Raft_WallProbeRight, PhysicsObj_WallProbeRight(a0)
	move.w  #Rafy_WallProbeBottom, PhysicsObj_WallProbeBottom(a0)
	move.b  #Raft_Mass, PhysicsObj_Mass(a0)
	move.b  #0x0, PhysicsObj_CollideCeilings(a0)
	move.b  #0x1, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)

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
	LIST_APPEND_TAIL PushableObjs, a0, a3

	rts

RaftLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT raft,PaletteId_World0,0x0

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
	addi.l #Raft_PlatformOffsetY*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l PhysicsObj_VelX(a0), Platform_VelX(a2)
	move.l PhysicsObj_VelY(a0), Platform_VelY(a2)

	rts

RaftSerialise:
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