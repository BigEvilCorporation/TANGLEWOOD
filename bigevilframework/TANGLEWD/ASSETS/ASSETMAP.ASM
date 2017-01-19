;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

    ; ************************************
    ; Palettes
    ; ************************************
	include 'assets\palettes\bec_logo.asm'
	include 'assets\palettes\ks_logo.asm'
	include 'assets\palettes\controls.asm'
	include 'assets\palettes\disclmr.asm'
	include 'assets\palettes\demoend.asm'
	include 'assets\palettes\fuzzl.asm'
	include 'assets\palettes\soundtst.asm'
	include 'assets\palettes\twd_logo.asm'
	include 'assets\palettes\pal_fade.asm'
	include 'assets\palettes\pal_nymn.asm'
	include 'assets\palettes\pal_lvl1.asm'
	include 'assets\palettes\pal_nest.asm'
	include 'assets\palettes\pal_takk.asm'
	include 'assets\palettes\djrake.asm'

	include 'assets\palettes\l1.asm'

	IFD DEBUG
	include 'assets\palettes\pal_tst1.asm'
	ENDIF
	IFND FINAL
	include 'assets\palettes\tst_lift.asm'
	ENDIF
	
	; ************************************
    ; Font tiles
    ; ************************************
	include 'assets\fonts\pixelfnt.asm'
	
	; ************************************
    ; Sprite tiles
    ; ************************************
	IFND DEBUG
	include 'assets\sprites\boulder.asm'
	include 'assets\sprites\djakk.asm'
	include 'assets\sprites\djrake.asm'
	include 'assets\sprites\echo.asm'
	include 'assets\sprites\firefly.asm'
	ENDIF
	include 'assets\sprites\fuzzl.asm'
	include 'assets\sprites\nymn.asm'
	include 'assets\sprites\spr_leaf.asm'
	include 'assets\sprites\lift.asm'
	include 'assets\sprites\rope.asm'
	
	; Level props
	include 'assets\sprites\L1\mushroom.asm'
	
	; ************************************
	; Animation data
	; ************************************
	IFND DEBUG
	include 'assets\anims\boulder.asm'
	include 'assets\anims\djakk.asm'
	include 'assets\anims\djrake.asm'
	include 'assets\anims\echo.asm'
	ENDIF
	include 'assets\anims\firefly.asm'
	include 'assets\anims\fuzzl.asm'
	include 'assets\anims\leaf.asm'
	include 'assets\anims\nymn.asm'
	include 'assets\anims\rope.asm'
	
	; Level props
	include 'assets\anims\L1\mushroom.asm'

	IFD DEBUG

	; ************************************
	; Test maps
	; ************************************
	include 'assets\tiles\til_tst1.asm'
	include 'assets\maps\map_tst1.asm'
	include 'assets\collisn\ctl_tst1.asm'
	include 'assets\collisn\cmp_tst1.asm'
	include 'assets\gameobj\obj_tst1.asm'

	ELSE

	; ************************************
    ; Level tiles
    ; ************************************
	include 'assets\tiles\bec_logo.asm'
	include 'assets\tiles\controls.asm'
	include 'assets\tiles\disclmr.asm'
	include 'assets\tiles\demoend.asm'
	include 'assets\tiles\soundtst.asm'
	include 'assets\tiles\twd_logo.asm'
	include 'assets\tiles\ks_logo.asm'
	include 'assets\tiles\til_lvl1.asm'

	include 'assets\tiles\l1.asm'
	
	IFND FINAL
	include 'assets\tiles\tst_lift.asm'
	ENDIF
	
	; ************************************
    ; Level maps
    ; ************************************
	include 'assets\maps\bec_logo.asm'
	include 'assets\maps\controls.asm'
	include 'assets\maps\disclmr.asm'
	include 'assets\maps\demoend.asm'
	include 'assets\maps\soundtst.asm'
	include 'assets\maps\twd_logo.asm'
	include 'assets\maps\ks_logo.asm'
	include 'assets\maps\map_lvl1.asm'
	include 'assets\maps\map_lvl2.asm'
	include 'assets\maps\map_lvl3.asm'
	include 'assets\maps\lvl1_bg.asm'

	include 'assets\maps\l1bg.asm'
	include 'assets\maps\l1a1.asm'
	
	IFND FINAL
	include 'assets\maps\tst_lift.asm'
	ENDIF
	
	; ************************************
    ; Collision tiles
    ; ************************************
	include 'assets\collisn\ctl_lvl1.asm'

	include 'assets\collisn\tiles\l1.asm'
	
	IFND FINAL
	include 'assets\collisn\ctl_lift.asm'
	ENDIF
	
	; ************************************
    ; Collision maps
    ; ************************************
	include 'assets\collisn\cmp_lvl1.asm'
	include 'assets\collisn\cmp_lvl2.asm'
	include 'assets\collisn\cmp_lvl3.asm'

	include 'assets\collisn\maps\l1a1.asm'
	
	IFND FINAL
	include 'assets\collisn\cmp_lift.asm'
	ENDIF
	
	; ************************************
    ; Game objects
    ; ************************************
	include 'assets\gameobj\obj_lvl1.asm'
	include 'assets\gameobj\obj_lvl2.asm'
	include 'assets\gameobj\obj_lvl3.asm'

	include 'assets\gameobj\l1a1.asm'
	
	IFND FINAL
	include 'assets\gameobj\tst_lift.asm'
	ENDIF

	ENDIF
	
	; ************************************
	; Audio
	; ************************************
	include 'assets\music\instrs.asm'
	include 'assets\music\music.asm'
	include 'assets\sfx\sfx.asm'
	
	; ************************************
    ; Strings
    ; ************************************
	include 'assets\strings.asm'

	; ************************************
	; Art asset VRAM mapping
	; ************************************
	
