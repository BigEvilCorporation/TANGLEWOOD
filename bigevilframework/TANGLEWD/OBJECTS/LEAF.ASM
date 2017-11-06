;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   leaf.asm - Slow floating leaf, decoration only
;==============================================================

; Constants
Leaf_Width         equ 0x8
Leaf_Height        equ 0x8
Leaf_FallVelocity  equ -0x1800
Leaf_SinSpeed      equ (0x1<<0x8)
Leaf_FloatWidth    equ 0x0020
Leaf_WindowWidth   equ (vdp_plane_width*8)
Leaf_WindowHeight  equ (vdp_plane_height*8)
Leaf_WindowBorderX equ (Leaf_WindowWidth-screen_width)/2
Leaf_WindowBorderY equ (Leaf_WindowHeight-screen_height)/2
Leaf_MaxVelX       equ 0x080000
Leaf_MaxVelY       equ Leaf_FallVelocity
Leaf_DecelX        equ 0x000600
Leaf_Mass          equ 0x1

WorldToLeafWindowX equ (Leaf_WindowBorderX-vdp_sprite_border_x)*subpixels_per_pixel
WorldToLeafWindowY equ (Leaf_WindowBorderY-vdp_sprite_border_y)*subpixels_per_pixel

Leaf_NumVariations equ 0x4

LeafFrameOffsets:
	dc.w actor_leaf_sheet_green_frameoffset
	dc.w actor_leaf_sheet_red_frameoffset
	dc.w actor_leaf_sheet_turquoise_frameoffset
	dc.w actor_leaf_sheet_brown_frameoffset

; Struct
	rsset (AnimObj_Struct_Size)
;--------------------------
Leaf_Animation       rs.b (Animation_Struct_Size)
Leaf_VelX            rs.l 1
Leaf_StartPosWorldX  rs.l 1
Leaf_ResetTimer      rs.w 1
Leaf_SineStep        rs.w 1
Leaf_MoveX           rs.b 1
;--------------------------
Leaf_Struct_Pad      rs.b 3	; Alignment padding
Leaf_Struct_Size     rs.b 0

LeafInit:
	; a0 --- Object addr
	; a1 --- Level addr
	
	; Base init
	jsr AnimObjInit
	
	; Set type
	ori.l  #entity_type_leaf, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Leaf
	
	; Set update and render routines
	move.l #LeafUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList

	; Default state
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)
	move.w #Leaf_Width, Entity_Width(a0)
	move.w #Leaf_Height, Entity_Height(a0)
	move.l #0x0, Leaf_VelX(a0)
	move.b #0x1, Leaf_MoveX(a0)

	; Setup animation
	lea    Leaf_Animation(a0), a3
	
	; Select next colour sheet in array
	clr.l  d0
	move.w (EntityCount_Leaf), d0
	divu   #Leaf_NumVariations, d0
	clr.w  d0
	swap   d0
	mulu   #size_word, d0
	lea    LeafFrameOffsets, a2
	add.l  d0, a2
	move.w (a2), d1
	move.w (a2), Animation_FirstFrameOffset(a3)

	; Load anim
	ANIM_LOAD_MANUALCONTROL leaf,green,fall,Leaf_Animation,0
	
	; Set animation
	move.l  a3, AnimObj_CurrentAnim(a0)
	move.b  #0x1, AnimObj_Playing(a0)

	; Randomise sine step
	jsr    RND_GenerateLong
	move.b d0, Leaf_SineStep(a0)	; 0-255

	; Randomise reset timer
	jsr    RND_GenerateLong
	and.w  #0x03FF, d0
	move.w d0, Leaf_ResetTimer(a0)	; 0-1024

	rts

LeafLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_DEFAULT leaf,brown,PaletteId_World0,0x0

	rts

