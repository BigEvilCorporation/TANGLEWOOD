;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   thunder.asm - Thunder and lightning - harmless (far) and harmful (near)
;===============================================================

LIGHTNING_DEBUG	equ 0

Thunder_FlashPalette		equ palette_fade_white
Thunder_FlashFrames			equ 0x10
Thunder_FlashFadeBackSpeed	equ 0x0060
Thunder_FadeTicksPerUpdate	equ 0x3
Thunder_DefaultInterval		equ 0x0100
Thunder_DefaultDistance		equ 0x0F
Thunder_HarmfulDistance		equ 0x03
Thunder_BoltToFlashTime		equ 0x0008
Thunder_Damage				equ 0xFF

	rsset 0
Thunder_StrikeTimer		rs.w 1
Thunder_SoundTimer		rs.w 1
Thunder_FlashTimer		rs.w 1
Thunder_BoltTimer		rs.w 1
Thunder_Interval		rs.w 1	; Delay between lightning claps
Thunder_StrikePointX	rs.w 1	; X coord to strike
Thunder_StrikePointY	rs.w 1	; Y coord to strike (if 0, strike player)
Thunder_Distance		rs.b 1	; Lightning distance (0x0 - 0xF)
Thunder_BoltActive		rs.b 1
Thunder_PlayerTarget	rs.b 1
Thunder_Enabled			rs.b 1
;-----------------------------
	RS_ALIGN
Thunder_Struct_Size		rs.b 0

ThunderReset:

	lea    Thunder, a2
	move.w #0x0, Thunder_StrikeTimer(a2)
	move.w #0x0, Thunder_SoundTimer(a2)
	move.w #0x0, Thunder_FlashTimer(a2)
	move.w #0x0, Thunder_BoltTimer(a2)
	move.w #0x0, Thunder_Interval(a2)
	move.w #0x0, Thunder_StrikePointX(a2)
	move.w #0x0, Thunder_StrikePointY(a2)
	move.b #0x0, Thunder_Distance(a2)
	move.b #0x0, Thunder_BoltActive(a2)
	move.b #0x0, Thunder_PlayerTarget(a2)
	move.b #0x0, Thunder_Enabled(a2)
	
	rts

ThunderInit:
	; a1 --- Level addr

	; Base init, load sprite sheet
	lea    EntityArray_VFX+(VfxId_LightningBolt*VfxObj_Struct_Size), a0
	lea    vfx_spritesheet_bolt_flash, a2
	lea    vfx_animation_bolt_flash, a3
	jsr    VfxInit

	lea    Thunder, a2
	MOVE_NTSC_W Thunder_DefaultInterval, Thunder_StrikeTimer(a2), d0
	move.w #0x0, Thunder_FlashTimer(a2)
	move.w #0x0, Thunder_BoltTimer(a2)
	MOVE_NTSC_W Thunder_DefaultInterval, Thunder_Interval(a2), d0
	move.w #0x0, Thunder_StrikePointY(a2)
	move.b #Thunder_DefaultDistance, Thunder_Distance(a2)
	move.b #0x0, Thunder_BoltActive(a2)
	move.b #0x0, Thunder_PlayerTarget(a2)
	move.b #0x0, Thunder_Enabled(a2)

	rts

ThunderSetParams:
	; a1 --- Level addr
	; d0 (w) Strike interval
	; d1 (b) Distance

	lea Thunder, a2
	move.w d0, Thunder_Interval(a2)
	move.w d0, Thunder_StrikeTimer(a2)
	move.b d1, Thunder_Distance(a2)
	move.b #0x1, Thunder_Enabled(a2)

	rts

