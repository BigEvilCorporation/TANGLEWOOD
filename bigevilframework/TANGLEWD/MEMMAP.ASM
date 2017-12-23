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

	RS_ALIGN

vram_pools				rs.b (VRAMPool_Struct_Size*VRAMPoolCount)

; ************************************
; Raster effect data
; ************************************
raster_effect_update		rs.l 1	; Current effect update func
raster_effect_end			rs.l 1	; Current effect finish func
raster_interlace_scroll1_x	rs.w 1	; Interlaced scroll X (even line)
raster_interlace_scroll1_y	rs.w 1	; Interlaced scroll Y (even line)
raster_interlace_scroll2_x	rs.w 1	; Interlaced scroll X (odd line)
raster_interlace_scroll2_y	rs.w 1	; Interlaced scroll Y (odd line)
raster_interlace_scroll		rs.w 1
raster_interlace_odd		rs.b 1	; Odd/even raster line
raster_water_level			rs.b 1	; Current water level, sets HINT frequency
raster_letterbox_top		rs.b 1	; Letterbox mode top border
raster_letterbox_bottom		rs.b 1	; Letterbox mode bottom border
raster_letterbox_counter	rs.b 1	; Letterbox HINT counter
raster_letterbox_speed		rs.b 1	; Letterbox animate speed

	RS_ALIGN

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

	RS_ALIGN

; ************************************
; Profiler
; ************************************
	IFD DEBUG
profile_pending		  rs.b 1
profile_finished	  rs.b 1
profile_active		  rs.b 1
	RS_ALIGN
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
vdp_dma_queue		  rs.b (VDPDMAQueue_Job_size*VDPDmaQueue_MaxSize)
vdp_dma_queue_next    rs.l 1

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

	RS_ALIGN

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
EntityCount			rs.b 1

	RS_ALIGN

; ************************************
; Time of day
; ************************************
TimeOfDayShiftDelay rs.w 1
TimeOfDayPalettes   rs.l TimeOfDay_NumCycles
TimeOfDay           rs.b 1	; TimeOfDay_Dawn/Day/Dusk/Night
TimeOfDayEnabled    rs.b 1

	RS_ALIGN

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
RainParams			rs.l 1
Thunder				rs.b Thunder_Struct_Size
WindSFXEnabled		rs.b 1

	RS_ALIGN

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
CameraLerpFromObj  rs.l 1
CameraLerpFromX  rs.l 1
CameraLerpFromY  rs.l 1
CameraLerpTime    rs.w 1
CameraLerpSpeed   rs.w 1
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
CameraWorldGridIndexTL  rs.w 1	; Current camera world grid index (top left)

	RS_ALIGN

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

	RS_ALIGN

; Global player addresses
Player1                rs.l 1
Player2                rs.l 1

