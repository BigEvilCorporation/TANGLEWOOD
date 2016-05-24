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
	move.l  (CameraTargetGameObj), a0
	cmp.l   #0x0, a0
	beq     @NoCameraTarget
	clr.l   d1
	
	; Get target X/Y
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREY d1, a0
	
	; Sprite space to camera space
	sub.l   #(SpritePlaneBorderX*SubpixelsPerPixel), d0
	sub.l   #(SpritePlaneBorderY*SubpixelsPerPixel), d1
	
	clr.l   d2
	move.l  (CameraTargetLerpSource), a2
	cmp.l   #0x0, a2
	beq     @NoLerp
	
	; Get lerp source X/Y
	ENTITY_GETCENTREX d2, a2
	ENTITY_GETCENTREY d3, a2
	
	; Get lerp T
	clr.l  d4
	move.w (CameraTargetLerpTime), d4
	
	TOPIXELS d0
	TOPIXELS d1
	TOPIXELS d2
	TOPIXELS d3
	
	; Lerp towards target
	LERP_INT1024 d0,d2,d0,d4,d5
	LERP_INT1024 d1,d3,d1,d4,d5
	
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	TOSUBPIXELS d2
	TOSUBPIXELS d3
	
	; Update lerp
	cmp.w  #1024, CameraTargetLerpTime
	beq    @EndLerp
	move.w (CameraTargetLerpSpeed), d2
	add.w  d2, CameraTargetLerpTime

	@EndLerp:
	@NoLerp:

	; Clamp to X bounds
	move.l #0x0, d2
	clr.l  d3
	move.w Level_MapWidth(a1), d3
	mulu   #0x8, d3					; Map width to tiles
	lsl.l  #0x8, d3					; Map width to camera space
	CLAMP  d0, d2, d3
	
	; Clamp to Y bounds
	move.l #0x0, d2
	clr.l  d3
	move.w Level_MapHeight(a1), d3
	mulu   #0x8, d3					; Map height to tiles
	lsl.l  #0x8, d3					; Map height to camera space
	CLAMP  d1, d2, d3

	move.l  d0, CameraWorldPosX
	move.l  d1, CameraWorldPosY
	
	@NoCameraTarget:

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
