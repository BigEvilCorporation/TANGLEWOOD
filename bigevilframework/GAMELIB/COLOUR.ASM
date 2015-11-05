;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   colour.asm - Character colour change mechanic
;==============================================================

	rsset 0
;------------------------------
PaletteLerp_DstAddr			rs.l 1
PaletteLerp_SubFrame		rs.l 1
PaletteLerp_Buffer			rs.b 0x20	; TODO: why won't size_palette_b evaluate here?
PaletteLerp_Speed			rs.w 1
PaletteLerp_PaletteIdx		rs.b 1
PaletteLerp_ColourIdx		rs.b 1
PaletteLerp_ComponentIdx	rs.b 1
PaletteLerp_ColourMin		rs.b 1
PaletteLerp_ColourMax		rs.b 1

;------------------------------
PaletteLerp_Struct_Pad		rs.b 3
PaletteLerp_Struct_Size		rs.b 0

PaletteLerpStart:
	; a0 --- Target palette ROM address
	; d0 (b) Palette index
	; d1 (w) Lerp speed (animation subframes per frame)
	; d2 (b) Colour range min
	; d3 (b) Colour range max

	lea    PaletteLerp_Array, a2

	move.b d0, d5
	and.l  #0x000000FF, d5
	mulu   #PaletteLerp_Struct_Size, d5
	add.l  d5, a2
	
	move.l a0, PaletteLerp_DstAddr(a2)
	move.b d0, PaletteLerp_PaletteIdx(a2)
	move.w d1, PaletteLerp_Speed(a2)
	move.b d2, PaletteLerp_ColourMin(a2)
	move.b d3, PaletteLerp_ColourMax(a2)
	move.l #0x0, PaletteLerp_SubFrame(a2)
	move.b #0x0, PaletteLerp_ColourIdx(a2)
	move.b #0x0, PaletteLerp_ComponentIdx(a2)
	
	rts
	
PaletteLerpUpdate:

	lea PaletteLerp_Array, a0
	move.l #num_palettes-1, d0
	@PaletteLerpLp:
	move.l a0, -(sp)
	move.l d0, -(sp)
	jsr PaletteLerpUpdateNextComponent
	move.l (sp)+, d0
	move.l (sp)+, a0
	add.l  #PaletteLerp_Struct_Size, a0
	dbra d0, @PaletteLerpLp

	rts

