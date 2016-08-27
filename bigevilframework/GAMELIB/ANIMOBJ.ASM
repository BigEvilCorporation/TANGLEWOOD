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
AnimObj_Dirty		     rs.b 1 ; Anim needs stepping forcefully
AnimObj_UpdateOutOfView	 rs.b 1 ; Anim can update even when out of view (sprite not linked on last render)
;------------------------------
AnimObj_Struct_Pad       rs.b 2
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
	
	rts

AnimObjDraw:
	; a0 --- AnimObj addr
	; a1 --- Level addr
	
	; Check if visibility test should be skipped
	cmp.b  #0x0, AnimObj_UpdateOutOfView(a0)
	bne    @SkipVisibilityTest
	
	; Check if sprite linked
	move.b SpriteObj_SpriteLinked(a0), d0
	cmp.b  #0x0, d0
	beq    @Invisible
	
	@SkipVisibilityTest:

	; Check if gameobj active
	move.b Entity_Active(a0), d0
	cmp.b  #0x0, d0
	beq    @Inactive
	
	; Check if anim playing
	move.b AnimObj_Playing(a0), d0
	cmp.b  #0x0, d0
	beq    @NotPlaying
	
	; Get current anim
	move.l AnimObj_CurrentAnim(a0), a2
	cmp.l  #0x0, a2
	beq    @NoAnim
	
	; Get anim speed
	clr.l  d0
	move.b Animation_Speed(a2), d0

	; Check if dirty (new anim, set regardless of speed)
	cmp.b  #0x0, AnimObj_Dirty(a0)
	bne    @SkipSpeedTest
	
	; Skip if speed == 0
	cmp.b  #0x0, d0
	beq    @ZeroSpeed

	@SkipSpeedTest:
	
	; Sign extend speed up to longword
	ext.w  d0
	ext.l  d0
	
	; Speed div
	clr.l  d1
	move.b AnimObj_SpeedDiv(a0), d1
	divs   d1, d0
	
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
	cmp.l  d3, d2
	blt    @NotAtEnd
	
	; End of non-looping anim, stop playing
	move.b #0x0, AnimObj_Playing(a0)
	bra    @NotPlaying
	
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
	
	; Anim frame updated
	move.b  #0x0, AnimObj_Dirty(a0)
	
	; Frame advanced, + DMA new tiles to VRAM
	move.l a0, -(sp)
	move.l a1, -(sp)
	move.l a2, -(sp)
	move.l d2, -(sp)
	move.l SpriteObj_VRAMAddr(a0), d0
	move.w SpriteObj_TilesetSize(a0), d1
	move.b Animation_Length(a2), d3
	move.w Animation_FirstFrameOffset(a2), d4
	move.l Animation_AnimTrackSpriteFrame(a2), a1
	move.l SpriteObj_TilesetAddr(a0), a0
	jsr    SPR_LoadAnimFrame
	move.l (sp)+, d2
	move.l (sp)+, a2
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	; X position track
	PUSHL  d2
	move.l #0x0, SpriteObj_DrawOffsetX(a0)		; Reset X position offset
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
	move.w d3, SpriteObj_DrawOffsetX(a0) ; Offset X pos
	
	@NoTrackPosX:
	POPL   d2
	
	; Y position track
	
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

	PLAYSFX_HIGHPRIO d3	; Play SFX (TODO: exlusive and non-exclusive modes)
	
	@NoTrackSFX:
	@NoSFX:
	POPL   d2
	POPL   a0
	
	@Invisible:
	@NoAnim:
	@ZeroSpeed:
	@Inactive:
	@NotPlaying:
	@NoFrameChange:
	
	; Base functionality
	jsr SpriteObjDraw
	
	rts

AnimObjSetAnimation:
	; a0 --- AnimObj addr
	; a1 --- Anim address
	
	; Get current anim
	move.l AnimObj_CurrentAnim(a0), a2
	
	; Check if changed
	cmp.l  a1, a2
	beq    @NoChange
	
	; New anim, clear subframe
	move.l #0x0, AnimObj_AnimSubframe(a0)

	; Set playing
	move.b #0x1, AnimObj_Playing(a0)

	; Mark as dirty
	move.b #0x1, AnimObj_Dirty(a0)
	
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
