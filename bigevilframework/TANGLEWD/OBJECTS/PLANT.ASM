;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   plant.asm - Bounce Plant - organic springboard
;==============================================================

; Constants
BouncePlant_MaxEntities	   equ 0x1
BouncePlant_Width		   equ 0x30
BouncePlant_Height		   equ 0x18

BouncePlant_MinLaunchVelocity equ 0x0800

;==============================================================

; Animations
BouncePlantAnimIdx_Idle    equ 0
BouncePlantAnimIdx_Active  equ 1
; ------------------------------
BouncePlantAnimIdx_Max     equ 2

;==============================================================

; Struct
	rsset (AnimObj_Struct_Size)
;--------------------------
BouncePlant_Animations   rs.b (Animation_Struct_Size*BouncePlantAnimIdx_Max)
BouncePlant_Active       rs.b 1
;--------------------------
BouncePlant_Struct_Pad   rs.b 3   ; Alignment padding
BouncePlant_Struct_Size  rs.b 0
;--------------------------

;==============================================================

BouncePlantInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    AnimObjInit
	
	; Set type
	;ori.l  #entity_type_BouncePlant, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Plants
	
	; Set update and render routines
	move.l #BouncePlantUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #BouncePlant_Width, Entity_Width(a0)
	move.w  #BouncePlant_Height, Entity_Height(a0)
	move.b  #0x0, BouncePlant_Active(a0)
	
	; Setup animation
	move.l a0, a3
	add.l  #BouncePlant_Animations, a3
	
	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*BouncePlantAnimIdx_Idle), a3
	move.w #spritesheet_plant_sheet_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_plant_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_plant_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_plant_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Active
	move.l a2, a3
	add.l  #(Animation_Struct_Size*BouncePlantAnimIdx_Active), a3
	move.w #spritesheet_plant_sheet_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_plant_active_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_plant_active_speed, Animation_Speed(a3)
	move.b #spriteanim_plant_active_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	
	; Start idle animation
	PUSHL  a1
	move.l a0, a1
	add.l  #BouncePlant_Animations, a1
	move.l #(BouncePlantAnimIdx_Idle*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1

	rts
	
BouncePlantUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If active
	cmp.b  #0x0, BouncePlant_Active(a0)
	beq    @Inactive

	; Wait for active anim to finish
	cmp.b  #0x0, AnimObj_Playing(a0)
	bne    @StillActive

	; Back to idle
	PUSHL  a1
	move.l a0, a1
	add.l  #BouncePlant_Animations, a1
	move.l #(BouncePlantAnimIdx_Idle*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1

	; Set as inactive
	move.b #0x0, BouncePlant_Active(a0)

	@Inactive:
	@StillActive:
	
	rts

BouncePlant_Activate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set as active
	move.b #0x1, BouncePlant_Active(a0)

	; Start active anim
	PUSHL  a1
	move.l a0, a1
	add.l  #BouncePlant_Animations, a1
	move.l #(BouncePlantAnimIdx_Active*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1

	rts