PaletteLerpUpdateNextComponent:
	; a0 --- Address of PaletteLerp struct to update

	clr.l  d0
	move.w PaletteLerp_Speed(a0), d0		; Get lerp speed
	cmp.w  #0x0, d0						; Return if disabled
	beq    @End
	
	; =====================================================================
	
	clr.l  d2
	move.l PaletteLerp_SubFrame(a0), d1	; Get current subframe
	move.l d1, d3						; Keep subframe as prev
	add.l  d0, d1						; Advance subframe
	move.l d1, PaletteLerp_SubFrame(a0)	; Back to RAM
	divu.w #0x8, d1						; Subframes to frames
	divu.w #0x8, d3
	cmp.w  d1, d3						; If frame changed
	beq    @End

	; =====================================================================
	
	; Fetch current palette from VDP into scratch buffer
	clr.l  d0
	move.l a0, -(sp)
	move.b PaletteLerp_PaletteIdx(a0), d0
	add.l  #PaletteLerp_Buffer, a0	; Offset into struct to palette buffer
	jsr    ReadPalette
	move.l (sp)+, a0

	; =====================================================================
	
	; Check if lerp finished
	move.l a0, a2
	add.l  #PaletteLerp_Buffer, a2			; Offset into struct to palette buffer
	move.l PaletteLerp_DstAddr(a0), a1

	move.b PaletteLerp_ColourMin(a0), d0	; Offset into palettes to start of range
	move.b d0, d1
	and.l  #0xFF, d1
	mulu   #size_word, d1
	add.l  d1, a1
	add.l  d1, a2

	clr.l  d0
	move.b PaletteLerp_ColourMax(a0), d0
	move.b PaletteLerp_ColourMin(a0), d1
	sub.b  d1, d0		; (max - min) colours
	sub.b  #0x1, d0	; -1 for loop
	@PaletteCompareLp:
	move.w (a1)+, d1
	move.w (a2)+, d2
	and.w  #%0000111011101110, d1
	and.w  #%0000111011101110, d2
	cmp.w  d1, d2
	bne    @NextComponent		; If colours differ, there's still work to do
	cmp.b  PaletteLerp_ColourMax(a0), d0
	dbra   d0, @PaletteCompareLp
	
	; Reset and disable lerp
	move.b #0x0, PaletteLerp_ColourIdx(a0)
	move.b #0x0, PaletteLerp_ComponentIdx(a0)
	move.w #0x0, PaletteLerp_Speed(a0)
	
	; Finished
	bra    @End
	
	; =====================================================================
	
	@NextComponent:
	
	; Read next colour index and component index to advence
	move.b PaletteLerp_ColourIdx(a0), d1	; Get next colour index
	move.b PaletteLerp_ComponentIdx(a0), d2	; Get next component index
	add.b  #0x1, d2							; Advance to next component index
	cmp.b  #0x3, d2							; 3 components per colour
	bne    @NoWrapCmpIdx
	
	; Component finished, next colour
	move.b #0x0, d2							; Wrap component index to range min
	add.b  #0x1, d1							; Advance to next colour index
	move.b PaletteLerp_ColourMax(a0), d3
	cmp.b  d3, d1
	ble    @NoWrapColIdx
	move.b PaletteLerp_ColourMin(a0), d1	; Wrap colour index to range min
	
	@NoWrapColIdx:
	@NoWrapCmpIdx:
	move.b d1, PaletteLerp_ColourIdx(a0)	; Colour index back to RAM
	move.b d2, PaletteLerp_ComponentIdx(a0)	; Component index back to RAM
	andi.l #0x000000FF, d1
	andi.l #0x000000FF, d2
	mulu.w #size_word, d1					; Colour idx to colour offset
	mulu.w #0x4, d2							; Component idx to bit
	
	; =====================================================================
		
	move.l a0, a2
	add.l  #PaletteLerp_Buffer, a2		; Scratch buffer addr (RAM)
	move.l PaletteLerp_DstAddr(a0), a1	; Target palette addr (ROM)
	
	clr.l  d4							; Clear working regs
	clr.l  d5
	
	; Colours are defined as: (0000BBB0GGG0RRR0) - need to mask and shift to get each component as an integer
	add.l  d1, a2						; Offset scratch ptr to colour
	add.l  d1, a1						; Offset target ptr to colour
	move.w (a2), d3						; Read scratch colour
	move.w (a1), d4						; Read target colour
	and.w  #%0000111011101110, d3		; Mask out the redundant bits from scratch word
	and.w  #%0000111011101110, d4		; Mask out the redundant bits from target word
	cmp.w  d3, d4
	bne    @ColoursDiffer
	bra    @NextComponent				; Colours are the same, keep searching for a change
	
	@ColoursDiffer:
	ror.w  d2, d3						; Shift to next scratch nybble
	ror.w  d2, d4						; Shift to next target nybble
	
	; Advance component
	move.b d3, d5						; Read bottom byte from scratch
	move.b d4, d6						; Read bottom byte from target
	andi.b #0x0F, d5					; Mask out top nybble from scratch
	andi.b #0x0F, d6					; Mask out top nybble from target
	lsr.b  #0x1, d5						; Shift to get 3-bit scratch component as integer
	lsr.b  #0x1, d6						; Shift to get 3-bit target component as integer
	cmp.b  d5, d6						; Check if different, and in which direction to lerp
	bgt    @AddComponent				; Add to component
	blt    @SubComponent				; Sub from component
	bra    @NextComponent				; Components are the the same, keep searching for a change
	
	; Components differ, add/sub to lerp towards target
	@AddComponent:
	addi.b #0x1, d5						; Add to component
	jmp @WriteComponent
	@SubComponent:
	subi.b #0x1, d5						; Sub from component
	
	; Put new component back into scratch buffer
	@WriteComponent:
	andi.b #0xF0, d3					; Mask out scratch nybble from sratch byte
	lsl.b  #0x1, d5						; Shift component left back to (XXX-) pattern
	or.b   d5, d3						; Put new nybble back into scratch  byte
	
	rol.w  d2, d3						; Shift scratch component back into place
	move.w d3, (a2)						; Write colour back to scratch buffer
	
	; =====================================================================
	
	; Write new palette
	@WriteNewPalette:
	clr.l  d0
	move.l a0, -(sp)
	move.b PaletteLerp_PaletteIdx(a0), d0
	add.l  #PaletteLerp_Buffer, a0	; Offset into struct to palette buffer
	lea    LoadPaletteDMA, a5
	jsr    VDPQueue_PushJob
	move.l (sp)+, a0
	
	; =====================================================================

	@End:

	rts
