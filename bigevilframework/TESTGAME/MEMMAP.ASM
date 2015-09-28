;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   memmap.asm - 68000 memory map
;==============================================================	

; ************************************
; Start of RAM
; ************************************	
	rsset 0x00FF0000

; ************************************
; System stuff
; ************************************
hblank_counter      rs.l 1
vblank_counter      rs.l 1
audio_clock         rs.l 1
rand_seed           rs.l 1

; ************************************
; GameLib stuff
; ************************************
next_sprite_index   rs.w 1

; ************************************
; Game init
; ************************************
RenderEnabled       rs.b 1

__padding00			rs.b 3

; ************************************
; World
; ************************************
CurrentLevel		rs.l 1
LevelGravity   	    rs.w 1

__padding01			rs.b 3

; ************************************
; Camera, V/H scroll and map streaming
; ************************************
WorldScrollX		 rs.l 1
WorldScrollY		 rs.l 1
CameraWorldPosX		 rs.l 1
CameraWorldPosY		 rs.l 1
CameraTargetGameObjX rs.l 1
CameraTargetGameObjY rs.l 1
MapStreamLoadedCol   rs.w 1
MapStreamLoadedRow   rs.w 1
MapStreamSrcLeft	 rs.w 1
MapStreamSrcTop	 	 rs.w 1
MapStreamDestLeft	 rs.w 1
MapStreamDestTop	 rs.w 1
MapStreamNumCols	 rs.w 1
MapStreamNumRows	 rs.w 1

; ************************************
; Game globals
; ************************************
Gamepad1PrevState   rs.w 1
Gamepad2PrevState   rs.w 1

__padding02			rs.b 2

; Palette lerping
PaletteLerp_Array   rs.b (PaletteLerp_Struct_Size*num_palettes)

; ************************************
; Game objects
; ************************************
GameObjArray_Players rs.b (Player_Struct_Size*Player_MaxGameObjs)
;GameObjArray_Fireflies  rs.b (Firefly_Struct_Size*Firefly_MaxGameObjs)

__endOfMemoryMap	rs.b 0
