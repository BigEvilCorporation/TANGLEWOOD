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

Wyrm_AccelWalk   		equ 0x000400  ; walking acceleration
Wyrm_AccelRun    		equ 0x001400  ; running acceleration
Wyrm_DecelIdle   		equ 0x001600  ; deceleration if left alone
Wyrm_DecelForced 		equ 0x006000  ; deceleration if input opposite direction

Wyrm_MaxVelXWalk 		equ 0x020000  ; max X walking velocity
Wyrm_MaxVelXRun  		equ 0x080000  ; max X running velocity
Wyrm_MaxVelYUp   		equ 0x100000  ; max Y velocity up
Wyrm_MaxVelYDown 		equ 0x080000  ; max Y velocity down (tile height)

Wyrm_AnimFrame_Bite		equ 0x1
Wyrm_BiteDamage			equ 0xFF
Wyrm_LostPlayerTimeout	equ 0x5A

Wyrm_ScreenShakeVel		equ 0x4000
Wyrm_ScreenShakeAmp		equ 0x0100

Wyrm_BoundsWidth		equ Wyrm_Width/2
Wyrm_BoundsHeight		equ (Wyrm_Height)
Wyrm_BoundsOffsetX		equ (Wyrm_Width/2)-(Wyrm_BoundsWidth/2)
Wyrm_BoundsOffsetY		equ (Wyrm_Height/2)-(Wyrm_BoundsHeight/2)

Wyrm_DebrisMaxSprites	equ 0x10
Wyrm_DebrisMaxTrails	equ 0x10
Wyrm_DebrisSpriteWidth	equ 0x20
Wyrm_DebrisSpriteHeight	equ 0x10
Wyrm_DebrisSpriteDrawInterval	equ 0x10
Wyrm_DebrisDrawOffsetX	equ (Wyrm_Width/2)-(Wyrm_DebrisSpriteWidth/2)
Wyrm_DebrisDrawOffsetY	equ Wyrm_Height ; (Wyrm_Height-Wyrm_DebrisSpriteHeight)

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
WyrmAnimIdx_Debris		equ 3
; -------------------------------
Wyrm_NumAnims			equ 4

;==============================================================

; Struct
	rsset (Character_Struct_Size)
;-----------------------------
Wyrm_DebrisSprites		rs.b (AnimObj_Struct_Size*Wyrm_DebrisMaxSprites)
Wyrm_Animations			rs.b (Animation_Struct_Size*Wyrm_NumAnims)
Wyrm_DebrisPositions	rs.l Wyrm_DebrisMaxTrails
Wyrm_LostPlayerTimer	rs.w 1
Wyrm_DebrisAccumX		rs.w 1	; If X delta hits debris width, draw a new one
Wyrm_NextFreeDebris		rs.b 1
Wyrm_State				rs.b 1
;-----------------------------
Wyrm_Struct_Pad			rs.b 2   ; Alignment padding
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
	move.l #WyrmDraw, Entity_RenderRoutine(a0)
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

	move.w  #0x0, Wyrm_DebrisAccumX(a0)
	move.w  #0x0, Wyrm_LostPlayerTimer(a0)
	move.b  #0x0, Wyrm_NextFreeDebris(a0)
	move.b  #WyrmState_Idle, Wyrm_State(a0)

	; Always process out of view
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	
	; Setup collision bounds
	move.w  #Wyrm_BoundsOffsetX, PhysicsObj_BoundsLeft(a0)
	move.w  #Wyrm_BoundsOffsetY, PhysicsObj_BoundsTop(a0)
	move.w  #Wyrm_BoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #Wyrm_BoundsHeight, PhysicsObj_BoundsHeight(a0)

	; Init debris sprite objects
	PUSHL  a0
	add.l  #Wyrm_DebrisSprites, a0
	move.w #Wyrm_DebrisMaxSprites-1, d0
	@SpriteLp:
	PUSHL  d0
	jsr    AnimObjInit
	move.w #Wyrm_DebrisSpriteWidth, Entity_Width(a0)
	move.w #Wyrm_DebrisSpriteHeight, Entity_Height(a0)
	POPL   d0
	add.l  #AnimObj_Struct_Size, a0
	dbra   d0, @SpriteLp
	POPL   a0

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
	ANIM_LOAD_DEFAULT debris_debris,debris_debris,Wyrm_Animations,WyrmAnimIdx_Debris,0,1,1

	; Snap to floor
	jsr    PhysicsObjSnapToFloor
	
	;==============================================================

	; Load all debris sprites
	move.l a0, a3
	PUSHL  a0
	add.l  #Wyrm_DebrisSprites, a0
	move.l #Wyrm_DebrisMaxSprites-1, d0

	@SpriteLp:

	; Load sprite
	PUSHM  d0/a3
	SPRITE_LOAD_DEFAULT Debris,PaletteId_Monster,0x0
	POPM   d0/a3

	; Set anim
	PUSHM  d0/a1-a3
	move.l a3, a1
	add.l  #Wyrm_Animations, a1
	move.l #(WyrmAnimIdx_Debris*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPM   d0/a1-a3

	; Index to anim subframe
	move.l d0, d1
	lsl.l  #0x8, d1
	move.l d1, AnimObj_AnimSubFrame(a0)

	; Not updating anims, manually set to upload new subframe
	move.b #0x1, AnimObj_UploadFrame(a0)
	
	; Next obj
	add.l  #AnimObj_Struct_Size, a0

	dbra   d0, @SpriteLp

	POPL   a0

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

	; Backup current X
	move.w Entity_WorldPosX(a0), d0
	PUSHL  d0
	
	; Base functionality
	jsr    CharacterUpdate

	; Get X delta
	POPL   d0
	move.w Entity_WorldPosX(a0), d1
	sub.w  d0, d1

	; Add to accumulator
	move.w Wyrm_DebrisAccumX(a0), d2
	add.w  d1, d2

	; If moved the length of a debris chunk interval, add a new one
	cmp.w  #Wyrm_DebrisSpriteDrawInterval, d2
	bge    @AddDebris
	cmp.w  #-Wyrm_DebrisSpriteDrawInterval, d2
	ble    @AddDebris
	bra    @NoDebris
	
	@AddDebris:
	
	; Clear accumulator
	move.w #0x0, d2

	; Get pos
	move.w Entity_WorldPosX(a0), d0
	addi.w #Wyrm_DebrisDrawOffsetX, d0
	swap   d0
	move.w Entity_WorldPosY(a0), d0
	addi.w #Wyrm_DebrisDrawOffsetY, d0

	; Set next debris position
	clr.l  d3
	move.b Wyrm_NextFreeDebris(a0), d3	; Get next free index
	cmp.w  #0x0, d1						; Determine direction
	blt    @PrevDebris
	addi.b #0x1, d3						; Get next debris
	bra    @EndDebrisDirection
	@PrevDebris:
	subi.w #0x1, d3						; Get prev debris
	@EndDebrisDirection:
	
	divs.w #Wyrm_DebrisMaxTrails, d3	; Wrap
	clr.w  d3							; Get remainder
	swap   d3
	
	move.b d3, Wyrm_NextFreeDebris(a0)	; Back to RAM
	
	lsl.l  #0x2, d3						; To longwords
	
	move.l a0, a2						; Store pos
	addi.l #Wyrm_DebrisPositions, a2
	add.l  d3, a2
	move.l d0, (a2)

	@NoDebris:
	
	move.w d2, Wyrm_DebrisAccumX(a0)

	rts

WyrmDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Draw Wyrm
	jsr   CharacterDraw

	; Draw debris
	move.l a0, a2
	PUSHL  a0
	add.l  #Wyrm_DebrisSprites, a0
	move.w #Wyrm_DebrisMaxSprites-1, d0
	@SpriteLp:
	PUSHM  d0/a2

	; Get position
	move.l Wyrm_DebrisPositions(a2), d1

	; Set Y
	move.w d1, d2
	TOSUBPIXELS d2
	move.l d2, Entity_WorldPosY(a0)
	
	; Set X
	swap   d1
	move.w d1, d2
	TOSUBPIXELS d2
	move.l d2, Entity_WorldPosX(a0)

	; Draw
	jsr    AnimObjDraw

	POPM   d0/a2
	add.l  #AnimObj_Struct_Size, a0
	add.l  #size_long,a2
	dbra   d0, @SpriteLp
	POPL   a0
	
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

WyrmFindSandDune:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (w) Player X pos
	; d1 (ww) OUT: Sand dune left X/Y
	; d2 (ww) OUT: Sand dune right X/Y

	clr.w  d1
	clr.w  d2

	move.w (EntityCount_AIMarker), d3		; Get AI marker count
	cmp.w  #0x0, d3							; Bail if empty
	beq    @NoMarkers
	btst   #0x0, d3							; Check if even
	bne    @ErrorOddCount

	lsr.w  #0x1, d3							; Div/2
	sub.w  #0x1, d3							; -1 for loop counter
	move.l (EntityPoolStart_AIMarker), a2

	@MarkerLp:
	
	; a3 = left marker, a4 = right marker
	move.l a2, a3
	addi.l #AIMarker_Struct_Size, a2
	move.l a2, a4
	addi.l #AIMarker_Struct_Size, a2

	; Get marker left and right
	move.w Entity_WorldPosX(a3), d1
	move.w Entity_WorldPosX(a4), d2
	addi.w #AIMarker_Width, d2
	swap   d1
	swap   d2
	move.w Entity_WorldPosY(a3), d1
	move.w Entity_WorldPosY(a4), d2
	swap   d1
	swap   d2

	; Check if within bounds
	cmp.w  d0, d1
	bge    @NextPair
	cmp.w  d0, d2
	ble    @NextPair
	bra    @WithinMarkers
	
	@NextPair:
	dbra   d3, @MarkerLp

	; Not within a marker pair, shouldn't be here if on sand
	RAISE_EXCEPTION *
	
	@ErrorOddCount:
	; AI markers should be in pairs
	RAISE_EXCEPTION *

	@NoMarkers:
	@WithinMarkers:

	rts

