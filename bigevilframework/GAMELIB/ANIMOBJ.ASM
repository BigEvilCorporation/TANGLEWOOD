;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   animobj.asm - Animated game object structures and routines
;==============================================================

;==============================================================
; Animated GameObject base
;==============================================================
	rsset (SpriteObj_Struct_Size)
;--------------------------
AnimObj_CurrentAnim		 rs.l 1 ; Current Animation data
AnimObj_AnimSubFrame     rs.l 1 ; Current subframe
AnimObj_SpeedDiv  	     rs.b 1 ; Anim speed div
AnimObj_Playing  	     rs.b 1 ; Anim currently playing
AnimObj_Reverse			 rs.b 1 ; Play in reverse
AnimObj_Dirty		     rs.b 1 ; Anim needs stepping forcefully
AnimObj_UpdateOutOfView	 rs.b 1 ; Anim can update even when out of view (sprite not linked on last render)
AnimObj_UploadFrame	 	 rs.b 1 ; Frame needs uploading to VRAM
;------------------------------
AnimObj_Struct_Pad       rs.b 0
AnimObj_Struct_Size      rs.b 0

;==============================================================

AnimObjInit:
	; a0 --- AnimObj addr
	; a1 --- Level addr
	
	; Init base
	jsr SpriteObjInit
	
	; Set type
	ori.l  #entity_type_animobj, Entity_TypeBits(a0)
	
	; Set default state
	move.l #0x0, AnimObj_CurrentAnim(a0)
	move.l #0x0, AnimObj_AnimSubFrame(a0)
	move.b #0x1, AnimObj_SpeedDiv(a0)
	move.b #0x0, AnimObj_Playing(a0)
	move.b #0x0, AnimObj_Dirty(a0)
	move.b #0x0, AnimObj_UploadFrame(a0)
	
	rts
	
AnimObjUpdate:
	; a0 --- AnimObj addr
	; a1 --- Level addr
	
	; If sprite linked or configured to update out of view, and active, and playing
	move.b AnimObj_UpdateOutOfView(a0), d0
	or.b   SpriteObj_SpriteLinked(a0), d0
	and.b  Entity_Active(a0), d0
	and.b  AnimObj_Playing(a0), d0
	beq    @InvisibleOrInactive
	
	; Get current anim
	move.l AnimObj_CurrentAnim(a0), a2
	cmp.l  #0x0, a2
	beq    @NoAnim
	
	; Get anim speed
	move.w Animation_Speed(a2), d0

	; If reversed
	tst.b  AnimObj_Reverse(a0)
	beq    @NoReverse
	neg.w  d0
	@NoReverse:

	; Check if dirty (new anim, set regardless of speed)
	cmp.b  #0x0, AnimObj_Dirty(a0)
	bne    @SkipSpeedTest
	
	; Skip if speed == 0
	cmp.b  #0x0, d0
	beq    @ZeroSpeed

	@SkipSpeedTest:
	
	; Sign extend speed up to longword
	ext.l  d0
	
	; Speed div
	cmp.b  #0x0, Animation_NoSpeedScale(a2)
	bne    @NoSpeedScale
	move.b AnimObj_SpeedDiv(a0), d1
	cmp.b  #0x1, d1
	beq    @NoSpeedScale
	andi.l #0x000000FF, d1
	divs   d1, d0
	@NoSpeedScale:
	
	; Sign extend speed up to longword
	ext.l  d0
	
	move.l AnimObj_AnimSubframe(a0), d2 ; Get current subframe from RAM
	move.l d2, d1
	add.l  d0, d2   ; Advance subframe
	move.l d2, AnimObj_AnimSubframe(a0) ; Subframe back to RAM
	
	; If non-looping anim
	move.b Animation_Looping(a2), d0
	cmp.b  #0x1, d0
	beq    @LoopingAnim

	clr.l  d3
	move.b Animation_Length(a2), d3	; Get anim length
	lsl.l  #0x8, d3 ; To subframes
	
	; Check if not at end
	tst.b  AnimObj_Reverse(a0)
	bne    @EndAtStart
	cmp.l  d3, d2
	blt    @NotAtEnd
	bra    @AtEnd
	@EndAtStart:
	cmp.l  #0x0, d2
	@AtEnd:
	
	; End of non-looping anim, stop playing
	move.b #0x0, AnimObj_Playing(a0)
	bra    @EndLoop
	
	@LoopingAnim:
	@NotAtEnd:

	lsr.l  #0x8, d1 ; Prev subframes to frames
	lsr.l  #0x8, d2 ; New subframes to frames

	; Check if dirty (new anim, set regardless of frame change)
	cmp.b  #0x0, AnimObj_Dirty(a0)
	bne    @SkipFrameCheck
	
	; Skip if no change in frame #
	cmp.l  d1, d2
	beq    @NoFrameChange  ; Branch if no frame change

	@SkipFrameCheck:
	
	; New frame needs uploading to VRAM
	move.b #0x1, AnimObj_UploadFrame(a0)
	
	; No longer dirty
	move.b  #0x0, AnimObj_Dirty(a0)
	
	@InvisibleOrInactive:
	@NoAnim:
	@ZeroSpeed:
	@EndLoop:
	@NoFrameChange:
	
	rts

