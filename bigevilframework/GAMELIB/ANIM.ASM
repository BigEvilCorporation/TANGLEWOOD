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
Animation_AnimTrackSpriteFrame rs.l 1 ; Sprite frame keyframe data address (ROM)
Animation_AnimTrackPositionX   rs.l 1 ; X position keyframe data address (ROM)
Animation_AnimTrackPositionY   rs.l 1 ; Y position keyframe data address (ROM)
Animation_AnimTrackSFX		   rs.l 1 ; SFX trigger keyframe data address (ROM)
;Animation_TilesetAddr   rs.l 1 ; Address of first animation tile (ROM)
;Animation_TilesetSize   rs.w 1 ; Number of tiles in one anim frame
;Animation_TileOffset    rs.b 1 ; VRAM offset from SpriteObj_VRAMAddr (in tiles) to upload to
Animation_FirstFrameOffset	   rs.w 1 ; Offset (in frames) from start of tile data to first frame
Animation_Speed		           rs.b 1 ; Anim speed in subframes per tick (1<<8)
Animation_Length	           rs.b 1 ; Anim length in frames
Animation_Looping	           rs.b 1 ; Looping flag
Animation_ZeroVelocity		   rs.b 1 ; Zero object velocity 
Animation_NoSpeedScale		   rs.b 1 ; If set not affected by global speed scale
Animation_NoReplay	           rs.b 1 ; Don't replay if triggered twice
;------------------------------------
Animation_Struct_Pad           rs.b 0
Animation_Struct_Size          rs.b 0
