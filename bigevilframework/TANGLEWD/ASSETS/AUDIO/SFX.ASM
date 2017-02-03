;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

AmbientSFXCount		equ 0x04

	IFND DEBUG

; Cutscene SFX tracks
bgm_cut_introrumble:
	include 'assets\audio\SFX\cutscn\rumble.asm'
	
; PCM SFX

SFX_Djakk_Roar:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+0
	ESF_Stop
	
SFX_Djakk_Bite:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+1
	ESF_Stop
	
SFX_Chirp1:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+2
	ESF_Stop
	
SFX_Chirp2:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+2
	ESF_Stop
	
SFX_Chirp3:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+2
	ESF_Stop
	
SFX_Chirp4:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+2
	ESF_Stop
	
; FM SFX

SFX_FlueIn:
	include 'assets\audio\SFX\objects\flue_in.asm'
	
SFX_FlueOut:
	include 'assets\audio\SFX\objects\flue_out.asm'
	
SFX_BoulderBreak:
	include 'assets\audio\SFX\objects\bldbreak.asm'

SFX_FireflyCollect:
	include 'assets\audio\SFX\objects\firefly.asm'
	
SFX_FuzzlDrop:
	include 'assets\audio\SFX\fuzzl\fuzldrop.asm'
	
SFX_FuzzlAlert:
	include 'assets\audio\SFX\fuzzl\fuzlalrt.asm'
	
SFX_FuzzlInNest:
	include 'assets\audio\SFX\fuzzl\fuzlnest.asm'
	
SFX_FuzzlJump:
	include 'assets\audio\SFX\fuzzl\fuzljump.asm'
	
SFX_NymnColourSwitch:
	include 'assets\audio\SFX\nymn\switch.asm'
	
SFX_Footstep1:
	include 'assets\audio\SFX\fstep\fstep2.asm'
	
SFX_Footstep2:
	include 'assets\audio\SFX\fstep\fstep2.asm'
	
SFX_Footstep3:
	include 'assets\audio\SFX\fstep\fstep2.asm'
	
SFX_Footstep4:
	include 'assets\audio\SFX\fstep\fstep2.asm'
	
SFX_FootstepBig:
	include 'assets\audio\SFX\fstep\fstepbig.asm'
	
SFX_Land:
	include 'assets\audio\SFX\fstep\land.asm'

		ENDIF
		