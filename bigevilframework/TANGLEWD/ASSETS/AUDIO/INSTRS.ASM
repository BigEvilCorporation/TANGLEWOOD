;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	IFND DEBUG

echo_instruments:

	; Music/SFX
    Echo_ListEntry Instr00
    Echo_ListEntry Instr01
    Echo_ListEntry Instr02
	Echo_ListEntry Instr03
	Echo_ListEntry Instr04
	Echo_ListEntry Instr05
	Echo_ListEntry Instr06
	Echo_ListEntry Instr07
	Echo_ListEntry Instr08
	Echo_ListEntry Instr09
	Echo_ListEntry Instr0A
	Echo_ListEntry Instr0B
	Echo_ListEntry Instr0C
	Echo_ListEntry Instr0D
	Echo_ListEntry Instr0E
	Echo_ListEntry Instr0F
	Echo_ListEntry Instr10
	Echo_ListEntry Instr11
	Echo_ListEntry Instr12
	Echo_ListEntry Instr13
	Echo_ListEntry Instr14
	Echo_ListEntry Instr15
	Echo_ListEntry Instr16
	Echo_ListEntry Instr17
	Echo_ListEntry Instr18
	Echo_ListEntry Instr19
	Echo_ListEntry Instr1A
	Echo_ListEntry Instr1B
	Echo_ListEntry Instr1C
	Echo_ListEntry Instr1D
	Echo_ListEntry Instr1E
	Echo_ListEntry Instr1F
	Echo_ListEntry Instr20
	Echo_ListEntry Instr21
	Echo_ListEntry Instr22
	Echo_ListEntry Instr23
	Echo_ListEntry Instr24
	Echo_ListEntry Instr25
	Echo_ListEntry Instr26
	Echo_ListEntry Instr27
	Echo_ListEntry Instr28
	Echo_ListEntry Instr29
	Echo_ListEntry Instr2A
	Echo_ListEntry Instr2B
	Echo_ListEntry Instr2C
	Echo_ListEntry Instr2D
	Echo_ListEntry Instr2E
	Echo_ListEntry Instr2F
	Echo_ListEntry Instr30
	Echo_ListEntry Instr31
	Echo_ListEntry Instr32
	Echo_ListEntry Instr33
	Echo_ListEntry Instr34
	Echo_ListEntry Instr35
	Echo_ListEntry Instr36
	Echo_ListEntry Instr37
	Echo_ListEntry Instr38
	Echo_ListEntry Instr39
	Echo_ListEntry Instr3A
	Echo_ListEntry Instr3B
	Echo_ListEntry Instr3C
	Echo_ListEntry Instr3D
	Echo_ListEntry Instr3E
	Echo_ListEntry Instr3F
	
	; PCM
	Echo_ListEntry PCM00
	Echo_ListEntry PCM01
	Echo_ListEntry PCM02
	Echo_ListEntry PCM03
	Echo_ListEntry PCM04
	Echo_ListEntry PCM05
	Echo_ListEntry PCM06
	
    Echo_ListEnd
	
PCM_InstrIndex	equ 0x39

	; Music/SFX
