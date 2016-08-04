;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   text.asm - Font loading and text display
;==============================================================

TXT_LoadFont:
   ; a0 - Font address (l)
   ; d0 - VRAM address (w)
   ; d1 - Num chars (w)

   swap     d0                   ; Shift VRAM addr to upper word
   add.l    #vdp_write_tiles, d0 ; VRAM write cmd + VRAM destination address
   move.l   d0, vdp_control      ; Send address to VDP cmd port

   subq.b   #0x1, d1             ; Num chars - 1
   @CharCopy:
   move.w   #0x07, d2            ; 8 longwords in tile
   @LongCopy:
   move.l   (a0)+, vdp_data      ; Copy one line of tile to VDP data port
   dbra.w   d2, @LongCopy
   dbra.w   d1, @CharCopy

   rts

TXT_DrawPlane:
	; a0 (l) - String address
	; d0 (w) - First tile ID of font
	; d1 (bb)- XY coord (in tiles)
	; d2 (b) - Palette
	; d3 (b) - Plane (0=A, 1=B)

	clr.l    d4                     ; Clear d4 ready to work with
	move.b   d1, d4                 ; Move Y coord (lower byte of d1) to d4
	mulu.w   #vdp_plane_width, d4   ; Multiply Y by line width (H40 mode - 64 tiles horizontally) to get Y offset
	ror.l    #0x8, d1               ; Shift X coord from upper to lower byte of d1
	add.b    d1, d4                 ; Add X coord to offset
	mulu.w   #0x2, d4               ; Convert to words

	cmp.b   #0x0, d3
	bne     @PlaneB
	add.l   #vram_addr_plane_a, d4	; Add VRAM address offset
	bra     @EndSelectPlane
	@PlaneB:
	add.l   #vram_addr_plane_b, d4	; Add VRAM address offset
	@EndSelectPlane:

	rol.l   #0x2, d4				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d4				; Shift lower word back
	swap    d4                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d4 ; OR in VRAM write command
	move.l  d4, vdp_control        	; Move dest address to VDP control port

	clr.l    d4                     ; Clear d4 ready to work with again
	move.b   d2, d4                 ; Move palette ID (lower byte of d2) to d4
	rol.l    #0x8, d4               ; Shift palette ID to bits 14 and 15 of d4
	rol.l    #0x5, d4               ; Can only rol bits up to 8 places in one instruction

	lea      ASCIIMap, a1           ; Load address of ASCII map into a1
	clr.w    d2

	@CharCopy:
	move.b   (a0)+, d2              ; Move ASCII byte to lower byte of d2
	cmp.b    #0x0, d2               ; Test if byte is zero (string terminator)
	beq      @End                   ; If byte was zero, branch to end

	sub.b    #ASCIIStart, d2        ; Subtract first ASCII code to get table entry index
	move.b   (a1,d2.w), d4          ; Move tile ID from table (index in lower word of d2) to lower byte of d4
	add.w    d0, d4                 ; Offset tile ID by first tile ID in font
	move.w   d4, vdp_data           ; Move palette and pattern IDs to VDP data port
	jmp      @CharCopy              ; Next character

	@End:
	rts

TXT_ItoA_Hex_w:
	; Converts a word to hex ASCII
	; a0 --- In: String address
	; d0 (w) In: Number to convert

	; 4 nybbles + 0x + terminator, working backwards
	add.l  #0x7, a0

	; Zero terminate
	move.b #0x0, -(a0)

	move.w #0x0, d1	; Char ptr
	move.w #0x3, d2	; 4 nybbles in a word
	@NybbleLp:
	move.b d0, d3			; Byte to d3
	andi.b #0x0F, d3		; Bottom nybble
	cmp.b  #0x9, d3
	ble    @Numeric			; Branch if in numeric range
	add.b  #(ASCIIAlphaOffset-0xA), d3	; In alpha range (A - F)
	move.b d3, -(a0)		; Back to string
	lsr.w  #0x4, d0			; Next nybble
	dbra   d2, @NybbleLp	; Loop
	bra    @End
	@Numeric:
	add.b  #ASCIINumericOffset, d3	; In numeric range (0 - 9)
	move.b d3, -(a0)		; Back to string
	lsr.w  #0x4, d0			; Next nybble
	dbra   d2, @NybbleLp	; Loop

	@End:

	;0X
	move.b #'X', -(a0)
	move.b #'0', -(a0)

	rts

TXT_ItoA_Hex_l:
	; Converts a longword to hex ASCII
	; a0 --- In: String address
	; d0 (l) In: Number to convert

	; 8 nybbles + 0x + terminator, working backwards
	add.l  #0xB, a0

	; Zero terminate
	move.b #0x0, -(a0)

	move.w #0x0, d1	; Char ptr
	move.w #0x7, d2	; 8 nybbles in a longword
	@NybbleLp:
	move.b d0, d3			; Byte to d3
	andi.b #0x0F, d3		; Bottom nybble
	cmp.b  #0x9, d3
	ble    @Numeric			; Branch if in numeric range
	add.b  #(ASCIIAlphaOffset-0xA), d3	; In alpha range (A - F)
	move.b d3, -(a0)		; Back to string
	lsr.l  #0x4, d0			; Next nybble
	dbra   d2, @NybbleLp	; Loop
	bra    @End
	@Numeric:
	add.b  #ASCIINumericOffset, d3	; In numeric range (0 - 9)
	move.b d3, -(a0)		; Back to string
	lsr.l  #0x4, d0			; Next nybble
	dbra   d2, @NybbleLp	; Loop

	@End:

	;0X
	move.b #'X', -(a0)
	move.b #'0', -(a0)

	rts
