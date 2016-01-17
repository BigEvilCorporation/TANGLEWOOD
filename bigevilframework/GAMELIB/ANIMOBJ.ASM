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
	rsset (GameObj_Struct_Size)
;--------------------------
AnimObj_CurrentAnim		 rs.l 1
AnimObj_AnimSubFrame     rs.l 1
AnimObj_Playing  	     rs.b 1
AnimObj_Dirty		     rs.b 1
;------------------------------
AnimObj_Struct_Pad       rs.b 3
AnimObj_Struct_Size      rs.b 0

;==============================================================

AnimObjInit:
	jsr GameObjInit
	move.l #0x0, AnimObj_CurrentAnim(a0)
	move.l #0x0, AnimObj_AnimSubFrame(a0)
	move.l #0x0, GameObj_TilesetAddr(a0)
	move.b #0x0, AnimObj_Playing(a0)
	move.b #0x0, AnimObj_Dirty(a0)
	rts

AnimObjDraw:
	; a0 --- AnimObj addr
	; a1 --- Level addr
	
	; Check if sprite linked
	move.b GameObj_SpriteLinked(a0), d0
	cmp.b  #0x0, d0
	beq    @Invisible

	; Check if gameobj active
	move.b GameObj_Active(a0), d0
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
	
	; Skip if no change in frame # (need a way to mark as 'dirty' if anim data has changed)
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
	move.l GameObj_VRAMAddr(a0), d0
	move.w GameObj_TilesetSize(a0), d1
	move.b Animation_Length(a2), d3
	move.l Animation_AnimTrackSpriteFrame(a2), a1
	move.l GameObj_TilesetAddr(a0), a0
	jsr    SetSpriteAnimFrame
	move.l (sp)+, d2
	move.l (sp)+, a2
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	; X position track
	move.l Animation_AnimTrackPositionX(a2), a3	; Get X position keyframe track
	cmp.l  #0x0, a3
	beq    @NoTrackPosX
	clr.l  d3
	move.b Animation_Length(a0), d3	; Get anim length
	divu   d3, d2          				; Div frame count against num anim frames
	clr.w  d2							; Clear exponent
	swap   d2			   				; Remainder to lower word
	;lsl.w  #0x1, d2		   				; Words to bytes
	move.b (a3,d2.w), d3   				; Get value from anim track
	;ext.l  d3			   				; Sign extend
	lsl.l  #0x8, d3		  				; Pixels to world space
	add.l  d3, Entity_WorldPosX(a0)		; Offset X pos
	@NoTrackPosX:
	
	; Y position track
	
	@Invisible:
	@NoAnim:
	@ZeroSpeed:
	@Inactive:
	@NotPlaying:
	@NoFrameChange:
	
	; Base functionality
	jsr GameObjDraw
	
	rts
	
AnimObjUpdate:
	; a0 --- AnimObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr GameObjUpdate
	
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