;---------------------------------------------------------
; Bank 0
;---------------------------------------------------------
Tile_Bank0_Size_t:   equ vdp_max_tiles
Tile_Bank0_Size_b:   equ (Tile_Bank0_Size_t*size_tile_b)
Tile_Bank0_Start:    equ (vram_addr_tiles)
;---------------------------------------------------------
	rsset Tile_Bank0_Start
	; TODO: Reserve max level size
	IFD DEBUG
LevelMapVRAM:        rs.b (tiles_tst1_size_b)
	ELSE
LevelMapVRAM:        rs.b (tiles_lvl1_size_b)
;LevelMapVRAM:        rs.b (tiles_tst_lift_size_b)

Tiles_Player1VRAM:   rs.b (sprite_nymn_size_b)
Tiles_BoulderVRAM:   rs.b (sprite_boulder_size_b*Boulder_MaxEntities)
	IFND DEBUG
Tiles_MonsterVRAM:   rs.b (sprite_djakk_size_b)
;Tiles_LiftVRAM:   	 rs.b (sprite_lift_size_b*Lift_MaxEntities)
;Tiles_RopeVRAM:   	 rs.b (sprite_rope_size_b*Lift_MaxEntities*Lift_RopeNumSprites)
Tiles_PlantVRAM:     rs.b (sprite_mushroom_size_b*BouncePlant_MaxEntities)
	ENDIF
	
	ENDIF

;---------------------------------------------------------
Tiles_Bank0_End:     rs.b 0
Tiles_Bank0_Count    equ (Tiles_Bank0_End/size_tile_b)
;---------------------------------------------------------

;---------------------------------------------------------
; Bank 1
;---------------------------------------------------------
Tile_Bank1_Start:    equ 0xD000	; Spare space at VDP 0xD000-0xE000
Tile_Bank1_End:      equ 0xE000
Tile_Bank1_Size_b:   equ (Tile_Bank1_End-Tile_Bank1_Start)
Tile_Bank1_Size_t:   equ (Tile_Bank1_Size_b/size_tile_b)
;---------------------------------------------------------
	rsset Tile_Bank1_Start
Tiles_PixelFontVRAM: rs.b (Tiles_PixelFontSizeB)
Tiles_Leaf1VRAM:     rs.b (tiles_leaf_size_b)
Tiles_Leaf2VRAM:     rs.b (tiles_leaf_size_b)
Tiles_Leaf3VRAM:     rs.b (tiles_leaf_size_b)
	IFND DEBUG
Tiles_FireflyVRAM:   rs.b (sprite_firefly_size_b*Firefly_MaxEntities)
	ENDIF
;---------------------------------------------------------
Tiles_Bank1_End:     rs.b 0
Tiles_Bank1_Count    equ ((Tiles_Bank1_End-Tile_Bank1_Start)/size_tile_b)
;---------------------------------------------------------

