;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   monster.asm - Monster specific movement and mechanics
;==============================================================

MONSTER_STORES_COLOUR_POWER	equ 0

; ************************************
; Constants
; ************************************

Monster_Width	      equ 0x0090
Monster_Height	      equ 0x0058

Monster_MaxVelXWalk   equ 0x010000   ; Max X walking velocity
Monster_MaxVelXRun    equ 0x042000   ; Max X running velocity
Monster_MaxVelXAir    equ 0x04E000
Monster_MaxVelXRunTamed equ 0x04E000   ; Max X running velocity (when being ridden)
Monster_MaxVelYUp	  equ 0x060000   ; Max Y velocity up
Monster_MaxVelYDown	  equ 0x080000   ; Max Y velocity down
Monster_WalkToRunVel  equ 0x030000   ; Walk to run transition velocity
Monster_AccelWalk     equ 0x000200   ; Walking acceleration
Monster_AccelRun      equ 0x001600   ; Running acceleration
Monster_DecelIdle     equ 0x002000   ; Deceleration if left alone
Monster_DecelForced   equ 0x004000   ; Deceleration if input opposite direction
Monster_JumpVelX      equ 0x090000   ; Jump velocity impulse X
Monster_JumpVelY      equ 0x038000   ; Jump velocity impulse Y
Monster_JumpCancelVelLo equ 0x010000   ; Velocity to cancel jump min
Monster_JumpCancelVelHi equ Monster_MaxVelYUp   ; Velocity to cancel jump max
Monster_MaxGrabUpVel  equ 0x030000   ; Max up velocity character can grab a ledge (no limit on down vel)
Monster_Mass		  equ 0x0B

Monster_BoundsWidth		equ Monster_Width
Monster_BoundsHeight	equ (Monster_Height-0x40)
Monster_BoundsOffsetX	equ (Monster_Width/2)-(Monster_BoundsWidth/2)
Monster_BoundsOffsetY	equ (Monster_Height/2)-(Monster_BoundsHeight/2)

Monster_StepHeight	  equ 0x3
Monster_MinWallHeight equ 0x11				 ; High enough to avoid stones
Monster_ProbeFloorX	  equ (Monster_Width/2)  ; Floor detection probe position X
Monster_ProbeFloorY   equ (Monster_Height-8) ; Floor detection probe position Y
Monster_ProbeWallTop  equ 0x08
Monster_ProbeLedgeX	  equ 0x1F	   ; Ledge detection probe position X
Monster_ProbeLedgeY	  equ 0x02	   ; Ledge detection probe position Y

Monster_PlayerVisibilityBoxX	equ 0x2000
Monster_PlayerVisibilityBoxY	equ 0x0080
Monster_PlayerLostSightTime		equ 0x0180

Monster_RumbleSoundDist  	equ 0x0200
Monster_RumbleSoundDistSq	equ (Monster_RumbleSoundDist*Monster_RumbleSoundDist)

Monster_AlertDistance		equ 0x0090
Monster_AlertDistanceSq		equ (Monster_AlertDistance*Monster_AlertDistance)

Monster_MinChaseDistance	equ ((Monster_Width/2)*subpixels_per_pixel)
Monster_MaxChaseDistance	equ (screen_width*subpixels_per_pixel)
Monster_OutOfDistSpeedMul	equ 0x2

Monster_AttackMaxPlayerVel	equ 0x090000	; Don't attack if player is being flung using a flue/bounce pad, etc

Monster_GrowlDelay			equ 0x0030	; Delay between Nymn howling and Djakk responding when tamed

; Search state
Monster_SearchRandDistMax	equ 0x00FF	; Max distance for random X search pos (pixels)
Monster_SearchRandDelayMask	equ 0x007F	; Mask for random delay between walks
Monster_SearchRandDelayMin	equ 0x0018	; Min rand delay between walks
Monster_SearchRandDelayInit equ 0x0040  ; Initial delay for first walk
Monster_NearTargetDistance	equ (0x04*subpixels_per_pixel)

; Emerge palette lerp speed
Monster_EmergePalLerpSpeed  equ (0x1<<0x8)

; Attack damages
Monster_BiteDamage		equ 0xFF
Monster_SwipeDamage		equ 0xFF

; Event keyframes
Monster_AnimFrame_Bite	equ 0x2

; ************************************
; Palettes
; ************************************
MonsterPalettes:
	dc.l  palette_djakk_red		; Drained
	dc.l  palette_djakk_red		; Orange
	dc.l  palette_djakk_red		; Red
	dc.l  palette_djakk_blue	; Blue
	dc.l  palette_djakk_green	; Green
	dc.l  palette_djakk_yellow	; Yellow

; ************************************
; Monster types
; ************************************
MonsterType_Djakk		equ 0x0
MonsterType_Elder		equ 0x1

; ************************************
; States
; ************************************
MonsterState_Dead		equ 0x0
MonsterState_InCave		equ 0x1
MonsterState_InCage		equ 0x2
MonsterState_Emerging	equ 0x3
MonsterState_Roaring	equ 0x4
MonsterState_Chasing	equ 0x5
MonsterState_Attacking	equ 0x6
MonsterState_Wandering	equ 0x7
MonsterState_Tamed		equ 0x8
MonsterState_Bucking	equ 0x9