AnimObjDraw:
	; a0 --- AnimObj addr
	; a1 --- Level addr

	; Check if new frame needs uploading to VRAM
	cmp.b  #0x0, AnimObj_UploadFrame(a0)
	beq    @NoNewFrame
	
	; Get current anim
	move.l AnimObj_CurrentAnim(a0), a2
	
	; Get length
	move.b Animation_Length(a2), d3
	cmp.b  #0x0, d3
	beq    @ZeroLength

	; Get subframe
	move.l AnimObj_AnimSubframe(a0), d2

	; To frames
	lsr.l  #0x8, d2
	
	; Wrap
	andi.l #0xFFFF, d2
	andi.l #0xFF, d3
	divs   d3, d2		; Div frame count against num anim frames
	clr.w  d2
	swap   d2			; Remainder to lower word
	
	; Frame advanced, + DMA new tiles to VRAM
	movem.l d2/a0-a2, -(sp)
	move.w SpriteObj_VRAMAddr(a0), d0
	move.w SpriteObj_TilesetSize(a0), d1
	move.w Animation_FirstFrameOffset(a2), d4
	move.l Animation_AnimTrackSpriteFrame(a2), a1
	move.l SpriteObj_TilesetAddr(a0), a0
	jsr    SPR_LoadAnimFrame
	movem.l (sp)+, d2/a0-a2
	
	; X position track
	PUSHL  d2
	move.l Animation_AnimTrackPositionX(a2), a3	; Get X position keyframe track
	cmp.l  #0x0, a3
	beq    @NoTrackPosX
	
	clr.l  d3
	move.b Animation_Length(a2), d3		; Get anim length
	divu   d3, d2          				; Div frame count against num anim frames
	clr.w  d2							; Clear exponent
	swap   d2			   				; Remainder to lower word
	move.b (a3,d2.w), d3   				; Get value from anim track
	ext.w  d3			   				; Sign extend
	cmp.b  #0x0, SpriteObj_FlippedX(a0)	; If X flipped
	beq    @NotFlippedX
	neg.w  d3							; Negate X offset
	@NotFlippedX:
	move.w d3, SpriteObj_DrawOffsetX(a0) ; Offset X pos
	
	@NoTrackPosX:
	POPL   d2
	
	; Y position track
	PUSHL  d2
	move.l Animation_AnimTrackPositionY(a2), a3	; Get Y position keyframe track
	cmp.l  #0x0, a3
	beq    @NoTrackPosY
	
	clr.l  d3
	move.b Animation_Length(a2), d3		; Get anim length
	divu   d3, d2          				; Div frame count against num anim frames
	clr.w  d2							; Clear exponent
	swap   d2			   				; Remainder to lower word
	move.b (a3,d2.w), d3   				; Get value from anim track
	neg.w  d3							; Correct for coord sys
	ext.w  d3			   				; Sign extend
	move.w d3, SpriteObj_DrawOffsetY(a0) ; Offset Y pos
	
	@NoTrackPosY:
	POPL   d2
	
	; SFX track
	PUSHL  a0
	PUSHL  d2
	move.l Animation_AnimTrackSFX(a2), a3	; Get SFX keyframe track
	cmp.l  #0x0, a3
	beq    @NoTrackSFX
	
	clr.l  d3
	move.b Animation_Length(a2), d3		; Get anim length
	divu   d3, d2          				; Div frame count against num anim frames
	clr.w  d2							; Clear exponent
	swap   d2			   				; Remainder to lower word
	lsl.w  #0x2, d2						; To ptr size
	add.l  d2, a3						; Offset to SFX address
	move.l (a3), d3						; Get SFX address from anim track
	cmp.l  #0x0, d3
	beq    @NoSFX
    
	PLAYSFX d3	; Play SFX (TODO: exlusive and non-exclusive modes)
	
	@NoTrackSFX:
	@NoSFX:
	POPL   d2
	POPL   a0
	
	; Done
	move.b #0x0, AnimObj_UploadFrame(a0)
	
	@NoNewFrame:
	@ZeroLength:
	
	; Base functionality
	jsr SpriteObjDraw
	
	rts

AnimObjSetAnimation:
	; a0 --- AnimObj addr
	; a1 --- Anim address
	
	; Get current anim
	move.l AnimObj_CurrentAnim(a0), a2

	; If not playing and allowed to replay, reset
	move.b AnimObj_Playing(a0), d0
	or.b   Animation_NoReplay(a2), d0
	beq    @SkipChangeCheck
	
	; Check if changed
	cmp.l  a1, a2
	beq    @NoChange

	@SkipChangeCheck:
	
	; New anim, clear subframe
	move.l #0x0, AnimObj_AnimSubframe(a0)

	; Set playing
	move.b #0x1, AnimObj_Playing(a0)

	; Mark as dirty
	move.b #0x1, AnimObj_Dirty(a0)

	; Reset draw offset if no offset tracks
	cmp.l  #0x0, Animation_AnimTrackPositionX(a2)
	bne    @HasTrackX
	move.w #0x0, SpriteObj_DrawOffsetX(a0)
	@HasTrackX:

	cmp.l  #0x0, Animation_AnimTrackPositionY(a2)
	bne    @HasTrackY
	move.w #0x0, SpriteObj_DrawOffsetY(a0)
	@HasTrackY:
	
	; Set current anim
	move.l a1, AnimObj_CurrentAnim(a0)
	
	@NoChange:
	
	rts
	
AnimObjGetCurrentFrame:
	; a0 --- AnimObj addr
	; a1 --- Level addr
	; d0 (b) Return val - anim frame
	
	clr.l  d0

	move.l AnimObj_CurrentAnim(a0), a2
	cmp.l  #0x0, a2
	beq    @NoAnim
	
	move.l AnimObj_AnimSubFrame(a0), d0
	move.b Animation_Length(a2), d1
	
	lsr.l  #0x8, d0		; Subframes to frames
	and.l  #0x0000FFFF, d0
	and.l  #0x000000FF, d1

	divu  d1, d0		; Div frame count against num anim frames
	swap   d0			; Remainder to lower word
	
	@NoAnim:

	rts
