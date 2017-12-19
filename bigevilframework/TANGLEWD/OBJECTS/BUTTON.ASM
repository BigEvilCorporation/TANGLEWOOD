;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   button.asm - Weight activated button
;==============================================================

; Constants
Button_Width			equ 0x40
Button_Height			equ 0x08
Button_PressSpeed		equ 0x00004000
Button_PressHeightMaxActive		equ 0x00030000
Button_PressHeightMaxInactive	equ 0x00010000
Button_MinMass			equ 0x4	; Minimum mass required to push the button

	rsset (AnimObj_Struct_Size)
;---------------------------------
Button_Animation			rs.b Animation_Struct_size
Button_Platform				rs.b Platform_Struct_Size
Button_PressHeight			rs.l 1
Button_OnDown				rs.l 1
Button_OnUp					rs.l 1
Button_UserData				rs.l 1
Button_LastOccupant			rs.l 1
Button_Active				rs.b 1
Button_Pressed				rs.b 1
Button_NoAI					rs.b 1
;---------------------------------
	RS_ALIGN
Button_Struct_Size			rs.b 0
;---------------------------------

ButtonInit:

	; Base init
	jsr    AnimObjInit

	; Set type
	addq.w #0x1, EntityCount_Button
	
	; Set update and render routines
	move.l #ButtonUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #ButtonSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr    EntityAddToUpdateList
	;jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList

	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.w  #Button_Width, Entity_Width(a0)
	move.w  #Button_Height, Entity_Height(a0)
	move.l  #0x0, Button_PressHeight(a0)
	move.l  #0x0, Button_LastOccupant(a0)
	move.b  #0x0, Button_Active(a0)
	move.b  #0x0, Button_Pressed(a0)
	move.b  #0x0, Button_NoAI(a0)

	;==============================================================
	
	; Setup platform
	lea    Button_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.b #PlatformType_Sliding, Platform_Type(a2)
	move.w #Button_Width, Platform_Width(a2)
	
	; Add to physics platforms list
	LIST_APPEND_TAIL Platforms, a2, a3
	
	;==============================================================

	rts

ButtonLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT button,button,0,PaletteId_World0,0x0

	; Load anim
	ANIM_LOAD_DEFAULT button,button,press,Button_Animation,0,0,0,0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	jsr     EntityAddToWorldGrid

	; Set initial anim, override speed
	PUSHL  a1
	lea    Button_Animation(a0), a1
	move.w #0x0, Animation_Speed(a1)
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	rts

ButtonUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  Entity_Active(a0)
	beq    @Inactive

	; Get button height
	move.l Button_PressHeight(a0), d0
	move.l d0, d1

	; If current occupier is asleep, don't change state
	move.l Button_LastOccupant(a0), a2
	cmp.l  #0x0, a2
	beq    @NoOccupier
	tst.b  PhysicsObj_Asleep(a2)
	bne    @OccupierAsleep

	@NoOccupier:

	; Check if platform occupied
	lea    Button_Platform(a0), a2
	cmp.w  #Button_MinMass, Platform_TotalMass(a2)
	blt    @Unoccupied

	; Occupied, don't use world grid for updates until unoccupied again
	bclr   #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)

	; If at zero height and pressed whilst inactive, play fail SFX
	tst.l  d0
	bne    @NotAtTop
	tst.b  Button_Active(a0)
	bne    @Active
	PLAYSFX #SFX_ButtonFail
	@NotAtTop:
	@Active:

	; Player on button, move platform down
	MOVE_NTSC_L Button_PressSpeed, d4, d5
	add.l  d4, d0

	; If active, trigger
	tst.b  Button_Active(a0)
	beq    @NoTrigger

	; Filter trigger events
	tst.b  Button_Pressed(a0)
	bne    @EndPress

	; Trigger
	move.l Button_OnDown(a0), a2
	cmp.l  #0x0, a2
	beq    @EndPress
	PUSHL  a0
	move.l Button_UserData(a0), a0
	jsr    (a2)
	POPL   a0

	; Set pressed
	move.b #0x1, Button_Pressed(a0)

	@NoTrigger:

	bra    @EndPress

	;==============================================================
	
	@Unoccupied:

	; Player off button, move platform up
	MOVE_NTSC_L Button_PressSpeed, d4, d5
	sub.l  d4, d0

	; Filter trigger events
	tst.b  Button_Pressed(a0)
	beq    @EndPress

	; Un-trigger
	move.l Button_OnUp(a0), a2
	cmp.l  #0x0, a2
	beq    @EndPress
	PUSHL  a0
	move.l Button_UserData(a0), a0
	jsr    (a2)
	POPL   a0

	; Set depressed
	move.b #0x0, Button_Pressed(a0)

	@EndPress:

	;==============================================================

	; Clamp new button press height
	tst.b  Button_Active(a0)
	beq    @InactiveClamp
	CLAMP  d0, #0x0, #Button_PressHeightMaxActive
	bra    @EndClamp
	@InactiveClamp:
	CLAMP  d0, #0x0, #Button_PressHeightMaxInactive
	@EndClamp:

	; Store
	move.l d0, Button_PressHeight(a0)

	;==============================================================

	; Button height to anim frame
	move.l d0, d2
	TOPIXELS d1		; Each anim frame = 1 pixel move
	TOPIXELS d2
	cmp.l  d1, d2
	beq    @NoChange
	lsl.l  #0x8, d2 ; To anim subframes
	move.l d2, AnimObj_AnimSubframe(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Dirty(a0)
	@NoChange:

	; If reached bottom, and no OnUp callback, disable
	tst.l  Button_OnUp(a0)
	bne    @NoDisable
	lea    Button_Animation(a0), a2
	move.b Animation_Length(a2), d0
	subq.b #0x1, d0
	move.l AnimObj_AnimSubframe(a0), d1
	lsr.l  #0x8, d1
	cmp.b  d0, d1
	bne    @NoDisable
	move.b #0x0, Button_Active(a0)
	@NoDisable:

	;==============================================================

	; Reposition platform
	lea    Button_Platform(a0), a2
	move.l Entity_WorldPosX(a0), d1
	move.l Entity_WorldPosY(a0), d2
	add.l  d0, d2					; Add button press height
	move.l d1, Platform_PosX(a2)
	move.l d2, Platform_PosY(a2)

	;==============================================================

	; Take last occupant
	move.l Platform_LastOccupant(a2), Button_LastOccupant(a0)

	;==============================================================

	@OccupierAsleep:

	; Base functionality
	jsr    AnimObjupdate

	@Inactive:

	rts

ButtonSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEL Button_LastOccupant(a0)
	SAVEB Button_Active(a0)
	SAVEB Button_Pressed(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Button_LastOccupant(a0)
	LOADB Button_Active(a0)
	LOADB Button_Pressed(a0)
	
	;==============================================================
	
	@End:

	rts

ButtonActivate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.b #0x1, Button_Active(a0)

	rts