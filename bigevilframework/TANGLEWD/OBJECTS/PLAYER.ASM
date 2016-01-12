;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   player.asm - Player specific movement and mechanics
;==============================================================

; ************************************
; Constants
; ************************************
Player_MaxEntities equ 0x1

; Player dimensions
Player1Width	  equ 0x0038
Player1Height	  equ 0x0030

; Player starting positions - TODO: From spawn point
Player1StartPosScreenX equ (screen_width/2)-(Player1Width/2)
Player1StartPosScreenY equ GroundHeightScreen-Player1Height-0x80
Player1StartPosWorldX  equ Player1StartPosScreenX*SubpixelsPerPixel
Player1StartPosWorldY  equ Player1StartPosScreenY*SubpixelsPerPixel

; Player acceleration/deceleration
Player1AccelWalk   equ 0x0004 ; Player 1 walking acceleration
Player1AccelRun    equ 0x0008 ; Player 1 running acceleration
Player1DecelIdle   equ 0x0010 ; Player 1 deceleration if left alone
Player1DecelForced equ 0x0020 ; Player 1 deceleration if input opposite direction

; Player max velocities (all values must be divisors of SubpixelsPerPixel)
Player1MaxVelXWalk equ 0x01*SubpixelsPerPixel  ; Player 1 max X walking velocity
Player1MaxVelXRun  equ 0x03*SubpixelsPerPixel  ; Player 1 max X running velocity
Player1MaxVelYUp   equ 0x06*SubpixelsPerPixel  ; Player 1 max Y velocity up
Player1MaxVelYDown equ 0x06*SubpixelsPerPixel  ; Player 1 max Y velocity down

Player1JumpVel	     equ 0x0600 ; Player 1 jump velocity impulse
Player1JumpCancelVel equ 0x0100 ; Player 1 velocity to cancel jump
Player1MaxGrabUpVel  equ 0x0300 ; Max up velocity player can grab a ledge (no limit on down vel)

; Player collision probes
Player1StepHeight	 equ 0x6
Player1ProbeFloorX   equ (Player1Width/2)   ; Floor detection probe position X
Player1ProbeLedgeX   equ 0x1F			    ; Ledge detection probe position X
Player1ProbeLedgeY   equ 0x02			    ; Ledge detection probe position Y

; Walk to run transition velocity
Player1WalkToRunVel  equ 0x0200

; Player colour change
Player1ColourChangeSpeed 	equ 0x0030

; Glide ability
Player1MaxGlideVelocityX	equ Player1MaxVelXRun
Player1MaxGlideVelocityY	equ 0x01*SubpixelsPerPixel

; TEMP
Player1PushBoundsWidthInner	equ 0x10
Player1PushBoundsWidthOuter equ 0x20
Player1PushBoundsMinXInner	equ ((Player1Width/2)-(Player1PushBoundsWidthInner/2))
Player1PushBoundsMaxXInner	equ ((Player1Width/2)+(Player1PushBoundsWidthInner/2))
Player1PushBoundsMinXOuter	equ ((Player1Width/2)-(Player1PushBoundsWidthOuter/2))
Player1PushBoundsMaxXOuter	equ ((Player1Width/2)+(Player1PushBoundsWidthOuter/2))

Player1_PushAnimSpeedVelocityDiv equ 0x0004

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;--------------------------
Player_Colour        rs.b 1
;--------------------------
Player_Struct_Pad    rs.b 3
Player_Struct_Size   rs.b 0