; ************************************
; Music states
; ************************************
MonsterMusicState_Off		equ 0x0
MonsterMusicState_Chase		equ 0x1
MonsterMusicState_Search	equ 0x2

; ************************************
; Animations
; ************************************
MonsterAnimIdx_Eyes		equ 0
MonsterAnimIdx_Bite		equ 1
MonsterAnimIdx_Roar		equ 2
MonsterAnimIdx_Buck		equ 3
; -------------------------------
Monster_NumAnims		equ 4

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;--------------------------
Monster_Animations	   rs.b (Animation_Struct_Size*Monster_NumAnims)
Monster_SearchTargetX  rs.l 1
Monster_SearchDelay	   rs.w 1
Monster_LoseSightTimer rs.w 1
Monster_GrowlTimer     rs.w 1
Monster_CatchUpSpeedMul rs.w 1
Monster_Type           rs.b 1
Monster_Colour         rs.b 1
Monster_State          rs.b 1
Monster_DoIntro		   rs.b 1	; Do intro sequence when player approaches (lerp camera)
Monster_BlockPlayerCtrl rs.b 1	; Block player input during emerge/camera lerp stage
Monster_BlockingCtrl   rs.b 1	; Is currently blocking player control
Monster_CatchingUp     rs.b 1
Monster_RumblePlayed   rs.b 1
Monster_MusicState     rs.b 1
Monster_LerpPalette    rs.b 1
Monster_ManualGfxLoad  rs.b 1	; Don't load gfx
;----------------------------
Monster_Struct_Pad     rs.b 3
Monster_Struct_Size    rs.b 0

; ************************************
; Subroutines
; ************************************
MonsterInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterInit
	
	; Set type
	ori.l  #entity_type_monster, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Monster
	
	; Set update and render routines
	move.l #MonsterUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	move.l #MonsterSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default properties
	move.w  #Monster_Width, Entity_Width(a0)
	move.w  #Monster_Height, Entity_Height(a0)
	move.l  #Monster_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0)
	move.l  #Monster_MaxVelXAir, PhysicsObj_MaxVelAirX(a0)
	move.l  #Monster_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Monster_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #Monster_DecelIdle, PhysicsObj_DecelX(a0)
	move.w  #Monster_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Monster_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Monster_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w  #Monster_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #0x08, PhysicsObj_WallProbeLeft(a0)
	move.w  #Monster_Width-0x08, PhysicsObj_WallProbeRight(a0)
	move.w  #Monster_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Monster_MinWallHeight, PhysicsObj_MinWallHeight(a0)
	move.b  #Monster_Mass, PhysicsObj_Mass(a0)
	move.b  #0x0, PhysicsObj_CollideCeilings(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	
	move.l  #Monster_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.l  #Monster_MaxVelXWalk, Character_MaxVelXWater(a0)
	move.l  #Monster_MaxVelXRun, Character_MaxVelXRun(a0)
	move.l  #Monster_WalkToRunVel, Character_WalkToRunVel(a0)
	move.w  #Monster_AccelWalk, Character_AccelWalk(a0)
	move.w  #Monster_AccelRun, Character_AccelRun(a0)
	move.w  #Monster_DecelIdle, Character_DecelIdle(a0)
	move.w  #Monster_DecelForced, Character_DecelForced(a0)
	move.l  #Monster_JumpVelX, Character_JumpVelX(a0)
	move.l  #Monster_JumpVelY, Character_JumpVelY(a0)
	move.l  #Monster_JumpCancelVelLo, Character_JumpCancelVelLo(a0)
	move.l  #Monster_JumpCancelVelHi, Character_JumpCancelVelHi(a0)
	move.l  #Monster_MaxGrabUpVel, Character_MaxGrabUpVel(a0)
	move.w  #Monster_ProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #Monster_ProbeLedgeY, Character_ProbeLedgeY(a0)

	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.b  #ColourDrained, Monster_Colour(a0)
	move.l  #0x0, Monster_SearchTargetX(a0)
	move.w  #0x0, Monster_SearchDelay(a0)
	move.w  #0x0, Monster_LoseSightTimer(a0)
	move.w  #0x0, Monster_GrowlTimer(a0)
	move.w  #Monster_OutOfDistSpeedMul, Monster_CatchUpSpeedMul(a0)
	move.b  #MonsterType_Djakk, Monster_Type(a0)
	move.b  #0x1, Monster_BlockPlayerCtrl(a0)
	move.b  #0x0, Monster_BlockingCtrl(a0)
	move.b  #0x0, Monster_CatchingUp(a0)
	move.b  #0x0, Monster_RumblePlayed(a0)
	move.b  #0x1, Monster_DoIntro(a0)
	move.b  #0x1, Monster_LerpPalette(a0)
	move.b  #0x0, Monster_ManualGfxLoad(a0)
	move.b  #MonsterMusicState_Off, Monster_MusicState(a0)

	; Setup collision bounds
	move.w  #Monster_BoundsOffsetX, PhysicsObj_BoundsLeft(a0)
	move.w  #Monster_BoundsOffsetY, PhysicsObj_BoundsTop(a0)
	move.w  #Monster_BoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #Monster_BoundsHeight, PhysicsObj_BoundsHeight(a0)

	;==============================================================
	
	; Setup default SFX
	IFND DEBUG
	lea    Character_SFX(a0), a2
	
	; Land
	lea    CharacterSFXIdx_Land*size_long(a2), a3
	move.l #SFX_Land, (a3)

	; Water splash
	lea    CharacterSFXIdx_WaterSplash*size_long(a2), a3
	move.l #SFX_Water_Splash1, (a3)
	ENDIF

	rts

MonsterLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.b  Monster_Type(a0), d0
	cmp.b   #MonsterType_Djakk, d0
	beq     @Djakk
	cmp.b   #MonsterType_Elder, d0
	beq     @Elder

	;==============================================================

	@Djakk:

	; Load sprite
	tst.b   Monster_ManualGfxLoad(a0)
	bne     @ManualLoad
	SPRITE_LOAD_DEFAULT djakk,idle,PaletteId_Monster,0x0
	@ManualLoad:

	; Setup default character animations
	ANIM_LOAD_DEFAULT djakk,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT djakk,death,death,Character_Animations,CharacterAnimIdx_Dead,1,1,0
	ANIM_LOAD_DEFAULT djakk,run,run,Character_Animations,CharacterAnimIdx_Run,1,0,0
	ANIM_LOAD_DEFAULT djakk,walk,walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT djakk,jump,jump,Character_Animations,CharacterAnimIdx_Jump,0,0,0

	; Setup bespoke character animations
	ANIM_LOAD_DEFAULT djakk,bite,bite,Monster_Animations,MonsterAnimIdx_Bite,0,1,0
	ANIM_LOAD_DEFAULT djakk,roar,roar,Monster_Animations,MonsterAnimIdx_Roar,0,1,0
	ANIM_LOAD_DEFAULT djakk,throw,throw,Monster_Animations,MonsterAnimIdx_Buck,0,1,0

	bra     @End

	;==============================================================

	@Elder:
	
	; Load sprite
	tst.b   Monster_ManualGfxLoad(a0)
	bne     @ManualLoadElder
	SPRITE_LOAD_DEFAULT elder,idle,PaletteId_Monster,0x0
	@ManualLoadElder:

	; Setup default character animations
	ANIM_LOAD_DEFAULT elder,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT elder,death,death,Character_Animations,CharacterAnimIdx_Dead,1,1,0
	ANIM_LOAD_DEFAULT elder,run,run,Character_Animations,CharacterAnimIdx_Run,1,0,0
	ANIM_LOAD_DEFAULT elder,walk,walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0

	; Setup bespoke character animations
	ANIM_LOAD_DEFAULT elder,bite,bite,Monster_Animations,MonsterAnimIdx_Bite,0,1,0
	ANIM_LOAD_DEFAULT elder,roar,roar,Monster_Animations,MonsterAnimIdx_Roar,0,1,0

	bra     @End

	;==============================================================

	@End:
	
	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	; Begin initial state
	jsr    MonsterStartWaitForPlayer

	rts

MonsterUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  Entity_Active(a0)
	beq    @Inactive
	
	; If dead, but state not yet set, set it
	; TODO: bit of a hack, may need a vtable for Die() in Character
	tst.b  Character_Dead(a0)
	beq    @NotDead
	cmp.b  #MonsterState_Dead, Monster_State(a0)
	beq    @DeadSet
	jsr    MonsterDie
	@NotDead:
	@DeadSet:

	; Determine state
	move.b Monster_State(a0), d0

	cmp.b #MonsterState_Dead, d0
	beq   @Dead
	cmp.b #MonsterState_InCave, d0
	beq   @InCave
	cmp.b #MonsterState_InCage, d0
	beq   @InCage
	cmp.b #MonsterState_Emerging, d0
	beq   @Emerging
	cmp.b #MonsterState_Roaring, d0
	beq   @Roaring
	cmp.b #MonsterState_Chasing, d0
	beq   @Chasing
	cmp.b #MonsterState_Attacking, d0
	beq   @Attacking
	cmp.b #MonsterState_Wandering, d0
	beq   @Wandering
	cmp.b #MonsterState_Tamed, d0
	beq   @Tamed
	cmp.b #MonsterState_Bucking, d0
	beq   @Bucking

	; ************************************
	; In cave
	; ************************************
	@InCave:

	; Wait for player
	jsr MonsterUpdateWaitForPlayer
	bra @EndStateMachine

	; ************************************
	; In cage
	; ************************************
	@InCage:

	; Do nothing until cage raised
	bra @EndStateMachine
	
	; ************************************
	; Emerging from cave
	; ************************************
	@Emerging:

	; Update palette lerp
	jsr MonsterUpdateEmergeFromCave
	bra @EndStateMachine
	
	; ************************************
	; Roaring at player
	; ************************************
	@Roaring:

	; Update roar state
	jsr MonsterUpdateRoaring
	bra @EndStateMachine

	; ************************************
	; Tracking player
	; ************************************
	@Chasing:

	; Track player
	jsr MonsterUpdateTrackPlayer
	bra @EndStateMachine

	; ************************************
	; Attacking
	; ************************************
	@Attacking:

	; Attack
	jsr MonsterUpdateBite
	bra @EndStateMachine
	
	; ************************************
	; Searching
	; ************************************
	@Wandering:

	; Wander around
	jsr MonsterUpdateSearchForPlayer
	bra @EndStateMachine
	
	; ************************************
	; Tamed
	; ************************************
	@Tamed:

	; Under player control
	jsr MonsterUpdateTamed
	bra @EndStateMachine

	; ************************************
	; Bucking
	; ************************************
	@Bucking:

	; Wait for animation
	jsr MonsterUpdateBucking
	bra @EndStateMachine

	; ************************************
	; Dead
	; ************************************
	@Dead:
	
	; Make sure animation control is returned to the character
	move.b #0x1, Character_UpdateAnim(a0)

	; End Music
	cmp.b  #MonsterMusicState_Off, Monster_MusicState(a0)
	beq    @NotPlaying
	move.b #-1, d0
	jsr    SND_BeginFadeTrack
	move.b #MonsterMusicState_Off, Monster_MusicState(a0)
	@NotPlaying:
	
	@EndStateMachine:
	@Inactive:
	
	; Base functionality
	jsr CharacterUpdate
	
	rts
	