;---------------------------------------------------------
; Bank 2
;---------------------------------------------------------
Tile_Bank2_Start:    equ 0xF400	; Spare space at VDP 0xF400-0xFC00
Tile_Bank2_End:      equ 0xFC00
Tile_Bank2_Size_b:   equ (Tile_Bank2_End-Tile_Bank2_Start)
Tile_Bank2_Size_t:   equ (Tile_Bank2_Size_b/size_tile_b)
;---------------------------------------------------------
	rsset Tile_Bank2_Start
Tiles_Player2VRAM:   rs.b (sprite_echo_size_b)
Tiles_FuzzlVRAM:     rs.b (sprite_fuzzl_size_b*Fuzzl_MaxEntities)
;---------------------------------------------------------
Tiles_Bank2_End:     rs.b 0
Tiles_Bank2_Count    equ ((Tiles_Bank2_End-Tile_Bank2_Start)/size_tile_b)
;---------------------------------------------------------

;---------------------------------------------------------
; Bank 3
;---------------------------------------------------------
Tile_Bank3_Start:    equ 0xF000	; Spare space at VDP 0xF000-0xF400
Tile_Bank3_End:      equ 0xF400
Tile_Bank3_Size_b:   equ (Tile_Bank3_End-Tile_Bank3_Start)
Tile_Bank3_Size_t:   equ (Tile_Bank3_Size_b/size_tile_b)
;---------------------------------------------------------
	rsset Tile_Bank3_Start

;---------------------------------------------------------
Tiles_Bank3_End:     rs.b 0
Tiles_Bank3_Count    equ ((Tiles_Bank3_End-Tile_Bank3_Start)/size_tile_b)
;---------------------------------------------------------

	; ************************************
	; Static art asset tile IDs
	; ************************************
Tiles_PixelFont_ID: equ (Tiles_PixelFontVRAM/32)
;Tiles_LevelMap_ID:  equ (LevelMapVRAM/32)

	; ************************************
	; Palette IDs
	; ************************************
; Intro logos
PaletteId_BigEvilLogo	 equ 0x0

; Main menu
PaletteId_TanglewoodLogo equ 0x0

; Sound test
PaletteId_SoundTest 	 equ 0x0
PaletteId_SoundTestText	 equ 0x1

; Demo disclaimer screen
PaletteId_DemoDisclaimerScreen   equ 0x0

; Controls screen
PaletteId_ControlsScreen equ 0x0

; Demo end state
PaletteId_DemoEndState   equ 0x0

; Kickstarter advert screen
PaletteId_KSLogo	     equ 0x0

; Gameplay
PaletteId_World0		equ 0x0
PaletteId_Monster		equ 0x1
PaletteId_Fuzzl			equ 0x2
PaletteId_Player		equ 0x3

	; ************************************
	; Warn about tile count overflows
	; ************************************
	inform 0,"-----------------------------------"
	inform 0,"VDP tile count (bank 0): %d / %d", Tiles_Bank0_Count,Tile_Bank0_Size_t
	inform 0,"VDP tile count (bank 1): %d / %d", Tiles_Bank1_Count,Tile_Bank1_Size_t
	inform 0,"VDP tile count (bank 2): %d / %d", Tiles_Bank2_Count,Tile_Bank2_Size_t
	inform 0,"VDP tile count (bank 3): %d / %d", Tiles_Bank3_Count,Tile_Bank3_Size_t
	inform 0,"-----------------------------------"

	if (Tiles_Bank0_Count>Tile_Bank0_Size_t)
	inform 2,'VDP tile bank 0 count overflow (count: %d, max: %d)',Tiles_Bank0_Count,Tile_Bank0_Size_t
	endif

	if (Tiles_Bank1_Count>Tile_Bank1_Size_t)
	inform 2,'VDP tile bank 1 count overflow (count: %d, max: %d)',Tiles_Bank1_Count,Tile_Bank1_Size_t
	endif
	
	if (Tiles_Bank2_Count>Tile_Bank2_Size_t)
	inform 2,'VDP tile bank 2 count overflow (count: %d, max: %d)',Tiles_Bank2_Count,Tile_Bank2_Size_t
	endif
	
	if (Tiles_Bank3_Count>Tile_Bank3_Size_t)
	inform 2,'VDP tile bank 3 count overflow (count: %d, max: %d)',Tiles_Bank3_Count,Tile_Bank3_Size_t
	endif
	