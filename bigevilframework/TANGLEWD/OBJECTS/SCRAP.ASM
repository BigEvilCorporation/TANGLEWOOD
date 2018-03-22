;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   scrap.asm - Baby Djakk, completely harmless
;==============================================================

; Constants
Scrap_Width        equ 0x0020
Scrap_Height       equ 0x0018

Scrap_MaxVelXWalk	equ 0x010000   ; Max X walking velocity
Scrap_MaxVelXRun	equ 0x040000   ; Max X running velocity
Scrap_MaxVelXAir	equ 0x010000
Scrap_MaxVelYUp		equ 0x060000   ; Max Y velocity up
Scrap_MaxVelYDown	equ 0x080000   ; Max Y velocity down
Scrap_WalkToRunVel	equ 0x020000   ; Walk to run transition velocity
Scrap_AccelWalk		equ 0x000200   ; Walking acceleration
Scrap_AccelRun		equ 0x001000   ; Running acceleration
Scrap_DecelIdle		equ 0x002000   ; Deceleration if left alone
Scrap_DecelForced	equ 0x004000   ; Deceleration if input opposite direction
Scrap_Mass			equ 0x02

Scrap_StepHeight	equ 0x3
Scrap_MinWallHeight	equ 0x11			; High enough to avoid stones
Scrap_ProbeFloorX	equ (Scrap_Width/2)	; Floor detection probe position X
Scrap_ProbeFloorY	equ (Scrap_Height-8); Floor detection probe position Y
Scrap_ProbeWallX	equ (Scrap_Width/2)-8	; Distance from centre to start wall search
Scrap_ProbeWallTop	equ 0x08

Scrap_BarkTimeMin	equ 0x0040
Scrap_BarkTimeMax	equ 0x0200

Scrap_FuzzlPlayTimeMin		equ 0x0030
Scrap_FuzzlPlayTimeMax		equ 0x0080
Scrap_FuzzlShuntDistance	equ 0x0030
Scrap_FuzzlShuntImpulse		equ 0x00020000

Scrap_AIFollowDistance	equ 0x0040

; AI states
ScrapState_Inactive		equ 0x0
ScrapState_Emerging		equ 0x1
ScrapState_Following	equ 0x2
ScrapState_PlayFuzzl	equ 0x3

; Animations
ScrapAnimIdx_Bark		equ 0x0
ScrapAnimIdx_Max		equ 0x1

; Struct
	rsset (Character_Struct_Size)
;---------------------------------
Scrap_Animations		rs.b (Animation_Struct_Size*ScrapAnimIdx_Max)
Scrap_TargetFuzzl		rs.l 1
Scrap_BarkTimer			rs.w 1	; Time until next random bark
Scrap_FuzzlPlayTimer	rs.w 1	; Time until run at nearest Fuzzl
Scrap_State				rs.b 1
Scrap_ChargingFuzzl		rs.b 1	; Charging at Fuzzl
;---------------------------------
	RS_ALIGN
Scrap_Struct_Size	rs.b 0

ScrapInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    CharacterInit

	; Set update and render routines
	move.l #ScrapUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #EntitySerialise, Entity_SerialiseRoutine(a0)

	; Add to update and render lists
	;jsr EntityAddToUpdateList
	;jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList
	
	; Add to count
	addq.w #0x1, EntityCount_Scrap

	; Initialise
	move.w #Scrap_Width, Entity_Width(a0)
	move.w #Scrap_Height, Entity_Height(a0)
	move.l #0x0, Scrap_TargetFuzzl(a0)
	move.b #ScrapState_Inactive, Scrap_State(a0)
	move.w #0x0, Scrap_BarkTimer(a0)
	move.w #0x0, Scrap_FuzzlPlayTimer(a0)

	MOVE_NTSC_L Scrap_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Scrap_MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	MOVE_NTSC_L Scrap_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Scrap_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	MOVE_NTSC_ACCEL_W Scrap_DecelIdle, PhysicsObj_DecelX(a0), d0
	move.w #Scrap_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w #Scrap_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w #Scrap_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w #Scrap_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w #Scrap_ProbeWallX, PhysicsObj_WallProbeCentreX(a0)
	move.w #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w #Scrap_Width, PhysicsObj_WallProbeRight(a0)
	move.w #Scrap_StepHeight, PhysicsObj_StepHeight(a0)
	move.w #Scrap_MinWallHeight, PhysicsObj_MinWallHeight(a0)
	move.b #Scrap_Mass, PhysicsObj_Mass(a0)

	move.b  #0x1, AnimObj_UpdateOutOfView(a0)

	MOVE_NTSC_L Scrap_MaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Scrap_MaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_L Scrap_WalkToRunVel, Character_WalkToRunVel(a0), d0
	MOVE_NTSC_ACCEL_W Scrap_AccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Scrap_AccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Scrap_DecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Scrap_DecelForced, Character_DecelForced(a0), d0

	rts

ScrapLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite sheet
	SPRITE_LOAD_DEFAULT scrap,idle,0,PaletteId_Monster,0x0

	; Load default character animations
	ANIM_LOAD_DEFAULT scrap,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT scrap,run,run,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT scrap,run,run,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT scrap,bark,bark,Scrap_Animations,ScrapAnimIdx_Bark,0,1,0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	rts
	
ScrapUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr   CharacterUpdate

	move.b Scrap_State(a0), d0
	cmp.b  #ScrapState_Inactive, d0
	beq    @End
	cmp.b  #ScrapState_Emerging, d0
	beq    @Emerging
	cmp.b  #ScrapState_Following, d0
	beq    @Following
	cmp.b  #ScrapState_PlayFuzzl, d0
	beq    @Fuzzl

	@Emerging:
	jsr    ScrapAIUpdate_Emerge
	bra    @End

	@Following:
	jsr    ScrapAIUpdate_Follow
	bra    @End

	@Fuzzl:
	jsr    ScrapAIUpdate_PlayFuzzl
	bra    @End

	@End:

	rts

ScrapBark:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Anim
	PUSHL   a1
	lea     Scrap_Animations+(Animation_Struct_Size*ScrapAnimIdx_Bark)(a0), a1
	move.b  #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	; SFX
	PLAYSFX #SFX_Scrap_Yap

	; Calc rand delay timer
	MOVE_NTSC_W Scrap_BarkTimeMin, d1, d0
	MOVE_NTSC_W Scrap_BarkTimeMax, d2, d0
	jsr    RND_GenerateWordClamped
	move.w d0, Scrap_BarkTimer(a0)

	rts

ScrapAIStart_Emerge:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #ScrapState_Emerging, Scrap_State(a0)

	; Start palette lerp
	PUSHL  a0
	lea    palette_djakk, a0
	move.l #PaletteId_Monster, d0
	move.w #Monster_EmergePalLerpSpeed, d1
	move.b #0x1, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    GameScenePaletteFadeTo
	POPL   a0
	
	rts

ScrapAIUpdate_Emerge:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Wait for palette lerp finish
	lea    PaletteLerp_Array+(PaletteId_Monster*PaletteLerp_Struct_Size), a2
	tst.w  PaletteLerp_UpdateSpeed(a2)
	bne    @Lerping
	
	; Bark
	jsr  ScrapBark

	; Start follow state
	jsr  ScrapAIStart_Follow
	
	@Lerping:

	rts

ScrapAIStart_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #ScrapState_Following, Scrap_State(a0)

	; Calc next random Fuzzl play time
	MOVE_NTSC_W Scrap_FuzzlPlayTimeMin, d1, d0
	MOVE_NTSC_W Scrap_FuzzlPlayTimeMax, d2, d0
	jsr    RND_GenerateWordClamped
	move.w d0, Scrap_FuzzlPlayTimer(a0)

	rts

ScrapAIUpdate_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Follow Echo if available
	move.l Player2, a2
	cmpa.w #0x0, a2
	bne    @UseEcho
	move.l Player1, a2
	@UseEcho:

	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	
	; Check left bounds
	move.w d1, d2
	sub.w  #Scrap_AIFollowDistance, d2
	cmp.w  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d2
	addi.w #Scrap_AIFollowDistance, d2
	cmp.w  d0, d2
	blt    @TooFarRight
	
	; Within bounds
	bra    @WithinBounds
	
	@TooFarleft:
	jsr    CharacterMoveRight
	bra    @EndFollow
	
	@TooFarRight:
	jsr    CharacterMoveLeft
	bra    @EndFollow

	@WithinBounds:
	jsr    CharacterCancelXMovement

	; Within bounds, countdown bark timer
	move.w Scrap_BarkTimer(a0), d0
	beq    @NoBark
	subq.w #0x1, d0
	move.w d0, Scrap_BarkTimer(a0)
	tst.w  d0
	bne    @NoBark
	jsr    ScrapBark
	@NoBark:
	
	@EndFollow:

	; Search for Fuzzl that player is rolling
	jsr    ScrapAI_CheckFuzzl

	rts