; ************************************
; Subroutines
; ************************************
PlayerInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterInit
	
	; Set update and render routines
	move.l #PlayerUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList

	; Setup default state
	move.l  #Player1StartPosWorldX, Entity_WorldPosX(a0)
	move.l  #Player1StartPosWorldY, Entity_WorldPosY(a0)
	move.w  #Player1Width, Entity_Width(a0)
	move.w  #Player1Height, Entity_Height(a0)
	move.w  #Player1MaxVelXWalk, GameObj_MaxVelX(a0)
	move.w  #Player1MaxVelYUp, GameObj_MaxVelYUp(a0)
	move.w  #Player1MaxVelYDown, GameObj_MaxVelYDown(a0)
	move.w  #Player1DecelIdle, GameObj_DecelX(a0)
	move.w  #Player1ProbeFloorX, GameObj_FloorProbeX(a0)
	move.w  #Player1StepHeight, GameObj_StepHeight(a0)
	
	move.w  #Player1MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.w  #Player1MaxVelXRun, Character_MaxVelXRun(a0)
	move.w  #Player1AccelWalk, Character_AccelWalk(a0)
	move.w  #Player1AccelRun, Character_AccelRun(a0)
	move.w  #Player1DecelIdle, Character_DecelIdle(a0)
	move.w  #Player1DecelForced, Character_DecelForced(a0)
	move.w  #Player1JumpVel, Character_JumpVel(a0)
	move.w  #Player1JumpCancelVel, Character_JumpCancelVel(a0)
	move.w  #Player1MaxGrabUpVel, Character_MaxGrabUpVel(a0)
	move.w  #Player1ProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #Player1ProbeLedgeY, Character_ProbeLedgeY(a0)
	move.w  #Player1WalkToRunVel, Character_WalkToRunVel(a0)

	move.b  #ColourRed, Player_Colour(a0)

	; Setup default character animations
	move.l a0, a2
	add.l  #Character_Animations, a2

	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.l #Anim_NymnIdle, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnIdle_Speed, Animation_Speed(a3)
	move.b #Anim_NymnIdle_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Dead
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Dead), a3
	move.l #Anim_NymnDead, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnDead_Speed, Animation_Speed(a3)
	move.b #Anim_NymnDead_SizeB, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	
	; Run
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Run), a3
	move.l #Anim_NymnRun, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnRun_Speed, Animation_Speed(a3)
	move.b #Anim_NymnRun_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Walk
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.l #Anim_NymnWalk, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnWalk_Speed, Animation_Speed(a3)
	move.b #Anim_NymnWalk_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Walk to run transition
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_WalkToRun), a3
	move.l #Anim_NymnWalkToRun, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnWalkToRun_Speed, Animation_Speed(a3)
	move.b #Anim_NymnWalkToRun_SizeB, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)

	; Jump
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Jump), a3
	move.l #Anim_NymnJump, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnJump_Speed, Animation_Speed(a3)
	move.b #Anim_NymnJump_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Hang
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Hang), a3
	move.l #Anim_NymnHang, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnHang_Speed, Animation_Speed(a3)
	move.b #Anim_NymnHang_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Glide
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Glide), a3
	move.l #Anim_NymnGlide, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnGlide_Speed, Animation_Speed(a3)
	move.b #Anim_NymnGlide_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Push
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Push), a3
	move.l #Anim_NymnPush, Animation_KeyframesAddr(a3)
	move.b #Anim_NymnPush_Speed, Animation_Speed(a3)
	move.b #Anim_NymnPush_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	rts

PlayerUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterUpdate
	
	; Not pushing by default
	move.b #0x0, Character_Pushing(a0)

	; Interaction
	jsr PlayerInteract_Fuzzls
	jsr PlayerInteract_Obstacles
	jsr PlayerInteract_Boulders
	jsr PlayerInteract_Fireflies
	
	; Special colour abilities
	jsr PlayerColourAbility
	
	rts

PlayerBeginColourSwitch:
	; a0 --- Character address
	
	movem.l d0/d3, -(sp)
	move.l  a0, -(sp)

	lea    SwitchingPalettesP1, a1	; Get palette array	
	clr.l  d0
	move.b Player_Colour(a0), d0	; Get colour type
	mulu   #size_address, d0		; To offset
	add.l  d0, a1					
	move.l (a1), a0					; Get new palette address
	move.l #PaletteId_Player, d0	; Get destination palette ID - TODO: From GameObj
	move.l #Player1ColourChangeSpeed, d1	; Get switch speed - TODO: From Character
	move.b #0x0, d2					; Range min
	move.b #0xE, d3					; Range max
	jsr    PaletteLerpStart			; Begin palette lerp
	
	move.l  (sp)+, a0
	movem.l (sp)+, d0/d3
	
	; Start animation
	move.l #Anim_NymnSwitch, AnimObj_KeyframesAddr(a0)
	move.l #0x0, AnimObj_AnimSubframe(a0)
	move.b #Anim_NymnSwitch_Speed, AnimObj_AnimSpeed(a0)
	move.b #Anim_NymnSwitch_SizeB, AnimObj_AnimLength(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x0, AnimObj_Looping(a0)
	
	rts
	
