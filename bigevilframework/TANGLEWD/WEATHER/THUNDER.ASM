;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   thunder.asm - Thunder and lightning - harmless (far) and harmful (near)
;===============================================================

Thunder_FlashPalette		equ palette_fade_white
Thunder_FlashFrames			equ 0x10
Thunder_FlashFadeBackSpeed	equ 0x0020
Thunder_FadeTicksPerUpdate	equ 0x6
Thunder_DefaultInterval		equ 0x0100
Thunder_DefaultDistance		equ 0x0100
Thunder_HarmfulDistance		equ 0x0030

	rsset 0
Thunder_PaletteBackup	rs.b (size_palette_b*num_palettes)
Thunder_StrikeTimer		rs.w 1
Thunder_FlashTimer		rs.w 1
Thunder_Interval		rs.w 1
Thunder_Distance		rs.w 1
Thunder_Enabled			rs.b 1
;-----------------------------
Thunder_Struct_Pad		rs.b 3
Thunder_Struct_Size		rs.b 0

ThunderInit:

	lea Thunder, a2
	move.w #Thunder_DefaultInterval, Thunder_StrikeTimer(a2)
	move.w #0x0, Thunder_FlashTimer(a2)
	move.w #Thunder_DefaultInterval, Thunder_Interval(a2)
	move.w #Thunder_DefaultDistance, Thunder_Distance(a2)
	move.b #0x0, Thunder_Enabled(a2)

	rts

ThunderSetParams:
	; d0 (w) Strike interval
	; d1 (w) Distance

	lea Thunder, a2
	move.w d0, Thunder_Interval(a2)
	move.w d1, Thunder_Distance(a2)
	move.b #0x1, Thunder_Enabled(a2)

	rts

ThunderStrike:

	lea Thunder, a2

	; Reset interval timer
	move.w Thunder_Interval(a2), Thunder_StrikeTimer(a2)

	; Reset flash timer
	move.w #Thunder_FlashFrames, Thunder_FlashTimer(a2)

	; Backup current palettes
	lea    Thunder_PaletteBackup+(size_palette_b*PaletteId_World0)(a2), a3
	lea    CurrentPalettes+(size_palette_b*PaletteId_World0), a4
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a3, a4, d0

	lea    Thunder_PaletteBackup+(size_palette_b*PaletteId_Monster)(a2), a3
	lea    CurrentPalettes+(size_palette_b*PaletteId_Monster), a4
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a3, a4, d0

	lea    Thunder_PaletteBackup+(size_palette_b*PaletteId_Fuzzl)(a2), a3
	lea    CurrentPalettes+(size_palette_b*PaletteId_Fuzzl), a4
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a3, a4, d0

	lea    Thunder_PaletteBackup+(size_palette_b*PaletteId_Player)(a2), a3
	lea    CurrentPalettes+(size_palette_b*PaletteId_Player), a4
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a3, a4, d0

	; Copy flash palette
	lea    CurrentPalettes+(size_palette_b*PaletteId_World0), a3
	lea    Thunder_FlashPalette, a4
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a3, a4, d0

	lea    CurrentPalettes+(size_palette_b*PaletteId_Monster), a3
	lea    Thunder_FlashPalette, a4
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a3, a4, d0

	lea    CurrentPalettes+(size_palette_b*PaletteId_Fuzzl), a3
	lea    Thunder_FlashPalette, a4
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a3, a4, d0

	lea    CurrentPalettes+(size_palette_b*PaletteId_Player), a3
	lea    Thunder_FlashPalette, a4
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a3, a4, d0

	; Mark all palettes dirty
	move.b #0xF, DirtyPalettesMask
	move.b #0xF, UnderwaterDirtyPalettesMask

	rts

ThunderSound:
	; d0 (w) Distance

	rts

ThunderUpdate:

	lea Thunder, a2

	tst.b Thunder_Enabled(a2)
	beq   @Disabled

	; Decrement interval timer
	move.w Thunder_StrikeTimer(a2), d0
	subq.w #0x1, d0
	move.w d0, Thunder_StrikeTimer(a2)
	tst.w  d0
	bne    @StrikeTimerRunning

	; Timer elapsed, strike
	jsr    ThunderStrike

	@StrikeTimerRunning:

	; Decrement flash timer
	move.w Thunder_FlashTimer(a2), d0
	tst.w  d0
	beq    @NoFlash
	subq.w #0x1, d0
	move.w d0, Thunder_FlashTimer(a2)
	tst.w  d0
	bne    @FlashTimerRunning

	; Timer elapsed, fade back to original palettes
	PUSHL  a0
	
	PUSHL  a2
	lea    Thunder_PaletteBackup+(size_palette_b*PaletteId_World0)(a2), a0
	move.b #PaletteId_World0, d0
	move.w #Thunder_FlashFadeBackSpeed, d1
	move.b #Thunder_FadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    PAL_LerpStart
	POPL   a2

	PUSHL  a2
	lea    Thunder_PaletteBackup+(size_palette_b*PaletteId_Monster)(a2), a0
	move.b #PaletteId_Monster, d0
	move.w #Thunder_FlashFadeBackSpeed, d1
	move.b #Thunder_FadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    PAL_LerpStart
	POPL   a2

	PUSHL  a2
	lea    Thunder_PaletteBackup+(size_palette_b*PaletteId_Fuzzl)(a2), a0
	move.b #PaletteId_Fuzzl, d0
	move.w #Thunder_FlashFadeBackSpeed, d1
	move.b #Thunder_FadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    PAL_LerpStart
	POPL   a2

	PUSHL  a2
	lea    Thunder_PaletteBackup+(size_palette_b*PaletteId_Player)(a2), a0
	move.b #PaletteId_Player, d0
	move.w #Thunder_FlashFadeBackSpeed, d1
	move.b #Thunder_FadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    PAL_LerpStart
	POPL   a2

	POPL   a0

	@NoFlash:
	@FlashTimerRunning:

	@Disabled:

	rts