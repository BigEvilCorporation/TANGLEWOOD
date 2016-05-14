;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   camera.asm - V/H scroll routines and virtual camera logic
;==============================================================

UpdateCamera:

	; Level to a1
	move.l  (CurrentLevel), a1

	; Update camera pos from target gameobj
	move.l  (CameraTargetGameObjX), a0
	cmp.l   #0x0, a0
	beq     @NoCameraTargetX
	clr.l   d1
	move.l  Entity_WorldPosX(a0), d0	; Get GameObj X
	sub.l   #(SpritePlaneBorderX*SubpixelsPerPixel), d0	; To camera space
	move.w  Entity_Width(a0), d1		; Get GameObj width
	mulu    #SubpixelsPerPixel, d1		; Width to world space
	lsr.w   #0x1, d1					; Centre on GameObj
	add.l   d1, d0

	; Clamp to X bounds
	cmp.l  #0x0, d0
	bge    @WithinBoundsLeft
	move.l #0x0, d0
	@WithinBoundsLeft:
	clr.l  d2
	move.w Level_MapWidth(a1), d2
	mulu   #0x8, d2					; Map width to tiles
	lsl.l  #0x8, d2					; Map width to camera space
	cmp.l  d2, d0
	blt    @WithinBoundsRight
	move.w d2, d0
	@WithinBoundsRight:

	move.l  d0, CameraWorldPosX
	@NoCameraTargetX:
	
	move.l  (CameraTargetGameObjY), a0
	cmp.l   #0x0, a0
	beq     @NoCameraTargetY
	clr.l   d1
	move.l  Entity_WorldPosY(a0), d0	; Get GameObj Y
	sub.l   #(SpritePlaneBorderY*SubpixelsPerPixel), d0	; To camera space
	move.w  Entity_Height(a0), d1		; Get GameObj height
	mulu    #SubpixelsPerPixel, d1		; Height to world space
	lsr.w   #0x1, d1					; Centre on GameObj
	add.l   d1, d0

	; Clamp to Y bounds
	cmp.l  #0x0, d0
	bge    @WithinBoundsTop
	move.l #0x0, d0
	@WithinBoundsTop:
	clr.l  d2
	move.w Level_MapHeight(a1), d2
	mulu   #0x8, d2					; Map height to tiles
	lsl.l  #0x8, d2					; Map height to camera space
	cmp.l  d2, d0
	blt    @WithinBoundsBottom
	move.w d2, d0
	@WithinBoundsBottom:

	move.l  d0, CameraWorldPosY
	@NoCameraTargetY:

	; X to world scroll
	move.l  (CameraWorldPosX), d0
	jsr     CameraPosToWorldScrollX
	move.l  d0, WorldScrollX			; Keep world scroll X
	
	; Scroll X - plane A
	neg.l   d0							; To camera space
	lsr.l   #0x8, d0					; To screen space
	lea     SetHScrollPlaneA, a5
	jsr 	VDPQueue_PushJob
	
	; Scroll X - plane B
	;divu    #0x2, d0
	lsr.w   #0x1, d0
	lea     SetHScrollPlaneB, a5
	jsr 	VDPQueue_PushJob

	; Y to world scroll
	move.l  (CameraWorldPosY), d0
	jsr     CameraPosToWorldScrollY
	move.l  d0, WorldScrollY			; Keep world scroll Y

	; Scroll Y
	lsr.l   #0x8, d0					; To screen space
	lea     SetVScrollPlaneA, a5
	jsr 	VDPQueue_PushJob
	
	rts

CameraPosToWorldScrollX:
	; a1 --- Level address
	; d0 (l) Camera world pos X

	; Scroll X safe border (only scroll beyond these bounds)
	cmp.l   #CameraScrollSafeBorderX, d0
	blt     @ClampLeft
	clr.l   d1
	move.w  Level_MapWidth(a1), d1
	mulu    #0x8, d1
	lsl.l   #0x8, d1
	sub.l   #CameraScrollSafeBorderX, d1
	cmp.l	d1, d0
	bgt		@ClampRight
	jmp		@EndClampX
	@ClampLeft:
	move.l  #CameraScrollSafeBorderX, d0	; Clamp to bounds
	jmp		@EndClampX
	@ClampRight:
	move.l	d1, d0
	@EndClampX:

	sub.l   #(screen_width/2)*SubPixelsPerPixel, d0		; Centred

	rts

CameraPosToWorldScrollY:
	; a1 --- Level address
	; d0 (l) Camera world pos Y

	; Scroll Y safe border (only scroll beyond these bounds)
	cmp.l   #CameraScrollSafeBorderY, d0
	blt     @ClampTop
	clr.l   d1
	move.w  Level_MapHeight(a1), d1
	mulu    #0x8, d1
	lsl.l   #0x8, d1
	sub.l   #CameraScrollSafeBorderY, d1
	cmp.l	d1, d0
	bgt		@ClampBottom
	jmp		@EndClampY
	@ClampTop:
	move.l  #CameraScrollSafeBorderY, d0
	jmp		@EndClampY
	@ClampBottom:
	move.l	d1, d0
	@EndClampY:

	sub.l   #(screen_height/2)*SubPixelsPerPixel, d0		; Centred

	rts
