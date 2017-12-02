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
WindFlue_MaxBlowDistGliding	equ 0x0180
WindFlue_MaxBlowDistFuzzl	equ 0x0040
WindFlue_BlowVel			equ DefaultGravity+0x1400
WindFlue_BlowVelGliding		equ DefaultGravity+0x2800
WindFlue_BlowVelFuzzl		equ DefaultGravity+0x2000
WindFlue_MaxLeaves			equ 0x6
WindFlue_LeafVel			equ 0x00080000
WindFlue_LeafAnimSpeed		equ 0x30
WindFlue_LeafMaxHeight		equ 0x0280
WindFlue_DistributeX		equ (WindFlue_Width/WindFlue_MaxLeaves)
WindFlue_DefaultOnTime		equ 0x08*frames_per_second_pal
WindFlue_DefaultOffTime		equ 0x08*frames_per_second_pal

; Struct
	rsset (Entity_Struct_Size)
;---------------------------------
WindFlue_Leaves       rs.b (Leaf_Struct_Size*WindFlue_MaxLeaves)
WindFlue_OnTime       rs.w 1
WindFlue_OffTime      rs.w 1
WindFlue_Timer        rs.w 1
WindFlue_Blowing      rs.b 1
WindFlue_Visible      rs.b 1
;---------------------------------
	RS_ALIGN
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
	MOVE_NTSC_W WindFlue_OffTime, WindFlue_Timer(a0), d0
	MOVE_NTSC_W WindFlue_DefaultOnTime, WindFlue_OnTime(a0), d0
	MOVE_NTSC_W WindFlue_DefaultOffTime, WindFlue_OffTime(a0), d0
	move.b  #0x0, WindFlue_Blowing(a0)
	move.b  #0x0, WindFlue_Visible(a0)

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
	move.b  #0x0, Leaf_MoveX(a0)
	POPL    d0
	lea     Leaf_Struct_Size(a0), a0
	dbra    d0, @LeafLp
	POPL    a0

	rts

WindFlueLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	;jsr     EntityAddToWorldGrid

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
	SPRITE_LOAD_DEFAULT leaf,brown,0,PaletteId_World0,0x0
	ANIM_LOAD_MANUALCONTROL leaf,green,fall,Leaf_Animation,0
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
	move.l #WindFlue_LeafMaxHeight, d2
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

	; Update on/off time
	move.w WindFlue_Timer(a0), d0
	subq.w #0x1, d0
	move.w d0, WindFlue_Timer(a0)
	tst.w  d0
	bne    @TimerRunning

	; Timer elapsed, toggle state
	eor.b  #0x1, WindFlue_Blowing(a0)

	; Reset timer
	tst.b  WindFlue_Blowing(a0)
	beq    @OffTime
	move.w WindFlue_OnTime(a0), WindFlue_Timer(a0)
	bra    @OnTime
	@OffTime:
	move.w WindFlue_OffTime(a0), WindFlue_Timer(a0)
	@OnTime:

	@TimerRunning:

	;==============================================================

	; If within X view
	move.b #0x0, WindFlue_Visible(a0)
	move.w Entity_WorldPosX(a0), d0
	sub.w  (WorldScrollX), d0
	cmp.w  #vdp_sprite_border_x+screen_width, d0
	bgt    @OutOfXView
	move.w d0, d4
	add.w  Entity_Width(a0), d4
	cmp.w  #vdp_sprite_border_x, d4
	blt    @OutOfXView
	move.b #0x1, WindFlue_Visible(a0)

	;==============================================================

	; If blowing
	tst.b  WindFlue_Blowing(a0)
	beq    @Off

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
	beq    @PlayerOutOfBounds

	; Add wind accel
	cmp.b  #ColourYellow, Player_ActiveColourAbility(a2)
	beq    @GlideVel
	MOVE_NTSC_L WindFlue_BlowVel, d0, d1
	add.l  d0, PhysicsObj_VelY(a2)
	bra    @FallVel
	@GlideVel:
	MOVE_NTSC_L WindFlue_BlowVelGliding, d0, d1
	add.l  d0, PhysicsObj_VelY(a2)
	@FallVel:

	; Disable snap to floor
	move.b #0x0, PhysicsObj_SnapToFloor(a2)

	; Set falling
	move.b #0x1, Character_Falling(a2)

	@PlayerOutOfBounds:

	;==============================================================

	; Check Fuzzls
	move.w (EntityCount_Fuzzl), d6
	beq    @NoFuzzls
	move.l (EntityPoolStart_Fuzzl), a2
	subq.w  #0x1, d6
	@FuzzlLoop:

	; Check not in nest
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a2)
	bne    @NextFuzzl

	ENTITY_GETBOUNDS d3,d4,d5,a2
	subi.w #WindFlue_MaxBlowDistFuzzl, d1
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NextFuzzl

	; Blow Fuzzl
	MOVE_NTSC_L WindFlue_BlowVelFuzzl, d0, d1
	add.l  d0, PhysicsObj_VelY(a2)

	@NextFuzzl:
	lea    Fuzzl_Struct_Size(a2), a2
	dbra   d6, @FuzzlLoop
	
	@NoFuzzls:
	move.l #0x0, a2

	;==============================================================

	@Off:

	;==============================================================

	; Emit leaves
	move.l  Entity_WorldPosY(a0), d1
	move.b  WindFlue_Blowing(a0), d5

	PUSHL   a0
	lea     WindFlue_Leaves(a0), a0
	move.w  #WindFlue_MaxLeaves-1, d0
	@LeafLp:

	; If blowing
	tst.b   d5
	beq     @NotBlowing

	; Add velocity
	subi.l  #WindFlue_LeafVel, Entity_WorldPosY(a0)

	; If off screen and hit max height, reset Y pos
	tst.b   SpriteObj_SpriteLinked(a0)
	bne     @OnScreen
	move.l  Entity_WorldPosY(a0), d2
	sub.l   d1, d2
	cmp.l   #-WindFlue_LeafMaxHeight*subpixels_per_pixel, d2
	bgt     @OnScreen
	move.l  d1, Entity_WorldPosY(a0)
	@OnScreen:
	
	; Update anim only
	PUSHM   d0-d5
	move.l  AnimObj_CurrentAnim(a0), a2
	move.w  #WindFlue_LeafAnimSpeed, Animation_Speed(a2)
	move.b  #0x1, SpriteObj_Visible(a0)
	jsr     AnimObjUpdate
	POPM    d0-d5

	bra     @NextLeaf

	@NotBlowing:

	; Update leaf
	PUSHM   d0-d5
	move.l  AnimObj_CurrentAnim(a0), a2
	move.w  #0x0, Animation_Speed(a2)
	move.b  #0x1, Entity_Active(a0)
	jsr     LeafUpdate
	POPM    d0-d5

	@NextLeaf:
	lea     Leaf_Struct_Size(a0), a0
	dbra    d0, @LeafLp
	POPL    a0

	@OutOfXView:

	rts

WindFlueDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	tst.b   WindFlue_Visible(a0)
	beq     @Invisible

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

	@Invisible:

	rts