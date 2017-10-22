;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   cutscene.asm - Cutscene scripting system
;==============================================================

Custscene_MaxBackupRegs		equ 0x10

	rsset 0
;-----------------------------
	LINKED_LIST_NODE ActiveCutscenes ; Next in update linked list
;-----------------------------
Cutscene_TickRoutine		rs.l 1
Cutscene_TempData			rs.l 1
Cutscene_RegsBackup			rs.b (Custscene_MaxBackupRegs*size_long)
Cutscene_Playing			rs.b 1
Cutscene_RegsStored			rs.b 1
;---------------------------------
Cutscene_Struct_Pad			rs.b 2
Cutscene_Struct_Size		rs.b 0

CutsceneInit:
	; a0 --- Cutscene
	; a1 --- Routine

	move.l a1, Cutscene_TickRoutine(a0)
	move.b #0x0, Cutscene_Playing(a0)
	move.l #0x0, List_ActiveCutscenes_Next(a0)

	rts

CutscenePlay:
	; a0 --- Cutscene

	move.b #0x1, Cutscene_Playing(a0)
	move.b #0x0, Cutscene_RegsStored(a0)
	move.l #0x0, Cutscene_TempData(a0)

	LIST_APPEND_TAIL ActiveCutscenes,a0,a3

	rts

CutsceneStop:
	; a0 --- Cutscene

	move.b #0x0, Cutscene_Playing(a0)

	LIST_REMOVE ActiveCutscenes,a0,a4,a3

	rts

CutsceneUpdate:
	; a0 --- Cutscene

	tst.b  Cutscene_Playing(a0)
	beq    @NotPlaying

	; Get update func
	move.l Cutscene_TickRoutine(a0), a2

	; Tick
	PUSHL  a0
	jsr    (a2)
	POPL   a0

	@NotPlaying:

	rts

CutsceneUpdateAll:

	LIST_GET_HEAD ActiveCutscenes,a0
	@CutsceneLp:
	cmp.l  #0x0, a0
	beq    @ListEnd
	jsr    CutsceneUpdate
	LIST_GET_NEXT ActiveCutscenes,a0,a0
	bra    @CutsceneLp
	@ListEnd:

	rts

;==============================================================
; Built-in steps
;==============================================================

CutsceneStep_Delay:
	; a0 --- Cutscene
	; d0 (w) Time
	; d0 (b) OUT: Step running

	tst.w  Cutscene_TempData(a0)
	bne    @Initialised
	move.w d0, Cutscene_TempData(a0)
	@Initialised:

	move.w Cutscene_TempData(a0), d0
	subq.w #0x1, d0
	move.w d0, Cutscene_TempData(a0)
	tst.w  d0
	bne    @Running
	move.b #0x0, d0
	bra    @End
	@Running:
	move.b #0x1, d0
	@End:

	rts

CutsceneStep_CharacterAnim:
	; a0 --- Cutscene
	; d0 (l) Character
	; d1 (l) Anim table
	; d2 (w) Anim index
	; d0 (b) OUT: Step running

	; Table addr
	move.l d1, a1

	; Index
	andi.l #0x0000FFFF, d2
	mulu   #Animation_Struct_Size, d2

	; Character
	move.l d0, a0
	
	; Get anim address
	add.l  a0, a1
	add.l  d2, a1
	
	; Run
	move.b #0x1, d0
	jsr    AnimObjSetAnimation

	move.b #0x0, d0

	rts

CutsceneStep_CharacterAnimWait:
	; a0 --- Cutscene
	; d0 (l) Character
	; d0 (b) OUT: Step running

	; Get character
	move.l d0, a2

	; Get previous anim
	move.l Cutscene_TempData(a0), d1
	tst.l  d1
	bne    @GotAnim
	move.l AnimObj_CurrentAnim(a2), d1
	move.l d1, Cutscene_TempData(a0)
	@GotAnim:
	
	; Get current anim
	move.l AnimObj_CurrentAnim(a2), d2

	; If changed or stopped, end
	cmp.l  d1, d2
	bne    @Changed
	tst.b  AnimObj_Playing(a2)
	beq    @Changed

	; Anim still playing
	move.b #0x1, d0
	bra    @End

	@Changed:

	; Anim changed
	move.b #0x0, d0

	@End:

	rts

