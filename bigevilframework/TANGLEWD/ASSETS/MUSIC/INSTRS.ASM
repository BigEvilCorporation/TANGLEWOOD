;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

echo_instruments:

	; Music
    Echo_ListEntry InstrMusic00
    Echo_ListEntry InstrMusic01
    Echo_ListEntry InstrMusic02
	Echo_ListEntry InstrMusic03
	Echo_ListEntry InstrMusic04
	Echo_ListEntry InstrMusic05
	
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
	
	; PCM
	Echo_ListEntry PCM00
	Echo_ListEntry PCM01
	Echo_ListEntry PCM02
	Echo_ListEntry PCM03
	Echo_ListEntry PCM04
	Echo_ListEntry PCM05
	Echo_ListEntry PCM06
	
    Echo_ListEnd
	
PCM_InstrIndex	equ 0x12

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
	
	; SFX
InstrSFX00:
	incbin 'assets\sfx\instrs\instr_06.eif'
InstrSFX01:
	incbin 'assets\sfx\instrs\instr_07.eif'
InstrSFX02:
	incbin 'assets\sfx\instrs\instr_08.eif'
InstrSFX03:
	incbin 'assets\sfx\instrs\instr_09.eif'
InstrSFX04:
	incbin 'assets\sfx\instrs\instr_0a.eif'
InstrSFX05:
	incbin 'assets\sfx\instrs\instr_0b.eif'
InstrSFX06:
	incbin 'assets\sfx\instrs\instr_0c.eif'
InstrSFX07:
	incbin 'assets\sfx\instrs\instr_0d.eif'
InstrSFX08:
	incbin 'assets\sfx\instrs\instr_0e.eif'
InstrSFX09:
	incbin 'assets\sfx\instrs\instr_0f.eif'
InstrSFX10:
	incbin 'assets\sfx\instrs\instr_10.eif'
InstrSFX11:
	incbin 'assets\sfx\instrs\instr_11.eif'
	
	; PCM
PCM00:
	incbin 'assets\sfx\djakk\roar.ewf'
PCM01:
	incbin 'assets\sfx\fstep\fstep1.ewf'
PCM02:
	incbin 'assets\sfx\fstep\fstep2.ewf'
PCM03:
	incbin 'assets\sfx\fstep\fstep3.ewf'
PCM04:
	incbin 'assets\sfx\fstep\fstep4.ewf'
PCM05:
	incbin 'assets\sfx\fstep\land.ewf'
PCM06:
	incbin 'assets\sfx\ambience\chirp1.ewf'
	