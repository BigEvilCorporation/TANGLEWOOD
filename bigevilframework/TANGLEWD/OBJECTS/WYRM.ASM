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
Wyrm_StepHeight			equ 0x6				; Larger step height so bumps don't cause the Wyrm to burrow
Wyrm_ProbeFloorX		equ (Wyrm_Width/2)	; Floor detection probe position X
Wyrm_ProbeFloorY		equ (Wyrm_Height-8)	; Floor detection probe position X
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

Wyrm_EmergeOffsetFromEdge	equ 0x10
Wyrm_EmergeOffsetY		equ 0x8
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
Wyrm_CurrentDuneLeft	rs.w 1	; Bounds of current sand dune
Wyrm_CurrentDuneRight	rs.w 1
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
	move.w  #Wyrm_Height, PhysicsObj_WallProbeBottom(a0)
	move.l  #Wyrm_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Wyrm_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)

	move.l  #Wyrm_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.l  #Wyrm_MaxVelXRun, Character_MaxVelXRun(a0)
	move.w  #Wyrm_AccelWalk, Character_AccelWalk(a0)
	move.w  #Wyrm_AccelRun, Character_AccelRun(a0)
	move.w  #Wyrm_DecelIdle, Character_DecelIdle(a0)
	move.w  #Wyrm_DecelForced, Character_DecelForced(a0)

	move.w  #0x0, Wyrm_CurrentDuneLeft(a0)
	move.w  #0x0, Wyrm_CurrentDuneRight(a0)
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
	
	; Run by default, to enable snap-to-floor
	move.b #0x0, d2
	jsr    CharacterAllowRun

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

	clr.l  d1
	clr.l  d2

	move.w Level_NumTerrainDescs(a1), d3	; Get 'special' terrain count
	cmp.w  #0x0, d3							; Bail if empty
	beq    @NoTerrain
	sub.w  #0x1, d3							; -1 for loop counter
	move.l Level_TerrainDescAddr(a1), a2	; Get 'special' terrain desc table

	@TerrainLp:
	
	; Get terrain spline start/end
	move.l (a2)+, d1
	move.l (a2)+, d2

	; Get X
	swap   d1
	swap   d2

	; Check if within X bounds
	cmp.w  d0, d1
	bge    @NextTerrain
	cmp.w  d0, d2
	ble    @NextTerrain
	bra    @WithinTerrain
	
	@NextTerrain:
	dbra   d3, @TerrainLp

	; Not within a marker pair, shouldn't be here if on sand
	RAISE_EXCEPTION *

	@NoTerrain:
	@WithinTerrain:

	swap   d1
	swap   d2

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
	tst.b  Character_Dead(a2)
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

	; Find last entered sand dune
	move.l (Player1), a2
	
	; Get player floor probe X
	move.w Entity_WorldPosX(a2), d0
	sub.w  #vdp_sprite_border_x, d0
	add.w  PhysicsObj_FloorProbeX(a2), d0
	
	jsr    WyrmFindSandDune
	
	; Backup dune bounds for X test
	move.l d1, d3
	move.l d2, d4
	
	; Get X bounds
	swap   d3
	swap   d4
	
	; Set sand dune X bounds
	move.w d3, Wyrm_CurrentDuneLeft(a0)
	move.w d4, Wyrm_CurrentDuneRight(a0)

	; If already within X bounds of found sand dune, emerge from last burrowed pos
	move.w Entity_WorldPosX(a0), d0
	sub.w  #vdp_sprite_border_x, d0
	add.w  PhysicsObj_FloorProbeX(a0), d0
	cmp.w  d0, d3
	bge    @NotInDune
	cmp.w  d0, d4
	ble    @NotInDune
	bra    @AlreadyinDune

	@NotInDune: 
	; else emerge from nearest edge of dune
	move.l d1, d4	; Use left marker pos by default
	addi.l #(Wyrm_EmergeOffsetFromEdge<<16), d4	; Offset from edge
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
	subi.l #(Wyrm_EmergeOffsetFromEdge+Wyrm_Width)<<16, d4	; Offset from edge
	@LeftMarker:

	; Set emerge pos
	move.w d4, d0
	addi.w #vdp_sprite_border_y, d0			; Y to screen space
	subi.w #Wyrm_EmergeOffsetY, d0
	sub.w  PhysicsObj_FloorProbeY(a0), d0	; Offset floor probe
	TOSUBPIXELS d0
	move.l d0, Entity_WorldPosY(a0)			; Set Y
	swap   d4
	addi.w #vdp_sprite_border_x, d4			; X to screen space
	sub.w  PhysicsObj_FloorProbeX(a0), d0	; Offset floor probe
	TOSUBPIXELS d4
	move.l d4, Entity_WorldPosX(a0)			; Set X
	
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
	
	; Cancel accel/vel
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)

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
	
	; Reset lost player timer
	move.w #Wyrm_LostPlayerTimeout, Wyrm_LostPlayerTimer(a0)

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
	tst.b  Character_Dead(a2)
	bne    @PlayerDead

	; If player invisible, assume safe (in flue)
	move.l (Player1), a2
	tst.b  SpriteObj_Visible(a2)
	beq    @PlayerSafe
	
	; If player is on a non-sand platform, assume safe (could be on a rolling log)
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @CanBite
	move.w PhysicsObj_LastTerrainFlags(a2), d0
	andi.w #col_tile_flag_special, d0
	beq    @PlayerSafe
	
	@CanBite:
	
	; If in time slow (player using green ability) don't bite
	cmp.b  #0x1, GlobalTimeDiv
	bne    @PlayerSafe

	; If touching, bite
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	
	tst.b  d0
	beq    @NotTouching

	; Start bite state
	jsr    WyrmAIStart_Bite

	bra    @Bite

	;==============================================================
	
	@NotTouching:
	@PlayerSafe:

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

	; If hit wall, start burrowing
	PHYSICS_HITFACINGWALL a0
	tst.b  d0
	bne    @Burrow

	; If hit end of sand dune, start burrowing
	move.w Entity_WorldPosX(a0), d0			; Get Wyrm left
	sub.w  #vdp_sprite_border_x, d0			; To collision space
	move.w d0, d1							; Get Wyrm right
	add.w  Wyrm_Width(a0), d1
	move.w Wyrm_CurrentDuneLeft(a0), d2		; Get sand dune left
	move.w Wyrm_CurrentDuneRight(a0), d3	; Get sand dune right
	cmp.w  d0, d2							; Check left bounds
	bge    @Burrow
	cmp.w  d1, d3							; Check right bounds
	ble    @Burrow
	bra    @WithinDune

	@Burrow:
	jsr    WyrmAIStart_Burrow
	@WithinDune:

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
	
	; Straight to to idle state, burrown anim is embedded in attack anim
	jsr    WyrmAIStart_Idle
	
	@OutOfHitBox:
	@End:

	rts