ScrapAI_CheckFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Need to be on screen
	tst.b  SpriteObj_SpriteLinked(a0)
	beq    @End

	; Find Fuzzl that player is trying to roll
	move.w (EntityCount_Fuzzl), d6
	beq    @NoFuzzls
	move.l (EntityPoolStart_Fuzzl), a2
	subq.w #0x1, d6
	@FuzzlLoop:

	; Check on screen
	tst.b  SpriteObj_SpriteLinked(a2)
	beq    @NextFuzzl

	; Check on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @NextFuzzl

	; Check if fuzzl is in its nest
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a2)
	bne    @NextFuzzl
	btst.b #Fuzzl_State_Generator, Fuzzl_State_Bits(a2)
	bne    @NextFuzzl

	; Check if Nymn is pushing it (no!)
	move.l Player1, a3
	cmp.l  Player_InteractObject(a3), a2
	bne    @NextFuzzl

	; Check if Echo is pushing it (he's allowed!)
	move.l Player2, a3
	cmp.l  Player_InteractObject(a3), a2
	beq    @NextFuzzl

	; Done
	move.l a2, Scrap_TargetFuzzl(a0)
	bra    @FoundFuzzl

	@NextFuzzl:
	lea    Fuzzl_Struct_Size(a2), a2
	dbra   d6, @FuzzlLoop

	@NoFuzzls:

	; No Fuzzl found, back to follow state
	jsr    ScrapAIStart_Follow
	bra    @End

	@FoundFuzzl:

	; Found Fuzzl in player's hands, charge at it
	jsr    ScrapAIStart_PlayFuzzl

	@End:

	rts

ScrapAIStart_PlayFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #ScrapState_PlayFuzzl, Scrap_State(a0)

	; Clear charging flag
	move.b #0x0, Scrap_ChargingFuzzl(a0)

	; Bark
	jsr    ScrapBark

	@End:

	rts

ScrapAIUpdate_PlayFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL a1

	; Get Fuzzl
	move.l Scrap_TargetFuzzl(a0), a1

	; If already charging, get on with it
	tst.b  Scrap_ChargingFuzzl(a0)
	bne    @Charging

	; Need to be left of Fuzzl first
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a1
	TOPIXELS d0
	TOPIXELS d1
	sub.w  #Scrap_FuzzlShuntDistance, d1
	cmp.w  d0, d1
	bgt    @Charging

	; Run left
	jsr    CharacterMoveLeft
	bra    @End
	
	@Charging:

	; Set charge substate
	move.b #0x1, Scrap_ChargingFuzzl(a0)

	; If right-hand side, missed it!
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a1
	TOPIXELS d0
	TOPIXELS d1
	cmp.w  d0, d1
	blt    @EndPlayFuzzl

	; If touching Fuzzl
	jsr    PHYS_TestEntityBoxIntersectBox
	tst.b  d0
	beq    @Charge

	; Touching Fuzzl, shunt it
	tst.b  SpriteObj_FlippedX(a0)
	beq    @ShuntRight
	move.l #-Scrap_FuzzlShuntImpulse, PhysicsObj_VelX(a1)
	bra    @ShuntLeft
	@ShuntRight:
	move.l #Scrap_FuzzlShuntImpulse, PhysicsObj_VelX(a1)
	@ShuntLeft:

	; Knock it out of player's hands
	PUSHL  a0
	move.l Player1, a0
	move.b #0x1, Player_DebounceInteract(a0)
	jsr    PlayerCancelInteract
	POPL   a0

	; Play Fuzzl bounce SFX
	PLAYSFX #SFX_FuzzlDrop

	@EndPlayFuzzl:
	
	; Clear Fuzzl
	move.l #0x0, Scrap_TargetFuzzl(a0)

	; Back to follow state
	jsr    CharacterCancelXMovement
	jsr    ScrapAIStart_Follow
	bra    @End
	
	@Charge:

	; Run towards Fuzzl
	jsr    CharacterMoveRight

	@End:

	POPL  a1

	rts