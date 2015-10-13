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
	include 'assets\palettes\sonic.asm'
	include 'assets\palettes\pal_lvl1.asm'
	include 'assets\palettes\pal_fuzl.asm'
	include 'assets\palettes\pal_nest.asm'
	
	; ************************************
    ; Font tiles
    ; ************************************
	include 'assets\fonts\pixelfnt.asm'
	
	; ************************************
    ; Sprite tiles
    ; ************************************
	include 'assets\sprites\firefly.asm'
	include 'assets\sprites\leaf.asm'
	include 'assets\sprites\sonic.asm'
	include 'assets\sprites\spr_fuzl.asm'
	include 'assets\sprites\vines.asm'
	
	; ************************************
	; Animation data
	; ************************************
	include 'assets\anims\firefly.asm'
	include 'assets\anims\fuzzl.asm'
	include 'assets\anims\leaf.asm'
	include 'assets\anims\sonic.asm'

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
	include 'assets\tiles\til_lvl1.asm'
	
	; ************************************
    ; Level maps
    ; ************************************
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
    ; Art asset VRAM mapping
    ; ************************************
	rsset 0
Tiles_PixelFontVRAM: rs.b (Tiles_PixelFontSizeB)
Tiles_Player1VRAM:   rs.b (tiles_sonic_size_b)
Tiles_Player2VRAM:   rs.b (tiles_sonic_size_b)
Tiles_Fuzzl1VRAM:    rs.b (tiles_fuzzl_size_b)
Tiles_Fuzzl2VRAM:    rs.b (tiles_fuzzl_size_b)
Tiles_Leaf1VRAM:     rs.b (tiles_leaf_size_b)
Tiles_Leaf2VRAM:     rs.b (tiles_leaf_size_b)
Tiles_Leaf3VRAM:     rs.b (tiles_leaf_size_b)
Tiles_VinesVRAM:     rs.b (tiles_vines_size_b)
Tiles_FireflyVRAM:   rs.b (tiles_firefly_size_b*Firefly_MaxGameObjs)

	; TODO: Reserve max level size
	IFD DEBUG
LevelMapVRAM:        rs.b (tiles_tst1_size_b)
	ELSE
LevelMapVRAM:        rs.b (tiles_lvl1_size_b)
	ENDIF

	; ************************************
    ; Static art asset tile IDs
    ; ************************************
Tiles_PixelFont_ID: equ (Tiles_PixelFontVRAM/32)
Tiles_LevelMap_ID:  equ (LevelMapVRAM/32)

	; ************************************
    ; Palette IDs
    ; ************************************
PaletteId_World0		 equ 0x0
PaletteId_Fuzzl1		 equ 0x1
PaletteId_Fuzzl2		 equ 0x2
PaletteId_Player		 equ 0x3
