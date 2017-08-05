	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $45, $51	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $05	; Note D-0 on channel FM 5
	dc.b $0c, $52	; Sample 82 on channel PCM
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 1; 
	dc.b $fe, $05	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
	dc.b $fe, $11	; Delay
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $05	; Note D-0 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 9; 
	dc.b $05, $05	; Note D-0 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
	dc.b $fe, $0b	; Delay
	dc.b $05, $05	; Note D-0 on channel FM 5
	dc.b $0c, $52	; Sample 82 on channel PCM
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 15; 
	dc.b $fe, $05	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 16; 
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $0e	; Delay
	dc.b $05, $05	; Note D-0 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 21; 
	dc.b $fe, $05	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
; Pattern $00, Row 25; 
	dc.b $fe, $0a	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $05	; Note D-0 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $00, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $ff	; The End
