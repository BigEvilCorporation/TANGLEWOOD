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
	Echo_ListEntry Instr40
	Echo_ListEntry Instr41
	Echo_ListEntry Instr42
	Echo_ListEntry Instr43
	Echo_ListEntry Instr44
	Echo_ListEntry Instr45
	Echo_ListEntry Instr46
	Echo_ListEntry Instr47
	Echo_ListEntry Instr48
	Echo_ListEntry Instr49
	Echo_ListEntry Instr4A
	Echo_ListEntry Instr4B
	Echo_ListEntry Instr4C
	Echo_ListEntry Instr4D
	Echo_ListEntry Instr4E
	Echo_ListEntry Instr4F
	Echo_ListEntry Instr50
	Echo_ListEntry Instr51
	Echo_ListEntry Instr52
	Echo_ListEntry Instr53
	Echo_ListEntry Instr54
	Echo_ListEntry Instr55
	Echo_ListEntry Instr56
	Echo_ListEntry Instr57
	Echo_ListEntry Instr58
	Echo_ListEntry Instr59
	Echo_ListEntry Instr5A
	Echo_ListEntry Instr5B
	Echo_ListEntry Instr5C
	Echo_ListEntry Instr5D
	Echo_ListEntry Instr5E
	Echo_ListEntry Instr5F
	Echo_ListEntry Instr60
	Echo_ListEntry Instr61
	Echo_ListEntry Instr62
	Echo_ListEntry Instr63
	Echo_ListEntry Instr64
	Echo_ListEntry Instr65
	Echo_ListEntry Instr66
	Echo_ListEntry Instr67
	Echo_ListEntry Instr68
	Echo_ListEntry Instr69
	Echo_ListEntry Instr6A
	Echo_ListEntry Instr6B
	Echo_ListEntry Instr6C
	Echo_ListEntry Instr6D
	Echo_ListEntry Instr6E
	Echo_ListEntry Instr6F
	
	; PCM
	Echo_ListEntry PCM00
	Echo_ListEntry PCM01
	Echo_ListEntry PCM02
	Echo_ListEntry PCM03
	Echo_ListEntry PCM04
	Echo_ListEntry PCM05
	Echo_ListEntry PCM06
	Echo_ListEntry PCM07
	Echo_ListEntry PCM08
	Echo_ListEntry PCM09
	Echo_ListEntry PCM10
	Echo_ListEntry PCM11
	Echo_ListEntry PCM12
	Echo_ListEntry PCM13
	Echo_ListEntry PCM14
	Echo_ListEntry PCM15
	
    Echo_ListEnd
	
PCM_InstrIndex	equ 0x70

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
Instr40: incbin 'assets\audio\instrs\instr_40.eif'
Instr41: incbin 'assets\audio\instrs\instr_41.eif'
Instr42: incbin 'assets\audio\instrs\instr_42.eif'
Instr43: incbin 'assets\audio\instrs\instr_43.eif'
Instr44: incbin 'assets\audio\instrs\instr_44.eif'
Instr45: incbin 'assets\audio\instrs\instr_45.eif'
Instr46: incbin 'assets\audio\instrs\instr_46.eif'
Instr47: incbin 'assets\audio\instrs\instr_47.eif'
Instr48: incbin 'assets\audio\instrs\instr_48.eif'
Instr49: incbin 'assets\audio\instrs\instr_49.eif'
Instr4A: incbin 'assets\audio\instrs\instr_4A.eif'
Instr4B: incbin 'assets\audio\instrs\instr_4B.eif'
Instr4C: incbin 'assets\audio\instrs\instr_4C.eif'
Instr4D: incbin 'assets\audio\instrs\instr_4D.eif'
Instr4E: incbin 'assets\audio\instrs\instr_4E.eif'
Instr4F: incbin 'assets\audio\instrs\instr_4F.eif'
Instr50: incbin 'assets\audio\instrs\instr_50.eif'
Instr51: incbin 'assets\audio\instrs\instr_51.eif'
Instr52: incbin 'assets\audio\instrs\instr_52.eif'
Instr53: incbin 'assets\audio\instrs\instr_53.eif'
Instr54: incbin 'assets\audio\instrs\instr_54.eif'
Instr55: incbin 'assets\audio\instrs\instr_55.eif'
Instr56: incbin 'assets\audio\instrs\instr_56.ewf'
Instr57: incbin 'assets\audio\instrs\instr_57.eif'
Instr58: incbin 'assets\audio\instrs\instr_58.eif'
Instr59: incbin 'assets\audio\instrs\instr_59.eif'
Instr5A: incbin 'assets\audio\instrs\instr_5A.eif'
Instr5B: incbin 'assets\audio\instrs\instr_5B.eif'
Instr5C: incbin 'assets\audio\instrs\instr_5C.eif'
Instr5D: incbin 'assets\audio\instrs\instr_5D.eif'
Instr5E: incbin 'assets\audio\instrs\instr_5E.eif'
Instr5F: incbin 'assets\audio\instrs\instr_5F.eif'
Instr60: incbin 'assets\audio\instrs\instr_60.ewf'
Instr61: incbin 'assets\audio\instrs\instr_61.eif'
Instr62: incbin 'assets\audio\instrs\instr_62.ewf'
Instr63: incbin 'assets\audio\instrs\instr_63.eif'
Instr64: incbin 'assets\audio\instrs\instr_64.eif'
Instr65: incbin 'assets\audio\instrs\instr_65.eif'
Instr66: incbin 'assets\audio\instrs\instr_66.eif'
Instr67: incbin 'assets\audio\instrs\instr_67.eif'
Instr68: incbin 'assets\audio\instrs\instr_68.eif'
Instr69: incbin 'assets\audio\instrs\instr_69.eif'
Instr6A: incbin 'assets\audio\instrs\instr_6A.eif'
Instr6B: incbin 'assets\audio\instrs\instr_6B.eif'
Instr6C: incbin 'assets\audio\instrs\instr_6C.eif'
Instr6D: incbin 'assets\audio\instrs\instr_6D.eif'
Instr6E: incbin 'assets\audio\instrs\instr_6E.eif'
Instr6F: incbin 'assets\audio\instrs\instr_6F.ewf'

	
	; PCM
PCM00: incbin 'assets\audio\sfx\djakk\roar.ewf'
PCM01: incbin 'assets\audio\sfx\djakk\bite.ewf'
PCM02: incbin 'assets\audio\sfx\ambience\chirp1.ewf'
PCM03: incbin 'assets\audio\sfx\fstep\water1.ewf'
PCM04: incbin 'assets\audio\sfx\fstep\water2.ewf'
PCM05: incbin 'assets\audio\sfx\fstep\splash1.ewf'
PCM06: incbin 'assets\audio\sfx\nymn\calllong.ewf'
PCM07: incbin 'assets\audio\sfx\weather\thndrfar.ewf'
PCM08: incbin 'assets\audio\sfx\weather\thndrnr.ewf'
PCM09: incbin 'assets\audio\sfx\objects\cratebrk.ewf'
PCM10: incbin 'assets\audio\sfx\djakk\elder.ewf'
PCM11: incbin 'assets\audio\sfx\scrap\yap.ewf'
PCM12: incbin 'assets\audio\sfx\weather\windshrt.ewf'
PCM13: incbin 'assets\audio\sfx\weather\windlong.ewf'
PCM14: incbin 'assets\audio\sfx\objects\hogggrnt.ewf'
PCM15: incbin 'assets\audio\sfx\objects\hoggstck.ewf'
	
	ENDIF
