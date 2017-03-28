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
; VDP regs current state
; ************************************
vdp_regs			  rs.b vdp_num_registers

; ************************************
; Framework stuff
; ************************************
audio_clock           rs.l 1
audio_current_track   rs.l 1
audio_queued_tracks   rs.l Track_Type_COUNT
audio_current_sfx     rs.l 1
rand_seed             rs.l 1
letterbox_top		  rs.w 1
letterbox_bottom	  rs.w 1
vint_enabled		  rs.b 1
audio_volume_global   rs.b 1
audio_fader_speed     rs.b 1
audio_playback_locked rs.b 1

__padding00			  rs.b 0

vram_pools			  rs.b (VRAMPool_Struct_Size*VRAMPoolCount)

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
; VRAM addresses
; ************************************
vram_addr_systemfont  rs.w 1
vram_addr_leveltiles  rs.w 1

; ************************************
; GameLib stuff
; ************************************
next_sprite_index   rs.w 1
prev_sprite_link    rs.w 1
sprite_link_count   rs.b 1

__padding32 		rs.b 1

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
WorldScrollX		    rs.l 1
WorldScrollY		    rs.l 1
CameraWorldPosX		    rs.l 1
CameraWorldPosY		    rs.l 1
CameraShakeOffsetX	    rs.l 1
CameraShakeOffsetY	    rs.l 1
CameraPeekOffsetY       rs.l 1
CameraTargetGameObj     rs.l 1
CameraTargetLerpSource  rs.l 1
CameraTargetLerpStartX  rs.l 1
CameraTargetLerpStartY  rs.l 1
CameraTargetLerpTime    rs.w 1
CameraTargetLerpSpeed   rs.w 1
CameraShakeSinX	   	    rs.w 1
CameraShakeSinY	        rs.w 1
CameraShakeSpeedX	    rs.w 1
CameraShakeSpeedY	    rs.w 1
CameraShakeAmpX	   	    rs.w 1
CameraShakeAmpY	        rs.w 1
CameraShakeTimer        rs.w 1
MapStreamLoadedCol      rs.w 1
MapStreamLoadedRow      rs.w 1
MapStreamSrcLeft	    rs.w 1
MapStreamSrcTop	 	    rs.w 1
MapStreamDestLeft	    rs.w 1
MapStreamDestTop	    rs.w 1
MapStreamNumCols	    rs.w 1
MapStreamNumRows	    rs.w 1

__padding061		   rs.b 0

; ************************************
; Scene/stamp animations
; ************************************
StampAnimObjs		   rs.b (SceneAnim_Struct_Size*MaxStampAnims)
StampAnims			   rs.b (Animation_Struct_Size*MaxStampAnims)

; ************************************
; Game globals
; ************************************
Gamepad1State      	   rs.w 1
Gamepad2State      	   rs.w 1
Gamepad1PrevState      rs.w 1
Gamepad2PrevState      rs.w 1

; Palette lerping
PaletteLerp_Array    rs.b (PaletteLerp_Struct_Size*num_palettes)

; Switching colour palettes - player 1
SwitchingPalettesP1  rs.l NumSwitchingColours

; Current game state
GameStatePtr		 rs.l 1

; Game state stack
GameStateStackPtr	 rs.l 1
GameStateStack       rs.l (GameStateStackSize)

; Game state data
	IFND DEBUG
GameStateLogoData			 rs.b LogoState_Struct_Size
GameStateMainMenuData		 rs.b MainMenuState_Struct_Size
GameStateSoundTestData		 rs.b SoundTestState_Struct_Size
GameStatePauseData		 	 rs.b PauseState_Struct_Size
GameStateEndLevelData		 rs.b EndLevelState_Struct_Size
	ENDIF

; ************************************
; Checkpoints
; ************************************
LastActivatedCheckpoint      rs.l 1
LastSaveVersion				 rs.w 1
__padding041			     rs.b 2
CheckpointSerialiseMemBlock  rs.b CheckpointSerialiseBlockSize

; ************************************
; Physics platforms
; ************************************
	LINKED_LIST Platforms	 ; Moving platforms
	LINKED_LIST Barriers	 ; Moving walls
	LINKED_LIST PushableObjs ; Pushable objects

; ************************************
; Colour abilities
; ************************************
GlobalTimeDiv			 rs.b 1

__padding04			     rs.b 3

; Time slow effect palette backup
TimeSlowPaletteBackup	 rs.b (size_palette_b*num_palettes)

