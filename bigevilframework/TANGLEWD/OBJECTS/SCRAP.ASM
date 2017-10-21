;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   scrap.asm - Baby Djakk, completely harmless
;==============================================================

; Constants
Scrap_Width        equ 0x0020
Scrap_Height       equ 0x0018

; Struct
	rsset (Character_Struct_Size)
;---------------------------------
;---------------------------------
Scrap_Struct_Pad   rs.b 0	; Alignment padding
Scrap_Struct_Size  rs.b 0

ScrapInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    CharacterInit

	; Set update and render routines
	move.l #ScrapUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	move.l #ScrapSerialise, Entity_SerialiseRoutine(a0)

	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList
	
	; Add to count
	addq.w #0x1, EntityCount_Scrap

	; Initialise
	move.w  #Scrap_Width, Entity_Width(a0)
	move.w  #Scrap_Height, Entity_Height(a0)

	rts

ScrapLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_DEFAULT scrap,PaletteId_Monster,0x0

	rts
	
ScrapUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	jsr   CharacterUpdate

	rts

ScrapSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEL Entity_WorldPosX(a0)
	SAVEL Entity_WorldPosY(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	
	;==============================================================
	
	@End:
	
	rts