PlayerColourAbility:

	; Get colour
	move.b Player_Colour(a0), d0
	
	cmp.b #ColourRed, d0
	beq   @Red
	cmp.b #ColourYellow, d0
	beq   @Yellow
	cmp.b #ColourGreen, d0
	beq   @Green
	cmp.b #ColourBlue, d0
	beq   @Blue
	bra   @NoColour
	
	; ************************************
	; Red
	; ************************************
	@Red:
	bra   @End
	
	; ************************************
	; Yellow
	; ************************************
	@Yellow:
	
	; If in air
	move.b GameObj_CloseToFloor(a0), d0
	cmp.b  #0x0, d0
	bne    @ResetGlide
	
	; If interacting
	move.b Character_Interacting(a0), d0
	cmp.b  #0x0, d0
	beq    @ResetGlide
	
	; If -ve Y velocity
	move.w GameObj_VelY(a0), d0
	cmp.w  #0x0, d0
	bgt    @ResetGlide
	
	; Gliding
	move.b #0x1, Character_Gliding(a0)						; Set gliding
	move.w #Player1MaxGlideVelocityX, GameObj_MaxVelX(a0)	; Set max glide velocity
	move.w #Player1MaxGlideVelocityY, GameObj_MaxVelYDown(a0)
	bra   @End
	
	; ************************************
	; Green
	; ************************************
	@Green:
	bra   @End
	
	; ************************************
	; Blue
	; ************************************
	@Blue:
	bra   @End
	
	@NoColour:
	@ResetGlide:
	
	; Reset gliding
	move.b #0x0, Character_Gliding(a0)
	move.w #Player1MaxVelXWalk, GameObj_MaxVelX(a0)			; Reset max velocity
	move.w #Player1MaxVelYDown, GameObj_MaxVelYDown(a0)
	
	@End:

	rts

;==============================================================
; Player interaction routines
;==============================================================

