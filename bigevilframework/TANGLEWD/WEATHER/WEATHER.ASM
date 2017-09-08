;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   weather.asm - Weather management
;===============================================================

WeatherUpdate:

	jsr WindUpdate
	jsr ThunderUpdate

	rts
