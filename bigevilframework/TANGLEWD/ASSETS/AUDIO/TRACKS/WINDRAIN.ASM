	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $fd	; Set loop
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $40, $3b	; Set instrument for channel FM 1
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $f0, $57	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $41, $3b	; Set instrument for channel FM 2
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $f1, $97	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $21	; Note C-1 on channel FM 2
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $4b, $3a	; Set instrument for channel PSG 4
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $3a, $02, $00	; Set frequency '2' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $32	; Set frequency '805' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $32	; Set frequency '807' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $32	; Set frequency '809' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $32	; Set frequency '811' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $32	; Set frequency '813' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $32	; Set frequency '815' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $33	; Set frequency '817' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $33	; Set frequency '819' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $33	; Set frequency '821' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $33	; Set frequency '823' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $33	; Set frequency '825' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $33	; Set frequency '827' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $33	; Set frequency '829' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $33	; Set frequency '831' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $34	; Set frequency '833' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $34	; Set frequency '835' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $34	; Set frequency '837' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $34	; Set frequency '839' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $34	; Set frequency '841' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $34	; Set frequency '843' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $34	; Set frequency '845' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $34	; Set frequency '847' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $35	; Set frequency '849' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $35	; Set frequency '851' for channel PSG 3
	dc.b $fe, $01	; Delay
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 12; 
; Pattern $01, Row 0; 
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $19	; Delay
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $05	; Delay
	dc.b $3a, $00, $32	; Set frequency '800' for channel PSG 3
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $31	; Set frequency '797' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $31	; Set frequency '794' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $31	; Set frequency '791' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $31	; Set frequency '788' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $31	; Set frequency '785' for channel PSG 3
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $30	; Set frequency '782' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $30	; Set frequency '779' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $30	; Set frequency '776' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $30	; Set frequency '773' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $30	; Set frequency '770' for channel PSG 3
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $2f	; Set frequency '767' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $2f	; Set frequency '764' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2f	; Set frequency '761' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $2f	; Set frequency '758' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $2f	; Set frequency '755' for channel PSG 3
; Pattern $01, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2f	; Set frequency '752' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $2e	; Set frequency '749' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $2e	; Set frequency '746' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $2e	; Set frequency '743' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $2e	; Set frequency '740' for channel PSG 3
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $06	; Set frequency '107' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $06	; Set frequency '108' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $06	; Set frequency '109' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $06	; Set frequency '111' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $07	; Set frequency '113' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $07	; Set frequency '114' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $07	; Set frequency '115' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $07	; Set frequency '116' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $07	; Set frequency '117' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $07	; Set frequency '118' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $07	; Set frequency '119' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $07	; Set frequency '120' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $07	; Set frequency '121' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $07	; Set frequency '122' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $07	; Set frequency '123' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $07	; Set frequency '124' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $07	; Set frequency '125' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $07	; Set frequency '126' for channel PSG 3
; Pattern $01, Row 13; 
	dc.b $01, $0f	; Note G-0 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $08	; Set frequency '129' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $08	; Set frequency '130' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $08	; Set frequency '131' for channel PSG 3
; Pattern $01, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $08	; Set frequency '132' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $08	; Set frequency '133' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $08	; Set frequency '134' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $08	; Set frequency '135' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $08	; Set frequency '136' for channel PSG 3
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $08	; Set frequency '137' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $08	; Set frequency '138' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $08	; Set frequency '139' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
; Pattern $01, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $09	; Set frequency '151' for channel PSG 3
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $09	; Set frequency '154' for channel PSG 3
	dc.b $3a, $0c, $09	; Set frequency '156' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $09	; Set frequency '155' for channel PSG 3
	dc.b $3a, $0d, $09	; Set frequency '157' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $09	; Set frequency '156' for channel PSG 3
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $09	; Set frequency '157' for channel PSG 3
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $09	; Set frequency '159' for channel PSG 3
	dc.b $3a, $0d, $09	; Set frequency '157' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0a	; Set frequency '160' for channel PSG 3
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $0a	; Set frequency '161' for channel PSG 3
	dc.b $3a, $0f, $09	; Set frequency '159' for channel PSG 3
