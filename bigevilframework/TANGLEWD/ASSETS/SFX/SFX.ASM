;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

AmbientSFXCount		equ 0x04

SFX_Djakk_Roar:
	ESF_NoteOn ESF_PCM, 0x04
	ESF_Stop
	
SFX_Footstep1:
	ESF_NoteOn ESF_PCM, 0x05
	ESF_Stop
	
SFX_Footstep2:
	ESF_NoteOn ESF_PCM, 0x06
	ESF_Stop
	
SFX_Footstep3:
	ESF_NoteOn ESF_PCM, 0x07
	ESF_Stop
	
SFX_Footstep4:
	ESF_NoteOn ESF_PCM, 0x08
	ESF_Stop

SFX_Land:
	ESF_NoteOn ESF_PCM, 0x09
	ESF_Stop
	
SFX_Chirp1:
	ESF_NoteOn ESF_PCM, 0x0A
	ESF_Stop
	
SFX_Chirp2:
	ESF_NoteOn ESF_PCM, 0x0B
	ESF_Stop
	
SFX_Chirp3:
	ESF_NoteOn ESF_PCM, 0x0C
	ESF_Stop
	
SFX_Chirp4:
	ESF_NoteOn ESF_PCM, 0x0D
	ESF_Stop

SFX_FlueIn:
	ESF_NoteOn ESF_PCM, 0x0E
	ESF_Stop
	
SFX_FlueOut:
	ESF_NoteOn ESF_PCM, 0x0F
	ESF_Stop