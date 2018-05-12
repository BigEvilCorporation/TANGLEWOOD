	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $b5	; Set instrument for channel FM 6
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $f6, $c7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $03	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $bd	; Set frequency '7357' (octave 3 semitone 1213) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $bb	; Set frequency '7355' (octave 3 semitone 1211) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
	dc.b $fe, $09	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b0	; Set frequency '7344' (octave 3 semitone 1200) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a5	; Set frequency '7333' (octave 3 semitone 1189) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $9b	; Set frequency '7323' (octave 3 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 6
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End
