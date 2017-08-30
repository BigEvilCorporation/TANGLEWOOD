;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   camera.asm - V/H scroll routines and virtual camera logic
;==============================================================

CAM_PeekUp:
	move.l (CameraPeekOffsetY), d0
	add.l  #-CameraPeekSpeed, d0
	cmp.l  #-CameraPeekMaxDist, d0
	bgt    @WithinRange
	move.l #-CameraPeekMaxDist, d0
	@WithinRange:
	move.l d0, (CameraPeekOffsetY)
	rts

CAM_PeekDown:
	move.l (CameraPeekOffsetY), d0
	add.l  #CameraPeekSpeed, d0
	cmp.l  #CameraPeekMaxDist, d0
	blt    @WithinRange
	move.l #CameraPeekMaxDist, d0
	@WithinRange:
	move.l d0, (CameraPeekOffsetY)
	rts

CAM_PeekReturn:
	move.l (CameraPeekOffsetY), d0
	cmp.l  #0x0, d0
	beq    @End
	blt    @Up
	bgt    @Down

	@Up:
	add.l  #CameraPeekSpeed, d0
	bra    @End

	@Down:
	add.l  #-CameraPeekSpeed, d0

	@End:
	move.l d0, (CameraPeekOffsetY)

	rts

CAM_StartCameraShake:
	; d0 (w) Velocity X
	; d1 (w) Velocity Y
	; d2 (w) Amplitude X
	; d3 (w) Amplitude Y
	; d4 (w) Timeout (frames)

	move.w d0, CameraShakeSpeedX
	move.w d1, CameraShakeSpeedY
	move.w d2, CameraShakeAmpX
	move.w d3, CameraShakeAmpY
	move.w d4, CameraShakeTimer

	rts

CAM_StopCameraShake:

	move.w #0x0, CameraShakeSpeedX
	move.w #0x0, CameraShakeSpeedY
	move.w #0x0, CameraShakeAmpX
	move.w #0x0, CameraShakeAmpY
	move.w #0x0, CameraShakeTimer

	rts

CAM_LerpBetweenEntities:
	; a0 --- From entity
	; a1 --- To entity
	; d0 (w) Speed

	move.l a0, CameraTargetLerpSource
	move.l a1, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w d0, CameraTargetLerpSpeed
	
	rts

CAM_Update:

	; Level to a1
	move.l  (CurrentLevel), a1

	; Store prev pos before taking new, to calculate velocity
	move.l  (CameraWorldPosX), CameraPrevPosX
	move.l  (CameraWorldPosY), CameraPrevPosY

	; Update camera pos from target gameobj
	move.l  (CameraTargetGameObj), a0
	cmp.l   #0x0, a0
	beq     @NoCameraTarget
	
	;==============================================================
	
	clr.l   d1
	
	; Get camera target X/Y
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREY d1, a0
	
	; Sprite space to camera space
	sub.l   #(vdp_sprite_border_x*subpixels_per_pixel), d0
	sub.l   #(vdp_sprite_border_y*subpixels_per_pixel), d1

	;==============================================================
	
	clr.l   d2

	; If camera lerp active
	tst.w   (CameraTargetLerpSpeed)
	beq     @NoLerp

	; Get lerp source X/Y
	move.l  (CameraTargetLerpStartX), d2
	move.l  (CameraTargetLerpStartY), d3

	; If lerp source object set
	move.l  (CameraTargetLerpSource), a2
	cmp.l   #0x0, a2
	beq     @NoLerpStartObj
	
	; Get lerp source X/Y from object
	ENTITY_GETCENTREX d2, a2
	ENTITY_GETCENTREY d3, a2

	@NoLerpStartObj:

	; Lerp target sprite space to camera space
	sub.l   #(vdp_sprite_border_x*subpixels_per_pixel), d2
	sub.l   #(vdp_sprite_border_y*subpixels_per_pixel), d3

	;==============================================================

	; Get lerp T
	clr.l  d4
	move.w (CameraTargetLerpTime), d4

	; Check if lerp finished
	cmp.w  #1024, d4
	blt    @LerpInProgress

	; Disable lerp
	move.l #0x0, CameraTargetLerpSource
	move.w #0x0, CameraTargetLerpSpeed

	; Finished
	bra    @EndLerp

	;==============================================================

	@LerpInProgress:
	
	TOPIXELS d0
	TOPIXELS d1
	TOPIXELS d2
	TOPIXELS d3
	
	; Lerp towards target
	LERP_INT1024 d0,d2,d0,d4,d5
	LERP_INT1024 d1,d3,d1,d4,d5
	
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	
	; Update lerp time
	move.w (CameraTargetLerpSpeed), d2
	add.w  d2, CameraTargetLerpTime

	@EndLerp:
	@NoLerp:
	
	;==============================================================

	; Clamp X velocity to max
	;move.l  d0, d4
	;move.l  CameraPrevPosX, d3
	;move.l  d3, d2
	;sub.l   d2, d4
	;cmp.l   #camera_max_vel_x, d4
	;bgt     @ClampXVelPositive
	;cmp.l   #-camera_max_vel_x, d4
	;blt     @ClampXVelNegative
	;bra     @EndClampXVel
;
	;@ClampXVelPositive:
	;add.l   #camera_max_vel_x, d3
	;move.l  d3, d0
	;bra     @EndClampXVel
;
	;@ClampXVelNegative:
	;add.l   #-camera_max_vel_x, d3
	;move.l  d3, d0
