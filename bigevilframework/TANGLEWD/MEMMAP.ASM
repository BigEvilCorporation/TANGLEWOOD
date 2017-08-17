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
rand_seed				rs.l 1
vint_enabled			rs.b 1

__padding00				rs.b 3

vram_pools				rs.b (VRAMPool_Struct_Size*VRAMPoolCount)

; ************************************
; Raster effect data
; ************************************
raster_effect_update		rs.l 1	; Current effect update func
raster_letterbox_top		rs.w 1	; Letterbox mode top border
raster_letterbox_bottom		rs.w 1	; Letterbox mode bottom border
raster_interlace_scroll1_x	rs.w 1	; Interlaced scroll X (even line)
raster_interlace_scroll1_y	rs.w 1	; Interlaced scroll Y (even line)
raster_interlace_scroll2_x	rs.w 1	; Interlaced scroll X (odd line)
raster_interlace_scroll2_y	rs.w 1	; Interlaced scroll Y (odd line)
raster_interlace_scroll		rs.w 1
raster_interlace_odd		rs.b 1	; Odd/even raster line
raster_water_level			rs.b 1	; Current water level, sets HINT frequency

__padding80				rs.b 2

; ************************************
; Audio
; ************************************
audio_clock				rs.l 1
audio_current_track		rs.l 1
audio_queued_tracks		rs.l Track_Type_COUNT
audio_current_sfx		rs.l 1
audio_track_stop_timer	rs.w 1
audio_volume_global		rs.b 1
audio_fader_speed		rs.b 1
audio_playback_locked	rs.b 1

__padding01				rs.b 3

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
vdp_queue_produceridx rs.w 1
vdp_queue_consumeridx rs.w 1

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
vram_addr_systemfontb rs.w 1
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
TimerFailFade		rs.l 1
TimerFailReset		rs.l 1
TimerDemoReset      rs.l 1

; ************************************
; World
; ************************************
PhysicsWorld		rs.b PhysicsWorld_Struct_Size
CurrentLevel		rs.l 1
PreviousLevel		rs.l 1
CurrentActDatas		rs.l LevelMaxActs
CurrentLevelNumActs	rs.w 1

; ************************************
; Time of day
; ************************************
TimeOfDayShiftDelay rs.w 1
TimeOfDayPalettes   rs.l TimeOfDay_NumCycles
TimeOfDay           rs.b 1	; TimeOfDay_Dawn/Day/Dusk/Night
TimeOfDayEnabled    rs.b 1

__padding03			rs.b 2

; ************************************
; Weather
; ************************************
WindAccel			rs.w 1
WindMaxStrength		rs.w 1
WindDelayTimer		rs.w 1
WindDurationTimer	rs.w 1
WindRandStrengthMin	rs.w 1
WindRandStrengthMax	rs.w 1
WindRandDurationMin	rs.w 1
WindRandDurationMax	rs.w 1
WindRandDelayMin	rs.w 1
WindRandDelayMax	rs.w 1
RainSpritePositions	rs.l RainNumSprites*2

; ************************************
; Camera, V/H scroll and map streaming
; ************************************
WorldScrollX		    rs.l 1
WorldScrollY		    rs.l 1
CameraWorldPosX		    rs.l 1
CameraWorldPosY		    rs.l 1
CameraPrevPosX		    rs.l 1
CameraPrevPosY		    rs.l 1
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
DirtyPalettesMask      rs.b 1	; Marks palettes for DMA
UnderwaterDirtyPalettesMask rs.b 1	; Marks underwater effect conversion

__padding31            rs.b 2

; Global player addresses
Player1                rs.l 1
Player2                rs.l 1

