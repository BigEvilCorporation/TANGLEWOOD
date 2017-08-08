;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   wyrm.asm - Sandwyrm, a terrain chewing hell
;==============================================================

; Constants
Wyrm_MaxEntities		equ 0x1
Wyrm_Width				equ 0x40
Wyrm_Height				equ 0x38
Wyrm_Mass				equ 0x8
Wyrm_StepHeight			equ 0x4
Wyrm_ProbeFloorX		equ (Wyrm_Width/2)		; Floor detection probe position X
Wyrm_ProbeFloorY		equ (Wyrm_Height-8)		; Floor detection probe position X
Wyrm_MaxVelX			equ 0x080000
Wyrm_Decel				equ 0x003000

Wyrm_AccelWalk   		equ 0x000600  ; walking acceleration
Wyrm_AccelRun    		equ 0x001400  ; running acceleration
Wyrm_DecelIdle   		equ 0x001600  ; deceleration if left alone
Wyrm_DecelForced 		equ 0x003000  ; deceleration if input opposite direction

Wyrm_MaxVelXWalk 		equ 0x010000  ; max X walking velocity
Wyrm_MaxVelXRun  		equ 0x050000  ; max X running velocity
Wyrm_MaxVelYUp   		equ 0x100000  ; max Y velocity up
Wyrm_MaxVelYDown 		equ 0x080000  ; max Y velocity down (tile height)

Wyrm_AnimFrame_Bite		equ 0x3
Wyrm_BiteDamage			equ 0xFF

Wyrm_BoundsWidth		equ Wyrm_Width/2
Wyrm_BoundsHeight		equ (Wyrm_Height)
Wyrm_BoundsOffsetX		equ (Wyrm_Width/2)-(Wyrm_BoundsWidth/2)
Wyrm_BoundsOffsetY		equ (Wyrm_Height/2)-(Wyrm_BoundsHeight/2)

; ************************************
; States
; ************************************
WyrmState_Idle			equ 0x0
WyrmState_Emerging		equ 0x1
WyrmState_Burrowing		equ 0x2
WyrmState_Chasing		equ 0x3
WyrmState_Biting		equ 0x4

; ************************************
; Animations
; ************************************
WyrmAnimIdx_Bite		equ 0
WyrmAnimIdx_Emerge		equ 1
WyrmAnimIdx_Burrow		equ 2
; -------------------------------
Wyrm_NumAnims			equ 3

;==============================================================

; Struct
	rsset (Character_Struct_Size)
;-----------------------------
Wyrm_Animations			rs.b (Animation_Struct_Size*Wyrm_NumAnims)
Wyrm_State				rs.b 1
;-----------------------------
Wyrm_Struct_Pad			rs.b 3   ; Alignment padding
Wyrm_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

WyrmInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    CharacterInit
	
	; Set type
	addi.w #0x1, EntityCount_Wyrm
	
	; Set update and render routines
	move.l #WyrmUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	move.l #WyrmSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Wyrm_Width, Entity_Width(a0)
	move.w  #Wyrm_Height, Entity_Height(a0)
	move.b  #Wyrm_Mass, PhysicsObj_Mass(a0)
	move.l  #Wyrm_MaxVelX, PhysicsObj_MaxVelFloorX(a0)
	move.w  #Wyrm_Decel, PhysicsObj_DecelX(a0)
	move.w  #Wyrm_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Wyrm_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Wyrm_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.l  #Wyrm_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Wyrm_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)

	move.l  #Wyrm_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.l  #Wyrm_MaxVelXRun, Character_MaxVelXRun(a0)
	move.w  #Wyrm_AccelWalk, Character_AccelWalk(a0)
	move.w  #Wyrm_AccelRun, Character_AccelRun(a0)
	move.w  #Wyrm_DecelIdle, Character_DecelIdle(a0)
	move.w  #Wyrm_DecelForced, Character_DecelForced(a0)

	move.b  #WyrmState_Idle, Wyrm_State(a0)

	; Always process out of view
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	
	; Setup collision bounds
	move.w  #Wyrm_BoundsOffsetX, PhysicsObj_BoundsLeft(a0)
	move.w  #Wyrm_BoundsOffsetY, PhysicsObj_BoundsTop(a0)
	move.w  #Wyrm_BoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #Wyrm_BoundsHeight, PhysicsObj_BoundsHeight(a0)

	rts

WyrmLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT Wyrm,PaletteId_Monster,0x0

	; Load character animations
	ANIM_LOAD_DEFAULT wyrm_emerge,wyrm_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT wyrm_move,wyrm_move,Character_Animations,CharacterAnimIdx_Run,1,0,0
	ANIM_LOAD_DEFAULT wyrm_move,wyrm_move,Character_Animations,CharacterAnimIdx_Walk,1,0,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT wyrm_bite,wyrm_bite,Wyrm_Animations,WyrmAnimIdx_Bite,0,1,1
	ANIM_LOAD_DEFAULT wyrm_emerge,wyrm_emerge,Wyrm_Animations,WyrmAnimIdx_Emerge,0,1,1
	ANIM_LOAD_DEFAULT wyrm_emerge,wyrm_burrow,Wyrm_Animations,WyrmAnimIdx_Burrow,0,1,1

	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	rts
	
WyrmUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.b Wyrm_State(a0), d0
	cmp.b  #WyrmState_Idle, d0
	beq    @Idle
	cmp.b  #WyrmState_Emerging, d0
	beq    @Emerging
	cmp.b  #WyrmState_Burrowing, d0
	beq    @Burrowing
	cmp.b  #WyrmState_Chasing, d0
	beq    @Chasing
	cmp.b  #WyrmState_Biting, d0
	beq    @Biting

	@Idle:
	jsr    WyrmAIUpdate_Idle
	bra    @EndAI

	@Emerging:
	jsr    WyrmAIUpdate_Emerge
	bra    @EndAI

	@Burrowing:
	jsr    WyrmAIUpdate_Burrow
	bra    @EndAI

	@Chasing:
	jsr    WyrmAIUpdate_Follow
	bra    @EndAI

	@Biting:
	jsr    WyrmAIUpdate_Bite
	bra    @EndAI

	@EndAI:
	
	; Base functionality
	jsr    CharacterUpdate

	rts
	
WyrmSerialise:
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

WyrmAIStart_Idle
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set new state
	move.b #WyrmState_Idle, Wyrm_State(a0)

	rts

WyrmAIUpdate_Idle:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If player touching sand (on special terrain), wake up
	move.l #Player1, a2
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @PlayerInAir
	move.w PhysicsObj_LastTerrainFlags(a2), d0
	andi.w #col_tile_flag_special, d0
	beq    @PlayerNotOnSand

	jsr    WyrmAIStart_Emerge

	@PlayerInAir:
	@PlayerNotOnSand:
	
	rts

WyrmAIStart_Emerge
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set new state
	move.b #WyrmState_Emerging, Wyrm_State(a0)

	; Emerge anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Wyrm_Animations, a1
	move.l #(WyrmAnimIdx_Emerge*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	move.b #0x0, Character_UpdateAnim(a0)
	POPL   a1

	rts

WyrmAIUpdate_Emerge:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If anim finished, start chase state
	tst.b AnimObj_Playing(a0)
	bne   @Playing
	move.b #0x1, Character_UpdateAnim(a0)
	jsr   WyrmAIStart_Follow
	@Playing:
	
	rts

WyrmAIStart_Burrow
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set new state
	move.b #WyrmState_Burrowing, Wyrm_State(a0)

	; Burrow anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Wyrm_Animations, a1
	move.l #(WyrmAnimIdx_Burrow*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	move.b #0x0, Character_UpdateAnim(a0)
	POPL   a1

	rts

WyrmAIUpdate_Burrow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If anim finished, start idle state
	tst.b AnimObj_Playing(a0)
	bne   @Playing
	move.b #0x1, Character_UpdateAnim(a0)
	jsr   WyrmAIStart_Idle
	@Playing:
	
	rts

WyrmAIStart_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set new state
	move.b #WyrmState_Chasing, Wyrm_State(a0)

	rts

WyrmAIUpdate_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get Nymn
	move.l #Player1, a2

	; If touching, bite
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	
	cmp.b  #0x0, d0
	beq    @Chase

	; Start bite state
	jsr    WyrmAIStart_Bite

	bra    @Bite

	;==============================================================

	@Chase:

	; Determine direction
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	
	cmp.l  d0, d1
	bgt    @RunRight

	; Run left
	jsr    CharacterMoveLeft
	bra    @EndMove
	
	@RunRight:

	; Run right
	jsr    CharacterMoveRight

	@EndMove:

	; If hit wall, start burrowing
	PHYSICS_HITFACINGWALL a0
	tst.b  d0
	beq    @NotHittingWall
	jsr    WyrmAIStart_Burrow
	@NotHittingWall:

	@Bite:
	
	rts

WyrmAIStart_Bite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set new state
	move.b #WyrmState_Biting, Wyrm_State(a0)

	; Start bite animation
	PUSHL  a1
	move.l a0, a1
	add.l  #Wyrm_Animations, a1
	move.l #(WyrmAnimIdx_Bite*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	move.b #0x0, Character_UpdateAnim(a0)
	POPL   a1

	rts

WyrmAIUpdate_Bite:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Check if end frame reached
	tst.b  AnimObj_Playing(a0)
	beq    @AnimFinished
	
	; Check if attack frame reached
	cmp.b  #Wyrm_AnimFrame_Bite, d0
	bne    @End
	
	; On attack frame, check if player still in range on attack frame
	PUSHL  a1
	move.l #Player1, a1
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	POPL   a1
	
	cmp.b  #0x0, d0
	beq    @OutOfHitBox

	; Get player
	PUSHL  a0
	move.l #Player1, a0

	; TODO: Snap player to mouth centre

	; Hide player
	move.b #0x0, SpriteObj_Visible(a0)
	
	; Kill player
	move.b #Wyrm_BiteDamage, d0
	jsr    CharacterDealDamage

	POPL   a0

	; Set idle state
	jsr    WyrmAIStart_Idle
	
	bra    @End

	@AnimFinished:
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Back to chase state
	jsr    WyrmAIStart_Follow
	
	@OutOfHitBox:
	@End:

	rts