CutsceneStep_SpriteFlipX:
	; a0 --- Cutscene
	; d0 (l) Sprite
	; d1 (b) Flip
	; d0 (b) OUT: Step running

	move.l d0, a2
	move.b d1, SpriteObj_FlippedX(a2)
	move.b #0x0, d0

	rts

CutsceneStep_CharacterMoveTo:
	; a0 --- Cutscene
	; d0 (l) Character
	; d1 (l) Position X
	; d2 (w) Threshold
	; d0 (b) OUT: Step running

	move.l d0, a0	; Character

	ENTITY_GETCENTREX d0,a0
	TOPIXELS d0
	TOPIXELS d1
	
	; Check left bounds
	move.w d1, d4
	sub.w  d2, d4
	cmp.w  d0, d4
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d4
	add.w  d2, d4
	cmp.w  d0, d4
	blt    @TooFarRight
	
	; Within bounds
	bra    @WithinBounds
	
	@TooFarleft:
	jsr    CharacterMoveRight
	move.b #0x1, d0
	bra    @EndFollow
	
	@TooFarRight:
	jsr    CharacterMoveLeft
	move.b #0x1, d0
	bra    @EndFollow

	@WithinBounds:
	jsr    CharacterCancelXMovement
	move.b #0x0, d0
	
	@EndFollow:

	rts

CutsceneStep_CharacterMoveRelative:
	; a0 --- Cutscene
	; a1 --- Character
	; a2 --- Dest object
	; d0 (w) Relative distance
	; d1 (w) Threshold
	; d0 (b) OUT: Step running

	PUSHL  a0

	move.w d0, d2	; Relative dist X
	move.w d1, d3	; Threshold
	move.l a1, a0	; Character

	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	add.w    d2, d1
	
	; Check left bounds
	move.w d1, d4
	sub.w  d3, d4
	cmp.w  d0, d4
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d4
	add.w  d3, d4
	cmp.w  d0, d4
	blt    @TooFarRight
	
	; Within bounds
	bra    @WithinBounds
	
	@TooFarleft:
	jsr    CharacterMoveRight
	move.b #0x1, d0
	bra    @EndFollow
	
	@TooFarRight:
	jsr    CharacterMoveLeft
	move.b #0x1, d0
	bra    @EndFollow

	@WithinBounds:
	jsr    CharacterCancelXMovement
	move.b #0x0, d0
	
	@EndFollow:

	POPL   a0

	rts

CutsceneStep_CharacterWaitDeath:
	; a0 --- Cutscene
	; a1 --- Character
	; d0 (b) OUT: Step running

	move.b #0x1, d0
	tst.b  Character_Dead(a1)
	beq    @End
	move.b #0x0, d0
	@End:

	rts

CutsceneStep_CameraLerp:
	; a0 --- Cutscene
	; d0 (l) Source object
	; d1 (l) Dest object
	; d2 (w) Speed
	; d0 (b) OUT: Step running

	move.l d0, CameraTargetLerpSource
	move.l d1, CameraTargetGameObj
	move.w d2, CameraTargetLerpSpeed
	move.w #0x0, CameraTargetLerpTime

	move.b #0x0, d0

	rts

CutsceneStep_CameraLerpWait:
	; a0 --- Cutscene
	; d0 (b) OUT: Step running

	move.b #0x1, d0
	tst.w CameraTargetLerpSpeed
	bne   @End
	move.b #0x0, d0
	@End:

	rts

CutsceneStep_WaitObjectHitFloor:
	; a0 --- Cutscene
	; a1 --- Object
	; d0 (b) OUT: Step running

	move.b #0x1, d0
	tst.b PhysicsObj_CloseToFloor(a1)
	beq   @End
	move.b #0x0, d0
	@End:

	rts

CutsceneStep_ObjectSetParamB:
	; a0 --- Cutscene
	; d0 (l) Object
	; d1 (l) Param offset
	; d2 (b) Value
	; d0 (b) OUT: Step running

	move.l d0, a2
	add.l  d1, a2
	move.b d2, (a2)
	move.b #0x0, d0

	rts

CutsceneStep_ObjectRoutine:
	; a0 --- Cutscene
	; a1 --- Object
	; a2 --- Routine
	; d0 (b) OUT: Step running

	PUSHL  a0
	move.l a1, a0
	jsr    (a2)
	POPL   a0

	move.b #0x0, d0

	rts

;==============================================================
; Setup macros
;==============================================================

