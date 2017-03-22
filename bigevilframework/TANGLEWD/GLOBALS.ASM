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

; Sprite plane border (pixels/nybbles)
SpritePlaneWidth		 equ 0x0200
SpritePlaneHeight		 equ 0x0200
SpritePlaneBorderX       equ 0x0080 ; Note: Only left border
SpritePlaneBorderY       equ 0x0080 ; Note: Only top border

; Plane A/B border (pixels/nybbles)
ScrollPlaneBorderX       equ (vdp_plane_width-screen_width)/2
ScrollPlaneBorderY       equ (vdp_plane_height-screen_height)/2

; Sprite/subsprite dimensions
SubspriteMaxWidth		equ 0x20
SubspriteMaxHeight		equ 0x20

; Subpixels
SubpixelsPerPixel 		 equ 0x0100	; Uses bit shift to transform - don't change
SubpixelShift			 equ 0x8

; Subframes
SubframesPerFrame 		 equ 0x0100	; Uses bit shift to transform - don't change
SubframeShift			 equ 0x8

; World
Gravity			         equ 0x0030

	; TODO: add to level params
	IFD DEBUG
GroundHeightScreen       equ (map_tst1_height*8)+SpritePlaneBorderY+Player1Height
	ELSE
GroundHeightScreen       equ (map_L1A2_height*8)+SpritePlaneBorderY+Player1Height
	ENDIF

GroundHeightWorld  		 equ GroundHeightScreen*SubpixelsPerPixel

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
CameraStartPosWorldX	 equ ((screen_width/2)*SubpixelsPerPixel)
CameraStartPosWorldY	 equ ((screen_height/2)*SubpixelsPerPixel)
CameraScrollSafeBorderX  equ ((screen_width/2)*SubpixelsPerPixel)
CameraScrollSafeBorderY	 equ ((screen_height/2)*SubpixelsPerPixel)

; Streaming
MapStreamBorderX		 equ 0x2
MapStreamBorderY		 equ 0x1
MapStreamWidth	 		 equ (screen_width/8/map_block_width)+(MapStreamBorderX)
MapStreamHeight	 		 equ (screen_height/8/map_block_height)+(MapStreamBorderY)

; Peek down/up
CameraPeekSpeed	         equ 0x02*SubpixelsPerPixel
CameraPeekMaxDist	     equ 0x30*SubpixelsPerPixel

; Stamp/scene animations
MaxStampAnims			 equ 0x8

; World switching colour types
ColourDrained			 equ 0x0
ColourOrange			 equ 0x1
ColourRed				 equ 0x2
ColourBlue				 equ 0x3
ColourGreen				 equ 0x4
ColourYellow			 equ 0x5
NumSwitchingColours		 equ 0x6

; Global player addresses
Player1 				 equ (EntityArray_Nymn)
Player2 				 equ (EntityArray_Echo)

; Initial level/state
;InitialLevel			 equ l1a1_HarlequinForestAct1
;InitialLevel			 equ l1a2_HarlequinForestAct2
InitialLevel			 equ l1a4_HarlequinForestAct4
;InitialLevel			 equ l2a1_StormWarningAct1
;InitialLevel			 equ l3a1_HeritageAct1
;InitialLevel			 equ l4a1_TetheredAct1
;InitialLevel			 equ l6a1_DeadwoodAct1
;InitialLevel			 equ Lvl_TestLift

	IFD DEBUG
InitialState			 equ  GameStateGameplay
	ELSE
;InitialState			 equ  GameStateLogos
InitialState			 equ  GameStateGameplay
	ENDIF

; Checkpoint save
CheckpointSerialiseBlockSize equ 0x0400 ; 1kb

; Demo timer
DemoTimeout				 equ 0 ; (60*60*3)

; Game state stack
GameStateStackSize		 equ 0x4

; Debug button combos
	IFND FINAL
DebugButtonCombo_Profiler		equ 0x3000 ;(pad_button_a|pad_button_start)								; A+Start = profile frame
DebugButtonCombo_CompleteLevel	equ 0x3010 ;(pad_button_a|pad_button_b|pad_button_start)				; A+B+Start = complete level
DebugButtonCombo_MoveObject		equ 0x2030 ;(pad_button_b|pad_button_c|pad_button_start)				; B+C+Start = move object
DebugButtonCombo_KillPlayer		equ 0x3030 ;(pad_button_a|pad_button_b|pad_button_c|pad_button_start)	; A+B+C+Start = kill player

DebugMoveMode_Speed			equ 0x0060
DebugMoveMode_SpeedMulA		equ 0x0A
DebugMoveMode_SpeedMulB		equ 0x04
	ENDIF
	