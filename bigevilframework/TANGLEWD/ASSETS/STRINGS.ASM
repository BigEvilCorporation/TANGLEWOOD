;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	IFD DEBUG
	; Profiler strings
Str_Frame:		dc.b "FRAME",0
Str_Entities:	dc.b "ENTITIES",0
Str_Players:	dc.b "PLAYERS",0
Str_Leaves:		dc.b "LEAVES",0
Str_Fuzzls:		dc.b "FUZZLS",0
Str_Fireflies:	dc.b "FIREFLIES",0
Str_Monsters:	dc.b "MONSTERS",0
Str_Flues:		dc.b "FLUES",0
Str_Render:		dc.b "RENDER",0
	ENDIF

	; Space for string concats
StringSpace				dc.b " ",0
StringOptionSeparator	dc.b " - ",0

	; Hack for options screen - UIText can't re-alloc strings, so alloc worst case first
StringOptionsMaxLen	equ 20
StringBlankOptionsMax:
	REPT StringOptionsMaxLen
	dc.b " "
	ENDR
	dc.b 0

	; Font test
FontTest_Msg1_A	dc.b "ABCDEFGHIJKLMNOPQRSTUVWXYZ",0
FontTest_Msg1_B	dc.b "abcdefghijklmnopqrstuvwxyz",0
FontTest_Msg1_C	dc.b "0123456789",0
FontTest_Msg2_A	dc.b "The Quick Brown Fox Jumps",0
FontTest_Msg2_B	dc.b "Over The Lazy Dog",0
FontTest_Msg3_A	dc.b "Is this on? I made a Chronal",0
FontTest_Msg3_B	dc.b "Accelerator, I'm sure I can do this.",0
FontTest_Msg4	dc.b ".,!?=+-[]/\$%&()#@^_{|}~'<>`:;",0

	; Legal screen
LegalScreen_Str_00	dc.b "TANGLEWOOD~ is a registered trademark",0
LegalScreen_Str_01	dc.b "of Big Evil Corporation Ltd",0
LegalScreen_Str_02	dc.b "TANGLEWOOD~ is not published,",0
LegalScreen_Str_03	dc.b "sponsored, endorsed, or licensed by",0
LegalScreen_Str_04	dc.b "SEGA Enterprises Ltd or its affiliates",0
LegalScreen_Str_05	dc.b "Copyright \2018 Big Evil Corp.",0
Copyright_Str_short	dc.b "\2018 Big Evil Corp.",0
	
	; Sound test screen
Str_SoundTestLabel	dc.b "SOUND ID: ",0

	; Options screen
OptionsScreen_Str_On	dc.b "ON",0
OptionsScreen_Str_Off	dc.b "OFF",0

	; Levels
LevelSelect_Str_00	dc.b "None",0
LevelSelect_Str_01	dc.b "Chapter 1 : Harlequin",0
LevelSelect_Str_02	dc.b "Chapter 2 : Storm Warning",0
LevelSelect_Str_03	dc.b "Chapter 3 : Heritage",0
LevelSelect_Str_04	dc.b "Chapter 4 : Tethered",0
LevelSelect_Str_05	dc.b "Chapter 5 : Bygone Mines",0
LevelSelect_Str_06	dc.b "Chapter 6 : Deadwood",0
LevelSelect_Str_07	dc.b "Chapter 7 : Oasis",0
LevelSelect_Str_08	dc.b "Chapter 8 : Turntail",0

	; End level score screen
EndLevelString_Title	dc.b 'Fireflies Collected',0
EndLevelString_Act1		dc.b 'Act 1:',0
EndLevelString_Act2		dc.b 'Act 2:',0
EndLevelString_Act3		dc.b 'Act 3:',0
EndLevelString_Act4		dc.b 'Act 4:',0
EndLevelString_Act5		dc.b 'Act 5:',0
EndLevelString_Act6		dc.b 'Act 6:',0

	; Gamepad inputs
GamepadButtonStr_Start	dc.b "Start",0
GamepadButtonStr_Left	dc.b "Left",0
GamepadButtonStr_Right	dc.b "Right",0
GamepadButtonStr_Up		dc.b "Up",0
GamepadButtonStr_Down	dc.b "Down",0
GamepadButtonStr_a		dc.b "A",0
GamepadButtonStr_b		dc.b "B",0
GamepadButtonStr_c		dc.b "C",0

	; Game controls
ControlStr_Pause		dc.b "Pause",0
ControlStr_Move_left	dc.b "Move Left",0
ControlStr_Move_right	dc.b "Move Right",0
ControlStr_Move_up		dc.b "Move Upp",0
ControlStr_Move_down	dc.b "Move Down",0
ControlStr_Peek_up		dc.b "Peek Up",0
ControlStr_Peek_down	dc.b "Peek Down",0
ControlStr_Interact		dc.b "Interact",0
ControlStr_Power		dc.b "Special",0
ControlStr_Jump			dc.b "Jump",0

	; Control schemes
ControlSchemeStr1		dc.b "Layout 1",0
ControlSchemeStr2		dc.b "Layout 2",0
ControlSchemeStr3		dc.b "Layout 3",0
ControlSchemeStr4		dc.b "Layout 4",0

	even

	; Gamepad button names (matches button index)
GamepadButtonNames:
	dc.l GamepadButtonStr_Up
	dc.l GamepadButtonStr_Down
	dc.l GamepadButtonStr_Left
	dc.l GamepadButtonStr_Right
	dc.l GamepadButtonStr_b
	dc.l GamepadButtonStr_c
	dc.l 0x00000000
	dc.l 0x00000000
	dc.l 0x00000000
	dc.l 0x00000000
	dc.l 0x00000000
	dc.l 0x00000000
	dc.l GamepadButtonStr_a
	dc.l GamepadButtonStr_Start

ControlNames:
	dc.l ControlStr_Pause
	dc.l ControlStr_Move_left
	dc.l ControlStr_Move_right
	dc.l ControlStr_Move_up
	dc.l ControlStr_Move_down
	dc.l ControlStr_Peek_up
	dc.l ControlStr_Peek_down
	dc.l ControlStr_Interact
	dc.l ControlStr_Power
	dc.l ControlStr_Jump
	
EndLevelActNames:
	dc.l EndLevelString_Act1
	dc.l EndLevelString_Act2
	dc.l EndLevelString_Act3
	dc.l EndLevelString_Act4
	dc.l EndLevelString_Act5
	dc.l EndLevelString_Act6
