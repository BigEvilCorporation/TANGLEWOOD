;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2017
;==============================================================
;   rampool.asm - RAM pools and allocation routines
;==============================================================

; Define a RAM pool via RS
RAMPOOL: macro name,size
RAMPool_\name		rs.b (RAMPool_HeaderSize+\size)
	endm

; Init pool
RAMPOOL_INIT: macro name,size
	PUSHL  a0
	lea    RAMPool_\name, a0
	move.l #\size, d0
	jsr    RAM_PoolInit
	POPL   a0
	endm

; Alloc memory
; a1 --- OUT: Allocated ptr
RAMPOOL_ALLOC: macro name,size
	PUSHL  a0
	lea    RAMPool_\name, a0
	move.l \size, d0
	jsr    RAM_PoolAlloc
	POPL   a0
	endm

; Clear pool
RAMPOOL_CLEAR: macro name
	PUSHL  a0
	lea    RAMPool_\name, a0
	jsr    RAM_PoolClear
	POPL   a0
	endm

;==============================================================

	rsset 0
RAMPool_MemStartAddr	rs.l 1
RAMPool_Size			rs.l 1
RAMPool_Allocd			rs.l 1
;-----------------------------
RAMPool_HeaderSize		rs.b 0

;==============================================================

RAM_PoolInit:
	; a0 --- Pool
	; d0 (w) Pool size

	andi.l #0xFFFF, d0

	; Set size
	move.l d0, RAMPool_Size(a0)

	; Calc start address
	move.l a0, a2
	addi.l #RAMPool_HeaderSize, a2
	move.l a2, RAMPool_MemStartAddr(a0)

	; Clear memory
	jsr    RAM_PoolClear

	rts

RAM_PoolClear:
	; a0 --- Pool

	; Clear memory
	move.l RAMPool_MemStartAddr(a0), a2
	move.l RAMPool_Size(a0), d0
	MEMZEROB a2,d0

	; Clear allocd
	move.l #0x0, RAMPool_Allocd(a0)

	rts

RAM_PoolAlloc:
	; a0 --- Pool
	; a1 --- OUT: Allocated ptr
	; d0 (l) Size

	; Check free
	move.l d0, d1
	jsr    RAM_PoolGetFree
	cmp.l  d0, d1
	blt    @EnoughFreeSpace
	RAISE_EXCEPTION error_out_of_ram
	@EnoughFreeSpace:

	; Get free ptr
	move.l RAMPool_MemStartAddr(a0), a1
	add.l  RAMPool_Allocd(a0), a1

	; Add to allocd size
	add.l  d1, RAMPool_Allocd(a0)

	rts

RAM_PoolGetFree:
	; a0 --- Pool
	; d0 (l) OUT: Free bytes

	move.l RAMPool_Size(a0), d0
	sub.l  RAMPool_Allocd(a0), d0

	rts