;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   leaf.asm - Slow floating leaf, decoration only
;==============================================================

; Constants
Leaf_MaxEntities   equ 0x3
Leaf_Width         equ 0x8
Leaf_Height        equ 0x8
Leaf_FallVelocity  equ -0x18
Leaf_SinSpeed      equ (0x1<<0x8)
Leaf_FloatWidth    equ 0x0020
Leaf_WindowWidth   equ (vdp_plane_width*8)
Leaf_WindowHeight  equ (vdp_plane_height*8)
Leaf_WindowBorderX equ (Leaf_WindowWidth-screen_width)/2
Leaf_WindowBorderY equ (Leaf_WindowHeight-screen_height)/2

WorldToLeafWindowX equ (Leaf_WindowBorderX-SpritePlaneBorderX)*SubPixelsPerPixel
WorldToLeafWindowY equ (Leaf_WindowBorderY-SpritePlaneBorderY)*SubPixelsPerPixel

; TEMP
gameobjects_leaf_count equ 0x3

; Struct
	rsset (AnimObj_Struct_Size)
;--------------------------
Leaf_Animation	 rs.b (Animation_Struct_Size)
Leaf_StartPosWorldX  rs.l 1
Leaf_ResetTimer      rs.w 1
Leaf_SineStep        rs.w 1
;--------------------------
Leaf_Struct_Pad      rs.b 0	; Alignment padding
Leaf_Struct_Size     rs.b 0

LeafInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base init
	jsr AnimObjInit
	
	; Set type
	addi.l #entity_type_leaf, Entity_TypeBits(a0)
	
	; Set update and render routines
	move.l #LeafUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList

	; Default state
	move.b #0x0, GameObj_Active(a0)
	move.b #0x0, GameObj_Visible(a0)
	move.b #0x0, GameObj_HasPhysics(a0)
	move.w #Leaf_Width, Entity_Width(a0)
	move.w #Leaf_Height, Entity_Height(a0)

	; Init fall animation
	move.l  a0, a2
	add.l   #Leaf_Animation, a2
	move.l  #Anim_LeafFall, Animation_AnimTrackSpriteFrame(a2)
	move.b  #Anim_LeafFall_Speed, Animation_Speed(a2)
	move.b  #Anim_LeafFall_SizeB, Animation_Length(a2)
	move.b  #0x1, Animation_Looping(a2)
	
	; Set animation
	move.l  a2, AnimObj_CurrentAnim(a0)
	move.b  #0x1, AnimObj_Playing(a0)

	jsr    RandLong
	move.b d0, Leaf_SineStep(a0)	; 0-255
	jsr    RandLong
	and.w  #0x03FF, d0
	move.w d0, Leaf_ResetTimer(a0)	; 0-1024

	rts

LeafUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Check if already active
	move.b GameObj_Active(a0), d0
	cmp.b  #0x0, d0
	bne    @AlreadyActive
	
	; Check reset timer
	move.w Leaf_ResetTimer(a0), d0
	cmp.w  #0x0, d0
	bne    @Inactive
	
	; Calc random X starting position
	jsr    RandLong
	and.l  #0x0000FFFF, d0
	divu   #Leaf_WindowWidth, d0	; Mod by WindowWidth
	clr.w  d0
	swap   d0
	add.l  #SpritePlaneBorderX, d0
	mulu   #SubPixelsPerPixel, d0
	add.l  (WorldScrollX), d0
	sub.l  #(Leaf_WindowBorderX*SubPixelsPerPixel), d0
	move.l d0, Entity_WorldPosX(a0)
	move.l d0, Leaf_StartPosWorldX(a0)

	; If X is within viewable rect
	move.l (WorldScrollX), d1
	add.l  #(SpritePlaneBorderX*SubPixelsPerPixel), d1
	cmp.l  d0, d1
	bgt    @OutOfView
	add.l  #(screen_width*SubPixelsPerPixel), d1
	cmp.l  d0, d1
	blt    @OutOfView

	; Start from top of scroll plane
	move.l (WorldScrollY), d0
	add.l  #((SpritePlaneBorderY-Leaf_WindowBorderY)*SubPixelsPerPixel), d0
	move.l d0, Entity_WorldPosY(a0)
	bra    @EndViewTest

	@OutOfView:
	; else calc random Y starting pos
	jsr    RandLong
	and.l  #0x0000FFFF, d0
	divu   #Leaf_WindowHeight, d0	; Mod by bounds height
	clr.w  d0
	swap   d0
	add.l  #SpritePlaneBorderY, d0
	mulu   #SubPixelsPerPixel, d0
	add.l  (WorldScrollY), d0
	sub.l  #(Leaf_WindowBorderY*SubPixelsPerPixel), d0
	move.l d0, Entity_WorldPosY(a0)
	
	@EndViewTest:

	; Activate
	move.b #0x1, GameObj_Active(a0)
	move.b #0x1, GameObj_Visible(a0)
	
	@AlreadyActive:
	
	; Check if out of bounds
	move.l Entity_WorldPosX(a0), d0
	add.l  #WorldToLeafWindowX, d0
	sub.l  (WorldScrollX), d0
	cmp.l  #0x0, d0
	blt    @OutOfBounds
	cmp.l  #(Leaf_WindowWidth*SubPixelsPerPixel), d0
	bgt    @OutOfBounds

	move.l Entity_WorldPosY(a0), d0
	add.l  #WorldToLeafWindowY, d0
	sub.l  (WorldScrollY), d0
	cmp.l  #0x0, d0
	blt    @OutOfBounds
	cmp.l  #(Leaf_WindowHeight*SubPixelsPerPixel), d0
	bgt    @OutOfBounds
	bra    @WithinBounds

	@OutOfBounds:
	
	; Out of bounds, disable and reset timer
	move.b #0x0, GameObj_Active(a0)
	move.b #0x0, GameObj_Visible(a0)
	
	jsr    RandLong
	and.w  #0x003F, d0	; 0-128
	move.w d0, Leaf_ResetTimer(a0)
	bra    @End
	
	@WithinBounds:

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
	move.b GameObj_SpeedDiv(a0), d2
	divs   d2, d1
	
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

	; Update X position
	muls   #((Leaf_FloatWidth*SubPixelsPerPixel)/256), d0 ; To X range
	move.l Leaf_StartPosWorldX(a0), d1                    ; Offset X pos
	add.l  d1, d0
	move.l d0, Entity_WorldPosX(a0)

	; Update animation frame
	add.w  #0x00FF, d2	; Sine value to 0-256 range
	muls   #((Anim_LeafFall_SizeB*SubframesPerFrame)/256), d2 ; To anim range
	add.l  #((Anim_LeafFall_SizeB*SubframesPerFrame)/2), d2   ; Offset to anim start (sine starts at 128)
	move.l AnimObj_AnimSubFrame(a0), d3
	move.l d2, AnimObj_AnimSubFrame(a0)

	; If anim frame changed, mark as dirty
	lsr    #0x8, d2
	lsr    #0x8, d3
	cmp.l  d2, d3
	beq    @NoAnimChange
	move.b #0x1, AnimObj_Dirty(a0)
	@NoAnimChange:
	
	jsr AnimObjUpdate
	
	bra @End
	
	@Inactive:
	
	; Decrement timer
	sub.w  #0x1, d0
	move.w d0, Leaf_ResetTimer(a0)
	
	@End:

	; Set velocity
	move.w #Leaf_FallVelocity, GameObj_VelY(a0)

	rts

