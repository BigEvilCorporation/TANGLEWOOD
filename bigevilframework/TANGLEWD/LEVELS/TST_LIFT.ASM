;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level3.asm - Level 3 - Harlequin Forest Act 3
;==============================================================	

Lvl_TestLift:

	dc.l tiles_tst_lift					; Tileset
	dc.l map_blocks_tst_lift			; Blocks
	dc.l map_blockmap_tst_lift			; Block map
	dc.l collisiontiles_tst_lift		; Collision tileset
	dc.l collisionmap_blocks_tst_lift	; Collision blocks
	dc.l collisionmap_blockmap_tst_lift	; Collision block map
	dc.l Lvl_TestLift_DefaultPalettes	; Palettes
	dc.l Lvl_TestLift_Init				; Init routine
	dc.l Lvl_TestLift_Update			; Update routine
	dc.l Lvl_TestLift_Serialise			; Serialise routine
	dc.l tst_lift_LoadGameObjects		; Load game objects routine
	dc.l 0x0							; Next level
	dc.w Gravity						; Default gravity
	dc.w map_tst_lift_width				; Map width
	dc.w map_tst_lift_height			; Map height
	dc.w map_blockmap_tst_lift_width	; Map width (blocks)
	dc.w map_blockmap_tst_lift_height	; Map height (blocks)
	dc.w tiles_tst_lift_size_t			; Num tiles
	
	even
	
Lvl_TestLift_DefaultPalettes:

	dc.l palette_tst_lift			; World
	dc.l palette_Djrake				; Djakk
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
TEST:
	dc.l 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	
Lvl_TestLift_Init:
	
	; Enable player 1 control
	move.b #0x1, Player_ControlEnabled(a0)

	rts
	
Lvl_TestLift_Update:
	rts
	
Lvl_TestLift_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts
	