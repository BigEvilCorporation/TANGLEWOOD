;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   firefly.asm - Firefly pickups
;==============================================================

; Constants
Firefly_MaxEntities  equ 0x12
Firefly_Width        equ 0x8
Firefly_Height       equ 0x8
Firefly_ResetTime    equ 0x0100

;==============================================================

; Struct
	rsset (Pickup_Struct_Size)
;--------------------------
Firefly_ResetTimer   rs.w 1
Firefly_Colour       rs.b 1
Firefly_Pickup_Value rs.b 1
;--------------------------
Firefly_Struct_Size  rs.b 0+2 ; Alignment padding

;==============================================================

FireflyInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr PickupInit

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
	move.l #Anim_FireflyIdle, AnimObj_KeyframesAddr(a0)
	move.b #Anim_FireflyIdle_Speed, AnimObj_AnimSpeed(a0)
	move.b #Anim_FireflyIdle_SizeB, AnimObj_AnimLength(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Looping(a0)

	; Random anim start frame
	jsr    RandLong
	and.l  #0x0000FFFF, d0
	divu   #(Anim_FireflyIdle_SizeB*SubframesPerFrame), d0	; Mod by anim length
	clr.w  d0
	swap   d0
	move.l d0, AnimObj_AnimSubFrame(a0)

	rts

FireflyUpdate:
	; a0 --- GameObj addr
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
	move.b #0x1, GameObj_Active(a0)
	move.b #0x1, GameObj_Visible(a0)
	move.b #0x0, Pickup_Taken(a0)

	@NotPickedUp:
	@TimerRunning:

	rts

FireflyTestObj:
	; a0 --- Pickup address
	; a1 --- Test object address

	; Base functionality
	jsr PickupTestObj

	; If picked up
	cmp.b #0x0, d0
	beq   @NotPickedUp

	; Reset timer
	move.w #Firefly_ResetTime, Firefly_ResetTimer(a0)

	@NotPickedUp:

	rts
