;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   lvlist.asm - Level list for password decode
;==============================================================

LevelList:
	dc.l l1a1_HarlequinForestAct1
	dc.l l1a2_HarlequinForestAct2
	dc.l l1a3_HarlequinForestAct3
	dc.l l1a4_HarlequinForestAct4
	dc.l l2a1_StormWarningAct1
	dc.l l2a2_StormWarningAct2
	dc.l l2a3_StormWarningAct3
	dc.l l3a1_HeritageAct1
	dc.l l3a2_HeritageAct2
	dc.l l3a3_HeritageAct3
	dc.l l4a1_TetheredAct1
	dc.l l4a2_TetheredAct2
	dc.l l4a3_TetheredAct3
	dc.l l5a1_BygoneAct1
	dc.l l5a2_BygoneAct2
	dc.l l5a3_BygoneAct3
	dc.l l5a4_BygoneAct4
	dc.l l6a1_DeadwoodAct1
	dc.l l6a2_DeadwoodAct2
	dc.l l6a3_DeadwoodAct3
	dc.l l7a1_OasisAct1
	dc.l l7a2_OasisAct2
	dc.l l7a3_OasisAct3
	dc.l l8a1_TurntailAct1
	dc.l l8a2_TurntailAct2
	dc.l l8a3_TurntailAct3
	dc.l l8a4_TurntailAct4
	dc.l l8a5_TurntailAct5
	dc.l l8a6_TurntailAct6
LevelListEnd

MaxLevels equ (LevelListEnd-LevelList)/size_long

; Pregenerated passwords (for level select screen)
LevelSelectPasswords:

LevelSelectPasswordLvl1:
	dc.l 0xFDD3F6D7
	dc.l 0xFDD1F6D5
	dc.l 0xFDCFF6DB
	dc.l 0xFDCDF6D9
LevelSelectPasswordLvl2:
	dc.l 0xFDDBF6CF
	dc.l 0xFDD9F6CD
	dc.l 0xFDD7F6D3
LevelSelectPasswordLvl3:
	dc.l 0xFDD5F6D1
	dc.l 0xFDC3F6C7
	dc.l 0xFDC1F6C5
LevelSelectPasswordLvl4:
	dc.l 0xFDBFF6CB
	dc.l 0xFDBDF6C9
	dc.l 0xFDCBF6BF
LevelSelectPasswordLvl5:
	dc.l 0xFDC9F6BD
	dc.l 0xFDC7F6C3
	dc.l 0xFDC5F6C1
	dc.l 0xFDB3F6B7
LevelSelectPasswordLvl6:
	dc.l 0xFDB1F6B5
	dc.l 0xFDAFF6BB
	dc.l 0xFDADF6B9
LevelSelectPasswordLvl7:
	dc.l 0xFDBBF6AF
	dc.l 0xFDB9F6AD
LevelSelectPasswordLvl8:
	dc.l 0xFDB5F6B1
	dc.l 0xFDA3F6A7
	dc.l 0xFDA1F6A5
	dc.l 0xFD9FF6AB
	dc.l 0xFD9DF6A9
	dc.l 0xFDABF69F
	