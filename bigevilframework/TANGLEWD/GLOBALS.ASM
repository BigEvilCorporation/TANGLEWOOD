;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   globals.asm - Game constants
;==============================================================

; Entity types
entity_type_boulder		 equ (1<<16)
entity_type_checkpoint	 equ (1<<17)
entity_type_firefly		 equ (1<<18)
entity_type_flue		 equ (1<<19)
entity_type_fuzzl		 equ (1<<20)
entity_type_leaf		 equ (1<<21)
entity_type_monster		 equ (1<<22)
entity_type_nest		 equ (1<<23)
entity_type_obstacle	 equ (1<<24)
entity_type_player		 equ (1<<25)
entity_type_trigger		 equ (1<<26)
entity_type_waterbody	 equ (1<<27)
entity_type_actor		 equ (1<<28)
entity_type_location	 equ (1<<29)
entity_type_lift		 equ (1<<30)
entity_type_rope		 equ (1<<31)

; Entity RAM pool size
EntityRAMPoolSize		 equ (1024*40)

; Subframes
SubframesPerFrame 		 equ 0x0100	; Uses bit shift to transform - don't change
SubframeShift			 equ 0x8

; World
DefaultGravity			 equ 0x00003000

; Faders
LevelFadeUpSpeed		 	equ (0x1<<fade_frame_shift) ; Subframes (1 frame per tick)
DefaultFadeSpeed		 	equ (0x1<<fade_frame_shift)
DefaultFadeTicksPerUpdate	equ 0x3

; Time of day
TimeOfDayCycleSpeed		 equ (0x1<<fade_frame_shift) ; Subframes (1 frame per tick)
TimeOfDayCycleDelay		 equ 0x0900     ; Frames

TimeOfDay_Day			 equ 0x0
TimeOfDay_Dusk			 equ 0x1
TimeOfDay_Night			 equ 0x2
TimeOfDay_Dawn			 equ 0x3
TimeOfDay_NumCycles		 equ 0x4

; Camera
CameraStartPosWorldX	 equ ((screen_width/2)*subpixels_per_pixel)
CameraStartPosWorldY	 equ ((screen_height/2)*subpixels_per_pixel)
CameraScrollSafeBorderX  equ (screen_width/2)
CameraScrollSafeBorderY	 equ (screen_height/2)

; Streaming
MapStreamBorderX		 equ 0x2
MapStreamBorderY		 equ 0x1
MapStreamWidth	 		 equ (screen_width/8/map_block_width)+(MapStreamBorderX)
MapStreamHeight	 		 equ (screen_height/8/map_block_height)+(MapStreamBorderY)

; Peek down/up
CameraPeekSpeed	         equ 0x02*subpixels_per_pixel
CameraPeekMaxDist	     equ 0x30*subpixels_per_pixel

; Stamp/scene animations
MaxStampAnims			 equ 0x8

; World switching colour types
ColourDrained			 equ 0x0
ColourOrange			 equ 0x1
ColourRed				 equ 0x2
ColourBlue				 equ 0x3
ColourGreen				 equ 0x4
ColourYellow			 equ 0x5
ColourWhite				 equ 0x6
NumSwitchingColours		 equ 0x7

; Checkpoint save
CheckpointSerialiseBlockSize equ 0x0400 ; 1kb

; Demo timer
DemoTimeout				 equ (60*60*1)

; Game state stack
GameStateStackSize		 equ 0x4

; Debug button combos
	IFND FINAL
DebugButtonCombo_Profiler		equ 0x3000 ;(pad_button_a|pad_button_start)								; A+Start = profile frame
DebugButtonCombo_CompleteLevel	equ 0x3010 ;(pad_button_a|pad_button_b|pad_button_start)				; A+B+Start = complete level
DebugButtonCombo_MoveObject		equ 0x2030 ;(pad_button_b|pad_button_c|pad_button_start)				; B+C+Start = move object
DebugButtonCombo_KillPlayer		equ 0x3030 ;(pad_button_a|pad_button_b|pad_button_c|pad_button_start)	; A+B+C+Start = kill player

DebugMoveMode_Speed			equ 0x006000
DebugMoveMode_SpeedMulA		equ 0x0A
DebugMoveMode_SpeedMulB		equ 0x04
	ENDIF
	
OUTPUT_STRUCT_SIZES	equ 0

	IF OUTPUT_STRUCT_SIZES
	inform 0,"Actor_Struct_Size: %d",Actor_Struct_Size
	inform 0,"AIMarker_Struct_Size: %d",AIMarker_Struct_Size
	inform 0,"Borgus_Struct_Size: %d",Borgus_Struct_Size
	inform 0,"Boulder_Struct_Size: %d",Boulder_Struct_Size
	inform 0,"Bridge_Struct_Size: %d",Bridge_Struct_Size
	inform 0,"Button_Struct_Size: %d",Button_Struct_Size
	inform 0,"CargoLift_Struct_Size: %d",CargoLift_Struct_Size
	inform 0,"Cart_Struct_Size: %d",Cart_Struct_Size
	inform 0,"Checkpoint_Struct_Size: %d",Checkpoint_Struct_Size
	inform 0,"Crate_Struct_Size: %d",Crate_Struct_Size
	inform 0,"Deathbox_Struct_Size: %d",Deathbox_Struct_Size
	inform 0,"DjakkCage_Struct_Size: %d",DjakkCage_Struct_Size
	inform 0,"Djubb_Struct_Size: %d",Djubb_Struct_Size
	inform 0,"Echo_Struct_Size: %d",Echo_Struct_Size
	inform 0,"Flue_Struct_Size: %d",Flue_Struct_Size
	inform 0,"FuzzlCage_Struct_Size: %d",FuzzlCage_Struct_Size
	inform 0,"Generator_Struct_Size: %d",Generator_Struct_Size
	inform 0,"Cogs_Struct_Size: %d",Cogs_Struct_Size
	inform 0,"Leaf_Struct_Size: %d",Leaf_Struct_Size
	inform 0,"Lift_Struct_Size: %d",Lift_Struct_Size
	inform 0,"Location_Struct_Size: %d",Location_Struct_Size
	inform 0,"Lock_Struct_Size: %d",Lock_Struct_Size
	inform 0,"Log_Struct_Size: %d",Log_Struct_Size
	inform 0,"Monster_Struct_Size: %d",Monster_Struct_Size
	inform 0,"Nest_Struct_Size: %d",Nest_Struct_Size
	inform 0,"Nymn_Struct_Size: %d",Nymn_Struct_Size
	inform 0,"Pillar_Struct_Size: %d",Pillar_Struct_Size
	inform 0,"BouncePlant_Struct_Size: %d",BouncePlant_Struct_Size
	inform 0,"Pool_Struct_Size: %d",Pool_Struct_Size
	inform 0,"Raft_Struct_Size: %d",Raft_Struct_Size
	inform 0,"RopeSegment_Struct_Size: %d",RopeSegment_Struct_Size
	inform 0,"Stalactite_Struct_Size: %d",Stalactite_Struct_Size
	inform 0,"Stone_Struct_Size: %d",Stone_Struct_Size
	inform 0,"Trap_Struct_Size: %d",Trap_Struct_Size
	inform 0,"TriggerBox_Struct_Size: %d",TriggerBox_Struct_Size
	inform 0,"WaterBody_Struct_Size: %d",WaterBody_Struct_Size
	inform 0,"Winch_Struct_Size: %d",Winch_Struct_Size
	inform 0,"WindFlue_Struct_Size: %d",WindFlue_Struct_Size
	inform 0,"Wyrm_Struct_Size: %d",Wyrm_Struct_Size
	ENDIF