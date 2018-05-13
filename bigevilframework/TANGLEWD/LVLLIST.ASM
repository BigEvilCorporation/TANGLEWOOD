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
	dc.l 0x49848661 ; BGGIEIJE
	dc.l 0x09848669 ; JGGIEIJA
	dc.l 0xC9848671 ; BHGIEIJM
	dc.l 0x89848679 ; JHGIEIJI
LevelSelectPasswordLvl2:
	dc.l 0x49848640 ; AEGIEIJE
	dc.l 0x09848648 ; IEGIEIJA
	dc.l 0xC9848650 ; AFGIEIJM
LevelSelectPasswordLvl3:
	dc.l 0x89848658 ; IFGIEIJI
	dc.l 0x49848663 ; DGGIEIJE
	dc.l 0x0984866B ; LGGIEIJA
LevelSelectPasswordLvl4:
	dc.l 0xC9848673 ; DHGIEIJM
	dc.l 0x8984867B ; LHGIEIJI
	dc.l 0x49848642 ; CEGIEIJE
LevelSelectPasswordLvl5:
	dc.l 0x0984864A ; KEGIEIJA
	dc.l 0xC9848652 ; CFGIEIJM
	dc.l 0x8984865A ; KFGIEIJI
	dc.l 0x4984866D ; NGGIEIJE
LevelSelectPasswordLvl6:
	dc.l 0x09848675 ; FHGIEIJA
	dc.l 0xC984867D ; NHGIEIJM
	dc.l 0x89848645 ; FEGIEIJI
LevelSelectPasswordLvl7:
	dc.l 0x4984864C ; MEGIEIJE
	dc.l 0x09848654 ; EFGIEIJA
	;dc.l 0xC984865C ; MFGIEIJM
LevelSelectPasswordLvl8:
	dc.l 0x89848664 ; EGGIEIJI
	dc.l 0x4984866F ; PGGIEIJE
	dc.l 0x09848677 ; HHGIEIJA
	dc.l 0xC984867F ; PHGIEIJM
	dc.l 0x89848647 ; HEGIEIJI
	dc.l 0x4984864E ; OEGIEIJE