PlayerInteract_Fuzzls:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)

	; Check if pushing, for inner or outer interaction box
	move.b Character_Pushing(a0), d1
	
	; Character must be interacting
	move.b Character_Interacting(a0), d0
	cmp.b  #0x0, d0
	beq    @NotInteracting
	
	; Character must be close to floor to interact with a Fuzzl
	move.b GameObj_CloseToFloor(a0), d0
	cmp.b  #0x0, d0
	beq    @PlayerOffFloor
	
	; Check all Fuzzls
	move.l #EntityArray_Fuzzls, a1
	move.l #gameobjects_Fuzzl_count-1, d6
	@FuzzlLoop:
	
	; Check if on screen
	move.b GameObj_SpriteLinked(a1), d0
	cmp.b  #0x0, d0
	beq    @NotVisible
	
	; Check if active
	move.b GameObj_Active(a1), d0
	cmp.b  #0x0, d0
	beq    @NotActive
	
	; Check if close to floor
	move.b GameObj_CloseToFloor(a1), d0
	cmp.b  #0x0, d0
	beq    @FuzzlOffFloor
	
	; Check if within bounds
	move.l d6, -(sp)
	
	; If already pushing, check if stopped pushing using outer box
	; (to stop anim flickering if it strays out by 1 pixel))
	cmp.b #0x0, d1
	bne   @Pushing
	
	; Get player interact box pos X min (inner)
	move.l Entity_WorldPosX(a0), d1
	lsr.l  #0x8, d1
	add.w  #Player1PushBoundsMinXInner, d1
	swap   d1
	; Get player Y min
	move.l Entity_WorldPosY(a0), d2
	lsr.l  #0x8, d2
	move.w d2, d1
	; Get player interact box pos X max (inner)
	move.l Entity_WorldPosX(a0), d2
	lsr.l  #0x8, d2
	add.w  #Player1PushBoundsMaxXInner, d2
	swap   d2
	; Get player Y max
	move.l Entity_WorldPosY(a0), d3
	lsr.l  #0x8, d3
	add.w  Entity_Height(a0), d3
	move.w d3, d2
	
	bra    @GetFuzzlBounds
	
	@Pushing:
	
	; Get player interact box pos X min (outer)
	move.l Entity_WorldPosX(a0), d1
	lsr.l  #0x8, d1
	add.w  #Player1PushBoundsMinXOuter, d1
	swap   d1
	; Get player Y min
	move.l Entity_WorldPosY(a0), d2
	lsr.l  #0x8, d2
	move.w d2, d1
	; Get player interact box pos X max (outer)
	move.l Entity_WorldPosX(a0), d2
	lsr.l  #0x8, d2
	add.w  #Player1PushBoundsMaxXOuter, d2
	swap   d2
	; Get player Y max
	move.l Entity_WorldPosY(a0), d3
	lsr.l  #0x8, d3
	add.w  Entity_Height(a0), d3
	move.w d3, d2
	
	@GetFuzzlBounds:
	
	; Get Fuzzl bounds
	jsr    GetGameObjBoundsA1D2D3
	
	; Test box intersection
	jsr TestBoxIntersectBox
	move.l (sp)+, d6
	
	; Result in d0
	cmp.b #0x0, d0
	beq   @NotInRange

	; In range, check if fuzzl is in its nest
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a1)
	bne    @Home
	
	; In range and not in a nest, begin interaction with Fuzzl - cancel run/jump movement
	jsr  CharacterCancelRun
	jsr  CharacterCancelJump
	
	; Check which side of Fuzzl
	move.l Entity_WorldPosX(a0), d0	; Player X
	add.l  #(Player1Width*SubpixelsPerPixel)/2, d0 ; Player X centre
	move.l Entity_WorldPosX(a1), d1	; Fuzzl X
	add.l  #(Fuzzl_Width*SubpixelsPerPixel)/2, d1 ; Fuzzl X centre
	move.w GameObj_VelX(a0), d2			; Player velocity X
	cmp.l  d0, d1
	bgt    @LeftOfFuzzl
	
	; On right hand side of Fuzzl, check if heading towards it
	cmp.w  #0x0, d2
	bgt    @NotPushingFuzzl
	
	; Pushing Fuzzl to the left, correct penetration
	move.l Entity_WorldPosX(a0), d0								; Player X
	add.l  #(Player1PushBoundsMinXInner*SubpixelsPerPixel), d0	; Push box left
	move.l Entity_WorldPosX(a1), d1								; Fuzzl X
	add.l  #(Fuzzl_Width*SubpixelsPerPixel), d1 				; Fuzzl right
	cmp.l  d0, d1
	blt    @NotPenetratingLeft
	sub.l  #(Fuzzl_Width*SubpixelsPerPixel), d0
	move.l d0, Entity_WorldPosX(a1)
	@NotPenetratingLeft:
	bra    @PushingFuzzl
	
	@LeftOfFuzzl:
	; On left hand side of Fuzzl, check if heading towards it
	cmp.w  #0x0, d2
	blt    @NotPushingFuzzl
	
	; Pushing Fuzzl to the right, correct penetration
	move.l Entity_WorldPosX(a0), d0								; Player X
	add.l  #(Player1PushBoundsMaxXInner*SubpixelsPerPixel), d0	; Push box right
	move.l Entity_WorldPosX(a1), d1								; Fuzzl left
	cmp.l  d0, d1
	bgt    @NotPenetratingRight
	move.l d0, Entity_WorldPosX(a1)
	@NotPenetratingRight:

	@PushingFuzzl:
	
	; Pushing the Fuzzl
	move.b #0x1, Character_Pushing(a0)
	bclr.b #Fuzzl_State_Initial, Fuzzl_State_Bits(a1)
	bset.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a1)
	
	; Set its velocity to match
	move.w d2, GameObj_VelX(a1)
	
	; Scale roll anim speed based on velocity
	clr.l  d0
	move.w GameObj_VelX(a0), d0
	cmp.w  #0x0, d0
	bgt    @Fwd
	neg.w  d0
	@Fwd:
	divs.w #Player1_PushAnimSpeedVelocityDiv, d0
	move.b d0, AnimObj_AnimSpeed(a0)
	
	bra @End
	
	@Home:
	; Check if fuzzl still has its colour
	move.b Fuzzl_Colour(a1), d0
	cmp.b  #ColourDrained, d0
	beq    @NoColour
	
	; Check if Fuzzl's colour matches player
	move.b Player_Colour(a0), d1
	cmp.b  d0, d1
	beq    @NoColourMatch
	
	; Fuzzl is home, is in range, and has its colour - take its colour
	; TODO: Compare colour, choose correct palette
	move.b d0, Player_Colour(a0)
	jsr PlayerBeginColourSwitch
	
	bra @End

	@NotInRange:
	@FuzzlOffFloor:
	@NotPushingFuzzl:
	@NotVisible:
	@NotActive:
	@NoColour:
	@NoColourMatch:
	@NextFuzzl:
	
	; Next Fuzzl
	add.l #Fuzzl_Struct_Size, a1
	dbra d6, @FuzzlLoop
	
	@NotInteracting:
	@PlayerOffFloor:
	@End:
	
	move.l (sp)+, a1
	
	rts
	
