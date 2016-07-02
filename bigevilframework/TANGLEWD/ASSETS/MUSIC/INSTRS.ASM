;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

echo_instruments:
    Echo_ListEntry Instr_00           ; $00
    Echo_ListEntry Instr_01           ; $01
    Echo_ListEntry Instr_02   	   	  ; $02
	Echo_ListEntry Instr_Djakk_Roar   ; $03
	Echo_ListEntry Instr_Footstep1    ; $04
	Echo_ListEntry Instr_Footstep2    ; $05
	Echo_ListEntry Instr_Footstep3    ; $06
	Echo_ListEntry Instr_Footstep4    ; $07
	Echo_ListEntry Instr_Land	      ; $08
	Echo_ListEntry Instr_Chirp1   	  ; $09
	Echo_ListEntry Instr_Chirp2   	  ; $0A
	Echo_ListEntry Instr_Chirp3   	  ; $0B
	Echo_ListEntry Instr_Chirp4  	  ; $0C
	Echo_ListEntry Instr_FlueIn  	  ; $0D
	Echo_ListEntry Instr_FlueOut  	  ; $0E
	Echo_ListEntry Instr_0F  		  ; $0F
	Echo_ListEntry Instr_10  		  ; $10
	Echo_ListEntry Instr_11  		  ; $11
	Echo_ListEntry Instr_12  		  ; $12
    Echo_ListEnd

	; Main menu theme
Instr_00:
	incbin 'assets\music\instrs\instr_00.eif'
Instr_01:
	incbin 'assets\music\instrs\instr_01.eif'
Instr_02:
	incbin 'assets\music\instrs\instr_02.eif'
	
	; Level intro theme
Instr_0F:
	incbin 'assets\music\instrs\instr_0F.eif'
Instr_10:
	incbin 'assets\music\instrs\instr_10.eif'
Instr_11:
	incbin 'assets\music\instrs\instr_11.eif'
	
	; Intro ground rumble cutscene
Instr_12:
	incbin 'assets\music\instrs\instr_12.eif'
	
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