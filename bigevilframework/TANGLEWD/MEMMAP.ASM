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
__padding01 		  rs.b 1
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
; VDP DMA queue
; ************************************
vdp_dma_queue		  rs.b (VDPDMAJob_Struct_Size*VDPDmaQueue_MaxSize)
vdp_dma_queue_size    rs.w 1

__padding02 		  rs.b 2

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
; Timers
; ************************************
TimerLogoFade		rs.l 1
TimerFailReset		rs.l 1

; ************************************
; World
; ************************************
CurrentLevel		rs.l 1
LevelGravity   	    rs.w 1
TimeOfDayShiftDelay rs.w 1
TimeOfDayPalettes   rs.l TimeOfDay_NumCycles
TimeOfDay           rs.b 1	; TimeOfDay_Dawn/Day/Dusk/Night

__padding03			rs.b 3

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
Gamepad1PrevState    rs.w 1
Gamepad2PrevState    rs.w 1

; Palette lerping
PaletteLerp_Array    rs.b (PaletteLerp_Struct_Size*num_palettes)

; Switching colour palettes - player 1
SwitchingPalettesP1  rs.l NumSwitchingColours

; Current game state
GameStatePtr		 rs.l 1

; ************************************
; Checkpoints
; ************************************
LastActivatedCheckpoint      rs.l 1
CheckpointSerialiseMemBlock  rs.b CheckpointSerialiseBlockSize

; ************************************
; Colour abilities
; ************************************
GlobalTimeDiv			 rs.b 1

__padding04			     rs.b 3

; ************************************
; Debug stuff
; ************************************
	IFND FINAL
DebugMoveObjectMode      rs.b 1
__padding05			     rs.b 3
	ENDIF

; ************************************
; Entity linked lists
; ************************************
EntityListHead_Update	 rs.l 1
EntityListTail_Update	 rs.l 1
EntityListSize_Update	 rs.l 1
                         
EntityListHead_Render	 rs.l 1
EntityListTail_Render	 rs.l 1
EntityListSize_Render	 rs.l 1

EntityListHead_Serialise rs.l 1
EntityListTail_Serialise rs.l 1
EntityListSize_Serialise rs.l 1

; ************************************
; Entities
; ************************************
EntityArray_Players    rs.b (Player_Struct_Size*Player_MaxEntities)
EntityArray_Monsters   rs.b (Monster_Struct_Size*Monster_MaxEntities)
EntityArray_Fireflies  rs.b (Firefly_Struct_Size*Firefly_MaxEntities)
EntityArray_Flues      rs.b (Flue_Struct_Size*Flue_MaxEntities)
EntityArray_Fuzzls     rs.b (Fuzzl_Struct_Size*Fuzzl_MaxEntities)
EntityArray_Leaves     rs.b (Leaf_Struct_Size*Leaf_MaxEntities)
EntityArray_Nests      rs.b (Nest_Struct_Size*Nest_MaxEntities)
EntityArray_Obstacles  rs.b (Obstacle_Struct_Size*Obstacle_MaxEntities)
EntityArray_Boulders   rs.b (Boulder_Struct_Size*Boulder_MaxEntities)
EntityArray_Triggers   rs.b (TriggerBox_Struct_Size*TriggerBox_MaxEntities)

reserved_ram_size		rs.b 0

	inform 0,"-----------------------------------"
	inform 0,"Reserved RAM: %d bytes (%dkb)", reserved_ram_size, (reserved_ram_size/(1024*1024))
	inform 0,"-----------------------------------"
	inform 0,""

__endOfMemoryMap	rs.b 0