ThunderStrike:
	; a1 --- Level addr

	lea    Thunder, a2

	; Reset hit player
	move.b #0x0, Thunder_PlayerTarget(a2)

	; If harmful to player
	cmp.b  #Thunder_HarmfulDistance, Thunder_Distance(a2)
	bgt    @UseRandX

	; Strike at player X offset
	move.l (Player1), a3
	ENTITY_GETCENTREX d0, a3
	TOPIXELS d0
	move.w d0, Thunder_StrikePointX(a2)

	; Search for strike point up to player Y pos
	move.w Entity_WorldPosY(a3), d0

	; Find strike point
	jsr    ThunderFindTerrain

	; If target pos found, lethal strike to player
	move.b d3, Thunder_PlayerTarget(a2)

	bra    @UsePlayerX

	@UseRandX:

	; Randomise X offset
	move.w WorldScrollX, d1
	move.w WorldScrollX, d2
	addi.w #vdp_sprite_border_x, d1
	addi.w #vdp_sprite_border_x+(screen_width-actor_bolt_sheet_flash_width), d2
	jsr    RND_GenerateWordClamped
	move.w d0, Thunder_StrikePointX(a2)

	; Search for strike point up to screen bottom
	move.w WorldScrollY, d0
	addi.w #vdp_sprite_border_y+screen_height, d0

	; Find strike point
	jsr    ThunderFindTerrain

	@UsePlayerX:

	; Start lightning bolt VFX
	lea    EntityArray_VFX+(VfxId_LightningBolt*VfxObj_Struct_Size), a0
	move.w Thunder_StrikePointX(a2), d0
	move.w WorldScrollY, d1
	addi.w #vdp_sprite_border_y, d1
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	PUSHL  a2
	jsr    VfxPlay
	POPL   a2

	move.b #0x1, Thunder_BoltActive(a2)

	; Reset interval timer
	move.w Thunder_Interval(a2), Thunder_StrikeTimer(a2)

	; Reset bolt timer
	MOVE_NTSC_W Thunder_BoltToFlashTime, Thunder_BoltTimer(a2), d0

	; Start sound timer
	clr.w  d0
	move.b Thunder_Distance(a2), d0
	lsl.w  #0x3, d0
	move.w d0, Thunder_SoundTimer(a2)
	tst.w  d0
	bne    @NoInstantSFX
	jsr    ThunderSound
	@NoInstantSFX:

	rts

ThunderFlash:
	; a1 --- Level addr

	; Reset flash timer
	move.w #Thunder_FlashFrames, Thunder_FlashTimer(a2)

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
	; a1 --- Level addr
	; d0 (w) Distance

	cmp.b  #Thunder_HarmfulDistance, Thunder_Distance(a2)
	bgt    @Far

	PLAYSFX #SFX_Thunder_Near
	bra    @End

	@Far:

	PLAYSFX #SFX_Thunder_Far

	@End:

	rts

ThunderFindTerrain:
	; a1 --- Level addr
	; a2 --- Thunder addr
	; d0 (w) Search end pos Y
	; d3 (b) OUT: Reached target pos

	; Loop from one screen up to player Y pos, in heightmap_max_search_tiles steps
	move.w Thunder_StrikePointX(a2), d1
	subi.w #vdp_sprite_border_x, d1			; To screen space
	swap   d1
	move.w WorldScrollY, d1
	subi.w #screen_height, d1

	; Clamp to map top
	tst.w  d1
	bgt    @WithinYBounds
	move.w #0x0, d1
	@WithinYBounds:

	; Translate probe position to collision map space
	move.w Level_ColMapTop(a1), d6
	TILES2PIXELS d6
	sub.w  d6, d0
	sub.w  d6, d1
	swap   d1

	move.w Level_ColMapLeft(a1), d5
	TILES2PIXELS d5
	sub.w  d5, d1
	swap   d1
	
	PUSHL  a2

	; End pos
	move.w d0, d2
	subi.w #vdp_sprite_border_y, d2

	; Clear result
	clr.w  d0

	; Clear found target pos
	clr.b  d3

	@TerrainLp:

	; If reached end Y pos, bail
	cmp.w  d1, d2
	blt    @UseEndPos

	; Find terrain
	PUSHM  d1-d6/a0-a1
	move.w Level_ColMapWidthBlocks(a1), d2		; Map width (in blocks) to d2 hi
	swap   d2
	move.w Level_ColMapHeightBlocks(a1), d2	; Map height (in blocks) to d2 lo
	move.l Level_ColMapBlocksAddr(a1), a0	; Collision blocks to a0
	move.l Level_ColMapBlockMapAddr(a1), a2	; Collision block map to a2
	move.l Level_ColMapBlockYLookupAddr(a1), a5	; Collision block map Y offset lookup
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr    PHYS_GetTerrainHeight
	POPM   d1-d6/a0-a1

	tst.w  d0
	bne    @Found

	@NotFound:

	; Not found, increment Y pos and try again
	addi.w #heightmap_max_search_tiles*8, d1
	bra    @TerrainLp
	
	@UseEndPos:
	move.w d2, d0
	move.b #0x1, d3

	@Found:
	
	POPL   a2

	; Set result
	add.w  d6, d0							; Back to map space
	addi.w #vdp_sprite_border_y, d0			; Back to sprite space
	move.w d0, Thunder_StrikePointY(a2)

	rts

