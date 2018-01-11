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
	dc.l 0xD850E557	; HFFOAFIN
	dc.l 0xD84DE558	; IFFONEIN
	dc.l 0xD82AE555	; FFFOKCIN
	dc.l 0xD84FE556	; GFFOPEIN
LevelSelectPasswordLvl2:
	dc.l 0xD854E55B	; LFFOEFIN
	dc.l 0xD851E55C	; MFFOBFIN
	dc.l 0xD84EE559	; JFFOOEIN
LevelSelectPasswordLvl3:
	dc.l 0xD853E55A	; KFFODFIN
	dc.l 0xD828E54F	; PEFOICIN
	dc.l 0xD825E550	; AFFOFCIN
LevelSelectPasswordLvl4:
	dc.l 0xD822E54D	; NEFOCCIN
	dc.l 0xD827E54E	; OEFEHCIN	- Incorrect?
	dc.l 0xD82CE553	; DFFOMCIN
LevelSelectPasswordLvl5:
	dc.l 0xD829E554	; EFFOJCIN
	dc.l 0xD826E551	; BFFOGCIN
	dc.l 0xD82BE552	; CFFOLCIN
	dc.l 0xD820E547	; HEFOACIN
LevelSelectPasswordLvl6:
	dc.l 0xD81DE548	; IEFONBIN
	dc.l 0xD83AE545	; 
	dc.l 0xD81FE546	; GEFOPBIN
LevelSelectPasswordLvl7:
	dc.l 0xD824E54B	; LEFOECIN
	dc.l 0xD821E54C	; MEFOBCIN
LevelSelectPasswordLvl8:
	dc.l 0xD823E54A	; KEFODCIN
	dc.l 0xD838E53F	; PDFOIDON
	dc.l 0xD835E540	; AEFOFDIN
	dc.l 0xD832E53D	; NDFOCDIN
	dc.l 0xD837E53E	; ODFOHDIN
	dc.l 0xD83CE543	; DEFOMDIN
	