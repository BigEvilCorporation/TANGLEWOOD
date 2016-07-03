;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

echo_instruments:

	; Music
    Echo_ListEntry Instr00
    Echo_ListEntry Instr01
    Echo_ListEntry Instr02
	Echo_ListEntry Instr03
	Echo_ListEntry Instr04
	Echo_ListEntry Instr05
	
	; SFX
	Echo_ListEntry Instr06
	Echo_ListEntry Instr07
	Echo_ListEntry Instr08
	
	; PCM
	Echo_ListEntry Instr09
	Echo_ListEntry Instr0A
	Echo_ListEntry Instr0B
	Echo_ListEntry Instr0C
	Echo_ListEntry Instr0D
	Echo_ListEntry Instr0E
	Echo_ListEntry Instr0F
	
    Echo_ListEnd

	; Music
Instr00:
	incbin 'assets\music\instrs\instr_00.eif'
Instr01:
	incbin 'assets\music\instrs\instr_01.eif'
Instr02:
	incbin 'assets\music\instrs\instr_02.eif'
Instr03:
	incbin 'assets\music\instrs\instr_03.eif'
Instr04:
	incbin 'assets\music\instrs\instr_04.eif'
Instr05:
	incbin 'assets\music\instrs\instr_05.eif'
	
	; SFX
Instr06:
	incbin 'assets\sfx\instrs\instr_06.eif'
Instr07:
	incbin 'assets\sfx\instrs\instr_07.eif'
Instr08:
	incbin 'assets\sfx\instrs\instr_08.eif'
	
	; PCM
Instr09:
	incbin 'assets\sfx\djakk\roar.ewf'
Instr0A:
	incbin 'assets\sfx\fstep\fstep1.ewf'
Instr0B:
	incbin 'assets\sfx\fstep\fstep2.ewf'
Instr0C:
	incbin 'assets\sfx\fstep\fstep3.ewf'
Instr0D:
	incbin 'assets\sfx\fstep\fstep4.ewf'
Instr0E:
	incbin 'assets\sfx\fstep\land.ewf'
Instr0F:
	incbin 'assets\sfx\ambience\chirp1.ewf'
	