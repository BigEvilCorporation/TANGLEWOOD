;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   stone.asm - Small pushable stone - stops boulders rolling
;==============================================================

; Constants
Stone_MaxEntities		equ 0x8
Stone_Width				equ 0x10
Stone_Height			equ 0x10
Stone_MaxVelYUp			equ 0x060000
Stone_MaxVelYDown		equ 0x080000
Stone_StepHeight		equ 0x4
Stone_ProbeFloorX		equ (Stone_Width/2)		; Floor detection probe position X
Stone_ProbeFloorY		equ (Stone_Height-8)	; Floor detection probe position X
Stone_MaxVelX			equ 0x080000
Stone_Decel				equ 0x000800

Stone_AnimSpeedVelDiv	equ 0x0008

Stone_HitGroundSFXVel	equ 0x0500	; Min downward velocity to play thud SFX

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
Stone_Barrier      rs.b Barrier_Struct_Size ; Moving barrier attached to stone
;--------------------------
Stone_Struct_Pad   rs.b 0   ; Alignment padding
Stone_Struct_Size  rs.b 0
;--------------------------

;==============================================================

StoneInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	; ori.l  #entity_type_stone, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Stone
	
	; Set update and render routines
	move.l #StoneUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #StoneSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	;jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Stone_Width, Entity_Width(a0)
	move.w  #Stone_Height, Entity_Height(a0)
	move.l  #Stone_MaxVelX, PhysicsObj_MaxVelFloorX(a0)
	move.w  #Stone_Decel, PhysicsObj_DecelX(a0)
	move.w  #Stone_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Stone_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Stone_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.l  #Stone_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Stone_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x1, PhysicsObj_CanBePulled(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Register as pushable object
	; LIST_APPEND_TAIL PushableObjs, a0, a3

	;==============================================================
	
	; Setup barrier
	move.l a0, a2
	add.l  #Stone_Barrier, a2
	
	move.w #Stone_Width, Barrier_Width(a2)
	move.w #Stone_Height, Barrier_Height(a2)
	
	; Add to physics barriers list
	LIST_APPEND_TAIL Barriers, a2, a3
	
	;==============================================================
	
	;; Setup animations
	;; TODO: Export Animation structs from editor, use LOAD_ANIMATION macro
	;move.l a0, a2
	;add.l  #Stone_Animations, a2
	;
	;; Roll
	;move.l a2, a3
	;add.l  #(Animation_Struct_Size*StoneAnimIdx_Roll), a3
	;move.w #spritesheet_Stone_roll_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_Stone_roll_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_Stone_roll_speed, Animation_Speed(a3)
	;move.b #spriteanim_Stone_roll_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	;
	;; Start roll animation
	;PUSHL  a1
	;move.l a2, a1
	;add.l  #(Animation_Struct_Size*StoneAnimIdx_Roll), a1
	;jsr    AnimObjSetAnimation
	;POPL   a1

	rts

StoneLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_DEFAULT stone,PaletteId_World0,0x0

	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	; Reposition barrier
	move.l a0, a2
	add.l  #Stone_Barrier, a2
	move.l Entity_WorldPosX(a0), Barrier_PosX(a2)
	move.l Entity_WorldPosY(a0), Barrier_PosY(a2)

	rts

StoneUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    PhysicsObjUpdate

	; Reposition barrier
	move.l a0, a2
	add.l  #Stone_Barrier, a2
	move.l Entity_WorldPosX(a0), Barrier_PosX(a2)
	move.l Entity_WorldPosY(a0), Barrier_PosY(a2)
	
	; Set barrier velocity
	move.l PhysicsObj_VelX(a0), Barrier_VelX(a2)
	move.l PhysicsObj_VelY(a0), Barrier_VelY(a2)

	rts
	
StoneSerialise:
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