WyrmAIStart_Idle
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set new state
	move.b #WyrmState_Idle, Wyrm_State(a0)

	; Stop screen shake
	jsr    CAM_StopCameraShake

	rts

WyrmAIUpdate_Idle:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player
	move.l (Player1), a2
	
	; If player dead, don't bother
	cmp.b  #0x0, Character_Dead(a2)
	bne    @PlayerDead

	; If player touching sand (on special terrain), wake up
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @PlayerInAir
	move.w PhysicsObj_LastTerrainFlags(a2), d0
	andi.w #col_tile_flag_special, d0
	beq    @PlayerNotOnSand

	jsr    WyrmAIStart_Emerge

	@PlayerInAir:
	@PlayerNotOnSand:
	@PlayerDead:
	
	rts

WyrmAIStart_Emerge
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set new state
	move.b #WyrmState_Emerging, Wyrm_State(a0)

	;==============================================================

	; Find last entered sand dune (AI marker pairs)
	move.l (Player1), a2
	move.w Entity_WorldPosX(a2), d0
	jsr    WyrmFindSandDune

	; If already within, emerge from last burrowed pos
	move.w Entity_WorldPosX(a0), d0
	cmp.w  d0, d1
	bge    @NotInDune
	cmp.w  d0, d2
	ble    @NotInDune
	bra    @AlreadyinDune

	@NotInDune: 
	; else use nearest AI marker to last burrowed pos
	move.l d1, d4	; Use left marker pos by default
	move.l d1, d5
	move.l d2, d6
	swap   d5		; Get X left
	swap   d6		; Get X right
	sub.w  d0, d5	; Get distance to left marker
	sub.w  d0, d6	; Get distance to right marker
	ABSW   d5
	ABSW   d6
	cmp.w  d5, d6	; Get smallest dist
	bge    @LeftMarker
	move.l d2, d4	; Use right marker pos
	@LeftMarker:

	; Set emerge pos
	move.w d4, d0
	TOSUBPIXELS d0
	move.l d0, Entity_WorldPosX(a0)
	swap   d4
	sub.w  #Wyrm_Height, d4
	TOSUBPIXELS d4
	move.l d4, Entity_WorldPosY(a0)
	
	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	@AlreadyinDune:

	;==============================================================

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

	; Stop screen shake
	jsr    CAM_StopCameraShake

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

	; Start screen shake
	move.w #0x0, d0
	move.w #Wyrm_ScreenShakeVel, d1
	move.w #0x0, d2
	move.w #Wyrm_ScreenShakeAmp, d3
	move.w #0x0, d4
	jsr    CAM_StartCameraShake

	rts

WyrmAIUpdate_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player
	move.l (Player1), a2
	
	; If player dead, don't bother
	cmp.b  #0x0, Character_Dead(a2)
	bne    @PlayerDead

	; If touching, bite
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	
	cmp.b  #0x0, d0
	beq    @NotTouching

	; Start bite state
	jsr    WyrmAIStart_Bite

	bra    @Bite

	;==============================================================
	
	@NotTouching:

	; If player in air or not on sand, count down lost timer
	move.l (Player1), a2
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @PlayerInAir
	move.w PhysicsObj_LastTerrainFlags(a2), d0
	andi.w #col_tile_flag_special, d0
	bne    @OnSand

	@PlayerInAir:

	; Decrement timer, carry on chasing if not elapsed
	subi.w #0x1, Wyrm_LostPlayerTimer(a0)
	bne    @Chase

	; Lost player, burrow underground and sleep
	jsr    WyrmAIStart_Burrow
	
	bra    @Chase

	;==============================================================

	@OnSand:
	
	; Player detected, reset lost timer
	move.w #Wyrm_LostPlayerTimeout, Wyrm_LostPlayerTimer(a0)
	
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

	; If hit wall, no longer on floor, or no longer on sand, start burrowing
	PHYSICS_HITFACINGWALL a0
	tst.b  d0
	bne    @Burrow
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @Burrow
	move.w PhysicsObj_LastTerrainFlags(a2), d0
	andi.w #col_tile_flag_special, d0
	beq    @Burrow
	bra    @NotHittingWall

	@Burrow:
	jsr    WyrmAIStart_Burrow
	@NotHittingWall:

	@Bite:
	@PlayerDead:
	
	rts

WyrmAIStart_Bite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set new state
	move.b #WyrmState_Biting, Wyrm_State(a0)

	; Stop screen shake
	jsr    CAM_StopCameraShake

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
	move.l AnimObj_AnimSubFrame(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #Wyrm_AnimFrame_Bite, d0
	bne    @End
	
	; Get player
	PUSHL  a0
	move.l (Player1), a0

	; TODO: Snap player to mouth centre

	; Hide player
	move.b #0x0, SpriteObj_Visible(a0)
	
	; Kill player
	move.b #Wyrm_BiteDamage, d0
	jsr    CharacterDealDamage

	POPL   a0
	
	bra    @End

	@AnimFinished:
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Back to chase state
	;jsr    WyrmAIStart_Follow
	jsr    WyrmAIStart_Idle
	
	@OutOfHitBox:
	@End:

	rts