PlayerInteract_Boulders:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)

	; Check if pushing, for inner or outer interaction box
	move.b Character_Pushing(a0), d1
	
	; Character must be interacting
	move.b Character_Interacting(a0), d0
	cmp.b  #0x0, d0
	beq    @NotInteracting
	
	; Character must be close to floor to interact with a Boulder
	move.b GameObj_CloseToFloor(a0), d0
	cmp.b  #0x0, d0
	beq    @PlayerOffFloor
	
	; Check all Boulders
	move.l #EntityArray_Boulders, a1
	move.l #gameobjects_Boulder_count-1, d6
	@BoulderLoop:
	
	; Check if on screen
	move.b GameObj_SpriteLinked(a1), d0
	cmp.b  #0x0, d0
	beq    @NotVisible
	
	; Check if active
	move.b GameObj_Active(a1), d0
	cmp.b  #0x0, d0
	beq    @NotActive
	
	; Check if close to floor
	move.b GameObj_CloseToFloor(a1), d0
	cmp.b  #0x0, d0
	beq    @BoulderOffFloor
	
	; Check if within bounds
	move.l d6, -(sp)
	
	; If already pushing, check if stopped pushing using outer box
	; (to stop anim flickering if it strays out by 1 pixel))
	cmp.b #0x0, d1
	bne   @Pushing
	
	; Get player interact box pos X min (inner)
	move.l Entity_WorldPosX(a0), d1
	lsr.l  #0x8, d1
	add.w  #Player1PushBoundsMinXInner, d1
	swap   d1
	; Get player Y min
	move.l Entity_WorldPosY(a0), d2
	lsr.l  #0x8, d2
	move.w d2, d1
	; Get player interact box pos X max (inner)
	move.l Entity_WorldPosX(a0), d2
	lsr.l  #0x8, d2
	add.w  #Player1PushBoundsMaxXInner, d2
	swap   d2
	; Get player Y max
	move.l Entity_WorldPosY(a0), d3
	lsr.l  #0x8, d3
	add.w  Entity_Height(a0), d3
	move.w d3, d2
	
	bra    @GetBoulderBounds
	
	@Pushing:
	
	; Get player interact box pos X min (outer)
	move.l Entity_WorldPosX(a0), d1
	lsr.l  #0x8, d1
	add.w  #Player1PushBoundsMinXOuter, d1
	swap   d1
	; Get player Y min
	move.l Entity_WorldPosY(a0), d2
	lsr.l  #0x8, d2
	move.w d2, d1
	; Get player interact box pos X max (outer)
	move.l Entity_WorldPosX(a0), d2
	lsr.l  #0x8, d2
	add.w  #Player1PushBoundsMaxXOuter, d2
	swap   d2
	; Get player Y max
	move.l Entity_WorldPosY(a0), d3
	lsr.l  #0x8, d3
	add.w  Entity_Height(a0), d3
	move.w d3, d2
	
	@GetBoulderBounds:
	
	; Get Boulder bounds
	jsr    GetGameObjBoundsA1D2D3
	
	; Test box intersection
	jsr TestBoxIntersectBox
	move.l (sp)+, d6
	
	; Result in d0
	cmp.b #0x0, d0
	beq   @NotInRange

	; Begin interaction with Boulder - cancel run/jump movement
	jsr  CharacterCancelRun
	jsr  CharacterCancelJump
	
	; Check which side of Boulder
	move.l Entity_WorldPosX(a0), d0	; Player X
	add.l  #(Player1Width*SubpixelsPerPixel)/2, d0 ; Player X centre
	move.l Entity_WorldPosX(a1), d1	; Boulder X
	add.l  #(Boulder_Width*SubpixelsPerPixel)/2, d1 ; Boulder X centre
	move.w GameObj_VelX(a0), d2			; Player velocity X
	cmp.l  d0, d1
	bgt    @LeftOfBoulder
	
	; On right hand side of Boulder, check if heading towards it
	cmp.w  #0x0, d2
	bgt    @NotPushingBoulder
	
	; Pushing Boulder to the left, correct penetration
	move.l Entity_WorldPosX(a0), d0								; Player X
	add.l  #(Player1PushBoundsMinXInner*SubpixelsPerPixel), d0	; Push box left
	move.l Entity_WorldPosX(a1), d1								; Boulder X
	add.l  #(Boulder_Width*SubpixelsPerPixel), d1 				; Boulder right
	cmp.l  d0, d1
	blt    @NotPenetratingLeft
	sub.l  #(Boulder_Width*SubpixelsPerPixel), d0
	move.l d0, Entity_WorldPosX(a1)
	@NotPenetratingLeft:
	bra    @PushingBoulder
	
	@LeftOfBoulder:
	; On left hand side of Boulder, check if heading towards it
	cmp.w  #0x0, d2
	blt    @NotPushingBoulder
	
	; Pushing Boulder to the right, correct penetration
	move.l Entity_WorldPosX(a0), d0								; Player X
	add.l  #(Player1PushBoundsMaxXInner*SubpixelsPerPixel), d0	; Push box right
	move.l Entity_WorldPosX(a1), d1								; Boulder left
	cmp.l  d0, d1
	bgt    @NotPenetratingRight
	move.l d0, Entity_WorldPosX(a1)
	@NotPenetratingRight:

	@PushingBoulder:
	
	; Pushing the Boulder, set its velocity to match
	move.w d2, GameObj_VelX(a1)
	
	; Scale roll anim speed based on velocity
	clr.l  d0
	move.w GameObj_VelX(a0), d0
	cmp.w  #0x0, d0
	bgt    @Fwd
	neg.w  d0
	@Fwd:
	divs.w #Player1_PushAnimSpeedVelocityDiv, d0
	move.b d0, AnimObj_AnimSpeed(a0)
	
	bra @End

	@NotInRange:
	@BoulderOffFloor:
	@NotPushingBoulder:
	@NotVisible:
	@NotActive:
	@NextBoulder:
	
	; Next Boulder
	add.l #Boulder_Struct_Size, a1
	dbra d6, @BoulderLoop
	
	@NotInteracting:
	@PlayerOffFloor:
	@End:
	
	move.l (sp)+, a1
	
	rts
	
