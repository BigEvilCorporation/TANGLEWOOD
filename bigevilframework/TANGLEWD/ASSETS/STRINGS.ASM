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
FontTest_Msg4	dc.b ".,!?=-[]/\$%&()#@^_{|}~'<>`:;",0
	
Str_SoundTestLabel	dc.b "SOUND ID: ",0
	
	even
	