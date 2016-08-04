;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   stream.asm - Map streaming logic
;==============================================================

UpdateMapStreaming:
	
	; Level to a1
	move.l  (CurrentLevel), a1
	
	;==============================================================
	
	; Calculate rows remaining
	move.l  (WorldScrollY), d1			; Get world scroll Y position
	add.l   (CameraShakeOffsetY), d1	; Add shake offset
	
	; Clamp scroll value + camera shake
	cmp.l  #0x0, d1
	bge    @NoClampY
	move.l  (WorldScrollY), d1
	@NoClampY:
	
	lsr.l   #0x8, d1					; To screen space
	divu    #0x8, d1					; To tiles
	move.w  d1, d2
	sub.w   (MapStreamLoadedRow), d2
	cmp.w   #0x0, d2
	bge     @NumRowsPositive
	neg.w   d2
	@NumRowsPositive:
	
	;==============================================================
	
	; Calculate cols remaining
	move.l  (WorldScrollX), d3			; Get world scroll X position
	add.l   (CameraShakeOffsetX), d3	; Add shake offset
	
	; Clamp scroll value + camera shake
	cmp.l  #0x0, d3
	bge    @NoClampX
	move.l  (WorldScrollX), d3
	@NoClampX:
	
	lsr.l   #0x8, d3					; To screen space
	divu    #0x8, d3					; To tiles
	move.w  d3, d4
	sub.w   (MapStreamLoadedCol), d4
	cmp.w   #0x0, d4
	bge     @NumColsPositive
	neg.w   d4
	@NumColsPositive:
	
	;==============================================================
	
	; Process one row followed by one col at a time
	@WorkLoop:
	
	cmp.w   #0x0, d2
	beq     @NoPendingRows
	
	; Stream next pending row
	PUSHL   d1
	PUSHL   d2
	PUSHL   d3
	PUSHL   d4
	jsr     MapStreamNextRow
	POPL    d4
	POPL    d3
	POPL    d2
	POPL    d1
	
	sub.w   #0x1, d2
	
	@NoPendingRows:
	
	;==============================================================
	
	cmp.w   #0x0, d4
	beq     @NoPendingCols
	
	; Stream next pending col
	PUSHL   d1
	PUSHL   d2
	PUSHL   d3
	PUSHL   d4
	move.w  d3, d1
	jsr     MapStreamNextColumn
	POPL    d4
	POPL    d3
	POPL    d2
	POPL    d1
	
	sub.w   #0x1, d4
	
	@NoPendingCols:
	
	;==============================================================
	
	; Loop until all pending rows and cols processed
	cmp.w   #0x0, d2
	bne     @WorkLoop
	cmp.w   #0x0, d4
	bne     @WorkLoop
	
	rts
	
MapStreamNextRow:
	; a1 --- Level addr
	; d1 (w) Target row

	; Check streaming direction
	move.w  (MapStreamLoadedRow), d0
	cmp.w   d0, d1
	blt		@StreamTop
	bgt		@StreamBottom
	bra     @End
	
	@StreamTop:
	sub.w   #0x1, d0				; Stream one row above last streamed
	move.w  d0, MapStreamLoadedRow	; Last loaded row back to RAM
	bra		@Stream
	@StreamBottom:
	add.w   #0x1, d0				; Stream one row below last streamed
	move.w  d0, MapStreamLoadedRow	; Last loaded row back to RAM
	add.w   #MapStreamHeight-1, d0	; Offset to bottom of stream window
	@Stream:
	
	; Source rect left in upper d0
	move.l  (WorldScrollX), d1		; Get world scroll X position
	add.l  (CameraShakeOffsetX), d1	; Add shake offset
	cmp.l  #0x0, d1					; Clamp scroll value + camera shake
	bge    @NoClampX
	move.l  (WorldScrollX), d1
	@NoClampX:
	lsr.l   #0x8, d1				; To screen space
	divu    #0x8, d1				; To tiles
	swap	d0
	move.w	d1, d0
	
	; Source rect top in lower d0
	swap	d0
	
	; Dest rect left in upper d1
	divu	#vdp_plane_width, d1	; Div/scroll width
	clr.w	d1						; Clear exponent (remainder in upper d1)
	
	; Dest rect top in lower d1
	clr.l   d2
	move.w	d0, d2					; Dest rect top to lower d2
	divu    #vdp_plane_height, d2	; Div/scroll height
	clr.w	d2						; Clear exponent
	swap	d2						; Remainder (modulus) to lower d1
	move.w	d2, d1
	
	move.w	#MapStreamWidth, d2		; Stream whole width, ignoring column overlap (rows can be done in 1 DMA)
	swap	d2
	move.w  #0x1, d2				; Streaming one row per frame (to load balance)
	
	; Check if width crosses scroll plane bounds
	move.w	#0x0, d4 ; Don't loop by default
	move.l	d1, d3
	swap	d3
	add.w	#MapStreamWidth, d3
	cmp.w	#vdp_plane_width, d3
	ble		@WithinBounds
	
	; Clamp width to bounds
	sub.w	#vdp_plane_width, d3
	move.w	d3, d5		; Keep overflow
	swap	d2
	sub.w	d3, d2		; Truncate width
	swap	d2
	move.w	#0x1, d4	; Loop for second half of row
	@WithinBounds:
	
	; Loop
	@Loop:
	
	; Backup source/dest rects, width/height, loop counter and overflow
	move.w	d5, -(sp)	; Overflow
	move.w	d4, -(sp)	; Loop counter
	move.l	d2, -(sp)	; W/H
	move.l	d1, -(sp)	; Dest rect
	move.l	d0, -(sp)	; Source rect
	move.l	a1, -(sp)	; Level data
	
	; Load map segment
	move.l  Level_MapAddr(a1), a0   ; a0 ---  Source map address
	move.w  Level_MapWidth(a1), d3  ; d3 (w)  Source map total width (tiles)
	move.w  #Tiles_LevelMap_ID, d4 	; d4 (w)  Art tile ID
	move.b  #PaletteId_World0, d5  	; d5 (b)  Palette ID
	lea     VDP_LoadMapSegmentPlaneA, a5
	jsr     VDPQueue_PushJob
	
	; Restore source/dest rects, width/height, loop counter and overflow
	move.l	(sp)+, a1 	; Level data
	move.l	(sp)+, d0 	; Source rect
	move.l	(sp)+, d1 	; Dest rect
	move.l	(sp)+, d2 	; W/H
	move.w	(sp)+, d4 	; Loop counter
	move.w	(sp)+, d5 	; Overflow
	
	; Continue second half of row from left of scroll plane
	swap	d0
	swap	d2
	add.w	d2, d0		; Advance source left by last width
	swap	d0
	move.w	d5, d2		; Overflow is new width
	swap 	d2
	
	and.l	#0x0000FFFF, d1	; Dest left
	
	; Loop
	dbra	d4, @Loop
	
	@End:
	rts
	
