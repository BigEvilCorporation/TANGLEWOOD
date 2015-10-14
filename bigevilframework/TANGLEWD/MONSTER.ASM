;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   monster.asm - Monster specific movement and mechanics
;==============================================================

; ************************************
; Constants
; ************************************
Monster_MaxGameObjs equ 0x1

;Monster_Width	equ 0x0080
;Monster_Height	equ 0x0060
Monster_Width	equ 0x0020
Monster_Height	equ 0x0020

Monster_MaxVelXWalk equ 0x0100   ; Max X walking velocity
Monster_MaxVelXRun  equ 0x0300   ; Max X running velocity
Monster_MaxVelYUp	equ 0x0600   ; Max Y velocity up
Monster_MaxVelYDown	equ 0x0600   ; Max Y velocity down
Monster_AccelWalk   equ 0x0004   ; Walking acceleration
Monster_AccelRun    equ 0x0008   ; Running acceleration
Monster_DecelIdle   equ 0x0010   ; Deceleration if left alone
Monster_DecelForced equ 0x0020   ; Deceleration if input opposite direction
Monster_JumpVel	    equ 0x0600   ; Jump velocity impulse
Monster_JumpCancelVel equ 0x0100 ; Velocity to cancel jump
Monster_MaxGrabUpVel  equ 0x0300 ; Max up velocity character can grab a ledge (no limit on down vel)

Monster_StepHeight		equ 0x3
Monster_ProbeFloorX		equ (Monster_Width/2)  ; Floor detection probe position X
Monster_ProbeFloorY		equ (Monster_Height-Monster_StepHeight)   ; Floor detection probe position Y
Monster_ProbeFloorLen	equ Monster_StepHeight*2  ; Floor probe length (multiplied by Y velocity)
Monster_ProbeLedgeX		equ 0x1F	; Ledge detection probe position X
Monster_ProbeLedgeY		equ 0x02	; Ledge detection probe position Y

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;--------------------------
Monster_Colour        rs.b 1
;--------------------------
Monster_Struct_Pad    rs.b 3
Monster_Struct_Size   rs.b 0

; ************************************
; Subroutines
; ************************************
MonsterInit:
	; Base functionality
	jsr CharacterInit

	; Default properties
	move.w  #Monster_Width, GameObj_Width(a0)
	move.w  #Monster_Height, GameObj_Height(a0)
	move.w  #Monster_MaxVelXRun, GameObj_MaxVelX(a0)
	move.w  #Monster_MaxVelYUp, GameObj_MaxVelYUp(a0)
	move.w  #Monster_MaxVelYDown, GameObj_MaxVelYDown(a0)
	move.w  #Monster_DecelIdle, GameObj_DecelX(a0)
	move.w  #Monster_ProbeFloorX, GameObj_FloorProbeX(a0)
	move.w  #Monster_ProbeFloorY, GameObj_FloorProbeY(a0)
	move.w  #Monster_ProbeFloorLen, GameObj_FloorProbeLen(a0)

	move.w  #Monster_StepHeight, Character_StepHeight(a0)
	move.w  #Monster_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.w  #Monster_MaxVelXRun, Character_MaxVelXRun(a0)
	move.w  #Monster_AccelWalk, Character_AccelWalk(a0)
	move.w  #Monster_AccelRun, Character_AccelRun(a0)
	move.w  #Monster_DecelIdle, Character_DecelIdle(a0)
	move.w  #Monster_DecelForced, Character_DecelForced(a0)
	move.w  #Monster_JumpVel, Character_JumpVel(a0)
	move.w  #Monster_JumpCancelVel, Character_JumpCancelVel(a0)
	move.w  #Monster_MaxGrabUpVel, Character_MaxGrabUpVel(a0)
	move.w  #Monster_ProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #Monster_ProbeLedgeY, Character_ProbeLedgeY(a0)

	; Default state
	move.b  #0x1, GameObj_Active(a0)
	move.b  #0x1, GameObj_Visible(a0)
	move.b  #ColourRed, Monster_Colour(a0)

	; Setup default character animations
	move.l a0, a2
	add.l  #Character_Animations, a2

	; Idle
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Idle), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)
	
	; Run
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Run), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	; Walk
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Walk), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	; Jump
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Jump), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	; Hang
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Hang), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	; Push
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Push), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	rts

MonsterUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	;jsr CharacterUpdate
	
	rts

MonsterDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterDraw
	
	rts