;
	;@EndClampXVel:
;
	;; Clamp Y velocity to max
	;move.l  d1, d4
	;move.l  CameraPrevPosY, d3
	;move.l  d3, d2
	;sub.l   d2, d4
	;cmp.l   #camera_max_vel_y, d4
	;bgt     @ClampYVelPositive
	;cmp.l   #-camera_max_vel_y, d4
	;blt     @ClampYVelNegative
	;bra     @EndClampYVel
;
	;@ClampYVelPositive:
	;add.l   #camera_max_vel_y, d3
	;move.l  d3, d1
	;bra     @EndClampYVel
;
	;@ClampYVelNegative:
	;add.l   #-camera_max_vel_y, d3
	;move.l  d3, d1
;
	;@EndClampYVel:

	;==============================================================

	; Clamp to X bounds
	move.l #0x0, d2
	clr.l  d3
	move.w Level_MapWidth(a1), d3
	lsl.l  #0x3, d3					; Map width to tiles
	TOSUBPIXELS  d3					; Map width to camera space
	CLAMP  d0, d2, d3
	
	; Clamp to Y bounds
	move.l #0x0, d2
	clr.l  d3
	move.w Level_MapHeight(a1), d3
	lsl.l  #0x3, d3					; Map height to tiles
	TOSUBPIXELS  d3					; Map height to camera space
	CLAMP  d1, d2, d3

	move.l  d0, CameraWorldPosX
	move.l  d1, CameraWorldPosY
	
	@NoCameraTarget:
	
	;==============================================================
	
	; Camera shake X
	tst.w CameraShakeSpeedX
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

	; Camera X to scroll space
	jsr     CAM_CalcScrollPosX
	
	; Scroll X - plane A
	lea     VDP_SetHScrollPlaneA, a5
	jsr 	VDP_JobQueue_PushJob
	
	; Scroll X - plane B
	lsr.w   #0x1, d0
	lea     VDP_SetHScrollPlaneB, a5
	jsr 	VDP_JobQueue_PushJob
	
	;==============================================================
	
	; Camera shake Y
	tst.w CameraShakeSpeedY
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
	jsr     CAM_CalcScrollPosY

	lea     VDP_SetVScrollPlaneA, a5
	jsr 	VDP_JobQueue_PushJob
	
	; Scroll Y - plane B
	; Translate Y scroll from plane A range (total map height) to plane B range (VDP height)
	clr.l   d1
	move.w  Level_MapHeight(a1), d1
	lsl.w   #0x3, d1	; Tiles to pixels

	divu  #((vdp_plane_height/2)*8)-CameraScrollSafeBorderY, d1
	andi.l #0x0000FFFF, d0
	andi.l #0x0000FFFF, d1
	divu  d1, d0
	
	lea     VDP_SetVScrollPlaneB, a5
	jsr 	VDP_JobQueue_PushJob
	
	;==============================================================
	
	; Update camera shake timer
	move.w  (CameraShakeTimer), d0
	tst.w   d0
	beq     @NoTimer
	sub.w   #0x1, d0
	move.w  d0, CameraShakeTimer
	tst.w   d0
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

CAM_CalcScrollPosX:
	; a1 --- Level address
	; d0 (w) OUT: Scroll pos X

	; Perform calc on words so precision matches sprites
	move.w  (CameraWorldPosX), d0		; Top word = integer part
	add.w   (CameraShakeOffsetX), d0	; Add shake offset

	; Scroll X safe border (only scroll beyond these bounds)
	cmp.w   #CameraScrollSafeBorderX, d0
	blt     @ClampLeft
	clr.w   d1
	move.w  Level_MapWidth(a1), d1
	lsl.w   #0x3, d1	; To tiles
	sub.w   #CameraScrollSafeBorderX, d1
	cmp.w	d1, d0
	bgt		@ClampRight
	bra		@EndClampX
	@ClampLeft:
	move.w  #CameraScrollSafeBorderX, d0	; Clamp to bounds
	bra		@EndClampX
	@ClampRight:
	move.w	d1, d0
	@EndClampX:

	sub.w   #(screen_width/2), d0		; Centred

	move.w  d0, d1
	TOSUBPIXELS d1
	move.l  d1, WorldScrollX			; Keep world scroll X
	
	neg.w   d0							; To camera space

	rts

CAM_CalcScrollPosY:
	; a1 --- Level address
	; d0 (l) Camera world pos Y

	; Perform calc on words so precision matches sprites
	move.w  (CameraWorldPosY), d0		; Top word = integer part
	add.w   (CameraShakeOffsetY), d0	; Add shake offset
	add.w   (CameraPeekOffsetY), d0		; Add peek offset

	; Scroll Y safe border (only scroll beyond these bounds)
	cmp.w   #CameraScrollSafeBorderY, d0
	blt     @ClampTop
	clr.w   d1
	move.w  Level_MapHeight(a1), d1
	lsl.w   #0x3, d1	; To tiles
	sub.w   #CameraScrollSafeBorderY, d1
	cmp.w	d1, d0
	bgt		@ClampBottom
	bra		@EndClampY
	@ClampTop:
	move.w  #CameraScrollSafeBorderY, d0
	bra		@EndClampY
	@ClampBottom:
	move.w	d1, d0
	@EndClampY:

	sub.w   #(screen_height/2), d0		; Centred

	move.w  d0, d1
	TOSUBPIXELS d1
	move.l  d1, WorldScrollY			; Keep world scroll Y

	rts