; Current palettes (DMA'd at end of frame)
CurrentPalettes        rs.b (size_palette_b*num_palettes)

; Scene palettes (for effects to revert to when finished)
ScenePalettes          rs.b (size_palette_b*num_palettes)

; Scene palette addresses (for objects that auto-load palettes to determine if valid)
ScenePaletteAddrs      rs.l num_palettes

; Underwater palettes (DMA'd during HINT)
UnderwaterPalettes     rs.b (size_palette_b*num_palettes)

; Palette lerping
PaletteLerp_Array      rs.b (PaletteLerp_Struct_Size*num_palettes)

; Switching colour palettes - player 1
SwitchingPalettesP1    rs.l NumSwitchingColours

; VFX flash timer
VFXFlashTimer          rs.w 1

; Current game state
GameStatePtr           rs.l 1

; Game state stack
GameStateStackPtr      rs.l 1
GameStateStack         rs.l (GameStateStackSize)

; Game state data
	IFND DEBUG
GameStateLogoData			 rs.b LogoState_Struct_Size
GameStateMainMenuData		 rs.b MainMenuState_Struct_Size
GameStatePasswordScreenData	 rs.b PasswordScreenState_Struct_Size
GameStatePauseData		 	 rs.b PauseState_Struct_Size
GameStateEndLevelData		 rs.b EndLevelState_Struct_Size
GameStateEndLevelScoreData	 rs.b EndLevelScore_Struct_Size
GameStateCreditsData		 rs.b Credits_Struct_Size

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

	RS_ALIGN

; ************************************
; Checkpoints
; ************************************
CurrentSavePassword			 rs.l 1
LastActivatedCheckpoint      rs.l 1
LastSaveVersion				 rs.w 1
	RS_ALIGN
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

	RS_ALIGN

; Time slow effect palette backup
TimeSlowPaletteBackup	 rs.b (size_palette_b*num_palettes)

; Firefly count
FireflyPickupCountAct	 rs.w 1	; Fireflies picked up in current act
FireflyPickupCountGame	 rs.w 1	; Total fireflies picked up in game

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
; Cutscenes
; ************************************
	LINKED_LIST ActiveCutscenes

; ************************************
; Autotest
; ************************************
	IFND FINAL
AutotestData			 rs.b Autotest_Struct_Size
	ENDIF

; ************************************
; Shared VRAM
; ************************************
SharedVRAM_Start		rs.b 0

SharedVRAM_Lift			rs.w 1
SharedVRAM_Cargolft		rs.w 1
SharedVRAM_Stone		rs.w 1
SharedVRAM_DjakCage		rs.w 1
SharedVRAM_Crate		rs.w 1
SharedVRAM_Log			rs.w 1
SharedVRAM_Generatr		rs.w 1
SharedVRAM_Cogs			rs.w 1
SharedVRAM_Bridge		rs.w 1
SharedVRAM_Dropbrig		rs.w 1
SharedVRAM_Winch		rs.w 1
SharedVRAM_Stalact		rs.w 1
SharedVRAM_Pillar		rs.w 1
SharedVRAM_Trap			rs.w 1
SharedVRAM_Firefly		rs.w 1
SharedVRAM_Skivv		rs.w 1
SharedVRAM_Scirus		rs.w 1
SharedVRAM_Hogg			rs.w 1

SharedVRAM_End			rs.b 0

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
LevelData_L4A3			 rs.b L4A3Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_5
LevelData_L5A1			 rs.b L5A1Data_Struct_Size
LevelData_L5A2			 rs.b L5A2Data_Struct_Size
LevelData_L5A3			 rs.b L5A3Data_Struct_Size
LevelData_L5A4			 rs.b L5A4Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_6
LevelData_L6A1			 rs.b L6A1Data_Struct_Size
LevelData_L6A2			 rs.b L6A2Data_Struct_Size
LevelData_L6A3			 rs.b L6A3Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_7
LevelData_L7A1			 rs.b L7A1Data_Struct_Size
LevelData_L7A2			 rs.b L7A2Data_Struct_Size
LevelData_L7A3			 rs.b L7A3Data_Struct_Size
	ENDIF

	IF INCLUDE_LEVEL_8
LevelData_L8A1			 rs.b L8A1Data_Struct_Size
LevelData_L8A2			 rs.b L8A2Data_Struct_Size
LevelData_L8A3			 rs.b L8A3Data_Struct_Size
LevelData_L8A4			 rs.b L8A4Data_Struct_Size
LevelData_L8A5			 rs.b L8A5Data_Struct_Size
LevelData_L8A6			 rs.b L8A6Data_Struct_Size
	ENDIF

; ************************************
; Debug stuff
; ************************************
	IFND FINAL
DebugMoveObjectMode      rs.b 1
	RS_ALIGN
	ENDIF

; ************************************
; Entity linked lists by function
; ************************************
	LINKED_LIST EntityUpdate
	LINKED_LIST EntityRender
	LINKED_LIST EntitySerialise
	LINKED_LIST EntityWorldGrid

; ************************************
; Entity lists by type
; ************************************
	LINKED_LIST PhysicsObjs		; Physics objects
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

EntityPoolMemStart			rs.b 0

; Entity pools start addrs
EntityPoolStart_Nymn        rs.l 1
EntityPoolStart_Echo        rs.l 1
EntityPoolStart_Actor       rs.l 1
EntityPoolStart_AIMarker    rs.l 1
EntityPoolStart_Borgus      rs.l 1
EntityPoolStart_Bridge      rs.l 1
EntityPoolStart_Button      rs.l 1
EntityPoolStart_CargoLift   rs.l 1
EntityPoolStart_Cart        rs.l 1
EntityPoolStart_Crate       rs.l 1
EntityPoolStart_Cogs        rs.l 1
EntityPoolStart_Demon       rs.l 1
EntityPoolStart_DjakkCage   rs.l 1
EntityPoolStart_Djubb       rs.l 1
EntityPoolStart_Flue        rs.l 1
EntityPoolStart_Fuzzl       rs.l 1
EntityPoolStart_FuzzlCage   rs.l 1
EntityPoolStart_Generator   rs.l 1
EntityPoolStart_Hogg        rs.l 1
EntityPoolStart_Ladder      rs.l 1
EntityPoolStart_Leaf        rs.l 1
EntityPoolStart_Log         rs.l 1
EntityPoolStart_Nest        rs.l 1
EntityPoolStart_Pillar      rs.l 1
EntityPoolStart_Stalactite  rs.l 1
EntityPoolStart_TriggerBox  rs.l 1
EntityPoolStart_Checkpoint  rs.l 1
EntityPoolStart_WaterBody   rs.l 1
EntityPoolStart_Location    rs.l 1
EntityPoolStart_Monster     rs.l 1
EntityPoolStart_Djrake      rs.l 1
EntityPoolStart_Boulder     rs.l 1
EntityPoolStart_Firefly     rs.l 1
EntityPoolStart_Lift        rs.l 1
EntityPoolStart_Lock        rs.l 1
EntityPoolStart_Longboat    rs.l 1
EntityPoolStart_Pool        rs.l 1
EntityPoolStart_Rope        rs.l 1
EntityPoolStart_Raft        rs.l 1
EntityPoolStart_BouncePlant rs.l 1
EntityPoolStart_Scirus      rs.l 1
EntityPoolStart_Scrap       rs.l 1
EntityPoolStart_Skivv       rs.l 1
EntityPoolStart_Stone       rs.l 1
EntityPoolStart_Trap        rs.l 1
EntityPoolStart_Deathbox    rs.l 1
EntityPoolStart_Winch       rs.l 1
EntityPoolStart_WindFlue    rs.l 1
EntityPoolStart_Wyrm        rs.l 1
EntityPoolStart_UIWindow    rs.l 1

EntityCount_Actor       rs.w 1
EntityCount_AIMarker    rs.w 1
EntityCount_Borgus      rs.w 1
EntityCount_Bridge      rs.w 1
EntityCount_Button      rs.w 1
EntityCount_CargoLift   rs.w 1
EntityCount_Cart        rs.w 1
EntityCount_Crate       rs.w 1
EntityCount_Cogs        rs.w 1
EntityCount_Demon       rs.w 1
EntityCount_DjakkCage   rs.w 1
EntityCount_Djubb       rs.w 1
EntityCount_Echo        rs.w 1
EntityCount_Monster     rs.w 1
EntityCount_Djrake      rs.w 1
EntityCount_Firefly     rs.w 1
EntityCount_Flue        rs.w 1
EntityCount_Fuzzl       rs.w 1
EntityCount_FuzzlCage   rs.w 1
EntityCount_Generator   rs.w 1
EntityCount_Hogg        rs.w 1
EntityCount_Ladder      rs.w 1
EntityCount_Leaf        rs.w 1
EntityCount_Log         rs.w 1
EntityCount_Lock        rs.w 1
EntityCount_Nest        rs.w 1
EntityCount_Nymn        rs.w 1
EntityCount_Pillar      rs.w 1
EntityCount_Stalactite  rs.w 1
EntityCount_Boulder     rs.w 1
EntityCount_TriggerBox  rs.w 1
EntityCount_Checkpoint  rs.w 1
EntityCount_WaterBody   rs.w 1
EntityCount_Location    rs.w 1
EntityCount_Longboat    rs.w 1
EntityCount_Lift        rs.w 1
EntityCount_Pool        rs.w 1
EntityCount_Rope        rs.w 1
EntityCount_Raft        rs.w 1
EntityCount_BouncePlant	rs.w 1
EntityCount_Scirus      rs.w 1
EntityCount_Scrap       rs.w 1
EntityCount_Skivv       rs.w 1
EntityCount_Stone       rs.w 1
EntityCount_Trap        rs.w 1
EntityCount_Deathbox    rs.w 1
EntityCount_Winch       rs.w 1
EntityCount_WindFlue    rs.w 1
EntityCount_Wyrm        rs.w 1
EntityCount_UIWindow    rs.w 1

; ************************************
; VFX
; ************************************

EntityArray_VFX         rs.b (VfxObj_Struct_Size*VFX_MaxEntities)
EntityCount_VFX         rs.w 1

EntityPoolMemEnd		rs.b 0

reserved_ram_size		rs.b 0

	inform 0,"-----------------------------------"
	inform 0,"Reserved RAM: 0x%h (%d) bytes (%dkb)", (reserved_ram_size-0x00FF0000), (reserved_ram_size-0x00FF0000), ((reserved_ram_size-0x00FF0000)/1024)
	inform 0,"-----------------------------------"
	inform 0,""

__endOfMemoryMap	rs.b 0
