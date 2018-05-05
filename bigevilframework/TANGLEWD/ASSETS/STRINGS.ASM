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
	
Str_SoundTestLabel	dc.b "SOUND ID: ",0

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

	even
	
EndLevelActNames:
	dc.l EndLevelString_Act1
	dc.l EndLevelString_Act2
	dc.l EndLevelString_Act3
	dc.l EndLevelString_Act4
	dc.l EndLevelString_Act5
	dc.l EndLevelString_Act6
