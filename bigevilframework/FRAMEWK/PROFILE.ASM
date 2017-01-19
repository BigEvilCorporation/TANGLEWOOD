;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2015
;==============================================================
;   profile.asm - A basic code profiler, using hblank counter
;==============================================================

; Constants
ProfileMaxBlocks		equ 0x10
ProfileBlockMaxChildren	equ 0x08
ProfileDrawX			equ 0x02
ProfileDrawY			equ 0x02
ProfileDrawTabSpaces	equ 0x01
ProfileDrawLineSpaces	equ 0x01
ProfileDrawTimeColumn	equ 0x14

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

DBG_Profile_BeginFrame:
	; Marks the start of a profiling frame
	; No args
	
	cmp.b  #0x0, profile_pending
	beq    @Inactive
	
	; Profile pending, begin collecting timings
	move.b #0x0, profile_pending
	move.b #0x0, profile_finished
	move.b #0x1, profile_active
	
	; Wait for start of drawing (using hblank timings)
	jsr    VDP_WaitDrawBegin
	
	; Push root block
	lea    Str_Frame, a0
	jsr    DBG_Profile_PushScope
	
	@Inactive:
	
	rts
	
DBG_Profile_EndFrame:
	; Marks the end of a profiling frame
	; No args
	
	cmp.b  #0x0, profile_active
	beq    @Inactive
	
	; Pop root block
	jsr    DBG_Profile_PopScope
	
	; Capture frame finished
	move.b #0x0, profile_active
	move.b #0x1, profile_finished
	
	@Inactive:
	
	rts
	
DBG_Profile_PushScope:
	; Marks the start of a named profiling section
	; a0 --- Address of scope name string
	
	cmp.b  #0x0, profile_active
	beq    @Inactive
	
	movem.l d0-d7/a0-a6, -(sp)
	
	; Allocate new block
	move.l (profile_nextfreeblock), a1
	addi.l #ProfileBlockStructSize, profile_nextfreeblock
	
	; Set string and start time
	move.l a0, ProfileBlockName(a1)
	move.l (hblank_counter), ProfileBlockStartTime(a1)
	; Link as child of current block
	
	move.l (profile_currblock), a2
	cmp.l  a1, a2
	beq    @FirstBlock
	clr.l  d0
	move.b ProfileBlockChildCount(a2), d0
	addi.b #0x1, ProfileBlockChildCount(a2)
	mulu   #size_long, d0
	move.l a1, ProfileBlockChildAddrs(a2, d0.l)
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
	
	movem.l (sp)+, d0-d7/a0-a6
	
	@Inactive:
	
	rts
	
DBG_Profile_PopScope:
	; Marks the end of a profiling section
	; No args
	
	cmp.b  #0x0, profile_active
	beq    @Inactive
	
	movem.l d0-d7/a0-a6, -(sp)
	
	; Pop child block from block stack
	move.l (profile_blockstackptr), a3
	move.l -(a3), a1
	move.l a3, profile_blockstackptr

	; Set end time
	move.l (hblank_counter), ProfileBlockEndTime(a1)
	
	; Pop parent block from block stack
	move.l (profile_blockstackptr), a3
	move.l -(a3), profile_currblock
	move.l a3, profile_blockstackptr
	
	movem.l (sp)+, d0-d7/a0-a6
	
	@Inactive:
	
	rts
	
DBG_Profile_CaptureFrame:
	; Captures the next profiling frame
	; No args
	; Note: d0-d1/a0 from input code, don't trample
	
	; Clear blocks
	lea    profile_resultblocks, a1
	move.l #ProfileMaxBlocks-1, d2
	@Lp:
	move.b #0x0, ProfileBlockChildCount(a1)
	add.l  #ProfileBlockStructSize, a1
	dbra   d2, @Lp
	
	; Reset stacks
	lea    profile_resultblocks, a1
	move.l a1, profile_currblock
	move.l a1, profile_nextfreeblock
	lea    profile_blockstack, a1
	move.l a1, profile_blockstackptr
	
	; Start capturing at next DBG_Profile_BeginFrame
	move.b #0x1, profile_pending
	
	rts
	
DBG_Profile_DrawResults:
	; Renders the results of the last profiling capture
	; No args
	
	cmp.b #0x0, profile_finished
	beq   @NoResults
	
	; Get root block
	move.l #profile_resultblocks, a0
	
	; Set initial X/Y coord
	move.b #ProfileDrawX, d0
	lsl.w  #0x8, d0
	move.b #ProfileDrawY, d0
	
	; Traverse all blocks in hierarchy
	jsr    DBG_Profile_DrawBlockRecursive
	
	@NoResults:
	
	rts
	
DBG_Profile_DrawBlockRecursive:
	; Recursively draws a single results block
	; a0 ---- Block address
	; d0 (bb) X/Y coord
	
	; Draw block name string
	move.l a0, -(sp)
	move.l d0, -(sp)
	move.l d0, d1					; X/Y coord
	move.l ProfileBlockName(a0), a0	; String
	move.w (vram_addr_systemfont), d0	; Font
	move.b #0x0, d2					; Palette
	move.b #0x0, d3					; Plane A
	jsr    TXT_DrawPlane			; Draw
	move.l (sp)+, d0
	move.l (sp)+, a0
	
	; Draw time
	move.l a0, -(sp)
	move.l d0, -(sp)
	
	sub.l  #0x10, sp				; Alloc string space
	move.l sp, a4
	move.l d0, -(sp)
	move.l ProfileBlockEndTime(a0), d0 ; Get time
	sub.l  ProfileBlockStartTime(a0), d0
	move.l a4, a0
	jsr    TXT_ItoA_Hex_l				; Convert to string
	move.l (sp)+, d0
	
	ror.w  #0x8, d0
	move.b #ProfileDrawTimeColumn, d0 ; X/Y coord
	rol.w  #0x8, d0
	move.w d0, d1
	
	move.l a4, a0					; String
	move.w (vram_addr_systemfont), d0	; Font
	move.b #0x0, d2					; Palette
	move.b #0x0, d3					; Plane A
	jsr    TXT_DrawPlane			; Draw
	
	add.l  #0x10, sp				; Free string space
	
	move.l (sp)+, d0
	move.l (sp)+, a0
	
	; Next line
	add.b  #ProfileDrawLineSpaces, d0
	
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
	ror.w  #0x8, d0
	add.b  #ProfileDrawTabSpaces, d0
	rol.w  #0x8, d0
	
	move.l a0, -(sp)
	move.l a1, -(sp)
	move.l d2, -(sp)
	
	; Draw child
	jsr    DBG_Profile_DrawBlockRecursive
	
	move.l (sp)+, d2
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	; Prev tab
	ror.w  #0x8, d0
	sub.b  #ProfileDrawTabSpaces, d0
	rol.w  #0x8, d0
	
	; Next child ptr
	addi.l #size_long, a1

	; Loop
	dbra   d2, @ChildLp
	
	@NoChildren:
	
	; Restore curr block address
	move.l (sp)+, a0
	
	rts
	