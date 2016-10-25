;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	IFND DEBUG

echo_instruments:

	; Music
    Echo_ListEntry InstrMusic00
    Echo_ListEntry InstrMusic01
    Echo_ListEntry InstrMusic02
	Echo_ListEntry InstrMusic03
	Echo_ListEntry InstrMusic04
	Echo_ListEntry InstrMusic05
	Echo_ListEntry InstrMusic06
	Echo_ListEntry InstrMusic07
	Echo_ListEntry InstrMusic08
	Echo_ListEntry InstrMusic09
	Echo_ListEntry InstrMusic10
	Echo_ListEntry InstrMusic11
	Echo_ListEntry InstrMusic12
	Echo_ListEntry InstrMusic13
	Echo_ListEntry InstrMusic14
	
	; SFX
	Echo_ListEntry InstrSFX00
	Echo_ListEntry InstrSFX01
	Echo_ListEntry InstrSFX02
	Echo_ListEntry InstrSFX03
	Echo_ListEntry InstrSFX04
	Echo_ListEntry InstrSFX05
	Echo_ListEntry InstrSFX06
	Echo_ListEntry InstrSFX07
	Echo_ListEntry InstrSFX08
	Echo_ListEntry InstrSFX09
	Echo_ListEntry InstrSFX10
	Echo_ListEntry InstrSFX11
	Echo_ListEntry InstrSFX12
	
	; PCM
	Echo_ListEntry PCM00
	Echo_ListEntry PCM01
	Echo_ListEntry PCM02
	
    Echo_ListEnd
	
PCM_InstrIndex	equ 0x1c

	; Music
InstrMusic00:
	incbin 'assets\music\instrs\instr_00.eif'
InstrMusic01:
	incbin 'assets\music\instrs\instr_01.eif'
InstrMusic02:
	incbin 'assets\music\instrs\instr_02.eif'
InstrMusic03:
	incbin 'assets\music\instrs\instr_03.eif'
InstrMusic04:
	incbin 'assets\music\instrs\instr_04.eif'
InstrMusic05:
	incbin 'assets\music\instrs\instr_05.eif'
InstrMusic06:
	incbin 'assets\music\instrs\instr_06.eif'
InstrMusic07:
	incbin 'assets\music\instrs\instr_07.eif'
InstrMusic08:
	incbin 'assets\music\instrs\instr_08.eif'
InstrMusic09:
	incbin 'assets\music\instrs\instr_09.eif'
InstrMusic10:
	incbin 'assets\music\instrs\instr_0a.eif'
InstrMusic11:
	incbin 'assets\music\instrs\instr_0b.eif'
InstrMusic12:
	incbin 'assets\music\instrs\instr_0c.eif'
InstrMusic13:
	incbin 'assets\music\instrs\instr_0d.eif'
InstrMusic14:
	incbin 'assets\music\instrs\instr_0e.eif'
	
	; SFX
InstrSFX00:
	incbin 'assets\sfx\instrs\instr_0f.eif'
InstrSFX01:
	incbin 'assets\sfx\instrs\instr_10.eif'
InstrSFX02:
	incbin 'assets\sfx\instrs\instr_11.eif'
InstrSFX03:
	incbin 'assets\sfx\instrs\instr_12.eif'
InstrSFX04:
	incbin 'assets\sfx\instrs\instr_13.eif'
InstrSFX05:
	incbin 'assets\sfx\instrs\instr_14.eif'
InstrSFX06:
	incbin 'assets\sfx\instrs\instr_15.eif'
InstrSFX07:
	incbin 'assets\sfx\instrs\instr_16.eif'
InstrSFX08:
	incbin 'assets\sfx\instrs\instr_17.eif'
InstrSFX09:
	incbin 'assets\sfx\instrs\instr_18.eif'
InstrSFX10:
	incbin 'assets\sfx\instrs\instr_19.eif'
InstrSFX11:
	incbin 'assets\sfx\instrs\instr_1a.eif'
InstrSFX12:
	incbin 'assets\sfx\instrs\instr_1b.eif'
	
	; PCM
PCM00:
	incbin 'assets\sfx\djakk\roar.ewf'
PCM01:
	incbin 'assets\sfx\djakk\bite.ewf'
PCM02:
	incbin 'assets\sfx\ambience\chirp1.ewf'
	
	ENDIF
	
	