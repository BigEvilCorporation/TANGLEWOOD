;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   lvlist.asm - Level list for password decode
;==============================================================

LevelList:
	IF INCLUDE_LEVEL_1
	dc.l l1a1_HarlequinForestAct1
	dc.l l1a2_HarlequinForestAct2
	dc.l l1a3_HarlequinForestAct3
	dc.l l1a4_HarlequinForestAct4
	ENDIF

	IF INCLUDE_LEVEL_2
	dc.l l2a1_StormWarningAct1
	dc.l l2a2_StormWarningAct2
	dc.l l2a3_StormWarningAct3
	ENDIF

	IF INCLUDE_LEVEL_3
	dc.l l3a1_HeritageAct1
	dc.l l3a2_HeritageAct2
	dc.l l3a3_HeritageAct3
	ENDIF

	IF INCLUDE_LEVEL_4
	dc.l l4a1_TetheredAct1
	dc.l l4a2_TetheredAct2
	dc.l l4a3_TetheredAct3
	ENDIF

	IF INCLUDE_LEVEL_5
	dc.l l5a1_BygoneAct1
	dc.l l5a2_BygoneAct2
	dc.l l5a3_BygoneAct3
	dc.l l5a4_BygoneAct4
	ENDIF

	IF INCLUDE_LEVEL_6
	dc.l l6a1_DeadwoodAct1
	dc.l l6a2_DeadwoodAct2
	dc.l l6a3_DeadwoodAct3
	ENDIF

	IF INCLUDE_LEVEL_7
	dc.l l7a1_OasisAct1
	dc.l l7a2_OasisAct2
	dc.l l7a3_OasisAct3
	ENDIF

	IF INCLUDE_LEVEL_8
	dc.l l8a1_TurntailAct1
	dc.l l8a2_TurntailAct2
	dc.l l8a3_TurntailAct3
	dc.l l8a4_TurntailAct4
	dc.l l8a5_TurntailAct5
	dc.l l8a6_TurntailAct6
	ENDIF
LevelListEnd

MaxLevels equ (LevelListEnd-LevelList)/size_long

; Pregenerated passwords (for level select screen)
LevelSelectPasswords:

LevelSelectPasswordLvl1:
	dc.l 0x0A4C2433	; DDECMEKA
	dc.l 0x084C2433	; DDECMEIA
	dc.l 0x0E4C2433	; DDECMEOA
	dc.l 0x0C4C2433	; DDECMEMA
LevelSelectPasswordLvl2:
	dc.l 0x024C2433	; DDECMECA
	dc.l 0x004C2433	; DDECMEAA
	dc.l 0x064C2433	; DDECMEGA
LevelSelectPasswordLvl3:
	dc.l 0x044C2433	; DDECMEEA
	dc.l 0x1A4C2433	; DDECMEKB
	dc.l 0x184C2433	; DDECMEIB
LevelSelectPasswordLvl4:
	dc.l 0x1E4C2433	; DDECMEOB
	dc.l 0x1C4C2433	; DDECMEMB
	dc.l 0x124C2433	; DDECMECB
LevelSelectPasswordLvl5:
	dc.l 0x104C2433	; DDECMEAB
	dc.l 0x164C2433	; DDECMEGB
	dc.l 0x144C2433	; DDECMEEB
	dc.l 0x2A4C2433	; DDECMEKC
LevelSelectPasswordLvl6:
	dc.l 0x284C2433	; DDECMEIC
	dc.l 0x2E4C2433	; DDECMEOC
	dc.l 0x2C4C2433	; DDECMEMC
LevelSelectPasswordLvl7:
	dc.l 0x224C2433	; DDECMECC
	dc.l 0x204C2433	; DDECMEAC
LevelSelectPasswordLvl8:
	dc.l 0x244C2433	; DDECMEEC
	dc.l 0x3A4C2433	; DDECMEKD
	dc.l 0x384C2433	; DDECMEID
	dc.l 0x3E4C2433	; DDECMEOD
	dc.l 0x3C4C2433	; DDECMEMD
	dc.l 0x324C2433	; DDECMECD
	