; Firefly count
FireflyPickupCount		 rs.w 1

; Death count
DeathCount				 rs.w 1

; Next rope segment to allocate
NextFreeRopeSegment		 rs.l 1

; __padding06			     rs.b 0

; ************************************
; Audio
; ************************************
AmbientSFX				 rs.l 4 ; AmbientSFXCount
AmbientSFXTimer			 rs.w 1
BGMOffTimer				 rs.w 1

; ************************************
; Level runtime data
; ************************************
	IFND DEBUG
; L1
LevelData_L1A1			 rs.b L1A1Data_Struct_Size
LevelData_L1A2			 rs.b l1a2Data_Struct_Size
LevelData_L1A3			 rs.b l1a3Data_Struct_Size
LevelData_L1A4			 rs.b l1a4Data_Struct_Size

; L2
LevelData_L2A1			 rs.b L2A1Data_Struct_Size

; L3
LevelData_L3A1			 rs.b L3A1Data_Struct_Size

; L4
LevelData_L4A1			 rs.b L4A1Data_Struct_Size

; L6
LevelData_L6A1			 rs.b L6A1Data_Struct_Size
	ENDIF

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
	LINKED_LIST EntityUpdate
	LINKED_LIST EntityRender
	LINKED_LIST EntitySerialise

; ************************************
; Entities
; ************************************
EntityArray_Nymn        rs.b (Nymn_Struct_Size)
EntityArray_Echo        rs.b (Echo_Struct_Size)
EntityArray_Actor       rs.b (Actor_Struct_Size*Actor_MaxEntities)
EntityArray_Flue        rs.b (Flue_Struct_Size*Flue_MaxEntities)
EntityArray_Fuzzl       rs.b (Fuzzl_Struct_Size*Fuzzl_MaxEntities)
EntityArray_Leaf        rs.b (Leaf_Struct_Size*Leaf_MaxEntities)
EntityArray_Nest        rs.b (Nest_Struct_Size*Nest_MaxEntities)
EntityArray_TriggerBox  rs.b (TriggerBox_Struct_Size*TriggerBox_MaxEntities)
EntityArray_Checkpoint  rs.b (Checkpoint_Struct_Size*Checkpoint_MaxEntities)
EntityArray_WaterBody   rs.b (WaterBody_Struct_Size*WaterBody_MaxEntities)
EntityArray_Location    rs.b (Location_Struct_Size*Location_MaxEntities)
	IFND DEBUG
EntityArray_Monster     rs.b (Monster_Struct_Size*Monster_MaxEntities)
EntityArray_Djrake      rs.b (Djrake_Struct_Size*Djrake_MaxEntities)
EntityArray_Boulder     rs.b (Boulder_Struct_Size*Boulder_MaxEntities)
EntityArray_Firefly     rs.b (Firefly_Struct_Size*Firefly_MaxEntities)
EntityArray_Lift        rs.b (Lift_Struct_Size*Lift_MaxEntities)
EntityArray_Rope        rs.b (RopeSegment_Struct_Size*Rope_MaxEntities)
EntityArray_BouncePlant rs.b (BouncePlant_Struct_Size*BouncePlant_MaxEntities)
EntityArray_Stone       rs.b (Stone_Struct_Size*Stone_MaxEntities)
EntityArray_Deathbox    rs.b (Deathbox_Struct_Size*Deathbox_MaxEntities)
	ENDIF

EntityCount_Actor       rs.w 1
EntityCount_Monster     rs.w 1
EntityCount_Djrake      rs.w 1
EntityCount_Firefly     rs.w 1
EntityCount_Flue        rs.w 1
EntityCount_Fuzzl       rs.w 1
EntityCount_Leaf        rs.w 1
EntityCount_Nest        rs.w 1
EntityCount_Boulder     rs.w 1
EntityCount_TriggerBox  rs.w 1
EntityCount_Checkpoint  rs.w 1
EntityCount_WaterBody   rs.w 1
EntityCount_Location    rs.w 1
EntityCount_Lift        rs.w 1
EntityCount_Rope        rs.w 1
EntityCount_BouncePlant	rs.w 1
EntityCount_Stone       rs.w 1
EntityCount_Deathbox    rs.w 1

reserved_ram_size		rs.b 0

	inform 0,"-----------------------------------"
	inform 0,"Reserved RAM: %d bytes (%dkb)", reserved_ram_size, (reserved_ram_size/(1024*1024))
	inform 0,"-----------------------------------"
	inform 0,""

__endOfMemoryMap	rs.b 0
