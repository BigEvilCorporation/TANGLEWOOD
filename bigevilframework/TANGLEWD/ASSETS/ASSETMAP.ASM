;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	; ************************************
    ; Level list
    ; ************************************
	include 'assets\levels.asm'

    ; ************************************
    ; Palettes
    ; ************************************
	include 'assets\palettes\bec_logo.asm'
	include 'assets\palettes\twd_logo.asm'
	include 'assets\palettes\pal_fade.asm'
	include 'assets\palettes\pal_nymn.asm'
	include 'assets\palettes\pal_lvl1.asm'
	include 'assets\palettes\pal_fuzl.asm'
	include 'assets\palettes\pal_nest.asm'
	include 'assets\palettes\pal_takk.asm'
	
	; ************************************
    ; Font tiles
    ; ************************************
	include 'assets\fonts\pixelfnt.asm'
	
	; ************************************
    ; Sprite tiles
    ; ************************************
	include 'assets\sprites\nymn\nymn.asm'
	include 'assets\sprites\spr_ffly.asm'
	include 'assets\sprites\spr_fuzl.asm'
	include 'assets\sprites\spr_leaf.asm'
	include 'assets\sprites\takk\takk.asm'
	include 'assets\sprites\spr_vine.asm'
	
	; ************************************
	; Animation data
	; ************************************
	include 'assets\anims\firefly.asm'
	include 'assets\anims\fuzzl.asm'
	include 'assets\anims\leaf.asm'
	include 'assets\anims\monster.asm'
	include 'assets\anims\nymn.asm'

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
	include 'assets\tiles\twd_logo.asm'
	include 'assets\tiles\til_lvl1.asm'
	
	; ************************************
    ; Level maps
    ; ************************************
	include 'assets\maps\bec_logo.asm'
	include 'assets\maps\twd_logo.asm'
	include 'assets\maps\map_lvl1.asm'
	
	; ************************************
    ; Collision tiles
    ; ************************************
	include 'assets\collisn\ctl_lvl1.asm'
	
	; ************************************
    ; Collision maps
    ; ************************************
	include 'assets\collisn\cmp_lvl1.asm'
	
	; ************************************
    ; Game objects
    ; ************************************
	include 'assets\gameobj\obj_lvl1.asm'

	ENDIF
	
	; ************************************
	; Audio
	; ************************************
	include 'assets\music\instrs.asm'
	include 'assets\music\titles.asm'
	
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
Tile_Bank0_Size_t:     equ vdp_max_tiles
Tile_Bank0_Size_b:     equ (Tile_Bank0_Size_t*size_tile_b)
Tile_Bank0_Start:    equ (vram_addr_tiles)
;---------------------------------------------------------
	rsset Tile_Bank0_Start
Tiles_PixelFontVRAM: rs.b (Tiles_PixelFontSizeB)
Tiles_Player1VRAM:   rs.b (tiles_nymn_size_b)
;Tiles_Player2VRAM:   rs.b (tiles_nymn_size_b)
Tiles_MonsterVRAM:   rs.b (tiles_monster_size_b)

	; TODO: Reserve max level size
	IFD DEBUG
LevelMapVRAM:        rs.b (tiles_tst1_size_b)
	ELSE
LevelMapVRAM:        rs.b (tiles_lvl1_size_b)
	ENDIF

;---------------------------------------------------------
Tiles_Bank0_End:     rs.b 0
Tiles_Bank0_Count    equ (Tiles_Bank0_End/size_tile_b)
;---------------------------------------------------------

;---------------------------------------------------------
; Bank 1
;---------------------------------------------------------
Tile_Bank1_Size_b:   equ 0x1000
Tile_Bank1_Size_t:   equ (0x1000/size_tile_b)
Tile_Bank1_Start:    equ (vram_addr_plane_a+Tile_Bank1_Size_b)	; Spare space at VDP 0xD000-0xE000
;---------------------------------------------------------
	rsset Tile_Bank1_Start
Tiles_Fuzzl1VRAM:    rs.b (tiles_fuzzl_size_b)
Tiles_Fuzzl2VRAM:    rs.b (tiles_fuzzl_size_b)
Tiles_Leaf1VRAM:     rs.b (tiles_leaf_size_b)
Tiles_Leaf2VRAM:     rs.b (tiles_leaf_size_b)
Tiles_Leaf3VRAM:     rs.b (tiles_leaf_size_b)
Tiles_VinesVRAM:     rs.b (tiles_vines_size_b)
Tiles_FireflyVRAM:   rs.b (tiles_firefly_size_b*Firefly_MaxEntities)
;---------------------------------------------------------
Tiles_Bank1_End:     rs.b 0
Tiles_Bank1_Count    equ ((Tiles_Bank1_End-Tile_Bank1_Start)/size_tile_b)
;---------------------------------------------------------

	; ************************************
	; Static art asset tile IDs
	; ************************************
Tiles_PixelFont_ID: equ (Tiles_PixelFontVRAM/32)
Tiles_LevelMap_ID:  equ (LevelMapVRAM/32)

	; ************************************
	; Palette IDs
	; ************************************
; Intro logos
PaletteId_BigEvilLogo	equ 0x0

; Main menu
PaletteId_TanglewoodLogo equ 0x0

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
	inform 0,"-----------------------------------"

	if (Tiles_Bank0_Count>Tile_Bank0_Size_t)
	inform 2,'VDP tile bank 0 count overflow (count: %d, max: %d)',Tiles_Bank0_Count,Tile_Bank0_Size_t
	endif

	if (Tiles_Bank1_Count>Tile_Bank1_Size_t)
	inform 2,'VDP tile bank 1 count overflow (count: %d, max: %d)',Tiles_Bank1_Count,Tile_Bank1_Size_t
	endif
	