; Pattern $01, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0a	; Set frequency '162' for channel PSG 3
	dc.b $3a, $01, $0a	; Set frequency '161' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0a	; Set frequency '163' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0a	; Set frequency '164' for channel PSG 3
	dc.b $3a, $05, $0a	; Set frequency '165' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $0a	; Set frequency '165' for channel PSG 3
	dc.b $3a, $07, $0a	; Set frequency '167' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $0a	; Set frequency '166' for channel PSG 3
	dc.b $3a, $08, $0a	; Set frequency '168' for channel PSG 3
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $0a	; Set frequency '167' for channel PSG 3
	dc.b $3a, $08, $0a	; Set frequency '168' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $0a	; Set frequency '168' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $0a	; Set frequency '169' for channel PSG 3
	dc.b $3a, $08, $0a	; Set frequency '168' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $0a	; Set frequency '170' for channel PSG 3
	dc.b $3a, $08, $0a	; Set frequency '168' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $0a	; Set frequency '171' for channel PSG 3
	dc.b $3a, $09, $0a	; Set frequency '169' for channel PSG 3
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $0a	; Set frequency '174' for channel PSG 3
	dc.b $3a, $0c, $0a	; Set frequency '172' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $0b	; Set frequency '177' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0b	; Set frequency '180' for channel PSG 3
	dc.b $3a, $05, $0b	; Set frequency '181' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $0b	; Set frequency '183' for channel PSG 3
	dc.b $3a, $09, $0b	; Set frequency '185' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $0b	; Set frequency '186' for channel PSG 3
	dc.b $3a, $0c, $0b	; Set frequency '188' for channel PSG 3
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $0b	; Set frequency '189' for channel PSG 3
	dc.b $3a, $0f, $0b	; Set frequency '191' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0c	; Set frequency '192' for channel PSG 3
	dc.b $3a, $01, $0c	; Set frequency '193' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0c	; Set frequency '195' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $0c	; Set frequency '198' for channel PSG 3
	dc.b $3a, $04, $0c	; Set frequency '196' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $0c	; Set frequency '201' for channel PSG 3
	dc.b $3a, $07, $0c	; Set frequency '199' for channel PSG 3
