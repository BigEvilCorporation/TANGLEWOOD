;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   firefly.asm - Firefly pickups
;==============================================================

; Constants
Firefly_MaxEntities  equ 0x18
Firefly_Width        equ 0x8
Firefly_Height       equ 0x8
Firefly_ResetTime    equ 0x0100

;==============================================================

; Struct
	rsset (Pickup_Struct_Size)
;--------------------------
Firefly_Animation	 rs.b (Animation_Struct_Size)
Firefly_ResetTimer   rs.w 1
Firefly_Colour       rs.b 1
Firefly_Pickup_Value rs.b 1
;--------------------------
Firefly_Struct_Size  rs.b 0+2 ; Alignment padding

;==============================================================

FireflyInit:
	; a0 --- Firefly addr
	; a1 --- Level addr
	
	; Base functionality
	jsr PickupInit
	
	; Set type
	ori.l  #entity_type_firefly, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Fireflies

	; Set update and render routines
	move.l #FireflyUpdate, Entity_UpdateRoutine(a0)
	move.l #PickupDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList

	; Default state
	move.w #Firefly_Width, Entity_Width(a0)
	move.w #Firefly_Height, Entity_Height(a0)
	move.w #0x0, Firefly_ResetTimer(a0)
	move.b #ColourRed, Firefly_Colour(a0)
	move.b #0x1, Firefly_Pickup_Value(a0)
	
	; Default anim
	move.l  a0, a3
	add.l   #Firefly_Animation, a3
	move.w #spritesheet_firefly_red_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_firefly_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_firefly_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_firefly_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Set animation
	move.l  a3, AnimObj_CurrentAnim(a0)
	move.b  #0x1, AnimObj_Playing(a0)

	; Random anim start frame
	jsr    RND_GenerateLong
	and.l  #0x0000FFFF, d0
	divu   #(spriteanim_firefly_idle_numframes*SubframesPerFrame), d0	; Mod by anim length
	clr.w  d0
	swap   d0
	move.l d0, AnimObj_AnimSubFrame(a0)

	rts

FireflyUpdate:
	; a0 --- Firefly addr
	; a1 --- Level addr

	; Base functionality
	jsr PickupUpdate

	; Check if picked up
	cmp.b #0x0, Pickup_Taken(a0)
	beq   @NotPickedUp

	; Decrement timer
	sub.w #0x1, Firefly_ResetTimer(a0)
	cmp.w #0x0, Firefly_ResetTimer(a0)
	bne   @TimerRunning

	; Timer elapsed, reset pickup
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)
	move.b #0x0, Pickup_Taken(a0)

	@NotPickedUp:
	@TimerRunning:

	rts

FireflyTestObj:
	; a0 --- Pickup address
	; a1 --- Test object address
	
	cmp.b  #0x0, Entity_Active(a0)
	beq    @AlreadyPickedUp

	; Base functionality
	jsr PickupTestObj
	
	; Restore active flag
	;POPL   d0

	; If picked up this frame
	cmp.b  #0x0, Entity_Active(a0)
	bne    @NotPickedUp

	; Reset timer
	move.w #Firefly_ResetTime, Firefly_ResetTimer(a0)
	
	; If picked up this frame
	;cmp.b  #0x0, d0
	;beq    @AlreadypickedUp
	
	; Stop updating and rendering
	jsr     EntityRemoveFromUpdateList
	jsr     EntityRemoveFromRenderList
	
	; Play SFX
	PLAYSFX_HIGHPRIO #SFX_FireflyCollect

	@NotPickedUp:
	@AlreadypickedUp:

	rts
