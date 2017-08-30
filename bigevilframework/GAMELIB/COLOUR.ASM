;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   colour.asm - Character colour change mechanic
;==============================================================

	rsset 0
;-------------------------------------
PaletteLerp_BufferTrg			rs.b 0x20   ; Target palette
PaletteLerp_CurrentAddr			rs.l 1		; Source palette address
PaletteLerp_SubFrame			rs.l 1
PaletteLerp_UpdateSpeed			rs.w 1		; Update speed (in subframes)
PaletteLerp_TicksPerUpdate		rs.b 1		; Number of ticks (components to advance) per update
PaletteLerp_PaletteIdx			rs.b 1
PaletteLerp_ColourIdx			rs.b 1
PaletteLerp_ComponentIdx		rs.b 1
PaletteLerp_ColourMin			rs.b 1
PaletteLerp_ColourMax			rs.b 1
;-------------------------------------
PaletteLerp_Struct_Pad			rs.b 0
PaletteLerp_Struct_Size			rs.b 0

PAL_LerpStart:
	; a0 --- Target palette address
	; d0 (b) Palette index
	; d1 (w) Update speed (animation subframes per frame)
	; d2 (b) Ticks per update (num components to advance)
	; d3 (b) Colour range min
	; d4 (b) Colour range max

	lea    PaletteLerp_Array, a2

	and.l  #0xFF, d0
	and.l  #0xFF, d5
	move.b d0, d5
	mulu   #PaletteLerp_Struct_Size, d5
	add.l  d5, a2
	
	move.b d0, PaletteLerp_PaletteIdx(a2)
	move.w d1, PaletteLerp_UpdateSpeed(a2)
	move.b d2, PaletteLerp_TicksPerUpdate(a2)
	move.b d3, PaletteLerp_ColourMin(a2)
	move.b d4, PaletteLerp_ColourMax(a2)
	move.l #0x0, PaletteLerp_SubFrame(a2)
	move.b #0x0, PaletteLerp_ColourIdx(a2)
	move.b #0x0, PaletteLerp_ComponentIdx(a2)
	
	; Set source palette
	lea     CurrentPalettes, a3
	mulu    #size_palette_b, d0
	add.l   d0, a3
	move.l  a3, PaletteLerp_CurrentAddr(a2)

	; Copy target palette into target buffer
	move.l  #(size_palette_b/size_long), d6
	addi.l  #PaletteLerp_BufferTrg, a2
	MEMCPYL a2, a0, d6
	
	rts
	
PAL_LerpStartAll:
	; a0 --- Target palette address
	; d1 (w) Update speed (animation subframes per frame)
	; d2 (b) Ticks per update (num components to advance)
	; d3 (b) Colour range min
	; d4 (b) Colour range max
	
	move.l #0x0, d0
	jsr    PAL_LerpStart
	move.l #0x1, d0
	jsr    PAL_LerpStart
	move.l #0x2, d0
	jsr    PAL_LerpStart
	move.l #0x3, d0
	jsr    PAL_LerpStart
	
	rts

PAL_LerpActive:
	; d0 (b) - Returns mask of active palette lerps

	move.b #0x0, d0

	PUSHL  a0

	lea PaletteLerp_Array, a0
	move.l #num_palettes-1, d1
	@PaletteLerpLp:
	tst.w  PaletteLerp_UpdateSpeed(a0)
	beq    @Inactive
	bset   d1, d0
	@Inactive:
	addi.l #PaletteLerp_Struct_Size, a0
	dbra d1, @PaletteLerpLp

	POPL   a0

	rts
	
PAL_LerpUpdate:

	lea PaletteLerp_Array, a0

	; Manual loop, need actual palette index for bset
	move.l #0x0, d0
	@PaletteLerpLp:

	; Tick palette lerp
	PUSHM  d0/a0
	jsr PAL_LerpUpdateNextComponent
	move.b d0, d1
	POPM   d0/a0

	; Check if palette written to
	tst.b  d1
	beq    @PaletteNotWritten

	; Palette written to, set dirty
	bset   d0, (DirtyPalettesMask)
	bset   d0, (UnderwaterDirtyPalettesMask)
	@PaletteNotWritten:

	; Next palette
	addi.l #PaletteLerp_Struct_Size, a0
	addq.b #0x1, d0
	cmp.b  #num_palettes, d0
	bne    @PaletteLerpLp

	rts

