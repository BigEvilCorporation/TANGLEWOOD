;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2015
;==============================================================
;   profile.asm - A basic code profiler, using hblank counter
;==============================================================

; Constants
ProfileMaxBlocks		equ 0x20
ProfileBlockMaxChildren	equ 0x04
ProfileDrawX			equ 0x2
ProfileDrawY			equ 0x2
ProfileDrawTabSpaces	equ 0x2
ProfileDrawLineSpaces	equ 0x1

; Profile block structure
	rsset 0
;-----------------------------
ProfileBlockName	 	rs.l 1
ProfileBlockStartTime	rs.l 1
ProfileBlockEndTime		rs.l 1
ProfileBlockChildAddrs  rs.l ProfileBlockMaxChildren
ProfileBlockChildCount	rs.b 1
;-----------------------------
ProfileBlockStructPad	rs.b 3
ProfileBlockStructSize	rs.b 0
;-----------------------------

Profile_BeginFrame:
	; Marks the start of a profiling frame
	; No args
	
	cmp.b  #0x0, profile_pending
	beq    @Inactive
	
	; Profile pending, begin collecting timings
	move.b #0x0, profile_pending
	move.b #0x0, profile_finished
	move.b #0x1, profile_active
	
	; Push root block
	lea    Str_Frame, a0
	jsr    Profile_PushScope
	
	@Inactive:
	
	rts
	
Profile_EndFrame:
	; Marks the end of a profiling frame
	; No args
	
	cmp.b  #0x0, profile_active
	beq    @Inactive
	
	; Pop root block
	jsr    Profile_PopScope
	
	; Capture frame finished
	move.b #0x0, profile_active
	move.b #0x1, profile_finished
	
	@Inactive:
	
	rts
	
Profile_PushScope:
	; Marks the start of a named profiling section
	; a0 --- Address of scope name string
	
	cmp.b  #0x0, profile_active
	beq    @Inactive
	
	; Allocate new block
	move.l (profile_nextblock), a1
	addi.l #ProfileBlockStructSize, profile_nextblock
	
	; Set string and start time
	move.l a0, ProfileBlockName(a1)
	move.l (hblank_counter), ProfileBlockStartTime(a1)
	
	; Link as child of current block
	move.l (profile_currblock), a2
	cmp.l  a1, a2
	beq    @FirstBlock
	clr.w  d0
	move.b ProfileBlockChildCount(a2), d0
	addi.b #0x1, ProfileBlockChildCount(a2)
	move.l a2, a3
	addi.l #ProfileBlockChildAddrs, a3
	move.l a1, (a3,d0.w)	; a3=array addr, d0=index into array
	@FirstBlock:
	
	; Set as current block
	move.l a1, profile_currblock
	
	; Push parent block to block stack
	move.l (profile_blockstackptr), a3
	move.l a2, (a3)+
	move.l a3, profile_blockstackptr
	
	; Push child block to block stack
	move.l (profile_blockstackptr), a3
	move.l a1, (a3)+
	move.l a3, profile_blockstackptr
	
	@Inactive:
	
	rts
	
Profile_PopScope:
	; Marks the end of a profiling section
	; No args
	
	cmp.b  #0x0, profile_active
	beq    @Inactive
	
	; Pop child block from block stack
	move.l (profile_blockstackptr), a3
	move.l -(a3), a1
	move.l a3, profile_blockstackptr

	; Set end time
	move.l (hblank_counter), ProfileBlockEndTime(a1)
	
	; Pop parent block from block stack
	move.l (profile_blockstackptr), a3
	move.l -(a3), profile_nextblock
	move.l a3, profile_blockstackptr
	
	@Inactive:
	
	rts
	
Profile_CaptureFrame:
	; Captures the next profiling frame
	; No args
	
	; Clear root block
	lea    profile_resultblocks, a0
	move.b #0x0, ProfileBlockChildCount(a0)
	
	; Reset stacks
	move.l a0, profile_currblock
	move.l a0, profile_nextblock
	move.l #profile_blockstack, profile_blockstackptr
	
	; Start capturing at next Profile_BeginFrame
	move.b #0x1, profile_pending
	
	rts
	
Profile_DrawResults:
	; Renders the results of the last profiling capture
	; No args
	
	cmp.b #0x0, profile_finished
	beq   @NoResults
	
	; Get root block
	move.l #profile_resultblocks, a0
	
	; Set initial X/Y coord
	move.w #ProfileDrawX, d0
	swap   d0
	move.w #ProfileDrawY, d0
	
	; Traverse all blocks in hierarchy
	jsr    Profile_DrawBlockRecursive
	
	@NoResults:
	
	rts
	
Profile_DrawBlockRecursive:
	; Recursively draws a single results block
	; a0 ---- Block address
	; d0 (ww) X/Y coord
	
	; Draw block name string
	move.l a0, -(sp)
	move.l d0, -(sp)
	move.l d0, d1					; X/Y coord
	move.l ProfileBlockName(a0), a0	; String
	move.w #Tiles_PixelFont_ID, d0	; Font
	move.b #0x0, d2					; Palette
	move.b #0x0, d3					; Plane A
	jsr    DrawTextToPlane			; Draw
	move.l (sp)+, d0
	move.l (sp)+, a0
	
	; Draw time
	
	; Next line
	add.w  #ProfileDrawLineSpaces, d0
	
	; Backup curr block address
	move.l a0, -(sp)
	
	; Iterate child ptrs
	move.b ProfileBlockChildCount(a0), d2
	cmp.b  #0x0, d2
	beq    @NoChildren
	andi.w #0x00FF, d2
	subi.w #0x1, d2
	
	; Get first child ptr
	move.l a0, a1
	addi.l #ProfileBlockChildAddrs, a1
	
	@ChildLp:
	
	; Dereference child ptr
	move.l (a1), a0
	
	; Next tab
	swap   d0
	add.w  #ProfileDrawTabSpaces, d0
	swap   d0
	
	move.l a0, -(sp)
	move.l a1, -(sp)
	move.l d2, -(sp)
	
	; Draw child
	jsr    Profile_DrawBlockRecursive
	
	move.l (sp)+, d2
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	; Prev tab
	swap   d0
	sub.w  #ProfileDrawTabSpaces, d0
	swap   d0
	
	; Next child ptr
	addi.l #size_word, a1

	; Loop
	dbra   d2, @ChildLp
	
	@NoChildren:
	
	; Restore curr block address
	move.l (sp)+, a0
	
	rts
	