MapStreamNextColumn:
	; a1 --- Level addr
	; d1 (w) Target cols

	; Check streaming direction
	move.w  (MapStreamLoadedCol), d0
	cmp.w   d0, d1
	blt		@StreamLeft
	bgt		@StreamRight
	bra     @End
	
	@StreamLeft:
	sub.w   #0x1, d0				; Stream one col left of last streamed
	move.w  d0, MapStreamLoadedCol	; Last loaded col back to RAM
	bra		@Stream
	@StreamRight:
	add.w   #0x1, d0				; Stream one col right of last streamed
	move.w  d0, MapStreamLoadedCol	; Last loaded col back to RAM
	add.w   #MapStreamWidth-1, d0	; Offset to right of stream window
	@Stream:

	; Dest rect left in upper d2
	clr.l	d2
	move.w	d0, d2					; Dest rect left to lower d2
	divu    #vdp_plane_width, d2	; Div/scroll width
	clr.w	d2						; Clear exponent (remainder in upper d2)
	
	; Source rect left in upper d0
	swap	d0
	
	; Source rect top in lower d0
	move.l  (WorldScrollY), d3		; Get world scroll Y position
	add.l  (CameraShakeOffsetY), d3	; Add shake offset
	cmp.l  #0x0, d3					; Clamp scroll value + camera shake
	bge    @NoClampY
	move.l  (WorldScrollY), d3
	@NoClampY:
	lsr.l   #0x8, d3				; To screen space
	divu    #0x8, d3				; To tiles
	move.w	d3, d0					; To lower d0
	
	; Dest rect top in lower d1
	move.w	d3, d1
	divu	#vdp_plane_height, d1	; Div/scroll height
	clr.w	d1						; Clear exponent
	swap	d1						; Remainder to lower d1
	
	; Dest rect left to upper d1
	or.l	d2, d1					
	
	move.w  #0x1, d2				; Streaming one col per frame (to load balance)
	swap	d2
	move.w	#MapStreamHeight, d2	; Stream whole height (TODO: don't include overlap)
	
	; Check if height crosses scroll plane bounds
	move.w	#0x0, d4 ; Don't loop by default
	move.w	d1, d3
	add.w	#MapStreamHeight, d3
	cmp.w	#vdp_plane_height, d3
	ble		@WithinBounds
	
	; Clamp height to bounds
	sub.w	#vdp_plane_height, d3
	move.w	d3, d5		; Keep overflow
	sub.w	d3, d2		; Truncate height
	move.w	#0x1, d4	; Loop for second half of column
	@WithinBounds:
	
	; Loop
	@Loop:
	
	; Backup source/dest rects, width/height, loop counter and overflow
	move.w	d5, -(sp)	; Overflow
	move.w	d4, -(sp)	; Loop counter
	move.l	d2, -(sp)	; W/H
	move.l	d1, -(sp)	; Dest rect
	move.l	d0, -(sp)	; Source rect
	move.l	a1, -(sp)	; Level data
	
	; Load map segment
	move.l  Level_MapAddr(a1), a0   ; a0 ---  Source map address
	move.w  Level_MapWidth(a1), d3  ; d3 (w)  Source map total width (tiles)
	move.w  #Tiles_LevelMap_ID, d4 	; d4 (w)  Art tile ID
	move.b  #PaletteId_World0, d5  	; d5 (b)  Palette ID
	lea     VDP_LoadMapSegmentPlaneA, a5
	jsr     VDPQueue_PushJob
	
	; Restore source/dest rects, width/height, loop counter and overflow
	move.l	(sp)+, a1 	; Level data
	move.l	(sp)+, d0 	; Source rect
	move.l	(sp)+, d1 	; Dest rect
	move.l	(sp)+, d2 	; W/H
	move.w	(sp)+, d4 	; Loop counter
	move.w	(sp)+, d5 	; Overflow
	
	; Continue second half of column from top of scroll plane
	add.w	d2, d0		; Advance source top by last height
	move.w	d5, d2		; Overflow is new height
	move.w	#0x0, d1	; Dest top
	
	; Loop
	dbra	d4, @Loop
	
	@End:
	rts
