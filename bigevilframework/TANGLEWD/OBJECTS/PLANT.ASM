;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   plant.asm - Bounce Plant - organic springboard
;==============================================================

; Constants
BouncePlant_MaxEntities	   equ 0x1
BouncePlant_Width		   equ 0x18
BouncePlant_Height		   equ 0x10

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
;--------------------------
BouncePlant_Struct_Pad   rs.b 0   ; Alignment padding
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
	
	; Setup animation
	move.l a0, a3
	add.l  #BouncePlant_Animations, a3
	
	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*BouncePlantAnimIdx_Idle), a3
	move.w #spritesheet_plant_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_plant_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_plant_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_plant_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Active
	move.l a2, a3
	add.l  #(Animation_Struct_Size*BouncePlantAnimIdx_Active), a3
	move.w #spritesheet_plant_active_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_plant_active_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_plant_active_speed, Animation_Speed(a3)
	move.b #spriteanim_plant_active_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	
	; Start idle animation
	PUSHL  a1
	move.l a2, a1
	add.l  #(Animation_Struct_Size*BouncePlantAnimIdx_Idle), a1
	jsr    AnimObjSetAnimation
	POPL   a1

	rts
	
BouncePlantUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	rts
