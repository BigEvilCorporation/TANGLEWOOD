;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   player.asm - Player specific movement and mechanics
;==============================================================

; Struct
	rsset (Character_Struct_Size)
;--------------------------
Player_Colour        rs.b 1
;--------------------------
Player_Struct_Pad    rs.b 3
Player_Struct_Size   rs.b 0

PlayerInit:
	; Base functionality
	jsr CharacterInit

	move.b  #ColourYellow, Player_Colour(a0)

	rts

PlayerUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterUpdate

	; Interaction
	jsr PlayerInteract_Fuzzls
	jsr PlayerInteract_Obstacles
	
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
	move.l #Anim_SonicSwitch, AnimObj_AnimDataAddr(a0)
	move.l #0x0, AnimObj_AnimSubframe(a0)
	move.b #Anim_SonicSwitch_Speed, AnimObj_AnimSpeed(a0)
	move.b #Anim_SonicSwitch_SizeB, AnimObj_AnimLength(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x0, AnimObj_Looping(a0)
	
	rts

;==============================================================
; Player interaction routines
;==============================================================

PlayerInteract_Fuzzls:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)
	
	; Not pushing by default
	move.b #0x0, Character_Pushing(a0)
	
	; Character must be interacting
	move.b Character_Interacting(a0), d0
	cmp.b  #0x0, d0
	beq    @NotInteracting
	
	; Character must be close to floor to interact with a Fuzzl
	move.b GameObj_CloseToFloor(a0), d0
	cmp.b  #0x0, d0
	beq    @PlayerOffFloor
	
	; Check all Fuzzls
	move.l #GameObjArray_Fuzzls, a1
	move.l #gameobjects_Fuzzl_count-1, d6
	@FuzzlLoop:
	
	; Check if active
	move.b GameObj_Active(a1), d0
	cmp.b  #0x0, d0
	beq    @NotActive
	
	; Check if close to floor
	move.b GameObj_CloseToFloor(a1), d0
	cmp.b  #0x0, d0
	beq    @FuzzlOffFloor
	
	; Check if within bounds
	; TODO: Use interaction box size, not exact bounds
	move.l d6, -(sp)
	jsr TestGameObjBoxIntersectBox
	move.l (sp)+, d6
	
	; Result in d0
	cmp.b #0x0, d0
	beq   @NotInRange

	; In range, check if fuzzl is in its nest
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a1)
	bne    @Home
	
	; In range and not in a nest, check which side of Fuzzl
	move.l GameObj_WorldPosX(a0), d0	; Player X
	add.l  #(Player1Width*SubpixelsPerPixel)/2, d0 ; Player X centre
	move.l GameObj_WorldPosX(a1), d1	; Fuzzl X
	add.l  #(FuzzlWidth*SubpixelsPerPixel)/2, d1 ; Fuzzl X centre
	move.w GameObj_VelX(a0), d2			; Player velocity X
	cmp.l  d0, d1
	bgt    @LeftOfFuzzl
	
	; On right hand side of Fuzzl, check if heading towards it
	cmp.w  #0x0, d2
	bgt    @NotPushingFuzzl
	
	; Pushing Fuzzl to the left, correct penetration
	move.l GameObj_WorldPosX(a0), d0	; Player X
	add.l  #Player1PushBorder, d0
	move.l GameObj_WorldPosX(a1), d1	; Fuzzl X
	add.l  #(FuzzlWidth*SubpixelsPerPixel), d1 ; Fuzzl right
	cmp.l  d0, d1
	blt    @NotPenetratingLeft
	sub.l  #(FuzzlWidth*SubpixelsPerPixel), d0
	move.l d0, GameObj_WorldPosX(a1)
	@NotPenetratingLeft:
	bra    @PushingFuzzl
	
	@LeftOfFuzzl:
	; On left hand side of Fuzzl, check if heading towards it
	cmp.w  #0x0, d2
	blt    @NotPushingFuzzl
	
	; Pushing Fuzzl to the right, correct penetration
	move.l GameObj_WorldPosX(a0), d0	; Player X
	add.l  #(Player1Width*SubpixelsPerPixel), d0 ; Player right
	sub.l  #Player1PushBorder, d0
	move.l GameObj_WorldPosX(a1), d1	; Fuzzl X
	cmp.l  d0, d1
	bgt    @NotPenetratingRight
	move.l d0, GameObj_WorldPosX(a1)
	@NotPenetratingRight:

	@PushingFuzzl:
	
	; Pushing the Fuzzl
	move.b #0x1, Character_Pushing(a0)
	bclr.b #Fuzzl_State_Initial, Fuzzl_State_Bits(a1)
	bset.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a1)
	
	; Set its velocity to match
	move.w d2, GameObj_VelX(a1)
	
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
	@NotActive:
	@NoColour:
	@NoColourMatch:
	
	; Next Fuzzl
	add.l #Fuzzl_Struct_Size, a1
	dbra d6, @FuzzlLoop
	
	@NotInteracting:
	@PlayerOffFloor:
	@End:
	
	move.l (sp)+, a1
	
	rts
	
PlayerInteract_Obstacles:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)
	
	; Check all obstacles
	move.l #GameObjArray_Obstacles, a1
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
	move.l GameObj_WorldPosX(a0), d0	; Player X
	add.l  #(Player1Width*SubpixelsPerPixel)/2, d0 ; Player X centre
	move.l GameObj_WorldPosX(a1), d1	; Fuzzl X
	add.l  #(Obstacle_Width*SubpixelsPerPixel)/2, d1 ; Obstacle X centre
	move.w GameObj_VelX(a0), d2			; Player velocity X
	cmp.l  d0, d1
	bgt    @LeftOfObstacle
	
	; On right hand side of obstacle, check if heading towards it
	cmp.w  #0x0, d2
	bgt    @NotPenetrating
	
	; Moving to the left, correct penetration
	move.l GameObj_WorldPosX(a0), d0	; Player X
	move.l GameObj_WorldPosX(a1), d1	; Obstacle X
	add.l  #(Obstacle_Width*SubpixelsPerPixel), d1 ; Obstacle right
	cmp.l  d0, d1
	blt    @NotPenetrating
	;sub.l  #(Obstacle_Width*SubpixelsPerPixel), d0
	;move.l d0, GameObj_WorldPosX(a1)
	move.w #0x0, GameObj_VelX(a0)
	@NotPenetratingLeft:
	bra    @NotPenetrating
	
	@LeftOfObstacle:
	; On left hand side of obstacle, check if heading towards it
	cmp.w  #0x0, d2
	blt    @NotPenetrating
	
	; Pushing Fuzzl to the right, correct penetration
	move.l GameObj_WorldPosX(a0), d0	; Player X
	add.l  #(Player1Width*SubpixelsPerPixel), d0 ; Player right
	move.l GameObj_WorldPosX(a1), d1	; Obstacle X
	cmp.l  d0, d1
	bgt    @NotPenetratingRight
	;move.l d0, GameObj_WorldPosX(a1)
	move.w #0x0, GameObj_VelX(a0)
	@NotPenetratingRight:

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
	
	rts

PlayerDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterDraw
	
	rts