ThunderUpdate:
	; a1 --- Level addr

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

	; Decrement audio timer
	move.w Thunder_SoundTimer(a2), d0
	beq    @NoSound
	subq.w #0x1, d0
	move.w d0, Thunder_SoundTimer(a2)
	tst.w  d0
	bne    @SoundTimerRunning

	; Timer elapsed, play sound
	jsr    ThunderSound

	@NoSound:
	@SoundTimerRunning:

	;===============================================================

	; Decrement flash timer
	move.w Thunder_FlashTimer(a2), d0
	beq    @NoFlash
	subq.w #0x1, d0
	move.w d0, Thunder_FlashTimer(a2)
	tst.w  d0
	bne    @FlashTimerRunning

	; Timer elapsed, fade back to scene palettes
	PUSHL  a0
	
	PUSHL  a2
	lea    ScenePalettes+(size_palette_b*PaletteId_World0), a0
	move.b #PaletteId_World0, d0
	move.w #Thunder_FlashFadeBackSpeed, d1
	move.b #Thunder_FadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    GameTempPaletteFadeTo
	POPL   a2

	PUSHL  a2
	lea    ScenePalettes+(size_palette_b*PaletteId_Monster), a0
	move.b #PaletteId_Monster, d0
	move.w #Thunder_FlashFadeBackSpeed, d1
	move.b #Thunder_FadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    GameTempPaletteFadeTo
	POPL   a2

	PUSHL  a2
	lea    ScenePalettes+(size_palette_b*PaletteId_Fuzzl), a0
	move.b #PaletteId_Fuzzl, d0
	move.w #Thunder_FlashFadeBackSpeed, d1
	move.b #Thunder_FadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    GameTempPaletteFadeTo
	POPL   a2

	PUSHL  a2
	lea    ScenePalettes+(size_palette_b*PaletteId_Player), a0
	move.b #PaletteId_Player, d0
	move.w #Thunder_FlashFadeBackSpeed, d1
	move.b #Thunder_FadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    GameTempPaletteFadeTo
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

	; If hit target Y pos, stop
	move.w Entity_WorldPosY(a0), d1
	add.w  SpriteObj_DrawOffsetY(a0), d1
	move.w Thunder_StrikePointY(a2), d2
	cmp.w  d1, d2
	bgt    @NotHitTarget

	; Target hit, disable bolt
	move.b #0x0, Thunder_BoltActive(a2)
	jsr    VfxStop

	; If harmful to player, and player is target, deal damage
	tst.b  Thunder_PlayerTarget(a2)
	beq    @NotHitPlayer

	PUSHL  a0
	move.l (Player1), a0
	move.b #Thunder_Damage, d0
	jsr    CharacterDealDamage
	POPL   a0

	@NotHitPlayer:

	bra    @BoltInactive

	@NotHitTarget:

	; If VFX finished playing, nudge it down the screen and play again
	tst.b  AnimObj_Playing(a0)
	bne    @BoltPlaying

	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #actor_bolt_sheet_flash_height*actor_bolt_sheet_flash_anim_flash_numframes*subpixels_per_pixel, d1
	PUSHL  a2
	jsr    VfxPlay
	POPL   a2

	@BoltPlaying:
	@BoltInactive:

	;===============================================================

	IF LIGHTNING_DEBUG

	PUSHL  a0
	move.l (EntityPoolStart_Fuzzl), a0
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	PUSHM  d0-d1
	move.w Thunder_StrikePointX(a2), d0
	move.w Thunder_StrikePointY(a2), d1
	bne    @DebugUseTerrainPos
	move.l (Player1), a3
	move.w Entity_WorldPosY(a3), d1
	@DebugUseTerrainPos:
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	jsr    SpriteObjDraw
	POPM   d0-d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	POPL   a0

	ENDIF

	;===============================================================

	@Disabled:

	rts