LeafUpdate:
	; a0 --- Object addr
	; a1 --- Level addr

	; Check if already active
	move.b Entity_Active(a0), d0
	tst.b  d0
	bne    @AlreadyActive
	
	; Check reset timer
	move.w Leaf_ResetTimer(a0), d0
	tst.w  d0
	bne    @Inactive

	;==============================================================

	tst.b  Leaf_MoveX(a0)
	beq    @NoMoveX
	
	; Calc random X starting position
	move.l (frame_counter_render), d0
	eor.l  d0, rand_seed
	jsr    RND_GenerateLong
	and.l  #0x0000FFFF, d0
	divu   #Leaf_WindowWidth, d0	; Mod by WindowWidth
	clr.w  d0
	swap   d0
	addi.l #vdp_sprite_border_x, d0
	TOSUBPIXELS d0
	add.l  (WorldScrollX), d0
	sub.l  #(Leaf_WindowBorderX*subpixels_per_pixel), d0
	move.l d0, Entity_WorldPosX(a0)
	move.l d0, Leaf_StartPosWorldX(a0)

	; If X is within viewable rect
	move.l (WorldScrollX), d1
	addi.l #(vdp_sprite_border_x*subpixels_per_pixel), d1
	cmp.l  d0, d1
	bgt    @OutOfView
	addi.l #(screen_width*subpixels_per_pixel), d1
	cmp.l  d0, d1
	blt    @OutOfView

	; Start from top of scroll plane
	move.l (WorldScrollY), d0
	addi.l #((vdp_sprite_border_y-Leaf_WindowBorderY)*subpixels_per_pixel), d0
	move.l d0, Entity_WorldPosY(a0)
	bra    @EndViewTest

	@OutOfView:
	; else calc random Y starting pos
	jsr    RND_GenerateLong
	and.l  #0x0000FFFF, d0
	divu   #Leaf_WindowHeight, d0	; Mod by bounds height
	clr.w  d0
	swap   d0
	addi.l #vdp_sprite_border_y, d0
	TOSUBPIXELS d0
	add.l  (WorldScrollY), d0
	sub.l  #(Leaf_WindowBorderY*subpixels_per_pixel), d0
	move.l d0, Entity_WorldPosY(a0)
	
	@EndViewTest:

	; Activate
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)
	
	@AlreadyActive:

	;==============================================================
	
	; Check if out of bounds
	move.l Entity_WorldPosX(a0), d0
	addi.l #WorldToLeafWindowX, d0
	sub.l  (WorldScrollX), d0
	tst.l  d0
	blt    @OutOfBounds
	cmp.l  #(Leaf_WindowWidth*subpixels_per_pixel), d0
	bgt    @OutOfBounds

	move.l Entity_WorldPosY(a0), d0
	addi.l #WorldToLeafWindowY, d0
	sub.l  (WorldScrollY), d0
	tst.l  d0
	blt    @OutOfBounds
	cmp.l  #(Leaf_WindowHeight*subpixels_per_pixel), d0
	bgt    @OutOfBounds
	bra    @WithinBounds

	@OutOfBounds:
	
	; Out of bounds, disable and reset timer
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)
	
	; If blown off by wind, reset immediately to help exaggerate the wind effect
	lea    PhysicsWorld, a2
	move.l PhysicsWorld_Wind(a2), d1
	tst.l  d1
	beq    @NoWind
	move.w #0x1, Leaf_ResetTimer(a0)
	bra    @End

	@NoWind:

	; else set random reset timer
	jsr    RND_GenerateLong
	and.w  #0x003F, d0	; 0-128
	move.w d0, Leaf_ResetTimer(a0)
	bra    @End
	
	@WithinBounds:

	@NoMoveX:

	;==============================================================

	; Wrap sine step
	clr.l  d0
	clr.l  d1
	move.w Leaf_SineStep(a0), d0
	cmp.w  #(0xFF<<0x8), d0		; Wrap from 255 to 0
	blo    @Inc					; Unsigned comparison
	move.w #0x0, d0
	@Inc:
	
	; Get speed
	move.w #Leaf_SinSpeed, d1
	
	; Apply speed div
	clr.l  d2
	ext.l  d1						; Sign extend word to long
	move.b AnimObj_SpeedDiv(a0), d2
	cmp.b  #0x1, d2
	beq    @NoSpeedDiv
	divs   d2, d1
	@NoSpeedDiv:
	
	; Increment sin step
	add.w  d1, d0
	move.w d0, Leaf_SineStep(a0)

	; Get sine value from table
	lea    sintable, a2
	lsr.w  #0x8, d0					; Subframes to frames
	add.l  d0, a2
	move.b (a2), d0
	move.b d0, d2					; Backup for animation frame
	ext.w  d0
	ext.l  d0

	; Update X anim draw offset
	tst.b  Leaf_MoveX(a0)
	beq    @NoDrawOffset
	muls   #((Leaf_FloatWidth*subpixels_per_pixel)/256), d0 ; To X range
	TOPIXELS d0
	move.w d0, SpriteObj_DrawOffsetX(a0)
	@NoDrawOffset:

	; Update animation frame
	addi.w #0x00FF, d2	; Sine value to 0-256 range
	muls   #((actor_leaf_sheet_brown_anim_fall_numframes*SubframesPerFrame)/256), d2 ; To anim range
	addi.l #((actor_leaf_sheet_brown_anim_fall_numframes*SubframesPerFrame)/2), d2   ; Offset to anim start (sine starts at 128)
	move.l AnimObj_AnimSubFrame(a0), d3
	move.l d2, AnimObj_AnimSubFrame(a0)

	; If anim frame changed, mark as dirty
	lsr    #0x8, d2
	lsr    #0x8, d3
	cmp.l  d2, d3
	beq    @NoAnimChange
	move.b #0x1, AnimObj_Dirty(a0)
	@NoAnimChange:

	;==============================================================
	
	; Drop under gravity
	move.l   #Leaf_FallVelocity, d1
	move.b AnimObj_SpeedDiv(a0), d2
	cmp.b  #0x1, d2
	beq    @NoDiv
	divs   d2, d1
	@NoDiv:
	ext.l  d1
	sub.l  d1, Entity_WorldPosY(a0)

	;==============================================================

	tst.b  Leaf_MoveX(a0)
	beq    @NoVelocity

	; Get wind and current velocity
	lea    PhysicsWorld, a2
	move.l Leaf_VelX(a0), d0
	move.l PhysicsWorld_Wind(a2), d1
	tst.l  d1
	beq    @WindOff

	; Apply and clamp
	add.l  d1, d0
	CLAMP  d0, #-Leaf_MaxVelX, #Leaf_MaxVelX

	bra    @EndDecel

	;==============================================================

	@WindOff:

	; Determine deceleration direction
	tst.l d0
	beq @EndDecel		; No velocity
	bgt @DecelFromPos	; Postive velocity
	blt @DecelFromNeg	; Negative velocity
	
	; Decelerate from positive X velocity towards 0
	@DecelFromPos:
	sub.l #Leaf_DecelX, d0
	tst.l d0	; Clamp to 0
	bge @EndDecel
	move.l #0x0, d0
	bra @EndDecel
	
	; Decelerate from negative X velocity towards 0
	@DecelFromNeg:
	addi.l #Leaf_DecelX, d0
	tst.l d0	; Clamp to 0
	ble @EndDecel
	move.l #0x0, d0
	
	@EndDecel:

	;==============================================================
	
	; Set velocity
	move.l d0, Leaf_VelX(a0)

	; Apply velocity
	add.l  d0, Entity_WorldPosX(a0)

	@NoVelocity:
	
	; Done
	bra    @End

	;==============================================================
	
	@Inactive:
	
	; Decrement timer
	subq.w  #0x1, d0
	move.w d0, Leaf_ResetTimer(a0)
	
	;==============================================================

	@End:
	
	; Base functionality
	jsr    AnimObjUpdate

	rts
