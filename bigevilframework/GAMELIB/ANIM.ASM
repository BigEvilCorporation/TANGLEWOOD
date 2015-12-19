;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   anim.asm - Animation structure and routines
;==============================================================


; ************************************
; Animation struct
; ************************************

	rsset 0
Animation_KeyframesAddr rs.l 1 ; Keyframe data address (ROM)
;Animation_TilesetAddr   rs.l 1 ; Address of first animation tile (ROM)
;Animation_TilesetSize   rs.w 1 ; Number of tiles in one anim frame
;Animation_TileOffset    rs.b 1 ; VRAM offset from GameObj_VRAMAddr (in tiles) to upload to
Animation_Speed		    rs.b 1
Animation_Length	    rs.b 1
Animation_Looping	    rs.b 1
;-------------------------------
Animation_Struct_Pad  rs.b 1
Animation_Struct_Size rs.b 0
