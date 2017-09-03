;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   windflue.asm - Giant flue that emits gusts of wind
;==============================================================

; Constants
WindFlue_Width				equ 0x0080
WindFlue_Height				equ 0x0018
WindFlue_MaxBlowDist		equ 0x0010
WindFlue_MaxBlowDistGliding	equ 0x0100
WindFlue_BlowVel			equ DefaultGravity+0x1400
WindFlue_BlowVelGliding		equ DefaultGravity+0x2800
WindFlue_MaxLeaves			equ 0x6
WindFlue_LeafVel			equ 0x00080000
WindFlue_LeafAnimSpeed		equ 0x30
WindFlue_DistributeX		equ (WindFlue_Width/WindFlue_MaxLeaves)

; Struct
	rsset (Entity_Struct_Size)
;---------------------------------
WindFlue_Leaves       rs.b (Leaf_Struct_Size*WindFlue_MaxLeaves)
;---------------------------------
WindFlue_Struct_Pad   rs.b 0	; Alignment padding
WindFlue_Struct_Size  rs.b 0

WindFlueInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    EntityInit
	
	; Add to count
	addq.w #0x1, EntityCount_WindFlue

	; Set update and render routines
	move.l #WindFlueUpdate, Entity_UpdateRoutine(a0)
	move.l #WindFlueDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	; Initialise
	move.w  #WindFlue_Width, Entity_Width(a0)
	move.w  #WindFlue_Height, Entity_Height(a0)

	; Init all leaves
	PUSHL   a0
	lea     WindFlue_Leaves(a0), a0
	move.w  #WindFlue_MaxLeaves-1, d0
	@LeafLp:
	PUSHL   d0
	jsr     LeafInit
	jsr     EntityRemoveFromUpdateList
	jsr     EntityRemoveFromRenderList
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	POPL    d0
	lea     Leaf_Struct_Size(a0), a0
	dbra    d0, @LeafLp
	POPL    a0

	rts

WindFlueLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load all leaves
	move.l  Entity_WorldPosX(a0), d1
	move.l  Entity_WorldPosY(a0), d2
	move.l  d2, d4

	PUSHL   a0
	lea     WindFlue_Leaves(a0), a0
	move.w  #WindFlue_MaxLeaves-1, d0
	@LeafLp:

	; Load sprite and anim
	PUSHM   d0-d2
	SPRITE_LOAD_DEFAULT leaf,PaletteId_World0,0x0
	ANIM_LOAD_DEFAULT leaf_green,leaf_fall,Leaf_Animation,0,1,0,0
	move.l  AnimObj_CurrentAnim(a0), a2
	move.w  #WindFlue_LeafAnimSpeed, Animation_Speed(a2)
	move.b  #0x1, AnimObj_Playing(a0)
	POPM    d0-d2

	; Set pos
	move.l  d1, Entity_WorldPosX(a0)
	move.l  d2, Entity_WorldPosY(a0)

	; Increment X pos
	addi.l  #WindFlue_DistributeX*subpixels_per_pixel, d1

	; Randomise Y pos
	PUSHM  d0-d2
	move.l #0x0, d1
	move.l #WindFlue_MaxBlowDistGliding, d2
	jsr    RND_GenerateWordClamped
	move.w d0, d3
	POPM   d0-d2
	TOSUBPIXELS d3
	move.l d4, d2
	sub.l  d3, d2

	lea     Leaf_Struct_Size(a0), a0
	dbra    d0, @LeafLp
	POPL    a0

	rts
	
WindFlueUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Check if player within range
	move.l (Player1), a2
	ENTITY_GETBOUNDS d1,d2,d5,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2

	; Add max blow height
	cmp.b  #ColourYellow, Player_ActiveColourAbility(a2)
	beq    @GlideHeight
	subi.w #WindFlue_MaxBlowDist, d1
	bra    @FallHeight
	@GlideHeight:
	subi.w #WindFlue_MaxBlowDistGliding, d1
	@FallHeight:

	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @OutOfBounds

	; Add wind accel
	cmp.b  #ColourYellow, Player_ActiveColourAbility(a2)
	beq    @GlideVel
	addi.l #WindFlue_BlowVel, PhysicsObj_VelY(a2)
	bra    @FallVel
	@GlideVel:
	addi.l #WindFlue_BlowVelGliding, PhysicsObj_VelY(a2)
	@FallVel:

	; Disable snap to floor
	move.b #0x0, PhysicsObj_SnapToFloor(a2)

	; Set falling
	move.b #0x1, Character_Falling(a2)

	@OutOfBounds:

	;==============================================================

	; Emit leaves
	move.l  Entity_WorldPosY(a0), d1

	PUSHL   a0
	lea     WindFlue_Leaves(a0), a0
	move.w  #WindFlue_MaxLeaves-1, d0
	@LeafLp:

	; Add velocity
	subi.l  #WindFlue_LeafVel, Entity_WorldPosY(a0)

	; If off screen and hit max height, reset Y pos
	tst.b   SpriteObj_SpriteLinked(a0)
	bne     @OnScreen
	move.l  Entity_WorldPosY(a0), d2
	sub.l   d1, d2
	cmp.l   #-WindFlue_MaxBlowDistGliding*subpixels_per_pixel, d2
	bgt     @OnScreen
	move.l  d1, Entity_WorldPosY(a0)
	@OnScreen:
	
	; Update anim
	PUSHM   d0-d4
	jsr     AnimObjUpdate
	POPM    d0-d4

	lea     Leaf_Struct_Size(a0), a0
	dbra    d0, @LeafLp
	POPL    a0

	rts

WindFlueDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Draw all leaves
	PUSHL   a0
	lea     WindFlue_Leaves(a0), a0
	move.w  #WindFlue_MaxLeaves-1, d0
	@LeafLp:
	PUSHL   d0
	jsr     AnimObjDraw
	POPL    d0
	lea     Leaf_Struct_Size(a0), a0
	dbra    d0, @LeafLp
	POPL    a0

	rts