PlayerInteract_Obstacles:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)

	move.w #gameobjects_obstacle_count, d0	; TODO: Count from level info
	cmp.w  #0x0, d0
	beq    @NoObstacles
	
	; Check all obstacles
	move.l #EntityArray_Obstacles, a1
	move.l #gameobjects_Obstacle_count-1, d6
	@ObstacleLoop:
	
	; Check if solid
	move.b GameObj_Solid(a1), d0
	cmp.b  #0x0, d0
	beq    @ObstacleOpen
	
	; Block player
	; TODO: Use interaction radius
	; TODO: Move to physics solids checking
	move.l d6, -(sp)
	jsr TestGameObjBoxIntersectBox
	move.l (sp)+, d6
	
	; Result in d0
	cmp.b #0x0, d0
	beq   @NotInRange

	; Check which side of obstacle
	move.l Entity_WorldPosX(a0), d0	; Player X
	add.l  #(Player1Width*SubpixelsPerPixel)/2, d0 ; Player X centre
	move.l Entity_WorldPosX(a1), d1	; Fuzzl X
	add.l  #(Obstacle_Width*SubpixelsPerPixel)/2, d1 ; Obstacle X centre
	move.w GameObj_VelX(a0), d2			; Player velocity X
	cmp.l  d0, d1
	bgt    @LeftOfObstacle
	
	; On right hand side of obstacle, check if heading towards it
	cmp.w  #0x0, d2
	bgt    @NotPenetrating
	
	; Moving to the left, correct penetration
	move.l Entity_WorldPosX(a0), d0	; Player X
	move.l Entity_WorldPosX(a1), d1	; Obstacle X
	add.l  #(Obstacle_Width*SubpixelsPerPixel), d1 ; Obstacle right
	cmp.l  d0, d1
	blt    @NotPenetrating
	;sub.l  #(Obstacle_Width*SubpixelsPerPixel), d0
	;move.l d0, Entity_WorldPosX(a1)
	move.w #0x0, GameObj_VelX(a0)
	@NotPenetratingLeft:
	bra    @NotPenetrating
	
	@LeftOfObstacle:
	; On left hand side of obstacle, check if heading towards it
	cmp.w  #0x0, d2
	blt    @NotPenetrating
	
	; Moving to the right, correct penetration
	move.l Entity_WorldPosX(a0), d0	; Player X
	add.l  #(Player1Width*SubpixelsPerPixel), d0 ; Player right
	move.l Entity_WorldPosX(a1), d1	; Obstacle X
	cmp.l  d0, d1
	bgt    @NotPenetratingRight
	;move.l d0, Entity_WorldPosX(a1)
	move.w #0x0, GameObj_VelX(a0)
	@NotPenetratingRight:

	; Penetrating obstacle, cancel run
	jsr  CharacterCancelRun
	
	@NotPenetrating:
	
	; Check if character is interacting
	move.b Character_Interacting(a0), d0
	cmp.b  #0x0, d0
	beq    @NotInteracting
	
	; Check if character is close to floor
	move.b GameObj_CloseToFloor(a0), d0
	cmp.b  #0x0, d0
	beq    @PlayerOffFloor
	
	; Check if the correct colour
	move.b Player_Colour(a0), d0
	move.b Obstacle_Colour(a1), d1
	cmp.b  d0, d1
	bne    @WrongColour
	
	; Success, open this blocker up
	move.b #0x0, GameObj_Solid(a1)
	move.b #0x0, GameObj_Visible(a1)	; TODO: Unblock animation
	
	; but it costs the character its colour
	move.b #ColourDrained, Player_Colour(a0)
	jsr PlayerBeginColourSwitch
	
	@ObstacleOpen:
	@NotInRange:
	@WrongColour:
	@NotInteracting:
	@PlayerOffFloor:
	
	; Next obstacle
	add.l #Obstacle_Struct_Size, a1
	dbra d6, @ObstacleLoop

	move.l (sp)+, a1

	@NoObstacles:
	
	rts

PlayerInteract_Fireflies:

	; a0 --- GameObj addr
	; a1 --- Level addr

	move.l a0, -(sp)
	move.l a1, -(sp)

	; Check player against all Fireflies in level
	move.l a0, a1						; Player in a1
	move.l #EntityArray_Fireflies, a0	; Firefly in a0
	move.l #gameobjects_Firefly_count-1, d0	; TODO: Count from level info
	@FireflyLoop:
	movem.l d0-d1/a0-a1, -(sp)
	jsr FireflyTestObj
	movem.l (sp)+, d0-d1/a0-a1
	add.l  #Firefly_Struct_Size, a0
	dbra   d0, @FireflyLoop

	move.l (sp)+, a1
	move.l (sp)+, a0

	rts
