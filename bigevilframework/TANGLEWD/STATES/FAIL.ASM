;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Fail.asm - Level failed game state
;==============================================================	

; ************************************
; Function table
; ************************************
GameStateFail:
	dc.l Fail_Enter
	dc.l Fail_Exit
	dc.l Fail_Update
	dc.l Fail_Render
	dc.l 0x0
	
; ************************************
; Constants
; ************************************
GameStateFail_FadeDownPalette	equ palette_fade_black
GameStateFail_FadeDownSpeed		equ (0x1<<fade_frame_shift) ; Subframes (1 frames per tick)
GameStateFail_FadeDelayTimer	equ 0x0080
GameStateFail_ResetTimer		equ 0x0100
	
Fail_Enter:

	; Reset timers
	MOVE_NTSC_L GameStateFail_FadeDelayTimer, TimerFailFade, d0
	MOVE_NTSC_L GameStateFail_ResetTimer, TimerFailReset, d0

	; Set player sprite high prio (so fading environment doesn't mask)
	move.l (Player1), a3
	move.b #0x1, SpriteObj_Priority(a3)
	
	rts
	
Fail_Exit:
	rts
	
Fail_Update:

	; Set current level ptr
	move.l (CurrentLevel), a1

	; Update physics
	jsr    PhysicsWorldPreStep
	
	; Update game objects
	jsr    EntityUpdateAll

	; Update weather (to correct palettes after thunder flash)
	jsr    WeatherUpdate
	
	; Update fade down timer
	move.l (TimerFailFade), d0
	beq    @FadeStarted
	subq.l #0x1, d0
	move.l d0, TimerFailFade
	tst.l  d0
	bne    @TimerRunning

	; Check if palette lerp already active
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @TimerRunning

	; Begin fade down - all palettes except player
	move.l #GameStateFail_FadeDownPalette, a0
	move.w #GameStateFail_FadeDownSpeed, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	move.b #PaletteId_World0, d0
	jsr    GameScenePaletteFadeTo

	move.l #GameStateFail_FadeDownPalette, a0
	move.w #GameStateFail_FadeDownSpeed, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	move.b #PaletteId_Monster, d0
	jsr    GameScenePaletteFadeTo

	move.l #GameStateFail_FadeDownPalette, a0
	move.w #GameStateFail_FadeDownSpeed, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	move.b #PaletteId_Fuzzl, d0
	jsr    GameScenePaletteFadeTo

	@FadeStarted:

	; Update reset timer
	move.l (TimerFailReset), d0
	subq.l #0x1, d0
	move.l d0, TimerFailReset
	tst.l  d0
	bne    @TimerRunning

	; Restart gameplay state
	lea    GameStateGameplay, a0
	jsr    GameStateEnter
	
	@TimerRunning:
	
	rts
	
Fail_Render:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts
	