CUTSCENE_FETCH_REGS: macro
	tst.b  Cutscene_RegsStored(a0)						; If regs already stored
	bne    \@RegsStored\@
	movem.l a1-a6/d0-d7, Cutscene_RegsBackup(a0)		; Store regs
	move.b #0x1, Cutscene_RegsStored(a0)				; Set as stored
	bra    \@EndRegs\@
	\@RegsStored\@:										; Retrieve regs
	movem.l Cutscene_RegsBackup(a0), a1-a6/d0-d7
	\@EndRegs\@:
	endm

CUTSCENE_RUN_STEP: macro address
	CUTSCENE_FETCH_REGS									; Store regs if first tick, else restore
	PUSHL  a0
	jsr    \address										; Tick routine
	POPL   a0
	tst.b  d0											; If routine finished
	bne    \@Continue\@
	move.l #0x0, Cutscene_TempData(a0)					; Reset for next routine
	move.b #0x0, Cutscene_RegsStored(a0)
	move.l #\@NextRoutine\@, Cutscene_TickRoutine(a0)	; Store end of routine as next routine
	\@Continue\@:
	rts
	\@NextRoutine\@:									; Next routine address
	endm

CUTSCENE_START: macro
	endm

CUTSCENE_END: macro
	jsr    CutsceneStop
	endm

CUTSCENE_GET_ENTITY: macro typename,name,addrreg
	move.l (EntityPoolStart_\typename), \addrreg
	addi.l #(\name\_idx*\typename\_Struct_Size), \addrreg
	endm

CUTSCENE_DELAY: macro time
	move.l \Time, d0
	move.l #0x0, d1
	CUTSCENE_RUN_STEP CutsceneStep_Delay
	endm

CUTSCENE_CAMERA_LERP: macro object1,object2,speed
	move.l \object1, d0
	move.l \object2, d1
	move.l \speed, d2
	CUTSCENE_RUN_STEP CutsceneStep_CameraLerp
	endm

CUTSCENE_CAMERA_LERP_WAIT: macro
	CUTSCENE_RUN_STEP CutsceneStep_CameraLerpWait
	endm

CUTSCENE_CHARACTER_ANIM: macro character,animtable,index
	move.l \character, d0
	move.l \animtable, d1
	move.l \index, d2
	CUTSCENE_RUN_STEP CutsceneStep_CharacterAnim
	endm

CUTSCENE_CHARACTER_ANIM_WAIT: macro character
	move.l \character, d0
	move.l #0x0, d1
	CUTSCENE_RUN_STEP CutsceneStep_CharacterAnimWait
	endm

CUTSCENE_SPRITE_FLIPX: macro object,flipx
	move.l \object, d0
	move.l \flipx, d1
	CUTSCENE_RUN_STEP CutsceneStep_SpriteFlipX
	endm

CUTSCENE_CHARACTER_MOVE_TO: macro character,positionx,threshold
	move.l \character, d0
	move.l \positionx, d1
	move.l \threshold, d2
	CUTSCENE_RUN_STEP CutsceneStep_CharacterMoveTo
	endm

CUTSCENE_CHARACTER_MOVE_RELATIVE: macro character,object,distancex,threshold
	move.l \character, a1
	move.l \object, a2
	move.w \distancex, d0
	move.w \threshold, d1
	CUTSCENE_RUN_STEP CutsceneStep_CharacterMoveRelative
	endm

CUTSCENE_CHARACTER_WAIT_DEATH: macro character
	move.l \character, a1
	CUTSCENE_RUN_STEP CutsceneStep_CharacterWaitDeath
	endm

CUTSCENE_OBJECT_WAIT_HIT_FLOOR: macro object
	move.l \object, a1
	CUTSCENE_RUN_STEP CutsceneStep_WaitObjectHitFloor
	endm

CUTSCENE_OBJECT_ROUTINE: macro object,routine
	move.l \object, a1
	move.l \routine, a2
	CUTSCENE_RUN_STEP CutsceneStep_ObjectRoutine
	endm

CUTSCENE_OBJECT_SET_PARAM_B: macro object,paramoffset,value
	move.l \object, d0
	move.l \paramoffset, d1
	move.l \value, d2
	CUTSCENE_RUN_STEP CutsceneStep_ObjectSetParamB
	endm

CUTSCENE_ROUTINE: macro routine,param1,param2,param3
	move.l \param1, d0
	move.l \param2, d2
	move.l \param3, d3
	CUTSCENE_RUN_STEP \routine
	endm
