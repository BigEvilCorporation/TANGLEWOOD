;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   vram.asm - VRAM allocation
;==============================================================

VRAMPoolCount	equ 0x3

; VRAM pools in reverse size order
VRAMDefaultPools:

; Spare space at VDP 0xF400-0xFC00
VRAMPool3:
	dc.w 	0xF400
	dc.w 	0xFC00
	dc.w 	(0xFC00-0xF400)
	dc.w 	0x0000
	dc.w 	0x0000

; Spare space at VDP 0xD000-0xE000
VRAMPool2:
	dc.w 	0xD000
	dc.w 	0xE000
	dc.w 	(0xE000-0xD000)
	dc.w 	0x0000
	dc.w 	0x0000

; Main pool
VRAMPool1:
	dc.w 	vram_addr_tiles
	dc.w 	vram_addr_tiles+(vdp_max_tiles*size_tile_b)
	dc.w 	(vdp_max_tiles*size_tile_b)
	dc.w 	0x0000
	dc.w 	0x0000

	rsset 0
VRAMPool_Start			rs.w 1
VRAMPool_End			rs.w 1
VRAMPool_Size			rs.w 1
VRAMPool_Allocated		rs.w 1
VRAMPool_Free			rs.w 1
;-----------------------------
VRAMPool_Struct_Size	rs.b 0

VRAM_InitPools:

	lea VRAMDefaultPools, a0
	lea vram_pools, a1
	move.w  #(VRAMPool_Struct_Size*VRAMPoolCount)/size_word, d0
	MEMCPYW a1, a0, d0

	; Init pool counters
	jsr VRAM_ClearPools

	rts

VRAM_ClearPools:

	; Clear all allocated
	move.l #vram_pools, a0
	move.w #VRAMPoolCount-1, d0
	@ClearLp:
	move.w #0x0, VRAMPool_Allocated(a0)
	move.w VRAMPool_Size(a0), VRAMPool_Free(a0)
	add.l  #VRAMPool_Struct_Size, a0
	dbra   d0, @ClearLp

	rts

VRAM_PoolAlloc:
	; d0 (w) IN:  Size (bytes)
	;    (l) OUT: VRAM address

	; Iterate all pools from small to large
	lea vram_pools, a2
	move.w #VRAMPoolCount-1, d1

	@PoolLp:

	; Check free bytes
	move.w VRAMPool_Free(a2), d2
	cmp.w  d0, d2
	bcs    @NextPool

	; Found free space, calc address
	move.w VRAMPool_Allocated(a2), d2
	add.w  VRAMPool_Start(a2), d2

	; Update counters
	add.w  d0, VRAMPool_Allocated(a2)
	sub.w  d0, VRAMPool_Free(a2)

	; Success
	move.w d2, d0
	bra    @Success

	@NextPool:
	add.l  #VRAMPool_Struct_Size, a2
	dbra   d1, @PoolLp

	@Failure:
	lea    str_error_out_of_vram, a0
	jsr    DBG_DisplayError

	@Success:

	rts
