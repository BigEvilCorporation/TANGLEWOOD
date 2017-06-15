;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   generatr.asm - Fuzzl power generator
;==============================================================

; Constants
Generator_MaxEntities		equ 0x4
Generator_Width				equ 0x28
Generator_Height			equ 0x10

Generator_SpinUpAccel		equ 0x1000	; Animation spin up speed
Generator_MaxSpeed			equ 0x7000

;==============================================================

; Animations
GeneratorAnimIdx_Spin    equ 0
; --------------------------
GeneratorAnimIdx_Max     equ 1

;==============================================================

; Struct
	rsset (AnimObj_Struct_Size)
;-----------------------------
Generator_Animations		rs.b (Animation_Struct_Size*GeneratorAnimIdx_Max)
Generator_Cogs				rs.l 1
Generator_Fuzzl				rs.l 1
Generator_OnActivate		rs.l 1
Generator_UserData			rs.l 1
Generator_Running			rs.b 1
;-----------------------------
Generator_Struct_Pad		rs.b 3   ; Alignment padding
Generator_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

GeneratorInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    AnimObjInit
	
	; Set type
	addi.w #0x1, EntityCount_Generator
	
	; Set update and render routines
	move.l #GeneratorUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #GeneratorSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Generator_Width, Entity_Width(a0)
	move.w  #Generator_Height, Entity_Height(a0)
	move.l  #0x0, Generator_Cogs(a0)
	move.l  #0x0, Generator_Fuzzl(a0)
	move.l  #0x0, Generator_OnActivate(a0)
	move.l  #0x0, Generator_UserData(a0)
	move.b  #0x0, Generator_Running(a0)
	
	;==============================================================
	; Setup animation

	; Compressor spin
	ANIM_LOAD_DEFAULT generatr_compressor,generatr_spin,Generator_Animations,GeneratorAnimIdx_Spin,1,0,0

	PUSHL  a1
	move.l a0, a1
	add.l  #Generator_Animations, a1
	add.l  #(Animation_Struct_Size*GeneratorAnimIdx_Spin), a1
	jsr    AnimObjSetAnimation
	POPL   a1

	rts

GeneratorLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT generatr,PaletteId_World0,0x0

	rts
	
GeneratorUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; No Fuzzl, no business
	cmp.l   #0x0, Generator_Fuzzl(a0)
	beq     @NoFuzzl

	; Update anim speeds
	move.l  Generator_Cogs(a0), a2
	cmp.l   #0x0, a2
	beq     @NoCogs
	move.b  #0x1, AnimObj_Playing(a2)
	add.l   #Cogs_Animations+(Animation_Struct_Size*CogsAnimIdx_Spin), a2
	move.w  #0x40, Animation_Speed(a2)
	@NoCogs:

	move.l  Generator_Fuzzl(a0), a2
	move.b  #0x1, AnimObj_Playing(a2)
	add.l   #Fuzzl_Animations+(Animation_Struct_Size*FuzzlAnimIdx_Roll), a2
	move.w  #0x40, Animation_Speed(a2)

	; Base functionality
	jsr    AnimObjUpdate

	@NoFuzzl:

	rts

Generator_Activate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Fuzzl addr

	cmp.b  #0x0, Generator_Running(a0)
	bne    @AlreadyRunning

	; Set Fuzzl
	move.l a2, Generator_Fuzzl(a0)

	; Set running
	move.b #0x1, Generator_Running(a0)

	; Fire callback
	move.l Generator_OnActivate(a0), a2
	cmp.l  #0x0, a2
	beq    @NoCallback
	PUSHL  a0
	move.l Generator_UserData(a0), a0
	jsr    (a2)
	POPL   a0
	@NoCallback:

	@AlreadyRunning:

	rts
	
GeneratorSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEB Generator_Running(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB Generator_Running(a0)
	
	;==============================================================
	
	@End:
	
	rts