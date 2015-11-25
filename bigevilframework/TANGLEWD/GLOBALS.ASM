;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   globals.asm - Game constants
;==============================================================

; Art decompresioj buffer size (needs to be at least the size of largest asset)
ArtScratchBufferSize	 equ (1024*10)

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

; Subframes
SubframesPerFrame 		 equ 0x0100	; Uses bit shift to transform - don't change

; World
Gravity			         equ 0x0030

	; TODO: add to level params
	IFD DEBUG
GroundHeightScreen       equ (map_tst1_height*8)+SpritePlaneBorderY+Player1Height
	ELSE
GroundHeightScreen       equ (map_lvl1_height*8)+SpritePlaneBorderY+Player1Height
	ENDIF

GroundHeightWorld  		 equ GroundHeightScreen*SubpixelsPerPixel

; Time of day
TimeOfDayCycleSpeed		 equ (0x1<<0x8) ; Subframes (1 frame per tick)
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
MapStreamWidth	 		 equ vdp_plane_width
MapStreamHeight	 		 equ vdp_plane_height

; World switching colour types
ColourDrained			 equ 0x0
ColourOrange			 equ 0x1
ColourRed				 equ 0x2
ColourBlue				 equ 0x3
ColourGreen				 equ 0x4
ColourYellow			 equ 0x5
NumSwitchingColours		 equ 0x6

; Global player addresses
Player1 				 equ (EntityArray_Players)
Player2 				 equ (EntityArray_Players+Player_Struct_Size)
