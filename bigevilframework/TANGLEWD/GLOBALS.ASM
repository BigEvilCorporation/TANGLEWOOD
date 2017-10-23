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
	