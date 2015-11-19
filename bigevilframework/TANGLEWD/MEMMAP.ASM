;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
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
; Framework stuff
; ************************************
audio_clock           rs.l 1
rand_seed             rs.l 1
vint_enabled		  rs.b 1

__padding00			  rs.b 3

; ************************************
; Profiler
; ************************************
	IFD DEBUG
profile_pending		  rs.b 1
profile_finished	  rs.b 1
profile_active		  rs.b 1
__padding			  rs.b 1
profile_currblock	  rs.l 1
profile_nextfreeblock rs.l 1
profile_resultblocks  rs.b (ProfileBlockStructSize*ProfileMaxBlocks)
profile_blockstack	  rs.l (ProfileMaxBlocks*2)
profile_blockstackptr rs.l 1
	ENDIF
	
; ************************************
; Counters
; ************************************
hblank_counter        rs.l 1
hline_counter		  rs.l 1
vblank_counter        rs.l 1
frame_counter_update  rs.l 1
frame_counter_render  rs.l 1

; ************************************
; VDP job queue
; ************************************
vdp_queue_jobarray    rs.b (VDPJob_Struct_Size*VDPQueue_MaxSize)
vdp_queue_produceridx rs.l 1
vdp_queue_consumeridx rs.l 1

; ************************************
; VDP sprite table
; ************************************
vdp_sprite_table	  rs.b (Sprite_Struct_Size*vdp_max_sprites)

; ************************************
; GameLib stuff
; ************************************
next_sprite_index   rs.w 1
prev_sprite_link    rs.w 1

; ************************************
; Art decompression/scratch buffer
; ************************************
art_scratch_buffer  rs.b ArtScratchBufferSize

; ************************************
; World
; ************************************
CurrentLevel		rs.l 1
LevelGravity   	    rs.w 1
TimeOfDayShiftDelay rs.w 1
TimeOfDayPalettes   rs.l TimeOfDay_NumCycles
TimeOfDay           rs.b 1	; TimeOfDay_Dawn/Day/Dusk/Night

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

; __padding02			rs.b 2

; Palette lerping
PaletteLerp_Array   rs.b (PaletteLerp_Struct_Size*num_palettes)

; Switching colour palettes - player 1
SwitchingPalettesP1 rs.l NumSwitchingColours

; ************************************
; Game objects
; ************************************
GameObjArray_Players    rs.b (Player_Struct_Size*Player_MaxGameObjs)
GameObjArray_Monsters   rs.b (Monster_Struct_Size*Monster_MaxGameObjs)
GameObjArray_Fireflies  rs.b (Firefly_Struct_Size*Firefly_MaxGameObjs)
GameObjArray_Flues      rs.b (Flue_Struct_Size*Flue_MaxGameObjs)
GameObjArray_Fuzzls     rs.b (Fuzzl_Struct_Size*Fuzzl_MaxGameObjs)
GameObjArray_Leaves     rs.b (Leaf_Struct_Size*Leaf_MaxGameObjs)
GameObjArray_Nests      rs.b (Nest_Struct_Size*Nest_MaxGameObjs)
GameObjArray_Obstacles  rs.b (Obstacle_Struct_Size*Obstacle_MaxGameObjs)

reserved_ram_size		rs.b 0

	inform 0,"-----------------------------------"
	inform 0,"Reserved RAM: %d bytes (%dkb)", reserved_ram_size, (reserved_ram_size/1024)
	inform 0,"Scratch buffer: %d bytes (%dkb)", ArtScratchBufferSize, (ArtScratchBufferSize/1024)
	inform 0,"-----------------------------------"
	inform 0,""

__endOfMemoryMap	rs.b 0
