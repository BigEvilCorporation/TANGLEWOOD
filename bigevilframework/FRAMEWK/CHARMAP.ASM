;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   charmap.asm - ASCII character map
;==============================================================

ASCIIStart equ 0x20 ; First ASCII code in table
ASCIIAlphaOffset equ ASCIIStart+(ASCIIAlphaStart-ASCIIMap)
ASCIINumericOffset equ ASCIIStart+(ASCIINumericStart-ASCIIMap)

ASCIIMap:
	dc.b 0x00       ; SPACE (ASCII code 0x20)
	dc.b 0x28   ; ! Exclamation mark
	dc.b 0x2B   ; " Double quotes
	dc.b 0x2E   ; # Hash
	dc.b 0x00       ; UNUSED
	dc.b 0x00       ; UNUSED
	dc.b 0x00       ; UNUSED
	dc.b 0x2C   ; ' Single quote
	dc.b 0x29   ; ( Open parenthesis
	dc.b 0x2A   ; ) Close parenthesis
	dc.b 0x00       ; UNUSED
	dc.b 0x2F   ; + Plus
	dc.b 0x26   ; , Comma
	dc.b 0x30   ; - Minus
	dc.b 0x25   ; . Full stop
	dc.b 0x31   ; / Slash or divide
ASCIINumericStart:
	dc.b 0x1B   ; 0 Zero
	dc.b 0x1C   ; 1 One
	dc.b 0x1D   ; 2 Two
	dc.b 0x1E   ; 3 Three
	dc.b 0x1F   ; 4 Four
	dc.b 0x20   ; 5 Five
	dc.b 0x21   ; 6 Six
	dc.b 0x22   ; 7 Seven
	dc.b 0x23   ; 8 Eight
	dc.b 0x24   ; 9 Nine
	dc.b 0x2D   ; : Colon
	dc.b 0x00       ; UNUSED
	dc.b 0x00       ; UNUSED
	dc.b 0x00       ; UNUSED
	dc.b 0x00       ; UNUSED
	dc.b 0x27   ; ? Question mark
	dc.b 0x00       ; UNUSED
ASCIIAlphaStart:
	dc.b 0x01       ; A
	dc.b 0x02   ; B
	dc.b 0x03       ; C
	dc.b 0x04   ; D
	dc.b 0x05       ; E
	dc.b 0x06       ; F
	dc.b 0x07       ; G
	dc.b 0x08       ; H
	dc.b 0x09       ; I
	dc.b 0x0A       ; J
	dc.b 0x0B       ; K
	dc.b 0x0C       ; L
	dc.b 0x0D       ; M
	dc.b 0x0E       ; N
	dc.b 0x0F       ; O
	dc.b 0x10       ; P
	dc.b 0x11       ; Q
	dc.b 0x12       ; R
	dc.b 0x13       ; S
	dc.b 0x14       ; T
	dc.b 0x15       ; U
	dc.b 0x16       ; V
	dc.b 0x17       ; W
	dc.b 0x18       ; X
	dc.b 0x19       ; Y
	dc.b 0x1A       ; Z (ASCII code 0x5A)

	EVEN