; Pattern $01, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $0c	; Set frequency '204' for channel PSG 3
	dc.b $3a, $0a, $0c	; Set frequency '202' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $0c	; Set frequency '207' for channel PSG 3
	dc.b $3a, $0e, $0c	; Set frequency '206' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0d	; Set frequency '210' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $0d	; Set frequency '213' for channel PSG 3
	dc.b $3a, $06, $0d	; Set frequency '214' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $0d	; Set frequency '216' for channel PSG 3
	dc.b $3a, $0a, $0d	; Set frequency '218' for channel PSG 3
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $0d	; Set frequency '219' for channel PSG 3
	dc.b $3a, $0d, $0d	; Set frequency '221' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $0d	; Set frequency '222' for channel PSG 3
	dc.b $3a, $0f, $0d	; Set frequency '223' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $0e	; Set frequency '225' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0e	; Set frequency '228' for channel PSG 3
	dc.b $3a, $03, $0e	; Set frequency '227' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $0e	; Set frequency '231' for channel PSG 3
	dc.b $3a, $05, $0e	; Set frequency '229' for channel PSG 3
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $0e	; Set frequency '234' for channel PSG 3
	dc.b $3a, $0a, $0e	; Set frequency '234' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $0e	; Set frequency '237' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0f	; Set frequency '240' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0f	; Set frequency '243' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $0f	; Set frequency '246' for channel PSG 3
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $0f	; Set frequency '249' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $0f	; Set frequency '252' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $0f	; Set frequency '255' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $10	; Set frequency '258' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $10	; Set frequency '261' for channel PSG 3
; Pattern $01, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $10	; Set frequency '264' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $10	; Set frequency '267' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $10	; Set frequency '270' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $11	; Set frequency '273' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $11	; Set frequency '276' for channel PSG 3
; Pattern $01, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $11	; Set frequency '279' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $11	; Set frequency '282' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $11	; Set frequency '285' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $12	; Set frequency '288' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $12	; Set frequency '291' for channel PSG 3
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $12	; Set frequency '294' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $12	; Set frequency '297' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $12	; Set frequency '300' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $12	; Set frequency '303' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $13	; Set frequency '306' for channel PSG 3
; Pattern $01, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $13	; Set frequency '309' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $13	; Set frequency '312' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $13	; Set frequency '315' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $13	; Set frequency '318' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $14	; Set frequency '321' for channel PSG 3
; Pattern $01, Row 32; 
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $06	; Set frequency '104' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $06	; Set frequency '102' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $06	; Set frequency '100' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $06	; Set frequency '98' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $06	; Set frequency '96' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $05	; Set frequency '94' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $05	; Set frequency '92' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $05	; Set frequency '90' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $05	; Set frequency '88' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $05	; Set frequency '86' for channel PSG 3
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $05	; Set frequency '84' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $05	; Set frequency '82' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $04	; Set frequency '78' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $04	; Set frequency '74' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $04	; Set frequency '72' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $04	; Set frequency '70' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $04	; Set frequency '68' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $04	; Set frequency '66' for channel PSG 3
; Pattern $01, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $04	; Set frequency '64' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $03	; Set frequency '60' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $03	; Set frequency '58' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $03	; Set frequency '54' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $03	; Set frequency '52' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $03	; Set frequency '48' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $02	; Set frequency '46' for channel PSG 3
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $02	; Set frequency '40' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $02	; Set frequency '38' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $02	; Set frequency '36' for channel PSG 3
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $02	; Set frequency '34' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $01	; Set frequency '28' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
; Pattern $01, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $01	; Set frequency '24' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $01	; Set frequency '20' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $01	; Set frequency '18' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $01	; Set frequency '16' for channel PSG 3
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $14	; Delay
	dc.b $3a, $01, $01	; Set frequency '17' for channel PSG 3
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $01	; Set frequency '18' for channel PSG 3
	dc.b $3a, $04, $01	; Set frequency '20' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $01	; Set frequency '19' for channel PSG 3
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $01	; Set frequency '20' for channel PSG 3
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $01	; Set frequency '21' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
	dc.b $3a, $03, $01	; Set frequency '19' for channel PSG 3
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $3a, $04, $01	; Set frequency '20' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $01	; Set frequency '24' for channel PSG 3
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $01	; Set frequency '25' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $3a, $0d, $01	; Set frequency '29' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $01	; Set frequency '27' for channel PSG 3
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $01	; Set frequency '28' for channel PSG 3
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $01	; Set frequency '29' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
	dc.b $3a, $0b, $01	; Set frequency '27' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $01	; Set frequency '31' for channel PSG 3
	dc.b $3a, $0c, $01	; Set frequency '28' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $02	; Set frequency '33' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $02	; Set frequency '34' for channel PSG 3
	dc.b $3a, $05, $02	; Set frequency '37' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $02	; Set frequency '35' for channel PSG 3
	dc.b $3a, $06, $02	; Set frequency '38' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $02	; Set frequency '36' for channel PSG 3
	dc.b $3a, $05, $02	; Set frequency '37' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $02	; Set frequency '37' for channel PSG 3
	dc.b $3a, $04, $02	; Set frequency '36' for channel PSG 3
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $02	; Set frequency '38' for channel PSG 3
	dc.b $3a, $03, $02	; Set frequency '35' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $02	; Set frequency '39' for channel PSG 3
	dc.b $3a, $04, $02	; Set frequency '36' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $02	; Set frequency '40' for channel PSG 3
	dc.b $3a, $07, $02	; Set frequency '39' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $02	; Set frequency '41' for channel PSG 3
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
	dc.b $3a, $0d, $02	; Set frequency '45' for channel PSG 3
