;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   firefly.asm - Firefly pickups
;==============================================================

; Constants
Firefly_Width        equ 0x10
Firefly_Height       equ 0x10

;==============================================================

; Struct
	rsset (AnimObj_Struct_Size)
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
	jsr AnimObjInit
	
	; Set type
	ori.l  #entity_type_firefly, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Firefly

	; Set update, render and serialise routines
	move.l #AnimObjUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #FireflySerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr EntityAddToUpdateList
	;jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default state
	move.w #Firefly_Width, Entity_Width(a0)
	move.w #Firefly_Height, Entity_Height(a0)
	move.w #0x0, Firefly_ResetTimer(a0)
	move.b #ColourRed, Firefly_Colour(a0)
	move.b #0x1, Firefly_Pickup_Value(a0)
	
	; Default anim
	ANIM_LOAD_DEFAULT firefly,red,idle,Firefly_Animation,0,1,0,0
	
	; Set animation
	lea     Firefly_Animation(a0), a3
	move.l  a3, AnimObj_CurrentAnim(a0)
	move.b  #0x1, AnimObj_Playing(a0)

	; Random anim start frame
	jsr    RND_GenerateLong
	and.l  #0x0000FFFF, d0
	divu   #(actor_firefly_sheet_red_anim_idle_numframes*SubframesPerFrame), d0	; Mod by anim length
	clr.w  d0
	swap   d0
	move.l d0, AnimObj_AnimSubFrame(a0)

	rts

FireflyLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_SHARED firefly,red,0,PaletteId_Fuzzl,0x0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	jsr     EntityAddToWorldGrid

	rts
	
FireflyShutdown:
	; a0 --- Firefly addr
	
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	jsr    EntityRemoveFromWorldGrid
	subq.w #0x1, EntityCount_Firefly
	
	rts
	
FireflySerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEB Entity_Active(a0)
	SAVEB SpriteObj_Visible(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB Entity_Active(a0)
	LOADB SpriteObj_Visible(a0)
	
	;==============================================================
	
	@End:
	
	rts

FireflyTestObj:
	; a0 --- Pickup address
	; a1 --- Test object address
	
	tst.b  Entity_Active(a0)
	beq    @AlreadyPickedUp

	; Test bounds intersection
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoIntersection
	
	; Stop updating and rendering
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	jsr    EntityRemoveFromWorldGrid
	
	; Inactive and invisible
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)
	
	; Increment counters
	addq.w #0x1, FireflyPickupCountAct
	addq.w #0x1, FireflyPickupCountTotalUI
	
	; Play SFX
	move.w (EntityCount_Firefly), d0
	move.w (FireflyPickupCountAct), d1
	cmp.w  d0, d1
	beq    @CollectedAll
	PLAYSFX #SFX_FireflyCollect
	bra    @EndSFX
	@CollectedAll:
	PLAYSFX #SFX_FireflyCollectAll
	@EndSFX:

	@NotPickedUp:
	@AlreadypickedUp:
	@NoIntersection:

	rts