MonsterSerialise:
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
	SAVEB Monster_State(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	LOADB Monster_State(a0)
	
	;==============================================================
	
	@End:
	
	rts
	
MonsterCheckPlayerVisible:
	; d0 --- Return value
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1
	move.l (Player1), a2
	
	; Check not cloaked
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @PlayerCloaked
	
	; Get monster visibility bounds X
	move.w Entity_WorldPosX(a0), d1	;  (top word = integer part)
	move.w d1, d2
	addi.w #(Monster_Width/2)-(Monster_PlayerVisibilityBoxX/2), d1
	addi.w #(Monster_Width/2)+(Monster_PlayerVisibilityBoxX/2), d2
	
	swap   d1
	swap   d2
	
	; Get monster visibility bounds Y
	move.w Entity_WorldPosY(a0), d3	;  (top word = integer part)
	move.w d3, d1
	move.w d3, d2
	addi.w #(Monster_Height/2)-(Monster_PlayerVisibilityBoxY/2), d1
	addi.w #(Monster_Height/2)+(Monster_PlayerVisibilityBoxY/2), d2
	
	; Get player centre X
	ENTITY_GETCENTREX d3, a2
	TOPIXELS d3
	swap   d3
	
	; Get player centre Y
	ENTITY_GETCENTREY d4, a2
	TOPIXELS d4
	move.w d4, d3
	
	jsr    PHYS_TestPointInsideBox
	
	tst.b  d0
	beq    @NotSeen
	
	; Set as last found player pos
	ENTITY_GETCENTREX d0, a2
	move.l d0, Monster_SearchTargetX(a0)
	
	; Clear lost sight timer
	cmp.w  #-1, Monster_LoseSightTimer(a0)
	beq    @NoTimer
	move.w #0x0, Monster_LoseSightTimer(a0)

	; Set return value
	move.b  #0x1, d0
	
	bra    @End
	
	@PlayerCloaked:
	@NotSeen:
	
	; Increment lost timer
	cmp.w  #-1, Monster_LoseSightTimer(a0)
	beq    @NoTimer
	addq.w #0x1, Monster_LoseSightTimer(a0)
	
	@NoTimer:

	; Set return value
	move.b  #0x0, d0

	@End:
	
	rts

MonsterCheckBarrier:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHM  a0-a2

	; Check for markers
	LIST_GET_HEAD AIMarkers,a2	; Get list head
	@MarkerLp:					; For all markers in list
	cmp.l  #0x0, a2
	beq    @ListEnd

	; Check bounds
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NextMarker
	
	; Found, check heading in right direction
	ENTITY_GETCENTREX d1, a0
	ENTITY_GETCENTREX d2, a2
	tst.w  PhysicsObj_AccelX(a0)
	beq    @NextMarker
	bgt    @HeadingRight
	cmp.l  d1, d2
	ble    @HitMarker
	bra    @NextMarker
	@HeadingRight:
	cmp.l  d1, d2
	ble    @NextMarker

	@HitMarker:
	move.b #0x1, d0

	; Just in case...
	move.l #0x0, PhysicsObj_VelX(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)

	bra    @Found

	@NextMarker:
	
	LIST_GET_NEXT AIMarkers,a2,a2	; Get next ptr
	bra    @MarkerLp				; Loop
	
	@ListEnd:

	; Not found
	move.b #0x0, d0

	@Found:

	POPM   a0-a2

	rts

MonsterDie:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set dead state
	move.b  #MonsterState_Dead, Monster_State(a0)

	; TODO: Start death anim

	; Set initial power colour
	jsr    MonsterRestoreColourPower

	rts

MonsterRoar:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start roar animation
	move.l a1, -(sp)
	lea    Monster_Animations+(MonsterAnimIdx_Roar*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	move.l #0x0, AnimObj_AnimSubFrame(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Dirty(a0)
	move.l (sp)+, a1
	
	; Start roar SFX
	move.b Monster_Type(a0), d0
	cmp.b  #MonsterType_Djakk, d0
	beq    @Djakk
	cmp.b  #MonsterType_Elder, d0
	beq    @Elder

	@Djakk:
	PLAYSFX #SFX_Djakk_Roar
	bra    @EndSFX

	@Elder:
	PLAYSFX #SFX_Elder_Roar
	bra    @EndSFX

	@EndSFX:

	rts

MonsterTakeColourPower:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IF MONSTER_STORES_COLOUR_POWER
	
	; Change to drained colour
	PUSHM  d0/d3
	PUSHM  a0/a1

	move.l (MonsterPalettes+(ColourDrained*size_long)), a0	; Get new palette address
	move.l #PaletteId_Monster, d0	; Get destination palette ID
	move.l #Player1ColourChangeSpeed, d1	; Get switch speed
	move.b #0x1, d2					; Ticks per update
	move.b #0x0, d3					; Range min
	move.b #0xE, d4					; Range max
	jsr    GameScenePaletteFadeTo		; Begin palette lerp
	
	POPM   a0/a1
	POPM   d0/d3
	
	ENDIF

	rts

MonsterRestoreColourPower:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	IF MONSTER_STORES_COLOUR_POWER

	; Restore original colour
	PUSHM  d0/d3
	PUSHM  a0/a1

	lea    MonsterPalettes, a1		; Get palette array	
	clr.l  d0
	move.b Monster_Colour(a0), d0	; Get colour type
	lsl.l  #0x2, d0					; To address offset
	add.l  d0, a1					
	move.l (a1), a0					; Get new palette address
	move.l #PaletteId_Monster, d0	; Get destination palette ID
	move.l #Player1ColourChangeSpeed, d1	; Get switch speed
	move.b #0x1, d2					; Ticks per update
	move.b #0x0, d3					; Range min
	move.b #0xE, d4					; Range max
	jsr    GameScenePaletteFadeTo		; Begin palette lerp
	
	POPM   a0/a1
	POPM   d0/d3
	
	ENDIF
	
	rts
	
MonsterSetInCage:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.b #0x0, Monster_DoIntro(a0)
	move.b #MonsterState_InCage, Monster_State(a0)
	
	PUSHL  a1
	lea    Character_Animations+(CharacterAnimIdx_Idle*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	rts
MonsterStartWaitForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set in cave state
	move.b  #MonsterState_InCave, Monster_State(a0)

	; Start eye tracking animation
	move.l a1, -(sp)
	lea    Monster_Animations+(MonsterAnimIdx_Eyes*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	move.l (sp)+, a1

	; Manually control anim
	move.b #0x0, Character_UpdateAnim(a0)
	
	rts
	
MonsterUpdateWaitForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get player 1
	move.l (Player1), a2
	
	; If player dead, don't bother
	tst.b  Character_Health(a2)
	beq    @PlayerDead
	
	; If player cloaked, don't bother
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @PlayerCloaked

	; Get distance to player
	move.l a1, -(sp)
	move.l (Player1), a1
	jsr    PHYS_EntityDistSq
	move.l (sp)+, a1
	
	; Check if within rumble sound dist
	cmp.l  #Monster_RumbleSoundDistSq, d0
	bgt    @OutOfRumbleSoundRange
	
	; If not already playing, begin playback
	tst.b  Monster_RumblePlayed(a0)
	bne    @Playing
	
	PUSHM  a0/d0-d1
	lea    track_bgm_monsterbass, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1
	
	; Set played
	move.b #0x1, Monster_RumblePlayed(a0)
	
	@Playing:
	
	; Adjust volume based on distance
	
	@OutOfRumbleSoundRange:

	; Check if within alert dist
	cmp.l #Monster_AlertDistanceSq, d0
	bgt   @OutOfPlayerRange

	; Within range
	tst.b Monster_DoIntro(a0)
	beq   @RoarState
	jsr   MonsterStartEmergeFromCave	; Start emerge sequence
	bra   @EndEmergeState
	@RoarState:
	jsr   MonsterStartRoaring			; Skip straight to roar state
	@EndEmergeState:

	@PlayerDead:
	@PlayerCloaked:
	@OutOfPlayerRange:

	rts
	
MonsterStartEmergeFromCave:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set emerge state
	move.b #MonsterState_Emerging, Monster_State(a0)

	; Update when out of view
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	
	; TODO: Use cutscene code
	tst.b  Monster_BlockPlayerCtrl(a0)
	beq    @NoBlockCtrl
	move.l (Player1), a2

	; Block player control
	move.b #0x0, Player_ControlEnabled(a2)

	; Cut player X velocity
	move.l #0x0, PhysicsObj_VelX(a2)
	move.w #0x0, PhysicsObj_AccelX(a2)

	@NoBlockCtrl:

	move.b #0x1, Monster_BlockingCtrl(a0)

	; Lerp camera
	move.l (Player1), CameraTargetLerpSource
	move.l a0, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #0x10, CameraTargetLerpSpeed
	
	; Start palette lerp
	tst.b  Monster_LerpPalette(a0)
	beq    @NoPaletteLerp
	move.l a0, -(sp)
	lea    palette_djakk, a0
	move.l #PaletteId_Monster, d0
	move.w #Monster_EmergePalLerpSpeed, d1
	move.b #0x1, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    GameScenePaletteFadeTo
	move.l (sp)+, a0
	@NoPaletteLerp:

	rts
	
MonsterUpdateEmergeFromCave:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Wait for palette lerp finish
	lea    PaletteLerp_Array+(PaletteId_Monster*PaletteLerp_Struct_Size), a2
	tst.w  PaletteLerp_UpdateSpeed(a2)
	bne    @Lerping
	
	; Start roaring at player
	jsr    MonsterStartRoaring
	
	@Lerping:

	rts
	
MonsterStartRoaring:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set roaring state
	move.b #MonsterState_Roaring, Monster_State(a0)

	; Update when out of view
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	
	; Turn to face player
	move.l (Player1), a2
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREX d1, a2
	cmp.l  d0, d1
	bgt    @RightOfPlayer
	move.b #0x1, SpriteObj_FlippedX(a0)
	bra    @EndFlip
	@RightOfPlayer:
	move.b #0x0, SpriteObj_FlippedX(a0)
	@EndFlip:
	
	; Roar
	jsr    MonsterRoar

	; Manually control anim
	move.b #0x0, Character_UpdateAnim(a0)
	
	rts
	
MonsterUpdateRoaring:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Attack if bounds intersect
	PUSHL  a1
	move.l Player1, a1
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	POPL   a1
	
	tst.b  d0
	beq    @NoIntersect
	
	; Attack and bail out of state
	jsr    MonsterStartBite
	bra    @End

	@NoIntersect:
	
	; Check if anim finished
	tst.b  AnimObj_Playing(a0)
	bne    @AnimPlaying
	
	; Finish mini-cutscene if playing (release player control and camera)
	tst.b  Monster_BlockingCtrl(a0)
	beq    @NotBlockingPlayerCtrl
	
	move.l (Player1), a2
	move.b #0x1, Player_ControlEnabled(a2)
	move.l a0, CameraTargetLerpSource
	move.l (Player1), CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #0x10, CameraTargetLerpSpeed
	
	move.b #0x0, Monster_BlockingCtrl(a0)
	
	@NotBlockingPlayerCtrl:
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Back to chase state
	jsr    MonsterStartTrackPlayer
	
	@AnimPlaying:
	@End:
	
	rts
	
MonsterStartSearchForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set wandering state
	move.b  #MonsterState_Wandering, Monster_State(a0)
	
	; Start walking
	move.b  #Character_WalkGeneral, d2
	jsr     CharacterPreventRun
	
	; Give anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Set initial delay before first walk
	move.w #Monster_SearchRandDelayInit, Monster_SearchDelay(a0)

	; Start search theme (if player not dead)
	move.l (Player1), a2
	tst.b  Character_Dead(a2)
	bne    @PlayerDead
	cmp.b  #MonsterMusicState_Search, Monster_MusicState(a0)
	beq    @TrackPlaying
	PUSHM  a0/d0-d1
	lea    track_bgm_boss1_search, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1
	move.b #MonsterMusicState_Search, Monster_MusicState(a0)
	@PlayerDead:
	@TrackPlaying:
	
	rts

MonsterUpdateSearchForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1 addr
	move.l (Player1), a2
	
	; If player dead, search around
	tst.b  Character_Health(a2)
	beq    @Searching
	
	; If player inactive, search around
	tst.b  Entity_Active(a2)
	beq    @Searching
	
	; If player is cloaked, search around
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @Searching
	
	; Check if player is within tracking window
	jsr    MonsterCheckPlayerVisible
	tst.b  d0
	beq    @Searching
	
	; Player visible, roar and chase
	jsr    MonsterStartRoaring
	bra    @End
	
	@Searching:
	
	; If we have a target X
	move.l Monster_SearchTargetX(a0), d0
	tst.l  d0
	bne    @HasTargetX
	
	; Get a random target X (-255 - 255)
	jsr    RND_GenerateLong								; Rand long
	andi.l #0xFFFF, d0							; Avoid overflow
	divu   #(Monster_SearchRandDistMax*2), d0	; Div / max*2
	clr.w  d0									; Clear exponent
	swap   d0									; Remainder to lower word (0 - 512)
	subi.w #Monster_SearchRandDistMax, d0		; Shift down to -255 - 255
	TOSUBPIXELS d0								; To subpixels
	
	; Add min dist
	move.l  #Monster_NearTargetDistance, d1
	tst.l  d0								; If rand target negative
	bgt    @PosTarget
	neg.l  d1									; Make min dist negative
	@PosTarget:
	add.l  d1, d0
	
	; Add current X pos
	add.l  Entity_WorldPosX(a0), d0
	
	; Clamp to screen bounds
	tst.l  d0								; Clamp screen left
	bgt    @NoClampLeft
	move.l #0x0, d0
	@NoClampLeft:
	clr.l  d1
	move.w Level_MapWidth(a1), d1				; Clamp screen right
	TILES2PIXELS d1								; Tiles to pixels
	TOSUBPIXELS d1								; Pixels to subpixels
	cmp.l  d1, d0
	blt    @NoClampRight
	move.l d1, d0
	@NoClampRight:
	
	; Set new target X
	move.l d0, Monster_SearchTargetX(a0)
	
	@HasTargetX:
	
	; Check if in delay state
	move.w Monster_SearchDelay(a0), d1
	tst.w  d1
	beq    @Move
	
	; Count down delay
	subq.w  #0x1, d1
	move.w d1, Monster_SearchDelay(a0)
	bra    @End
	
	@Move:
	
	; Check if hit a wall
	PHYSICS_HITFACINGWALL a0
	tst.b  d0
	bne    @HitWall

	; Check if hit an AI barrier
	jsr    MonsterCheckBarrier
	tst.b  d0
	bne    @HitWall
	
	; Check if near target
	ENTITY_GETCENTREX d1, a0
	sub.l  d1, d0							; Get distance to target
	move.l d0, d3
	tst.l  d0							; If negative
	bgt    @Pos
	neg.l  d0								; Make positive
	@Pos:
	cmp.l  #Monster_NearTargetDistance, d0	; Test distance
	blt    @ReachedTarget
	
	; Move towards target X
	tst.l  d3
	bgt    @MoveRight
	
	@MoveLeft:
	jsr    CharacterMoveLeft
	bra    @End
	
	@MoveRight:
	jsr    CharacterMoveRight
	bra    @End
	
	@HitWall:
	@ReachedTarget:
	
	; Target reached or wall hit, stop moving
	jsr    CharacterCancelXMovement
	
	; Randomise delay timer
	jsr    RND_GenerateLong
	andi.l #Monster_SearchRandDelayMask, d0
	addi.w #Monster_SearchRandDelayMin, d0
	move.w d0, Monster_SearchDelay(a0)
	
	; Reset target pos
	move.l #0x0, Monster_SearchTargetX(a0)
	
	@End:
	
	rts
	
MonsterStartTrackPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set chase state
	move.b #MonsterState_Chasing, Monster_State(a0)
	
	; Start running
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)

	; Start chase theme
	cmp.b  #MonsterMusicState_Chase, Monster_MusicState(a0)
	beq    @TrackPlaying
	PUSHM  a0/d0-d1
	lea    track_bgm_boss1_chase, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1
	move.b #MonsterMusicState_Chase, Monster_MusicState(a0)
	@TrackPlaying:

	rts

MonsterUpdateTrackPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1 addr
	move.l (Player1), a2
	
	; If player dead, don't bother
	tst.b  Character_Health(a2)
	beq    @PlayerDead
	
	; If player inactive, don't bother
	tst.b  Entity_Active(a2)
	beq    @PlayerInactive
	
	; If player is cloaked, don't bother
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @PlayerCloaked
	
	; If player is being flung using a flue/bounce pad, don't bother
	cmp.l  #Monster_AttackMaxPlayerVel, PhysicsObj_VelY(a2)
	bge    @PlayerBeingFlung

	; Check if player is within tracking window
	jsr    MonsterCheckPlayerVisible
	
	; Check if lost player timeout reached (if not Elder)
	cmp.b  #MonsterType_Elder, Monster_Type(a0)
	beq    @NoTimer
	cmp.w  #-1, Monster_LoseSightTimer(a0)
	beq    @NoTimer
	cmp.w  #Monster_PlayerLostSightTime, Monster_LoseSightTimer(a0)
	bge    @LostPlayer
	@NoTimer:
	
	; Check if hit a wall
	PHYSICS_HITFACINGWALL a0
	tst.b  d0
	bne    @HitWall

	; Check if hit an AI barrier
	jsr    MonsterCheckBarrier
	tst.b  d0
	bne    @HitWall
	
	;==============================================================
	
	; Get player + monster pos
	ENTITY_GETCENTREX d0, a0				; Get monster centre
	ENTITY_GETCENTREX d1, a2				; Get player centre
	
	; Speed up if out of min chase dist
	sub.l  d0, d1							; Calc distance
	
	; If out of view, check max chase dist
	tst.b  SpriteObj_SpriteLinked(a0)
	bne    @InView
	
	; Check if outside max chase distance
	cmp.l  #Monster_MaxChaseDistance, d1
	bgt    @OutsideMaxChaseDistL
	cmp.l  #-Monster_MaxChaseDistance, d1
	blt    @OutsideMaxChaseDistR
	bra    @WithinMaxChaseDist
	
	@OutsideMaxChaseDistL:
	@OutsideMaxChaseDistR:
	
	; Outside max chase dist, multiply speed to catch up
	tst.b  Monster_CatchingUp(a0)
	bne    @SpeedBoostApplied
	move.w Character_MaxVelXRun(a0), d0		; (top word = integer part)
	mulu.w Monster_CatchUpSpeedMul(a0), d0	; Mul max run velocity
	TOSUBPIXELS d0
	move.l d0, Character_MaxVelXRun(a0)		; Set new max velocity
	move.b #0x1, Monster_CatchingUp(a0)		; Set catching up
	bra    @EndMaxDistCheck
	
	@InView:
	@WithinMaxChaseDist:

	; Within max chase dist, reset catchup speed if applied
	tst.b  Monster_CatchingUp(a0)
	beq    @EndMaxDistCheck
	move.l #Monster_MaxVelXRun, Character_MaxVelXRun(a0) ; Reset max run velocity
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	bgt    @VelPositive
	move.l #-Monster_MaxVelXRun, PhysicsObj_VelX(a0)
	bra    @EndVelClamp
	@VelPositive:
	move.l #Monster_MaxVelXRun, PhysicsObj_VelX(a0)
	@EndVelClamp:
	move.b #0x0, Monster_CatchingUp(a0)

	@EndMaxDistCheck:
	@SpeedBoostApplied:
	
	;==============================================================
	
	; Check if within min chase distance
	cmp.l  #Monster_MinChaseDistance, d1
	bgt    @OutsideMinChaseDist
	cmp.l  #-Monster_MinChaseDistance, d1
	blt    @OutsideMinChaseDist
	
	; Within min chase range, stop chasing
	move.b #Character_WalkGeneral, d2
	jsr    CharacterPreventRun
	jsr    CharacterCancelXMovement

	; Attack if bounds intersect
	PUSHL  a1
	move.l a2, a1
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	POPL   a1
	
	tst.b  d0
	beq    @End
	
	; Attack
	jsr    MonsterStartBite
	bra    @End
	
	@OutsideMinChaseDist:
	
	; Outside min chase distance, continue chasing
	tst.l  d1
	blt    @RightOfPlayer
	
	@LeftOfPlayer:

	; Run towards player
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	jsr    CharacterMoveRight
	bra    @End

	@RightOfPlayer:

	; Run towards player
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	jsr    CharacterMoveLeft
	bra    @End
	
	;==============================================================

	@PlayerDead:
	@LostPlayer:
	
	; Lost player, or player dead, back to search state
	jsr    MonsterStartSearchForPlayer
	bra    @End
	
	@PlayerInactive:
	@PlayerBeingFlung:
	@HitWall:
	@PlayerCloaked:
	
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	jsr    CharacterCancelXMovement

	@End:

	rts

MonsterStartBite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set attack state
	move.b #MonsterState_Attacking, Monster_State(a0)

	; Start bite animation
	move.l a1, -(sp)
	lea    Monster_Animations+(MonsterAnimIdx_Bite*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	move.l (sp)+, a1

	; Manually control anim
	move.b #0x0, Character_UpdateAnim(a0)
	
	; Start bite SFX
	PLAYSFX #SFX_Djakk_Bite

	rts

MonsterUpdateBite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Check if end frame reached
	move.l AnimObj_AnimSubframe(a0), d0; Get anim subframe
	lsr.l  #0x8, d0 					; Subframes to frames
	cmp.b  #actor_djakk_sheet_bite_anim_bite_numframes, d0
	beq    @AnimFinished
	
	; Check if attack frame reached
	cmp.b  #Monster_AnimFrame_Bite, d0
	bne    @End
	
	; On attack frame, check if player still in range on attack frame
	PUSHL  a1
	move.l (Player1), a1
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	POPL   a1
	
	tst.b  d0
	beq    @OutOfHitBox
	
	; Deal damage to player
	PUSHL  a0
	move.l (Player1), a0
	move.b #Monster_BiteDamage, d0
	jsr    CharacterDealDamage

	; If player dead, stop attack music
	tst.b  Character_Dead(a0)
	beq    @PlayerNotDead
	cmp.b  #MonsterMusicState_Off, Monster_MusicState(a0)
	beq    @NotPlaying
	move.b #-1, d0
	jsr    SND_BeginFadeTrack
	move.b #MonsterMusicState_Off, Monster_MusicState(a0)
	@NotPlaying:
	@PlayerNotDead:
	POPL   a0
	
	bra    @End

	@AnimFinished:
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Back to chase state
	jsr    MonsterStartTrackPlayer
	
	@OutOfHitBox:
	@End:

	rts
	
MonsterStartTamed:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set tamed state
	move.b #MonsterState_Tamed, Monster_State(a0)
	
	; Start palette lerp
	;move.l a0, -(sp)
	;lea    palette_djakk_blue, a0
	;move.l #PaletteId_Monster, d0
	;move.w #Monster_EmergePalLerpSpeed, d1
	;move.b #0x1, d2
	;move.b #0x0, d3
	;move.b #0xF, d4
	;jsr    GameScenePaletteFadeTo
	;move.l (sp)+, a0

	; Start growl timer
	move.w #Monster_GrowlDelay, Monster_GrowlTimer(a0)
	
	; Stand still
	jsr    CharacterCancelXMovement

	; Reset catchup speed
	move.l #Monster_MaxVelXRun, Character_MaxVelXRun(a0)

	; Allow running
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)

	; End chase music
	cmp.b  #MonsterMusicState_Off, Monster_MusicState(a0)
	beq    @NotPlaying
	move.b #-1, d0
	jsr    SND_BeginFadeTrack
	move.b #MonsterMusicState_Off, Monster_MusicState(a0)
	@NotPlaying:

	rts

MonsterUpdateTamed:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Update growl timer
	move.w Monster_GrowlTimer(a0), d0
	tst.w  d0
	beq    @TimerNotRunning
	subq.w  #0x1, d0
	move.w d0, Monster_GrowlTimer(a0)
	tst.w  d0
	bne    @TimerStillRunning
	jsr    MonsterRoar
	@TimerStillRunning:
	@TimerNotRunning:

	rts

MonsterStartBucking:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set buck state
	move.b #MonsterState_Bucking, Monster_State(a0)

	; Start buck animation
	move.l a1, -(sp)
	lea    Monster_Animations+(MonsterAnimIdx_Buck*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	move.l #0x0, AnimObj_AnimSubFrame(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Dirty(a0)
	move.l (sp)+, a1

	; Take anim control
	move.b #0x0, Character_UpdateAnim(a0)

	; Override run speed
	move.l #Monster_MaxVelXRunTamed, Character_MaxVelXRun(a0)

	rts

MonsterUpdateBucking:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Check if anim finished
	tst.b  AnimObj_Playing(a0)
	bne    @AnimPlaying
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)

	; Reset run speed
	move.l #Monster_MaxVelXRun, Character_MaxVelXRun(a0)
	
	; Roar and chase
	jsr    MonsterStartRoaring
	
	@AnimPlaying:
	
	rts