; Pattern $01, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $02	; Set frequency '43' for channel PSG 3
	dc.b $3a, $0e, $02	; Set frequency '46' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
	dc.b $3a, $0d, $02	; Set frequency '45' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $02	; Set frequency '45' for channel PSG 3
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $02	; Set frequency '46' for channel PSG 3
	dc.b $3a, $0b, $02	; Set frequency '43' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $02	; Set frequency '47' for channel PSG 3
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
; Pattern $01, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $02	; Set frequency '46' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $03	; Set frequency '48' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $03	; Set frequency '48' for channel PSG 3
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $06	; Set frequency '107' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $06	; Set frequency '108' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $06	; Set frequency '109' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $06	; Set frequency '111' for channel PSG 3
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $07	; Set frequency '113' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $07	; Set frequency '114' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $07	; Set frequency '115' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $07	; Set frequency '116' for channel PSG 3
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $07	; Set frequency '117' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $07	; Set frequency '118' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $07	; Set frequency '119' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $07	; Set frequency '120' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $07	; Set frequency '121' for channel PSG 3
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $07	; Set frequency '122' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $07	; Set frequency '123' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $07	; Set frequency '124' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $07	; Set frequency '125' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $07	; Set frequency '126' for channel PSG 3
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $08	; Set frequency '129' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $08	; Set frequency '130' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $08	; Set frequency '131' for channel PSG 3
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $08	; Set frequency '132' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $08	; Set frequency '133' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $08	; Set frequency '134' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $08	; Set frequency '135' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $08	; Set frequency '136' for channel PSG 3
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $08	; Set frequency '137' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $08	; Set frequency '138' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $08	; Set frequency '139' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $09	; Set frequency '151' for channel PSG 3
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $09	; Set frequency '154' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $09	; Set frequency '155' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $09	; Set frequency '156' for channel PSG 3
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $09	; Set frequency '157' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $09	; Set frequency '159' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0a	; Set frequency '160' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $0a	; Set frequency '161' for channel PSG 3
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0a	; Set frequency '162' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0a	; Set frequency '163' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0a	; Set frequency '164' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $0a	; Set frequency '165' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $0a	; Set frequency '166' for channel PSG 3
; Pattern $02, Row 0; 
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $01	; Set frequency '28' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $02	; Set frequency '34' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $02	; Set frequency '36' for channel PSG 3
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $02	; Set frequency '38' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $02	; Set frequency '40' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $02	; Set frequency '46' for channel PSG 3
; Pattern $02, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $03	; Set frequency '48' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $03	; Set frequency '52' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $03	; Set frequency '54' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
; Pattern $02, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $03	; Set frequency '58' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $03	; Set frequency '60' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $04	; Set frequency '64' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $04	; Set frequency '66' for channel PSG 3
; Pattern $02, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $04	; Set frequency '68' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $04	; Set frequency '70' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $04	; Set frequency '72' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $04	; Set frequency '74' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
; Pattern $02, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $04	; Set frequency '78' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $05	; Set frequency '82' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $05	; Set frequency '84' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $05	; Set frequency '86' for channel PSG 3
; Pattern $02, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $05	; Set frequency '88' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $05	; Set frequency '90' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $05	; Set frequency '92' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $05	; Set frequency '94' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $06	; Set frequency '96' for channel PSG 3
; Pattern $02, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $06	; Set frequency '98' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $06	; Set frequency '100' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $06	; Set frequency '102' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $06	; Set frequency '104' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
; Pattern $02, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $06	; Set frequency '108' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $07	; Set frequency '114' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $07	; Set frequency '116' for channel PSG 3
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $07	; Set frequency '118' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $07	; Set frequency '120' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $07	; Set frequency '122' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $07	; Set frequency '124' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $07	; Set frequency '126' for channel PSG 3
; Pattern $02, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $08	; Set frequency '130' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $08	; Set frequency '132' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $08	; Set frequency '134' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $08	; Set frequency '136' for channel PSG 3
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $08	; Set frequency '138' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
; Pattern $02, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $09	; Set frequency '154' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $09	; Set frequency '156' for channel PSG 3
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0a	; Set frequency '160' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0a	; Set frequency '162' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0a	; Set frequency '164' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $0a	; Set frequency '166' for channel PSG 3
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
	dc.b $fe, $23	; Delay
	dc.b $3a, $05, $0a	; Set frequency '165' for channel PSG 3
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0a	; Set frequency '164' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0a	; Set frequency '163' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0a	; Set frequency '162' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $0a	; Set frequency '161' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0a	; Set frequency '160' for channel PSG 3
; Pattern $02, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $09	; Set frequency '159' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $09	; Set frequency '157' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $09	; Set frequency '156' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $09	; Set frequency '155' for channel PSG 3
; Pattern $02, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $09	; Set frequency '154' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $09	; Set frequency '151' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
; Pattern $02, Row 24; 
	dc.b $00, $21	; Note C-1 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $02, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $08	; Set frequency '139' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $08	; Set frequency '138' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $08	; Set frequency '137' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $08	; Set frequency '136' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $08	; Set frequency '135' for channel PSG 3
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $08	; Set frequency '134' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $08	; Set frequency '133' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $08	; Set frequency '132' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $08	; Set frequency '131' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $08	; Set frequency '130' for channel PSG 3
; Pattern $02, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $08	; Set frequency '129' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $07	; Set frequency '126' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $07	; Set frequency '125' for channel PSG 3
; Pattern $02, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $07	; Set frequency '124' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $07	; Set frequency '123' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $07	; Set frequency '122' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $07	; Set frequency '121' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $07	; Set frequency '120' for channel PSG 3
; Pattern $02, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $07	; Set frequency '119' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $07	; Set frequency '118' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $07	; Set frequency '117' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $07	; Set frequency '116' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $07	; Set frequency '115' for channel PSG 3
; Pattern $02, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $07	; Set frequency '114' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $07	; Set frequency '113' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $06	; Set frequency '111' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
; Pattern $02, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $06	; Set frequency '107' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $06	; Set frequency '104' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $06	; Set frequency '98' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $05	; Set frequency '92' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $05	; Set frequency '89' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $05	; Set frequency '86' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $05	; Set frequency '83' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
; Pattern $02, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $04	; Set frequency '77' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $04	; Set frequency '74' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $04	; Set frequency '71' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $04	; Set frequency '68' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $04	; Set frequency '65' for channel PSG 3
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $03	; Set frequency '59' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
; Pattern $02, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $02	; Set frequency '47' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $02	; Set frequency '41' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $02	; Set frequency '38' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $02	; Set frequency '35' for channel PSG 3
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $01	; Set frequency '29' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $01	; Set frequency '20' for channel PSG 3
; Pattern $02, Row 38; 
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
	dc.b $fe, $37	; Delay
	dc.b $3a, $05, $01	; Set frequency '21' for channel PSG 3
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $01	; Set frequency '24' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $01	; Set frequency '25' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
; Pattern $02, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $01	; Set frequency '27' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $01	; Set frequency '28' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $01	; Set frequency '29' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $01	; Set frequency '31' for channel PSG 3
; Pattern $02, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $02	; Set frequency '33' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $02	; Set frequency '34' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $02	; Set frequency '35' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $02	; Set frequency '36' for channel PSG 3
; Pattern $02, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $02	; Set frequency '37' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $02	; Set frequency '38' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $02	; Set frequency '39' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $02	; Set frequency '40' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $02	; Set frequency '41' for channel PSG 3
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $02	; Set frequency '43' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $02	; Set frequency '45' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $02	; Set frequency '46' for channel PSG 3
; Pattern $02, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $02	; Set frequency '47' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $03	; Set frequency '48' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $03	; Set frequency '49' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $03	; Set frequency '51' for channel PSG 3
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $03	; Set frequency '52' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $03	; Set frequency '54' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $03	; Set frequency '55' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
; Pattern $02, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $03	; Set frequency '57' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $03	; Set frequency '58' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $03	; Set frequency '59' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $03	; Set frequency '60' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $03	; Set frequency '61' for channel PSG 3
; Pattern $02, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $03	; Set frequency '63' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $04	; Set frequency '64' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $04	; Set frequency '65' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $04	; Set frequency '66' for channel PSG 3
; Pattern $02, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $04	; Set frequency '67' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $04	; Set frequency '68' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $04	; Set frequency '69' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $04	; Set frequency '70' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $04	; Set frequency '71' for channel PSG 3
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $04	; Set frequency '72' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $04	; Set frequency '73' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $04	; Set frequency '74' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $04	; Set frequency '75' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
; Pattern $02, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $04	; Set frequency '77' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $04	; Set frequency '78' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $04	; Set frequency '79' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $05	; Set frequency '81' for channel PSG 3
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $05	; Set frequency '82' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $05	; Set frequency '83' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $05	; Set frequency '84' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $05	; Set frequency '86' for channel PSG 3
; Pattern $02, Row 62; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $05	; Set frequency '87' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $05	; Set frequency '88' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $05	; Set frequency '89' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $05	; Set frequency '90' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $05	; Set frequency '91' for channel PSG 3
; Pattern $02, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $05	; Set frequency '92' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $05	; Set frequency '93' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $05	; Set frequency '94' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $06	; Set frequency '96' for channel PSG 3
	dc.b $fc	; Goto loop
	dc.b $ff	; The End
