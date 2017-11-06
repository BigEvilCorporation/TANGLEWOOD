;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   cargolft.asm - Big cargo lift for goldmine entry/exit
;==============================================================

; Constants
CargoLift_Width        equ 0x0050
CargoLift_Height       equ 0x0070
CargoLift_ProbeFloorX  equ (CargoLift_Width/2)
CargoLift_ProbeFloorY  equ (CargoLift_Height-8)
CargoLift_FloorHeight  equ 0x8

; Struct
	rsset (Lift_Struct_Size)
;---------------------------------
CargoLift_ManualGfxLoad rs.b 1
;---------------------------------
CargoLift_Struct_Pad   rs.b 3	; Alignment padding
CargoLift_Struct_Size  rs.b 0

CargoLiftInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    LiftInit
	
	; Add to count
	addq.w #0x1, EntityCount_CargoLift

	; Initialise
	move.w #CargoLift_Width, Entity_Width(a0)
	move.w #CargoLift_Height, Entity_Height(a0)
	move.b #0x0, Lift_RestrictHeight(a0)
	move.b #0x0, CargoLift_ManualGfxLoad(a0)

	; Re-initialise floor probe
	move.w #CargoLift_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w #CargoLift_ProbeFloorY, PhysicsObj_FloorProbeY(a0)

	; Re-initialise bounds
	move.w #CargoLift_Width, PhysicsObj_BoundsWidth(a0)
	move.w #CargoLift_Height, PhysicsObj_BoundsHeight(a0)

	; Re-initialise platform
	move.w #CargoLift_FloorHeight, Lift_PlatformOffsetY(a0)
	lea    Lift_Platform(a0), a2
	move.w #CargoLift_Width, Platform_Width(a2)

	rts

CargoLiftLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load lift
	tst.b CargoLift_ManualGfxLoad(a0)
	bne   @ManualLoad

	SPRITE_LOAD_DEFAULT cargolft,cargo_lift,PaletteId_World0,0x0

	@ManualLoad:

	; Load rope
	PUSHL a0
	lea   Lift_RopeSegment(a0), a0
	SPRITE_LOAD_DEFAULT rope,rope,PaletteId_World0,0x0
	POPL  a0

	; Get origin
	; If heading down, offset origin to top, disable gravity
	move.w Entity_WorldPosY(a0), Lift_TopLimit(a0)
	move.w Entity_WorldPosY(a0), Lift_BottomLimit(a0)
	add.w  #Lift_RopeLengthDefault, Lift_BottomLimit(a0)

	rts
	