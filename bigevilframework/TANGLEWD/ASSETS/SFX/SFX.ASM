;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

AmbientSFXCount		equ 0x04

; Cutscene SFX tracks
bgm_cut_introrumble:
	include 'assets\SFX\cutscn\rumble.asm'

SFX_Djakk_Roar:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+0
	ESF_Stop
	
;SFX_Footstep1:
;	ESF_NoteOn ESF_PCM, PCM_InstrIndex+1
;	ESF_Stop
;	
;SFX_Footstep2:
;	ESF_NoteOn ESF_PCM, PCM_InstrIndex+2
;	ESF_Stop
;	
;SFX_Footstep3:
;	ESF_NoteOn ESF_PCM, PCM_InstrIndex+3
;	ESF_Stop
;	
;SFX_Footstep4:
;	ESF_NoteOn ESF_PCM, PCM_InstrIndex+4
;	ESF_Stop

;SFX_Land:
;	ESF_NoteOn ESF_PCM, PCM_InstrIndex+5
;	ESF_Stop
	
SFX_Chirp1:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+6
	ESF_Stop
	
SFX_Chirp2:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+6
	ESF_Stop
	
SFX_Chirp3:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+6
	ESF_Stop
	
SFX_Chirp4:
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+6
	ESF_Stop

SFX_FlueIn:
	include 'assets\SFX\objects\flue_in.asm'
	
SFX_FlueOut:
	include 'assets\SFX\objects\flue_out.asm'
	
SFX_BoulderBreak:
	include 'assets\SFX\objects\bldbreak.asm'

SFX_FireflyCollect:
	include 'assets\SFX\objects\firefly.asm'
	
SFX_FuzzlDrop:
	include 'assets\SFX\fuzzl\fuzldrop.asm'
	
SFX_FuzzlAlert:
	include 'assets\SFX\fuzzl\fuzlalrt.asm'
	
SFX_FuzzlInNest:
	include 'assets\SFX\fuzzl\fuzlnest.asm'
	
SFX_FuzzlJump:
	include 'assets\SFX\fuzzl\fuzljump.asm'
	
SFX_NymnColourSwitch:
	include 'assets\SFX\nymn\switch.asm'
	
SFX_Footstep1:
	include 'assets\SFX\fstep\fstep2.asm'
	
SFX_Footstep2:
	include 'assets\SFX\fstep\fstep2.asm'
	
SFX_Footstep3:
	include 'assets\SFX\fstep\fstep2.asm'
	
SFX_Footstep4:
	include 'assets\SFX\fstep\fstep2.asm'
	
SFX_FootstepBig:
	include 'assets\SFX\fstep\fstepbig.asm'
	
SFX_Land:
	include 'assets\SFX\fstep\land.asm'