Instr00: incbin 'assets\audio\instrs\instr_00.eif'
Instr01: incbin 'assets\audio\instrs\instr_01.eif'
Instr02: incbin 'assets\audio\instrs\instr_02.eif'
Instr03: incbin 'assets\audio\instrs\instr_03.eif'
Instr04: incbin 'assets\audio\instrs\instr_04.eif'
Instr05: incbin 'assets\audio\instrs\instr_05.eif'
Instr06: incbin 'assets\audio\instrs\instr_06.eif'
Instr07: incbin 'assets\audio\instrs\instr_07.eif'
Instr08: incbin 'assets\audio\instrs\instr_08.eif'
Instr09: incbin 'assets\audio\instrs\instr_09.eif'
Instr0A: incbin 'assets\audio\instrs\instr_0a.eif'
Instr0B: incbin 'assets\audio\instrs\instr_0b.eif'
Instr0C: incbin 'assets\audio\instrs\instr_0c.eif'
Instr0D: incbin 'assets\audio\instrs\instr_0d.eif'
Instr0E: incbin 'assets\audio\instrs\instr_0e.eif'
Instr0F: incbin 'assets\audio\instrs\instr_0f.eif'
Instr10: incbin 'assets\audio\instrs\instr_10.eif'
Instr11: incbin 'assets\audio\instrs\instr_11.eif'
Instr12: incbin 'assets\audio\instrs\instr_12.eif'
Instr13: incbin 'assets\audio\instrs\instr_13.eif'
Instr14: incbin 'assets\audio\instrs\instr_14.eif'
Instr15: incbin 'assets\audio\instrs\instr_15.eif'
Instr16: incbin 'assets\audio\instrs\instr_16.eif'
Instr17: incbin 'assets\audio\instrs\instr_17.eif'
Instr18: incbin 'assets\audio\instrs\instr_18.eif'
Instr19: incbin 'assets\audio\instrs\instr_19.eif'
Instr1A: incbin 'assets\audio\instrs\instr_1a.eif'
Instr1B: incbin 'assets\audio\instrs\instr_1b.eif'
Instr1C: incbin 'assets\audio\instrs\instr_1c.eif'
Instr1D: incbin 'assets\audio\instrs\instr_1d.eif'
Instr1E: incbin 'assets\audio\instrs\instr_1e.eif'
Instr1F: incbin 'assets\audio\instrs\instr_1f.eif'
Instr20: incbin 'assets\audio\instrs\instr_20.eif'
Instr21: incbin 'assets\audio\instrs\instr_21.eif'
Instr22: incbin 'assets\audio\instrs\instr_22.eif'
Instr23: incbin 'assets\audio\instrs\instr_23.eif'
Instr24: incbin 'assets\audio\instrs\instr_24.eif'
Instr25: incbin 'assets\audio\instrs\instr_25.eif'
Instr26: incbin 'assets\audio\instrs\instr_26.eif'
Instr27: incbin 'assets\audio\instrs\instr_27.eif'
Instr28: incbin 'assets\audio\instrs\instr_28.eif'
Instr29: incbin 'assets\audio\instrs\instr_29.eif'
Instr2A: incbin 'assets\audio\instrs\instr_2A.eif'
Instr2B: incbin 'assets\audio\instrs\instr_2B.eif'
Instr2C: incbin 'assets\audio\instrs\instr_2C.eif'
Instr2D: incbin 'assets\audio\instrs\instr_2D.eif'
Instr2E: incbin 'assets\audio\instrs\instr_2E.eif'
Instr2F: incbin 'assets\audio\instrs\instr_2F.eif'
Instr30: incbin 'assets\audio\instrs\instr_30.eif'
Instr31: incbin 'assets\audio\instrs\instr_31.eif'
Instr32: incbin 'assets\audio\instrs\instr_32.eif'
Instr33: incbin 'assets\audio\instrs\instr_33.eif'
Instr34: incbin 'assets\audio\instrs\instr_34.eif'
Instr35: incbin 'assets\audio\instrs\instr_35.eif'
Instr36: incbin 'assets\audio\instrs\instr_36.eif'
Instr37: incbin 'assets\audio\instrs\instr_37.eif'
Instr38: incbin 'assets\audio\instrs\instr_38.eif'
Instr39: incbin 'assets\audio\instrs\instr_39.eif'
Instr3A: incbin 'assets\audio\instrs\instr_3A.eif'
Instr3B: incbin 'assets\audio\instrs\instr_3B.eif'
Instr3C: incbin 'assets\audio\instrs\instr_3C.eif'
Instr3D: incbin 'assets\audio\instrs\instr_3D.eif'
Instr3E: incbin 'assets\audio\instrs\instr_3E.eif'
Instr3F: incbin 'assets\audio\instrs\instr_3F.eif'

	
	; PCM
PCM00: incbin 'assets\audio\sfx\djakk\roar.ewf'
PCM01: incbin 'assets\audio\sfx\djakk\bite.ewf'
PCM02: incbin 'assets\audio\sfx\ambience\chirp1.ewf'
PCM03: incbin 'assets\audio\sfx\fstep\water1.ewf'
PCM04: incbin 'assets\audio\sfx\fstep\water2.ewf'
PCM05: incbin 'assets\audio\sfx\fstep\splash1.ewf'
PCM06: incbin 'assets\audio\sfx\nymn\calllong.ewf'
	
	ENDIF
	
	