; Current palettes (DMA'd at end of frame)
CurrentPalettes        rs.b (size_palette_b*num_palettes)

; Underwater palettes (DMA'd during HINT)
UnderwaterPalettes     rs.b (size_palette_b*num_palettes)

; Palette lerping
PaletteLerp_Array      rs.b (PaletteLerp_Struct_Size*num_palettes)

; Switching colour palettes - player 1
SwitchingPalettesP1    rs.l NumSwitchingColours

; Current game state
GameStatePtr           rs.l 1

; Game state stack
GameStateStackPtr      rs.l 1
GameStateStack         rs.l (GameStateStackSize)

; Game state data
	IFND DEBUG
GameStateLogoData			 rs.b LogoState_Struct_Size
GameStateMainMenuData		 rs.b MainMenuState_Struct_Size
GameStatePauseData		 	 rs.b PauseState_Struct_Size
GameStateEndLevelData		 rs.b EndLevelState_Struct_Size
GameStateEndLevelScoreData	 rs.b EndLevelScore_Struct_Size

	IF INCLUDE_LEVELSELECT
GameStateLevelSelectData	 rs.b LevelSelectState_Struct_Size
	ENDIF

	IF INCLUDE_SOUNDTEST
GameStateSoundTestData		 rs.b SoundTestState_Struct_Size
	ENDIF
	ENDIF

; Potential flue occupants list
FluePotentialOccupants		 rs.l Flue_MaxPotentialOccupants
FlueNumPotentialOccupants	 rs.b 1

__padding06				     rs.b 3

; ************************************
; Checkpoints
; ************************************
LastActivatedCheckpoint      rs.l 1
LastSaveVersion				 rs.w 1
__padding041			     rs.b 2
CheckpointSerialiseMemBlock  rs.b CheckpointSerialiseBlockSize

; ************************************
; Level/act transitions
; ************************************
EndOfActVelocity			 rs.l 1
EndOfActAcceleration		 rs.w 1

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

; ************************************
; Audio
; ************************************
AmbientSFX				 rs.l 6 ; AmbientSFXCount
AmbientSFXTimer			 rs.w 1
BGMOffTimer				 rs.w 1

; ************************************
; Shared VRAM
; ************************************
SharedVRAM_Lift			rs.w 1
SharedVRAM_Stone		rs.w 1
SharedVRAM_DjakCage		rs.w 1
SharedVRAM_Crate		rs.w 1
SharedVRAM_Log			rs.w 1

; ************************************
; Level runtime data
; ************************************
	IF INCLUDE_LEVEL_1
LevelData_L1A1			 rs.b L1A1Data_Struct_Size
LevelData_L1A2			 rs.b l1a2Data_Struct_Size
LevelData_L1A3			 rs.b l1a3Data_Struct_Size
LevelData_L1A4			 rs.b l1a4Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_2
LevelData_L2A1			 rs.b L2A1Data_Struct_Size
LevelData_L2A2			 rs.b L2A2Data_Struct_Size
LevelData_L2A3			 rs.b L2A3Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_3
LevelData_L3A1			 rs.b L3A1Data_Struct_Size
LevelData_L3A2			 rs.b L3A2Data_Struct_Size
LevelData_L3A3			 rs.b L3A3Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_4
LevelData_L4A1			 rs.b L4A1Data_Struct_Size
LevelData_L4A2			 rs.b L4A2Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_5
LevelData_L5A1			 rs.b L5A1Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_6
LevelData_L6A1			 rs.b L6A1Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_7
LevelData_L7A1			 rs.b L7A1Data_Struct_Size
	ENDIF

; ************************************
; Debug stuff
; ************************************
	IFND FINAL
DebugMoveObjectMode      rs.b 1
__padding05			     rs.b 3
	ENDIF

; ************************************
; Entity linked lists by function
; ************************************
	LINKED_LIST EntityUpdate
	LINKED_LIST EntityRender
	LINKED_LIST EntitySerialise

; ************************************
; Entity lists by type
; ************************************
	LINKED_LIST Characters	 	; Characters
	LINKED_LIST Platforms	 	; Platforms
	LINKED_LIST Barriers	 	; Walls
	LINKED_LIST MovingPlatforms	; Platforms that mvoed this frame
	LINKED_LIST MovingBarriers	; Walls that moved this frame
	LINKED_LIST PushableObjs 	; Pushable objects
	LINKED_LIST AIMarkers	 	; AI markers

; ************************************
; Entities
; ************************************

; Global entity RAM pool
	RAMPOOL Pool_Entities,EntityRAMPoolSize

; Entity pools start addrs
EntityPoolStart_Nymn        rs.l 1
EntityPoolStart_Echo        rs.l 1
EntityPoolStart_Actor       rs.l 1
EntityPoolStart_AIMarker    rs.l 1
EntityPoolStart_Bridge      rs.l 1
EntityPoolStart_Button      rs.l 1
EntityPoolStart_Cart        rs.l 1
EntityPoolStart_Crate       rs.l 1
EntityPoolStart_Cogs        rs.l 1
EntityPoolStart_DjakkCage   rs.l 1
EntityPoolStart_Flue        rs.l 1
EntityPoolStart_Fuzzl       rs.l 1
EntityPoolStart_FuzzlCage   rs.l 1
EntityPoolStart_Generator   rs.l 1
EntityPoolStart_Leaf        rs.l 1
EntityPoolStart_Log         rs.l 1
EntityPoolStart_Nest        rs.l 1
EntityPoolStart_Pillar      rs.l 1
EntityPoolStart_TriggerBox  rs.l 1
EntityPoolStart_Checkpoint  rs.l 1
EntityPoolStart_WaterBody   rs.l 1
EntityPoolStart_Location    rs.l 1
EntityPoolStart_Monster     rs.l 1
EntityPoolStart_Djrake      rs.l 1
EntityPoolStart_Boulder     rs.l 1
EntityPoolStart_Firefly     rs.l 1
EntityPoolStart_Lift        rs.l 1
EntityPoolStart_Rope        rs.l 1
EntityPoolStart_BouncePlant rs.l 1
EntityPoolStart_Stone       rs.l 1
EntityPoolStart_Deathbox    rs.l 1
EntityPoolStart_Wyrm        rs.l 1
EntityPoolStart_UIWindow    rs.l 1

EntityCount_Actor       rs.w 1
EntityCount_AIMarker    rs.w 1
EntityCount_Bridge      rs.w 1
EntityCount_Button      rs.w 1
EntityCount_Cart        rs.w 1
EntityCount_Crate       rs.w 1
EntityCount_Cogs        rs.w 1
EntityCount_DjakkCage   rs.w 1
EntityCount_Echo        rs.w 1
EntityCount_Monster     rs.w 1
EntityCount_Djrake      rs.w 1
EntityCount_Firefly     rs.w 1
EntityCount_Flue        rs.w 1
EntityCount_Fuzzl       rs.w 1
EntityCount_FuzzlCage   rs.w 1
EntityCount_Generator   rs.w 1
EntityCount_Leaf        rs.w 1
EntityCount_Log         rs.w 1
EntityCount_Nest        rs.w 1
EntityCount_Nymn        rs.w 1
EntityCount_Pillar      rs.w 1
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
EntityCount_Wyrm        rs.w 1
EntityCount_UIWindow    rs.w 1

; ************************************
; VFX
; ************************************

EntityArray_VFX         rs.b (VfxObj_Struct_Size*VFX_MaxEntities)
EntityCount_VFX         rs.w 1

; ************************************
; UI
; ************************************
WidgetArray_Text		rs.b (UIWidgetText_Struct_Size*UIWidgetText_MaxWidgets)
WidgetArray_Cursor		rs.b (UIWidgetCursor_Struct_Size*UIWidgetCursor_MaxWidgets)

WidgetCount_Text		rs.w 1
WidgetCount_Cursor		rs.w 1

reserved_ram_size		rs.b 0

	inform 0,"-----------------------------------"
	inform 0,"Reserved RAM: %d bytes (%dkb)", (reserved_ram_size-0x00FF0000), ((reserved_ram_size-0x00FF0000)/1024)
	inform 0,"-----------------------------------"
	inform 0,""

__endOfMemoryMap	rs.b 0
