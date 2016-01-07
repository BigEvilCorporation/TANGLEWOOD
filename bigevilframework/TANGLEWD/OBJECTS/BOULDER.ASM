;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Boulder.asm - Pushable/rolling boulder
;==============================================================

; Constants
Boulder_MaxEntities			equ 0x1
Boulder_Width				equ 0x20
Boulder_Height				equ 0x20
Boulder_MaxVelYUp			equ 0x0600
Boulder_MaxVelYDown			equ 0x0600
Boulder_StepHeight			equ 0x3
Boulder_ProbeFloorX			equ (Boulder_Width/2)  					; Floor detection probe position X
Boulder_ProbeFloorY			equ (Boulder_Height-Boulder_StepHeight) ; Floor detection probe position Y
Boulder_MaxVelX				equ 0x0100
Boulder_Decel				equ 0x0008

Boulder_AnimSpeedVelDiv		equ 0x0004

Boulder_MinDamageYVel		equ 0x0500	; Min downward velocity to deal damage to characters
Boulder_HitDamage			equ 0xFF	; Damage dealt to characters

;==============================================================

; Struct
	rsset (AnimObj_Struct_Size)
;--------------------------

;--------------------------
Boulder_Struct_Pad   rs.b 0   ; Alignment padding
Boulder_Struct_Size  rs.b 0

;==============================================================

BoulderInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    AnimObjInit
	
	; Set update and render routines
	move.l #BoulderUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	
	; Default state
	move.b  #0x1, GameObj_Active(a0)
	move.b  #0x1, GameObj_Visible(a0)
	move.w  #Boulder_Width, Entity_Width(a0)
	move.w  #Boulder_Height, Entity_Height(a0)
	move.w  #Boulder_MaxVelX, GameObj_MaxVelX(a0)
	move.w  #Boulder_Decel, GameObj_DecelX(a0)
	move.w  #Boulder_StepHeight, GameObj_StepHeight(a0)
	move.w  #Boulder_ProbeFloorX, GameObj_FloorProbeX(a0)
	move.w  #Boulder_ProbeFloorY, GameObj_FloorProbeY(a0)
	move.w  #Boulder_MaxVelYUp, GameObj_MaxVelYUp(a0)
	move.w  #Boulder_MaxVelYDown, GameObj_MaxVelYDown(a0)
	
	; Roll animation
	move.l  #Anim_BoulderRoll, AnimObj_KeyframesAddr(a0)
	move.b  #Anim_BoulderRoll_SizeB, AnimObj_AnimLength(a0)
	move.b  #0x1, AnimObj_Playing(a0)
	move.b  #0x1, AnimObj_Looping(a0)

	rts
	
BoulderUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Roll anim speed based on velocity
	clr.l  d0
	move.w GameObj_VelX(a0), d0
	divs.w #Boulder_AnimSpeedVelDiv, d0
	move.b d0, AnimObj_AnimSpeed(a0)
	
	; If Y vel > min damage vel
	cmp.w  #-Boulder_MinDamageYVel, GameObj_VelY(a0)
	bge    @NotFalling
	
	move.l a1, -(sp)
	
	; Check if squishing a monster
	move.l #EntityArray_Monsters, a1
	move.l #gameobjects_Monster_count-1, d6
	@MonsterLoop:
	move.l d6, -(sp)
	
	; Check monster active
	cmp.b  #0x0, GameObj_Active(a1)
	beq    @NextMonster
	
	; Check monster alive
	cmp.b  #0x0, Character_Dead(a1)
	bne    @NextMonster
	
	; Bounds check
	jsr   GetGameObjBoundsA0D0D1
	jsr   GetGameObjBoundsA1D2D3
	jsr   TestBoxIntersectBox
	cmp.b #0x0, d0
	beq   @NextMonster
	
	; Boulder hit a monster, deal damage
	move.l a0, -(sp)
	move.l a1, a0
	move.l #Boulder_HitDamage, d0
	jsr    CharacterDealDamage
	move.l (sp)+, a0
	
	@NextMonster:
	move.l (sp)+, d6
	add.l #Monster_Struct_Size, a1
	dbra  d6, @MonsterLoop
	
	@EndMonsterLoop:
	
	move.l (sp)+, a1
	
	@NotFalling:

	; Base functionality
	jsr    AnimObjUpdate

	rts
