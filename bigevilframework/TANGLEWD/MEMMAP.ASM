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
; In-RAM interrupts
; ************************************
HBlankInterrupt		  rs.b hint_max_size

; ************************************
; Framework stuff
; ************************************
audio_clock           rs.l 1
rand_seed             rs.l 1
letterbox_top		  rs.w 1
letterbox_bottom	  rs.w 1
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
TimerDemoReset      rs.l 1

; ************************************
; World
; ************************************
CurrentLevel		rs.l 1
LevelGravity   	    rs.w 1
TimeOfDayShiftDelay rs.w 1
TimeOfDayPalettes   rs.l TimeOfDay_NumCycles
TimeOfDay           rs.b 1	; TimeOfDay_Dawn/Day/Dusk/Night
TimeOfDayEnabled    rs.b 1

__padding03			rs.b 2

; ************************************
; Camera, V/H scroll and map streaming
; ************************************
WorldScrollX		   rs.l 1
WorldScrollY		   rs.l 1
CameraWorldPosX		   rs.l 1
CameraWorldPosY		   rs.l 1
CameraShakeOffsetX	   rs.l 1
CameraShakeOffsetY	   rs.l 1
CameraTargetGameObj    rs.l 1
CameraTargetLerpSource rs.l 1
CameraTargetLerpTime   rs.w 1
CameraTargetLerpSpeed  rs.w 1
CameraShakeSinX	   	   rs.w 1
CameraShakeSinY	       rs.w 1
CameraShakeSpeedX	   rs.w 1
CameraShakeSpeedY	   rs.w 1
CameraShakeAmpX	   	   rs.w 1
CameraShakeAmpY	       rs.w 1
CameraShakeTimer       rs.w 1
MapStreamLoadedCol     rs.w 1
MapStreamLoadedRow     rs.w 1
MapStreamSrcLeft	   rs.w 1
MapStreamSrcTop	 	   rs.w 1
MapStreamDestLeft	   rs.w 1
MapStreamDestTop	   rs.w 1
MapStreamNumCols	   rs.w 1
MapStreamNumRows	   rs.w 1

__padding061		   rs.b 2

; ************************************
; Game globals
; ************************************
Gamepad1PrevState      rs.w 1
Gamepad2PrevState      rs.w 1
Player1ControlEnabled  rs.b 1
Player2ControlEnabled  rs.b 1
                       
__padding030		   rs.b 2

; Palette lerping
PaletteLerp_Array    rs.b (PaletteLerp_Struct_Size*num_palettes)

; Switching colour palettes - player 1
SwitchingPalettesP1  rs.l NumSwitchingColours

; Current game state
GameStatePtr		 rs.l 1

; Game state data
GameStateEndLevelData		 rs.b EndLevelState_Struct_Size

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

; Time slow ability palette backup
TimeSlowPaletteBackup	 rs.b (size_palette_b*num_palettes)

; ************************************
; Audio
; ************************************
AmbientSFX				 rs.l 4 ; AmbientSFXCount
AmbientSFXTimer			 rs.w 1
BGMOffTimer				 rs.w 1

; __padding06			     rs.b 0

; ************************************
; Level runtime data
; ************************************
LevelData_1				 rs.b Lvl1Data_Struct_Size

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
EntityArray_Players     rs.b (Player_Struct_Size*Player_MaxEntities)
EntityArray_Actors      rs.b (Actor_Struct_Size*Actor_MaxEntities)
EntityArray_Monsters    rs.b (Monster_Struct_Size*Monster_MaxEntities)
EntityArray_Fireflies   rs.b (Firefly_Struct_Size*Firefly_MaxEntities)
EntityArray_Flues       rs.b (Flue_Struct_Size*Flue_MaxEntities)
EntityArray_Fuzzls      rs.b (Fuzzl_Struct_Size*Fuzzl_MaxEntities)
EntityArray_Leaves      rs.b (Leaf_Struct_Size*Leaf_MaxEntities)
EntityArray_Nests       rs.b (Nest_Struct_Size*Nest_MaxEntities)
EntityArray_Boulders    rs.b (Boulder_Struct_Size*Boulder_MaxEntities)
EntityArray_Triggers    rs.b (TriggerBox_Struct_Size*TriggerBox_MaxEntities)
EntityArray_Checkpoints rs.b (Checkpoint_Struct_Size*Checkpoint_MaxEntities)
EntityArray_WaterBodies rs.b (WaterBody_Struct_Size*WaterBody_MaxEntities)
EntityArray_Locations rs.b (Location_Struct_Size*Location_MaxEntities)

EntityCount_Players     rs.w 1
EntityCount_Actors      rs.w 1
EntityCount_Monsters    rs.w 1
EntityCount_Fireflies   rs.w 1
EntityCount_Flues       rs.w 1
EntityCount_Fuzzls      rs.w 1
EntityCount_Leaves      rs.w 1
EntityCount_Nests       rs.w 1
EntityCount_Boulders    rs.w 1
EntityCount_Triggers    rs.w 1
EntityCount_Checkpoints rs.w 1
EntityCount_WaterBodies rs.w 1
EntityCount_Locations   rs.w 1

reserved_ram_size		rs.b 0

	inform 0,"-----------------------------------"
	inform 0,"Reserved RAM: %d bytes (%dkb)", reserved_ram_size, (reserved_ram_size/(1024*1024))
	inform 0,"-----------------------------------"
	inform 0,""

__endOfMemoryMap	rs.b 0
