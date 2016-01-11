;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   trigger.asm - Basic programmable trigger box
;==============================================================

; Constants
TriggerBox_MaxEntities  equ 0x8
TriggerBox_Width        equ 0x0080
TriggerBox_Height       equ 0x0080

; Struct
	rsset (GameObj_Struct_Size)
;--------------------------
TriggerBox_Routine      rs.l 1	; Subroutine address
TriggerBox_RegisterD0	rs.l 1	; D Regs
TriggerBox_RegisterD1	rs.l 1
TriggerBox_RegisterD2	rs.l 1
TriggerBox_RegisterD3	rs.l 1
TriggerBox_RegisterA0	rs.l 1	; A Regs
TriggerBox_RegisterA1	rs.l 1
TriggerBox_Triggered	rs.b 1	; Box has been triggered
TriggerBox_TriggerOnce	rs.b 1	; Trigger once
;--------------------------
TriggerBox_Struct_Pad   rs.b 2	; Alignment padding
TriggerBox_Struct_Size  rs.b 0

TriggerBoxInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base init
	jsr GameObjInit
	
	; Set update routine
	move.l #TriggerBoxUpdate, Entity_UpdateRoutine(a0)
	
	; Add to update list
	jsr EntityAddToUpdateList

	; Default state
	move.b #0x1, GameObj_Active(a0)
	move.b #0x0, GameObj_Visible(a0)
	move.b #0x0, GameObj_HasPhysics(a0)
	move.w #TriggerBox_Width, Entity_Width(a0)
	move.w #TriggerBox_Height, Entity_Height(a0)
	move.b #0x0, TriggerBox_Triggered(a0)
	move.b #0x0, TriggerBox_TriggerOnce(a0)

	rts

TriggerBoxUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)
	
	; Check if box can be triggered multiple times
	cmp.b  #0x0, TriggerBox_TriggerOnce(a0)
	bne    @TriggerMultiple
	
	; Check if already triggered
	cmp.b  #0x0, TriggerBox_Triggered(a0)
	bne    @Triggered
	
	@TriggerMultiple:
	
	; Check player vs. box
	move.l #Player1, a1
	jsr    TestGameObjBoxIntersectBox
	cmp.b  #0x0, d0
	beq    @NoIntersect
	
	; Check if already triggered
	cmp.b  #0x0, TriggerBox_Triggered(a0)
	bne    @Triggered
	
	; Triggered this frame
	move.b #0x1, TriggerBox_Triggered(a0)
	
	; Run routine
	move.l a0, -(sp)
	move.l a1, -(sp)
	move.l TriggerBox_Routine(a0), a2
	move.l TriggerBox_RegisterD3(a0), d3
	move.l TriggerBox_RegisterD2(a0), d2
	move.l TriggerBox_RegisterD1(a0), d1
	move.l TriggerBox_RegisterD0(a0), d0
	move.l TriggerBox_RegisterA1(a0), a1
	move.l TriggerBox_RegisterA0(a0), a0
	jsr    (a2)
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	@NoIntersect:
	
	; Player outside, not triggered
	move.b #0x0, TriggerBox_Triggered(a0)
	
	@Triggered:
	
	move.l (sp)+, a1
	
	rts
	