;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   mainmenu.asm - Main Menu state
;==============================================================

; Level data (menu contains game objects, so need to provide one)
Lvl0_MainMenu:

	dc.l tiles_twd_logo					; Tileset
	dc.l map_blocks_twd_logo			; Blocks
	dc.l map_blockmap_twd_logo			; Block map
	dc.l 0x0							; Collision tileset
	dc.l 0x0							; Collision blocks
	dc.l 0x0							; Collision block map
	dc.l 0x0							; Palettes
	dc.l 0x0							; Init routine
	dc.l 0x0							; Update routine
	dc.l 0x0							; Serialise routine
	dc.l 0x0							; Load game objects routine
	dc.l 0x0							; Next level
	dc.w 0x0							; Default gravity
	dc.w map_twd_logo_width				; Map width (tiles)
	dc.w map_twd_logo_height			; Map height (tiles)
	dc.w map_blockmap_twd_logo_width	; Map width (blocks)
	dc.w map_blockmap_twd_logo_height	; Map height (blocks)
	dc.w tiles_twd_logo_size_t			; Num tiles
	
	even

; Constants
MainMenuFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)

; Struct
	rsset	0x0
;---------------------------------
MainMenuState_NextState		rs.l 1
;---------------------------------
MainMenuState_Struct_Pad	rs.b 0
MainMenuState_Struct_Size	rs.b 0
;---------------------------------

GameStateMainMenu:
	dc.l MainMenu_Enter
	dc.l MainMenu_Exit
	dc.l MainMenu_Update
	dc.l MainMenu_Render
	dc.l 0x0
	
MainMenu_Enter:

	; Clear all palettes
	jsr    PAL_ClearAll

	; Clear planes
	jsr    VDP_ClearMapPlaneA
	jsr    VDP_ClearMapPlaneB

	; Clear VRAM pools
	jsr    VRAM_ClearPools
	
	; Set BG colour
	move.w #(PaletteId_TanglewoodLogo<<4), d0
	VDPSETREG 7, d0

	; Alloc VRAM
	move.w #tiles_twd_logo_size_b, d0
	jsr    VRAM_PoolAlloc
	move.w d0, vram_addr_leveltiles
	
	; Load tiles
	clr.l d1
	lea    tiles_twd_logo, a0
	move.w #tiles_twd_logo_size_t, d1
	move.w (vram_addr_leveltiles), d0
	jsr    VDP_LoadTiles
	
	; Load map
	lea    map_blocks_twd_logo, a0
	lea    map_blockmap_twd_logo, a1
	move.l #(map_blockmap_twd_logo_width<<16)|map_blockmap_twd_logo_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_TanglewoodLogo, d3
	jsr    VDP_LoadBlockMapPlaneA

	; Set empty level (for game object processing)
	move.l #Lvl0_MainMenu, CurrentLevel
	move.l (CurrentLevel), a1

	; Load objects
	jsr    twd_logo_LoadGameObjects

	; Disable Nymn physics (no terrain data)
	move.l #Player1, a0
	move.b #0x0, PhysicsObj_HasPhysics(a0)
	
	; Start sleep anim
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Sleep*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	; Begin fade up
	lea    palette_twd_logo, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    Pal_Nymn_Red, a0
	move.l #PaletteId_Player, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade
	
	rts
	
MainMenu_Exit:
	
	move.l #0x0, CurrentLevel

	rts
	
MainMenu_Update:

	; Get menu data
	lea    GameStateMainMenuData, a2
	
	; Wait for fade to finish
	lea    PaletteLerp_Array, a0
	move.w PaletteLerp_UpdateSpeed(a0), d0
	cmp.w  #0x0, d0
	bne    @Fading
	
	; If already started fade to black
	cmp.l  #0x0, TimerLogoFade
	beq    @FadedOut
	
	; Read pad
	jsr    PAD_ReadPadA
	
	; Check start button
	move.l #GameStateDemoDisclaimerScreen, MainMenuState_NextState(a2)
	btst   #pad_button_start, d0
	bne    @StartGame
	
	; Check C button
	move.l #GameStateSoundTest, MainMenuState_NextState(a2)
	btst   #pad_button_c, d0
	bne    @StartSoundTest
	
	bra    @End
	
	@StartGame:
	@StartSoundTest:

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart
	
	; Mark fading out
	move.l #0x0, TimerLogoFade
	
	; Fade out music
	jsr    SND_BeginFadeTrack
	bra    @End
	
	@FadedOut:
	
	; Enter next state
	move.l MainMenuState_NextState(a2), a0
	jsr    GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	rts
	
MainMenu_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts
	