PAL_LerpUpdateNextComponent:
	; a0 --- Address of PaletteLerp struct to update

	clr.l  d0
	move.w PaletteLerp_UpdateSpeed(a0), d0		; Get lerp speed
	tst.w  d0						; Return if disabled
	beq    @PaletteNotWritten
	
	; =====================================================================
	
	clr.l  d2
	move.l PaletteLerp_SubFrame(a0), d1	; Get current subframe
	move.l d1, d3						; Keep subframe as prev
	add.l  d0, d1						; Advance subframe
	move.l d1, PaletteLerp_SubFrame(a0)	; Back to RAM
	
	; SNASM68K bug - assembles to lsr.w d4,d0
	;lsr.w  #fade_frame_shift, d1
	;lsr.w  #fade_frame_shift, d3
	lsr.w  #0x6, d1						; Subframes to frames
	lsr.w  #0x6, d3
	
	cmp.w  d1, d3						; If frame changed
	beq    @PaletteNotWritten

	; =====================================================================
	
	; Loop through ticks
	clr.w  d0
	move.b PaletteLerp_TicksPerUpdate(a0), d0
	subq.w #0x1, d0
	
	@NextTick:
	
	; Check if lerp finished
	move.l a0, a1
	move.l a0, a2
	addi.l #PaletteLerp_BufferTrg, a1		; Offset into struct to target palette buffer
	move.l PaletteLerp_CurrentAddr(a0), a2	; Current palette

	move.b PaletteLerp_ColourMin(a0), d3	; Offset into palettes to start of range
	move.b d3, d1
	and.l  #0xFF, d1
	lsl.l  #0x1, d1	; To words
	add.l  d1, a1
	add.l  d1, a2

	clr.l  d3
	move.b PaletteLerp_ColourMax(a0), d3
	move.b PaletteLerp_ColourMin(a0), d1
	sub.b  d1, d3		; (max - min) colours
	@PaletteCompareLp:
	move.w (a1)+, d1
	move.w (a2)+, d2
	and.w  #%0000111011101110, d1
	and.w  #%0000111011101110, d2
	cmp.w  d1, d2
	bne    @NextComponent		; If colours differ, there's still work to do
	dbra   d3, @PaletteCompareLp
	
	; Reset and disable lerp
	move.b #0x0, PaletteLerp_ColourIdx(a0)
	move.b #0x0, PaletteLerp_ComponentIdx(a0)
	move.w #0x0, PaletteLerp_UpdateSpeed(a0)
	move.b #0x0, PaletteLerp_TicksPerUpdate(a0)
	
	; Finished
	bra    @PaletteWritten
	
	; =====================================================================
	
	@NextComponent:
	
	; Read next colour index and component index to advence
	move.b PaletteLerp_ColourIdx(a0), d1	; Get next colour index
	move.b PaletteLerp_ComponentIdx(a0), d2	; Get next component index
	addq.b #0x1, d2							; Advance to next component index
	cmp.b  #0x3, d2							; 3 components per colour
	bne    @NoWrapCmpIdx
	
	; Component finished, next colour
	move.b #0x0, d2							; Wrap component index to range min
	addq.b #0x1, d1							; Advance to next colour index
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
	lsl.l  #0x1, d1							; Colour idx to colour offset
	lsl.l  #0x2, d2							; Component idx to bit
	
	; =====================================================================
	
	move.l a0, a1
	move.l a0, a2
	addi.l #PaletteLerp_BufferTrg, a1		; Target buffer addr
	move.l PaletteLerp_CurrentAddr(a0), a2	; Source palette addr
	
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
	addq.b #0x1, d5						; Add to component
	bra @WriteComponent
	@SubComponent:
	subq.b #0x1, d5						; Sub from component
	
	; Put new component back into scratch buffer
	@WriteComponent:
	andi.b #0xF0, d3					; Mask out scratch nybble from sratch byte
	lsl.b  #0x1, d5						; Shift component left back to (XXX-) pattern
	or.b   d5, d3						; Put new nybble back into scratch  byte
	
	rol.w  d2, d3						; Shift scratch component back into place
	move.w d3, (a2)						; Write colour back to scratch buffer
	
	dbra   d0, @NextTick				; Next tick

	; =====================================================================
	
	@PaletteWritten:
	move.b #0x1, d0
	bra    @End

	; =====================================================================

	@PaletteNotWritten:
	move.b #0x0, d0

	; =====================================================================

	@End:

	rts
