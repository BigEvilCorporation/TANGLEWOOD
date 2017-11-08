;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   autotest.asm - Automated testing
;==============================================================

AutotestMode_LevelLoad	equ 0x0

Autotest_NextLevelTime	equ 0x0100

	rsset 0
;-----------------------------
Autotest_PadDataA		rs.w 1
Autotest_PadDataB		rs.w 1
Autotest_Timer			rs.w 1
Autotest_Mode			rs.b 1
;-----------------------------
Autotest_Struct_Pad		rs.b 1
Autotest_Struct_Size	rs.b 0
;-----------------------------

AutotestInit:
	; d0 (b) - Mode

	lea AutotestData, a0

	move.b d0, Autotest_Mode(a0)
	move.w #0x0, Autotest_PadDataA(a0)
	move.w #0x0, Autotest_PadDataB(a0)
	MOVE_NTSC_W Autotest_NextLevelTime, Autotest_Timer(a0), d0

	rts

AutotestUpdate:

	PUSHALL

	lea AutotestData, a0
	move.l GameStatePtr, d0

	ori.w  #1<<pad_button_right, Autotest_PadDataA(a0)

	; Advance timer
	subq.w #0x1, Autotest_Timer(a0)
	tst.w  Autotest_Timer(a0)
	bne    @End

	; Timer elapsed
	MOVE_NTSC_W Autotest_NextLevelTime, Autotest_Timer(a0), d1

	; Determine state
	cmp.l  #GameStateMainMenu, d0
	beq    @MainMenu
	cmp.l  #GameStateLevelSelect, d0
	beq    @LevelSelect
	cmp.l  #GameStateGameplay, d0
	beq    @Gameplay
	bra    @End

	;==============================================================

	@MainMenu:

	; Press start
	ori.w  #1<<pad_button_start, Autotest_PadDataA(a0)

	bra    @End

	;==============================================================

	@Gameplay:

	; Next level
	PUSHL  a0
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	POPL   a0

	bra    @End

	;==============================================================

	@LevelSelect:

	; Press start
	ori.w  #1<<pad_button_start, Autotest_PadDataA(a0)

	bra    @End

	;==============================================================

	@End:
	
	POPALL

	rts
