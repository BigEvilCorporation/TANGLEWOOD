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
Thunder_DefaultDistance		equ 0x0F
Thunder_HarmfulDistance		equ 0x0030
Thunder_BoltToFlashTime		equ 0x0008

	rsset 0
Thunder_PaletteBackup	rs.b (size_palette_b*num_palettes)
Thunder_StrikeTimer		rs.w 1
Thunder_SoundTimer		rs.w 1
Thunder_FlashTimer		rs.w 1
Thunder_BoltTimer		rs.w 1
Thunder_Interval		rs.w 1	; Delay between lightning claps
Thunder_Distance		rs.b 1	; Lightning distance (0x0 - 0xF)
Thunder_BoltActive		rs.b 1
Thunder_Enabled			rs.b 1
;-----------------------------
Thunder_Struct_Pad		rs.b 1
Thunder_Struct_Size		rs.b 0

ThunderInit:
	; a1 --- Level addr

	; Base init, load sprite sheet
	lea    EntityArray_VFX+(VfxId_LightningBolt*VfxObj_Struct_Size), a0
	lea    vfx_spritesheet_bolt_flash, a2
	lea    vfx_animation_bolt_flash, a3
	jsr    VfxInit

	lea    Thunder, a2
	move.w #Thunder_DefaultInterval, Thunder_StrikeTimer(a2)
	move.w #0x0, Thunder_FlashTimer(a2)
	move.w #0x0, Thunder_BoltTimer(a2)
	move.w #Thunder_DefaultInterval, Thunder_Interval(a2)
	move.b #Thunder_DefaultDistance, Thunder_Distance(a2)
	move.b #0x0, Thunder_BoltActive(a2)
	move.b #0x0, Thunder_Enabled(a2)

	rts

ThunderSetParams:
	; d0 (w) Strike interval
	; d1 (b) Distance

	lea Thunder, a2
	move.w d0, Thunder_Interval(a2)
	move.b d1, Thunder_Distance(a2)
	move.b #0x1, Thunder_Enabled(a2)

	rts

ThunderStrike:

	; Randomise X offset
	move.w #0x0, d1
	move.w #screen_width-spritesheet_bolt_flash_width, d2
	jsr    RND_GenerateWordClamped

	; Start lightning bolt VFX
	lea    EntityArray_VFX+(VfxId_LightningBolt*VfxObj_Struct_Size), a0
	add.w  WorldScrollX, d0
	move.w WorldScrollY, d1
	addi.w #vdp_sprite_border_x, d0
	addi.w #vdp_sprite_border_y, d1
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	PUSHL  a2
	jsr    VfxPlay
	POPL   a2

	lea    Thunder, a2
	move.b #0x1, Thunder_BoltActive(a2)

	; Reset interval timer
	move.w Thunder_Interval(a2), Thunder_StrikeTimer(a2)

	; Reset bolt timer
	move.w #Thunder_BoltToFlashTime, Thunder_BoltTimer(a2)

	rts

ThunderFlash:

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

	; Brighten palettes
	PUSHL  a2
	lea    CurrentPalettes+(size_palette_b*PaletteId_World0), a0
	move.l a0, a1
	move.b #0xF, d0
	sub.b  Thunder_Distance(a2), d0
	jsr    VFX_BrightenPalette
	POPL   a2

	PUSHL  a2
	lea    CurrentPalettes+(size_palette_b*PaletteId_Monster), a0
	move.l a0, a1
	move.b #0xF, d0
	sub.b  Thunder_Distance(a2), d0
	jsr    VFX_BrightenPalette
	POPL   a2

	PUSHL  a2
	lea    CurrentPalettes+(size_palette_b*PaletteId_Fuzzl), a0
	move.l a0, a1
	move.b #0xF, d0
	sub.b  Thunder_Distance(a2), d0
	jsr    VFX_BrightenPalette
	POPL   a2

	PUSHL  a2
	lea    CurrentPalettes+(size_palette_b*PaletteId_Player), a0
	move.l a0, a1
	move.b #0xF, d0
	sub.b  Thunder_Distance(a2), d0
	jsr    VFX_BrightenPalette
	POPL   a2

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

	;===============================================================

	; Decrement bolt timer
	move.w Thunder_BoltTimer(a2), d0
	subq.w #0x1, d0
	move.w d0, Thunder_BoltTimer(a2)
	tst.w  d0
	bne    @BoltTimerRunning

	; Timer elapsed, flash
	jsr    ThunderFlash

	@BoltTimerRunning:

	;===============================================================

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

	;===============================================================

	; If bolt active
	tst.b  Thunder_BoltActive(a2)
	beq    @BoltInactive

	; Get VFX
	lea    EntityArray_VFX+(VfxId_LightningBolt*VfxObj_Struct_Size), a0

	; If off screen, stop
	move.w Entity_WorldPosY(a0), d1
	sub.w  WorldScrollY, d1
	subi.w #vdp_sprite_border_y, d1
	cmp.w  #screen_height, d1
	blt    @OnScreen

	move.b #0x0, Thunder_BoltActive(a2)
	jsr    VfxStop
	bra    @BoltInactive

	@OnScreen:

	; If finished, nudge it down the screen and play again after each cycle
	tst.b  AnimObj_Playing(a0)
	bne    @BoltPlaying

	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #spritesheet_bolt_flash_height*spriteanim_bolt_flash_numframes*subpixels_per_pixel, d1
	jsr    VfxPlay

	@BoltPlaying:
	@BoltInactive:

	;===============================================================

	@Disabled:

	rts