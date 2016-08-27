;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   camera.asm - V/H scroll routines and virtual camera logic
;==============================================================

CAM_Update:

	; Level to a1
	move.l  (CurrentLevel), a1

	; Update camera pos from target gameobj
	move.l  (CameraTargetGameObj), a0
	cmp.l   #0x0, a0
	beq     @NoCameraTarget
	
	;==============================================================
	
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
	
	; Sprite space to camera space
	sub.l   #(SpritePlaneBorderX*SubpixelsPerPixel), d2
	sub.l   #(SpritePlaneBorderY*SubpixelsPerPixel), d3
	
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
	beq    @FinishedLerp
	move.w (CameraTargetLerpSpeed), d2	; Increment lerp time
	add.w  d2, CameraTargetLerpTime
	bra    @EndLerp
	@FinishedLerp:
	move.l #0x0, CameraTargetLerpSource
	move.w #0x0, CameraTargetLerpSpeed
	@EndLerp:
	
	@NoLerp:
	
	;==============================================================

	; Clamp to X bounds
	move.l #0x0, d2
	clr.l  d3
	move.w Level_MapWidth(a1), d3
	lsl.l  #0x3, d3					; Map width to tiles
	lsl.l  #0x8, d3					; Map width to camera space
	CLAMP  d0, d2, d3
	
	; Clamp to Y bounds
	move.l #0x0, d2
	clr.l  d3
	move.w Level_MapHeight(a1), d3
	lsl.l  #0x3, d3					; Map height to tiles
	lsl.l  #0x8, d3					; Map height to camera space
	CLAMP  d1, d2, d3

	move.l  d0, CameraWorldPosX
	move.l  d1, CameraWorldPosY
	
	@NoCameraTarget:
	
	;==============================================================
	
	; Camera shake X
	cmp.w #0x0, CameraShakeSpeedX
	beq   @NoShakeX
	
	; Get sine
	clr.l  d0
	move.w (CameraShakeSinX), d0
	cmp.w  #(0xFF<<0x8), d0		; Wrap from 255 to 0
	blo    @NoWrapX				; Unsigned comparison
	move.w #0x0, d0
	@NoWrapX:
	
	; Get sine value from table
	lea    sintable, a2
	lsr.w  #0x8, d0					; Subframes to frames
	add.l  d0, a2
	move.b (a2), d0
	ext.w  d0
	ext.l  d0
	
	; Mul by amplitude
	muls (CameraShakeAmpX), d0
	
	; Set offset
	move.l d0, CameraShakeOffsetX
	
	; Advance sine step
	move.w (CameraShakeSpeedX), d0
	add.w  d0, CameraShakeSinX
	
	bra    @ShakeX
	
	@NoShakeX:
	move.l #0x0, CameraShakeOffsetX
	
	@ShakeX:
	
	;==============================================================

	; X to world scroll
	move.l  (CameraWorldPosX), d0
	jsr     CAM_PosToWorldScrollX
	move.l  d0, WorldScrollX			; Keep world scroll X
	add.l  (CameraShakeOffsetX), d0		; Add shake offset
	
	; Scroll X - plane A
	neg.l   d0							; To camera space
	lsr.l   #0x8, d0					; To screen space
	lea     VDP_SetHScrollPlaneA, a5
	jsr 	VDP_JobQueue_PushJob
	
	; Scroll X - plane B
	lsr.w   #0x1, d0
	lea     VDP_SetHScrollPlaneB, a5
	jsr 	VDP_JobQueue_PushJob
	
	;==============================================================
	
	; Camera shake Y
	cmp.w #0x0, CameraShakeSpeedY
	beq   @NoShakeY
	
	; Get sine
	clr.l  d0
	move.w (CameraShakeSinY), d0
	cmp.w  #(0xFF<<0x8), d0		; Wrap from 255 to 0
	blo    @NoWrapY				; Unsigned comparison
	move.w #0x0, d0
	@NoWrapY:
	
	; Get sine value from table
	lea    sintable, a2
	lsr.w  #0x8, d0					; Subframes to frames
	add.l  d0, a2
	move.b (a2), d0
	ext.w  d0
	ext.l  d0
	
	; Mul by amplitude
	muls (CameraShakeAmpY), d0
	
	; Set offset
	move.l d0, CameraShakeOffsetY
	
	; Advance sine step
	move.w (CameraShakeSpeedY), d0
	add.w d0, CameraShakeSinY
	
	bra    @ShakeY
	
	@NoShakeY:
	move.l #0x0, CameraShakeOffsetY
	
	@ShakeY:
	
	;==============================================================

	; Y to world scroll
	move.l  (CameraWorldPosY), d0
	jsr     CAM_PosToWorldScrollY
	move.l  d0, WorldScrollY			; Keep world scroll Y
	add.l  (CameraShakeOffsetY), d0		; Add shake offset

	; Scroll Y - plane A
	lsr.l   #0x8, d0					; To screen space
	lea     VDP_SetVScrollPlaneA, a5
	jsr 	VDP_JobQueue_PushJob
	
	; Scroll Y - plane B
	; HACK - Works for Tanglewood's 90-high foreground plane, needs a better implementation
	
	; Translate WorldScrollY to screen space with safe borders
	clr.l   d1
	move.l  (WorldScrollY), d0
	add.l   (CameraShakeOffsetY), d0
	move.w  Level_MapHeight(a1), d1
	lsl.l   #0x3, d1	; To tiles
	lsl.l   #0x8, d1	; To camera space
	sub.l   #CameraScrollSafeBorderY, d1
	sub.l   #(screen_height/2)*SubPixelsPerPixel, d1
	
	; Invert scroll, offset from bottom of screen
	sub.l   d0, d1
	lsr.l   #0x8, d1
	move.w  d1, d0
	neg.w   d0
	PIXELS2TILES d0
	
	; Div/2 to keep scroll bounds within 90-high plane A
	lsr.w   #0x1, d0
	
	; Offset 2-cell bottom border
	add.w   #((vdp_plane_height*8)-screen_height), d0
	
	; Clamp top
	cmp.w   #(vdp_plane_height*8), d0
	bgt     @NoClampPlaneB
	move.w  #(vdp_plane_height*8), d0
	@NoClampPlaneB:
	
	lea     VDP_SetVScrollPlaneB, a5
	jsr 	VDP_JobQueue_PushJob
	
	;==============================================================
	
	; Update camera shake timer
	move.w  (CameraShakeTimer), d0
	cmp.w   #0x0, d0
	beq     @NoTimer
	sub.w   #0x1, d0
	move.w  d0, CameraShakeTimer
	cmp.w   #0x0, d0
	bne     @TimerRunning
	
	; Timer elapsed
	move.w  #-1, CameraShakeTimer
	move.w  #0x0, CameraShakeSpeedX
	move.w  #0x0, CameraShakeSpeedY
	move.l  #0x0, CameraShakeOffsetX
	move.l  #0x0, CameraShakeOffsetY
	
	@NoTimer:
	@TimerRunning:
	
	rts

CAM_PosToWorldScrollX:
	; a1 --- Level address
	; d0 (l) Camera world pos X

	; Scroll X safe border (only scroll beyond these bounds)
	cmp.l   #CameraScrollSafeBorderX, d0
	blt     @ClampLeft
	clr.l   d1
	move.w  Level_MapWidth(a1), d1
	lsl.l   #0x3, d1	; To tiles
	lsl.l   #0x8, d1	; To camera space
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

CAM_PosToWorldScrollY:
	; a1 --- Level address
	; d0 (l) Camera world pos Y

	; Scroll Y safe border (only scroll beyond these bounds)
	cmp.l   #CameraScrollSafeBorderY, d0
	blt     @ClampTop
	clr.l   d1
	move.w  Level_MapHeight(a1), d1
	lsl.l   #0x3, d1	; To tiles
	lsl.l   #0x8, d1	; To camera space
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
