;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   globals.asm - Game constants
;==============================================================	

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
TimeOfDayCycleDelay		 equ 0x0800     ; Frames

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
Player1 				 equ (GameObjArray_Players)
Player2 				 equ (GameObjArray_Players+Player_Struct_Size)

; Player dimensions
Player1Width	  equ 0x0028
Player1Height	  equ 0x0028

; Player starting positions
Player1StartPosScreenX equ (screen_width/2)-(Player1Width/2)
Player1StartPosScreenY equ GroundHeightScreen-Player1Height-0x80
;Player1StartPosScreenY equ (screen_height/2)-(Player1Height/2)
;Player1StartPosScreenY equ ScrollPlaneBorderY+0x20
Player1StartPosWorldX  equ Player1StartPosScreenX*SubpixelsPerPixel
Player1StartPosWorldY  equ Player1StartPosScreenY*SubpixelsPerPixel

; Player movement (all values must be divisors of SubpixelsPerPixel)
Player1MaxVelXWalk equ 0x0100 ; Player 1 max X walking velocity
Player1MaxVelXRun  equ 0x0300 ; Player 1 max X running velocity
Player1MaxVelYUp   equ 0x0600 ; Player 1 max Y velocity up
Player1MaxVelYDown equ 0x0600 ; Player 1 max Y velocity down
Player1AccelWalk   equ 0x0004 ; Player 1 walking acceleration
Player1AccelRun    equ 0x0008 ; Player 1 running acceleration
Player1DecelIdle   equ 0x0010 ; Player 1 deceleration if left alone
Player1DecelForced equ 0x0020 ; Player 1 deceleration if input opposite direction
Player1JumpVel	   equ 0x0600 ; Player 1 jump velocity impulse
Player1JumpCancelVel equ 0x0100 ; Player 1 velocity to cancel jump
Player1MaxGrabUpVel  equ 0x0300 ; Max up velocity player can grab a ledge (no limit on down vel)

; Player collision probes
Player1StepHeight	equ 0x3
Player1ProbeFloorX  equ (Player1Width/2)  ; Floor detection probe position X
Player1ProbeFloorY  equ (Player1Height-Player1StepHeight)   ; Floor detection probe position Y
Player1ProbeFloorLen equ Player1StepHeight*2  ; Floor probe length (multiplied by Y velocity)
Player1ProbeLedgeX  equ 0x1F			  ; Ledge detection probe position X
Player1ProbeLedgeY  equ 0x02			  ; Ledge detection probe position Y

; Player colour change
Player1ColourChangeSpeed equ 0x0030

; TEMP
Player1PushBorder equ 0xA*SubpixelsPerPixel

;==============================================================
;   Object counts
;==============================================================
Player_MaxGameObjs equ 0x1
