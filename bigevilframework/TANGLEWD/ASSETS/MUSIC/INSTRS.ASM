;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

echo_instruments:
    Echo_ListEntry Instr_Flute        ; $00
    Echo_ListEntry Instr_Sweet        ; $01
    Echo_ListEntry Instr_AddChimesB   ; $02
    Echo_ListEntry Instr_SinesPad     ; $03
	Echo_ListEntry Instr_Djakk_Roar   ; $04
	Echo_ListEntry Instr_Footstep1    ; $05
	Echo_ListEntry Instr_Footstep2    ; $06
	Echo_ListEntry Instr_Footstep3    ; $07
	Echo_ListEntry Instr_Footstep4    ; $08
	Echo_ListEntry Instr_Land	      ; $09
	Echo_ListEntry Instr_Chirp1   	  ; $0A
	Echo_ListEntry Instr_Chirp2   	  ; $0B
	Echo_ListEntry Instr_Chirp3   	  ; $0C
	Echo_ListEntry Instr_Chirp4  	  ; $0D
	Echo_ListEntry Instr_FlueIn  	  ; $0E
	Echo_ListEntry Instr_FlueOut  	  ; $0F
    Echo_ListEnd

	; Intro theme
Instr_Flute:
	incbin 'assets\music\instrs\instr_00.eif'
Instr_Sweet:
	incbin 'assets\music\instrs\instr_01.eif'
Instr_AddChimesB:
	incbin 'assets\music\instrs\instr_02.eif'
Instr_SinesPad:
	incbin 'assets\music\instrs\instr_03.eif'
	
	; Footstep SFX
Instr_Footstep1:
    incbin 'assets\sfx\fstep\fstep1.ewf'
Instr_Footstep2:
    incbin 'assets\sfx\fstep\fstep2.ewf'
Instr_Footstep3:
    incbin 'assets\sfx\fstep\fstep3.ewf'
Instr_Footstep4:
    incbin 'assets\sfx\fstep\fstep4.ewf'
Instr_Land:
    incbin 'assets\sfx\fstep\land.ewf'
	
	; Ambient SFX
Instr_Chirp1:
    incbin 'assets\sfx\ambience\chirp1.ewf'
Instr_Chirp2:
    incbin 'assets\sfx\ambience\chirp2.ewf'
Instr_Chirp3:
    incbin 'assets\sfx\ambience\chirp3.ewf'
Instr_Chirp4:
    incbin 'assets\sfx\ambience\chirp4.ewf'
	
	; Djakk SFX
Instr_Djakk_Roar:
    incbin 'assets\sfx\djakk\roar.ewf'
	
	; Flue
Instr_FlueIn:
    incbin 'assets\sfx\objects\flue_in.ewf'
Instr_FlueOut:
    incbin 'assets\sfx\objects\flue_out.ewf'