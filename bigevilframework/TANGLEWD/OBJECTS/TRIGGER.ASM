;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   trigger.asm - Basic programmable trigger box
;==============================================================

; Constants
TriggerBox_Width        equ 0x0080
TriggerBox_Height       equ 0x0080

; Struct
	rsset (Entity_Struct_Size)
;--------------------------
TriggerBox_WatchObject  rs.l 1	; Object to check against trigger (Player1 by default)
TriggerBox_Routine      rs.l 1	; Subroutine address
TriggerBox_RegisterD0	rs.l 1	; D Regs
TriggerBox_RegisterD1	rs.l 1
TriggerBox_RegisterD2	rs.l 1
TriggerBox_RegisterD3	rs.l 1
TriggerBox_RegisterA0	rs.l 1	; A Regs
TriggerBox_RegisterA1	rs.l 1
TriggerBox_TriggerType	rs.b 1	; Intersect type
TriggerBox_Triggered	rs.b 1	; Box has been triggered
TriggerBox_TriggerOnce	rs.b 1	; Trigger once
TriggerBox_XOnly		rs.b 1	; Only test for trigger on X axis - TODO: Implement all intersection types below
TriggerBox_EachFrame	rs.b 1	; Trigger each frame, don't filter in/out
;--------------------------
	RS_ALIGN
TriggerBox_Struct_Size  rs.b 0

; Intersection types
TriggerType_Intersect	equ 0x1 ; Player intersects trigger box
TriggerType_Contained	equ 0x2	; Player fully inside trigger box
;TriggerType_IntersectX	equ 0x3	; TODO - Player intersects trigger box on X axis only
;TriggerType_IntersectY	equ 0x4	; TODO - Player intersects trigger box on Y axis only
TriggerType_ContainedX	equ 0x5 ; Player fully inside trigger box on X axis only
;TriggerType_ContainedY	equ 0x6	; TODO - Player fully inside trigger box on Y axis only

TriggerBoxInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    EntityInit
	
	; Set type
	ori.l  #entity_type_trigger, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_TriggerBox
	
	; Set update and serialise routines
	move.l #TriggerBoxUpdate, Entity_UpdateRoutine(a0)
	move.l #TriggerBoxSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and serialise lists
	;jsr EntityAddToUpdateList
	jsr EntityAddToSerialiseList

	; Default state
	move.b #0x1, Entity_Active(a0)
	move.w #TriggerBox_Width, Entity_Width(a0)
	move.w #TriggerBox_Height, Entity_Height(a0)
	move.l #Player1, TriggerBox_WatchObject(a0)
	move.b #TriggerType_Contained, TriggerBox_TriggerType(a0)
	move.b #0x0, TriggerBox_Triggered(a0)
	move.b #0x0, TriggerBox_TriggerOnce(a0)
	move.b #0x0, TriggerBox_XOnly(a0)
	move.b #0x0, TriggerBox_EachFrame(a0)

	rts

TriggerBoxLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Legacy settings
	tst.b  TriggerBox_XOnly(a0)
	beq    @NoTriggerXOnly

	; Set X-only trigger type
	move.b #TriggerType_ContainedX, TriggerBox_TriggerType(a0)

	; Add to update list
	jsr    EntityAddToUpdateList

	bra    @End
	@NoTriggerXOnly:

	; Add to world grid
	move.b #(1<<EntityWorldGridFlag_GridUpdates), d0
	jsr    EntityAddToWorldGrid

	@End:

	rts

TriggerBoxUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	PUSHL  a1
	
	; Check if enabled
	tst.b  Entity_Active(a0)
	beq    @Inactive
	
	; Check if box can be triggered multiple times
	tst.b  TriggerBox_TriggerOnce(a0)
	beq    @TriggerMultiple
	
	; Check if already triggered
	tst.b  TriggerBox_Triggered(a0)
	bne    @Triggered
	
	@TriggerMultiple:
	
	; Get watch object
	move.l TriggerBox_WatchObject(a0), a1
	move.l (a1), a1
	
	; Test
	jsr    TriggerBoxTest
	tst.b  d0
	beq    @NoIntersect
	
	; Check if already triggered
	tst.b  TriggerBox_EachFrame(a0)
	bne    @TriggerEachFrame
	tst.b  TriggerBox_Triggered(a0)
	bne    @Triggered
	@TriggerEachFrame:
	
	; Triggered this frame
	move.b #0x1, TriggerBox_Triggered(a0)
	
	; Run routine
	PUSHM  a0-a1
	move.l TriggerBox_Routine(a0), a2
	move.l TriggerBox_RegisterD3(a0), d3
	move.l TriggerBox_RegisterD2(a0), d2
	move.l TriggerBox_RegisterD1(a0), d1
	move.l TriggerBox_RegisterD0(a0), d0
	move.l TriggerBox_RegisterA1(a0), a1
	move.l TriggerBox_RegisterA0(a0), a0
	jsr    (a2)
	POPM   a0-a1
	
	bra    @Triggered
	
	@NoIntersect:
	
	; Player outside, not triggered
	move.b #0x0, TriggerBox_Triggered(a0)
	
	@Inactive:
	@Triggered:
	
	POPL   a1
	
	rts
	
TriggerBoxSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEB TriggerBox_Triggered(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB TriggerBox_Triggered(a0)
	
	;==============================================================
	
	@End:
	
	rts
	
TriggerBoxTest:
	; a1 --- Test object

	; Clear result
	move.b #0x0, d0

	move.b TriggerBox_TriggerType(a0), d1

	cmp.b  #TriggerType_Contained, d1
	beq    @FullyContains
	cmp.b  #TriggerType_ContainedX, d1
	beq    @ContainsX
	cmp.b  #TriggerType_Intersect, d1
	beq    @Intersects

	;==============================================================

	@FullyContains:

	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxInsideBox
	; Result in d0

	bra    @End

	;==============================================================

	@ContainsX:

	jsr    PHYS_TestEntityBoxInsideBoxX
	; Result in d0

	bra    @End

	;==============================================================

	@Intersects:

	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	; Result in d0

	bra    @End

	;==============================================================

	@End:

	rts