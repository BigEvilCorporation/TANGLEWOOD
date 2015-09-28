;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level.asm - Level struct and load routines
;==============================================================

	rsset 0
;-----------------------------
Level_TilesAddr       	rs.l 1
Level_MapAddr    		rs.l 1
Level_ColTilesAddr     	rs.l 1
Level_ColMapAddr		rs.l 1
Level_PalettesAddr		rs.l 1
Level_MapWidth			rs.w 1
Level_MapHeight			rs.w 1
Level_NumTiles			rs.w 1
Level_NumPalettes		rs.b 1
;-----------------------------
Level_Struct_Size		rs.b 0