echo_instruments:
    Echo_ListEntry Instr_Flute        ; $00
    Echo_ListEntry Instr_Sweet        ; $01
    Echo_ListEntry Instr_AddChimesB   ; $02
    Echo_ListEntry Instr_SinesPad     ; $03
    Echo_ListEnd

Instr_Flute:
	incbin 'assets\music\instr_00.eif'

Instr_Sweet:
	incbin 'assets\music\instr_01.eif'

Instr_AddChimesB:
	incbin 'assets\music\instr_02.eif'

Instr_SinesPad:
	incbin 'assets\music\instr_03.eif'
	