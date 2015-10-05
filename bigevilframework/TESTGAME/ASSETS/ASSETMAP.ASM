;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

    ; ************************************
    ; Palettes
    ; ************************************
	include 'assets\palettes\sonic.asm'
	include 'assets\palettes\pal_lvl1.asm'
	include 'assets\palettes\pal_lvl2.asm'
	
	; ************************************
    ; Font tiles
    ; ************************************
	include 'assets\fonts\pixelfnt.asm'
	
	; ************************************
    ; Sprite tiles
    ; ************************************
	include 'assets\sprites\sonic.asm'
	
	; ************************************
    ; Level tiles
    ; ************************************
	include 'assets\tiles\til_lvl1.asm'
	include 'assets\tiles\til_lvl2.asm'
	
	; ************************************
    ; Level maps
    ; ************************************
	include 'assets\maps\map_lvl1.asm'
	
	; ************************************
    ; Collision tiles
    ; ************************************
	include 'assets\collisn\ctl_lvl1.asm'
	include 'assets\collisn\ctl_lvl2.asm'
	
	; ************************************
    ; Collision maps
    ; ************************************
	include 'assets\collisn\cmp_lvl1.asm'
	include 'assets\collisn\cmp_lvl2.asm'
	
	; ************************************
    ; Game objects
    ; ************************************
	include 'assets\gameobj\lvl1_obj.asm'
	include 'assets\gameobj\lvl2_obj.asm'
	
	; ************************************
    ; Animation data
    ; ************************************
	include 'assets\anims\sonic.asm'

	; ************************************
    ; Level list
    ; ************************************
	include 'assets\levels.asm'
	
	; ************************************
    ; Art asset VRAM mapping
    ; ************************************
	rsset 0
Tiles_PixelFontVRAM: rs.b (Tiles_PixelFontSizeB)
Tiles_Player1VRAM:   rs.b (tiles_sonic_size_b)
Tiles_Player2VRAM:   rs.b (tiles_sonic_size_b)
LevelMapVRAM:        rs.b (tiles_lvl1_size_b)

	; ************************************
    ; Art asset tile IDs
    ; ************************************
Tiles_PixelFont_ID: equ (Tiles_PixelFontVRAM/32)
Tiles_Player1_ID:   equ (Tiles_Player1VRAM/32)
Tiles_Player2_ID:   equ (Tiles_Player2VRAM/32)
Tiles_LevelMap_ID:  equ (LevelMapVRAM/32)

	; ************************************
    ; Palette IDs
    ; ************************************
PaletteId_World0		 equ 0x0
PaletteId_World1		 equ 0x1
PaletteId_World2		 equ 0x2
PaletteId_Player		 equ 0x3